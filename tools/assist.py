#!/usr/bin/env python3

import argparse
import os
import sys
from collections import OrderedDict

gAddressWidth = 18 # if your ld >= 2.40 change this to 10

script_dir = os.path.dirname(os.path.realpath(__file__))
root_dir = script_dir + "/../"
asm_dir = root_dir + "asm/non_matchings/overlays/actors"
build_dir = root_dir + "build/"

def read_rom():
    with open("baserom.z64", "rb") as f:
        return f.read()


def find_dir(query):
    for root, dirs, files in os.walk(asm_dir):
        for d in dirs:
            if d == query:
                return os.path.join(root, d)
    return None


def get_all_s_files():
    ret = set()
    for root, dirs, files in os.walk(asm_dir):
        for f in files:
            if f.endswith(".s"):
                ret.add(f[:-2])
    return ret


def get_symbol_bytes(offsets, func):
    if func not in offsets or "start" not in offsets[func] or "end" not in offsets[func]:
        return None
    start = offsets[func]["start"]
    end = offsets[func]["end"]
    return list(rom_bytes[start:end])


def parse_map(fname):
    ram_offset = None
    cur_file = "<no file>"
    syms = {}
    prev_sym = None
    prev_line = ""
    with open(fname) as f:
        for line in f:
            if "load address" in line:
                if "noload" in line or "noload" in prev_line:
                    ram_offset = None
                    continue
                ram = int(line[16 : 16 + gAddressWidth], 0)
                rom = int(line[16 + gAddressWidth + 25 : 16 + gAddressWidth + 25 + gAddressWidth], 0)
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
            ram = int(line[16 : 16 + gAddressWidth], 0)
            rom = ram - ram_offset
            fn = line.split()[-1]
            if "0x" in fn:
                ram_offset = None
            elif "/" in fn:
                cur_file = fn
            else:
                syms[fn] = (rom, cur_file, prev_sym, ram)
                prev_sym = fn
    return syms


def get_map_offsets(syms):
    offsets = {}
    for sym in syms:
        prev_sym = syms[sym][2]
        if sym not in offsets:
            offsets[sym] = {}
        if prev_sym not in offsets:
            offsets[prev_sym] = {}
        offsets[sym]["start"] = syms[sym][0]
        offsets[prev_sym]["end"] = syms[sym][0]
    return offsets


def diff_syms(qb, tb):
    if len(tb) < 8:
        return 0

    if len(qb) > len(tb):
        larger = qb
        smaller = tb
    else:
        larger = tb
        smaller = qb

    len_ratio = len(smaller) / len(larger)

    n_bytes = len(smaller)
    matches = 0
    for i in range(0, n_bytes, 4):
        if smaller[i] == larger[i]:
            matches += 4
    return (matches / n_bytes) * len_ratio


def get_matches(query):
    query_bytes = get_symbol_bytes(map_offsets, query)
    if query_bytes is None:
        sys.exit("Symbol '" + query + "' not found")

    ret = {}
    for symbol in map_offsets:
        if symbol is not None and query != symbol:
            target_bytes = get_symbol_bytes(map_offsets, symbol)
            if target_bytes is not None:
                score = diff_syms(query_bytes, target_bytes)
                if score >= args.threshold:
                    ret[symbol] = score
    return OrderedDict(sorted(ret.items(), key=lambda kv: kv[1], reverse=True))


def do_query(query):
    matches = get_matches(query)
    num_matches = len(matches)

    if num_matches == 0:
        print(query + " - found no matches")
        return

    i = 0
    more_str = ":"
    if args.num_out < num_matches:
        more_str = " (showing only " + str(args.num_out) + "):"

    print(query + " - found " + str(num_matches) + " matches total" + more_str)
    for match in matches:
        if i == args.num_out:
            break
        match_str = "{:.2f} - {}".format(matches[match], match)
        if match not in s_files:
           match_str += " (decompiled)"
        print(match_str)
        i += 1
    print()

parser = argparse.ArgumentParser(description="Tools to assist with decomp")
parser.add_argument("query", help="function or file")
parser.add_argument("--threshold", help="score threshold between 0 and 1 (higher is more restrictive)", type=float, default=0.95, required=False)
parser.add_argument("--num-out", help="number of functions to display", type=int, default=10, required=False)

args = parser.parse_args()

rom_bytes = read_rom()
map_syms = parse_map(build_dir + "z64.map")
map_offsets = get_map_offsets(map_syms)

s_files = get_all_s_files()

query_dir = find_dir(args.query)

if query_dir is not None:
    files = os.listdir(query_dir)
    for f_name in files:
        do_query(f_name[:-2])
else:
    do_query(args.query)
