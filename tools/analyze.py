#!/usr/bin/env python3
"""Reproducible, static-only PICO-8 archive analysis. See INFORME.txt for usage."""
import argparse
import collections
import hashlib
import io
import json
import os
from pathlib import Path
import re
import shutil
import stat
import subprocess
import sys
import zipfile

from PIL import Image

try:
    from .formats import FormatError, bitmap_info, cart_bytes, decompress_code, parse_pod, p8_lua, require, safe_name
except ImportError:
    from formats import FormatError, bitmap_info, cart_bytes, decompress_code, parse_pod, p8_lua, require, safe_name

WORKSPACE = Path(__file__).resolve().parents[1]
LIMIT = 512 * 1024 * 1024
CHARSET = json.loads(Path(__file__).with_name('charset.json').read_text())


def digest(data):
    return hashlib.sha256(data).hexdigest()


def json_bytes(value):
    return (json.dumps(value, indent=2, ensure_ascii=True) + '\n').encode()


def safe_zip(archive, output):
    """Preflight every path/type/declared size; extract only into a NEW directory."""
    output = Path(output)
    require(not output.exists() and not output.is_symlink(), 'ZIP destination already exists')
    with zipfile.ZipFile(archive) as z:
        entries = z.infolist()
        require(len(entries) <= 10000, 'ZIP entry limit')
        require(sum(x.file_size for x in entries) <= LIMIT, 'ZIP expanded-size limit')
        seen = set()
        names = []
        for entry in entries:
            name = safe_name(entry.filename)
            require(bool(name.parts), 'Empty ZIP member path')
            normalized = str(name)
            require(normalized not in seen, 'Duplicate ZIP path')
            seen.add(normalized)
            mode = stat.S_IFMT(entry.external_attr >> 16)
            require(mode in (0, stat.S_IFREG, stat.S_IFDIR), 'ZIP contains link or special file')
            require(not (entry.flag_bits & 1), 'Encrypted ZIP is not supported')
            require(entry.compress_type in (zipfile.ZIP_STORED, zipfile.ZIP_DEFLATED),
                    'Unsupported ZIP compression method')
            names.append((entry, name))
        files = {str(name) for entry, name in names if not entry.is_dir()}
        for _, name in names:
            require(not any(str(parent) in files for parent in name.parents),
                    'ZIP file/directory conflict')
        output.mkdir(parents=True)
        inventory = []
        for entry, name in names:
            dest = output.joinpath(*name.parts)
            if entry.is_dir():
                dest.mkdir(parents=True, exist_ok=True)
                continue
            dest.parent.mkdir(parents=True, exist_ok=True)
            # Reading to EOF validates the member CRC using zipfile.
            with z.open(entry) as source, dest.open('xb') as target:
                written = 0
                sha = hashlib.sha256()
                while chunk := source.read(1024 * 1024):
                    written += len(chunk)
                    require(written <= entry.file_size, 'ZIP member exceeds declared size')
                    sha.update(chunk)
                    target.write(chunk)
            require(written == entry.file_size, 'ZIP member length mismatch')
            dest.chmod(0o600)
            inventory.append(dict(path=str(name), size=written, sha256=sha.hexdigest(),
                                  crc32=f'{entry.CRC:08x}', crc_validated=True,
                                  original_mode=oct(entry.external_attr >> 16)))
    return inventory


class Analysis:
    def __init__(self, root):
        self.root = root
        self.written = 0
        self.files = 0
        self.containers = []
        self.records = []
        self.carts = []
        self.binaries = []
        self.readable = []
        self.warnings = []

    def save(self, path, data):
        path = Path(path)
        safe_name(path.as_posix())
        require(self.written + len(data) <= LIMIT, 'Output byte limit')
        require(self.files < 20000, 'Output file limit')
        dest = self.root / path
        dest.parent.mkdir(parents=True, exist_ok=True)
        with dest.open('xb') as f:
            f.write(data)
        dest.chmod(0o600)
        self.written += len(data)
        self.files += 1
        return dest

    def save_json(self, path, data):
        return self.save(path, json_bytes(data))

    def image(self, path, image):
        buffer = io.BytesIO()
        image.save(buffer, format='PNG')
        self.save(path, buffer.getvalue())

    def recover(self, source, path, data, method='verbatim'):
        relative = Path('readable') / path
        self.save(relative, data)
        self.readable.append(dict(source=source, path=relative.as_posix(),
                                  method=method, sha256=digest(data), size=len(data)))

    def pod(self, data, parent, source, depth=0):
        require(depth <= 8, 'POD nesting limit')
        records = parse_pod(data)
        self.containers.append(dict(source=source, sha256=digest(data), size=len(data),
                                   count=len(records), fully_consumed=True,
                                   header_hex=data[:76].hex()))
        # Zero-length CFILs have no explicit directory type. Treat as directory
        # markers only for '.' or when another named entry is below that path.
        named = [str(safe_name(r.name)) for r in records if r.name]
        for record in records:
            metadata = dict(container=source, index=record.index, offset=record.offset,
                            tag=record.tag, original_name=record.name,
                            size=len(record.data), sha256=digest(record.data))
            if record.tag == 'CFIL':
                if record.name:
                    name = safe_name(record.name)
                    is_dir = not record.data and (str(name) == '.' or
                              any(n.startswith(str(name) + '/') for n in named))
                    if is_dir:
                        metadata['kind'] = 'directory_marker'
                        self.records.append(metadata)
                        continue
                else:
                    name = Path('__unnamed__') / f'entry_{record.index:04d}.bin'
                    self.warnings.append(dict(container=source, index=record.index,
                                              reason='Empty original name; indexed fallback, not a recovered name'))
                path = parent / name
                self.save(path, record.data)
                metadata['output'] = path.as_posix()
                metadata['kind'] = 'file'
                self.records.append(metadata)
                if record.data.startswith(b'CPOD'):
                    self.pod(record.data, path.with_name(path.name + '.contents'),
                             path.as_posix(), depth + 1)
                else:
                    self.inspect(path, record.data)
            else:
                path = parent / f'chunk_{record.index:04d}.{record.tag.lower()}'
                self.save(path, record.raw)
                metadata['output'] = path.as_posix()
                metadata['raw_sha256'] = digest(record.raw)
                if record.tag == 'CBMP':
                    info = bitmap_info(record.raw)
                    metadata.update(info)
                    mode = 'L' if info['depth'] == 8 else 'RGBA'
                    image = Image.frombytes(mode, (info['width'], info['height']), record.raw[28:])
                    metadata['preview_interpretation'] = ('grayscale indices; palette not inferred'
                        if mode == 'L' else 'RGBA byte-order hypothesis; raw bytes preserved')
                    preview = Path('previews') / path.relative_to('resources').with_suffix('.png')
                    self.image(preview, image)
                    metadata['preview'] = preview.as_posix()
                else:
                    require(len(record.data) == 768, 'Unsupported CPAL length')
                    metadata['palette_rgb'] = [list(record.data[i:i + 3]) for i in range(0, 768, 3)]
                self.records.append(metadata)

    def inspect(self, path, data):
        source = path.as_posix()
        if path.suffix == '.p8':
            code, meta = p8_lua(data)
            category = 'boot' if path.name == 'pico8_boot.p8' else 'demos'
            self.recover(source, Path('cartridges') / category / path.name, data)
            self.recover(source, Path('lua') / category / path.with_suffix('.lua').name,
                         code, 'exact __lua__ section slice')
            self.carts.append(dict(source=source, kind='p8-text', name=path.name,
                                   lua_sha256=digest(code), **meta))
        elif path.name.endswith('.p8.png'):
            with Image.open(io.BytesIO(data)) as image:
                raw = cart_bytes(image)
            code, meta = decompress_code(raw[0x4300:0x8000])
            stem = path.name[:-7]
            text = ''.join(CHARSET[c] for c in code).encode('utf-8')
            self.save(Path('cartridge_memory') / (stem + '.bin'), raw)
            self.save(Path('cartridge_memory') / (stem + '.lua.p8bytes'), code)
            self.recover(source, Path('lua/bbs') / (stem + '.lua'), text,
                         'PNG channel bits -> decompression -> PICO-8 charset to UTF-8')
            self.carts.append(dict(source=source, kind='p8-png', name=path.name,
                                   version_byte=raw[0x8000], memory_sha256=digest(raw),
                                   lua_sha256=digest(code), utf8_sha256=digest(text), **meta))
        elif path.suffix in ('.js', '.html'):
            self.recover(source, Path('web_export') / path.name, data)
        elif path.suffix == '.h':
            self.recover(source, Path('sdl_headers') / path.name, data)
        elif 'sdl2_framework' in source and not self.is_binary(data):
            # Keep third-party notices and nameless payloads verbatim; binary
            # format inventory below classifies unnamed files independently.
            rel = source.split('.pod.contents/')[-1]
            self.recover(source, Path('sdl_metadata') / rel, data)
        if self.is_binary(data):
            self.native(path, data)

    @staticmethod
    def is_binary(data):
        return data[:4] in (b'\x7fELF', b'\xcf\xfa\xed\xfe', b'\xce\xfa\xed\xfe',
                            b'\xca\xfe\xba\xbe', b'\0asm', b'MTLB') or data[:2] == b'MZ'

    def command(self, args):
        process = subprocess.run(args, cwd=self.root, env={**os.environ, 'LC_ALL': 'C'},
                                 capture_output=True, timeout=120)
        require(process.returncode == 0,
                f'Tool failed: {args[0]}: {process.stderr.decode(errors="replace")[:500]}')
        return process.stdout.decode('utf-8', errors='replace')

    def native(self, path, data):
        source = path.as_posix()
        ident = f'{len(self.binaries):02d}_{path.name}'
        summary = dict(source=source, size=len(data), sha256=digest(data),
                       file=self.command(['file', '-b', source]).strip())
        report = Path('native') / ident
        if data.startswith(b'\x7fELF'):
            summary['format'] = 'ELF'
            for name, flags in [('headers', ['-hW']), ('sections', ['-SW']),
                                ('program_headers', ['-lW']), ('dynamic', ['-dW']),
                                ('notes', ['-nW']), ('symbols', ['-sW'])]:
                text = self.command(['readelf', *flags, source])
                self.save(report / (name + '.txt'), text.encode())
                if name == 'dynamic':
                    summary['needed_libraries'] = re.findall(r'Shared library: \[(.*?)\]', text)
                elif name == 'headers':
                    for field in ('Class', 'Machine', 'Type', 'Entry point address'):
                        match = re.search(r'^\s*' + field + r':\s*(.*)', text, re.MULTILINE)
                        summary[field] = match.group(1) if match else None
                elif name == 'sections':
                    summary['has_debug_info'] = '.debug_info' in text
                    summary['has_symbol_table'] = '.symtab' in text
                elif name == 'symbols':
                    summary['function_symbol_rows'] = len(re.findall(r'\bFUNC\b', text))
                    summary['source_filenames'] = sorted(set(re.findall(
                        r'\bFILE[^\S\n]+\S+[^\S\n]+\S+[^\S\n]+\S+[^\S\n]+([^\n]+)', text)))
            strings = self.command(['strings', '-a', '-t', 'x', '-n', '6', source])
            self.save(report / 'strings.txt', strings.encode())
            summary['version_strings'] = sorted(set(re.findall(r'pico-8 0\.\d+\.\d+[a-z]?', strings)))
            if summary.get('has_debug_info'):
                debug = self.command(['readelf', '--debug-dump=info', source])
                units = []
                for block in debug.split('DW_TAG_compile_unit)')[1:]:
                    head = block.split('<1>')[0]
                    match = re.search(r'DW_AT_name\s*:\s*(?:\(indirect string, offset: [^)]*\): )?(.*)', head)
                    if match:
                        units.append(match.group(1))
                summary['dwarf_compile_units'] = units
            if path.name == 'pico8_dyn':
                symbols = self.command(['nm', '-S', '--defined-only', source])
                self.save(report / 'defined_symbols.txt', symbols.encode())
                assembly = self.command(['objdump', '-d', '-M', 'intel', source])
                self.save(report / 'full_disassembly.asm', assembly.encode())
                edges = set()
                function = None
                for line in assembly.splitlines():
                    label = re.match(r'^[0-9a-f]+ <(.+)>:', line)
                    if label:
                        function = label.group(1)
                    call = re.search(r'\bcall\s+[0-9a-f]+ <([^>]+)>', line)
                    if function and call:
                        edges.add((function, call.group(1)))
                self.save(report / 'direct_calls.tsv',
                          ('caller\tcallee\n' + ''.join(a + '\t' + b + '\n' for a, b in sorted(edges))).encode())
                summary['direct_call_edges'] = len(edges)
                # These are disassemblies, not recovered C source.
                for symbol in ('main', 'codo_main', 'luaV_execute', 'pxa_decompress', 'codo_load_pod_file'):
                    if re.search(r'\b' + symbol + r'$', symbols, re.MULTILINE):
                        text = self.command(['objdump', '-d', '-M', 'intel', '--disassemble=' + symbol, source])
                        self.save(Path('reports/disassembly') / (symbol + '.asm.txt'), text.encode())
                self.save(Path('reports') / 'pico8_dyn_symbols.txt', symbols.encode())
                self.save(Path('reports') / 'pico8_dyn_direct_calls.tsv',
                          ('caller\tcallee\n' + ''.join(a + '\t' + b + '\n' for a, b in sorted(edges))).encode())
        elif data[:2] == b'MZ':
            summary['format'] = 'PE'
            text = self.command(['objdump', '-x', source])
            self.save(report / 'pe_headers_imports.txt', text.encode())
            summary['needed_libraries'] = re.findall(r'DLL Name: (.*)', text)
        elif data[:4] == b'\0asm':
            summary['format'] = 'WebAssembly'
            # Validation/compilation only; NEVER instantiate or execute the module.
            script = ('const fs=require("fs");const m=new WebAssembly.Module(fs.readFileSync(process.argv[1]));'
                      'console.log(JSON.stringify({imports:WebAssembly.Module.imports(m),'
                      'exports:WebAssembly.Module.exports(m)},null,2));')
            metadata = json.loads(self.command(['node', '-e', script, source]))
            summary.update(metadata)
            summary['validation'] = 'V8 WebAssembly.Module constructor; no instantiation'
            self.save_json(report / 'wasm_imports_exports.json', metadata)
        else:
            summary['format'] = 'Metal library' if data[:4] == b'MTLB' else 'Mach-O'
            summary['analysis_scope'] = 'file signature/header identification only'
        self.binaries.append(summary)

    def finish(self, archive_info):
        self.save_json('reports/archive.json', archive_info)
        self.save_json('reports/containers.json', self.containers)
        self.save_json('reports/pod_records.json', self.records)
        self.save_json('reports/cartridges.json', self.carts)
        self.save_json('reports/binaries.json', self.binaries)
        self.save_json('reports/readable_provenance.json', self.readable)
        self.save_json('reports/warnings.json', self.warnings)
        kinds = collections.Counter(r['tag'] for r in self.records)
        summary = dict(containers=len(self.containers), pod_records=len(self.records),
                       record_types=dict(kinds), cartridges=len(self.carts),
                       cart_kinds=dict(collections.Counter(c['kind'] for c in self.carts)),
                       binary_artifacts=len(self.binaries), readable_files=len(self.readable),
                       unnamed_records=len(self.warnings), analysis_mode='static; no supplied code executed')
        self.save_json('reports/summary.json', summary)
        manifest = []
        for path in sorted(self.root.rglob('*')):
            if path.is_file():
                data = path.read_bytes()
                manifest.append(dict(path=path.relative_to(self.root).as_posix(), size=len(data), sha256=digest(data)))
        self.save_json('reports/output_manifest.json', manifest)
        return summary


def run(archive, output):
    archive = Path(archive).resolve()
    requested = Path(output).absolute()
    # No write target may escape this checked-out workspace, including through links.
    require(not any(p.is_symlink() for p in (requested, *requested.parents)), 'Symlink output path')
    output = requested.resolve()
    require(output.is_relative_to(WORKSPACE) and output != WORKSPACE, 'Output must be inside workspace')
    require(not output.exists(), 'Output already exists; use a fresh path for reproducibility')
    require(archive.stat().st_size <= LIMIT, 'Input archive too large')
    for tool in ('file', 'readelf', 'objdump', 'nm', 'strings', 'node'):
        require(shutil.which(tool) is not None, f'Missing analysis tool: {tool}')
    output.mkdir(parents=True)
    archive_hash = digest(archive.read_bytes())
    inventory = safe_zip(archive, output / 'original')
    analysis = Analysis(output)
    for row in inventory:
        path = Path('original') / row['path']
        data = (output / path).read_bytes()
        if data.startswith(b'CPOD'):
            analysis.pod(data, Path('resources') / (Path(row['path']).name + '.contents'), path.as_posix())
        else:
            analysis.inspect(path, data)
    return analysis.finish(dict(name=archive.name, size=archive.stat().st_size,
                                sha256=archive_hash, files=inventory))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('archive', type=Path)
    parser.add_argument('--output', type=Path, default=WORKSPACE / 'local/analysis')
    args = parser.parse_args()
    try:
        print(json.dumps(run(args.archive, args.output), indent=2))
    except (FormatError, OSError, zipfile.BadZipFile, subprocess.TimeoutExpired) as exc:
        print(f'Analysis stopped: {exc}', file=sys.stderr)
        return 1
    return 0


if __name__ == '__main__':
    sys.exit(main())
