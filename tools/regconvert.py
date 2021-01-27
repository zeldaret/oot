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

def main():
    parser = argparse.ArgumentParser(description="Converts a GameInfo->data index to a REG macro.")
    parser.add_argument("index", help="index of GameInfo->data in decimal (or hexadecimal if starts with 0x)")
    args = parser.parse_args()

    index = 0
    if args.index.lower().startswith("0x"):
        index = int(args.index, 16)
    else:
        index = int(args.index, 10)

    offset = (index + 10)*2
    print(get_reg_macro(offset))

if __name__ == "__main__":
    main()
