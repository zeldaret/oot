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
    parser = argparse.ArgumentParser(description="Converts a GameInfo offset to a REG macro.")
    parser.add_argument("offset", help="offset to GameInfo in hexadecimal")
    args = parser.parse_args()
    print(get_reg_macro(int(args.offset, 16)))

if __name__ == "__main__":
    main()
