#!/usr/bin/python3

import os
import re
import shutil
import subprocess

atom_path = "/mnt/c/Users/Ethan/Documents/GitHub/MasterOcarina/Atom/bin/Release/netcoreapp3.0"
atom_cmd = "Atom df oot DBGMQ baserom.z64 --mips-to-c -f"
script_dir = os.path.dirname(os.path.realpath(__file__))


def load_symbols():
    ret = {}
    with open(script_dir + "/overlayhelpers/batchdisasm/symbols.txt") as f:
        symbol_text = f.readlines()
    for line in symbol_text:
        if len(line.strip()) > 0:
            line_split = line.split(" ")
            ret[line_split[0]] = line_split[1]
    return ret


symbols = load_symbols()


def get_overlays_to_disassemble():
    all_overlays = {}

    # traverse root directory, and list directories as dirs and files as files
    for root, dirs, files in os.walk("baserom"):
        for file in files:
            if file.startswith("ovl_"):
                all_overlays[file] = os.path.getsize(os.path.join(root, file))

    non_disassembled_ovls = all_overlays.copy()

    for root, dirs, files in os.walk("asm/overlays"):
        for ovl_name in dirs:
            if ovl_name in non_disassembled_ovls:
                non_disassembled_ovls.pop(ovl_name)

    for root, dirs, files in os.walk("src/overlays"):
        for ovl_name in dirs:
            if ovl_name in non_disassembled_ovls:
                non_disassembled_ovls.pop(ovl_name)

    print("Found " + str(len(non_disassembled_ovls)) + " non-disassembled overlays out of " + str(len(all_overlays))
          + " total")

    return {k: v for k, v in sorted(non_disassembled_ovls.items(), key=lambda item: item[1])}


def disassemble(overlay):
    args = atom_cmd.split(" ")
    args.append(overlay)
    # subprocess.run(args, cwd=atom_path, shell=True)

    with open(atom_path + "/O/DBGMQ/" + overlay + ".txt") as f:
        return f.read()


def fix_symbols(assembly):
    for symbol in symbols:
        assembly = assembly.replace(symbol, symbols[symbol])
    return assembly


def get_ovl_dir(overlay):
    actors_overrides = ['ovl_player_actor']

    ovl_part = "/" + overlay + "/"
    category = "actors"

    if overlay.startswith("ovl_Effect"):
        category = "effects"

    if overlay[4:5].islower():
        category = "gamestates"

    if 'data' in overlay:
        category = "data"

    if overlay in actors_overrides:
        category = "actors"

    return category + ovl_part


def create_asm_dir(overlay, assembly):
    asm_dir = "asm/non_matchings/overlays/" + get_ovl_dir(overlay)
    shutil.rmtree(asm_dir)
    os.mkdir(asm_dir)
    with open(asm_dir + get_z_name(overlay) + ".s", "w", newline="\n") as f:
        f.write(assembly)


def get_z_name(overlay):
    # Annoying edge case
    if overlay == 'ovl_Effect_Ss_Solder_Srch_Ball':
        return 'z_eff_ss_solder_srch_ball'
    if overlay == "ovl_player_actor":
        return "z_player"

    ret = overlay.lower()
    ret = "z_" + ret[4:]
    return ret


def patch_spec(overlay):
    with open("spec", "r+", newline="\n") as f:
        spec = f.read()
        spec = re.sub("build/baserom/" + overlay + ".o",
                      "build/asm/overlays/" + get_ovl_dir(overlay) + get_z_name(overlay) + ".o",
                      spec)
        f.seek(0)
        f.write(spec)
        f.truncate()


def patch_overlays_asm_mk(overlay):
    with open("overlays_asm.mk", "a", newline="\n") as f:
        f.write("    asm/overlays/" + get_ovl_dir(overlay)[:-1] + " \\\n")


def main():
    print("Beginning disassembly in the order of filesize, ascending")
    overlays = get_overlays_to_disassemble()

    for overlay in overlays:
        print("\t" + overlay)
        assembly = disassemble(overlay)
        assembly = fix_symbols(assembly)
        create_asm_dir(overlay, assembly)
        patch_spec(overlay)
        patch_overlays_asm_mk(overlay)
