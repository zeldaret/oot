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

cutscene_destinations = {
    0x00: "CS_DEST_UNIMPLEMENTED_0",
    0x01: "CS_DEST_CUTSCENE_MAP_GANON_HORSE",
    0x02: "CS_DEST_CUTSCENE_MAP_THREE_GODDESSES",
    0x03: "CS_DEST_GERUDO_VALLEY_DIN_PART_1",
    0x04: "CS_DEST_DEATH_MOUNTAIN_TRAIL_NAYRU",
    0x05: "CS_DEST_KOKIRI_FOREST_FARORE",
    0x06: "CS_DEST_CUTSCENE_MAP_TRIFORCE_CREATION",
    0x07: "CS_DEST_KOKIRI_FOREST_RECEIVE_KOKIRI_EMERALD",
    0x08: "CS_DEST_TEMPLE_OF_TIME_FROM_MASTER_SWORD",
    0x09: "CS_DEST_GERUDO_VALLEY_DIN_PART_2",
    0x0A: "CS_DEST_LINKS_HOUSE_INTRO",
    0x0B: "CS_DEST_KOKIRI_FOREST_INTRO",
    0x0C: "CS_DEST_DEATH_MOUNTAIN_TRAIL_FROM_GORON_RUBY",
    0x0D: "CS_DEST_ZORAS_FOUNTAIN_FROM_ZORAS_SAPPHIRE",
    0x0E: "CS_DEST_KOKIRI_FOREST_FROM_KOKIRI_EMERALD",
    0x0F: "CS_DEST_TEMPLE_OF_TIME_KOKIRI_EMERALD_RESTORED",
    0x10: "CS_DEST_TEMPLE_OF_TIME_GORON_RUBY_RESTORED",
    0x11: "CS_DEST_TEMPLE_OF_TIME_ZORAS_SAPPHIRE_RESTORED",
    0x12: "CS_DEST_TEMPLE_OF_TIME_AFTER_LIGHT_MEDALLION",
    0x13: "CS_DEST_DEATH_MOUNTAIN_TRAIL",
    0x14: "CS_DEST_UNIMPLEMENTED_14",
    0x15: "CS_DEST_LAKE_HYLIA_WATER_RESTORED",
    0x16: "CS_DEST_DESERT_COLOSSUS_REQUIEM",
    0x17: "CS_DEST_CUTSCENE_MAP_GANONDORF_DEFEATED_CREDITS",
    0x18: "CS_DEST_JABU_JABU",
    0x19: "CS_DEST_CHAMBER_OF_SAGES_LIGHT_MEDALLION",
    0x1A: "CS_DEST_TEMPLE_OF_TIME_KOKIRI_EMERALD_RESTORED_2",
    0x1B: "CS_DEST_TEMPLE_OF_TIME_GORON_RUBY_RESTORED_2",
    0x1C: "CS_DEST_TEMPLE_OF_TIME_ZORAS_SAPPHIRE_RESTORED_2",
    0x1D: "CS_DEST_CHAMBER_OF_SAGES_FOREST_MEDALLION",
    0x1E: "CS_DEST_CHAMBER_OF_SAGES_FIRE_MEDALLION",
    0x1F: "CS_DEST_CHAMBER_OF_SAGES_WATER_MEDALLION",
    0x20: "CS_DEST_HYRULE_FIELD_FLASHBACK",
    0x21: "CS_DEST_HYRULE_FIELD_FROM_ZELDA_ESCAPE",
    0x22: "CS_DEST_CUTSCENE_MAP_GANONDORF_FROM_MASTER_SWORD",
    0x23: "CS_DEST_HYRULE_FIELD_INTRO_DREAM",
    0x24: "CS_DEST_UNIMPLEMENTED_24",
    0x25: "CS_DEST_UNIMPLEMENTED_25",
    0x26: "CS_DEST_CUTSCENE_MAP_SHEIKAH_LEGEND",
    0x27: "CS_DEST_TEMPLE_OF_TIME_ZELDA_REVEAL",
    0x28: "CS_DEST_TEMPLE_OF_TIME_GET_LIGHT_ARROWS",
    0x29: "CS_DEST_LAKE_HYLIA_FROM_LAKE_RESTORED",
    0x2A: "CS_DEST_KAKARIKO_VILLAGE_DRAIN_WELL",
    0x2B: "CS_DEST_WINDMILL_FROM_WELL_DRAINED",
    0x2C: "CS_DEST_TEMPLE_OF_TIME_FROM_ALL_STONES_RESTORED",
    0x2D: "CS_DEST_UNIMPLEMENTED_2D",
    0x2E: "CS_DEST_TEMPLE_OF_TIME_AFTER_LIGHT_MEDALLION_ALT",
    0x2F: "CS_DEST_KAKARIKO_VILLAGE_NOCTURNE_PART_2",
    0x30: "CS_DEST_DESERT_COLOSSUS_FROM_REQUIEM",
    0x31: "CS_DEST_TEMPLE_OF_TIME_FROM_LIGHT_ARROWS",
    0x32: "CS_DEST_KAKARIKO_VILLAGE_FROM_NOCTURNE",
    0x33: "CS_DEST_HYRULE_FIELD_FROM_ZELDAS_COURTYARD",
    0x34: "CS_DEST_TEMPLE_OF_TIME_SONG_OF_TIME",
    0x35: "CS_DEST_HYRULE_FIELD_FROM_SONG_OF_TIME",
    0x36: "CS_DEST_GERUDO_VALLEY_CREDITS",
    0x37: "CS_DEST_GERUDO_FORTRESS_CREDITS",
    0x38: "CS_DEST_KAKARIKO_VILLAGE_CREDITS",
    0x39: "CS_DEST_DEATH_MOUNTAIN_TRAIL_CREDITS_PART_1",
    0x3A: "CS_DEST_GORON_CITY_CREDITS",
    0x3B: "CS_DEST_LAKE_HYLIA_CREDITS",
    0x3C: "CS_DEST_ZORAS_FOUNTAIN_CREDITS",
    0x3D: "CS_DEST_ZORAS_DOMAIN_CREDITS",
    0x3E: "CS_DEST_KOKIRI_FOREST_CREDITS_PART_1",
    0x3F: "CS_DEST_KOKIRI_FOREST_CREDITS_PART_2",
    0x40: "CS_DEST_HYRULE_FIELD_CREDITS",
    0x41: "CS_DEST_LON_LON_RANCH_CREDITS_PART_1_ALT",
    0x42: "CS_DEST_KAKARIKO_VILLAGE_FROM_TRAIL_OWL",
    0x43: "CS_DEST_HYRULE_FIELD_FROM_LAKE_HYLIA_OWL",
    0x44: "CS_DEST_CUTSCENE_MAP_DEKU_SPROUT_PART_2",
    0x45: "CS_DEST_KOKIRI_FOREST_DEKU_SPROUT_PART_3",
    0x46: "CS_DEST_DEATH_MOUNTAIN_TRAIL_CREDITS_PART_2",
    0x47: "CS_DEST_TEMPLE_OF_TIME_CREDITS",
    0x48: "CS_DEST_ZELDAS_COURTYARD_CREDITS",
    0x49: "CS_DEST_LON_LON_RANCH_CREDITS_PART_1",
    0x4A: "CS_DEST_LON_LON_RANCH_CREDITS_PART_2",
    0x4B: "CS_DEST_LON_LON_RANCH_CREDITS_PART_3",
    0x4C: "CS_DEST_LON_LON_RANCH_CREDITS_PART_4",
    0x4D: "CS_DEST_LON_LON_RANCH_CREDITS_PART_5",
    0x4E: "CS_DEST_LON_LON_RANCH_CREDITS_PART_6",
    0x4F: "CS_DEST_LON_LON_RANCH_1",
    0x50: "CS_DEST_LON_LON_RANCH_2",
    0x51: "CS_DEST_LON_LON_RANCH_3",
    0x52: "CS_DEST_LON_LON_RANCH_4",
    0x53: "CS_DEST_LON_LON_RANCH_5",
    0x54: "CS_DEST_LON_LON_RANCH_6",
    0x55: "CS_DEST_LON_LON_RANCH_7",
    0x56: "CS_DEST_LON_LON_RANCH_8",
    0x57: "CS_DEST_LON_LON_RANCH_9",
    0x58: "CS_DEST_LON_LON_RANCH_10",
    0x59: "CS_DEST_LON_LON_RANCH_11",
    0x5A: "CS_DEST_LON_LON_RANCH_12",
    0x5B: "CS_DEST_LON_LON_RANCH_13",
    0x5C: "CS_DEST_LON_LON_RANCH_14",
    0x5D: "CS_DEST_LON_LON_RANCH_15",
    0x5E: "CS_DEST_LON_LON_RANCH_FROM_EPONAS_SONG",
    0x5F: "CS_DEST_STONES_RESTORED_CONDITIONAL",
    0x60: "CS_DEST_DESERT_COLOSSUS_FROM_CHAMBER_OF_SAGES",
    0x61: "CS_DEST_GRAVEYARD_FROM_CHAMBER_OF_SAGES",
    0x62: "CS_DEST_DEATH_MOUNTAIN_CRATER_FROM_CHAMBER_OF_SAGES",
    0x63: "CS_DEST_SACRED_FOREST_MEADOW_WARP_PAD",
    0x64: "CS_DEST_KOKIRI_FOREST_FROM_CHAMBER_OF_SAGES",
    0x65: "CS_DEST_DESERT_COLOSSUS_FROM_NABOORU_CAPTURE",
    0x66: "CS_DEST_TEMPLE_OF_TIME_FRONT_OF_PEDESTAL",
    0x67: "CS_DEST_HYRULE_FIELD_TITLE_SCREEN",
    0x68: "CS_DEST_TITLE_SCREEN_DEMO",
    0x69: "CS_DEST_GRAVEYARD_SUNS_SONG_PART_2",
    0x6A: "CS_DEST_ROYAL_FAMILYS_TOMB_SUNS_SONG_PART_3",
    0x6B: "CS_DEST_GANONS_CASTLE_DISPEL_FOREST_BEAM",
    0x6C: "CS_DEST_GANONS_CASTLE_DISPEL_WATER_BEAM",
    0x6D: "CS_DEST_GANONS_CASTLE_DISPEL_SHADOW_BEAM",
    0x6E: "CS_DEST_GANONS_CASTLE_DISPEL_FIRE_BEAM",
    0x6F: "CS_DEST_GANONS_CASTLE_DISPEL_LIGHT_BEAM",
    0x70: "CS_DEST_GANONS_CASTLE_DISPEL_SPIRIT_BEAM",
    0x71: "CS_DEST_GANONS_CASTLE_DISPEL_BARRIER_CONDITONAL",
    0x72: "CS_DEST_HYRULE_FIELD_FROM_FAIRY_OCARINA",
    0x73: "CS_DEST_HYRULE_FIELD_FROM_IMPA_ESCORT",
    0x74: "CS_DEST_FROM_RAURU_FINAL_MESSAGE_CONDITIONAL",
    0x75: "CS_DEST_HYRULE_FIELD_CREDITS_SKY",
    0x76: "CS_DEST_GANON_BATTLE_TOWER_COLLAPSE",
    0x77: "CS_DEST_ZELDAS_COURTYARD_RECEIVE_LETTER",
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
    0x28: "OCARINA_ACTION_CHECK_SCARECROW_SPAWN",
    0x29: "OCARINA_ACTION_FREE_PLAY_DONE",
    0x2A: "OCARINA_ACTION_SCARECROW_LONG_RECORDING",
    0x2B: "OCARINA_ACTION_SCARECROW_LONG_PLAYBACK",
    0x2C: "OCARINA_ACTION_SCARECROW_SPAWN_RECORDING",
    0x2D: "OCARINA_ACTION_SCARECROW_SPAWN_PLAYBACK",
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
        ("CS_LIGHT_SETTING_LIST(%w1:1:s)", 2, None, 0,
              "CS_LIGHT_SETTING(%h2:1:x, %h1:1:s, %h2:2:s, %h1:2:x, %w1:3:x, %w1:4:x, %w1:5:x, %w1:6:x, %w1:7:x, %w1:8:x, %w1:9:x)", 12),
    86:
        ("CS_START_SEQ_LIST(%w1:1:s)", 2, None, 0,
              "CS_START_SEQ(%h2:1:x, %h1:1:s, %h2:2:s, %h1:2:x, %w1:3:x, %w1:4:x, %w1:5:x, %w1:6:x, %w1:7:x, %w1:8:x, %w1:9:x)", 12),
    87:
        ("CS_STOP_SEQ_LIST(%w1:1:s)", 2, None, 0,
              "CS_STOP_SEQ(%h2:1:x, %h1:1:s, %h2:2:s, %h1:2:x, %w1:3:x, %w1:4:x, %w1:5:x, %w1:6:x, %w1:7:x, %w1:8:x, %w1:9:x)", 12),
    124:
        ("CS_FADE_OUT_SEQ_LIST(%w1:1:s)", 2, None, 0,
              "CS_FADE_OUT_SEQ(%h2:1:x, %h1:1:s, %h2:2:s, %h1:2:x, %w1:3:x, %w1:4:x, %w1:5:x, %w1:6:x, %w1:7:x, %w1:8:x, %w1:9:x)", 12),
    9:
        ("CS_RUMBLE_CONTROLLER_LIST(%w1:1:s)", 2, None, 0,
              "CS_RUMBLE_CONTROLLER(%h2:1:x, %h1:1:s, %h2:2:s, %b2:2:x, %b1:2:x, %b4:3:x, %b3:3:x, %h1:3:x)", 3),
    140:
        ("CS_TIME_LIST(%w1:1:s)", 2, None, 0,
              "CS_TIME(%h2:1:x, %h1:1:s, %h2:2:s, %b2:2:x, %b1:2:x, %w1:3:x)", 3),
    10:
        ("CS_PLAYER_CUE_LIST(%w1:1:s)", 2, None, 0,
              "CS_PLAYER_CUE(%h2:1:x, %h1:1:s, %h2:2:s, %h1:2:x, %h2:3:x, %h1:3:x, %w1:4:s, %w1:5:s, %w1:6:s, %w1:7:s, %w1:8:s, %w1:9:s, %w1:10:f, %w1:11:f, %w1:12:f)", 12),
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
        ("CS_ACTOR_CUE_LIST(%w1:0:s, %w1:1:s)", 2, None, 0,
              "CS_ACTOR_CUE(%h2:1:x, %h1:1:s, %h2:2:s, %h1:2:x, %h2:3:x, %h1:3:x, %w1:4:s, %w1:5:s, %w1:6:s, %w1:7:s, %w1:8:s, %w1:9:s, %w1:10:f, %w1:11:f, %w1:12:f)", 12),
    1:
        ("CS_CAM_EYE_SPLINE(%h1:1:s, %h2:2:s)", 3, 0, None,
              "CS_CAM_POINT(%b4:1:e0, %b3:1:x, %h1:1:s, %w1:2:f, %h2:3:s, %h1:3:s, %h2:4:s, %h1:4:x)", 4),
    5:
        ("CS_CAM_EYE_SPLINE_REL_TO_PLAYER(%h1:1:s, %h2:2:s)", 3, 0, None,
              "CS_CAM_POINT(%b4:1:e0, %b3:1:x, %h1:1:s, %w1:2:f, %h2:3:s, %h1:3:s, %h2:4:s, %h1:4:x)", 4),
    2:
        ("CS_CAM_AT_SPLINE(%h1:1:s, %h2:2:s)", 3, 0, None,
              "CS_CAM_POINT(%b4:1:e0, %b3:1:x, %h1:1:s, %w1:2:f, %h2:3:s, %h1:3:s, %h2:4:s, %h1:4:x)", 4),
    6:
        ("CS_CAM_AT_SPLINE_REL_TO_PLAYER(%h1:1:s, %h2:2:s)", 3, 0, None,
              "CS_CAM_POINT(%b4:1:e0, %b3:1:x, %h1:1:s, %w1:2:f, %h2:3:s, %h1:3:s, %h2:4:s, %h1:4:x)", 4),
    7:
        ("CS_CAM_EYE_LIST(%h2:1:x, %h1:1:s, %h2:2:s, %h1:2:x)", 3, None, -1,
              "CS_CAM_POINT(%b4:1:e0, %b3:1:x, %h1:1:s, %w1:2:f, %h2:3:s, %h1:3:s, %h2:4:s, %h1:4:x)", 4),
    8:
        ("CS_CAM_AT_LIST(%h2:1:x, %h1:1:s, %h2:2:s, %h1:2:x)", 3, None, -1,
              "CS_CAM_POINT(%b4:1:e0, %b3:1:x, %h1:1:s, %w1:2:f, %h2:3:s, %h1:3:s, %h2:4:s, %h1:4:x)", 4),
    1000:
        ("CS_DESTINATION(%h2:2:e1, %h1:2:s, %h2:3:s)", 4, None, None,
              None, None),
    19:
        ("CS_TEXT_LIST(%w1:1:s)", 2, None, 0,
              "__SPECIAL(CS_TEXT_LIST)", 3),
    45:
        ("CS_TRANSITION(%h2:2:x, %h1:2:s, %h2:3:s)", 4, None, None,
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
            result = cutscene_destinations[unsigned_value]
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
                cmd = "CS_TEXT_OCARINA_ACTION(%h2:1:e2, %h1:1:s, %h2:2:s, %h2:3:x)"
            else:
                cmd = "CS_TEXT(%h2:1:x, %h1:1:s, %h2:2:s, %h1:2:x, %h2:3:x, %h1:3:x)"
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
