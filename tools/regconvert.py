#!/usr/bin/env python3

import argparse
import re

GROUP_SIZE = 0x60
DATA_OFFSET = 0x14

REGISTER_NAMES = " SOPQMYDUIZCNKXcsiWAVHGmnBdkb"

def get_reg_macro(offset):
    reg = (offset - DATA_OFFSET) // 2
    group = reg // GROUP_SIZE
    reg_in_group = reg % GROUP_SIZE
    return "%cREG(%d)" % (REGISTER_NAMES[group], reg_in_group)

def parse_number(string, force_hex):
    if string.lower().startswith("0x") or force_hex:
        return int(string, 16)
    return int(string, 0)

def index_to_offset(index):
    return index * 2 + DATA_OFFSET

def read_file(filename):
    parsed_contents = ""

    src_file = open(filename)
    file_contents = src_file.read()
    src_file.close()

    pattern = re.compile("gRegEditor->data\[((0[xX])?[0-9a-fA-F]+)\]")

    match = pattern.search(file_contents)
    while match:
        index = parse_number(match.group(1), False)
        offset = index_to_offset(index)

        start, end = match.span()
        parsed_contents += file_contents[:start]
        parsed_contents += get_reg_macro(offset)

        file_contents = file_contents[end:]
        match = pattern.search(file_contents)

    parsed_contents += file_contents
    return parsed_contents

def write_file(filename, contents):
    with open(filename, "w") as f:
        f.write(contents)

def check_valid_index(index):
    return 0x0 <= index <= 0xADF

def check_valid_offset(offset):
    return 0x14 <= offset <= 0x15D2

def main():
    parser = argparse.ArgumentParser(description="Converts a gRegEditor->data index to a REG macro.")

    # TODO: Add a description and a better title
    # index_group = parser.add_argument_group(title="index", description="")
    index_group = parser.add_argument_group()
    index_group.add_argument("index", help="index of gRegEditor->data in decimal (or hexadecimal if starts with 0x)")
    index_group.add_argument("--offset", help="treat index argument as an offset to gRegEditor instead", action="store_true")
    index_group.add_argument("--hex", help="treat index argument as hexadecimal, even without the 0x", action="store_true")

    # TODO: Add a description and a better title
    # file_group = parser.add_argument_group(title="file", description="")
    file_group = parser.add_argument_group()
    file_group.add_argument("--file", help="use the parameter as a filepath, then replace every occurrence of `gRegEditor->data[number]` in that file a REG macro", action="store_true")
    file_group.add_argument("--stdout", help="print the processed file to stdout instead of overwriting the original", action="store_true")
    args = parser.parse_args()

    if args.file:
        filename = args.index
        contents = read_file(filename)
        if args.stdout:
            print(contents)
        else:
            write_file(filename, contents)
    else:
        index = parse_number(args.index, args.hex)
        if args.offset:
            offset = index
            if not check_valid_offset(offset):
                print("Invalid offset: " + args.index)
                if args.hex:
                    print("Offset should be in the range from 0x14 to 0x15D2")
                else:
                    print("Offset should be in the range from 20 to 5586")
                exit(-1)
        else:
            if not check_valid_index(index):
                print("Invalid index: " + args.index)
                if args.hex:
                    print("Index should be in the range from 0x0 to 0xADF")
                else:
                    print("Index should be in the range from 0 to 2783")
                exit(-1)
            offset = index_to_offset(index)

        print(get_reg_macro(offset)+"\n")

if __name__ == "__main__":
    main()
