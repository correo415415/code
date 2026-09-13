"""Run from repository root; private sample/reference tests are opt-in.
PICO_ANALYSIS=local/analysis SHRINKO8_ROOT=local/shrinko8
PYTHONPATH=local/python python -m unittest discover -s tests -v
"""
import hashlib
import io
import json
import os
from pathlib import Path
import random
import stat
import struct
import subprocess
import sys
import tempfile
import unittest
from unittest.mock import patch
import warnings
import zipfile
from PIL import Image
from capstone import Cs, CS_ARCH_X86, CS_MODE_64
from tools.analyze import Analysis, WORKSPACE, safe_zip
from tools.formats import FormatError, parse_pod, bitmap_info, decompress_code, cart_bytes, p8_lua, safe_name
from tools.reverse_pico8 import Binary, bounded_disasm, rng_seed, rng_step, rng_bounded


def pod(records):
    header = bytearray(76)
    header[:4] = b'CPOD'
    struct.pack_into('<II', header, 4, 68, 1)
    struct.pack_into('<I', header, 44, len(records))
    return bytes(header) + b''.join(records)


def cfil(name, data=b''):
    return b'CFIL' + struct.pack('<II', 0, len(data)) + name.encode().ljust(64, b'\0') + data


def bit_values(value, count):
    return [(value >> i) & 1 for i in range(count)]


def pxa(bits, count):
    raw = bytearray((len(bits) + 7) // 8)
    for i, bit in enumerate(bits):
        raw[i // 8] |= bit << (i % 8)
    return b'\0pxa' + struct.pack('>HH', count, 8 + len(raw)) + raw


class Formats(unittest.TestCase):
    def test_paths(self):
        self.assertEqual(str(safe_name('./Headers/a.h')), 'Headers/a.h')
        for name in ('../x', '/x', 'a/../../x', 'C:/x', 'a\\x', '', 'a\0b'):
            with self.assertRaises(FormatError):
                safe_name(name)

    def test_pod_roundtrip(self):
        raw = pod([cfil('a', b'abc'), cfil('', b'license')])
        records = parse_pod(raw)
        self.assertEqual(raw, raw[:76] + b''.join(r.raw for r in records))
        self.assertEqual(records[1].offset, 155)

    def test_all_truncations(self):
        raw = pod([cfil('a', b'abc')])
        for i in range(len(raw)):
            with self.assertRaises(FormatError):
                parse_pod(raw[:i])

    def test_pod_rejections(self):
        for raw in (pod([]) + b'x', pod([b'BAD!\0\0\0\0']), pod([cfil('../x')])):
            with self.assertRaises(FormatError):
                parse_pod(raw)

    def test_bitmap(self):
        for depth in (8, 32):
            data = bytes(6 * (depth // 8))
            raw = b'CBMP' + struct.pack('<6I', 20 + len(data), 2, 3, depth, 0, 0) + data
            self.assertEqual(bitmap_info(raw)['depth'], depth)
            with self.assertRaises(FormatError):
                bitmap_info(raw[:-1])

    def test_legacy_literals_and_copy(self):
        raw = b':c:\0' + struct.pack('>HH', 6, 0) + bytes([13, 14, 15, 0x3c, 0x13, 0, 0])
        self.assertEqual(decompress_code(raw)[0], b'abcabc')
        self.assertEqual(decompress_code(b'print(1)\0extra')[0], b'print(1)')

    def test_pxa_literals_and_copy(self):
        literal = [1, 1, 1, 0] + bit_values(49, 6)
        self.assertEqual(decompress_code(pxa(literal + [1, 0] + bit_values(0, 4), 2))[0], b'aa')
        copy = [0, 1, 1] + bit_values(0, 5) + bit_values(0, 3)
        self.assertEqual(decompress_code(pxa(literal + copy, 4))[0], b'aaaa')

    def test_pxa_literal_block(self):
        block = [0, 1, 0] + bit_values(0, 10) + bit_values(65, 8) + bit_values(0, 8)
        self.assertEqual(decompress_code(pxa(block, 1))[0], b'A')

    def test_compression_rejections(self):
        for raw in (b':c:\0', b':c:\0' + struct.pack('>HH', 3, 0) + b'\x3c\x11',
                    b'\0pxa' + struct.pack('>HH', 1, 8)):
            with self.assertRaises(FormatError):
                decompress_code(raw)

    def test_png_all_byte_values(self):
        data = bytes(i % 256 for i in range(160 * 205))
        rgba = bytes(c for x in data for c in ((x >> 4) & 3, (x >> 2) & 3, x & 3, (x >> 6) & 3))
        self.assertEqual(cart_bytes(Image.frombytes('RGBA', (160, 205), rgba)), data)

    def test_p8_slice(self):
        data = b'pico-8 cartridge\nversion 8\n__lua__\nprint(1)\n__gfx__\n00\n'
        self.assertEqual(p8_lua(data)[0], b'print(1)\n')

    def test_mutated_pod(self):
        rng = random.Random(725)
        for _ in range(500):
            raw = bytearray(pod([cfil('a', b'abc')]))
            raw[rng.randrange(len(raw))] = rng.randrange(256)
            try:
                parse_pod(raw)
            except FormatError:
                pass

    def test_bounded_disassembly_matches_whole(self):
        code = (b'\x48\xb8' + bytes(8) + b'\x90\xc3') * 1000
        cs = Cs(CS_ARCH_X86, CS_MODE_64)
        actual = [(i.address, bytes(i.bytes)) for i in bounded_disasm(cs, code, 0x400000)]
        expected = [(i.address, bytes(i.bytes)) for i in cs.disasm(code, 0x400000)]
        self.assertEqual(actual, expected)


class Extraction(unittest.TestCase):
    def setUp(self):
        (WORKSPACE / 'local').mkdir(exist_ok=True)
        self.temp = tempfile.TemporaryDirectory(dir=WORKSPACE / 'local')
        self.root = Path(self.temp.name)

    def tearDown(self):
        self.temp.cleanup()

    def archive(self, entries):
        stream = io.BytesIO()
        with warnings.catch_warnings(), zipfile.ZipFile(stream, 'w') as z:
            warnings.simplefilter('ignore')
            for name, data in entries:
                z.writestr(name, data)
        stream.seek(0)
        return stream

    def test_valid_zip(self):
        rows = safe_zip(self.archive([('a', b'123')]), self.root / 'out')
        self.assertTrue(rows[0]['crc_validated'])
        self.assertEqual((self.root / 'out/a').stat().st_mode & 0o111, 0)

    def test_unsafe_duplicate_conflicting(self):
        for entries in ([('../x', b'1')], [('x', b'1'), ('./x', b'2')], [('x', b'1'), ('x/y', b'2')]):
            with self.assertRaises(FormatError):
                safe_zip(self.archive(entries), self.root / 'out')
            self.assertFalse((self.root / 'out').exists())

    def test_symlink_and_fifo(self):
        for kind in (stat.S_IFLNK, stat.S_IFIFO):
            info = zipfile.ZipInfo('link')
            info.create_system = 3
            info.external_attr = (kind | 0o777) << 16
            with self.assertRaises(FormatError):
                safe_zip(self.archive([(info, b'target')]), self.root / 'out')

    def test_crc(self):
        raw = self.archive([('a', b'PAYLOAD')]).getvalue().replace(b'PAYLOAD', b'BROKEN!')
        with self.assertRaises(zipfile.BadZipFile):
            safe_zip(io.BytesIO(raw), self.root / 'out')

    def test_size_and_overwrite_limits(self):
        with patch('tools.analyze.LIMIT', 1), self.assertRaises(FormatError):
            safe_zip(self.archive([('a', b'123')]), self.root / 'out')
        with self.assertRaises(FormatError):
            safe_zip(self.archive([('a', b'x')]), self.root)

    def test_nameless_records(self):
        analysis = Analysis(self.root)
        analysis.pod(pod([cfil('.'), cfil('Headers'), cfil('Headers/a.h', b'/*x*/'),
                          cfil('', b'license')]), Path('resources/test'), 'test')
        self.assertEqual(len(analysis.warnings), 1)
        self.assertEqual((self.root / 'resources/test/__unnamed__/entry_0003.bin').read_bytes(), b'license')


SAMPLE = os.environ.get('PICO_ANALYSIS')
REFERENCE = os.environ.get('SHRINKO8_ROOT')


@unittest.skipUnless(SAMPLE, 'Set PICO_ANALYSIS for private-sample tests')
class Sample(unittest.TestCase):
    def setUp(self):
        self.root = Path(SAMPLE).resolve()

    def test_every_extraction_hash(self):
        for row in json.loads((self.root / 'reports/output_manifest.json').read_text()):
            data = (self.root / row['path']).read_bytes()
            self.assertEqual(hashlib.sha256(data).hexdigest(), row['sha256'], row['path'])
            self.assertEqual(len(data), row['size'])

    def test_reversing_evidence(self):
        root = WORKSPACE / 'reports/pico8_reversing'
        for row in json.loads((root / 'manifest.json').read_text()):
            self.assertEqual(hashlib.sha256((root / row['path']).read_bytes()).hexdigest(), row['sha256'])
        binary = Binary(self.root / 'original/pico-8/pico8')
        try:
            for row in json.loads((root / 'embedded_lua.json').read_text()):
                self.assertEqual(binary.c_string(row['va']), (root / 'embedded_lua' / (row['name'] + '.lua')).read_bytes())
                self.assertTrue(row['xrefs'])
            apis = json.loads((root / 'api_bindings.json').read_text())
            names = {x['name']: x['native_symbol'] for x in apis}
            self.assertEqual(names['pset'], 'p8f_pset')
            self.assertEqual(names['pget'], 'p8f_pget')
            self.assertEqual(len(apis), 149)
        finally:
            binary.close()

    def test_js_syntax(self):
        for p in (self.root / 'readable/web_export').glob('*.js'):
            result = subprocess.run(['node', '--check', str(p)], capture_output=True, timeout=30)
            self.assertEqual(result.returncode, 0, result.stderr.decode())

    @unittest.skipUnless(REFERENCE, 'Set SHRINKO8_ROOT for independent decoder')
    def test_independent_decoder_and_lua_syntax(self):
        sys.path.insert(0, str(Path(REFERENCE).resolve()))
        from pico_compress import uncompress_code
        from pico_defs import from_p8str
        from utils import BinaryReader, BytesIO
        for path in (self.root / 'cartridge_memory').glob('*.bin'):
            region = path.read_bytes()[0x4300:0x8000]
            ours, _ = decompress_code(region)
            theirs = uncompress_code(BinaryReader(BytesIO(region), big_end=True))
            self.assertEqual(ours, theirs.encode('latin1'))
            self.assertEqual((self.root / 'readable/lua/bbs' / (path.stem + '.lua')).read_bytes(), from_p8str(theirs).encode('utf-8'))
        files = list((self.root / 'readable/lua').rglob('*.lua'))
        files += list((WORKSPACE / 'reports/pico8_reversing/embedded_lua').glob('*.lua'))
        self.assertEqual(len(files), 22)
        for path in files:
            cmd = [sys.executable, str(Path(REFERENCE).resolve() / 'shrinko8.py'), str(path),
                   '--input-format', 'lua', '--lint', '--no-lint-unused', '--no-lint-unused-global',
                   '--no-lint-undefined', '--no-lint-duplicate', '--no-lint-duplicate-global']
            p = subprocess.run(cmd, capture_output=True, timeout=30)
            self.assertEqual(p.returncode, 0, path.name + p.stdout.decode() + p.stderr.decode())

    def test_rng_models_against_isolated_x86_emulation(self):
        from unicorn import Uc, UC_ARCH_X86, UC_MODE_64
        from unicorn.x86_const import UC_X86_REG_RSP, UC_X86_REG_RDI, UC_X86_REG_RAX, UC_X86_REG_RIP
        binary = Binary(self.root / 'original/pico-8/pico8')
        try:
            uc = Uc(UC_ARCH_X86, UC_MODE_64)
            uc.mem_map(0x490000, 0x2000)
            uc.mem_map(0x8c9000, 0x1000)
            uc.mem_map(0x10000000, 0x3000)
            for name in ('pico8_srand', 'pico8_rand', 'pico8_random'):
                uc.mem_write(binary.by_name[name]['st_value'], binary.function_bytes(name))
            stop = 0x10002000
            state_addr = binary.by_name['p8_m_low']['st_value']
            spend_cpu = binary.by_name['spend_cpu']['st_value']

            def execute(name, arg, low, high):
                uc.mem_write(state_addr, struct.pack('<II', low, high))
                uc.mem_write(0x10001000, struct.pack('<Q', stop))
                uc.reg_write(UC_X86_REG_RSP, 0x10001000)
                uc.reg_write(UC_X86_REG_RDI, arg)
                end = spend_cpu if name == 'pico8_srand' else stop
                uc.emu_start(binary.by_name[name]['st_value'], end, timeout=100000, count=1000)
                self.assertEqual(uc.reg_read(UC_X86_REG_RIP), end)
                return (*struct.unpack('<II', uc.mem_read(state_addr, 8)), uc.reg_read(UC_X86_REG_RAX) & 0xffffffff)

            rng = random.Random(825)
            cases = [0, 1, 2, 0xffffffff, 0x80000000, 0x10000] + [rng.getrandbits(32) for _ in range(200)]
            for seed in cases:
                result = execute('pico8_srand', seed, 0, 0)
                self.assertEqual(result[:2], rng_seed(seed))
                self.assertEqual(uc.reg_read(UC_X86_REG_RDI), 8)
                low, high = rng.getrandbits(32), rng.getrandbits(32)
                expected = rng_step(low, high)
                self.assertEqual(execute('pico8_rand', 0, low, high), (*expected, expected[1]))
                self.assertEqual(execute('pico8_random', seed, low, high), rng_bounded(low, high, seed))
        finally:
            binary.close()


if __name__ == '__main__':
    unittest.main()
