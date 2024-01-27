#!/usr/bin/env python3

# SPDX-FileCopyrightText: © 2024 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

import argparse
import collections
from dataclasses import dataclass
import difflib
from enum import Enum
import itertools
import math
from pathlib import Path
import re
import subprocess
import sys
from typing import Iterator, List, Optional, Tuple


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


def run_objdump(path: Path) -> List[Inst]:
    if not path.exists():
        raise Exception(f"file {path} does not exist")

    command = [
        "mips-linux-gnu-objdump",
        "-drz",
        "-m",
        "mips:4300",
        "-j",
        ".text",
        str(path),
    ]
    try:
        lines = subprocess.run(
            command,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            check=True,
            encoding="utf-8",
        ).stdout.splitlines()
    except subprocess.CalledProcessError as e:
        return []

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


def find_functions_with_diffs(version: str, c_path: str):
    object_path = Path(c_path).with_suffix(".o")

    expected_dir = Path("expected/build") / version
    build_dir = Path("build") / version

    insts1 = run_objdump(expected_dir / object_path)
    insts2 = run_objdump(build_dir / object_path)

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


def print_summary(version: str, csv: bool):
    expected_dir = Path("expected/build") / version
    build_dir = Path("build") / version

    if csv:
        print("path,expected,actual,added,removed,changed,progress")
    for object_file in sorted(expected_dir.glob("src/**/*.o")):
        object_path = object_file.relative_to(expected_dir)
        c_path = object_path.with_suffix(".c")

        insts1 = run_objdump(expected_dir / object_path)
        insts2 = run_objdump(build_dir / object_path)

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
            progress = max(1.0 - (added + removed + changed) / len(insts1), 0)
        else:
            progress = 1.0

        if csv:
            print(
                f"{c_path},{len(insts1)},{len(insts2)},{added},{removed},{changed},{progress:.3f}"
            )
        elif progress == 1.0:
            print(f"   OK {c_path}")
        else:
            print(f"  {math.floor(progress * 100):>2}% {c_path}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Calculate progress matching .text sections"
    )
    parser.add_argument(
        "file",
        metavar="FILE",
        nargs="?",
        help="find functions with diffs in the given source file (if omitted, print summary of diffs for all files)",
    )
    parser.add_argument(
        "-v", "--version", help="version to compare", default="gc-eu-mq"
    )
    parser.add_argument("--csv", help="print summary CSV", action="store_true")
    args = parser.parse_args()

    if args.file is not None:
        find_functions_with_diffs(args.version, args.file)
    else:
        print_summary(args.version, args.csv)
