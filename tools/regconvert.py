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

def parse_number(string):
    if string.lower().startswith("0x"):
        return int(string, 16)
    return int(string, 10)

def index_to_offset(index):
    return (index + 10) * 2

def main():
    parser = argparse.ArgumentParser(description="Converts a GameInfo->data index to a REG macro.")
    parser.add_argument("index", help="index of GameInfo->data in decimal (or hexadecimal if starts with 0x)")
    args = parser.parse_args()

    index = parse_number(args.index)
    offset = index_to_offset(index)

    print(get_reg_macro(offset))

if __name__ == "__main__":
    main()
