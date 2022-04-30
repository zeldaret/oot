#!/usr/bin/python3

import os
import sys
import re
from disassemble import get_z_name

script_dir = os.path.dirname(os.path.realpath(__file__))
root_dir = script_dir + "/../"
src_dir = root_dir + "src/overlays/"
asm_dir = root_dir + "asm/non_matchings/overlays/"


def remove_empty_lines_after_glabel(file_text):
    file_lines = file_text.splitlines()
    last_glabel = False
    to_remove = []
    for i, line in enumerate(file_lines):
        if "glabel" in line:
            last_glabel = True
            continue
        if last_glabel and not line.strip():
            to_remove.append(i)
        last_glabel = False
    if len(to_remove) > 0:
        for line_num in reversed(to_remove):
            del file_lines[line_num]
        file_text = "\n".join(file_lines)
    return file_text

def remove_balign_after_float(file_text):
    file_lines = file_text.splitlines()
    last_float = False
    to_remove = []
    for i, line in enumerate(file_lines):
        if ".float" in line:
            last_float = True
            continue
        if last_float and line == "    .balign 4":
            to_remove.append(i)
        last_float = False
    if len(to_remove) > 0:
        for line_num in reversed(to_remove):
            del file_lines[line_num]
        file_text = "\n".join(file_lines)
    return file_text


def format_file(file_path):
    with open(file_path) as f:
        orig_file_text = f.read()

    file_text = orig_file_text

    # Condense 2+ empty lines to 1
    file_text = file_text.replace("\n\n\n+", "\n\n")

    # Remove empty lines after section declarations
    file_text = file_text.replace(".rdata\n\n", ".rdata\n")
    file_text = file_text.replace(".late_rodata\n\n", ".late_rodata\n")
    file_text = file_text.replace(".text\n\n", ".text\n")

    # Remove dumb empty lines after glabel
    file_text = remove_empty_lines_after_glabel(file_text)

    # Remove dumb balign 4 lines after float
    file_text = remove_balign_after_float(file_text)

    # Make sure there's only one empty line at the end
    file_text = file_text.rstrip("\n") + "\n"

    if file_text != orig_file_text:
        with open(file_path, "w", newline="\n") as f:
            f.write(file_text)
            return True
    return False


def main():
    for root, dirs, files in os.walk(asm_dir):
        for f in files:
            if f.endswith(".s"):
                format_file(os.path.join(root, f))


main()
