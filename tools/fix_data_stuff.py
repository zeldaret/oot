#!/usr/bin/python3

import os
import sys
import re
from disassemble import get_z_name

script_dir = os.path.dirname(os.path.realpath(__file__))
root_dir = script_dir + "/../"
src_dir = root_dir + "src/overlays/"
asm_dir = root_dir + "asm/non_matchings/overlays/"


def handle_actor_line(match):
    match = match.group()
    base_portion = match[23:-4]
    base_portion_split = base_portion.split("/")
    if len(base_portion_split) < 3:
        return match

    ret = match
    base_name = "build/data/overlays/" + base_portion_split[1] + "/" + base_portion_split[3]
    data_path = base_name + ".data.o"
    rodata_path = base_name + ".rodata.o"
    bss_path = base_name + ".bss.o"
    reloc_path = base_name + ".reloc.o"

    if os.path.exists(root_dir + data_path):
        ret += "    include \"" + data_path + "\"\n"

    if os.path.exists(root_dir + rodata_path):
        ret += "    include \"" + rodata_path + "\"\n"

    if os.path.exists(root_dir + bss_path):
        ret += "    include \"" + bss_path + "\"\n"

    if os.path.exists(root_dir + reloc_path):
        ret += "    include \"" + reloc_path + "\"\n"

    return ret


def main():
    with open(root_dir + "spec") as spec_file:
        spec_text = spec_file.read()

    spec_text_replaced = re.sub(".*ovl_.*\.o.*\n", handle_actor_line, spec_text)

    with open(root_dir + "spec", "w", newline="\n") as spec_file:
        spec_file.write(spec_text_replaced)


main()
