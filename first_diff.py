#!/usr/bin/env python3

import os.path
import argparse
from subprocess import check_call

parser = argparse.ArgumentParser(
    description="Find the first difference(s) between the built ROM and the base ROM."
)
parser.add_argument(
    "-c",
    "--count",
    type=int,
    default=5,
    help="find up to this many instruction difference(s)",
)
parser.add_argument(
    "-d",
    "--diff",
    dest="diff_args",
    nargs="?",
    action="store",
    default=False,
    const="prompt",
    help="run diff.py on the result with the provided arguments"
)
args = parser.parse_args()

diff_count = args.count

baseimg = f"baserom.z64"
basemap = f"expected/build/z64.map"

myimg = f"zelda_ocarina_mq_dbg.z64"
mymap = f"build/z64.map"

if not os.path.isfile(baseimg):
    print(f"{baseimg} must exist.")
    exit(1)
if not os.path.isfile(myimg) or not os.path.isfile(mymap):
    print(f"{myimg} and {mymap} must exist.")
    exit(1)

mybin = open(myimg, "rb").read()
basebin = open(baseimg, "rb").read()

if len(mybin) != len(basebin):
    print("Modified ROM has different size...")
    exit(1)

if mybin == basebin:
    print("No differences!")
    exit(0)


def search_rom_address(target_addr):
    ram_offset = None
    prev_ram = 0
    prev_rom = 0
    prev_sym = "<start of rom>"
    cur_file = "<no file>"
    prev_file = cur_file
    prev_line = ""
    with open(mymap) as f:
        for line in f:
            if "load address" in line:
                # Ignore .bss sections since we're looking for a ROM address
                if ".bss" in line or ".bss" in prev_line:
                    ram_offset = None
                    continue
                ram = int(line[16 : 16 + 18], 0)
                rom = int(line[59 : 59 + 18], 0)
                ram_offset = ram - rom
                continue

            prev_line = line

            if (
                ram_offset is None
                or "=" in line
                or "*fill*" in line
                or " 0x" not in line
            ):
                continue

            ram = int(line[16 : 16 + 18], 0)
            rom = ram - ram_offset 
            sym = line.split()[-1]
    
            if "0x" in sym:
                ram_offset = None
                continue
            if "/" in sym:
                cur_file = sym
                continue

            if rom > target_addr:
                return f"{prev_sym} (RAM 0x{prev_ram:X}, ROM 0x{prev_rom:X}, {prev_file})"

            prev_ram = ram
            prev_rom = rom
            prev_sym = sym
            prev_file = cur_file

    return "at end of rom?"


def parse_map(map_fname):
    ram_offset = None
    cur_file = "<no file>"
    syms = {}
    prev_sym = None
    prev_line = ""
    with open(map_fname) as f:
        for line in f:
            if "load address" in line:
                ram = int(line[16 : 16 + 18], 0)
                rom = int(line[59 : 59 + 18], 0)
                ram_offset = ram - rom
                continue

            prev_line = line

            if (
                ram_offset is None
                or "=" in line
                or "*fill*" in line
                or " 0x" not in line
            ):
                continue

            ram = int(line[16 : 16 + 18], 0)
            rom = ram - ram_offset
            sym = line.split()[-1]

            if "0x" in sym:
                ram_offset = None
                continue
            elif "/" in sym:
                cur_file = sym
                continue

            syms[sym] = (rom, cur_file, prev_sym, ram)
            prev_sym = sym

    return syms


def map_diff():
    map1 = parse_map(mymap)
    map2 = parse_map(basemap)
    min_ram = None
    found = None
    for sym, addr in map1.items():
        if sym not in map2:
            continue
        if addr[0] != map2[sym][0]:
            if min_ram is None or addr[0] < min_ram:
                min_ram = addr[0]
                found = (sym, addr[1], addr[2])
    if min_ram is None:
        return False
    else:
        print(
            f"Map appears to have shifted just before {found[0]} ({found[1]}) -- in {found[2]}?"
        )
        if found[2] is not None and found[2] not in map2:
            print(
                f"(Base map file {basemap} out of date due to new or renamed symbols, so result may be imprecise.)"
            )
        return True


def hexbytes(bs):
    return ":".join("{:02X}".format(c) for c in bs)


found_instr_diff = []
map_search_diff = []
diffs = 0
shift_cap = 1000
for i in range(24, len(mybin), 4):
    # (mybin[i:i+4] != basebin[i:i+4], but that's slightly slower in CPython...)
    if diffs <= shift_cap and (
        mybin[i] != basebin[i]
        or mybin[i + 1] != basebin[i + 1]
        or mybin[i + 2] != basebin[i + 2]
        or mybin[i + 3] != basebin[i + 3]
    ):
        if diffs == 0:
            print(f"First difference at ROM addr 0x{i:X}, {search_rom_address(i)}")
            print(
                f"Bytes: {hexbytes(mybin[i : i + 4])} vs {hexbytes(basebin[i : i + 4])}"
            )
        diffs += 1
    if (
        len(found_instr_diff) < diff_count
        and mybin[i] >> 2 != basebin[i] >> 2
        and not search_rom_address(i) in map_search_diff
    ):
        found_instr_diff.append(i)
        map_search_diff.append(search_rom_address(i))

if diffs == 0:
    print("No differences but ROMs differ?")
    exit()

if len(found_instr_diff) > 0:
    for i in found_instr_diff:
        print(f"Instruction difference at ROM addr 0x{i:X}, {search_rom_address(i)}")
        print(
            f"Bytes: {hexbytes(mybin[i : i + 4])} vs {hexbytes(basebin[i : i + 4])}"
        )
print()

definite_shift = diffs > shift_cap
if definite_shift:
    print(f"Over {shift_cap} differing words, must be a shifted ROM.")
else:
    print(f"{diffs} differing word(s).")

if diffs > 100:
    if not os.path.isfile(basemap):
        print(
            f"To find ROM shifts, copy a clean .map file to {basemap} and rerun this script."
        )
    elif not map_diff():
        print(f"No ROM shift{' (!?)' if definite_shift else ''}")

if args.diff_args:
    diff_sym = search_rom_address(found_instr_diff[0]).split()[0]
    if args.diff_args == "prompt":
        diff_args = input("Call diff.py with which arguments? ") or "--"
    else:
        diff_args = args.diff_args
    if diff_args[0] != "-":
        diff_args = "-" + diff_args
    check_call(
        [
            "python3",
            "diff.py",
            diff_args,
            diff_sym,
        ]
    )
