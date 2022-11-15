#!/usr/bin/python3

import os
import sys
import re
from disassemble import get_z_name

script_dir = os.path.dirname(os.path.realpath(__file__))
root_dir = script_dir + "/../"
asm_dir = root_dir + "asm/non_matchings/overlays/actors"
src_dir = root_dir + "src/overlays/actors"
include_dir = root_dir + "include"
indent = "    "

includes = "#include <ultra64.h>\n#include <global.h>\n\n"


def remove_struct(root, filename):
    with open(os.path.join(root, filename)) as f:
        c_text = f.read()

    struct_start = c_text.find("typedef")
    struct_end = c_text.find("#define")

    struct = c_text[struct_start:struct_end]

    newfile_text = "#include \"" + filename[:-2] + ".h\"" + "\n\n" + c_text[struct_end:]
    with open(os.path.join(root, filename), "w", newline="\n") as f:
        f.write(newfile_text)
    return struct


def handle_file(root, filename):
    guard_name = "_" + filename[:-2].upper() + "_H_"
    top_guard = "#ifndef " + guard_name + "\n#define " + guard_name + "\n\n"
    header_text = top_guard
    header_text += includes

    struct = remove_struct(root, filename)
    header_text += struct

    u_split = filename[:-2].split("_")
    init_vars_name = ""
    for part in u_split[1:]:
        init_vars_name += part[0].upper()
        if len(part) > 1:
            init_vars_name += part[1:]
        init_vars_name += "_"
    init_vars_name += "InitVars"

    header_text += "extern ActorInit " + init_vars_name + ";\n\n"

    header_text += "#endif\n"

    with open(os.path.join(root, filename[:-2] + ".h"), "w", newline="\n") as f:
        f.write(header_text)


def main():
    for root, dirs, files in os.walk(src_dir):
        for filename in files:
            if filename.endswith(".c"):
                file_path = os.path.join(root, filename)
                with open(file_path) as f:
                    file_text = f.read()
                brace_count = file_text.count("{")
                if brace_count == 2:
                    handle_file(root, filename)
                    dog = 5

main()
