#!/usr/bin/env python3
import struct, sys, argparse

import elftools.elf.elffile

# Patches driverominit.o to change bnez t6,3c to nop at offset 0x20 in the .text section

if __name__ == "__main__":
    parser = argparse.ArgumentParser()

    parser.add_argument("file", help="input file")
    args = parser.parse_args()

    with open(args.file, "r+b") as f:
        elf = elftools.elf.elffile.ELFFile(f)

        text_offset = 0
        for section in elf.iter_sections():
            if section.name == ".text":
                text_offset = section["sh_offset"]
                break

        if text_offset == 0:
            print("Error: .text section not found")
            sys.exit(1)

        f.seek(text_offset + 0x20)
        instruction = struct.unpack(">I", f.read(4))[0]
        if instruction != 0x15C00006:  # bnez t6,3c
            print("Error: expected instruction not found, found 0x%08X" % instruction)
            sys.exit(1)

        f.seek(text_offset + 0x20)
        f.write(struct.pack(">I", 0x00000000))  # nop
