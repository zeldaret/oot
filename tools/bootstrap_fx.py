#!/usr/bin/python3

import os
import sys
import re

script_dir = os.path.dirname(os.path.realpath(__file__))
root_dir = script_dir + "/../"
data_dir = root_dir + "data/overlays/effects"
asm_dir = root_dir + "asm/non_matchings/overlays/effects"
src_dir = root_dir + "src/overlays/effects"
include_dir = root_dir + "include"
indent = "    "

effect_enum = [
    "EFFECT_SS_DUST",
    "EFFECT_SS_KIRAKIRA",
    "EFFECT_SS_BOMB",
    "EFFECT_SS_BOMB2",
    "EFFECT_SS_BLAST",
    "EFFECT_SS_G_SPK",
    "EFFECT_SS_D_FIRE",
    "EFFECT_SS_BUBBLE",
    "EFFECT_SS_UNSET",
    "EFFECT_SS_G_RIPPLE",
    "EFFECT_SS_G_SPLASH",
    "EFFECT_SS_G_MAGMA",
    "EFFECT_SS_G_FIRE",
    "EFFECT_SS_LIGHTNING",
    "EFFECT_SS_DT_BUBBLE",
    "EFFECT_SS_HAHEN",
    "EFFECT_SS_STICK",
    "EFFECT_SS_SIBUKI",
    "EFFECT_SS_SIBUKI2",
    "EFFECT_SS_G_MAGMA2",
    "EFFECT_SS_STONE1",
    "EFFECT_SS_HITMARK",
    "EFFECT_SS_FHG_FLASH",
    "EFFECT_SS_K_FIRE",
    "EFFECT_SS_SOLDER_SRCH_BALL",
    "EFFECT_SS_KAKERA",
    "EFFECT_SS_ICE_PIECE",
    "EFFECT_SS_EN_ICE",
    "EFFECT_SS_FIRE_TAIL",
    "EFFECT_SS_EN_FIRE",
    "EFFECT_SS_EXTRA",
    "EFFECT_SS_FCIRCLE",
    "EFFECT_SS_DEAD_DB",
    "EFFECT_SS_DEAD_DD",
    "EFFECT_SS_DEAD_DS",
    "EFFECT_SS_DEAD_SOUND",
    "EFFECT_SS_ICE_SMOKE",
]

to_rename = []


def get_regs_enum(short_name):
    upper_name = short_name.upper()
    return \
        "typedef enum {\n" + \
        indent + "/* 0x00 */ SS_" + upper_name + "_0,\n" + \
        indent + "/* 0x01 */ SS_" + upper_name + "_1,\n" + \
        indent + "/* 0x02 */ SS_" + upper_name + "_2,\n" + \
        indent + "/* 0x03 */ SS_" + upper_name + "_3,\n" + \
        indent + "/* 0x04 */ SS_" + upper_name + "_4,\n" + \
        indent + "/* 0x05 */ SS_" + upper_name + "_5,\n" + \
        indent + "/* 0x06 */ SS_" + upper_name + "_6,\n" + \
        indent + "/* 0x07 */ SS_" + upper_name + "_7,\n" + \
        indent + "/* 0x08 */ SS_" + upper_name + "_8,\n" + \
        indent + "/* 0x09 */ SS_" + upper_name + "_9,\n" + \
        indent + "/* 0x0A */ SS_" + upper_name + "_A,\n" + \
        indent + "/* 0x0B */ SS_" + upper_name + "_B,\n" + \
        indent + "/* 0x0C */ SS_" + upper_name + "_C,\n" + \
        "} " + "EffectSs" + short_name + "Regs;\n"

def bootstrap(ovl_path, ovl_text):
    path_split = ovl_path.split(os.path.sep)
    z_name = path_split[-1][:-2]
    ovl_name = path_split[-2]
    short_name = ovl_name[14:]
    init_vars_name = ovl_name[4:] + "_InitVars"

    top_comment = "/*\n * File: " + z_name + ".c" \
        "\n * Overlay: " + ovl_name + "\n * Description:\n */\n"
    header_include = "#include \"" + z_name + ".h\"\n"
    regs_enum = get_regs_enum(short_name)

    with open(os.path.join(data_dir, z_name + ".data.s")) as f:
        data_text = f.read()

    pattern = re.compile("glabel " + init_vars_name +
                         "\n.word 0x........\n\.word func_........\n")
    init_data = pattern.search(data_text)
    if init_data is None or len(init_data.regs) == 0:
        return ""
    init_data = data_text[init_data.regs[0][0]:init_data.regs[0][1]]

    lines = init_data.split("\n")

    effect_id = int(lines[1][6:], 16)
    init_func = lines[2][6:]

    ovl_shortened = ovl_name.replace("ovl", "").replace("_", "")
    init_func_name = ovl_shortened + "_Init"

    ovl_text = ovl_text.replace(init_func, init_func_name)
    to_rename.append((init_func, init_func_name))

    effect_id_name = effect_enum[effect_id]

    struct_text = "/*\nEffectSsInit " + init_vars_name + \
        " = {\n" + indent + effect_id_name + \
        ",\n" + indent + init_func_name + ",\n};\n*/"

    decs = "u32 " + init_func_name + \
        "(PlayState* play, u32 index, EffectSs* this, void* initParamsx);\n"
    decs += "void " + \
        init_func_name[:-4] + \
            "Draw(PlayState* play, u32 index, EffectSs* this);\n"
    decs += "void " + \
        init_func_name[:-4] + \
            "Update(PlayState* play, u32 index, EffectSs* this);\n"

    insert_pos = ovl_text.find("global.h>\n")

    return top_comment + "\n" + header_include + "\n" + regs_enum + "\n" + decs + "\n" + struct_text + "\n" + ovl_text[insert_pos + 10:]


def get_header(header_path):
    path_split = header_path.split(os.path.sep)
    ovl_name = path_split[-2]
    short_name = ovl_name[14:]
    init_vars_name = "".join(ovl_name[4:].split("_")) + "InitParams"

    ifndef = "#ifndef _Z_EFF_SS_" + short_name.upper() + "_H_\n" + \
             "#define _Z_EFF_SS_" + short_name.upper() + "_H_\n\n"

    includes = "#include <ultra64.h>\n#include <global.h>\n\n"

    struct = "typedef struct {\n" + \
        indent + "/* 0x00 */ Vec3f pos;\n" + \
        indent + "/* 0x0C */ Vec3f velocity;\n" + \
        indent + "/* 0x18 */ Vec3f accel;\n" + \
        "} " + init_vars_name + "; // size = 0x\n\n#endif\n"

    return ifndef + includes + struct

def rename():
    # Filenames first
    for root, dirs, files in os.walk(root_dir):
        for file in files:
            for elem in to_rename:
                if elem[0] in file:
                    new_file = file.replace(elem[0], elem[1])
                    file_path = os.path.join(root, file)
                    new_file_path = os.path.join(root, new_file)
                    os.rename(file_path, new_file_path)

    # File contents
    for root, dirs, files in os.walk(root_dir):
        for file in files:
            if file.endswith(".c") or file.endswith(".s"):
                file_path = os.path.join(root, file)
                with open(file_path) as f:
                    file_text = f.read()
                new_file_text = file_text
                for elem in to_rename:
                    # if "func_" in elem[0]:
                    #     new_file_text = new_file_text.replace("glabel " + elem[0], elem[1] + ":")
                    new_file_text = new_file_text.replace(elem[0], elem[1])
                if new_file_text != file_text:
                    with open(file_path, "w", newline="\n") as f:
                        f.write(new_file_text)

def main():
    for root, dirs, files in os.walk(src_dir):
        for file in files:
            if file.endswith(".c"):
                file_path = os.path.join(root, file)
                with open(file_path) as f:
                    file_text = f.read()
                brace_count = file_text.count("{")
                if brace_count == 0:
                    if "dead" in file_path:
                        dog = 5
                    header_path = file_path[:-1] + "h"
                    c_text = bootstrap(file_path, file_text)
                    header_text = get_header(header_path)
                    with open(file_path, "w", newline="\n") as f:
                        f.write(c_text)
                    with open(header_path, "w", newline="\n") as f:
                        f.write(header_text)
    rename()

main()
