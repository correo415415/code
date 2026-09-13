#!/usr/bin/env python3
"""Static reversing of the original x86-64 pico8 ELF; no target execution.

Outputs literal embedded Lua, function and string xrefs, proven local API
registration patterns, DWARF scope, selected assembly and complete disassembly.
Analysis is intentionally not advertised as whole-program decompilation.
"""
import argparse
from bisect import bisect_right
import hashlib
import json
from pathlib import Path
import re

from capstone import Cs, CS_ARCH_X86, CS_MODE_64, CS_GRP_CALL, CS_GRP_JUMP
from capstone.x86 import X86_OP_IMM, X86_OP_MEM, X86_OP_REG, X86_REG_RIP
from elftools.elf.elffile import ELFFile

ROOT = Path(__file__).resolve().parents[1]
EXPECTED_SHA = 'a48bb8c4a36873c324990a265d0070bf9f8aba866071b33da80b4bcd729326c8'
MASK = 0xffffffff


def rng_step(low, high):
    """Manual model of pico8_rand at 0x490ab0. Arithmetic wraps at 32 bits."""
    high = (((high << 16) | (high >> 16)) + low) & MASK
    low = (low + high) & MASK
    return low, high


def rng_seed(seed):
    """Manual model of pico8_srand, excluding its spend_cpu(8) tail call."""
    seed &= MASK
    low = seed if seed else 0xdeadbeef
    high = low ^ 0xbead29ba
    for _ in range(32):
        low, high = rng_step(low, high)
    return low, high


def rng_bounded(low, high, bound):
    """Model of native uint32 helper pico8_random; not the entire Lua rnd API."""
    bound &= MASK
    if not bound:
        return low, high, 0
    low, high = rng_step(low, high)
    return low, high, high % bound


class Binary:
    def __init__(self, path):
        self.path = Path(path)
        self.stream = self.path.open('rb')
        self.elf = ELFFile(self.stream)
        if (self.elf.elfclass != 64 or not self.elf.little_endian
                or self.elf['e_machine'] != 'EM_X86_64'):
            raise ValueError('Only little-endian ELF64 x86-64 is supported')
        self.sections = list(self.elf.iter_sections())
        self.data = self.path.read_bytes()
        self.table = self.elf.get_section_by_name('.symtab')
        if self.table is None:
            raise ValueError('Symbol table required')
        self.symbols = list(self.table.iter_symbols())
        self.functions = sorted([s for s in self.symbols if s['st_info']['type'] == 'STT_FUNC'
                                 and s['st_shndx'] != 'SHN_UNDEF' and s['st_size'] > 0],
                                key=lambda s: (s['st_value'], s.name))
        self.addresses = [s['st_value'] for s in self.functions]
        self.by_name = {s.name: s for s in self.symbols if s.name}
        self.by_address = {s['st_value']: s.name for s in self.symbols
                           if s['st_value'] and s['st_info']['type'] == 'STT_FUNC'}

    def close(self):
        self.stream.close()

    def location(self, va):
        for section in self.sections:
            if (section['sh_flags'] & 2 and section['sh_type'] != 'SHT_NOBITS'
                    and section['sh_addr'] <= va < section['sh_addr'] + section['sh_size']):
                return section, section['sh_offset'] + va - section['sh_addr']
        return None, None

    def c_string(self, va, maximum=65536):
        section, offset = self.location(va)
        if section is None:
            return None
        limit = min(offset + maximum, section['sh_offset'] + section['sh_size'])
        end = self.data.find(b'\0', offset, limit)
        return self.data[offset:end] if end >= 0 else None

    def function(self, va):
        index = bisect_right(self.addresses, va) - 1
        if index >= 0:
            symbol = self.functions[index]
            if va < symbol['st_value'] + symbol['st_size']:
                return symbol.name
        return None

    def function_bytes(self, name):
        symbol = self.by_name[name]
        _, offset = self.location(symbol['st_value'])
        return self.data[offset:offset + symbol['st_size']]


def category(name):
    """Navigation hints only, NOT recovered original translation-unit ownership."""
    if name.startswith('SDL_'):
        return 'SDL'
    if name.startswith('lua'):
        return 'Lua'
    if name.startswith(('p8_', 'p8f_', 'pico8_', 'pico_', 'boot_', 'reset_lua', 'add_c_functions')):
        return 'PICO-8'
    if name.startswith(('codo_', 'cpod_', 'cbitmap_', 'cmusic_', 'csound_')):
        return 'CODO'
    if name.startswith(('LZ4', 'Lode', 'tinfl', 'tdefl', 'mz_', 'DGif', 'EGif', 'Gif')):
        return 'codec'
    return 'other/unassigned'


def write_json(root, name, value):
    path = root / name
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(value, ensure_ascii=True, indent=2) + '\n')


def bounded_disasm(cs, data, base):
    """Capstone allocates C detail structs eagerly; cap each batch at 512."""
    offset = 0
    while offset < len(data):
        start = offset
        # 512 x86 instructions occupy at most 7680 bytes; the larger window
        # ensures no artificial partial instruction at a batch boundary.
        for instruction in cs.disasm(data[offset:offset + 16384], base + offset, count=512):
            offset += instruction.size
            yield instruction
        if offset == start:
            raise ValueError('Disassembly made no progress')


def analyze(path, output):
    requested = Path(output).absolute()
    if any(p.is_symlink() for p in (requested, *requested.parents)):
        raise ValueError('Symlink output path not allowed')
    output = requested.resolve()
    if output == ROOT or not output.is_relative_to(ROOT) or output.exists():
        raise ValueError('Output must be a fresh directory inside this checkout')
    binary = Binary(path)
    try:
        sha = hashlib.sha256(binary.data).hexdigest()
        if sha != EXPECTED_SHA:
            raise ValueError('This focused study requires the supplied pico8 SHA256')
        output.mkdir(parents=True)
        sections = [dict(name=s.name, va=s['sh_addr'], offset=s['sh_offset'],
                         size=s['sh_size'], flags=s['sh_flags'], type=s['sh_type']) for s in binary.sections]
        write_json(output, 'identity.json', dict(sha256=sha, size=len(binary.data),
                    entry=binary.elf['e_entry'], architecture='ELF64 x86-64 little endian',
                    target_execution=False, section_table=sections))
        with (output / 'symbols.tsv').open('w') as f:
            f.write('address\tsize\ttype\tbind\tsection\tname\n')
            for s in binary.symbols:
                f.write(f"0x{s['st_value']:x}\t{s['st_size']}\t{s['st_info']['type']}\t"
                        f"{s['st_info']['bind']}\t{s['st_shndx']}\t{s.name}\n")
        write_json(output, 'source_filenames.json', sorted({s.name for s in binary.symbols
                   if s['st_info']['type'] == 'STT_FILE' and s.name}))
        units = []
        if binary.elf.has_dwarf_info():
            for cu in binary.elf.get_dwarf_info().iter_CUs():
                attrs = cu.get_top_DIE().attributes
                row = {'offset': cu.cu_offset, 'version': cu['version']}
                for key in ('DW_AT_name', 'DW_AT_comp_dir', 'DW_AT_producer'):
                    if key in attrs:
                        value = attrs[key].value
                        row[key] = value.decode(errors='replace') if isinstance(value, bytes) else value
                units.append(row)
        write_json(output, 'dwarf_units.json', units)

        # Runtime mapped data only. Excludes .debug_str and symbol-name strings.
        strings = []
        for section in binary.sections:
            if section['sh_flags'] & 2 and not section['sh_flags'] & 4 and section['sh_type'] != 'SHT_NOBITS':
                for match in re.finditer(rb'[\x09\x0a\x0d\x20-\x7e]{4,}', section.data()):
                    strings.append(dict(va=section['sh_addr'] + match.start(),
                        offset=section['sh_offset'] + match.start(), size=len(match.group()),
                        section=section.name, text=match.group().decode('ascii')))
        strings.sort(key=lambda s: s['va'])
        string_starts = [s['va'] for s in strings]
        write_json(output, 'runtime_strings.json', strings)
        embedded = []
        for string in strings:
            if len(string['text']) > 1000 and 'function ' in string['text']:
                va = string['va']
                exact = binary.c_string(va)
                if exact is None or b'function ' not in exact:
                    continue
                label = f'lua_at_{va:08x}'
                folder = output / 'embedded_lua'
                folder.mkdir(exist_ok=True)
                (folder / (label + '.lua')).write_bytes(exact)
                # A tab-to-newline view only; not syntax-aware formatting.
                (folder / (label + '.tab_view.txt')).write_bytes(exact.replace(b'\t', b'\n'))
                embedded.append(dict(name=label, va=va, offset=string['offset'], size=len(exact),
                    sha256=hashlib.sha256(exact).hexdigest(),
                    method='literal bytes to first NUL; .lua unchanged; tab_view is derivative'))

        cs = Cs(CS_ARCH_X86, CS_MODE_64)
        cs.detail = True
        cs.skipdata = True
        edges, xrefs, indirect, apis = [], [], [], []
        selected = {'main', 'codo_main', 'codo_main_init', 'codo_main_update', 'codo_main_draw',
                    'boot_init', 'get_boot_fps', 'reset_lua_machine', 'reset_runtime_state',
                    'add_c_functions', 'load_pico8_cart_lua', 'luaV_execute', 'pxa_decompress',
                    'pico8_rand', 'pico8_random', 'pico8_srand', 'pico8_peek', 'pico8_poke',
                    'p8f_pset', 'p8f_pget', 'codo_load_pod_file'}
        listings = {name: [] for name in selected if name in binary.by_name}
        current = None
        rsi = None
        pending_closure = None
        bytes_decoded = 0
        invalid_chunks = 0
        text = binary.elf.get_section_by_name('.text')
        with (output / 'full_disassembly.asm').open('w') as assembly:
            for ins in bounded_disasm(cs, text.data(), text['sh_addr']):
                bytes_decoded += ins.size
                function = binary.function(ins.address)
                if function != current:
                    assembly.write(f'\n; {function or "no_function_symbol"}\n')
                    current = function
                    rsi = pending_closure = None
                line = f'{ins.address:016x}  {ins.bytes.hex():<32} {ins.mnemonic} {ins.op_str}\n'
                assembly.write(line)
                if function in listings:
                    listings[function].append(line)
                if not ins.id:
                    invalid_chunks += 1
                    rsi = pending_closure = None
                    continue
                targets = []
                for op in ins.operands:
                    if op.type == X86_OP_MEM and op.mem.base == X86_REG_RIP:
                        targets.append((ins.address + ins.size + op.mem.disp, 'RIP-relative operand'))
                    elif op.type == X86_OP_IMM:
                        targets.append((op.imm, 'immediate operand candidate'))
                for target, kind in set(targets):
                    index = bisect_right(string_starts, target) - 1
                    if index >= 0:
                        string = strings[index]
                        if target < string['va'] + string['size']:
                            xrefs.append(dict(instruction=ins.address, function=function,
                                string_va=string['va'], target_va=target, kind=kind,
                                instruction_text=ins.mnemonic + ' ' + ins.op_str))
                call = ins.group(CS_GRP_CALL)
                jump = ins.group(CS_GRP_JUMP)
                target = ins.operands[0].imm if (call or jump) and ins.operands and ins.operands[0].type == X86_OP_IMM else None
                callee = binary.by_address.get(target)
                if call or (jump and callee and callee != function):
                    row = dict(instruction=ins.address, caller=function, target=target,
                               callee=callee, kind='call' if call else 'tail_or_interfunction_jump')
                    (edges if target is not None else indirect).append(row)

                # Strict local idiom in add_c_functions only. This is not full
                # symbolic execution; unknown writes/branches invalidate state.
                if function == 'add_c_functions':
                    if call:
                        if callee == 'lua_pushcclosure':
                            pending_closure = (rsi, ins.address)
                        elif callee == 'lua_setglobal' and pending_closure:
                            name = binary.c_string(rsi) if rsi is not None else None
                            address, closure_call = pending_closure
                            if name and address in binary.by_address:
                                apis.append(dict(name=name.decode('utf-8', errors='replace'),
                                    native_address=address, native_symbol=binary.by_address[address],
                                    pushcclosure_instruction=closure_call,
                                    setglobal_instruction=ins.address,
                                    evidence='adjacent pushcclosure/setglobal call pair with concrete RSI'))
                            pending_closure = None
                        else:
                            pending_closure = None
                        rsi = None
                    elif jump:
                        rsi = pending_closure = None
                    else:
                        _, writes = ins.regs_access()
                        if any(ins.reg_name(reg) in ('rsi', 'esi', 'si', 'sil') for reg in writes):
                            rsi = None
                            ops = ins.operands
                            if len(ops) == 2 and ops[0].type == X86_OP_REG and ins.reg_name(ops[0].reg) in ('rsi', 'esi'):
                                if ins.mnemonic == 'mov' and ops[1].type == X86_OP_IMM:
                                    rsi = ops[1].imm
                                elif ins.mnemonic == 'lea' and ops[1].type == X86_OP_MEM and ops[1].mem.base == X86_REG_RIP:
                                    rsi = ins.address + ins.size + ops[1].mem.disp
        if bytes_decoded != text['sh_size']:
            raise ValueError('Disassembler did not consume entire .text')
        for name, lines in listings.items():
            folder = output / 'functions'
            folder.mkdir(exist_ok=True)
            (folder / (name + '.asm')).write_text(''.join(lines))
        for record in embedded:
            record['xrefs'] = [r for r in xrefs if record['va'] <= r['target_va'] < record['va'] + record['size']]
        write_json(output, 'embedded_lua.json', embedded)
        write_json(output, 'direct_edges.json', edges)
        write_json(output, 'indirect_calls.json', indirect)
        write_json(output, 'string_xrefs.json', xrefs)
        write_json(output, 'api_bindings.json', apis)
        write_json(output, 'functions.json', [dict(name=s.name, address=s['st_value'],
            size=s['st_size'], category_hint=category(s.name)) for s in binary.functions])
        summary = dict(sha256=sha, defined_sized_function_symbols=len(binary.functions),
            dwarf_units=len(units), dwarf_non_sdl_units=[u for u in units if '/SDL2-' not in u.get('DW_AT_name', '')],
            runtime_ascii_strings=len(strings), embedded_lua_blobs=len(embedded),
            recovered_api_pairs=len(apis), direct_control_flow_edges=len(edges),
            indirect_calls=len(indirect), string_reference_candidates=len(xrefs),
            text_bytes=text['sh_size'], decoded_bytes=bytes_decoded, invalid_chunks=invalid_chunks,
            limitation='Static direct references only; no computed-pointer resolution or whole-program decompilation')
        write_json(output, 'summary.json', summary)
        manifest = [dict(path=p.relative_to(output).as_posix(), size=p.stat().st_size,
                        sha256=hashlib.sha256(p.read_bytes()).hexdigest())
                    for p in sorted(output.rglob('*')) if p.is_file()]
        write_json(output, 'manifest.json', manifest)
        return summary
    finally:
        binary.close()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('binary', type=Path)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    print(json.dumps(analyze(args.binary, args.output), indent=2))


if __name__ == '__main__':
    main()
