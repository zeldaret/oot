#include "global.h"
#include "z64elf_message.h"

ElfMessage sChildSariaMsgs[] = {
/* 0000   0 */ ELF_MESSAGE_STRENGTH_UPG(BRANCHING, 3, false, 0), // TODO goron bracelet
/* 0004   1 */ ELF_MESSAGE_FLAG(CHECK, 0x0161, false, 0x37), /* eventChkInf[3] & 0x80 */
/* 0008   2 */ ELF_MESSAGE_END(0x0164),

/* 000C   3 */ ELF_MESSAGE_FLAG(CHECK, 0x0162, false, 0x25), /* eventChkInf[2] & 0x20 */
/* 0010   4 */ ELF_MESSAGE_FLAG(CHECK, 0x0163, false, 0x37), /* eventChkInf[3] & 0x80 */
/* 0014   5 */ ELF_MESSAGE_FLAG(CHECK, 0x0165, false, 0x43), /* eventChkInf[4] & 0x8 */
/* 0018   6 */ ELF_MESSAGE_MEDALLION(CHECK, 0x0166, false, ITEM_MEDALLION_FOREST),
/* 001C   7 */ ELF_MESSAGE_MEDALLION(CHECK, 0x0166, false, ITEM_MEDALLION_FIRE),
/* 0020   8 */ ELF_MESSAGE_MEDALLION(CHECK, 0x0166, false, ITEM_MEDALLION_WATER),
/* 0024   9 */ ELF_MESSAGE_SONG(CHECK, 0x0167, false, ITEM_SONG_STORMS),
/* 0028  10 */ ELF_MESSAGE_MEDALLION(CHECK, 0x0168, false, ITEM_MEDALLION_SPIRIT),
/* 002C  11 */ ELF_MESSAGE_MEDALLION(CHECK, 0x0168, false, ITEM_MEDALLION_SHADOW),
/* 0030  12 */ ELF_MESSAGE_END(0x0169),
};

ElfMessage sAdultSariaMsgs[] = {
/* 0000   0 */ ELF_MESSAGE_MEDALLION(CHECK, 0x016A, false, ITEM_MEDALLION_FOREST),
/* 0004   1 */ ELF_MESSAGE_MEDALLION(CHECK, 0x016B, false, ITEM_MEDALLION_FIRE),
/* 0008   2 */ ELF_MESSAGE_MEDALLION(CHECK, 0x016B, false, ITEM_MEDALLION_WATER),
/* 000C   3 */ ELF_MESSAGE_MEDALLION(CHECK, 0x016C, false, ITEM_MEDALLION_SPIRIT),
/* 0010   4 */ ELF_MESSAGE_MEDALLION(CHECK, 0x016C, false, ITEM_MEDALLION_SHADOW),
/* 0014   5 */ ELF_MESSAGE_END(0x016D),
};

u32 ElfMessage_CheckCondition(ElfMessage* msg) {
    s32 type = msg->byte0 & 0x1E;
    u16 flag;

    switch (type) {
        case (ELF_MESSAGE_CONDITION_FLAG << 1):
            flag = 1 << (msg->byte1 & 0x0F);
            return ((msg->byte0 & 1) == 1) == ((flag & gSaveContext.eventChkInf[(msg->byte1 & 0xF0) >> 4]) != 0);
        case (ELF_MESSAGE_CONDITION_DUNGEON_ITEM << 1):
            return ((msg->byte0 & 1) == 1) ==
                   (CHECK_DUNGEON_ITEM(msg->byte1 - ITEM_KEY_BOSS, gSaveContext.mapIndex) != 0);
        case (ELF_MESSAGE_CONDITION_ITEM << 1):
            return ((msg->byte0 & 1) == 1) == (msg->byte3 == INV_CONTENT(msg->byte1));
        case (ELF_MESSAGE_CONDITION_OTHER << 1):
            switch (msg->byte1 & 0xF0) {
                case (ELF_MESSAGE_CONDITION_STRENGTH_UPG << 4):
                    return ((msg->byte0 & 1) == 1) == ((msg->byte1 & 0x0F) == CUR_UPG_VALUE(UPG_STRENGTH));
                case (ELF_MESSAGE_CONDITION_BOOTS << 4):
                    return ((msg->byte0 & 1) == 1) ==
                           (((gBitFlags[msg->byte3 - ITEM_BOOTS_KOKIRI] << gEquipShifts[EQUIP_BOOTS]) &
                             gSaveContext.inventory.equipment) != 0);
                case (ELF_MESSAGE_CONDITION_SONG << 4):
                    return ((msg->byte0 & 1) == 1) ==
                           (CHECK_QUEST_ITEM(msg->byte3 - ITEM_SONG_MINUET + QUEST_SONG_MINUET) != 0);
                case (ELF_MESSAGE_CONDITION_MEDALLION << 4):
                    return ((msg->byte0 & 1) == 1) ==
                           (CHECK_QUEST_ITEM(msg->byte3 - ITEM_MEDALLION_FOREST + QUEST_MEDALLION_FOREST) != 0);
                case (ELF_MESSAGE_CONDITION_MAGIC << 4):
                    return ((msg->byte0 & 1) == 1) == (((void)0, gSaveContext.magicAcquired) != 0);
            }
    }

    LOG_STRING("企画外 条件", "../z_elf_message.c", 156); // "Unplanned conditions"
    ASSERT(0, "0", "../z_elf_message.c", 157);

    return false;
}

u32 func_8006BE88(ElfMessage** msgp) {
    u32 temp = true;

    while (((*msgp)->byte0 & 0xE0) == (ELF_MESSAGE_TYPE_UNK_1 << 5)) {
        if (!ElfMessage_CheckCondition(*msgp)) {
            temp = false;
        }
        *msgp += 1;
    }

    if (temp) {
        return ElfMessage_CheckCondition(*msgp);
    } else {
        return false;
    }
}

u32 func_8006BF1C(ElfMessage** msgp) {
    ElfMessage* msg = *msgp;
    u32 sp44[10];
    s32 temp1 = 0;
    s32 temp2 = 0;
    s32 temp3;

    do {
        sp44[temp2] = ElfMessage_CheckCondition(msg);
        temp1 += sp44[temp2];
        temp2++;
        msg++;
    } while ((msg->byte0 & 0xE0) == (ELF_MESSAGE_TYPE_UNK_2 << 5));

    if (temp1 == 0) {
        return false;
    }

    temp3 = Rand_ZeroFloat(temp1);
    for (temp1 = 0; temp1 < temp2; temp1++) {
        if (sp44[temp1]) {
            if (temp3 > 0) {
                temp3--;
            } else {
                return true;
            }
        }
        *msgp += 1;
    }

    return false;
}

u16 ElfMessage_GetTextFromMsgs(ElfMessage* msg) {
    while (true) {
        switch (msg->byte0 & 0xE0) {
            case (ELF_MESSAGE_TYPE_CHECK << 5):
                if (ElfMessage_CheckCondition(msg)) {
                    return msg->byte2 | 0x100;
                }
                break;
            case (ELF_MESSAGE_TYPE_UNK_1 << 5):
                if (func_8006BE88(&msg)) {
                    return msg->byte2 | 0x100;
                }
                break;
            case (ELF_MESSAGE_TYPE_UNK_2 << 5):
                if (func_8006BF1C(&msg)) {
                    return msg->byte2 | 0x100;
                }
                break;
            case (ELF_MESSAGE_TYPE_BRANCHING << 5):
                if (ElfMessage_CheckCondition(msg)) {
                    msg += msg->byte2;
                    msg--;
                }
                break;
            case (ELF_MESSAGE_TYPE_END << 5):
                return msg->byte2 | 0x100;
            default:
                LOG_STRING("企画外 条件", "../z_elf_message.c", 281); // "Unplanned conditions"
                ASSERT(0, "0", "../z_elf_message.c", 282);
        }
        msg++;
    }
}

u16 ElfMessage_GetSariaText(GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);
    ElfMessage* msgs;

    if (!LINK_IS_ADULT) {
        if (Actor_FindNearby(globalCtx, &player->actor, ACTOR_EN_SA, 4, 800.0f) == NULL) {
            msgs = sChildSariaMsgs;
        } else {
            return 0x0160; // Special text about Saria preferring to talk to you face-to-face
        }
    } else {
        msgs = sAdultSariaMsgs;
    }

    return ElfMessage_GetTextFromMsgs(msgs);
}

u16 ElfMessage_GetCUpText(GlobalContext* globalCtx) {
    if (globalCtx->cUpElfMsgs == NULL) {
        return 0;
    } else {
        return ElfMessage_GetTextFromMsgs(globalCtx->cUpElfMsgs);
    }
}
