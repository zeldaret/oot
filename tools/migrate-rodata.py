"""
Given a code file name (excluding the file extension, e.g. z_view) this script
will attempt to build rodata and late_rodata sections for all of its functions.

Supports overlays and other files as long as the rodata file is formatted
correctly(see files in code for examples of properly formatted rodata sections)

This supports automatically commenting or deleting the rodata file from the
spec and automatic deletion of the rodata file itself (only use if you are sure
it will build afterwards)

Has trouble with rodata that goes unused, and .incbin placement
"""

import re
import os
from os import system, listdir, remove, walk
from os.path import exists, isdir, sep

# FUNCTIONS -----------------------------------------------------------------

"""
Extracts rodata symbols from asm
"""
def asm_syms(asm):
    split = re.split("jtbl_|D_",asm)
    return [s.partition(")")[0] for s in split[1:len(split)]]

"""
Extracts rodata symbols from rodata
"""
def rodata_syms(rodata):
    split = re.split("glabel jtbl_|glabel D_",rodata)
    return [s.partition("\n")[0] for s in split[1:len(split)]]

"""
Extracts the symbol from a single rodata block
"""
def rodata_sym(rodata_block):
    return (re.split("glabel jtbl_|glabel D_",rodata_block)[1]).split("\n")[0]

"""
Splits rodata into blocks
"""
def rodata_blocks(rodata):
    split = rodata.split("glabel")
    return ["glabel" + b for b in split[1:len(split)]]

"""
Gets the block size
"""
def rodata_block_size(rodata):
    split = rodata.split("    .")
    elements = split[1:len(split)]
    size = 0
    for e in elements:
        element_type = e.split(" ")[0]
        if element_type == "double":
            size += 8
        if element_type == "float":
            size += 4
        if element_type == "word":
            size += 4
        if element_type == "incbin":
            size += int(e.rpartition(", ")[2].split("\n")[0],16)
        if element_type == "ascii":
            size += len(e.split("\"")[1].split("\"")[0])
        if element_type == "asciz":
            size += len(e.split("\"")[1].split("\"")[0])
        if element_type == "balign":
            size += size % int(e.split(" ")[1])
    return size

"""
Gets the text size
"""
def text_size(asm):
    instructions = [l for l in asm.split("\n") if l.startswith("/* ")]
    return 4*(len(instructions)-1)

"""
Gets the rodata-to-text ratio
"""
def late_rodata_ratio(asm,late_rodata_blocks):
    total_rodata_size = 0
    for b in late_rodata_blocks:
        total_rodata_size += rodata_block_size(b)
    return total_rodata_size/text_size(asm)

"""
Accepts a single block of rodata and extracts the type
"""
def rodata_type(rodata_block):
    first_split = re.split("\s+\.", rodata_block)
    return first_split[1].split(" ")[0]

"""
Checks if a block should go in .rdata or .late_rodata
"""
def is_rodata(r):
    return (rodata_type(r)=="asciz" or rodata_type=="ascii")

"""
For given asm and rodata files, build a rodata section for the asm file
"""
def build_rodata(asm, rodata):
    contained_syms = [s for s in asm_syms(asm) if s in rodata_syms(rodata)]
    contained_blocks = [b for b in rodata_blocks(rodata) if rodata_sym(b) in contained_syms]
    # TODO include arrays in rodata_list
    rodata_list = [r for r in contained_blocks if is_rodata(r)]
    return_str = ""
    if (len(rodata_list)!=0):
        return_str += ".rdata\n"
        for r in rodata_list:
            return_str += r
    late_rodata_list = [r for r in contained_blocks if r not in rodata_list]
    if (len(late_rodata_list)!=0):
        if late_rodata_ratio(asm,late_rodata_list) > (1/3):
            top_sym = rodata_sym(late_rodata_list[0])
            if top_sym.endswith("0") or top_sym.endswith("8"):
                return_str += ".late_rodata\n.late_rodata_alignment 8\n"
            elif top_sym.endswith("4") or top_sym.endswith("C"):
                return_str += ".late_rodata\n.late_rodata_alignment 4\n"
        else:
            return_str += ".late_rodata\n"
        for r in late_rodata_list:
            return_str += r
    return None if return_str=="" else return_str + ("" if return_str.endswith("\n\n") else "\n") + ".text\n"

"""
Gets all file paths contained in a given folder, does not enter subfolders
"""
def get_file_paths(folder_path):
    return next(walk(folder_path),(None,None,[]))[2]

"""
Given a path, reads the asm .s file into a single string
"""
def file_read(path):
   with open(path, 'r', encoding="utf-8") as infile:
       return infile.read()

"""
Writes the rodata section to the start of the file specified by path
"""
def rodata_write(path, section):
    with open(path, 'r+', encoding="utf-8", newline="\n") as outfile:
        original = outfile.read()
        outfile.seek(0,0)
        outfile.write(str(section) + original)

"""
Comments out the line in spec associated with the given filenames
"""
def modify_spec(filenames, identifier, delete):
    lines = ""
    with open("spec", 'r+', encoding="utf-8", newline="\n") as spec:
        lines = spec.read().split("\n")
    changed = False
    files = filenames.split(",")
    for filename in files:
        eff_filename = filename.lower().replace("effect_", "eff_")
        if identifier == "code" and "    include \"build/data/" + filename + ".rodata.o\"" in lines:
            e = lines.index("    include \"build/data/" + filename + ".rodata.o\"")
            if delete:
                del lines[e]
            else:
               lines[e] = "    //include \"build/data/" + filename + ".rodata.o\""
            changed = True
        elif "    include \"build/data/overlays/" + identifier + "/z_" + eff_filename + ".rodata.o\"" in lines:
            e = lines.index("    include \"build/data/overlays/" + identifier + "/z_" + eff_filename + ".rodata.o\"")
            if delete:
                del lines[e]
            else:
                lines[e] = "    //include \"build/data/overlays/" + identifier + "/z_" + eff_filename + ".rodata.o\""
            changed = True
    if changed:
        modified = "\n".join(lines)
        with open("spec", 'w', encoding="utf-8", newline="\n") as spec:
            #spec.seek(0,0)
            spec.write(modified)

"""
Processes each individual file
 asm\non_matchings\overlays\<identifier>
 data\overlays\<identifier>
 asm\non_matchings\code\
 data\code\
"""
def process_file(filename, identifier, delete_rodata):
    folder_path = "asm" + sep + "non_matchings" + sep + ("code" + sep if identifier=="code" else "overlays" + sep + identifier.lower() + sep + "ovl_") + filename + sep
    rodata_path = "data" + sep + (sep if identifier=="code" else "overlays" + sep + identifier.lower() + sep + "z_") + filename.lower() + ".rodata.s"
    if filename == "player":
        folder_path = "asm" + sep + "non_matchings" + sep + "overlays" + sep + "actors" + sep + "ovl_player_actor" + sep
    rodata_path = rodata_path.replace("effect_", "eff_")
    print("ASM at: " + folder_path)
    print("Data at: " + rodata_path)
    if not exists(folder_path):
        print("Aborting: ASM does not exist")
        return
    if not exists(rodata_path):
        print("Aborting: Data does not exist")
        return
    files = [folder_path + f for f in get_file_paths(folder_path)]
    for asm_file in files:
        asm = file_read(asm_file)
        print("Found asm file " + asm_file)
        if ".rdata" in asm:
            print("Skipping: it already has a rodata section")
            continue
        print("Processing asm file " + asm_file)
        section = build_rodata(asm, file_read(rodata_path))
        if section is not None:
            print("Writing asm file " + asm_file)
            rodata_write(asm_file, section)
        else: print("Skipping: no rodata to write")
    print("Built rodata sections for " + identifier + " file " + filename)
    if delete_rodata:
        remove(rodata_path)
        print("Deleted rodata at " + rodata_path)

"""
Allows files to be provided as comma-separated filenames for batch migration
"""
def process_files(filenames, identifier, spechandle, delete_rodata):
    if "," in filenames:
        files = filenames.split(",")
        for f in files:
            process_file(f, identifier, delete_rodata)
    else:
        process_file(filenames, identifier, delete_rodata)
    if spechandle.lower() == "delete":
        modify_spec(filenames, identifier, True)
        print("Deleted rodata for files in spec")
    elif spechandle.lower() == "comment":
        result = modify_spec(filenames, identifier, False)
        if result:
            print("Commented out rodata for files in spec")

"""
Asks what to do about spec and rodata, converts 'all' to comma-separated filenames
"""
def check_spec_rodata(filenames, identifier):
    spechandle = input("Delete, Comment or Leave spec? ")
    delete_rodata = input("Delete rodata file(s)? (Y/N) ")
    if filenames == "all" or "all|" in filenames:
        to_remove_list = []
        if "all|" in filenames:
            print("all| in filenames")
            to_remove_list = filenames.split("|")[1]
        basedir = "asm" + sep + "non_matchings" + sep + ("code" if identifier=="code" else "overlays" + sep + identifier.lower()) + sep
        folder_names = [name.replace("ovl_","") for name in listdir(basedir) if isdir(basedir + name) and name not in to_remove_list]
        filenames = ",".join(map(str, folder_names))
        print(filenames)
    process_files(filenames, identifier, spechandle, delete_rodata == "Y")

"""
Main execution
"""
def run(show_help):
    if(show_help):
        print("""Usage: Enter 'Code' or 'Overlay' and follow the instructions.
Batch migrate files by entering comma-separated filenames instead of a single filename.
Migrate all files by entering 'all' for filenames. Exclude files from all with all| followed by comma-separated filenames Use at your own risk.
Enter 'q' to the code or overlay question to quit.""")
    code_or_overlay = input("Code or Overlay? ")
    if(code_or_overlay == "q"):
        return
    if(code_or_overlay == "Code"):
        filename = input("Enter the code file name(s) (excluding .c) or all: ")
        check_spec_rodata(filename, "code")
    elif(code_or_overlay == "Overlay"):
        overlay_type = input("Actor, Effect or Gamestate? ")
        if(overlay_type == "Actor"):
            filename = input("Enter the actor name(s) (excluding ovl_ or z_, ex. obj_bombiwa) or all: ")
            check_spec_rodata(filename, "actors")
        elif(overlay_type == "Effect"):
            filename = input("Enter the effect name(s) (excluding ovl_ or z_, ex. effect_ss_bomb) or all: ")
            check_spec_rodata(filename, "effects")
        elif(overlay_type == "Gamestate"):
            filename = input("Enter the gamestate name(s) (excluding ovl_ or z_, ex. kaleido_scope) or all: ")
            check_spec_rodata(filename, "gamestates")
    run(True)

# PROGRAM -------------------------------------------------------------------

run(False)
#bigs = ["Boss_Ganon", "Boss_Ganondrof","En_Wf", "Door_Warp1",]
#ovls = ["En_Elf"]
#effects = [x[0] for x in os.walk("src/overlays/effects")][1:]

#for i, ovl in enumerate(effects):
#    process_files(ovl.split("/")[-1][4:], "effects", "Delete", True)
    # command = "echo >> src/overlays/effects/ovl_" + effects[i] + "/z_" + effects[i].lower() + ".c"
    # os.system(command) # purpose of this is to "modify" each C file in order to prevent undefined symbol errors.
    #                    # the new line will be removed by format.sh
