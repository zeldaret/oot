#!/usr/bin/env python3

import argparse

GROUP_SIZE = 0x60
DATA_OFFSET = 0x14

REGISTER_NAMES = " SOPQMYDUIZCNKXcsiWAVHGmnBdkb"

def get_reg_macro(offset):
    reg = (offset - DATA_OFFSET) // 2
    group = reg // GROUP_SIZE
    reg_in_group = reg % GROUP_SIZE
    return "%cREG(%d)\n" % (REGISTER_NAMES[group], reg_in_group)

def parse_number(string, force_hex):
    if string.lower().startswith("0x") or force_hex:
        return int(string, 16)
    return int(string, 10)

def index_to_offset(index):
    return index * 2 + DATA_OFFSET

def main():
    parser = argparse.ArgumentParser(description="Converts a GameInfo->data index to a REG macro.")
    parser.add_argument("index", help="index of GameInfo->data in decimal (or hexadecimal if starts with 0x)")
    parser.add_argument("--offset", help="treat `index` argument as an offset to GameInfo instead", action="store_true")
    parser.add_argument("--hex", help="treat `index` argument as hexadecimal, even without the 0x", action="store_true")
    args = parser.parse_args()

    index = parse_number(args.index, args.hex)
    offset = index_to_offset(index)
    if args.offset:
        offset = index

    print(get_reg_macro(offset))

if __name__ == "__main__":
    main()
