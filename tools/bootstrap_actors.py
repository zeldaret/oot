#!/usr/bin/python3

import os
import sys
import re
from disassemble import get_z_name

script_dir = os.path.dirname(os.path.realpath(__file__))
root_dir = script_dir + "/../"
data_dir = root_dir + "data/overlays/actors"
asm_dir = root_dir + "asm/non_matchings/overlays/actors"
src_dir = root_dir + "src/overlays/actors"
include_dir = root_dir + "include"
indent = "    "

to_rename = []

with open(os.path.join(include_dir, "z64actor.h")) as f:
    z64actor_text = f.read()

with open(os.path.join(include_dir, "z64object.h")) as f:
    z64object_text = f.read()


def get_actor_id_name(actor_id):
    matches = re.findall(actor_id + " .*\n", z64actor_text)
    if len(matches) == 0:
        return "0x" + actor_id
    match = matches[-1]
    match = match.replace(",", "").strip().split(" ")[-1]
    return match


def get_actor_type_name(actor_type):
    matches = re.findall(actor_type + " .*\n", z64actor_text)
    for m in matches:
        if "ACTORCAT" in m:
            match = m.replace(",", "").strip().split(" ")[-1]
            return match
    return "0x" + actor_type


def get_object_id_name(object_id):
    matches = re.findall(object_id + " .*\n", z64object_text)
    if len(matches) == 0:
        return "0x" + object_id
    match = matches[-1]
    match = match.replace(",", "").strip().split(" ")[-1]
    return match


def create_struct(name, size):
    ret = "typedef struct\n{\n" + indent + "/* 0x0000 */ Actor actor;\n"
    leftover = int(size, 16) - int("0x14C", 16)
    if leftover > 0:
        ret += indent + "/* 0x014C */ char unk_14C[0x" + hex(leftover).upper()[2:] + "];\n"
    ret += "} " + name + "; // size = 0x" + size + "\n"
    return ret


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


def bootstrap(ovl_path, ovl_text):
    path_split = ovl_path.split(os.path.sep)
    z_name = path_split[-1][:-2]
    ovl_name = path_split[-2]
    init_vars_name = ovl_name[4:] + "_InitVars"

    with open(os.path.join(data_dir, z_name + ".data.s")) as f:
        data_text = f.read()

    pattern = re.compile("glabel D_........\n .word 0x........, 0x........, 0x........, 0x........\n(\.word func_........\n|\.word 0x00000000\n|\.word Actor_Noop\n){4}")
    init_data = pattern.search(data_text)
    if init_data is None or len(init_data.regs) == 0:
        return ""
    init_data = data_text[init_data.regs[0][0]:init_data.regs[0][1]]

    lines = init_data.split("\n")

    init_var_label = lines[0][7:]
    init_func = lines[2][6:]
    destroy_func = lines[3][6:]
    update_func = lines[4][6:]
    draw_func = lines[5][6:]

    ovl_shortened = ovl_name.replace("ovl", "").replace("_", "")
    init_func_name = ovl_shortened + "_Init"
    destroy_func_name = ovl_shortened + "_Destroy"
    update_func_name = ovl_shortened + "_Update"
    draw_func_name = ovl_shortened + "_Draw"

    to_rename.append((init_var_label, init_vars_name))
    if init_func != "0x00000000" and init_func != "Actor_Noop":
        to_rename.append((init_func, init_func_name))
    if destroy_func != "0x00000000" and destroy_func != "Actor_Noop":
        to_rename.append((destroy_func, destroy_func_name))
    if update_func != "0x00000000" and update_func != "Actor_Noop":
        to_rename.append((update_func, update_func_name))
    if draw_func != "0x00000000" and draw_func != "Actor_Noop":
        to_rename.append((draw_func, draw_func_name))

    init_var_data = lines[1]
    init_data = init_var_data[7:53].replace("0x", "").split(", ")
    actor_id = init_data[0][0:4]
    actor_type = init_data[0][4:6]
    room = init_data[0][6:8]
    flags = init_data[1]
    object_id = init_data[2][0:4]
    struct_size = init_data[3][4:8]

    actor_id_name = get_actor_id_name(actor_id)
    actor_type_name = get_actor_type_name(actor_type)
    object_id_name = get_object_id_name(object_id)

    struct_name = ovl_shortened

    struct_text = create_struct(struct_name, struct_size)

    defines = "#define ROOM  0x" + room + "\n#define FLAGS 0x" + flags + "\n"

    decs = ""
    if init_func != "0x00000000" and init_func != "Actor_Noop":
        decs += "void " + init_func_name + "(" + struct_name + "* this, PlayState* play);\n"
    if destroy_func != "0x00000000" and destroy_func != "Actor_Noop":
        decs += "void " + destroy_func_name + "(" + struct_name + "* this, PlayState* play);\n"
    if update_func != "0x00000000" and update_func != "Actor_Noop":
        decs += "void " + update_func_name + "(" + struct_name + "* this, PlayState* play);\n"
    if draw_func != "0x00000000" and draw_func != "Actor_Noop":
        decs += "void " + draw_func_name + "(" + struct_name + "* this, PlayState* play);\n"

    init_vars = "ActorInit " + init_vars_name + " =\n{\n"
    init_vars += indent + actor_id_name + ",\n"
    init_vars += indent + actor_type_name + ",\n"
    init_vars += indent + "ROOM,\n" + indent + "FLAGS,\n"
    init_vars += indent + object_id_name + ",\n"
    init_vars += indent + "sizeof(" + struct_name + "),\n"

    if init_func == "0x00000000":
        init_vars += indent + "NULL,\n"
    elif init_func == "Actor_Noop":
        init_vars += indent + "(ActorFunc)Actor_Noop,\n"
    else:
        init_vars += indent + "(ActorFunc)" + init_func_name + ",\n"

    if destroy_func == "0x00000000":
        init_vars += indent + "NULL,\n"
    elif destroy_func == "Actor_Noop":
        init_vars += indent + "(ActorFunc)Actor_Noop,\n"
    else:
        init_vars += indent + "(ActorFunc)" + destroy_func_name + ",\n"

    if update_func == "0x00000000":
        init_vars += indent + "NULL,\n"
    elif update_func == "Actor_Noop":
        init_vars += indent + "(ActorFunc)Actor_Noop,\n"
    else:
        init_vars += indent + "(ActorFunc)" + update_func_name + ",\n"

    if draw_func == "0x00000000":
        init_vars += indent + "NULL,\n"
    elif draw_func == "Actor_Noop":
        init_vars += indent + "(ActorFunc)Actor_Noop,\n"
    else:
        init_vars += indent + "(ActorFunc)" + draw_func_name + ",\n"

    init_vars += "};\n"

    return struct_text + "\n" + defines + "\n" + decs + "\n/*\n" + init_vars + "*/"


def main():
    for root, dirs, files in os.walk(src_dir):
        for file in files:
            if file.endswith(".c"):
                file_path = os.path.join(root, file)
                with open(file_path) as f:
                    file_text = f.read()
                brace_count = file_text.count("{")
                if brace_count == 0:
                    bootstrap_text = bootstrap(file_path, file_text)
                    if bootstrap_text != "":
                        newline_spot = file_text.find("\n\n") + 1
                        newfile_text = file_text[:newline_spot] + "\n" + bootstrap_text + file_text[newline_spot:]
                        newfile_text = newfile_text.replace("\n\n\n\n\n", "\n")

                        with open(file_path, "w", newline="\n") as f:
                            f.write(newfile_text)
                    else:
                        dog = 5
    rename()

main()
