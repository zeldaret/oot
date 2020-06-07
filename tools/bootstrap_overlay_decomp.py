#!/usr/bin/python3

import re
import os
from disassemble import get_ovl_dir, get_z_name

script_dir = os.path.dirname(os.path.realpath(__file__))
root_dir = script_dir + "/../"
src_dir = root_dir + "src/overlays/"
asm_dir = root_dir + "asm/non_matchings/overlays/"


def get_overlays_to_bootstrap():
    non_decomped_ovls = []

    # traverse root directory, and list directories as dirs and files as files
    for root, dirs, files in os.walk(asm_dir):
        for ovl_name in dirs:
            if ovl_name.startswith("ovl_"):
                non_decomped_ovls.append(ovl_name)

    for root, dirs, files in os.walk(src_dir):
        for ovl_name in dirs:
            if ovl_name in non_decomped_ovls:
                non_decomped_ovls.remove(ovl_name)

    return non_decomped_ovls


def create_source_dir(overlay):
    overlay_dir = get_ovl_dir(overlay)
    full_dir = src_dir + overlay_dir
    os.mkdir(full_dir)
    c_name = get_z_name(overlay) + ".c"
    s_name = get_z_name(overlay) + ".s"

    with open(full_dir + c_name, "w", newline="\n") as c_file:
        pragma_line = "#pragma GLOBAL_ASM(\"asm/non_matchings/overlays/" + get_ovl_dir(overlay) + s_name + "\")\n"
        c_file.write("#include <ultra64.h>\n#include <global.h>\n\n")
        c_file.write(pragma_line)

    with open(full_dir + "overlay.cfg", "w", newline="\n") as cfg_file:
        cfg_file.write(overlay + "\n" + c_name)


def strip_header_from_s(overlay):
    s_file_path = asm_dir + get_ovl_dir(overlay) + get_z_name(overlay) + ".s"
    beginning_line = -1
    with open(s_file_path, "r") as s_file:
        s_lines = s_file.readlines()

        for i in range(len(s_lines)):
            if s_lines[i].startswith("glabel") or s_lines[i].startswith("func_"):
                beginning_line = i
                break

    if beginning_line > -1:
        if beginning_line > 10:
            for i in range(0, beginning_line):
                if s_lines[i].startswith("/*"):
                    func_name = s_lines[i].split(" ")[2]
                    func_line = "glabel func_" + func_name + "\n"
                    s_lines.insert(i, func_line)
                    beginning_line = i

        for i in range(len(s_lines)):
            if s_lines[i].startswith("func"):
                s_lines[i] = "glabel " + s_lines[i]
                s_lines[i] = s_lines[i].replace(":", "")

        with open(s_file_path, "w", newline="\n") as s_file:
            s_file.writelines(s_lines[beginning_line:])


def manage_overlays_mk(overlay):
    with open(root_dir + "overlays.mk", "a", newline="\n") as overlays_file:
        overlays_file.write("    src/overlays/" + get_ovl_dir(overlay) + " \\\n")

    with open(root_dir + "overlays_asm.mk", "r") as overlays_asm_file:
        lines = overlays_asm_file.readlines()
        to_remove = "    asm/non_matchings/overlays/" + get_ovl_dir(overlay)[:-1] + " \\\n"
        lines.remove(to_remove)

    with open(root_dir + "overlays_asm.mk", "w", newline="\n") as overlays_asm_file:
        overlays_asm_file.writelines(lines)


def manage_spec(overlay):
    with open(root_dir + "spec", "r") as spec_file:
        spec_text = spec_file.read()
        spec_text = spec_text.replace("asm/non_matchings/overlays/" + get_ovl_dir(overlay), "src/overlays/"
                                      + get_ovl_dir(overlay))

    with open(root_dir + "spec", "w", newline="\n") as spec_file:
        spec_file.write(spec_text)


def main():
    num = 100
    i = 0
    overlays = get_overlays_to_bootstrap()

    for overlay in overlays:
        print("Setting up " + overlay)
        create_source_dir(overlay)
        strip_header_from_s(overlay)
        #manage_overlays_mk(overlay)
        #manage_spec(overlay)
        i += 1
        if i >= num:
            break


main()
