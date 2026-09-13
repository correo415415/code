"""Bounded readers for the formats observed in the supplied PICO-8 distribution.

Compression grammar cross-checked against shrinko8 (MIT); see THIRD_PARTY.txt.
No PICO-8 binaries, JavaScript or cartridge code are executed by these readers.
"""
from dataclasses import dataclass
from pathlib import PurePosixPath
import re
import struct


class FormatError(ValueError):
    """Malformed input or unsupported format variant."""


def require(condition, message):
    if not condition:
        raise FormatError(message)


def safe_name(name):
    require(bool(name) and '\\' not in name and ':' not in name,
            f'Unsafe or empty path: {name!r}')
    require(not any(ord(c) < 32 or ord(c) == 127 for c in name), 'Control character in path')
    p = PurePosixPath(name)
    require(not p.is_absolute() and '..' not in p.parts, f'Unsafe path: {name!r}')
    return p


@dataclass(frozen=True)
class Record:
    index: int
    offset: int
    tag: str
    name: str
    data: bytes
    raw: bytes


def parse_pod(data):
    require(len(data) >= 76, 'Truncated CPOD header')
    require(data[:4] == b'CPOD', 'Not a CPOD container')
    size, version = struct.unpack_from('<II', data, 4)
    require((size, version) == (68, 1), 'Unsupported CPOD header/version')
    count = struct.unpack_from('<I', data, 44)[0]
    require(count <= 10000, 'Too many POD records')
    pos = 76
    records = []
    for i in range(count):
        start = pos
        require(pos + 8 <= len(data), 'Truncated POD record')
        tag = data[pos:pos + 4]
        if tag == b'CFIL':
            require(pos + 76 <= len(data), 'Truncated CFIL header')
            flags, length = struct.unpack_from('<II', data, pos + 4)
            require(flags == 0, 'Unsupported CFIL flags')
            raw_name = data[pos + 12:pos + 76].split(b'\0', 1)[0]
            try:
                name = raw_name.decode('utf-8')
            except UnicodeDecodeError as exc:
                raise FormatError('Non-UTF8 CFIL name') from exc
            if name:
                safe_name(name)
            pos += 76
        else:
            require(tag in (b'CBMP', b'CPAL'), f'Unsupported POD tag {tag!r}')
            length = struct.unpack_from('<I', data, pos + 4)[0]
            name = ''
            pos += 8
        require(length <= len(data) - pos, 'POD record exceeds container')
        payload = data[pos:pos + length]
        pos += length
        records.append(Record(i, start, tag.decode('ascii'), name, payload, data[start:pos]))
    require(pos == len(data), 'Trailing bytes or mismatched POD record count')
    return records


def bitmap_info(raw):
    require(len(raw) >= 28 and raw[:4] == b'CBMP', 'Invalid CBMP')
    size, width, height, depth, field1, field2 = struct.unpack_from('<6I', raw, 4)
    require(size + 8 == len(raw), 'CBMP size mismatch')
    require(depth in (8, 32), 'Unsupported CBMP bit depth')
    require(0 < width <= 4096 and 0 < height <= 4096, 'Invalid CBMP dimensions')
    require(width * height <= 4_194_304, 'CBMP pixel limit')
    require(len(raw) - 28 == width * height * (depth // 8), 'CBMP payload length mismatch')
    return dict(width=width, height=height, depth=depth,
                unknown_fields=[field1, field2])


OLD_TABLE = b'\0\n 0123456789abcdefghijklmnopqrstuvwxyz!#%(){}[]<>+=/*:;.,~_'


class Bits:
    def __init__(self, data):
        self.data = data
        self.pos = 0

    def read(self, count=1):
        require(0 <= count <= 16 and self.pos + count <= len(self.data) * 8,
                'Truncated/invalid PXA bit stream')
        result = 0
        for i in range(count):
            result |= ((self.data[self.pos // 8] >> (self.pos % 8)) & 1) << i
            self.pos += 1
        return result


def decompress_code(data):
    """Return exact PICO-8 code bytes (NOT Latin-1 text) and compression metadata."""
    require(len(data) <= 0x3d00, 'Code region too large')
    if data[:4] not in (b':c:\0', b'\0pxa'):
        result = data.split(b'\0', 1)[0]
        return result, dict(format='uncompressed', decoded_size=len(result))
    require(len(data) >= 8, 'Truncated code header')
    expected, other = struct.unpack_from('>HH', data, 4)
    out = bytearray()

    def append(value):
        require(len(out) < expected, 'Decompression exceeds declared size')
        out.append(value)

    def copy(distance, count):
        require(0 < distance <= len(out), 'Invalid back-reference distance')
        require(len(out) + count <= expected, 'Back-reference exceeds declared size')
        for _ in range(count):
            out.append(out[-distance])

    if data[:4] == b':c:\0':
        require(other == 0, 'Unsupported legacy code flags')
        pos = 8
        while True:
            require(pos < len(data), 'Missing legacy terminator')
            token = data[pos]
            pos += 1
            if 0 < token < len(OLD_TABLE):
                append(OLD_TABLE[token])
            else:
                require(pos < len(data), 'Truncated legacy token')
                extra = data[pos]
                pos += 1
                if token == 0:
                    if extra == 0:
                        break
                    append(extra)
                else:
                    copy(((token - 0x3c) << 4) + (extra & 15), (extra >> 4) + 2)
        require(len(out) in (expected, expected - 1), 'Legacy decoded length mismatch')
        return bytes(out), dict(format='legacy', declared_size=expected,
                               decoded_size=len(out), compressed_size=pos)

    require(8 <= other <= len(data), 'Invalid PXA compressed length')
    bits = Bits(data[8:other])
    mtf = list(range(256))
    while len(out) < expected:
        if bits.read():
            extra = 0
            while bits.read():
                extra += 1
                require(extra <= 4, 'Invalid PXA literal prefix')
            index = bits.read(4 + extra) + ((1 << extra) - 1) * 16
            require(index < 256, 'PXA MTF index out of range')
            value = mtf.pop(index)
            mtf.insert(0, value)
            append(value)
        else:
            if bits.read():
                width = 5 if bits.read() else 10
            else:
                width = 15
            distance = bits.read(width) + 1
            if distance == 1 and width != 5:
                require(width == 10, 'Invalid PXA literal block')
                while True:
                    value = bits.read(8)
                    if value == 0:
                        break
                    append(value)
            else:
                count = 3
                while True:
                    n = bits.read(3)
                    count += n
                    require(count <= expected - len(out), 'PXA copy length overflow')
                    if n != 7:
                        break
                copy(distance, count)
    require(8 + (bits.pos + 7) // 8 == other, 'PXA stream not fully consumed')
    return bytes(out), dict(format='pxa', declared_size=expected,
                           decoded_size=len(out), compressed_size=other)


def cart_bytes(image):
    require(image.size == (160, 205), 'Unexpected P8 PNG dimensions')
    pixels = image.convert('RGBA').tobytes()
    return bytes((pixels[i + 2] & 3) | ((pixels[i + 1] & 3) << 2)
                 | ((pixels[i] & 3) << 4) | ((pixels[i + 3] & 3) << 6)
                 for i in range(0, len(pixels), 4))


def p8_lua(data):
    require(data.startswith(b'pico-8 cartridge'), 'Missing P8 text header')
    sections = list(re.finditer(rb'^__(\w+)__\r?\n', data, re.MULTILINE))
    names = [m.group(1).decode('ascii') for m in sections]
    require(names.count('lua') == 1, 'Missing/duplicate Lua section')
    i = names.index('lua')
    start = sections[i].end()
    end = sections[i + 1].start() if i + 1 < len(sections) else len(data)
    return data[start:end], dict(sections=names, lua_offset=start, lua_size=end - start)
