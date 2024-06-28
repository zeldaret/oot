#!/usr/bin/env python3
#
#   message_data_static disassembler/decompiler
#

import argparse, re, struct
from typing import Callable, Dict, List, Optional, Tuple

import version_config

item_ids = {
    0x00 : "ITEM_DEKU_STICK",
    0x01 : "ITEM_DEKU_NUT",
    0x02 : "ITEM_BOMB",
    0x03 : "ITEM_BOW",
    0x04 : "ITEM_ARROW_FIRE",
    0x05 : "ITEM_DINS_FIRE",
    0x06 : "ITEM_SLINGSHOT",
    0x07 : "ITEM_OCARINA_FAIRY",
    0x08 : "ITEM_OCARINA_OF_TIME",
    0x09 : "ITEM_BOMBCHU",
    0x0A : "ITEM_HOOKSHOT",
    0x0B : "ITEM_LONGSHOT",
    0x0C : "ITEM_ARROW_ICE",
    0x0D : "ITEM_FARORES_WIND",
    0x0E : "ITEM_BOOMERANG",
    0x0F : "ITEM_LENS_OF_TRUTH",
    0x10 : "ITEM_MAGIC_BEAN",
    0x11 : "ITEM_HAMMER",
    0x12 : "ITEM_ARROW_LIGHT",
    0x13 : "ITEM_NAYRUS_LOVE",
    0x14 : "ITEM_BOTTLE_EMPTY",
    0x15 : "ITEM_BOTTLE_POTION_RED",
    0x16 : "ITEM_BOTTLE_POTION_GREEN",
    0x17 : "ITEM_BOTTLE_POTION_BLUE",
    0x18 : "ITEM_BOTTLE_FAIRY",
    0x19 : "ITEM_BOTTLE_FISH",
    0x1A : "ITEM_BOTTLE_MILK_FULL",
    0x1B : "ITEM_BOTTLE_RUTOS_LETTER",
    0x1C : "ITEM_BOTTLE_BLUE_FIRE",
    0x1D : "ITEM_BOTTLE_BUG",
    0x1E : "ITEM_BOTTLE_BIG_POE",
    0x1F : "ITEM_BOTTLE_MILK_HALF",
    0x20 : "ITEM_BOTTLE_POE",
    0x21 : "ITEM_WEIRD_EGG",
    0x22 : "ITEM_CHICKEN",
    0x23 : "ITEM_ZELDAS_LETTER",
    0x24 : "ITEM_MASK_KEATON",
    0x25 : "ITEM_MASK_SKULL",
    0x26 : "ITEM_MASK_SPOOKY",
    0x27 : "ITEM_MASK_BUNNY_HOOD",
    0x28 : "ITEM_MASK_GORON",
    0x29 : "ITEM_MASK_ZORA",
    0x2A : "ITEM_MASK_GERUDO",
    0x2B : "ITEM_MASK_TRUTH",
    0x2C : "ITEM_SOLD_OUT",
    0x2D : "ITEM_POCKET_EGG",
    0x2E : "ITEM_POCKET_CUCCO",
    0x2F : "ITEM_COJIRO",
    0x30 : "ITEM_ODD_MUSHROOM",
    0x31 : "ITEM_ODD_POTION",
    0x32 : "ITEM_POACHERS_SAW",
    0x33 : "ITEM_BROKEN_GORONS_SWORD",
    0x34 : "ITEM_PRESCRIPTION",
    0x35 : "ITEM_EYEBALL_FROG",
    0x36 : "ITEM_EYE_DROPS",
    0x37 : "ITEM_CLAIM_CHECK",
    0x38 : "ITEM_BOW_FIRE",
    0x39 : "ITEM_BOW_ICE",
    0x3A : "ITEM_BOW_LIGHT",
    0x3B : "ITEM_SWORD_KOKIRI",
    0x3C : "ITEM_SWORD_MASTER",
    0x3D : "ITEM_SWORD_BIGGORON",
    0x3E : "ITEM_SHIELD_DEKU",
    0x3F : "ITEM_SHIELD_HYLIAN",
    0x40 : "ITEM_SHIELD_MIRROR",
    0x41 : "ITEM_TUNIC_KOKIRI",
    0x42 : "ITEM_TUNIC_GORON",
    0x43 : "ITEM_TUNIC_ZORA",
    0x44 : "ITEM_BOOTS_KOKIRI",
    0x45 : "ITEM_BOOTS_IRON",
    0x46 : "ITEM_BOOTS_HOVER",
    0x47 : "ITEM_BULLET_BAG_30",
    0x48 : "ITEM_BULLET_BAG_40",
    0x49 : "ITEM_BULLET_BAG_50",
    0x4A : "ITEM_QUIVER_30",
    0x4B : "ITEM_QUIVER_40",
    0x4C : "ITEM_QUIVER_50",
    0x4D : "ITEM_BOMB_BAG_20",
    0x4E : "ITEM_BOMB_BAG_30",
    0x4F : "ITEM_BOMB_BAG_40",
    0x50 : "ITEM_STRENGTH_GORONS_BRACELET",
    0x51 : "ITEM_STRENGTH_SILVER_GAUNTLETS",
    0x52 : "ITEM_STRENGTH_GOLD_GAUNTLETS",
    0x53 : "ITEM_SCALE_SILVER",
    0x54 : "ITEM_SCALE_GOLDEN",
    0x55 : "ITEM_GIANTS_KNIFE",
    0x56 : "ITEM_ADULTS_WALLET",
    0x57 : "ITEM_GIANTS_WALLET",
    0x58 : "ITEM_DEKU_SEEDS",
    0x59 : "ITEM_FISHING_POLE",
    0x5A : "ITEM_SONG_MINUET",
    0x5B : "ITEM_SONG_BOLERO",
    0x5C : "ITEM_SONG_SERENADE",
    0x5D : "ITEM_SONG_REQUIEM",
    0x5E : "ITEM_SONG_NOCTURNE",
    0x5F : "ITEM_SONG_PRELUDE",
    0x60 : "ITEM_SONG_LULLABY",
    0x61 : "ITEM_SONG_EPONA",
    0x62 : "ITEM_SONG_SARIA",
    0x63 : "ITEM_SONG_SUN",
    0x64 : "ITEM_SONG_TIME",
    0x65 : "ITEM_SONG_STORMS",
    0x66 : "ITEM_MEDALLION_FOREST",
    0x67 : "ITEM_MEDALLION_FIRE",
    0x68 : "ITEM_MEDALLION_WATER",
    0x69 : "ITEM_MEDALLION_SPIRIT",
    0x6A : "ITEM_MEDALLION_SHADOW",
    0x6B : "ITEM_MEDALLION_LIGHT",
    0x6C : "ITEM_KOKIRI_EMERALD",
    0x6D : "ITEM_GORON_RUBY",
    0x6E : "ITEM_ZORA_SAPPHIRE",
    0x6F : "ITEM_STONE_OF_AGONY",
    0x70 : "ITEM_GERUDOS_CARD",
    0x71 : "ITEM_SKULL_TOKEN",
    0x72 : "ITEM_HEART_CONTAINER",
    0x73 : "ITEM_HEART_PIECE",
    0x74 : "ITEM_DUNGEON_BOSS_KEY",
    0x75 : "ITEM_DUNGEON_COMPASS",
    0x76 : "ITEM_DUNGEON_MAP",
    0x77 : "ITEM_SMALL_KEY",
    0x78 : "ITEM_MAGIC_JAR_SMALL",
    0x79 : "ITEM_MAGIC_JAR_BIG",
    0x7A : "ITEM_HEART_PIECE_2",
    0x7B : "ITEM_INVALID_1",
    0x7C : "ITEM_INVALID_2",
    0x7D : "ITEM_INVALID_3",
    0x7E : "ITEM_INVALID_4",
    0x7F : "ITEM_INVALID_5",
    0x80 : "ITEM_INVALID_6",
    0x81 : "ITEM_INVALID_7",
    0x82 : "ITEM_MILK",
    0x83 : "ITEM_RECOVERY_HEART",
    0x84 : "ITEM_RUPEE_GREEN",
    0x85 : "ITEM_RUPEE_BLUE",
    0x86 : "ITEM_RUPEE_RED",
    0x87 : "ITEM_RUPEE_PURPLE",
    0x88 : "ITEM_RUPEE_GOLD",
    0x89 : "ITEM_INVALID_8",
    0x8A : "ITEM_DEKU_STICKS_5",
    0x8B : "ITEM_DEKU_STICKS_10",
    0x8C : "ITEM_DEKU_NUTS_5",
    0x8D : "ITEM_DEKU_NUTS_10",
    0x8E : "ITEM_BOMBS_5",
    0x8F : "ITEM_BOMBS_10",
    0x90 : "ITEM_BOMBS_20",
    0x91 : "ITEM_BOMBS_30",
    0x92 : "ITEM_ARROWS_5",
    0x93 : "ITEM_ARROWS_10",
    0x94 : "ITEM_ARROWS_30",
    0x95 : "ITEM_DEKU_SEEDS_30",
    0x96 : "ITEM_BOMBCHUS_5",
    0x97 : "ITEM_BOMBCHUS_20",
    0x98 : "ITEM_DEKU_STICK_UPGRADE_20",
    0x99 : "ITEM_DEKU_STICK_UPGRADE_30",
    0x9A : "ITEM_DEKU_NUT_UPGRADE_30",
    0x9B : "ITEM_DEKU_NUT_UPGRADE_40",
    0xFC : "ITEM_SWORD_CS",
    0xFE : "ITEM_NONE_FE",
    0xFF : "ITEM_NONE",
}

# From https://stackoverflow.com/questions/241327/remove-c-and-c-comments-using-python
def remove_comments(text : str) -> str:
    def replacer(match : re.Match) -> str:
        string : str = match.group(0)
        if string.startswith("/"):
            return " "  # note: a space and not an empty string
        else:
            return string

    pattern = re.compile(
        r'//.*?$|/\*.*?\*/|\'(?:\\.|[^\\\'])*\'|"(?:\\.|[^\\"])*"', re.DOTALL | re.MULTILINE
    )
    return re.sub(pattern, replacer, text)

def read4(data : bytes, p : int) -> int:
    return struct.unpack(">I", data[p:p+4])[0]

def read_baserom_segment(version : str, name : str) -> bytes:
    data = None
    with open(f"extracted/{version}/baserom/{name}", "rb") as infile:
        data = infile.read()
    return data

def write_output_file(version : str, name : str, contents : str):
    with open(f"extracted/{version}/text/{name}", "w") as outfile:
        outfile.write(contents)

def read_sfx_ids():
    sfx_tables = (
        (0x0000, "playerbank_table.h"),
        (0x1000, "itembank_table.h"),
        (0x2000, "environmentbank_table.h"),
        (0x3000, "enemybank_table.h"),
        (0x4000, "systembank_table.h"),
        (0x5000, "ocarinabank_table.h"),
        (0x6000, "voicebank_table.h"),
    )

    sfx_ids = {}

    for base,header_name in sfx_tables:
        contents = None
        with open("include/tables/sfx/" + header_name, "r") as infile:
            contents = infile.read()
        contents = remove_comments(contents).replace("\\\n", "").strip()
        value = base
        for line in contents.split("\n"):
            line = line.strip()
            assert line.startswith("DEFINE_SFX(") and line.endswith(")")
            line = line[len("DEFINE_SFX("):-len(")")]
            args = [a.strip() for a in line.split(",")]
            assert len(args) == 5
            sfx_ids[value] = args[0]
            value += 1

    return sfx_ids

class MessageDecoder:
    def __init__(self, sfx_ids : Dict[int,str], control_end : int, control_codes : Dict[int, Tuple[str, str, Optional[Tuple[Callable[[int], str]]]]], extraction_charmap : Dict[int, str]) -> None:
        self.sfx_ids : Dict[int,str] = sfx_ids
        self.control_end : int = control_end
        self.control_codes : Dict[int, Tuple[str, str, Optional[Tuple[Callable[[int], str]]]]] = control_codes
        self.extraction_charmap : Dict[int, str] = extraction_charmap
        self.msg : Optional[bytes] = None

    def pop_char(self) -> int:
        # Implement in subclass
        raise NotImplementedError()

    def pop_char_end(self) -> int:
        # Implement in subclass
        raise NotImplementedError()

    def decode_char(self, c : int) -> str:
        # Implement in subclass
        raise NotImplementedError()

    def pop_byte(self) -> int:
        c, self.msg = self.msg[0], self.msg[1:]
        return c

    def pop_byte_end(self) -> int:
        c, self.msg = self.msg[-1], self.msg[:-1]
        return c

    def pop_2byte(self) -> int:
        u = self.pop_byte()
        l = self.pop_byte()
        return (u << 8) | l

    def pop_2byte_end(self) -> int:
        l = self.pop_byte_end()
        u = self.pop_byte_end()
        return (u << 8) | l

    def format_sfx_id(self, c : int) -> str:
        if c & 0x800:
            return self.sfx_ids[c & ~0x800]
        else:
            return f"{self.sfx_ids[c]} - SFX_FLAG"

    def format_item_id(self, c : int) -> str:
        return item_ids[c]

    def format_decimal(self, c : int) -> str:
        return str(c)

    def format_text_id(self, c : int) -> str:
        return f"0x{c:04X}"

    def format_bg_arg(self, c : int) -> str:
        return {
            0 : "X_LEFT",
            1 : "X_RIGHT",
        }[c]

    def format_bg_bits1(self, c : int) -> str:
        c1 = (c >> 4) & 0xF
        c2 = (c >> 0) & 0xF

        fgcol = {
            0 : "WHITE",
            1 : "DARK_RED",
            2 : "ORANGE",
            3 : "WHITE_3",
            4 : "WHITE_4",
            5 : "WHITE_5",
            6 : "WHITE_6",
            7 : "WHITE_7",
        }[c1]
        bgcol = {
            0 : "BLACK",
            1 : "GOLD",
            2 : "BLACK_2",
            3 : "BLACK_3",
        }[c2]

        return f"{fgcol}, {bgcol}"

    def format_bg_bits2(self, c : int) -> str:
        c1 = (c >> 4) & 0xF
        c2 = (c >> 0) & 0xF

        y_offset = {
            0 : "1",
            1 : "2",
        }[c1]

        return f"{y_offset}, {c2}"

    def emit_tokens(self, tokens : List[Tuple[str, str]]) -> str:
        if len(tokens) == 0:
            return "\"\""

        out = ""

        q_state = False
        s_state = False
        nindentlines = 0

        def maybe_enter_q():
            nonlocal out, q_state
            if not q_state:
                # If we're not in quotes, open quotes
                out += "\""
                q_state = True

        def maybe_exit_q(space=False):
            nonlocal out, q_state
            if q_state:
                # If we're in quotes, close quotes
                out += "\""
                if space:
                    # If the caller asked for a trailing space following closing quotes, also add it
                    out += " "
                q_state = False

        for tok_type,tok_dat in tokens:
            if tok_type in ("BOX_BREAK", "BOX_BREAK_DELAYED"):
                # Box break has special handling since it is preceded by a newline and followed by two newlines

                # Close quotes since we're about to newline
                maybe_exit_q()
                nindentlines = 0
                s_state = False

                # Emit box break control character surrounded by real newlines
                out += "\n" + tok_dat + "\n\n"
                continue

            if s_state:
                # Add a leading space before this token
                out += " "
                s_state = False

            if tok_type == "NEWLINE":
                # Coming up on a newline
                maybe_enter_q()
                # Add the escaped newline character and a real newline
                out += "\\n\"\n"
                # Always closes quotes since we're at EOL
                q_state = False
                # Indent the line if requested
                if nindentlines != 0:
                    out += "    "
                    nindentlines -= 1
            elif tok_type == "TEXT":
                # Coming up on text
                maybe_enter_q()
                # Emit text
                out += tok_dat
            else:
                # Control characters
                maybe_exit_q(space=True)

                # Emit the control character
                out += tok_dat

                if tok_type == "TWO_CHOICE":
                    # Start a new line and indent next two lines
                    nindentlines = 2-1
                    out += "\n    "
                elif tok_type == "THREE_CHOICE":
                    # Start a new line and indent next three lines
                    nindentlines = 3-1
                    out += "\n    "
                else:
                    # No particular special handling
                    # Signal to next token to add a trailing space
                    s_state = True

        # If the message ended with quotes open, close them
        maybe_exit_q()

        if out[-1] == "\n":
            out = out[:-1]

        return out

    def decode_ctrl(self, name : str, argfmt : str, formatters : Tuple[Callable[[int], str]]) -> str:
        if argfmt == "":
            # No args to handle, just return the control char name
            return name

        # Read and format args
        args : List[int] = []
        for a in argfmt:
            if a == "x":
                assert self.pop_byte() == 0
            else:
                args.append({
                    "b" : self.pop_byte,
                    "h" : self.pop_2byte,
                }[a]())
        return f"{name}({', '.join(formatters[i](a) for i,a in enumerate(args))})"

    def decode(self, msg : bytes) -> str:
        if len(msg) == 0:
            # Empty message without even an END?
            return "None"

        # Strip trailing 0 bytes (assumed padding)
        while msg[-1] == 0:
            msg = msg[:-1]

        self.msg = msg

        # Must end in an END control code
        assert self.pop_char_end() == self.control_end, msg

        tokens : List[Tuple[str, str]] = []
        token_run = ""
        def flush_text():
            nonlocal tokens, token_run
            if token_run != "":
                tokens.append(("TEXT", token_run))
                token_run = ""

        # Consume the message, transforming it into tokens
        while len(self.msg) != 0:
            c = self.pop_char()
            # print(f"{c:02X}", self.control_codes.get(c,None))

            if c in self.control_codes:
                # Hit a control character, flush current run of text
                flush_text()
                # Add a token for the control character
                tokens.append((self.control_codes[c][0], self.decode_ctrl(*self.control_codes[c])))
            else:
                # Not a control character, accumulate a run of text
                if c in self.extraction_charmap:
                    token_run += self.extraction_charmap[c]
                else:
                    token_run += self.decode_char(c)

        # Flush any remaining text
        flush_text()

        self.msg = None

        # Convert tokens to final decoded text
        return self.emit_tokens(tokens)

    def format_highscore(self, c : int) -> str:
        return {
            0 : "HS_HBA",
            1 : "HS_POE_POINTS",
            2 : "HS_FISHING",
            3 : "HS_HORSE_RACE",
            4 : "HS_MARATHON",
            5 : "HS_UNK_05",
            6 : "HS_DAMPE_RACE",
        }[c]

class MessageDecoderJPN(MessageDecoder):
    def __init__(self, sfx_ids : Dict[int, str]) -> None:
        control_end = 0x8170
        control_codes = {
            0x000A : ("NEWLINE",            "",     None),
            0x8170 : ("END",                "",     None),
            0x81A5 : ("BOX_BREAK",          "",     None),
            0x000B : ("COLOR",              "h",    (self.format_color,)),
            0x86C7 : ("SHIFT",              "xb",   (self.format_decimal,)),
            0x81CB : ("TEXTID",             "h",    (self.format_text_id,)),
            0x8189 : ("QUICKTEXT_ENABLE",   "",     None),
            0x818A : ("QUICKTEXT_DISABLE",  "",     None),
            0x86C8 : ("PERSISTENT",         "",     None),
            0x819F : ("EVENT",              "",     None),
            0x81A3 : ("BOX_BREAK_DELAYED",  "xb",   (self.format_decimal,)),
            0x81A4 : ("AWAIT_BUTTON_PRESS", "",     None),
            0x819E : ("FADE",               "xb",   (self.format_decimal,)),
            0x874F : ("NAME",               "",     None),
            0x81F0 : ("OCARINA",            "",     None),
            0x81F4 : ("FADE2",              "h",    (self.format_decimal,)),
            0x81F3 : ("SFX",                "h",    (self.format_sfx_id,)),
            0x819A : ("ITEM_ICON",          "xb",   (self.format_item_id,)),
            0x86C9 : ("TEXT_SPEED",         "xb",   (self.format_decimal,)),
            0x86B3 : ("BACKGROUND",         "xbbb", (self.format_bg_arg, self.format_bg_bits1, self.format_bg_bits2)),
            0x8791 : ("MARATHON_TIME",      "",     None),
            0x8792 : ("RACE_TIME",          "",     None),
            0x879B : ("POINTS",             "",     None),
            0x86A3 : ("TOKENS",             "",     None),
            0x8199 : ("UNSKIPPABLE",        "",     None),
            0x81BC : ("TWO_CHOICE",         "",     None),
            0x81B8 : ("THREE_CHOICE",       "",     None),
            0x86A4 : ("FISH_INFO",          "",     None),
            0x869F : ("HIGHSCORE",          "xb",   (self.format_highscore,)),
            0x81A1 : ("TIME",               "",     None),
        }
        extraction_charmap = {
            0x839F : "[A]",
            0x83A0 : "[B]",
            0x83A1 : "[C]",
            0x83A2 : "[L]",
            0x83A3 : "[R]",
            0x83A4 : "[Z]",
            0x83A5 : "[C-Up]",
            0x83A6 : "[C-Down]",
            0x83A7 : "[C-Left]",
            0x83A8 : "[C-Right]",
            0x83A9 : "▼",
            0x83AA : "[Control-Pad]",

            # Possibly from a SHIFT-JIS extension, python doesn't have builtin support
            0x86D3 : "┯",
        }
        super().__init__(sfx_ids, control_end, control_codes, extraction_charmap)
        self.pop_char = self.pop_2byte
        self.pop_char_end = self.pop_2byte_end

    def decode_char(self, c):
        assert c not in range(0x8440, 0x847F), "Hylian codepage unimplemented"
        return bytes([c>>8, c &0xFF]).decode("SHIFT-JIS")

    def format_color(self, c):
        c1 = c & 0xF
        c2 = c & ~0xF
        assert c2 == 0x0C00
        return {
            0 : "DEFAULT",
            1 : "RED",
            2 : "ADJUSTABLE",
            3 : "BLUE",
            4 : "LIGHTBLUE",
            5 : "PURPLE",
            6 : "YELLOW",
            7 : "BLACK",
        }[c1]

class MessageDecoderNES(MessageDecoder):
    def __init__(self, sfx_ids : Dict[int, str]) -> None:
        control_end = 0x02
        control_codes = {
            0x01 : ("NEWLINE",            "",    None),
            0x02 : ("END",                "",    None),
            0x04 : ("BOX_BREAK",          "",    None),
            0x05 : ("COLOR",              "b",   (self.format_color,)),
            0x06 : ("SHIFT",              "b",   (self.format_decimal,)),
            0x07 : ("TEXTID",             "h",   (self.format_text_id,)),
            0x08 : ("QUICKTEXT_ENABLE",   "",    None),
            0x09 : ("QUICKTEXT_DISABLE",  "",    None),
            0x0A : ("PERSISTENT",         "",    None),
            0x0B : ("EVENT",              "",    None),
            0x0C : ("BOX_BREAK_DELAYED",  "b",   (self.format_decimal,)),
            0x0D : ("AWAIT_BUTTON_PRESS", "",    None),
            0x0E : ("FADE",               "b",   (self.format_decimal,)),
            0x0F : ("NAME",               "",    None),
            0x10 : ("OCARINA",            "",    None),
            0x11 : ("FADE2",              "h",   (self.format_decimal,)),
            0x12 : ("SFX",                "h",   (self.format_sfx_id,)),
            0x13 : ("ITEM_ICON",          "b",   (self.format_item_id,)),
            0x14 : ("TEXT_SPEED",         "b",   (self.format_decimal,)),
            0x15 : ("BACKGROUND",         "bbb", (self.format_bg_arg, self.format_bg_bits1, self.format_bg_bits2)),
            0x16 : ("MARATHON_TIME",      "",    None),
            0x17 : ("RACE_TIME",          "",    None),
            0x18 : ("POINTS",             "",    None),
            0x19 : ("TOKENS",             "",    None),
            0x1A : ("UNSKIPPABLE",        "",    None),
            0x1B : ("TWO_CHOICE",         "",    None),
            0x1C : ("THREE_CHOICE",       "",    None),
            0x1D : ("FISH_INFO",          "",    None),
            0x1E : ("HIGHSCORE",          "b",   (self.format_highscore,)),
            0x1F : ("TIME",               "",    None),
        }
        extraction_charmap = {
            0x7F : '‾',
            0x80 : 'À',
            0x81 : 'î',
            0x82 : 'Â',
            0x83 : 'Ä',
            0x84 : 'Ç',
            0x85 : 'È',
            0x86 : 'É',
            0x87 : 'Ê',
            0x88 : 'Ë',
            0x89 : 'Ï',
            0x8A : 'Ô',
            0x8B : 'Ö',
            0x8C : 'Ù',
            0x8D : 'Û',
            0x8E : 'Ü',
            0x8F : 'ß',
            0x90 : 'à',
            0x91 : 'á',
            0x92 : 'â',
            0x93 : 'ä',
            0x94 : 'ç',
            0x95 : 'è',
            0x96 : 'é',
            0x97 : 'ê',
            0x98 : 'ë',
            0x99 : 'ï',
            0x9A : 'ô',
            0x9B : 'ö',
            0x9C : 'ù',
            0x9D : 'û',
            0x9E : 'ü',
            0x9F : '[A]',
            0xA0 : '[B]',
            0xA1 : '[C]',
            0xA2 : '[L]',
            0xA3 : '[R]',
            0xA4 : '[Z]',
            0xA5 : '[C-Up]',
            0xA6 : '[C-Down]',
            0xA7 : '[C-Left]',
            0xA8 : '[C-Right]',
            0xA9 : '▼',
            0xAA : '[Control-Pad]',
            0xAB : '[D-Pad]',
        }
        super().__init__(sfx_ids, control_end, control_codes, extraction_charmap)
        self.pop_char = self.pop_byte
        self.pop_char_end = self.pop_byte_end

    def decode_char(self, c : int) -> str:
        decoded = bytes([c]).decode("ASCII")
        # Escape quotes within the text itself
        if decoded == "\"":
            decoded = "\\\""
        return decoded

    def format_color(self, c : int) -> str:
        return {
            0x40 : "DEFAULT",
            0x41 : "RED",
            0x42 : "ADJUSTABLE",
            0x43 : "BLUE",
            0x44 : "LIGHTBLUE",
            0x45 : "PURPLE",
            0x46 : "YELLOW",
            0x47 : "BLACK",
        }[c]

class MessageTableDesc:
    def __init__(self, table_name : str, seg_name : str, decoder : MessageDecoder, parent : Optional[int]) -> None:
        self.table_name : str = table_name
        self.seg_name : str = seg_name
        self.decoder : MessageDecoder = decoder
        self.parent : Optional[int] = parent

class MessageTableEntry:
    SIZE = 8

    def __init__(self, text_id : int, box_type : int, box_pos : int, addr : int) -> None:
        self.text_id, self.box_type, self.box_pos, self.addr = text_id, box_type, box_pos, addr

    @staticmethod
    def from_bin(data : bytes) -> "MessageTableEntry":
        text_id,info,addr = struct.unpack(">HBxI", data)
        box_type = (info >> 4) & 0xF
        box_pos  = (info >> 0) & 0xF
        return MessageTableEntry(text_id, box_type, box_pos, addr)

class MessageEntry:
    def __init__(self, message_tables : List[Optional[MessageTableDesc]], text_id : int, box_type : int, box_pos : int) -> None:
        self.text_id : int = text_id
        self.box_type : int = box_type
        self.box_pos : int = box_pos
        self.data : List[Tuple[Optional[MessageDecoder], Optional[bytes]]] = [(None,None) for _ in message_tables]
        self.select = tuple(tbl is not None for tbl in message_tables)

    def box_type_str(self) -> str:
        return {
            0: "TEXTBOX_TYPE_BLACK",
            1: "TEXTBOX_TYPE_WOODEN",
            2: "TEXTBOX_TYPE_BLUE",
            3: "TEXTBOX_TYPE_OCARINA",
            4: "TEXTBOX_TYPE_NONE_BOTTOM",
            5: "TEXTBOX_TYPE_NONE_NO_SHADOW",
            0xB: "TEXTBOX_TYPE_CREDITS",
        }[self.box_type]

    def box_pos_str(self) -> str:
        return {
            0: "TEXTBOX_POS_VARIABLE",
            1: "TEXTBOX_POS_TOP",
            2: "TEXTBOX_POS_MIDDLE",
            3: "TEXTBOX_POS_BOTTOM",
        }[self.box_pos]

    def decode(self) -> str:
        selection = tuple(not (select and data == (None,None)) for select,data in zip(self.select,self.data))
        assert any(sel for sel in selection)

        defn = ""
        if all(sel for sel in selection):
            # Valid for all languages
            defn = "DEFINE_MESSAGE"
        elif selection == (True,False,True,True):
            # JPN only
            defn = "DEFINE_MESSAGE_JPN"
        elif selection == (False,True,True,True):
            # NES only
            defn = "DEFINE_MESSAGE_NES"
        else:
            # Other unimplemented cases
            assert False

        out = f"{defn}(0x{self.text_id:04X}, {self.box_type_str()}, {self.box_pos_str()},\n"
        out += "\n,\n".join(f"MSG(\n{decoder.decode(data)}\n)" if decoder is not None else "MSG(/* MISSING */)" for decoder,data in self.data)
        out += "\n)\n"
        return out

def collect_messages(message_tables : List[Optional[MessageTableDesc]], version : str,
                     config : version_config.VersionConfig, code_vram : int, code_bin : bytes):

    messages : Dict[int,MessageEntry] = {}

    all_text_ids : List[Optional[List[int]]] = [None for _ in range(len(message_tables))]

    for lang_num,desc in enumerate(message_tables):
        if desc is None:
            continue

        baserom_seg = read_baserom_segment(version, desc.seg_name)
        code_offset = config.variables[desc.table_name] - code_vram

        if desc.parent is None:
            # Complete table

            table_entries : List[MessageTableEntry] = []
            text_ids : List[int] = []

            while True:
                end = code_offset + MessageTableEntry.SIZE
                entry = MessageTableEntry.from_bin(code_bin[code_offset:end])
                code_offset = end

                table_entries.append(entry)
                text_ids.append(entry.text_id)

                if entry.text_id == 0xFFFF:
                    break

            all_text_ids[lang_num] = text_ids

            for i in range(len(table_entries) - 1):
                curr = table_entries[i + 0]
                next = table_entries[i + 1]

                curr_offset = curr.addr & ~0x0F000000
                next_offset = (next.addr & ~0x0F000000) if next.text_id != 0xFFFF else len(baserom_seg)
                size = next_offset - curr_offset

                if curr.text_id not in messages:
                    messages[curr.text_id] = MessageEntry(message_tables, curr.text_id, curr.box_type, curr.box_pos)
                messages[curr.text_id].data[lang_num] = (desc.decoder, baserom_seg[curr_offset : curr_offset+size])
        else:
            # Addresses only

            for text_id in all_text_ids[desc.parent][:-1]: # Exclude text id 0xFFFF
                if text_id in (0xFFFC,):
                    continue

                curr = read4(code_bin, code_offset + 0)
                next = read4(code_bin, code_offset + 4)
                code_offset += 4

                curr_offset = curr & ~0x0F000000
                next_offset = next & ~0x0F000000 if text_id != 0xFFFD else len(baserom_seg)
                size = next_offset - curr_offset

                # The text id is guaranteed to already exist
                messages[text_id].data[lang_num] = (desc.decoder, baserom_seg[curr_offset:curr_offset+size])

    return messages

def main():
    parser = argparse.ArgumentParser(description="Extract text from the baserom into .h files")
    parser.add_argument("version", help="OoT version")
    args = parser.parse_args()

    version : str = args.version

    config = version_config.load_version_config(version)
    code_vram = config.dmadata_segments["code"].vram

    # print(hex(code_vram))

    code_bin = read_baserom_segment(version, "code")

    sfx_ids = read_sfx_ids()
    jpn_decoder = MessageDecoderJPN(sfx_ids)
    nes_decoder = MessageDecoderNES(sfx_ids)

    message_tables : List[Optional[MessageTableDesc]] = [None for _ in range(4)] # JP, EN, FR, DE
    message_table_staff : MessageTableDesc = None

    if config.text_lang_pal:
        message_tables[0]   = None
        message_tables[1]   = MessageTableDesc("sNesMessageEntryTable",   "nes_message_data_static",   nes_decoder, None)
        message_tables[2]   = MessageTableDesc("sGerMessageEntryTable",   "ger_message_data_static",   nes_decoder, 1)
        message_tables[3]   = MessageTableDesc("sFraMessageEntryTable",   "fra_message_data_static",   nes_decoder, 1)
        message_table_staff = MessageTableDesc("sStaffMessageEntryTable", "staff_message_data_static", nes_decoder, None)
    else:
        message_tables[0]   = MessageTableDesc("sJpnMessageEntryTable",   "jpn_message_data_static",   jpn_decoder, None)
        message_tables[1]   = MessageTableDesc("sNesMessageEntryTable",   "nes_message_data_static",   nes_decoder, None)
        message_tables[2]   = None
        message_tables[3]   = None
        message_table_staff = MessageTableDesc("sStaffMessageEntryTable", "staff_message_data_static", nes_decoder, None)

    messages = collect_messages(message_tables, version, config, code_vram, code_bin)
    staff_messages = collect_messages([message_table_staff], version, config, code_vram, code_bin)

    message_data = []

    for text_id in sorted(messages.keys()):
        if text_id in (0xFFFC,0xFFFD):
            # Skip committed text ids
            continue
        message_data.append(messages[text_id].decode())

    message_data = "\n".join(message_data)
    message_data_staff = "\n".join(staff_messages[text_id].decode() for text_id in sorted(staff_messages.keys()))

    write_output_file(version, "message_data.h", message_data)
    write_output_file(version, "message_data_staff.h", message_data_staff)

if __name__ == "__main__":
    main()
