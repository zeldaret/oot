#include "global.h"
#include "z64quest_hint_commands.h"

QuestHintCmd sChildSariaQuestHints[] = {
    QUEST_HINT_STRENGTH_UPG(SKIP, 0, false, 3),
    QUEST_HINT_FLAG(CHECK, EVENTCHKINF_37, false, 0x61),
    QUEST_HINT_END(0x64),

    QUEST_HINT_FLAG(CHECK, EVENTCHKINF_25, false, 0x62),
    QUEST_HINT_FLAG(CHECK, EVENTCHKINF_37, false, 0x63),
    QUEST_HINT_FLAG(CHECK, EVENTCHKINF_43, false, 0x65),
    QUEST_HINT_MEDALLION(CHECK, ITEM_MEDALLION_FOREST, false, 0x66),
    QUEST_HINT_MEDALLION(CHECK, ITEM_MEDALLION_FIRE, false, 0x66),
    QUEST_HINT_MEDALLION(CHECK, ITEM_MEDALLION_WATER, false, 0x66),
    QUEST_HINT_SONG(CHECK, ITEM_SONG_STORMS, false, 0x67),
    QUEST_HINT_MEDALLION(CHECK, ITEM_MEDALLION_SPIRIT, false, 0x68),
    QUEST_HINT_MEDALLION(CHECK, ITEM_MEDALLION_SHADOW, false, 0x68),
    QUEST_HINT_END(0x69),
};

QuestHintCmd sAdultSariaQuestHints[] = {
    QUEST_HINT_MEDALLION(CHECK, ITEM_MEDALLION_FOREST, false, 0x6A),
    QUEST_HINT_MEDALLION(CHECK, ITEM_MEDALLION_FIRE, false, 0x6B),
    QUEST_HINT_MEDALLION(CHECK, ITEM_MEDALLION_WATER, false, 0x6B),
    QUEST_HINT_MEDALLION(CHECK, ITEM_MEDALLION_SPIRIT, false, 0x6C),
    QUEST_HINT_MEDALLION(CHECK, ITEM_MEDALLION_SHADOW, false, 0x6C),
    QUEST_HINT_END(0x6D),
};

u32 QuestHint_CheckCondition(QuestHintCmd* hintCmd) {
    s32 type = hintCmd->byte0 & 0x1E;
    u16 flag;

    switch (type) {
        case (QUEST_HINT_CONDITION_FLAG << 1):
            flag = 1 << (hintCmd->byte1 & 0x0F);
            return ((hintCmd->byte0 & 1) == 1) ==
                   ((flag & gSaveContext.eventChkInf[(hintCmd->byte1 & 0xF0) >> 4]) != 0);

        case (QUEST_HINT_CONDITION_DUNGEON_ITEM << 1):
            return ((hintCmd->byte0 & 1) == 1) ==
                   (CHECK_DUNGEON_ITEM(hintCmd->byte1 - ITEM_DUNGEON_BOSS_KEY, gSaveContext.mapIndex) != 0);

        case (QUEST_HINT_CONDITION_ITEM << 1):
            return ((hintCmd->byte0 & 1) == 1) == (hintCmd->byte3 == INV_CONTENT(hintCmd->byte1));

        case (QUEST_HINT_CONDITION_OTHER << 1):
            switch (hintCmd->byte1 & 0xF0) {
                case (QUEST_HINT_CONDITION_STRENGTH_UPG << 4):
                    return ((hintCmd->byte0 & 1) == 1) == ((hintCmd->byte1 & 0x0F) == CUR_UPG_VALUE(UPG_STRENGTH));

                case (QUEST_HINT_CONDITION_BOOTS << 4):
                    return ((hintCmd->byte0 & 1) == 1) ==
                           (CHECK_OWNED_EQUIP(EQUIP_TYPE_BOOTS,
                                              hintCmd->byte3 - ITEM_BOOTS_KOKIRI + EQUIP_INV_BOOTS_KOKIRI) != 0);

                case (QUEST_HINT_CONDITION_SONG << 4):
                    return ((hintCmd->byte0 & 1) == 1) ==
                           (CHECK_QUEST_ITEM(hintCmd->byte3 - ITEM_SONG_MINUET + QUEST_SONG_MINUET) != 0);

                case (QUEST_HINT_CONDITION_MEDALLION << 4):
                    return ((hintCmd->byte0 & 1) == 1) ==
                           (CHECK_QUEST_ITEM(hintCmd->byte3 - ITEM_MEDALLION_FOREST + QUEST_MEDALLION_FOREST) != 0);

                case (QUEST_HINT_CONDITION_MAGIC << 4):
                    return ((hintCmd->byte0 & 1) == 1) == (((void)0, gSaveContext.isMagicAcquired) != 0);
            }
    }

    LOG_STRING("企画外 条件", "../z_elf_message.c", 156); // "Unplanned conditions"
    ASSERT(0, "0", "../z_elf_message.c", 157);

    return false;
}

u32 QuestHint_CheckConditionChain(QuestHintCmd** hintCmdPtr) {
    u32 allConditionsMet = true;

    while (((*hintCmdPtr)->byte0 & 0xE0) == (QUEST_HINT_TYPE_CHAIN << 5)) {
        // if any of the conditions checked in the chain are not met,
        // the whole chain is considered false
        if (!QuestHint_CheckCondition(*hintCmdPtr)) {
            allConditionsMet = false;
        }

        *hintCmdPtr += 1;
    }

    if (allConditionsMet) {
        return QuestHint_CheckCondition(*hintCmdPtr);
    } else {
        return false;
    }
}

u32 QuestHint_CheckRandomCondition(QuestHintCmd** hintCmdPtr) {
    QuestHintCmd* hintCmd = *hintCmdPtr;
    u32 conditions[10];
    s32 i = 0;
    s32 totalChecked = 0;
    s32 rand;

    do {
        conditions[totalChecked] = QuestHint_CheckCondition(hintCmd);
        // i is incremented if the condition was met
        i += conditions[totalChecked];
        totalChecked++;
        hintCmd++;
    } while ((hintCmd->byte0 & 0xE0) == (QUEST_HINT_TYPE_RANDOM << 5));

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

        *hintCmdPtr += 1;
    }

    return false;
}

u16 QuestHint_GetTextIdFromScript(QuestHintCmd* hintCmd) {
    while (true) {
        switch (hintCmd->byte0 & 0xE0) {
            case (QUEST_HINT_TYPE_CHECK << 5):
                if (QuestHint_CheckCondition(hintCmd)) {
                    return hintCmd->byte2 | 0x100;
                }
                break;

            case (QUEST_HINT_TYPE_CHAIN << 5):
                if (QuestHint_CheckConditionChain(&hintCmd)) {
                    return hintCmd->byte2 | 0x100;
                }
                break;

            case (QUEST_HINT_TYPE_RANDOM << 5):
                if (QuestHint_CheckRandomCondition(&hintCmd)) {
                    return hintCmd->byte2 | 0x100;
                }
                break;

            case (QUEST_HINT_TYPE_SKIP << 5):
                if (QuestHint_CheckCondition(hintCmd)) {
                    hintCmd += hintCmd->byte2; // skip the specified amount
                    hintCmd--;                 // decrement by 1 because it will be incremented again below
                }
                break;

            case (QUEST_HINT_TYPE_END << 5):
                return hintCmd->byte2 | 0x100;

            default:
                LOG_STRING("企画外 条件", "../z_elf_message.c", 281); // "Unplanned conditions"
                ASSERT(0, "0", "../z_elf_message.c", 282);
        }

        hintCmd++;
    }
}

u16 QuestHint_GetSariaTextId(PlayState* play) {
    Player* player = GET_PLAYER(play);
    QuestHintCmd* sariaQuestHints;

    if (!LINK_IS_ADULT) {
        if (Actor_FindNearby(play, &player->actor, ACTOR_EN_SA, 4, 800.0f) == NULL) {
            sariaQuestHints = sChildSariaQuestHints;
        } else {
            return 0x0160; // Special text about Saria preferring to talk to you face-to-face
        }
    } else {
        sariaQuestHints = sAdultSariaQuestHints;
    }

    return QuestHint_GetTextIdFromScript(sariaQuestHints);
}

u16 QuestHint_GetNaviTextId(PlayState* play) {
    if (play->naviQuestHints == NULL) {
        return 0;
    } else {
        return QuestHint_GetTextIdFromScript(play->naviQuestHints);
    }
}
