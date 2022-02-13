#!/usr/bin/python3

import os
import sys
import re
from disassemble import get_z_name

script_dir = os.path.dirname(os.path.realpath(__file__))
root_dir = script_dir + "/../"
src_dir = root_dir + "src/overlays/"
asm_dir = root_dir + "asm/non_matchings/overlays/"


def get_c_file_path(file):
    c_file = get_z_name(file) + ".c"
    for root, dirs, files in os.walk(src_dir):
        if c_file in files:
            return os.path.join(root, c_file)
    return None


def handle_file(asm_root, asm_file, c_file_path):
    file_path = os.path.join(asm_root, asm_file)
    with open(file_path) as f:
        file_lines = f.readlines()

    new_files = []
    num_rodata = 0
    for i, line in enumerate(file_lines):
        asm_basename = asm_file.split(".")[0]
        if line.startswith("glabel func"):
            new_files.append((i, line.split(" ")[1].strip() + ".s", "func"))
        elif line.startswith(".section .data"):
            new_files.append((i, asm_basename + ".data.s", "data"))
        elif line.startswith(".section .rodata"):
            type = "rodata"
            ext = ".rodata.s"
            if num_rodata > 0:
                type = "reloc"
                ext = ".reloc.s"
            num_rodata += 1

            new_files.append((i, asm_basename + ext, type))
        elif line.startswith(".bss"):
            new_files.append((i, asm_basename + ".bss.s", "bss"))

    if len(new_files) == 1:
        return

    os.remove(file_path)
    for i, new_file in enumerate(new_files):
        if i < len(new_files) - 1:
            new_file_lines = file_lines[new_file[0]:new_files[i+1][0]]
        else:
            new_file_lines = file_lines[new_file[0]:]

        with open(os.path.join(asm_root, new_file[1]), mode="w", newline="\n") as out_file:
            out_file.writelines(new_file_lines)

    os.remove(c_file_path)

    pragma_begin = "#pragma GLOBAL_ASM(\"" + asm_root.split("../")[1] + "/"
    pragma_end = "\")"
    with open(c_file_path, mode="w", newline="\n") as c_file:
        for new_file in new_files:
            c_file.write(pragma_begin + new_file[1] + pragma_end + "\n\n")


def main():
    for root, dirs, files in os.walk(asm_dir):
        for file in files:
            if file.startswith("z_"):
                c_file_path = get_c_file_path(root.split("/")[-1])
                if c_file_path is not None:
                    handle_file(root, file, c_file_path)


main()
