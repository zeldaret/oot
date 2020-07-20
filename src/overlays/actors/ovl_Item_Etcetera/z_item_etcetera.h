#ifndef _Z_ITEM_ETCETERA_H_
#define _Z_ITEM_ETCETERA_H_

#include <ultra64.h>
#include <global.h>

struct ItemEtcetera;

typedef void (*ItemEtceteraActionFunc)(struct ItemEtcetera*, GlobalContext*);
typedef void (*ItemEtceteraDrawFunc)(struct ItemEtcetera*, GlobalContext*);

typedef struct ItemEtcetera {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ItemEtceteraActionFunc actionFunc_14C;
    /* 0x0150 */ s16 drawId;
    /* 0x0152 */ s16 getItemId;
    /* 0x0154 */ u8 objBankIndex;
    /* 0x0155 */ char unk_155[0x3];
    /* 0x0158 */ ActorFunc currentDrawRoutine; // gets set to this->actor.draw
    /* 0x015C */ ItemEtceteraActionFunc actionFunc_15C;
} ItemEtcetera; // size = 0x0160

typedef enum {
    /* 0x00 */ ITEM_ETCETERA_BOTTLE,
    /* 0x01 */ ITEM_ETCETERA_LETTER,
    /* 0x02 */ ITEM_ETCETERA_SHIELD_HYLIAN,
    /* 0x03 */ ITEM_ETCETERA_QUIVER,
    /* 0x04 */ ITEM_ETCETERA_SCALE_SILVER,
    /* 0x05 */ ITEM_ETCETERA_SCALE_GOLD,
    /* 0x06 */ ITEM_ETCETERA_KEY_SMALL,
    /* 0x07 */ ITEM_ETCETERA_ARROW_FIRE
} ItemEtceteraType;

extern const ActorInit Item_Etcetera_InitVars;

#endif
