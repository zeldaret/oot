#!/usr/bin/env python3

# SPDX-FileCopyrightText: 2024 zeldaret
# SPDX-License-Identifier: CC0-1.0


from __future__ import annotations

import argparse
from collections import Counter
import colorama
from dataclasses import dataclass
import io
import multiprocessing
import multiprocessing.pool
from pathlib import Path
import re
import shlex
import sys
import time
import traceback
from typing import BinaryIO, Iterator, Tuple

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


class FixBssException(Exception):
    pass


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


@dataclass
class BssSection:
    start_address: int
    pointers: list[Pointer]


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


def get_file_pointers(
    file: mapfile_parser.mapfile.File,
    base: BinaryIO,
    build: BinaryIO,
) -> list[Pointer]:
    pointers = []
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
                raise FixBssException(
                    f"Reference to {reloc.name} in {file.filepath} is in a shifted or non-matching portion of the ROM.\n"
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

        pointers.append(Pointer(reloc.name, reloc.addend, base_value, build_value))
    return pointers


base = None
build = None


def get_file_pointers_worker_init(version: str):
    global base
    global build
    base = open(f"baseroms/{version}/baserom-decompressed.z64", "rb")
    build = open(f"build/{version}/oot-{version}.z64", "rb")


def get_file_pointers_worker(file: mapfile_parser.mapfile.File) -> list[Pointer]:
    assert base is not None
    assert build is not None
    return get_file_pointers(file, base, build)


# Compare pointers between the baserom and the current build, returning a dictionary from
# C files to a list of pointers into their BSS sections
def compare_pointers(version: str) -> dict[Path, BssSection]:
    mapfile_path = Path(f"build/{version}/oot-{version}.map")
    if not mapfile_path.exists():
        raise FixBssException(f"Could not open {mapfile_path}")

    mapfile = mapfile_parser.mapfile.MapFile()
    mapfile.readMapFile(mapfile_path)

    # Segments built from source code (filtering out assets)
    source_code_segments = []
    for mapfile_segment in mapfile:
        if not (
            mapfile_segment.name.startswith("..boot")
            or mapfile_segment.name.startswith("..code")
            or mapfile_segment.name.startswith("..n64dd")
            or mapfile_segment.name.startswith("..ovl_")
        ):
            continue
        source_code_segments.append(mapfile_segment)

    # Find all pointers with different values
    if not sys.stdout.isatty():
        print(f"Comparing pointers between baserom and build ...")
    pointers = []
    file_results = []
    with multiprocessing.Pool(
        initializer=get_file_pointers_worker_init,
        initargs=(version,),
    ) as p:
        for mapfile_segment in source_code_segments:
            for file in mapfile_segment:
                if not str(file.filepath).endswith(".o"):
                    continue
                if file.sectionType == ".bss":
                    continue
                file_result = p.apply_async(get_file_pointers_worker, (file,))
                file_results.append(file_result)

        # Report progress and wait until all files are done
        num_files = len(file_results)
        while True:
            time.sleep(0.010)
            num_files_done = sum(file_result.ready() for file_result in file_results)
            if sys.stdout.isatty():
                print(
                    f"Comparing pointers between baserom and build ... {num_files_done:>{len(f'{num_files}')}}/{num_files}",
                    end="\r",
                )
            if num_files_done == num_files:
                break
        if sys.stdout.isatty():
            print("")

        # Collect results and check for errors
        for file_result in file_results:
            try:
                pointers.extend(file_result.get())
            except FixBssException as e:
                print(f"{colorama.Fore.RED}Error: {str(e)}{colorama.Fore.RESET}")
                sys.exit(1)

    # Remove duplicates and sort by baserom address
    pointers = list({p.base_value: p for p in pointers}.values())
    pointers.sort(key=lambda p: p.base_value)

    # Go through sections and collect differences
    bss_sections = {}
    for mapfile_segment in source_code_segments:
        for file in mapfile_segment:
            if not file.sectionType == ".bss":
                continue

            pointers_in_section = [
                p
                for p in pointers
                if file.vram <= p.build_value < file.vram + file.size
            ]

            object_file = file.filepath.relative_to(f"build/{version}")
            # Hack to handle the combined z_message_z_game_over.o file.
            # Fortunately z_game_over has no BSS so we can just analyze z_message instead.
            if str(object_file) == "src/code/z_message_z_game_over.o":
                object_file = Path("src/code/z_message.o")

            c_file = object_file.with_suffix(".c")
            bss_sections[c_file] = BssSection(file.vram, pointers_in_section)

    return bss_sections


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
    referenced_in_data: bool


# A BSS variable with its offset in the compiled .bss section
@dataclass
class BssSymbol:
    name: str
    offset: int
    size: int
    align: int
    referenced_in_data: bool


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
    # Block numbers referenced in .data or .rodata (in order of appearance)
    referenced_in_data_block_numbers = []

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

            referenced_in_data = block_number in referenced_in_data_block_numbers
            bss_variables.append(
                BssVariable(block_number, name, size, align, referenced_in_data)
            )
        elif op.opcode_name == "init":
            if op.dtype == 10:  # Ndt, "non-local label"
                assert op.const is not None
                referenced_in_data_block_numbers.append(op.const)
        elif op.opcode_name == "ent":
            last_function_name = symbol_table[op.i1].name

    # Sort any variables referenced in .data or .rodata first. For the others, sort by block number
    # so it looks like the original ordering in the source code (it doesn't matter since
    # predict_bss_ordering will sort them again anyway.
    def sort_key(var: BssVariable) -> Tuple[int, int]:
        if var.referenced_in_data:
            index = referenced_in_data_block_numbers.index(var.block_number)
        else:
            index = len(referenced_in_data_block_numbers)
        return (index, var.block_number)

    bss_variables.sort(key=sort_key)
    return bss_variables


# Predict offsets of BSS variables in the build.
def predict_bss_ordering(variables: list[BssVariable]) -> list[BssSymbol]:
    bss_symbols = []
    offset = 0

    # For variables referenced in .data or .rodata, keep the original order.
    referenced_in_data = [var for var in variables if var.referenced_in_data]

    # For the others, sort by block number mod 256. For ties, sort by block number.
    not_referenced_in_data = [var for var in variables if not var.referenced_in_data]
    not_referenced_in_data.sort(
        key=lambda var: (var.block_number % 256, var.block_number)
    )

    sorted_variables = referenced_in_data + not_referenced_in_data
    for var in sorted_variables:
        size = var.size
        align = var.align
        offset = (offset + align - 1) & ~(align - 1)
        bss_symbols.append(
            BssSymbol(var.name, offset, size, align, var.referenced_in_data)
        )
        offset += size
    return bss_symbols


# Match up BSS variables between the baserom and the build using the pointers from relocations.
# Note that we may not be able to match all variables if a variable is not referenced by any pointer.
def determine_base_bss_ordering(
    build_bss_symbols: list[BssSymbol],
    bss_section: BssSection,
) -> list[BssSymbol]:
    base_start_address = min(p.base_value for p in bss_section.pointers)

    found_symbols: dict[str, BssSymbol] = {}
    for p in bss_section.pointers:
        base_offset = p.base_value - base_start_address
        build_offset = p.build_value - bss_section.start_address

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
            raise FixBssException(
                f"Could not find BSS symbol for pointer {p.name}{addend_str} "
                f"(base address 0x{p.base_value:08X}, build address 0x{p.build_value:08X}). Is the build up-to-date?"
            )

        if new_offset < 0:
            raise FixBssException(
                f"BSS symbol {new_symbol.name} found at negative offset in the baserom "
                f"(-0x{-new_offset:04X}). Is the build up-to-date?"
            )

        if new_symbol.name in found_symbols:
            # Sanity check that offsets agree
            existing_offset = found_symbols[new_symbol.name].offset
            if new_offset != existing_offset:
                raise FixBssException(
                    f"BSS symbol {new_symbol.name} found at conflicting offsets in the baserom "
                    f"(0x{existing_offset:04X} and 0x{new_offset:04X}). Is the build up-to-date?"
                )
        else:
            found_symbols[new_symbol.name] = BssSymbol(
                new_symbol.name,
                new_offset,
                new_symbol.size,
                new_symbol.align,
                new_symbol.referenced_in_data,
            )

    return list(sorted(found_symbols.values(), key=lambda symbol: symbol.offset))


# Generate a sequence of integers in the range [0, 256) with a 2-adic valuation of exactly `nu`.
# The 2-adic valuation of an integer n is the largest k such that 2^k divides n
# (see https://en.wikipedia.org/wiki/P-adic_valuation), and for convenience we define
# the 2-adic valuation of 0 to be 8. Here's what the sequences look like for nu = 0..8:
#   8: 0
#   7: 128
#   6: 64, 192
#   5: 32, 96, 160, 224
#   4: 16, 48, 80, 112, ...
#   3: 8, 24, 40, 56, ...
#   2: 4, 12, 20, 28, ...
#   1: 2, 6, 10, 14, ...
#   0: 1, 3, 5, 7, ...
def gen_seq(nu: int) -> Iterator[int]:
    if nu == 8:
        yield 0
    else:
        for i in range(1 << (7 - nu)):
            yield (2 * i + 1) * (1 << nu)


# Yields all n-tuples of integers in the range [0, 256) with minimum 2-adic valuation
# of exactly `min_nu`.
def gen_candidates_impl(n: int, min_nu: int) -> Iterator[tuple[int, ...]]:
    if n == 1:
        for n in gen_seq(min_nu):
            yield (n,)
    else:
        # (a, *b) has min 2-adic valuation = min_nu if and only if either:
        #   a has 2-adic valuation >  min_nu and b has min 2-adic valuation == min_nu
        #   a has 2-adic valuation == min_nu and b has min 2-adic valuation >= min_nu
        for min_nu_a in reversed(range(min_nu + 1, 9)):
            for a in gen_seq(min_nu_a):
                for b in gen_candidates_impl(n - 1, min_nu):
                    yield (a, *b)
        for a in gen_seq(min_nu):
            for min_nu_b in reversed(range(min_nu, 9)):
                for b in gen_candidates_impl(n - 1, min_nu_b):
                    yield (a, *b)


# Yields all n-tuples of integers in the range [0, 256), ordered by descending minimum
# 2-adic valuation of the elements in the tuple. For example, for n = 2 the sequence is:
#   (0, 0), (0, 128), (128, 0), (128, 128), (0, 64), (0, 192), (128, 64), (128, 192), ...
def gen_candidates(n: int) -> Iterator[tuple[int, ...]]:
    for nu in reversed(range(9)):
        yield from gen_candidates_impl(n, nu)


# Determine a new set of increment_block_number pragmas that will fix the BSS ordering.
def solve_bss_ordering(
    pragmas: list[Pragma],
    bss_variables: list[BssVariable],
    base_bss_symbols: list[BssSymbol],
) -> list[Pragma]:
    base_symbols_by_name = {symbol.name: symbol for symbol in base_bss_symbols}

    # Our "algorithm" just tries all possible combinations of increment_block_number amounts,
    # which can get very slow with more than a few pragmas. But, we order the candidates in a
    # binary-search-esque way to try to find a solution faster.
    for new_amounts in gen_candidates(len(pragmas)):
        # Generate new block numbers
        new_bss_variables = []
        for var in bss_variables:
            new_block_number = var.block_number
            for pragma, new_amount in zip(pragmas, new_amounts):
                if var.block_number >= pragma.block_number:
                    new_block_number += new_amount - pragma.amount
            new_bss_variables.append(
                BssVariable(
                    new_block_number,
                    var.name,
                    var.size,
                    var.align,
                    var.referenced_in_data,
                )
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

    raise FixBssException("Could not find any solutions")


# Parses #pragma increment_block_number (with line continuations already removed)
def parse_pragma(pragma_string: str) -> dict[str, int]:
    amounts = {}
    for part in pragma_string.replace('"', "").split()[2:]:
        kv = part.split(":")
        if len(kv) != 2:
            raise FixBssException(
                "#pragma increment_block_number"
                f' arguments must be version:amount pairs, not "{part}"'
            )
        try:
            amount = int(kv[1])
        except ValueError:
            raise FixBssException(
                "#pragma increment_block_number"
                f' amount must be an integer, not "{kv[1]}" (in "{part}")'
            )
        amounts[kv[0]] = amount
    return amounts


# Formats #pragma increment_block_number as a list of lines
def format_pragma(amounts: dict[str, int], max_line_length: int) -> list[str]:
    lines = []
    pragma_start = "#pragma increment_block_number "
    current_line = pragma_start + '"'
    first = True
    for version, amount in sorted(amounts.items()):
        part = f"{version}:{amount}"
        if len(current_line) + len(part) + len('" \\') > max_line_length:
            lines.append(current_line + '" ')
            current_line = " " * len(pragma_start) + '"'
            first = True
        if not first:
            current_line += " "
        current_line += part
        first = False
    lines.append(current_line + '"\n')

    if len(lines) >= 2:
        # add and align vertically all continuation \ characters
        n_align = max(map(len, lines[:-1]))
        for i in range(len(lines) - 1):
            lines[i] = f"{lines[i]:{n_align}}\\\n"

    return lines


def update_source_file(version_to_update: str, file: Path, new_pragmas: list[Pragma]):
    with open(file, "r", encoding="utf-8") as f:
        lines = f.readlines()

    replace_lines: list[tuple[int, int, list[str]]] = []

    for pragma in new_pragmas:
        i = pragma.line_number - 1
        if not lines[i].startswith("#pragma increment_block_number"):
            raise FixBssException(
                f"Expected #pragma increment_block_number on line {pragma.line_number}"
            )

        # list the pragma line and any continuation line
        pragma_lines = [lines[i]]
        while pragma_lines[-1].endswith("\\\n"):
            i += 1
            pragma_lines.append(lines[i])

        # concatenate all lines into one
        pragma_string = "".join(s.replace("\\\n", "") for s in pragma_lines)

        amounts = parse_pragma(pragma_string)

        amounts[version_to_update] = pragma.amount

        column_limit = 120  # matches .clang-format's ColumnLimit
        new_pragma_lines = format_pragma(amounts, column_limit)

        replace_lines.append(
            (
                pragma.line_number - 1,
                pragma.line_number - 1 + len(pragma_lines),
                new_pragma_lines,
            )
        )

    # Replace the pragma lines starting from the end of the file, so the line numbers
    # for pragmas earlier in the file stay accurate.
    replace_lines.sort(key=lambda it: it[0], reverse=True)
    for start, end, new_pragma_lines in replace_lines:
        del lines[start:end]
        lines[start:start] = new_pragma_lines

    with open(file, "w", encoding="utf-8") as f:
        f.writelines(lines)


def process_file(
    file: Path,
    bss_section: BssSection,
    make_log: list[str],
    dry_run: bool,
    version: str,
):
    print(f"{colorama.Fore.CYAN}Processing {file} ...{colorama.Fore.RESET}")

    command_line = find_compiler_command_line(make_log, file)
    if command_line is None:
        raise FixBssException(f"Could not determine compiler command line for {file}")

    print(f"Compiler command: {shlex.join(command_line)}")
    symbol_table, ucode = run_cfe(command_line, keep_files=False)

    bss_variables = find_bss_variables(symbol_table, ucode)
    print("BSS variables:")
    for var in bss_variables:
        i = var.block_number
        print(
            f"  {i:>6} [{i%256:>3}]: size=0x{var.size:04X} align=0x{var.align:X} referenced_in_data={str(var.referenced_in_data):<5} {var.name}"
        )

    build_bss_symbols = predict_bss_ordering(bss_variables)
    print("Current build BSS ordering:")
    for symbol in build_bss_symbols:
        print(
            f"  offset=0x{symbol.offset:04X} size=0x{symbol.size:04X} align=0x{symbol.align:X} referenced_in_data={str(symbol.referenced_in_data):<5} {symbol.name}"
        )

    if not bss_section.pointers:
        raise FixBssException(f"No pointers to BSS found in ROM for {file}")

    base_bss_symbols = determine_base_bss_ordering(build_bss_symbols, bss_section)
    print("Baserom BSS ordering:")
    for symbol in base_bss_symbols:
        print(
            f"  offset=0x{symbol.offset:04X} size=0x{symbol.size:04X} align=0x{symbol.align:X} referenced_in_data={str(symbol.referenced_in_data):<5} {symbol.name}"
        )

    pragmas = find_pragmas(symbol_table)
    max_pragmas = 3
    if not pragmas:
        raise FixBssException(f"No increment_block_number pragmas found in {file}")
    elif len(pragmas) > max_pragmas:
        raise FixBssException(
            f"Too many increment_block_number pragmas found in {file} (found {len(pragmas)}, max {max_pragmas})"
        )

    print("Solving BSS ordering ...")
    new_pragmas = solve_bss_ordering(pragmas, bss_variables, base_bss_symbols)
    print("New increment_block_number amounts:")
    for pragma in new_pragmas:
        print(f"  line {pragma.line_number}: {pragma.amount}")

    if not dry_run:
        update_source_file(version, file, new_pragmas)
        print(f"{colorama.Fore.GREEN}Updated {file}{colorama.Fore.RESET}")


def process_file_worker(*x):
    # Collect output in a buffer to avoid interleaving output when processing multiple files
    old_stdout = sys.stdout
    fake_stdout = io.StringIO()
    try:
        sys.stdout = fake_stdout
        process_file(*x)
    except FixBssException as e:
        # exception with a message for the user
        print(f"{colorama.Fore.RED}Error: {str(e)}{colorama.Fore.RESET}")
        raise
    except Exception as e:
        # "unexpected" exception, also print a trace for devs
        print(f"{colorama.Fore.RED}Error: {str(e)}{colorama.Fore.RESET}")
        traceback.print_exc(file=sys.stdout)
        raise
    finally:
        sys.stdout = old_stdout
        print()
        print(fake_stdout.getvalue(), end="")


def main():
    parser = argparse.ArgumentParser(
        description="Automatically fix BSS ordering by editing increment_block_number pragmas. "
        "Assumes that the build is up-to-date and that only differences between the baserom and "
        "the current build are due to BSS ordering."
    )
    parser.add_argument(
        "-v",
        "--version",
        dest="oot_version",
        type=str,
        required=True,
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

    bss_sections = compare_pointers(version)

    files_with_reordering = []
    for file, bss_section in bss_sections.items():
        if not bss_section.pointers:
            continue
        # The following heuristic doesn't work for z_locale, since the first pointer into BSS is not
        # at the start of the section. Fortunately z_locale either has one BSS variable (in GC versions)
        # or none (in N64 versions), so we can just skip it.
        if str(file) == "src/boot/z_locale.c":
            continue
        # For the baserom, assume that the lowest address is the start of the BSS section. This might
        # not be true if the first BSS variable is not referenced, but in practice this doesn't happen
        # (except for z_locale above).
        base_min_address = min(p.base_value for p in bss_section.pointers)
        build_min_address = bss_section.start_address
        if not all(
            p.build_value - build_min_address == p.base_value - base_min_address
            for p in bss_section.pointers
        ):
            files_with_reordering.append(file)

    if files_with_reordering:
        print("Files with BSS reordering:")
        for file in files_with_reordering:
            print(f"  {file}")
    else:
        print("No BSS reordering found.")

    if args.files:
        files_to_fix = args.files
    else:
        files_to_fix = files_with_reordering
    if not files_to_fix:
        return

    print(f"Running make to find compiler command line ...")
    make_log = generate_make_log(version)

    with multiprocessing.Pool() as p:
        file_results = []
        for file in files_to_fix:
            file_result = p.apply_async(
                process_file_worker,
                (
                    file,
                    bss_sections[file],
                    make_log,
                    args.dry_run,
                    version,
                ),
            )
            file_results.append(file_result)

        # Wait until all files are done
        while not all(file_result.ready() for file_result in file_results):
            time.sleep(0.010)

        # Collect results and check for errors
        num_successes = sum(file_result.successful() for file_result in file_results)
        if num_successes == len(file_results):
            print()
            print(f"Processed {num_successes}/{len(file_results)} files.")
        else:
            print()
            print(
                f"{colorama.Fore.RED}Processed {num_successes}/{len(file_results)} files.{colorama.Fore.RESET}"
            )
            sys.exit(1)


if __name__ == "__main__":
    main()
