#ifndef _Z_ITEM_ETCETERA_H_
#define _Z_ITEM_ETCETERA_H_

#include <ultra64.h>
#include <global.h>

struct ItemEtcetera;

typedef void (*ItemEtceteraActionFunc)(struct ItemEtcetera*, GlobalContext*);

typedef struct ItemEtcetera {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ItemEtceteraActionFunc futureActionFunc;
    /* 0x0150 */ s16 drawId;
    /* 0x0152 */ s16 getItemId;
    /* 0x0154 */ u8 objBankIndex;
    /* 0x0158 */ ActorFunc drawFunc;
    /* 0x015C */ ItemEtceteraActionFunc actionFunc;
} ItemEtcetera; // size = 0x0160

typedef enum {
    /* 0x00 */ ITEM_ETCETERA_BOTTLE,
    /* 0x01 */ ITEM_ETCETERA_LETTER,
    /* 0x02 */ ITEM_ETCETERA_SHIELD_HYLIAN,
    /* 0x03 */ ITEM_ETCETERA_QUIVER,
    /* 0x04 */ ITEM_ETCETERA_SCALE_SILVER,
    /* 0x05 */ ITEM_ETCETERA_SCALE_GOLD,
    /* 0x06 */ ITEM_ETCETERA_KEY_SMALL,
    /* 0x07 */ ITEM_ETCETERA_ARROW_FIRE,
    /* 0x08 */ ITEM_ETCETERA_RUPEE_GREEN_CHEST_GAME,
    /* 0x09 */ ITEM_ETCETERA_RUPEE_BLUE_CHEST_GAME,
    /* 0x0A */ ITEM_ETCETERA_RUPEE_RED_CHEST_GAME,
    /* 0x0B */ ITEM_ETCETERA_RUPEE_PURPLE_CHEST_GAME,
    /* 0x0C */ ITEM_ETCETERA_HEART_PIECE_CHEST_GAME,
    /* 0x0D */ ITEM_ETCETERA_KEY_SMALL_CHEST_GAME
} ItemEtceteraType;

extern const ActorInit Item_Etcetera_InitVars;

#endif
