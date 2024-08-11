#!/usr/bin/env python3

# SPDX-FileCopyrightText: © 2024 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

import argparse
import collections
from colorama import Fore, Style
from dataclasses import dataclass
import difflib
import itertools
import math
from pathlib import Path
import re
import subprocess
import sys
import multiprocessing
import multiprocessing.pool
from typing import Dict, Iterator, List, Optional, Tuple


def green(s: str) -> str:
    return f"{Fore.GREEN}{s}{Style.RESET_ALL}"


def red(s: str) -> str:
    return f"{Fore.RED}{s}{Style.RESET_ALL}"


# Make interrupting with ^C less jank
# https://stackoverflow.com/questions/72967793/keyboardinterrupt-with-python-multiprocessing-pool
def set_sigint_ignored():
    import signal

    signal.signal(signal.SIGINT, signal.SIG_IGN)


@dataclass
class Inst:
    func_name: str
    mnemonic: str
    regs: List[str]
    imm: Optional[int]
    reloc_type: Optional[str]
    reloc_symbol: Optional[str]


FUNC_RE = re.compile(r"([0-9a-f]+) <(.*)>:")


def parse_func_name(line: str) -> str:
    match = FUNC_RE.match(line)
    if not match:
        raise Exception(f"could not parse function name from '{line}'")
    return match.group(2)


def is_branch(mnemonic: str) -> bool:
    return mnemonic.startswith("b") and mnemonic != "break"


def parse_inst(func_name: str, line: str) -> Inst:
    parts = line.split()
    addr = int(parts[0][:-1], 16)
    mnemonic = parts[2]
    regs = []
    imm = None
    if len(parts) > 3:
        for part in parts[3].split(","):
            if "(" in part:  # load/store
                offset_str, rest = part.split("(")
                regs.append(rest[:-1])
                imm = int(offset_str, 10)
            elif is_branch(mnemonic):
                try:
                    # convert branch targets to relative offsets
                    offset = int(part, 16)
                    imm = offset - addr - 4
                except ValueError:
                    regs.append(part)
            else:
                try:
                    imm = int(part, 0)
                except ValueError:
                    regs.append(part)
    return Inst(func_name, mnemonic, regs, imm, None, None)


def run_objdump(path: Path, args: List[str]) -> str:
    if not path.exists():
        raise Exception(f"file {path} does not exist")

    command = ["mips-linux-gnu-objdump"] + args + [str(path)]
    try:
        return subprocess.run(
            command,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            check=True,
            encoding="utf-8",
        ).stdout
    except subprocess.CalledProcessError as e:
        return ""


def disassemble(path: Path) -> List[Inst]:
    lines = run_objdump(path, ["-drz", "-m", "mips:4300", "-j", ".text"]).splitlines()
    result = []

    func_name = None
    i = 6  # skip preamble
    while i < len(lines):
        row = lines[i]
        i += 1

        if not row:
            continue

        if not row.startswith(" "):
            func_name = parse_func_name(row)
            continue

        if not func_name:
            raise Exception(f"no function name for line '{row}'")

        inst = parse_inst(func_name, row)

        if i < len(lines) and lines[i].startswith("\t"):
            reloc = lines[i]
            i += 1
            _, inst.reloc_type, inst.reloc_symbol = reloc.split()

        result.append(inst)

    # trim trailing nops
    while result and result[-1].mnemonic == "nop":
        result.pop()
    return result


def pair_instructions(
    insts1: List[Inst], insts2: List[Inst]
) -> Iterator[Tuple[Optional[Inst], Optional[Inst]]]:
    differ = difflib.SequenceMatcher(
        a=[(inst.func_name, inst.mnemonic) for inst in insts1],
        b=[(inst.func_name, inst.mnemonic) for inst in insts2],
        autojunk=False,
    )
    for tag, i1, i2, j1, j2 in differ.get_opcodes():
        for inst1, inst2 in itertools.zip_longest(insts1[i1:i2], insts2[j1:j2]):
            yield (inst1, inst2)


def has_diff(inst1: Inst, inst2: Inst) -> bool:
    if (
        inst1.func_name != inst2.func_name
        or inst1.mnemonic != inst2.mnemonic
        or inst1.regs != inst2.regs
    ):
        return True

    if inst1.reloc_type == inst2.reloc_type and inst1.reloc_type in (
        "R_MIPS_HI16",
        "R_MIPS_LO16",
    ):
        # ignore symbol differences
        return False

    return inst1 != inst2


def get_section_sizes(path: Path) -> Dict[str, int]:
    lines = run_objdump(path, ["-h"]).splitlines()
    if len(lines) < 5:
        return {}

    result = {}
    for i in range(5, len(lines), 2):
        parts = lines[i].split()
        name = parts[1]
        size = int(parts[2], 16)
        # Pad to 0x10-byte alignment
        result[parts[1]] = (size + 0xF) & ~0xF
    return result


def get_section_hex_dump(path: Path, section: str) -> List[str]:
    lines = run_objdump(path, ["-s", "-j", section]).splitlines()
    return lines[4:]


def parse_hex_dump(lines: List[str]) -> bytes:
    result = bytearray()
    for line in lines:
        data = line[6:41].replace(" ", "")
        result.extend(bytes.fromhex(data))

    # pad to 0x10-byte alignment
    while len(result) % 0x10:
        result.append(0)

    return result


def find_functions_with_diffs(version: str, c_path: str):
    object_path = Path(c_path).with_suffix(".o")

    expected_dir = Path("expected/build") / version
    build_dir = Path("build") / version

    insts1 = disassemble(expected_dir / object_path)
    insts2 = disassemble(build_dir / object_path)

    functions_with_diffs = collections.OrderedDict()
    for inst1, inst2 in pair_instructions(insts1, insts2):
        if inst1 is None and inst2 is not None:
            functions_with_diffs[inst2.func_name] = True
        elif inst1 is not None and inst2 is None:
            functions_with_diffs[inst1.func_name] = True
        elif inst1 is not None and inst2 is not None and has_diff(inst1, inst2):
            functions_with_diffs[inst1.func_name] = True
            functions_with_diffs[inst2.func_name] = True

    if not functions_with_diffs:
        print(f"{c_path} OK")
        return

    print(f"{c_path} functions with diffs:")
    for func_name in functions_with_diffs:
        print(f"  {func_name}")


def find_data_diffs(version: str, c_path: str):
    object_path = Path(c_path).with_suffix(".o")

    expected_dir = Path("expected/build") / version
    build_dir = Path("build") / version

    sizes1 = get_section_sizes(expected_dir / object_path)
    sizes2 = get_section_sizes(build_dir / object_path)
    rodata_dump1 = get_section_hex_dump(expected_dir / object_path, ".rodata")
    rodata_dump2 = get_section_hex_dump(build_dir / object_path, ".rodata")
    rodata1 = parse_hex_dump(rodata_dump1)
    rodata2 = parse_hex_dump(rodata_dump2)

    rodata_matches = rodata1 == rodata2
    data_size_matches = sizes1.get(".data", 0) == sizes2.get(".data", 0)
    bss_size_matches = sizes1.get(".bss", 0) == sizes2.get(".bss", 0)

    if rodata_matches:
        print(f"{c_path} .rodata OK")
    else:
        print(
            f"{c_path} .rodata differs: expected size 0x{sizes1.get('.rodata', 0):04x} vs build size 0x{sizes2.get('.rodata', 0):04x}"
        )
        print(f"  expected:")
        print("\n".join(rodata_dump1))
        print(f"  build:")
        print("\n".join(rodata_dump2))

    if data_size_matches:
        print(f"{c_path} .data size OK")
    else:
        print(
            f"{c_path} .data size differs: expected size 0x{sizes1.get('.data', 0):04x} vs build size 0x{sizes2.get('.data', 0):04x}"
        )

    if bss_size_matches:
        print(f"{c_path} .bss size OK")
    else:
        print(
            f"{c_path} .bss size differs: expected size 0x{sizes1.get('.bss', 0):04x} vs build size 0x{sizes2.get('.bss', 0):04x}"
        )


@dataclass
class ObjectDataForComparison:
    insts1: List[Inst]
    insts2: List[Inst]
    sizes1: Dict[str, int]
    sizes2: Dict[str, int]
    rodata1: bytes
    rodata2: bytes


def get_object_data_for_comparison(object1: Path, object2: Path):
    insts1 = disassemble(object1)
    insts2 = disassemble(object2)
    sizes1 = get_section_sizes(object1)
    sizes2 = get_section_sizes(object2)
    rodata_dump1 = get_section_hex_dump(object1, ".rodata")
    rodata_dump2 = get_section_hex_dump(object2, ".rodata")
    rodata1 = parse_hex_dump(rodata_dump1)
    rodata2 = parse_hex_dump(rodata_dump2)
    return ObjectDataForComparison(insts1, insts2, sizes1, sizes2, rodata1, rodata2)


def print_summary(version: str, csv: bool, only_not_ok: bool):
    expected_dir = Path("expected/build") / version
    build_dir = Path("build") / version

    expected_object_files = sorted(expected_dir.glob("src/**/*.o"))

    comparison_data_list: List[multiprocessing.pool.AsyncResult] = []

    with multiprocessing.Pool(initializer=set_sigint_ignored) as p:
        for expected_object in expected_object_files:
            build_object = build_dir / expected_object.relative_to(expected_dir)
            comparison_data_list.append(
                p.apply_async(
                    get_object_data_for_comparison,
                    (expected_object, build_object),
                )
            )
        if csv:
            print("path,expected,actual,.text,.rodata,.data size,.bss size")
        for expected_object, data_async in zip(
            expected_object_files, comparison_data_list
        ):
            c_path = expected_object.relative_to(expected_dir).with_suffix(".c")
            data = data_async.get()

            insts1 = data.insts1
            insts2 = data.insts2

            added = 0
            removed = 0
            changed = 0
            for inst1, inst2 in pair_instructions(insts1, insts2):
                if inst1 is None and inst2 is not None:
                    added += 1
                elif inst1 is not None and inst2 is None:
                    removed += 1
                elif inst1 is not None and inst2 is not None and has_diff(inst1, inst2):
                    changed += 1

            if insts1:
                text_progress = max(1.0 - (added + removed + changed) / len(insts1), 0)
            else:
                text_progress = 1.0

            sizes1 = data.sizes1
            sizes2 = data.sizes2
            rodata1 = data.rodata1
            rodata2 = data.rodata2

            rodata_matches = rodata1 == rodata2
            data_size_matches = sizes1.get(".data", 0) == sizes2.get(".data", 0)
            bss_size_matches = sizes1.get(".bss", 0) == sizes2.get(".bss", 0)

            if only_not_ok:
                if (
                    text_progress == 1
                    and rodata_matches
                    and data_size_matches
                    and bss_size_matches
                ):
                    continue

            if csv:
                print(
                    f"{c_path},{len(insts1)},{len(insts2)},{text_progress:.3f},{rodata_matches},{data_size_matches},{bss_size_matches}"
                )
            else:
                ok = green("OK")
                diff = red("diff")
                text_progress_str = (
                    ok
                    if text_progress == 1
                    else red(f"{math.floor(text_progress * 100):>2}%")
                )
                rodata_str = ok if rodata_matches else diff
                data_size_str = ok if data_size_matches else diff
                bss_size_str = ok if bss_size_matches else diff
                print(
                    f"text:{text_progress_str:<13} rodata:{rodata_str:<13} data size:{data_size_str:<13} bss size:{bss_size_str:<13} {c_path}"
                )
            sys.stdout.flush()


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Calculate progress matching retail")
    parser.add_argument(
        "file",
        metavar="FILE",
        nargs="?",
        help="find functions with diffs in the given source file (if omitted, print summary of diffs for all files)",
    )
    parser.add_argument(
        "-v", "--version", help="version to compare", default="ntsc-1.2"
    )
    parser.add_argument(
        "--data",
        help="diff .data size, .bss size, and .rodata contents instead of text",
        action="store_true",
    )
    parser.add_argument(
        "--not-ok",
        help="only print non-OK files",
        action="store_true",
        dest="only_not_ok",
    )
    parser.add_argument("--csv", help="print summary CSV", action="store_true")
    args = parser.parse_args()

    if args.file is not None:
        if args.data:
            find_data_diffs(args.version, args.file)
        else:
            find_functions_with_diffs(args.version, args.file)
    else:
        print_summary(args.version, args.csv, args.only_not_ok)
