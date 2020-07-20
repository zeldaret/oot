#ifndef _Z_ITEM_ETCETERA_H_
#define _Z_ITEM_ETCETERA_H_

#include <ultra64.h>
#include <global.h>

struct ItemEtcetera;

typedef void (*ItemEtceteraActionFunc)(struct ItemEtcetera*, GlobalContext*);

typedef struct ItemEtcetera {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ItemEtceteraActionFunc actionFunc_14C;
    /* 0x0150 */ s16 drawMode;
    /* 0x0152 */ s16 getItemId;
    /* 0x0154 */ char unk_154[0x4];
    /* 0x0158 */ ItemEtceteraActionFunc actionFunc_158;
    /* 0x015C */ ItemEtceteraActionFunc actionFunc_15C;
} ItemEtcetera; // size = 0x0160

extern const ActorInit Item_Etcetera_InitVars;

#endif
