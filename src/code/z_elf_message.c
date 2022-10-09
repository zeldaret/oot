#include "global.h"
#include "z64hint_commands.h"

HintCmd sChildSariaHints[] = {
    HINT_CMD_STRENGTH_UPG(HINT_CMD_TYPE_SKIP, 0, false, 3),
    HINT_CMD_FLAG(HINT_CMD_TYPE_CHECK, EVENTCHKINF_37, false, 0x61),
    HINT_CMD_END(0x64),

    HINT_CMD_FLAG(HINT_CMD_TYPE_CHECK, EVENTCHKINF_25, false, 0x62),
    HINT_CMD_FLAG(HINT_CMD_TYPE_CHECK, EVENTCHKINF_37, false, 0x63),
    HINT_CMD_FLAG(HINT_CMD_TYPE_CHECK, EVENTCHKINF_43, false, 0x65),
    HINT_CMD_MEDALLION(HINT_CMD_TYPE_CHECK, ITEM_MEDALLION_FOREST, false, 0x66),
    HINT_CMD_MEDALLION(HINT_CMD_TYPE_CHECK, ITEM_MEDALLION_FIRE, false, 0x66),
    HINT_CMD_MEDALLION(HINT_CMD_TYPE_CHECK, ITEM_MEDALLION_WATER, false, 0x66),
    HINT_CMD_SONG(HINT_CMD_TYPE_CHECK, ITEM_SONG_STORMS, false, 0x67),
    HINT_CMD_MEDALLION(HINT_CMD_TYPE_CHECK, ITEM_MEDALLION_SPIRIT, false, 0x68),
    HINT_CMD_MEDALLION(HINT_CMD_TYPE_CHECK, ITEM_MEDALLION_SHADOW, false, 0x68),
    HINT_CMD_END(0x69),
};

HintCmd sAdultSariaHints[] = {
    HINT_CMD_MEDALLION(HINT_CMD_TYPE_CHECK, ITEM_MEDALLION_FOREST, false, 0x6A),
    HINT_CMD_MEDALLION(HINT_CMD_TYPE_CHECK, ITEM_MEDALLION_FIRE, false, 0x6B),
    HINT_CMD_MEDALLION(HINT_CMD_TYPE_CHECK, ITEM_MEDALLION_WATER, false, 0x6B),
    HINT_CMD_MEDALLION(HINT_CMD_TYPE_CHECK, ITEM_MEDALLION_SPIRIT, false, 0x6C),
    HINT_CMD_MEDALLION(HINT_CMD_TYPE_CHECK, ITEM_MEDALLION_SHADOW, false, 0x6C),
    HINT_CMD_END(0x6D),
};

u32 Hints_CheckCondition(HintCmd* hints) {
    s32 type = hints->byte0 & 0x1E;
    u16 flag;

    switch (type) {
        case (HINT_CONDITION_FLAG << 1):
            flag = 1 << (hints->byte1 & 0x0F);
            return ((hints->byte0 & 1) == 1) == ((flag & gSaveContext.eventChkInf[(hints->byte1 & 0xF0) >> 4]) != 0);

        case (HINT_CONDITION_DUNGEON_ITEM << 1):
            return ((hints->byte0 & 1) == 1) ==
                   (CHECK_DUNGEON_ITEM(hints->byte1 - ITEM_KEY_BOSS, gSaveContext.mapIndex) != 0);

        case (HINT_CONDITION_ITEM << 1):
            return ((hints->byte0 & 1) == 1) == (hints->byte3 == INV_CONTENT(hints->byte1));

        case (HINT_CONDITION_OTHER << 1):
            switch (hints->byte1 & 0xF0) {
                case (HINT_CONDITION_STRENGTH_UPG << 4):
                    return ((hints->byte0 & 1) == 1) == ((hints->byte1 & 0x0F) == CUR_UPG_VALUE(UPG_STRENGTH));

                case (HINT_CONDITION_BOOTS << 4):
                    return ((hints->byte0 & 1) == 1) ==
                           (CHECK_OWNED_EQUIP(EQUIP_TYPE_BOOTS,
                                              hints->byte3 - ITEM_BOOTS_KOKIRI + EQUIP_INV_BOOTS_KOKIRI) != 0);

                case (HINT_CONDITION_SONG << 4):
                    return ((hints->byte0 & 1) == 1) ==
                           (CHECK_QUEST_ITEM(hints->byte3 - ITEM_SONG_MINUET + QUEST_SONG_MINUET) != 0);

                case (HINT_CONDITION_MEDALLION << 4):
                    return ((hints->byte0 & 1) == 1) ==
                           (CHECK_QUEST_ITEM(hints->byte3 - ITEM_MEDALLION_FOREST + QUEST_MEDALLION_FOREST) != 0);

                case (HINT_CONDITION_MAGIC << 4):
                    return ((hints->byte0 & 1) == 1) == (((void)0, gSaveContext.isMagicAcquired) != 0);
            }
    }

    LOG_STRING("企画外 条件", "../z_elf_message.c", 156); // "Unplanned conditions"
    ASSERT(0, "0", "../z_elf_message.c", 157);

    return false;
}

u32 Hints_CheckConditionChain(HintCmd** hintsPtr) {
    u32 allConditionsMet = true;

    while (((*hintsPtr)->byte0 & 0xE0) == (HINT_CMD_TYPE_CHAIN << 5)) {
        // if any of the conditions checked in the chain are not met,
        // the whole chain is considered false
        if (!Hints_CheckCondition(*hintsPtr)) {
            allConditionsMet = false;
        }

        *hintsPtr += 1;
    }

    if (allConditionsMet) {
        return Hints_CheckCondition(*hintsPtr);
    } else {
        return false;
    }
}

u32 Hints_CheckRandomCondition(HintCmd** hintsPtr) {
    HintCmd* hints = *hintsPtr;
    u32 conditions[10];
    s32 i = 0;
    s32 totalChecked = 0;
    s32 rand;

    do {
        conditions[totalChecked] = Hints_CheckCondition(hints);
        // i is incremented if the condition was met
        i += conditions[totalChecked];
        totalChecked++;
        hints++;
    } while ((hints->byte0 & 0xE0) == (HINT_CMD_TYPE_RANDOM << 5));

    // if none of the conditions checked were satisfied, there are none to use
    if (i == 0) {
        return false;
    }

    // choose a random number between 0 and the total amount of conditions met
    rand = Rand_ZeroFloat(i);

    for (i = 0; i < totalChecked; i++) {
        // keep decrementing the random number until it reaches 0 then use that hint
        if (conditions[i]) {
            if (rand > 0) {
                rand--;
            } else {
                return true;
            }
        }

        *hintsPtr += 1;
    }

    return false;
}

u16 Hints_GetTextIdFromScript(HintCmd* hints) {
    while (true) {
        switch (hints->byte0 & 0xE0) {
            case (HINT_CMD_TYPE_CHECK << 5):
                if (Hints_CheckCondition(hints)) {
                    return hints->byte2 | 0x100;
                }
                break;

            case (HINT_CMD_TYPE_CHAIN << 5):
                if (Hints_CheckConditionChain(&hints)) {
                    return hints->byte2 | 0x100;
                }
                break;

            case (HINT_CMD_TYPE_RANDOM << 5):
                if (Hints_CheckRandomCondition(&hints)) {
                    return hints->byte2 | 0x100;
                }
                break;

            case (HINT_CMD_TYPE_SKIP << 5):
                if (Hints_CheckCondition(hints)) {
                    hints += hints->byte2; // skip the specified amount
                    hints--;               // decrement by 1 because it will be incremented again below
                }
                break;

            case (HINT_CMD_TYPE_END << 5):
                return hints->byte2 | 0x100;

            default:
                LOG_STRING("企画外 条件", "../z_elf_message.c", 281); // "Unplanned conditions"
                ASSERT(0, "0", "../z_elf_message.c", 282);
        }

        hints++;
    }
}

u16 Hints_GetSariaTextId(PlayState* play) {
    Player* player = GET_PLAYER(play);
    HintCmd* sariaHints;

    if (!LINK_IS_ADULT) {
        if (Actor_FindNearby(play, &player->actor, ACTOR_EN_SA, 4, 800.0f) == NULL) {
            sariaHints = sChildSariaHints;
        } else {
            return 0x0160; // Special text about Saria preferring to talk to you face-to-face
        }
    } else {
        sariaHints = sAdultSariaHints;
    }

    return Hints_GetTextIdFromScript(sariaHints);
}

u16 Hints_GetNaviTextId(PlayState* play) {
    if (play->naviHints == NULL) {
        return 0;
    } else {
        return Hints_GetTextIdFromScript(play->naviHints);
    }
}
