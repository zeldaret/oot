#!/usr/bin/env python3

"""
message data static disassembler/decompiler
"""

import re
from os import path

"""
Regex notes

Match " but not \":  r"(?<!\\)\""
Match string literals including quotations:  r"([\"'`])(?:[\s\S])*?(?:(?<!\\)\1)"

"""

baserom = "baserom.z64"
baserom_folder = "baserom/"

# message entry tables
message_entry_table_addr = 0x00BC24C0
german_message_entry_table_addr = 0x00BC66E8
french_message_entry_table_addr = 0x00BC87F8
staff_message_entry_table_addr = 0x00BCA908
message_entry_tables_end_addr = 0x00BCAA90


#message_data_static_size = 0x00973F44 - 0x00973000 # TODO remove
staff_message_data_static_size = path.getsize(baserom_folder + "staff_message_data_static")

message_entry_table = {}
german_message_entry_table = []
french_message_entry_table = []
staff_message_entry_table = []


textbox_type = {
    0: "BOX_BLACK",
    1: "BOX_WOODEN",
    2: "BOX_BLUE",
    3: "BOX_OCARINA",
    4: "BOX_NONE_BOTTOM",
    5: "BOX_NONE_NO_SHADOW",
    0xB: "BOX_CREDITS",
}

textbox_ypos = {
    0: "POS_VARIABLE",
    1: "POS_TOP",
    2: "POS_BOTTOM",
    3: "POS_MIDDLE",
}

"""
Special characters conversion
"""
charmap = {
    0x7F: '‾',
    0x80: 'À',
    0x81: 'î',
    0x82: 'Â',
    0x83: 'Ä',
    0x84: 'Ç',
    0x85: 'È',
    0x86: 'É',
    0x87: 'Ê',
    0x88: 'Ë',
    0x89: 'Ï',
    0x8A: 'Ô',
    0x8B: 'Ö',
    0x8C: 'Ù',
    0x8D: 'Û',
    0x8E: 'Ü',
    0x8F: 'ß',
    0x90: 'à',
    0x91: 'á',
    0x92: 'â',
    0x93: 'ä',
    0x94: 'ç',
    0x95: 'è',
    0x96: 'é',
    0x97: 'ê',
    0x98: 'ë',
    0x99: 'ï',
    0x9A: 'ô',
    0x9B: 'ö',
    0x9C: 'ù',
    0x9D: 'û',
    0x9E: 'ü',
    0x9F: '[A]',
    0xA0: '[B]',
    0xA1: '[C]',
    0xA2: '[L]',
    0xA3: '[R]',
    0xA4: '[Z]',
    0xA5: '[C-Up]',
    0xA6: '[C-Down]',
    0xA7: '[C-Left]',
    0xA8: '[C-Right]',
    0xA9: '▼',
    0xAA: '[Control Stick]',
    0xAB: '[D-Pad]',
}

control_codes = {
    '\x01': "NEWLINE",
    '\x02': "END",
    '\x04': "BOX_BREAK",
    '\x05': "COLOR",
    '\x06': "SHIFT",
    '\x07': "TEXTID",
    '\x08': "QUICKTEXT_ENABLE",
    '\x09': "QUICKTEXT_DISABLE",
    '\x0A': "PERSISTENT",
    '\x0B': "EVENT",
    '\x0C': "BOX_BREAK_DELAYED",
    '\x0D': "AWAIT_BUTTON_PRESS",
    '\x0E': "FADE",
    '\x0F': "NAME",
    '\x10': "OCARINA",
    '\x11': "FADE2",
    '\x12': "SFX",
    '\x13': "ITEM_ICON",
    '\x14': "TEXT_SPEED",
    '\x15': "BACKGROUND",
    '\x16': "MARATHON_TIME",
    '\x17': "RACE_TIME",
    '\x18': "POINTS",
    '\x19': "TOKENS",
    '\x1A': "UNSKIPPABLE",
    '\x1B': "TWO_CHOICE",
    '\x1C': "THREE_CHOICE",
    '\x1D': "FISH_INFO",
    '\x1E': "HIGHSCORE",
    '\x1F': "TIME",
}

"""
Utility
"""

def pad_space(string, length):
    if len(string) < length:
        padded = " " + string
        if len(padded) == length:
            return padded
        else:
            return pad_space(padded, length)
    else:
        return string

def pad_b(string):
    return string.replace("0x","0x0") if len(string) < 4 else string

def pad_h(string):
    if len(string) < 6:
        padded = string.replace("0x","0x0")
        if len(padded) == 6:
            return padded
        else:
            return pad_h(padded)
    else:
        return string

def pad_w(string):
    if len(string) < 10:
        padded = string.replace("0x","0x0")
        if len(padded) == 10:
            return padded
        else:
            return pad_w(padded)
    else:
        return string

def format_hex(number, size):
    if size == 1:
        return pad_b(hex(number)).upper().replace("X","x")
    elif size == 2:
        return pad_h(hex(number)).upper().replace("X","x")
    elif size == 4:
        return pad_w(hex(number)).upper().replace("X","x")
    return hex(number).upper().replace("X","x")

def format_char(byte):
    return pad_b(hex(byte)).upper().replace("0X","\\x")

def balign4(byte_arr):
    if (len(byte_arr) % 4 != 0):
        return balign4(byte_arr + b"\x00")
    else:
        return byte_arr

def balign16(byte_arr):
    if (len(byte_arr) % 16 != 0):
        return balign16(byte_arr + b"\x00")
    else:
        return byte_arr

"""
ROM Reading
"""

def read_bytes(blob, offset, size):
    if (path.getsize(baserom) < offset + size):
        return None
    blob.seek(offset)
    return blob.read(size)

def as_hword_list(read_bytes):
    if len(read_bytes) % 2 != 0:
        return None
    return [int.from_bytes([read_bytes[i*2], read_bytes[i*2+1], 0, 0], byteorder="big") for i in range(0, int(len(read_bytes)/2))];

def as_word_list(read_bytes):
    if len(read_bytes) % 4 != 0:
        return None
    return [int.from_bytes([read_bytes[i*4], read_bytes[i*4+1], read_bytes[i*4+2], read_bytes[i*4+3]], byteorder="big") for i in range(0, int(len(read_bytes)/4))];

def as_message_table_entry(read_bytes):
    if len(read_bytes) % 8 != 0:
        return None
    return [(format_hex(int.from_bytes([read_bytes[i*8], read_bytes[i*8+1]], byteorder="big"),2), 
             format_hex((int.from_bytes([read_bytes[i*8+2]], byteorder="big")>>0x4)&0xF,0), 
             format_hex((int.from_bytes([read_bytes[i*8+2]], byteorder="big"))&0xF,0), 
             format_hex(int.from_bytes([read_bytes[i*8+4], read_bytes[i*8+5], read_bytes[i*8+6], read_bytes[i*8+7]], byteorder="big"),4))
            for i in range(0, int(len(read_bytes)/8))];

def segmented_to_physical(address):
    return address & ~0x07000000

"""
Encode and Decode Text
"""

def encode(string):
    string = string.replace("\n","[NEWLINE]")
    flip_charmap = dict((v,k) for k,v in charmap.items())
    flip_ctrl_codes = dict((v,k) for k,v in control_codes.items())
    original_string = string
    for key in flip_charmap.keys():
        if key in original_string:
            string = string.replace(key, bytes([flip_charmap[key]]).decode("raw_unicode_escape"))
    for found in re.findall(re.compile(r'\[(.*?)\]'), string):
        for name in list(flip_ctrl_codes.keys()):
            if name == found.split(" ")[0]: # remove args and compare names
                modifier = b''
                # single or multiple bytes
                if (name == "COLOR" or name == "SHIFT" or name == "BOX-BREAK-DELAYED" or 
                    name == "FADE" or name == "ICON" or name == "TEXT-SPEED" or
                    name == "HIGHSCORE" or name == "BACKGROUND"):
                    modifier =  bytes([int(i,16) for i in found.replace(name+" ","").split(",")])
                # single halfwords
                elif (name == "TEXTID" or name == "FADE2" or name == "SFX"):
                    modifier = struct.pack("!H",int(found.replace(name+" ",""),16))
                string = string.replace("[" + found + "]", flip_ctrl_codes[name] + modifier.decode("raw_unicode_escape"))
    return string.encode("latin1")

box_break_delayed = False

def decode(read_bytes):
    next_is_byte_mod = False
    next_is_hword_mod = 0
    next_is_background = 0

    buf = []
    for byte in read_bytes:
        if next_is_byte_mod:
            #buf.append(format_hex(byte,1) + ") \"")
            buf.append("\"" + format_char(byte) + "\") \"") # + ("\n" if box_break_delayed else "")
            next_is_byte_mod = False
            box_break_delayed = False
        elif next_is_hword_mod == 1:
            #buf.append(format_hex(byte,1))
            buf.append("\"" + format_char(byte))
            next_is_hword_mod = 2
        elif next_is_hword_mod == 2:
            #buf.append(format_hex(byte,1).replace("0x","") + ") \"")
            buf.append(format_char(byte) + "\") \"")
            next_is_hword_mod = 0
        elif next_is_background == 1:
            #buf.append(format_hex(byte,1) + ", ")
            buf.append("\"" + format_char(byte) + "\", ")
            next_is_background = 2
        elif next_is_background == 2:
            #buf.append(format_hex(byte,1) + ", ")
            buf.append("\"" + format_char(byte) + "\", ")
            next_is_background = 3
        elif next_is_background == 3:
            #buf.append(format_hex(byte,1) + ") \"")
            buf.append("\"" + format_char(byte) + "\") \"")
            next_is_background = 0
        else:
            for ctrl in list(control_codes.keys()):
                if byte == ord(ctrl):
                    name = control_codes[ctrl]
                    # single bytes
                    if (name == "COLOR" or name == "SHIFT" or name == "BOX_BREAK_DELAYED" or 
                        name == "FADE" or name == "ITEM_ICON" or name == "TEXT_SPEED" or
                        name == "HIGHSCORE"):
                        if name == "BOX_BREAK_DELAYED":
                            buf.append("\"" + name + "(")
                            box_break_delayed = True
                        else:
                            buf.append("\" " + name + "(")
                            box_break_delayed = False
                        next_is_byte_mod = True
                    # single halfwords
                    elif (name == "TEXTID" or name == "FADE2" or name == "SFX"):
                        buf.append("\" " + name + "(")
                        next_is_hword_mod = 1
                    # multiple bytes
                    elif (name == "BACKGROUND"):
                        buf.append("\" " + name + "(")
                        next_is_background = 1
                    elif (name == "BOX_BREAK"):
                        buf.append("\"" + name + "\"")
                    else:
                        if byte == 0x01: # real newlines
                            buf.append("\n")
                        elif byte == 0x02: # omit END ctrl code
                            buf.append("")
                        else:
                            buf.append("\" " + name + " \"")
                    break
            else:
                if byte in charmap:
                    buf.append(charmap[byte])
                else:
                    decoded = bytes([byte]).decode("ASCII")
                    if decoded == "\"":
                        decoded = "\\\""
                    buf.append(decoded)

    return "".join(buf)

"""
Message Entry Table Reader
"""
def read_tables():
    global message_entry_table
    global german_message_entry_table
    global french_message_entry_table
    global staff_message_entry_table

    with open(baserom, "rb") as romfile:
        message_entry_table = dict((int(e[0],16),int(e[3],16)) for e in as_message_table_entry(
                read_bytes(romfile, message_entry_table_addr, 
                           german_message_entry_table_addr - message_entry_table_addr)))
        german_message_entry_table = dict((list(message_entry_table.keys())[i],w) for i,w in enumerate(as_word_list(
                read_bytes(romfile, german_message_entry_table_addr, 
                           french_message_entry_table_addr - german_message_entry_table_addr)),0))
        french_message_entry_table = dict((list(message_entry_table.keys())[i],w) for i,w in enumerate(as_word_list(
                read_bytes(romfile, french_message_entry_table_addr, 
                           staff_message_entry_table_addr - french_message_entry_table_addr)),0))
        staff_message_entry_table = dict((int(e[0],16),int(e[3],16)) for e in as_message_table_entry(
                read_bytes(romfile, staff_message_entry_table_addr, 
                           message_entry_tables_end_addr - staff_message_entry_table_addr)))


doubles = re.compile(r"(?<!\\)(\"\")")

def cvt(m):
    return m.group(0).replace("\"\"","")

def build_message(textId, language, message):
    # TODO this is awful, fix this
    string = "DECLARE_MESSAGE_" + language.upper() + "(" + format_hex(textId,2) + ",\n"
    return string + re.sub(doubles, cvt, ("\"" + message.replace("\n","\\n\"\n\"") + "\"")).replace("\n ","\n").replace("BOX_BREAK ","BOX_BREAK\n").strip() + "\n);"

def append_last(textId, language):
    return "DECLARE_MESSAGE_" + language.upper() + "(" + format_hex(textId,2) + ",\n" + "\"\"\n);"

def build_message_ref(textId, staff):
    return ("DECLARE_MESSAGE_REF_STAFF" if staff else "DECLARE_MESSAGE_REFS") + "(" + format_hex(textId,2) + ")"

"""
Dumping text into a fully readable format with all control codes
"""
def dump_text(table, language, delim):
    messages = ""
    refs = ""
    entries = list(table.items())
    with open(baserom_folder + language + "_message_data_static", "rb") as message_data_static:
        messages = delim.join([
            build_message(entry[0], language, decode(
                read_bytes(
                    message_data_static, 
                    segmented_to_physical(entry[1]), 
                    # hacky way to ensure the staff message entry table is read all the way to the end
                    (staff_message_data_static_size if entry[0] == 0x052F else segmented_to_physical(entries[i+1][1]))
                        - segmented_to_physical(entry[1])
                )).replace("\x00","",-1))
            for i,entry in enumerate(entries,0) 
            if (entry[0] != 0xFFFD and entry[0] != 0xFFFF and (entry[0] == 0x052F or entries[i+1][1] != 0))])
    refs = "\n".join([build_message_ref(entry[0], (entry[0] >= 0x0500 and entry[0] < 0x0600))
            for i,entry in enumerate(entries,0)
            if (entry[0] != 0xFFFD and entry[0] != 0xFFFF and (entry[0] == 0x052F or entries[i+1][1] != 0))])
    return messages, refs

def file_prologue(language):
    return """#include <ultra64.h>
#include <global.h>

#include <message_data_fmt.h>

#define DECLARE_MESSAGE_""" + language.upper() + """(textId, message) DECLARE_MESSAGE(textId, """ + language + """, message)

"""

def build_sourcefile_test(table, language):
    return file_prologue(language) + dump_text(table, language, "\n\n")

"""
Build C Source File
"""
def build_sourcefile(table, language, outpath, refpath):
    result = dump_text(table, language, "\n\n")
    with open(outpath, "w", encoding="utf-8") as outfile:
        outfile.write(file_prologue(language) + result[0] + "\n" + (("\n" + append_last(0xFFFD, language) + "\n") if language != "staff" else ""))
    if refpath is not None:
        with open(refpath, "w", encoding="utf-8") as reffile:
            reffile.write(result[1] + "\n" + (("\n" + build_message_ref(0xFFFD,False) + "\n") if language != "staff" else ""))

def build_message_segment(textId):
    return "MESSAGE_ENTRY(" + format_hex(textId,2) + "),"

def build_message_entry(textId, x, y):
    return ("MESSAGE_ENTRY_END()," if (textId == 0xFFFF) else "MESSAGE_ENTRY(" + format_hex(textId,2) + ", " + pad_space(x,18) + ", " + pad_space(y,12) + "),")

def create_contents(table, entries, symbol, fffc):
    declare = ("const MessageTableEntry" if entries else "const char*") + " " + symbol + "[] = {\n    "
    if entries:
        contents = declare + "\n    ".join([build_message_entry(e[0], textbox_type[e[1]], textbox_ypos[e[2]]) for e in table if (e[0] != 0xFFFC or fffc)]) + "\n};\n"
        contents = " ".join(["\n    ".join(contents.split("\n    ")[i:i+2]) for i in range(0, len(contents.split("\n    ")), 2)])
    else:
        contents = "\n    ".join([build_message_segment(e[0]) for e in table if (e[0] != 0xFFFC or fffc)]) + "\n};\n"
        contents = declare + "\n    ".join([" ".join(contents.split("\n    ")[i:i+4]) for i in range(0, len(contents.split("\n    ")), 4)])
    return contents

"""
Build message table C Source File
"""
#def build_table(table, language, outpath):
#    print([(hex(i),hex(message_entry_table[i])) for i in message_entry_table])

def dump_tables(outdir):
    nes_table = []
    ger_table = []
    fra_table = []
    staff_table = []

    hdr = """#include <ultra64.h>
#include <global.h>

#include <message_data_static.h>
"""

    def_nes = "#define MESSAGE_ENTRY(textId, type, yPos) DECLARE_MESSAGE_ENTRY(textId, type, yPos, nes)\n"
    def_ger = """#undef MESSAGE_ENTRY
#define MESSAGE_ENTRY(textId) MESSAGE_SEGMENT(textId, ger)
"""
    def_fra = """#undef MESSAGE_ENTRY
#define MESSAGE_ENTRY(textId) MESSAGE_SEGMENT(textId, fra)
"""
    def_staff = """#undef MESSAGE_ENTRY
#define MESSAGE_ENTRY(textId, type, yPos) DECLARE_MESSAGE_ENTRY(textId, type, yPos, staff)
"""

    with open(baserom, "rb") as romfile:
        nes_table = [(int(e[0],16), int(e[1],16), int(e[2],16), int(e[3],16)) for e in as_message_table_entry(read_bytes(romfile, message_entry_table_addr, german_message_entry_table_addr - message_entry_table_addr))]
        ger_table = [(nes_table[i][0], w) for i,w in enumerate(as_word_list(read_bytes(romfile, german_message_entry_table_addr, french_message_entry_table_addr - german_message_entry_table_addr)),0)]
        fra_table = [(nes_table[i][0], w) for i,w in enumerate(as_word_list(read_bytes(romfile, french_message_entry_table_addr, staff_message_entry_table_addr - french_message_entry_table_addr)),0)]
        staff_table = [(int(e[0],16), int(e[1],16), int(e[2],16), int(e[3],16)) for e in as_message_table_entry(read_bytes(romfile, staff_message_entry_table_addr, message_entry_tables_end_addr - staff_message_entry_table_addr))]

    nes_contents = create_contents(nes_table, True, "D_8014B320", True)
    ger_contents = create_contents(ger_table, False, "D_8014F548", False)
    fra_contents = create_contents(fra_table, False, "D_80151658", False)
    staff_contents = create_contents(staff_table, True, "D_80153768", False)

    with open(outdir + "z_message_tables.c", "w") as outfile:
        outfile.write("\n".join([hdr, def_nes, nes_contents, def_ger, ger_contents, def_fra, fra_contents, def_staff, staff_contents]))



read_tables()
#print([hex(i) for i in staff_message_entry_table])
#print(build_sourcefile_test(staff_message_entry_table, "staff"))

refs = True
lang = "nes"
tbl = None
dump_tbls = True

if lang == "nes":
    tbl = message_entry_table
elif lang == "ger":
    tbl = german_message_entry_table
elif lang == "fra":
    tbl = french_message_entry_table
elif lang == "staff":
    tbl = staff_message_entry_table

if tbl is not None:
    print("")
    #build_sourcefile(tbl, lang, "text/" + lang + "_message_data_static.c", "text/msg_refs_" + lang + ".txt" if refs else None)

if dump_tbls:
    dump_tables("text/")


