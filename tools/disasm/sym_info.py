#!/usr/bin/env python3
# SPDX-FileCopyrightText: © 2024 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

import argparse
import csv
import dataclasses
from pathlib import Path
from typing import Optional


@dataclasses.dataclass
class Sym:
    name: str
    value: int
    type: Optional[str]
    size: Optional[int]
    vrom: int


@dataclasses.dataclass
class FileSection:
    file: str
    section: str
    syms: list[Sym]
    vma_start: int


LABELS_TYPES = {"@branchlabel", "@jumptablelabel"}


def main():
    parser = argparse.ArgumentParser(
        description="Print information on a symbol/address"
        " (and possibly surrounding symbols)"
        " from the spimdisasm disassembly context saved in"
        " expected/build/VERSION/context.csv"
    )
    parser.add_argument("sym_or_vma")
    default_version = "ntsc-1.2"
    parser.add_argument(
        "-v",
        "--version",
        dest="oot_version",
        default=default_version,
        help=f"oot version (default: {default_version})",
    )
    parser.add_argument(
        "--around",
        "-n",
        type=int,
        default=0,
        help="how many symbols to show around the target (at least)",
    )
    parser.add_argument(
        "--range",
        "-r",
        type=lambda v: int(v, 0),
        default=0,
        help="show symbols within this range around the target (at least)",
    )
    parser.add_argument(
        "--file",
        "-f",
        action="store_true",
        help="show symbols within the same file and section as the target (at least)",
    )
    parser.add_argument(
        "--labels",
        "-l",
        action="store_true",
        help="also show branch and jump table labels symbols",
    )
    args = parser.parse_args()

    sym_or_vma = args.sym_or_vma
    if "_" in sym_or_vma:
        # special case to avoid parsing e.g. `D_80123456` as hexadecimal 0xD80123456
        sym_or_vma_is_sym = True
    else:
        try:
            target_sym_name = None
            target_vma = int(sym_or_vma, 16)
            sym_or_vma_is_sym = False
        except ValueError:
            sym_or_vma_is_sym = True
    if sym_or_vma_is_sym:
        target_sym_name = sym_or_vma
        target_vma = None

    syms_by_section_by_file = dict[str, dict[str, list[Sym]]]()

    context_csv_p = Path(f"expected/build/{args.oot_version}/context.csv")
    if not context_csv_p.exists():
        print(f"Context file does not exist: {context_csv_p}")
        print(f"Hint: run `make VERSION={args.oot_version} disasm`")
        exit(1)

    with context_csv_p.open() as f:
        for e in csv.DictReader(f):
            if e["category"] != "symbol":
                continue
            sym_name = e["getName"]
            sym_value = e["address"]
            sym_type = e["getType"]
            sym_size = e["getSize"]
            sym_vrom = e["getVrom"]
            sym_section = e["sectionType"]
            sym_file = e["parentFileName"]

            if sym_file == "None":
                sym_file = None

            if not sym_section or not sym_file:
                continue

            sym_value_int = int(sym_value, 0)
            sym_size_int = int(sym_size, 0) if sym_size else None
            sym_vrom_int = int(sym_vrom, 0)

            syms_by_section_by_file.setdefault(sym_file, dict()).setdefault(
                sym_section, list()
            ).append(
                Sym(
                    sym_name,
                    sym_value_int,
                    sym_type if sym_type else None,
                    sym_size_int,
                    sym_vrom_int,
                )
            )

            if sym_name == target_sym_name:
                target_vma = sym_value_int

    if target_vma is None:
        parser.error(f"No symbol '{target_sym_name}'")
    else:
        if target_sym_name is not None:
            print(f"{target_sym_name} = 0x{target_vma:08X}")

    del target_sym_name

    filesections = list[FileSection]()

    for file, syms_by_section in syms_by_section_by_file.items():
        for section, syms in syms_by_section.items():
            syms.sort(key=lambda sym: sym.value)
            vma_start = syms[0].value
            filesections.append(FileSection(file, section, syms, vma_start))

    filesections.sort(key=lambda fs: fs.vma_start)

    def get_first_print_sym():
        prev_syms = list[Sym]()
        for fs in filesections:
            for sym in fs.syms:
                if not args.labels and sym.type in LABELS_TYPES:
                    continue
                if target_vma < sym.value:
                    return prev_syms[0]
                prev_syms.append(sym)
                while (
                    len(prev_syms) - 1 > args.around
                    and prev_syms[0].value < target_vma - args.range
                ):
                    prev_syms.pop(0)

    first_print_sym = get_first_print_sym()

    def get_last_print_sym():
        min_skip_count = args.around
        for fs in filesections:
            for sym in fs.syms:
                if not args.labels and sym.type in LABELS_TYPES:
                    continue
                if target_vma <= sym.value:
                    min_skip_count -= 1
                    if min_skip_count < 0 and sym.value >= args.range + target_vma:
                        return sym

    last_print_sym = get_last_print_sym()

    is_near_target = False

    indent = " " * 4

    for i_fs, fs in enumerate(filesections):
        fs_printed = False
        is_first_fs_sym = True
        fs_printed_end_ellipsis = False
        for sym in fs.syms:
            if not args.labels and sym.type in LABELS_TYPES:
                continue

            if sym == first_print_sym:
                is_near_target = True

            print_sym = is_near_target or (
                args.file
                and fs.vma_start <= target_vma
                and (
                    target_vma < filesections[i_fs + 1].vma_start
                    if i_fs + 1 < len(filesections)
                    else True
                )
            )
            if not print_sym and fs_printed:
                if not fs_printed_end_ellipsis:
                    print(f"{indent}...")
                    fs_printed_end_ellipsis = True
            if print_sym:
                if not fs_printed:
                    print(fs.file, fs.section)
                    fs_printed = True
                    if not is_first_fs_sym:
                        print(f"{indent}...")
                print(
                    f"{indent}{sym.name} 0x{sym.value:X} ROM:0x{sym.vrom:X}"
                    + (f" ({sym.type})" if sym.type else "")
                    + (f" (sz=0x{sym.size:X})" if sym.size else "")
                )
            is_first_fs_sym = False

            if sym == last_print_sym:
                is_near_target = False


if __name__ == "__main__":
    main()
