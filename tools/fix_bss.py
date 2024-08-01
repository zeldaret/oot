#!/usr/bin/env python3

# SPDX-FileCopyrightText: 2024 zeldaret
# SPDX-License-Identifier: CC0-1.0


from __future__ import annotations

import argparse
from collections import Counter
from dataclasses import dataclass
import enum
import itertools
from pathlib import Path
import re
import sys
from typing import BinaryIO, Optional

from ido_block_numbers import (
    generate_make_log,
    find_compiler_command_line,
    run_cfe,
    SymbolTableEntry,
    UcodeOp,
)

import elftools.elf.elffile
import mapfile_parser.mapfile


def read_u32(f: BinaryIO, offset: int) -> int:
    f.seek(offset)
    return int.from_bytes(f.read(4), "big")


def read_u16(f: BinaryIO, offset: int) -> int:
    f.seek(offset)
    return int.from_bytes(f.read(2), "big")


def read_s16(f: BinaryIO, offset: int) -> int:
    f.seek(offset)
    return int.from_bytes(f.read(2), "big", signed=True)


def fail(message: str):
    print(message, file=sys.stderr)
    sys.exit(1)


@dataclass
class Reloc:
    name: str
    offset_32: int | None
    offset_hi16: int | None
    offset_lo16: int | None
    addend: int


@dataclass
class Pointer:
    name: str
    addend: int
    base_value: int
    build_value: int


# Read relocations from an ELF file section
def read_relocs(object_path: Path, section_name: str) -> list[Reloc]:
    with open(object_path, "rb") as f:
        elffile = elftools.elf.elffile.ELFFile(f)
        symtab = elffile.get_section_by_name(".symtab")
        data = elffile.get_section_by_name(section_name).data()

        reloc_section = elffile.get_section_by_name(f".rel{section_name}")
        if reloc_section is None:
            return []

        relocs = []
        offset_hi16 = 0
        for reloc in reloc_section.iter_relocations():
            reloc_offset = reloc.entry["r_offset"]
            reloc_type = reloc.entry["r_info_type"]
            reloc_name = symtab.get_symbol(reloc.entry["r_info_sym"]).name

            if reloc_type == 2:  # R_MIPS_32
                offset_32 = reloc_offset
                addend = int.from_bytes(
                    data[reloc_offset : reloc_offset + 4], "big", signed=True
                )
                relocs.append(Reloc(reloc_name, offset_32, None, None, addend))
            elif reloc_type == 4:  # R_MIPS_26
                pass
            elif reloc_type == 5:  # R_MIPS_HI16
                offset_hi16 = reloc_offset
            elif reloc_type == 6:  # R_MIPS_LO16
                offset_lo16 = reloc_offset
                addend_hi16 = int.from_bytes(
                    data[offset_hi16 + 2 : offset_hi16 + 4], "big", signed=False
                )
                addend_lo16 = int.from_bytes(
                    data[offset_lo16 + 2 : offset_lo16 + 4], "big", signed=True
                )
                addend = (addend_hi16 << 16) + addend_lo16
                relocs.append(Reloc(reloc_name, None, offset_hi16, offset_lo16, addend))
            else:
                raise NotImplementedError(f"Unsupported relocation type: {reloc_type}")

        return relocs


# Compare pointers between the baserom and the current build, returning a dictionary from
# C files to a list of pointers into their BSS sections
def compare_pointers(version: str) -> dict[Path, list[Pointer]]:
    print("Comparing pointers between baserom and build ...", file=sys.stderr)

    mapfile_path = Path(f"build/{version}/oot-{version}.map")
    if not mapfile_path.exists():
        fail(f"Error: could not open {mapfile_path}")

    mapfile = mapfile_parser.mapfile.MapFile()
    mapfile.readMapFile(mapfile_path)

    # Segments built from source code (filtering out assets)
    source_code_segments = []
    for mapfile_segment in mapfile:
        if not (
            mapfile_segment.name.startswith("..boot")
            or mapfile_segment.name.startswith("..code")
            or mapfile_segment.name.startswith("..buffers")
            or mapfile_segment.name.startswith("..ovl_")
        ):
            continue
        source_code_segments.append(mapfile_segment)

    base = open(f"baseroms/{version}/baserom-decompressed.z64", "rb")
    build = open(f"build/{version}/oot-{version}.z64", "rb")

    # Find all pointers with different values
    pointers = []
    for mapfile_segment in source_code_segments:
        for file in mapfile_segment:
            if not str(file.filepath).endswith(".o"):
                continue
            if file.sectionType == ".bss":
                continue

            print(f"  Analyzing {str(file.filepath):120}", end="\r", file=sys.stderr)

            # TODO: open each ELF file only once instead of once per section?
            for reloc in read_relocs(file.filepath, file.sectionType):
                if reloc.offset_32 is not None:
                    base_value = read_u32(base, file.vrom + reloc.offset_32)
                    build_value = read_u32(build, file.vrom + reloc.offset_32)
                elif reloc.offset_hi16 is not None and reloc.offset_lo16 is not None:
                    if (
                        read_u16(base, file.vrom + reloc.offset_hi16)
                        != read_u16(build, file.vrom + reloc.offset_hi16)
                    ) or (
                        read_u16(base, file.vrom + reloc.offset_lo16)
                        != read_u16(build, file.vrom + reloc.offset_lo16)
                    ):
                        fail(
                            f"Error: Reference to {reloc.name} in {file.filepath} is in a shifted or non-matching portion of the ROM.\n"
                            "Please ensure that the only differences between the baserom and the current build are due to BSS ordering."
                        )

                    base_value = (
                        read_u16(base, file.vrom + reloc.offset_hi16 + 2) << 16
                    ) + read_s16(base, file.vrom + reloc.offset_lo16 + 2)
                    build_value = (
                        read_u16(build, file.vrom + reloc.offset_hi16 + 2) << 16
                    ) + read_s16(build, file.vrom + reloc.offset_lo16 + 2)
                else:
                    assert False, "Invalid relocation"

                pointers.append(
                    Pointer(reloc.name, reloc.addend, base_value, build_value)
                )

    print("", file=sys.stderr)

    # Remove duplicates and sort by baserom address
    pointers = list({p.base_value: p for p in pointers}.values())
    pointers.sort(key=lambda p: p.base_value)

    # Go through sections and collect differences
    pointers_by_file = {}
    for mapfile_segment in source_code_segments:
        for file in mapfile_segment:
            if not file.sectionType == ".bss":
                continue

            pointers_in_section = [
                p
                for p in pointers
                if file.vram <= p.build_value < file.vram + file.size
            ]
            if not pointers_in_section:
                continue

            c_file = file.filepath.relative_to(f"build/{version}").with_suffix(".c")
            pointers_by_file[c_file] = pointers_in_section

    return pointers_by_file


@dataclass
class Pragma:
    line_number: int
    block_number: int
    amount: int


# A BSS variable in the source code
@dataclass
class BssVariable:
    block_number: int
    name: str
    size: int
    align: int


# A BSS variable with its offset in the compiled .bss section
@dataclass
class BssSymbol:
    name: str
    offset: int
    size: int
    align: int


INCREMENT_BLOCK_NUMBER_RE = re.compile(r"increment_block_number_(\d+)_(\d+)")


# Find increment_block_number pragmas by parsing the symbol names generated by preprocess.py.
# This is pretty ugly but it seems more reliable than trying to determine the line numbers of
# BSS variables in the C file.
def find_pragmas(symbol_table: list[SymbolTableEntry]) -> list[Pragma]:
    # Keep track of first block number and count for each line number
    first_block_number = {}
    amounts: Counter[int] = Counter()
    for block_number, entry in enumerate(symbol_table):
        if match := INCREMENT_BLOCK_NUMBER_RE.match(entry.name):
            line_number = int(match.group(1))
            if line_number not in first_block_number:
                first_block_number[line_number] = block_number
            amounts[line_number] += 1

    pragmas = []
    for line_number, block_number in sorted(first_block_number.items()):
        pragmas.append(Pragma(line_number, block_number, amounts[line_number]))
    return pragmas


# Find all BSS variables from IDO's symbol table and U-Code output.
def find_bss_variables(
    symbol_table: list[SymbolTableEntry], ucode: list[UcodeOp]
) -> list[BssVariable]:
    bss_variables = []
    init_block_numbers = set(op.i1 for op in ucode if op.opcode_name == "init")
    last_function_name = None

    for op in ucode:
        # gsym: file-level global symbol
        # lsym: file-level static symbol
        # fsym: function-level static symbol
        if op.opcode_name in ("gsym", "lsym", "fsym"):
            block_number = op.i1
            if block_number in init_block_numbers:
                continue  # not BSS

            name = symbol_table[block_number].name
            if op.opcode_name == "fsym":
                name = f"{last_function_name}::{name}"

            size = op.args[0]
            align = 1 << op.lexlev
            # TODO: IDO seems to automatically align anything with size 8 or more to
            # an 8-byte boundary in BSS. Is this correct?
            if size >= 8:
                align = 8

            bss_variables.append(BssVariable(block_number, name, size, align))
        elif op.opcode_name == "ent":
            last_function_name = symbol_table[op.i1].name

    bss_variables.sort(key=lambda var: var.block_number)
    return bss_variables


# Predict offsets of BSS variables in the build.
def predict_bss_ordering(variables: list[BssVariable]) -> list[BssSymbol]:
    bss_symbols = []
    offset = 0
    # Sort by block number mod 256 (for ties, the original order is preserved)
    for var in sorted(variables, key=lambda var: var.block_number % 256):
        size = var.size
        align = var.align
        offset = (offset + align - 1) & ~(align - 1)
        bss_symbols.append(BssSymbol(var.name, offset, size, align))
        offset += size
    return bss_symbols


# Match up BSS variables between the baserom and the build using the pointers from relocations.
# Note that we may not be able to match all variables if a variable is not referenced by any pointer.
def determine_base_bss_ordering(
    build_bss_symbols: list[BssSymbol], pointers: list[Pointer]
) -> list[BssSymbol]:
    # Assume that the lowest address is the start of the BSS section
    base_section_start = min(p.base_value for p in pointers)
    build_section_start = min(p.build_value for p in pointers)

    found_symbols: dict[str, BssSymbol] = {}
    for p in pointers:
        base_offset = p.base_value - base_section_start
        build_offset = p.build_value - build_section_start

        new_symbol = None
        new_offset = 0
        for symbol in build_bss_symbols:
            if (
                symbol.offset <= build_offset
                and build_offset < symbol.offset + symbol.size
            ):
                new_symbol = symbol
                new_offset = base_offset - (build_offset - symbol.offset)
                break

        if new_symbol is None:
            if p.addend > 0:
                addend_str = f"+0x{p.addend:X}"
            elif p.addend < 0:
                addend_str = f"-0x{-p.addend:X}"
            else:
                addend_str = ""
            fail(
                f"Error: could not find BSS symbol for pointer {p.name}{addend_str} "
                f"(base address 0x{p.base_value:08X}, build address 0x{p.build_value:08X})"
            )
            return []

        if new_symbol.name in found_symbols:
            # Sanity check that offsets agree
            existing_offset = found_symbols[new_symbol.name].offset
            if new_offset != existing_offset:
                fail(
                    f"Error: BSS symbol {new_symbol.name} found at multiple offsets in baserom "
                    f"(0x{existing_offset:04X} and 0x{new_offset:04X})"
                )
        else:
            found_symbols[new_symbol.name] = BssSymbol(
                new_symbol.name, new_offset, new_symbol.size, new_symbol.align
            )

    return list(sorted(found_symbols.values(), key=lambda symbol: symbol.offset))


# Determine a new set of increment_block_number pragmas that will fix the BSS ordering.
def solve_bss_ordering(
    pragmas: list[Pragma],
    bss_variables: list[BssVariable],
    base_bss_symbols: list[BssSymbol],
) -> list[Pragma]:
    base_symbols_by_name = {symbol.name: symbol for symbol in base_bss_symbols}

    # Our "algorithm" just tries all possible combinations of increment_block_number amounts.
    # This can get really slow, so we first try multiples of 10 only, since the exact
    # amount often doesn't matter much and we can find a solution faster.
    fast_candidates = itertools.product(
        [i for i in range(256) if i % 10 == 0], repeat=len(pragmas)
    )
    slow_candidates = itertools.product(range(256), repeat=len(pragmas))
    all_candidates = itertools.chain(fast_candidates, slow_candidates)

    for new_amounts in all_candidates:
        # Generate new block numbers
        new_bss_variables = []
        for var in bss_variables:
            new_block_number = var.block_number
            for pragma, new_amount in zip(pragmas, new_amounts):
                if var.block_number >= pragma.block_number:
                    new_block_number += new_amount - pragma.amount
            new_bss_variables.append(
                BssVariable(new_block_number, var.name, var.size, var.align)
            )

        # Predict new BSS and check if new ordering matches
        new_bss_symbols = predict_bss_ordering(new_bss_variables)

        bss_ordering_matches = True
        for symbol in new_bss_symbols:
            base_symbol = base_symbols_by_name.get(symbol.name)
            if base_symbol is None:
                continue
            if symbol.offset != base_symbol.offset:
                bss_ordering_matches = False
                break

        if bss_ordering_matches:
            new_pragmas = []
            for pragma, new_amount in zip(pragmas, new_amounts):
                new_pragmas.append(
                    Pragma(pragma.line_number, pragma.block_number, new_amount)
                )
            return new_pragmas

    fail("Error: could not find any solutions")
    return []


def update_source_file(version_to_update: str, file: Path, new_pragmas: list[Pragma]):
    with open(file, "r", encoding="utf-8") as f:
        lines = f.readlines()

    for pragma in new_pragmas:
        line = lines[pragma.line_number - 1]
        if not line.startswith("#pragma increment_block_number "):
            fail(
                f"Error: expected #pragma increment_block_number on line {pragma.line_number}"
            )

        # Grab pragma argument and remove quotes
        arg = line.strip()[len("#pragma increment_block_number ") + 1 : -1]

        amounts_by_version = {}
        for part in arg.split():
            version, amount_str = part.split(":")
            amounts_by_version[version] = int(amount_str)

        amounts_by_version[version_to_update] = pragma.amount
        new_arg = " ".join(
            f"{version}:{amount}" for version, amount in amounts_by_version.items()
        )
        new_line = f'#pragma increment_block_number "{new_arg}"\n'

        lines[pragma.line_number - 1] = new_line

    with open(file, "w", encoding="utf-8") as f:
        f.writelines(lines)


def main():
    parser = argparse.ArgumentParser(
        description="Automatically fix BSS ordering by editing increment_block_number pragmas. "
        "Assumes that the build is up-to-date and that only differences between the baserom and "
        "the current build are due to BSS ordering."
    )
    parser.add_argument(
        "--oot-version",
        "-v",
        type=str,
        help="OOT version",
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="Print changes instead of editing source files",
    )
    parser.add_argument(
        "files",
        metavar="FILE",
        nargs="*",
        type=Path,
        help="Fix BSS ordering for a particular C file (default: all files with BSS differences)",
    )

    args = parser.parse_args()
    version = args.oot_version

    pointers_by_file = compare_pointers(version)

    files_with_reordering = []
    for file, pointers in pointers_by_file.items():
        # Try to detect if the section is shifted by comparing the lowest
        # address among any pointer into the section between base and build
        base_min_address = min(p.base_value for p in pointers)
        build_min_address = min(p.build_value for p in pointers)
        if not all(
            p.build_value - build_min_address == p.base_value - base_min_address
            for p in pointers
        ):
            files_with_reordering.append(file)

    if files_with_reordering:
        print("Files with BSS reordering:", file=sys.stderr)
        for file in files_with_reordering:
            print(f"  {file}", file=sys.stderr)
    else:
        print("No BSS reordering found.", file=sys.stderr)

    if args.files:
        files_to_fix = args.files
    else:
        files_to_fix = files_with_reordering
    if not files_to_fix:
        return

    make_log = generate_make_log(version)

    for file in files_to_fix:
        print(f"Processing {file} ...", file=sys.stderr)

        pointers = pointers_by_file.get(file, [])
        command_line = find_compiler_command_line(make_log, file)
        symbol_table, ucode = run_cfe(command_line, keep_files=False)

        bss_variables = find_bss_variables(symbol_table, ucode)
        print("BSS variables:", file=sys.stderr)
        for var in bss_variables:
            i = var.block_number
            print(
                f"  {i:>6} [{i%256:>3}]: size=0x{var.size:04X} align=0x{var.align:X} {var.name}",
                file=sys.stderr,
            )

        build_bss_symbols = predict_bss_ordering(bss_variables)
        print("Current build BSS ordering:", file=sys.stderr)
        for symbol in build_bss_symbols:
            print(
                f"  offset=0x{symbol.offset:04X} size=0x{symbol.size:04X} align=0x{symbol.align:X} {symbol.name}",
                file=sys.stderr,
            )

        base_bss_symbols = determine_base_bss_ordering(build_bss_symbols, pointers)
        print("Baserom BSS ordering:", file=sys.stderr)
        for symbol in base_bss_symbols:
            print(
                f"  offset=0x{symbol.offset:04X} size=0x{symbol.size:04X} align=0x{symbol.align:X} {symbol.name}",
                file=sys.stderr,
            )

        pragmas = find_pragmas(symbol_table)
        max_pragmas = 3
        if not pragmas:
            fail(f"Error: no increment_block_number pragmas found in {file}")
        elif len(pragmas) > max_pragmas:
            fail(
                f"Error: too many increment_block_number pragmas found in {file} (found {len(pragmas)}, max {max_pragmas})"
            )

        print("Solving BSS ordering ...", file=sys.stderr)
        new_pragmas = solve_bss_ordering(pragmas, bss_variables, base_bss_symbols)
        print("New increment_block_number amounts:", file=sys.stderr)
        for pragma in new_pragmas:
            print(f"  line {pragma.line_number}: {pragma.amount}", file=sys.stderr)

        if not args.dry_run:
            print(f"Updating {file} ...", file=sys.stderr)
            update_source_file(version, file, new_pragmas)

    print("Done.", file=sys.stderr)


if __name__ == "__main__":
    main()
