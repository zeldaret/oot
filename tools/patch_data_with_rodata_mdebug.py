#!/usr/bin/env python3

# SPDX-FileCopyrightText: © 2025 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

import argparse
import struct

import elftools.elf.elffile

# Patches mdebug for files linked with data_with_rodata.ld by replacing storage
# class stData with stRData, since .data symbols are now in the .rodata section

SC_MASK = 0x03E00000
SC_SHIFT = 21


def read_u32(f, offset):
    f.seek(offset)
    return struct.unpack(">I", f.read(4))[0]


def write_u32(f, offset, value):
    f.seek(offset)
    f.write(struct.pack(">I", value))


def patch_sc(f, offset):
    value = read_u32(f, offset)
    sc = (value & SC_MASK) >> SC_SHIFT
    if sc == 2:  # scData
        value = (value & ~SC_MASK) | (15 << SC_SHIFT)  # scRData
        write_u32(f, offset, value)


def main():
    parser = argparse.ArgumentParser()

    parser.add_argument("file", help="input file")
    args = parser.parse_args()

    with open(args.file, "r+b") as f:
        elf = elftools.elf.elffile.ELFFile(f)

        mdebug_offset = 0
        for section in elf.iter_sections():
            if section.name == ".mdebug":
                mdebug_offset = section["sh_offset"]
                break

        if mdebug_offset == 0:
            return

        isymMax = read_u32(f, mdebug_offset + 0x20)
        cbSymOffset = read_u32(f, mdebug_offset + 0x24)
        iextMax = read_u32(f, mdebug_offset + 0x58)
        cbExtOffset = read_u32(f, mdebug_offset + 0x5C)

        for i in range(isymMax):
            patch_sc(f, cbSymOffset + i * 0xC + 0x8)

        for i in range(iextMax):
            patch_sc(f, cbExtOffset + i * 0x10 + 0xC)


if __name__ == "__main__":
    main()
