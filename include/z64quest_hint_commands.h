#ifndef Z64QUEST_HINT_COMMANDS_H
#define Z64QUEST_HINT_COMMANDS_H

#include "ultra64.h"

/*
 * Hint Command Types
 */

// Checks the condition and exits the script if the check passes
#define QUEST_HINT_TYPE_CHECK  0

// Checks a chain of conditions and only evaluates the last entry
// if all conditions leading up to it were also true
#define QUEST_HINT_TYPE_CHAIN  1

// Checks a chain of conditionals and will return a randomly chosen entry among
// the conditions that evaluated to true
#define QUEST_HINT_TYPE_RANDOM  2

// Checks the condition and skips forward by specified number of commands if the check passes
// Note that the amount of entries to skip is specified in the field where the textId would usually go
#define QUEST_HINT_TYPE_SKIP   3

// Always ends the script, returning the text id for this command
#define QUEST_HINT_TYPE_END    7

/*
 * Hint Condition Types
 */

// Check an eventChkInf flag
#define QUEST_HINT_CONDITION_FLAG          0

// Check a dungeon item (map, compass, boss key)
#define QUEST_HINT_CONDITION_DUNGEON_ITEM  1

// Check if an item is in an item slot
#define QUEST_HINT_CONDITION_ITEM          2

// "Other" conditions described below
#define QUEST_HINT_CONDITION_OTHER         3

/*
 * "Other" Condition Types
 */

// Check what strength upgrade has been obtained so far
#define QUEST_HINT_CONDITION_STRENGTH_UPG  0

// Check if specific boots have been obtained so far
#define QUEST_HINT_CONDITION_BOOTS         1

// Check if a particular song has been obtained
#define QUEST_HINT_CONDITION_SONG          2

// Check if a particular medallion has been obtained
#define QUEST_HINT_CONDITION_MEDALLION     3

// Check if the magic meter has been obtained
#define QUEST_HINT_CONDITION_MAGIC         4

/*
 * Byte pack macros
 */

#define HINT_B0(type, condType, tf)         \
    _SHIFTL(QUEST_HINT_TYPE_##type, 5, 3) | \
    _SHIFTL(condType, 1, 4) |               \
    _SHIFTL(tf, 0, 1)

#define HINT_B1(condType, data) \
    _SHIFTL(condType, 4, 4) |   \
    _SHIFTL(data, 0, 4)

#define HINT_B(data) \
    _SHIFTL(data, 0, 8)

/*
 * Command macros
 */

#define QUEST_HINT_FLAG(type, flag, tf, textId)       \
    {                                                 \
        HINT_B0(type, QUEST_HINT_CONDITION_FLAG, tf), \
        HINT_B(flag),                                 \
        HINT_B(textId),                               \
        HINT_B(0),                                    \
    }

#define QUEST_HINT_END(textId)            \
    QUEST_HINT_FLAG(END, 0, false, textId)

#define QUEST_HINT_DUNGEON_ITEM(type, itemId, tf, textId)     \
    {                                                         \
        HINT_B0(type, QUEST_HINT_CONDITION_DUNGEON_ITEM, tf), \
        HINT_B(itemId),                                       \
        HINT_B(textId),                                       \
        HINT_B(0),                                            \
    }

#define QUEST_HINT_ITEM(type, slotItemId, itemId, tf, textId) \
    {                                                         \
        HINT_B0(type, QUEST_HINT_CONDITION_ITEM, tf),         \
        HINT_B(slotItemId),                                   \
        HINT_B(textId),                                       \
        HINT_B(itemId),                                       \
    }

#define QUEST_HINT_STRENGTH_UPG(type, strUpg, tf, textId)   \
    {                                                       \
        HINT_B0(type, QUEST_HINT_CONDITION_OTHER, tf),      \
        HINT_B1(QUEST_HINT_CONDITION_STRENGTH_UPG, strUpg), \
        HINT_B(textId),                                     \
        HINT_B(0),                                          \
    }

#define QUEST_HINT_BOOTS(type, itemId, tf, textId)     \
    {                                                  \
        HINT_B0(type, QUEST_HINT_CONDITION_OTHER, tf), \
        HINT_B1(QUEST_HINT_CONDITION_BOOTS, 0),        \
        HINT_B(textId),                                \
        HINT_B(itemId),                                \
    }

#define QUEST_HINT_SONG(type, itemId, tf, textId)      \
    {                                                  \
        HINT_B0(type, QUEST_HINT_CONDITION_OTHER, tf), \
        HINT_B1(QUEST_HINT_CONDITION_SONG, 0),         \
        HINT_B(textId),                                \
        HINT_B(itemId),                                \
    }

#define QUEST_HINT_MEDALLION(type, itemId, tf, textId) \
    {                                                  \
        HINT_B0(type, QUEST_HINT_CONDITION_OTHER, tf), \
        HINT_B1(QUEST_HINT_CONDITION_MEDALLION, 0),    \
        HINT_B(textId),                                \
        HINT_B(itemId),                                \
    }

#define QUEST_HINT_MAGIC(type, tf, textId)             \
    {                                                  \
        HINT_B0(type, QUEST_HINT_CONDITION_OTHER, tf), \
        HINT_B1(QUEST_HINT_CONDITION_MAGIC, 0),        \
        HINT_B(textId),                                \
        HINT_B(0),                                     \
    }

#endif
