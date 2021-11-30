#!/usr/bin/env python3

from overlayhelpers import filemap

import argparse, os, struct

"""
Enumerations
"""

command_continue_stop = {
    0x00: "CS_CMD_CONTINUE",
    0xFF: "CS_CMD_STOP",
}

cutscene_terminator_destinations = {
    0x00: "INVALID_DESTINATION_0",
    0x01: "CUTSCENE_MAP_GANON_HORSE",
    0x02: "CUTSCENE_MAP_THREE_GODESSES_POST_DEKU_TREE",
    0x03: "GERUDO_VALLEY_DIN",
    0x04: "DEATH_MOUNTAIN_TRAIL_NAYRU",
    0x05: "KOKIRI_FOREST_FARORE",
    0x06: "CUTSCENE_MAP_TRIFORCE_CREATION",
    0x07: "KOKIRI_FOREST_RECEIVE_KOKIRI_EMERALD",
    0x08: "TEMPLE_OF_TIME_AFTER_USE_MS",
    0x09: "GERUDO_VALLEY_DIN_2",
    0x0A: "LINKS_HOUSE_INTRO",
    0x0B: "KOKIRI_FOREST_INTRO",
    0x0C: "DEATH_MOUNTAIN_TRAIL_AFTER_GORON_RUBY",
    0x0D: "ZORAS_FOUNTAIN_AFTER_ZORAS_SAPPHIRE",
    0x0E: "KOKIRI_FOREST_AFTER_KOKIRI_EMERALD",
    0x0F: "TEMPLE_OF_TIME_KOKIRI_EMERALD", #unused
    0x10: "TEMPLE_OF_TIME_GORON_RUBY", #unused
    0x11: "TEMPLE_OF_TIME_ZORAS_SAPPHIRE", #unused
    0x12: "TEMPLE_OF_TIME_AFTER_USE_MS_FIRST",
    0x13: "DEATH_MOUNTAIN_TRAIL_AFTER_INTRO",
    0x14: "INVALID_DESTINATION_14",
    0x15: "LAKE_HYLIA_WATER_RISES",
    0x16: "DESERT_COLOSSUS_REQUIEM",
    0x17: "CUTSCENE_MAP_CURSE_YOU",
    0x18: "JABU_JABU_INTRO",
    0x19: "CHAMBER_OF_SAGES_LIGHT_MEDALLION",
    0x1A: "TEMPLE_OF_TIME_KOKIRI_EMERALD_2", #duplicate of 0x000F
    0x1B: "TEMPLE_OF_TIME_GORON_RUBY_2", #duplicate of 0x0010
    0x1C: "TEMPLE_OF_TIME_ZORAS_SAPPHIRE_2", #duplicate of 0x0011
    0x1D: "CHAMBER_OF_SAGES_FOREST_MEDALLION",
    0x1E: "CHAMBER_OF_SAGES_FIRE_MEDALLION",
    0x1F: "CHAMBER_OF_SAGES_WATER_MEDALLION",
    0x20: "HYRULE_FIELD_FLASHBACK", #lacs part 4
    0x21: "HYRULE_FIELD_AFTER_LAKE_HYLIA_OWL",
    0x22: "CUTSCENE_MAP_GANON_AFTER_USE_MS",
    0x23: "HYRULE_FIELD_INTRO_ZELDA_ESCAPE",
    0x24: "INVALID_DESTINATION_24",
    0x25: "INVALID_DESTINATION_25",
    0x26: "CUTSCENE_MAP_SHEIKAH_LEGEND", #lacs part 2
    0x27: "TEMPLE_OF_TIME_ZELDA_REVEAL", #lacs part 3
    0x28: "TEMPLE_OF_TIME_GET_LIGHT_ARROWS", #lacs part 5
    0x29: "LAKE_HYLIA_AFTER_BLUE_WARP",
    0x2A: "KAKARIKO_VILLAGE_DRAIN_WELL",
    0x2B: "WINDMILL_AFTER_DRAIN_WELL",
    0x2C: "TEMPLE_OF_TIME_AFTER_DOOR_OF_TIME_OPENS",
    0x2D: "INVALID_DESTINATION_2D",
    0x2E: "TEMPLE_OF_TIME_AFTER_USE_MS_FIRST_2", #duplicate of 0x0012
    0x2F: "KAKARIKO_VILLAGE_NOCTURNE_PART_2",
    0x30: "DESERT_COLOSSUS_AFTER_REQUIEM",
    0x31: "TEMPLE_OF_TIME_AFTER_LIGHT_ARROWS",
    0x32: "KAKARIKO_VILLAGE_AFTER_NOCTURNE",
    0x33: "HYRULE_FIELD_IMPA_ESCORT_CS",
    0x34: "TEMPLE_OF_TIME_SONG_OF_TIME",
    0x35: "HYRULE_FIELD_AFTER_SONG_OF_TIME",
    0x36: "GERUDO_VALLEY_CREDITS",
    0x37: "GERUDO_FORTRESS_CREDITS",
    0x38: "KAKARIKO_VILLAGE_CREDITS",
    0x39: "DEATH_MOUNTAIN_TRAIL_CREDITS_1",
    0x3A: "GORON_CITY_CREDITS", #unused?
    0x3B: "LAKE_HYLIA_CREDITS",
    0x3C: "ZORAS_FOUNTAIN_CREDITS", #unused
    0x3D: "ZORAS_DOMAIN_CREDITS",
    0x3E: "KOKIRI_FOREST_CREDITS_1",
    0x3F: "KOKIRI_FOREST_CREDITS_2",
    0x40: "HYRULE_FIELD_CREDITS",
    0x41: "LON_LON_RANCH_CREDITS_1",
    0x42: "KAKARIKO_VILLAGE_AFTER_TRAIL_OWL",
    0x43: "HTRULE_FIELD_UNUSED_ENTRANCE",
    0x44: "CUTSCENE_MAP_FIRE",
    0x45: "KOKIRI_FOREST_POST_FOREST_MEDALLION",
    0x46: "DEATH_MOUNTAIN_TRAIL_CREDITS_2",
    0x47: "TEMPLE_OF_TIME_CREDITS",
    0x48: "ZELDAS_COURTYARD_CREDITS",
    0x49: "LON_LON_RANCH_CREDITS_1_2", #duplicate of 0x0041
    0x4A: "LON_LON_RANCH_CREDITS_2",
    0x4B: "LON_LON_RANCH_CREDITS_3",
    0x4C: "LON_LON_RANCH_CREDITS_4",
    0x4D: "LON_LON_RANCH_CREDITS_5",
    0x4E: "LON_LON_RANCH_CREDITS_6",
    0x4F: "LON_LON_RANCH_NO_CS_1",
    0x50: "LON_LON_RANCH_NO_CS_2",
    0x51: "LON_LON_RANCH_NO_CS_3",
    0x52: "LON_LON_RANCH_NO_CS_4",
    0x53: "LON_LON_RANCH_NO_CS_5",
    0x54: "LON_LON_RANCH_NO_CS_6",
    0x55: "LON_LON_RANCH_NO_CS_7",
    0x56: "LON_LON_RANCH_NO_CS_8",
    0x57: "LON_LON_RANCH_NO_CS_9",
    0x58: "LON_LON_RANCH_NO_CS_10",
    0x59: "LON_LON_RANCH_NO_CS_11",
    0x5A: "LON_LON_RANCH_NO_CS_12",
    0x5B: "LON_LON_RANCH_NO_CS_13",
    0x5C: "LON_LON_RANCH_NO_CS_14",
    0x5D: "LON_LON_RANCH_NO_CS_15",
    0x5E: "LON_LON_RANCH_NO_CS_EPONAS_SONG",
    0x5F: "CONDITIONAL_DESTINATION", # more descriptive name?
    0x60: "DESERT_COLOSSUS_SPIRIT_BLUE_WARP",
    0x61: "GRAVEYARD_AFTER_SHADOW_BLUE_WARP",
    0x62: "DEATH_MOUNTAIN_CRATER_AFTER_FIRE_BLUE_WARP",
    0x63: "SACRED_FOREST_MEADOW_AFTER_FOREST_BLUE_WARP",
    0x64: "KOKIRI_FOREST_AFTER_FOREST_BLUE_WARP",
    0x65: "DESERT_COLOSSUS_AFTER_SILVER_GAUNTLETS",
    0x66: "TEMPLE_OF_TIME_FRONT_OF_PEDESTAL",
    0x67: "HYRULE_FIELD_TITLE_SCREEN",
    0x68: "SPIRIT_TEMPLE_BOSS_TITLE_SCREEN",
    0x69: "GRAVEYARD_SUNS_SONG",
    0x6A: "ROYAL_FAMILYS_TOMB_SUNS_SONG",
    0x6B: "GANONS_CASTLE_AFTER_FOREST_TRIAL",
    0x6C: "GANONS_CASTLE_AFTER_WATER_TRIAL",
    0x6D: "GANONS_CASTLE_AFTER_SHADOW_TRIAL",
    0x6E: "GANONS_CASTLE_AFTER_FIRE_TRIAL",
    0x6F: "GANONS_CASTLE_AFTER_LIGHT_TRIAL",
    0x70: "GANONS_CASTLE_AFTER_SPIRIT_TRIAL",
    0x71: "GANONS_CASTLE_DISPEL_BARRIER_IF_CONDITIONS",
    0x72: "HYRULE_FIELD_INTRO",
    0x73: "HYRULE_FIELD_AFTER_IMPA_ESCORT",
    0x74: "DESERT_COLOSSUS_SPIRIT_BLUE_WARP_2",
    0x75: "HYRULE_FIELD_SKY",
    0x76: "GANON_BATTLE_TOWER_COLLAPSE",
    0x77: "ZELDAS_COURTYARD_RECEIVE_LETTER",
}

ocarina_action_ids = {
    0x00: "OCARINA_ACTION_UNK_0",
    0x01: "OCARINA_ACTION_FREE_PLAY",
    0x02: "OCARINA_ACTION_TEACH_MINUET",
    0x03: "OCARINA_ACTION_TEACH_BOLERO",
    0x04: "OCARINA_ACTION_TEACH_SERENADE",
    0x05: "OCARINA_ACTION_TEACH_REQUIEM",
    0x06: "OCARINA_ACTION_TEACH_NOCTURNE",
    0x07: "OCARINA_ACTION_TEACH_PRELUDE",
    0x08: "OCARINA_ACTION_TEACH_SARIA",
    0x09: "OCARINA_ACTION_TEACH_EPONA",
    0x0A: "OCARINA_ACTION_TEACH_LULLABY",
    0x0B: "OCARINA_ACTION_TEACH_SUNS",
    0x0C: "OCARINA_ACTION_TEACH_TIME",
    0x0D: "OCARINA_ACTION_TEACH_STORMS",
    0x0E: "OCARINA_ACTION_UNK_E",
    0x0F: "OCARINA_ACTION_PLAYBACK_MINUET",
    0x10: "OCARINA_ACTION_PLAYBACK_BOLERO",
    0x11: "OCARINA_ACTION_PLAYBACK_SERENADE",
    0x12: "OCARINA_ACTION_PLAYBACK_REQUIEM",
    0x13: "OCARINA_ACTION_PLAYBACK_NOCTURNE",
    0x14: "OCARINA_ACTION_PLAYBACK_PRELUDE",
    0x15: "OCARINA_ACTION_PLAYBACK_SARIA",
    0x16: "OCARINA_ACTION_PLAYBACK_EPONA",
    0x17: "OCARINA_ACTION_PLAYBACK_LULLABY",
    0x18: "OCARINA_ACTION_PLAYBACK_SUNS",
    0x19: "OCARINA_ACTION_PLAYBACK_TIME",
    0x1A: "OCARINA_ACTION_PLAYBACK_STORMS",
    0x1B: "OCARINA_ACTION_UNK_1B",
    0x1C: "OCARINA_ACTION_CHECK_MINUET",
    0x1D: "OCARINA_ACTION_CHECK_BOLERO",
    0x1E: "OCARINA_ACTION_CHECK_SERENADE",
    0x1F: "OCARINA_ACTION_CHECK_REQUIEM",
    0x20: "OCARINA_ACTION_CHECK_NOCTURNE",
    0x21: "OCARINA_ACTION_CHECK_PRELUDE",
    0x22: "OCARINA_ACTION_CHECK_SARIA",
    0x23: "OCARINA_ACTION_CHECK_EPONA",
    0x24: "OCARINA_ACTION_CHECK_LULLABY",
    0x25: "OCARINA_ACTION_CHECK_SUNS",
    0x26: "OCARINA_ACTION_CHECK_TIME",
    0x27: "OCARINA_ACTION_CHECK_STORMS",
    0x28: "OCARINA_ACTION_CHECK_SCARECROW",
    0x29: "OCARINA_ACTION_FREE_PLAY_DONE",
    0x2A: "OCARINA_ACTION_SCARECROW_LONG_RECORDING",
    0x2B: "OCARINA_ACTION_SCARECROW_LONG_PLAYBACK",
    0x2C: "OCARINA_ACTION_SCARECROW_RECORDING",
    0x2D: "OCARINA_ACTION_SCARECROW_PLAYBACK",
    0x2E: "OCARINA_ACTION_MEMORY_GAME",
    0x2F: "OCARINA_ACTION_FROGS",
    0x30: "OCARINA_ACTION_CHECK_NOWARP",
    0x31: "OCARINA_ACTION_CHECK_NOWARP_DONE",
}

"""
Entry format:

    (n1, n2, n3, ...) : (cmd, nwords, continuestopbyte, cmdentrieswd, listitem, nwordslist)

    n1, n2, n3, ... : command types
    cmd : command macro
    nwords : number of words this command is encoded in
    continuestopbyte : the location of the continue/stop flag byte, if this command type has one, counted as number of bytes into the command
    cmdentrieswd : the word index (from 0) containing the number of list items, a negative value specifies a hardcoded number of entries that are always guaranteed to follow
    listitem : the list item macro if this macro is a list type, the name __SPECIAL is reserved for conditional output that needs custom handling
    nwordslist : number of words this list item is encoded in

Argument format:

    %[bn|hn|wn]:[N]:[s|x|en]

    b : byte
    h : halfword
    w : word
    n: nth byte/halfword/word in the Nth word

    N : word number to search in, 0 is command type

    s : decimal
    u : decimal unsigned
    x : hex
    f : float
    e : enumeration
    n : unique identifier of which enum to use
"""
cutscene_command_macros = {
    -1:
        ("CS_END()", 1, None, None,
              None, None),
    3:
        ("CS_MISC_LIST(%w1:1:s)", 2, None, 0,
              "CS_MISC(%h2:1:x, %h1:1:s, %h2:2:s, %h1:2:x, %w1:3:x, %w1:4:x, %w1:5:x, %w1:6:x, %w1:7:x, %w1:8:x, %w1:9:x, %w1:10:x, %w1:11:x, %w1:12:x)", 12),
    4:
        ("CS_LIGHTING_LIST(%w1:1:s)", 2, None, 0,
              "CS_LIGHTING(%h2:1:x, %h1:1:s, %h2:2:s, %h1:2:x, %w1:3:x, %w1:4:x, %w1:5:x, %w1:6:x, %w1:7:x, %w1:8:x, %w1:9:x)", 12),
    86:
        ("CS_PLAY_BGM_LIST(%w1:1:s)", 2, None, 0,
              "CS_PLAY_BGM(%h2:1:x, %h1:1:s, %h2:2:s, %h1:2:x, %w1:3:x, %w1:4:x, %w1:5:x, %w1:6:x, %w1:7:x, %w1:8:x, %w1:9:x)", 12),
    87:
        ("CS_STOP_BGM_LIST(%w1:1:s)", 2, None, 0,
              "CS_STOP_BGM(%h2:1:x, %h1:1:s, %h2:2:s, %h1:2:x, %w1:3:x, %w1:4:x, %w1:5:x, %w1:6:x, %w1:7:x, %w1:8:x, %w1:9:x)", 12),
    124:
        ("CS_FADE_BGM_LIST(%w1:1:s)", 2, None, 0,
              "CS_FADE_BGM(%h2:1:x, %h1:1:s, %h2:2:s, %h1:2:x, %w1:3:x, %w1:4:x, %w1:5:x, %w1:6:x, %w1:7:x, %w1:8:x, %w1:9:x)", 12),
    9:
        ("CS_CMD_09_LIST(%w1:1:s)", 2, None, 0,
              "CS_CMD_09(%h2:1:x, %h1:1:s, %h2:2:s, %b2:2:x, %b1:2:x, %b4:3:x, %b3:3:x, %h1:3:x)", 3),
    140:
        ("CS_TIME_LIST(%w1:1:s)", 2, None, 0,
              "CS_TIME(%h2:1:x, %h1:1:s, %h2:2:s, %b2:2:x, %b1:2:x, %w1:3:x)", 3),
    10:
        ("CS_PLAYER_ACTION_LIST(%w1:1:s)", 2, None, 0,
              "CS_PLAYER_ACTION(%h2:1:x, %h1:1:s, %h2:2:s, %h1:2:x, %h2:3:x, %h1:3:x, %w1:4:s, %w1:5:s, %w1:6:s, %w1:7:s, %w1:8:s, %w1:9:s, %w1:10:f, %w1:11:f, %w1:12:f)", 12),
    (15,17,18,23,34,39,46,76,85,93,105,107,110,119,123,138,139,144, # npc action 1
     14,16,24,35,40,48,64,68,70,78,80,94,116,118,120,125,131,141,   # npc action 2
     25,36,41,50,67,69,72,74,81,106,117,121,126,132,                # npc action 3
     29,37,42,51,53,63,65,66,75,82,108,127,133,                     # npc action 4
     30,38,43,47,54,79,83,128,135,                                  # npc action 5
     44,55,77,84,90,129,136,                                        # npc action 6
     31,52,57,58,88,115,130,137,                                    # npc action 7
     49,60,89,111,114,134,142,                                      # npc action 8
     62,                                                            # npc action 9
     143):                                                          # npc action 10
        ("CS_NPC_ACTION_LIST(%w1:0:s, %w1:1:s)", 2, None, 0,
              "CS_NPC_ACTION(%h2:1:x, %h1:1:s, %h2:2:s, %h1:2:x, %h2:3:x, %h1:3:x, %w1:4:s, %w1:5:s, %w1:6:s, %w1:7:s, %w1:8:s, %w1:9:s, %w1:10:f, %w1:11:f, %w1:12:f)", 12),
    1:
        ("CS_CAM_POS_LIST(%h1:1:s, %h2:2:s)", 3, 0, None,
              "CS_CAM_POS(%b4:1:e0, %b3:1:x, %h1:1:s, %w1:2:f, %h2:3:s, %h1:3:s, %h2:4:s, %h1:4:x)", 4),
    5:
        ("CS_CAM_POS_PLAYER_LIST(%h1:1:s, %h2:2:s)", 3, 0, None,
              "CS_CAM_POS_PLAYER(%b4:1:e0, %b3:1:x, %h1:1:s, %w1:2:f, %h2:3:s, %h1:3:s, %h2:4:s, %h1:4:x)", 4),
    2:
        ("CS_CAM_FOCUS_POINT_LIST(%h1:1:s, %h2:2:s)", 3, 0, None,
              "CS_CAM_FOCUS_POINT(%b4:1:e0, %b3:1:x, %h1:1:s, %w1:2:f, %h2:3:s, %h1:3:s, %h2:4:s, %h1:4:x)", 4),
    6:
        ("CS_CAM_FOCUS_POINT_PLAYER_LIST(%h1:1:s, %h2:2:s)", 3, 0, None,
              "CS_CAM_FOCUS_POINT_PLAYER(%b4:1:e0, %b3:1:x, %h1:1:s, %w1:2:f, %h2:3:s, %h1:3:s, %h2:4:s, %h1:4:x)", 4),
    7:
        ("CS_CMD_07_LIST(%h2:1:x, %h1:1:s, %h2:2:s, %h1:2:x)", 3, None, -1,
              "CS_CMD_07(%b4:1:e0, %b3:1:x, %h1:1:s, %w1:2:f, %h2:3:s, %h1:3:s, %h2:4:s, %h1:4:x)", 4),
    8:
        ("CS_CMD_08_LIST(%h2:1:x, %h1:1:s, %h2:2:s, %h1:2:x)", 3, None, -1,
              "CS_CMD_08(%b4:1:e0, %b3:1:x, %h1:1:s, %w1:2:f, %h2:3:s, %h1:3:s, %h2:4:s, %h1:4:x)", 4),
    1000:
        ("CS_TERMINATOR(%h2:2:e1, %h1:2:s, %h2:3:s)", 4, None, None,
              None, None),
    19:
        ("CS_TEXT_LIST(%w1:1:s)", 2, None, 0,
              "__SPECIAL(CS_TEXT_LIST)", 3),
    45:
        ("CS_SCENE_TRANS_FX(%h2:2:x, %h1:2:s, %h2:3:s)", 4, None, None,
              None, None),
}

begin_cutscene_entry = ("CS_BEGIN_CUTSCENE(%w1:0:s, %w1:1:s)", 2, None, None,
                            None, None)

unk_data_entry = ("CS_UNK_DATA_LIST(%w1:0:x, %w1:1:s)", 2, None, 0,
                       "CS_UNK_DATA(%w1:1:x, %w1:2:x, %w1:3:x, %w1:4:x, %w1:5:x, %w1:6:x, %w1:7:x, %w1:8:x, %w1:9:x, %w1:10:x, %w1:11:x, %w1:12:x)", 12)

linesep = "\n"
indent = "    "
line_end = "," + linesep

"""
Since multiple command ids can map to the same command macro, to shorten the dictionary
we introduce a function to allow these command ids to be grouped into tuples.
"""
def multi_key(key):
    for k in cutscene_command_macros.keys():
        if type(k) is int:
            if k == key:
                return cutscene_command_macros[k]
        elif key in k:
            return cutscene_command_macros[k]

"""
Args
"""

def arg_count(cmd_def):
    return len([x for x in cmd_def.split("(")[1].split(")")[0].split(",")]) if "()" not in cmd_def else 0

def arg_part(arg, num):
    return arg.replace("%","").split(":")[num]

def args_list(cmd_def):
    return [x.strip() for x in cmd_def.split("(")[1].split(")")[0].split(",")]

"""
Type conversion
"""

def get_byte(word, num):
    return struct.unpack(">bbbb", struct.pack(">I", word))[num]

def get_byte_unsigned(word, num):
    return struct.unpack(">BBBB", struct.pack(">I", word))[num]

def get_short(word, num):
    return struct.unpack(">hh", struct.pack(">I", word))[num]

def get_short_unsigned(word, num):
    return struct.unpack(">HH", struct.pack(">I", word))[num]

def get_word(word):
    return struct.unpack(">i", struct.pack(">I", word))[0]

def get_word_unsigned(word):
    return struct.unpack(">I", struct.pack(">I", word))[0]

def get_float(word):
    return struct.unpack(">f", struct.pack(">i", word))[0]

"""
Formatting
"""

def pad(string, length):
    string = string.replace("0x","")
    if len(string) < length:
        return pad("0"+string, length)
    else:
        return string

def format_arg(arg, words):
    word = words[int(arg_part(arg, 1))] # the word to look in
    arg_type = arg_part(arg, 0).strip()[0] # the type, b/h/w, tells you what part of the word to look in
    arg_type_num = int(arg_part(arg, 0).strip()[1]) # the type num, depends on type
    value = 0
    unsigned_value = 0
    pad_len = 0
    if arg_type == "b":
        value = get_byte(word, 4 - arg_type_num)
        unsigned_value = get_byte_unsigned(word, 4 - arg_type_num)
        pad_len = 2
    elif arg_type == "h":
        value = get_short(word, 2 - arg_type_num)
        unsigned_value = get_short_unsigned(word, 2 - arg_type_num)
        pad_len = 4
    elif arg_type == "w":
        value = get_word(word)
        unsigned_value = get_word_unsigned(word)
        pad_len = 8
    else:
        print("Something went wrong!") # TODO more debug info
        os._exit(1)
    format_type = arg_part(arg, 2).strip() # the format type, how to express the final value
    result = ""
    if "e" in format_type:
        enum_no = int(format_type[1])
        if enum_no == 0:
            result = command_continue_stop[unsigned_value]
        elif enum_no == 1:
            result = cutscene_terminator_destinations[unsigned_value]
        elif enum_no == 2:
            result = ocarina_action_ids[unsigned_value]
    elif format_type == "u":
        result = str(value)
    elif format_type == "s":
        result = str(value)
    elif format_type == "x":
        result = "0x" + pad(hex(unsigned_value), pad_len).upper()
    elif format_type == "f":
        result = str(get_float(value))+"f"
    else:
        print("Something went wrong!") # TODO more debug info
        os._exit(1)
    return result

def format_cmd(cmd, words):
    if "__SPECIAL" in cmd:
        # special handling for textbox list macros, as there are multiple dependent on particular values
        if "CS_TEXT_LIST" in cmd:
            if get_short_unsigned(words[1], 0) == 0xFFFF:
                cmd = "CS_TEXT_NONE(%h1:1:s, %h2:2:s)"
            elif get_short(words[2], 1) == 2:
                cmd = "CS_TEXT_LEARN_SONG(%h2:1:e2, %h1:1:s, %h2:2:s, %h2:3:x)"
            else:
                cmd = "CS_TEXT_DISPLAY_TEXTBOX(%h2:1:x, %h1:1:s, %h2:2:s, %h1:2:x, %h2:3:x, %h1:3:x)"
    for arg in args_list(cmd):
        cmd = cmd.replace(arg, format_arg(arg, words))
    return cmd

"""
Cutscene parser

Note that this isn't protected against indexing errors since a cutscene should always
end before the end of the file it's in.
"""

def disassemble_cutscene(cs_in):
    i = 0
    total_entries = cs_in[i]
    i+=1
    cutscene_end_frame = cs_in[i]
    i+=1
    if (total_entries < 0 or cutscene_end_frame < 0):
        print("This cutscene would abort if played in-engine")
        if total_entries < 0:
            return "Could not disassemble cutscene: Number of commands is negative"
    macros = format_cmd(begin_cutscene_entry[0], [total_entries, cutscene_end_frame])+line_end
    for k in range(0,total_entries+1):
        cmd_type = cs_in[i]
        if (cmd_type == 0xFFFFFFFF):
            return macros + multi_key(-1)[0]+line_end
        entry = multi_key(cmd_type)
        if entry is None:
            entry = unk_data_entry
        cmd_macro = entry[0]
        n_words = entry[1]
        macros += format_cmd(cmd_macro, [cs_in[i+j] for j in range(0, n_words)])+line_end
        list_item = entry[4]
        if list_item is not None: # Not all macros have associated list item macros
            continue_stop = entry[2]
            cmd_entries = entry[3]
            n_words_list_item = entry[5]
            if continue_stop is not None: # Not all macros have a continue/stop flag
                i += n_words
                do_continue = True
                while do_continue:
                    # "Integer Divide" by 4 to get the word it's in
                    # Modulo operator to get the byte relative to the start of the word
                    do_continue = True if get_byte(cs_in[i+(continue_stop // 4)], continue_stop % 4) == 0x00 else False
                    macros += indent+format_cmd(list_item, [0, *[cs_in[i+j] for j in range(0, n_words_list_item)]])+line_end
                    i += n_words_list_item
            elif cmd_entries is not None: # Not all macros have a defined number of entries
                if cmd_entries < 0: # Some have a fixed number of entries
                    num_entries = -cmd_entries
                else: # Some specify their number of entries
                    num_entries = cs_in[i+cmd_entries+1]
                i += n_words
                for n in range(0,num_entries):
                    macros += indent+format_cmd(list_item, [0, *[cs_in[i+j] for j in range(0, n_words_list_item)]])+line_end
                    i += n_words_list_item
        else:
            i += n_words
    print("Warning: cutscene reached maximum entries without encountering a CS_END command")
    return macros

def hex_parse(s):
    return int(s, 16)

def main():
    parser = argparse.ArgumentParser(description="Disassembles cutscenes for OoT")
    parser.add_argument('address', help="VRAM or ROM address to disassemble at", type=hex_parse)
    args = parser.parse_args()

    file_result = None
    if args.address >= 0x80000000:
        file_result = filemap.GetFromVRam(args.address)
    else:
        file_result = filemap.GetFromRom(args.address)
    if file_result is None:
        print("Invalid address")
        os._exit(1)
    print(file_result)
    print()

    script_dir = os.path.dirname(os.path.realpath(__file__))
    cs_data = None
    with open(script_dir + "/../baserom/" + file_result.name, "rb") as ovl_file:
        ovl_file.seek(file_result.offset)
        cs_data = [i[0] for i in struct.iter_unpack(">I",  bytearray(ovl_file.read()))]
    if cs_data is not None:
        print("static CutsceneData D_" + hex(args.address).replace("0x","").upper() + "[] = {\n" + indent+disassemble_cutscene(cs_data).replace(linesep,linesep+indent).rstrip()+"\n};")

if __name__ == "__main__":
    main()
