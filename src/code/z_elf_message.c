#include <ultra64.h>
#include <global.h>

// TODO: use macros to define elf messages once the format is fully documented
ElfMessage sChildSariaMsgs[] = {
    { 0x66, 0x00, 0x03, 0x00 }, { 0x00, 0x37, 0x61, 0x00 }, { 0xE0, 0x00, 0x64, 0x00 }, { 0x00, 0x25, 0x62, 0x00 },
    { 0x00, 0x37, 0x63, 0x00 }, { 0x00, 0x43, 0x65, 0x00 }, { 0x06, 0x30, 0x66, 0x66 }, { 0x06, 0x30, 0x66, 0x67 },
    { 0x06, 0x30, 0x66, 0x68 }, { 0x06, 0x20, 0x67, 0x65 }, { 0x06, 0x30, 0x68, 0x69 }, { 0x06, 0x30, 0x68, 0x6A },
    { 0xE0, 0x00, 0x69, 0x00 },
};

ElfMessage sAdultSariaMsgs[] = {
    { 0x06, 0x30, 0x6A, 0x66 }, { 0x06, 0x30, 0x6B, 0x67 }, { 0x06, 0x30, 0x6B, 0x68 },
    { 0x06, 0x30, 0x6C, 0x69 }, { 0x06, 0x30, 0x6C, 0x6A }, { 0xE0, 0x00, 0x6D, 0x00 },
};

#ifdef NON_MATCHING
// minor ordering and regalloc differences
u32 ElfMessage_CheckCondition(ElfMessage* msg) {
    u16 temp;

    switch (msg->byte0 & 0x1E) {
        case 0:
            temp = 1 << (msg->byte1 & 0x0F);
            return ((msg->byte0 & 1) == 1) == !!(gSaveContext.event_chk_inf[(msg->byte1 & 0xF0) >> 4] & temp);
        case 2:
            return ((msg->byte0 & 1) == 1) ==
                   !!(gBitFlags[msg->byte1 - ITEM_KEY_BOSS] & gSaveContext.dungeon_items[gSaveContext.dungeon_index]);
        case 4:
            return ((msg->byte0 & 1) == 1) == (msg->byte3 == INV_CONTENT(msg->byte1));
        case 6:
            switch (msg->byte1 & 0xF0) {
                case 0x00:
                    return ((msg->byte0 & 1) == 1) == ((msg->byte1 & 0x0F) == CUR_UPG_VALUE(UPG_STRENGTH));
                case 0x10:
                    return ((msg->byte0 & 1) == 1) ==
                           !!((gBitFlags[msg->byte3 - ITEM_BOOTS_KOKIRI] << gEquipShifts[EQUIP_BOOTS]) &
                              gSaveContext.equipment);
                case 0x20:
                    return ((msg->byte0 & 1) == 1) ==
                           !!(gBitFlags[msg->byte3 - ITEM_SONG_MINUET + 6] & gSaveContext.quest_items);
                case 0x30:
                    return ((msg->byte0 & 1) == 1) ==
                           !!(gBitFlags[msg->byte3 - ITEM_MEDALLION_FOREST] & gSaveContext.quest_items);
                case 0x40:
                    return ((msg->byte0 & 1) == 1) == !!gSaveContext.magic_acquired;
            }
    }

    // "Unplanned conditions"
    LOG_STRING("\"企画外 条件\"", "企画外 条件", "../z_elf_message.c", 156);
    __assert("0", "../z_elf_message.c", 157);

    return false;
}
#else
u32 ElfMessage_CheckCondition(ElfMessage* msg);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_elf_message/ElfMessage_CheckCondition.s")
#endif

u32 func_8006BE88(ElfMessage** msgp) {
    u32 temp = true;

    while (((*msgp)->byte0 & 0xE0) == 0x20) {
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
    ElfMessage* msg;
    u32 sp44[10];
    s32 temp1;
    s32 temp2;
    s32 temp3;

    msg = *msgp;
    temp1 = 0;
    temp2 = 0;
    do {
        sp44[temp2] = ElfMessage_CheckCondition(msg);
        temp1 += sp44[temp2];
        temp2++;
        msg++;
    } while ((msg->byte0 & 0xE0) == 0x40);

    if (temp1 == 0) {
        return false;
    }

    temp3 = Math_Rand_ZeroFloat(temp1);
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
            case 0x00:
                if (ElfMessage_CheckCondition(msg)) {
                    return msg->byte2 | 0x100;
                }
                break;
            case 0x20:
                if (func_8006BE88(&msg)) {
                    return msg->byte2 | 0x100;
                }
                break;
            case 0x40:
                if (func_8006BF1C(&msg)) {
                    return msg->byte2 | 0x100;
                }
                break;
            case 0x60:
                if (ElfMessage_CheckCondition(msg)) {
                    msg += msg->byte2;
                    msg--;
                }
                break;
            case 0xE0:
                return msg->byte2 | 0x100;
            default:
                // "Unplanned conditions"
                LOG_STRING("\"企画外 条件\"", "企画外 条件", "../z_elf_message.c", 281);
                __assert("0", "../z_elf_message.c", 282);
        }
        msg++;
    }
}

u16 ElfMessage_GetSariaText(GlobalContext* globalCtx) {
    Player* player = PLAYER;
    ElfMessage* msgs;

    if (LINK_IS_CHILD) {
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
