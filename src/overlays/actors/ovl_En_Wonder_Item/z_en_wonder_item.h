#ifndef _Z_EN_WONDER_ITEM_H_
#define _Z_EN_WONDER_ITEM_H_

#include <ultra64.h>
#include <global.h>

struct EnWonderItem;

typedef struct EnWonderItem {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x84];
} EnWonderItem; // size = 0x01D0

extern const ActorInit En_Wonder_Item_InitVars;

#endif
