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
    return int(string, 10)

def index_to_offset(index):
    return index * 2 + DATA_OFFSET

def read_file(filename):
    parsed_contents = ""

    src_file = open(filename)
    file_contents = src_file.read()
    src_file.close()

    pattern = re.compile("gGameInfo->data\[((0[xX])?[0-9a-fA-F]+)\]")

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
    dst_file = open(filename, "w")
    dst_file.write(contents)
    dst_file.close()

def main():
    parser = argparse.ArgumentParser(description="Converts a gGameInfo->data index to a REG macro.")

    # TODO: Add a description and a better title
    # index_group = parser.add_argument_group(title="index", description="")
    index_group = parser.add_argument_group()
    index_group.add_argument("index", help="index of gGameInfo->data in decimal (or hexadecimal if starts with 0x)")
    index_group.add_argument("--offset", help="treat index argument as an offset to gGameInfo instead", action="store_true")
    index_group.add_argument("--hex", help="treat index argument as hexadecimal, even without the 0x", action="store_true")

    # TODO: Add a description and a better title
    # file_group = parser.add_argument_group(title="file", description="")
    file_group = parser.add_argument_group()
    file_group.add_argument("--file", help="use the parameter as a filepath, then replace every occurrence of `gGameInfo->data[number]` in that file a REG macro", action="store_true")
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
        offset = index_to_offset(index)
        if args.offset:
            offset = index

        print(get_reg_macro(offset)+"\n")

if __name__ == "__main__":
    main()
