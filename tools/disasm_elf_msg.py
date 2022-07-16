#!/usr/bin/env python3

import struct, sys

item_ids = {
    0x00 : "ITEM_STICK",
    0x01 : "ITEM_NUT",
    0x02 : "ITEM_BOMB",
    0x03 : "ITEM_BOW",
    0x04 : "ITEM_ARROW_FIRE",
    0x05 : "ITEM_DINS_FIRE",
    0x06 : "ITEM_SLINGSHOT",
    0x07 : "ITEM_OCARINA_FAIRY",
    0x08 : "ITEM_OCARINA_TIME",
    0x09 : "ITEM_BOMBCHU",
    0x0A : "ITEM_HOOKSHOT",
    0x0B : "ITEM_LONGSHOT",
    0x0C : "ITEM_ARROW_ICE",
    0x0D : "ITEM_FARORES_WIND",
    0x0E : "ITEM_BOOMERANG",
    0x0F : "ITEM_LENS",
    0x10 : "ITEM_BEAN",
    0x11 : "ITEM_HAMMER",
    0x12 : "ITEM_ARROW_LIGHT",
    0x13 : "ITEM_NAYRUS_LOVE",
    0x14 : "ITEM_BOTTLE",
    0x15 : "ITEM_POTION_RED",
    0x16 : "ITEM_POTION_GREEN",
    0x17 : "ITEM_POTION_BLUE",
    0x18 : "ITEM_FAIRY",
    0x19 : "ITEM_FISH",
    0x1A : "ITEM_MILK_BOTTLE",
    0x1B : "ITEM_LETTER_RUTO",
    0x1C : "ITEM_BLUE_FIRE",
    0x1D : "ITEM_BUG",
    0x1E : "ITEM_BIG_POE",
    0x1F : "ITEM_MILK_HALF",
    0x20 : "ITEM_POE",
    0x21 : "ITEM_WEIRD_EGG",
    0x22 : "ITEM_CHICKEN",
    0x23 : "ITEM_LETTER_ZELDA",
    0x24 : "ITEM_MASK_KEATON",
    0x25 : "ITEM_MASK_SKULL",
    0x26 : "ITEM_MASK_SPOOKY",
    0x27 : "ITEM_MASK_BUNNY",
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
    0x32 : "ITEM_SAW",
    0x33 : "ITEM_SWORD_BROKEN",
    0x34 : "ITEM_PRESCRIPTION",
    0x35 : "ITEM_FROG",
    0x36 : "ITEM_EYEDROPS",
    0x37 : "ITEM_CLAIM_CHECK",
    0x38 : "ITEM_BOW_ARROW_FIRE",
    0x39 : "ITEM_BOW_ARROW_ICE",
    0x3A : "ITEM_BOW_ARROW_LIGHT",
    0x3B : "ITEM_SWORD_KOKIRI",
    0x3C : "ITEM_SWORD_MASTER",
    0x3D : "ITEM_SWORD_BGS",
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
    0x50 : "ITEM_BRACELET",
    0x51 : "ITEM_GAUNTLETS_SILVER",
    0x52 : "ITEM_GAUNTLETS_GOLD",
    0x53 : "ITEM_SCALE_SILVER",
    0x54 : "ITEM_SCALE_GOLDEN",
    0x55 : "ITEM_SWORD_KNIFE",
    0x56 : "ITEM_WALLET_ADULT",
    0x57 : "ITEM_WALLET_GIANT",
    0x58 : "ITEM_SEEDS",
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
    0x70 : "ITEM_GERUDO_CARD",
    0x71 : "ITEM_SKULL_TOKEN",
    0x72 : "ITEM_HEART_CONTAINER",
    0x73 : "ITEM_HEART_PIECE",
    0x74 : "ITEM_KEY_BOSS",
    0x75 : "ITEM_COMPASS",
    0x76 : "ITEM_DUNGEON_MAP",
    0x77 : "ITEM_KEY_SMALL",
    0x78 : "ITEM_MAGIC_SMALL",
    0x79 : "ITEM_MAGIC_LARGE",
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
    0x8A : "ITEM_STICKS_5",
    0x8B : "ITEM_STICKS_10",
    0x8C : "ITEM_NUTS_5",
    0x8D : "ITEM_NUTS_10",
    0x8E : "ITEM_BOMBS_5",
    0x8F : "ITEM_BOMBS_10",
    0x90 : "ITEM_BOMBS_20",
    0x91 : "ITEM_BOMBS_30",
    0x92 : "ITEM_ARROWS_SMALL",
    0x93 : "ITEM_ARROWS_MEDIUM",
    0x94 : "ITEM_ARROWS_LARGE",
    0x95 : "ITEM_SEEDS_30",
    0x96 : "ITEM_BOMBCHUS_5",
    0x97 : "ITEM_BOMBCHUS_20",
    0x98 : "ITEM_STICK_UPGRADE_20",
    0x99 : "ITEM_STICK_UPGRADE_30",
    0x9A : "ITEM_NUT_UPGRADE_30",
    0x9B : "ITEM_NUT_UPGRADE_40",
    0xFC : "ITEM_LAST_USED",
    0xFE : "ITEM_NONE_FE",
    0xFF : "ITEM_NONE",
}

def disas_elfmsgs(start):
    baserom = None
    with open("baserom.z64", "rb") as infile:
        baserom = bytearray(infile.read())

    branches = []
    pos = start

    while (True):
        print(f"/* {pos - start:04X} {((pos - start) // 4):3} */ ", end="")

        b0, b1, b2, b3 = struct.unpack(">BBBB", baserom[pos:pos+4])

        elf_message_types = {
            0x00: "CHECK",
            0x20: "UNK_1",
            0x40: "UNK_2",
            0x60: "SKIP",
            0xE0: "END",
        }

        cont = True
        branch_to = None

        # Get Type

        elf_message_type = b0 & 0xE0
        ARG_0 = elf_message_types[elf_message_type]

        if elf_message_type in [0, 0x20, 0x40, 0xE0]:
            if elf_message_type == 0xE0:
                cont = False
            ARG_1 = f"0x{(b2 & 0xFF):04X}"
        elif elf_message_type == 0x60:
            branch_to = 4 * (b2 & 0xFF)
            ARG_1 = (b2 & 0xFF)
        else:
            assert False , "Encountered unknown type"

        ARG_2 = f"{bool(b0 & 1)}".lower()

        # Get condition
        condition_type = b0 & 0x1E

        if condition_type == 0:
            if elf_message_type == 0xE0 and b1 == 0 and not (b0 & 1):
                print(f"ELF_MSG_END({ARG_1}),")
            else:
                print(f"ELF_MSG_FLAG({ARG_0}, {ARG_1}, {ARG_2}, 0x{b1:02X}), /* eventChkInf[{(b1 >> 4) & 0xF}] & 0x{1 << (b1 & 0xF):X} */")
            assert b3 == 0
        elif condition_type == 2:
            print(f"ELF_MSG_DUNGEON_ITEM({ARG_0}, {ARG_1}, {ARG_2}, {item_ids[b1]}),")
            assert b3 == 0
        elif condition_type == 4:
            print(f"ELF_MSG_ITEM({ARG_0}, {ARG_1}, {ARG_2}, {item_ids[b1]}, {item_ids[b3]}),")
        elif condition_type == 6:
            condition_other_type = b1 & 0xF0

            if condition_other_type == 0:
                print(f"ELF_MSG_STRENGTH_UPG({ARG_0}, {ARG_1}, {ARG_2}, {b1 & 0xF}),")
                assert b3 == 0
            elif condition_other_type == 0x10:
                print(f"ELF_MSG_BOOTS({ARG_0}, {ARG_1}, {ARG_2}, {item_ids[b3]}),")
                assert (b1 & 0xF) == 0
            elif condition_other_type == 0x20:
                print(f"ELF_MSG_SONG({ARG_0}, {ARG_1}, {ARG_2}, {item_ids[b3]}),")
                assert (b1 & 0xF) == 0
            elif condition_other_type == 0x30:
                print(f"ELF_MSG_MEDALLION({ARG_0}, {ARG_1}, {ARG_2}, {item_ids[b3]}),")
                assert (b1 & 0xF) == 0
            elif condition_other_type == 0x40:
                print(f"ELF_MSG_MAGIC({ARG_0}, {ARG_1}, {ARG_2}),")
                assert (b1 & 0xF) == 0
                assert b3 == 0
            else:
                assert False , "Encountered unknown condition (other) type"
        else:
            assert False , "Encountered unknown condition type"

        # Control flow

        if branch_to is not None:
            branches.append(branch_to)
        pos += 4
        if not cont:
            print("")
        if not cont and all([dst < pos - start for dst in branches]):
            break

disas_elfmsgs(int(sys.argv[1],16))
