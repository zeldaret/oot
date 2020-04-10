"""
Given a code file name (excluding the file extension, e.g. z_view) this script
will attempt to build rodata and late_rodata sections for all of its functions.

This supports overlays to an extent but before running it for any check to
ensure the rodata file is formatted correctly (see files in code for examples
of properly formatted rodata sections)

This supports automatically commenting or deleting the rodata file from the
spec and automatic deletion of the rodata file itself (only use if you are sure
it will build afterwards)

Place this in the root of your project (same folder as the makefile) and run.

Not sure if this works well with .incbin if that can even be found in rodata
"""

import re
from os import listdir, remove, walk
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
Gets the rodata-to-text 
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
    if rodata_type(r)=="asciz" or rodata_type=="ascii":
        return True
    if rodata_type(r)=="incbin":
        return True
    return False

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
        if identifier == "code" and "    include \"build/data/" + filename + ".rodata.o\"" in lines:
            e = lines.index("    include \"build/data/" + filename + ".rodata.o\"")
            if delete:
                del lines[e]
            else:
               lines[e] = "    //include \"build/data/" + filename + ".rodata.o\""
            changed = True
        elif "    include \"build/data/overlays/" + identifier + "/z_" + filename.lower() + ".rodata.o\"" in lines:
            e = lines.index("    include \"build/data/overlays/" + identifier + "/z_" + filename.lower() + ".rodata.o\"")
            if delete:
                del lines[e]
            else:
                lines[e] = "    //include \"build/data/overlays/" + identifier + "/z_" + filename.lower() + ".rodata.o\""
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

#run(False)
bigs = ["Boss_Ganon", "Boss_Ganondrof","En_Wf", "Door_Warp1",]
ovls = [ "Door_Gerudo", "En_Sth", "En_Yabusame_Mark", "Bg_Ydan_Hasi", "Bg_Menkuri_Eye", "Demo_Kankyo", "En_Zl2", "En_Hintnuts", "En_Anubice", "En_Heishi4", "En_Wonder_Talk2", "Bg_Haka_Zou", "En_Takara_Man", "En_Horse", "Demo_Go", "Bg_Hidan_Hrock", "En_Bom_Bowl_Pit", "Bg_Spot11_Bakudankabe", "Bg_Ice_Turara", "En_Wood02", "Obj_Hana", "Bg_Po_Syokudai", "En_Clear_Tag", "Bg_Mori_Hashigo", "Bg_Hidan_Kousi", "En_Trap", "Bg_Spot17_Bakudankabe", "Bg_Spot18_Basket", "Bg_Hidan_Sima", "Bg_Relay_Objects", "En_Firefly", "En_Dha", "Bg_Jya_Goroiwa", "Arrow_Light", "Obj_Tsubo", "Bg_Spot01_Objects2", "En_Js", "En_Horse_Normal", "Bg_Mori_Hineri", "En_Owl", "Bg_Spot18_Shutter", "Bg_Jya_Bombchuiwa", "En_Daiku_Kakariko", "En_Okuta", "En_Niw_Lady", "En_Dnt_Jiji", "En_Kakasi", "Bg_Bdan_Objects", "Bg_Jya_Bigmirror", "En_Goroiwa", "En_Skj", "Bg_Haka_Huta", "En_Heishi2", "En_Fish", "Bg_Gnd_Soulmeiro", "Bg_Treemouth", "En_Syateki_Niw", "En_GeldB", "Magic_Wind", "En_Fu", "Bg_Hidan_Firewall", "Bg_Hidan_Rsekizou", "En_Bili", "En_Toryo", "Bg_Haka_Ship", "En_Mu", "Bg_Jya_Kanaami", "En_Nb", "Bg_Spot01_Idohashira", "En_Gs", "Oceff_Wipe4", "En_Dekunuts", "En_Wonder_Item", "Bg_Spot07_Taki", "Boss_Sst", "Bg_Spot08_Iceblock", "En_Bom", "En_Ani", "En_Zl1", "En_Po_Field", "En_Encount2", "En_Ik", "Demo_Ext", "En_Eiyer", "En_Tg", "En_Test", "En_Tite", "En_Mk", "En_Yukabyun", "En_Crow", "Bg_Hidan_Fslift", "En_Ma2", "En_Weather_Tag", "Bg_Heavy_Block", "En_In", "Bg_Mizu_Shutter", "En_Fhg_Fire", "Bg_Ice_Shutter", "Bg_Mizu_Water", "Obj_Kibako", "Boss_Ganon2", "En_Fz", "En_Fr", "Bg_Ddan_Kd", "Demo_Effect", "Bg_Spot16_Bombstone", "En_Bx", "Bg_Po_Event", "En_Gm", "Bg_Spot02_Objects", "En_Bigokuta", "En_Sw", "Bg_Jya_Ironobj", "En_Bombf", "En_Fw", "Bg_Gnd_Firemeiro", "Fishing", "Bg_Jya_Bombiwa", "En_Encount1", "En_Ko", "En_Skjneedle", "En_Ossan", "En_Blkobj", "Boss_Goma", "En_Butte", "En_Fire_Rock", "En_Door", "En_Hata", "Eff_Dust", "Object_Kankyo", "En_Xc", "En_Bb", "En_Fd", "Demo_Du", "En_Karebaba", "En_Heishi1", "Bg_Ganon_Otyuka", "En_Kanban", "Bg_Breakwall", "Bg_Dy_Yoseizo", "En_Bdfire", "Demo_Ec", "Item_B_Heart", "Bg_Spot15_Saku", "En_Mb", "En_M_Thunder", "En_Horse_Game_Check", "En_Part", "Bg_Spot18_Obj", "En_Kusa", "En_Elf", "En_Horse_Ganon", "En_Dekubaba", "Obj_Lightswitch", "En_Changer", "En_Gb", "Bg_Sst_Floor", "Bg_Ingate", "End_Title", "En_Md", "En_Dodojr", "Bg_Ydan_Sp", "En_Shopnuts", "En_Nwc", "En_Peehat", "Bg_Hidan_Sekizou", "En_Syateki_Itm", "En_River_Sound", "Bg_Spot08_Bakudankabe", "En_Vm", "En_Bom_Chu", "Obj_Lift", "Arrow_Ice", "Bg_Haka_Megane", "Bg_Mori_Kaitenkabe", "En_Box", "En_Bw", "En_Viewer", "Obj_Warp2block", "Bg_Jya_Lift", "Bg_Bombwall", "Oceff_Spot", "En_Ma1", "Bg_Spot00_Hanebasi", "En_Ex_Ruppy", "En_Weiyer", "Bg_Haka", "En_Jj", "En_Du", "En_Vb_Ball", "Bg_Mori_Bigst", "En_Arrow", "Bg_Toki_Hikari", "En_Goma", "Magic_Dark", "Bg_Haka_Gate", "En_Ice_Hono", "En_Rl", "En_Rr", "En_Zl3", "Obj_Bean", "En_Hs2", "En_Rd", "Magic_Fire", "En_Skb", "En_Ge2", "Bg_Ydan_Maruta", "En_Mm2", "En_St", "Obj_Mure3", "En_Ru1", "En_Zo", "Boss_Fd2", "kaleido_scope", "En_Kakasi3", "Mir_Ray", "Obj_Timeblock", "Boss_Tw", "En_Tubo_Trap", "En_Go", "Bg_Ddan_Jd", "En_Dh", "En_Hy", "En_Dy_Extra", "En_Insect", "Obj_Switch", "En_Sb", "En_Cs", "Bg_Jya_Cobra", "Obj_Mure", "Bg_Haka_Trap", "En_Reeba", "En_Ssh", "En_Kakasi2", "En_Po_Sisters", "En_Ganon_Mant", "En_Horse_Link_Child", "Efc_Erupc", "Bg_Mori_Rakkatenjo", "Bg_Mori_Elevator", "Boss_Va", "En_Sda", "Bg_Jya_Haheniron", "En_Dnt_Nomal", "En_Guest", "Bg_Gnd_Iceblock", "Item_Shield", "En_Kz", "En_Hs", "Bg_Haka_MeganeBG", "Bg_Vb_Sima", "Demo_Shd", "En_Anubice_Fire", "En_Syateki_Man", "Bg_Spot06_Objects", "En_Floormas", "En_Niw_Girl", "En_Zl4", "Bg_Hidan_Fwbig", "En_Brob", "Bg_Jya_Megami", "En_Wall_Tubo", "En_Dns", "Bg_Haka_Water", "Bg_Haka_Sgami", "Demo_Kekkai", "Bg_Mori_Hashira4", "Bg_Spot03_Taki", "Demo_Ik", "En_Ishi", "Obj_Makeoshihiki", "Item_Etcetera", "En_Go2", "En_Po_Desert", "Bg_Dodoago", "En_Ny", "En_Sa", "En_Heishi3", "En_Tr", "Obj_Hamishi", "En_Ge1", "En_Am", "En_Niw", "En_G_Switch", "En_Vali", "Oceff_Storm", "Oceff_Wipe3", "En_Ta", "Bg_Spot15_Rrbox", "Demo_Tre_Lgt", "Obj_Oshihiki", "En_Siofuki", "Bg_Hidan_Dalm", "Shot_Sun", "Oceff_Wipe2", "Obj_Dekujr", "Item_Ocarina", "En_Stream", "En_Ba", "player_actor", "Bg_Haka_Tubo", "Demo_6K", "En_Ex_Item", "Bg_Jya_Block", "En_Si", "Door_Shutter", "Bg_Hidan_Curtain", "En_Bubble", "Bg_Jya_Zurerukabe", "En_Dnt_Demo", "Demo_Gt", "Obj_Ice_Poly", "Boss_Dodongo", "Oceff_Wipe", "En_Ge3", "Elf_Msg2", "Obj_Mure2", "En_Daiku", "En_Fd_Fire", "En_Diving_Game", "En_GirlA"]

for i, ovl in enumerate(ovls):
    if i == 1:
        break
    process_files(ovl, "actors", "Delete", True)