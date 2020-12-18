#ifndef _Z_EN_EX_ITEM_H_
#define _Z_EN_EX_ITEM_H_

#include "ultra64.h"
#include "global.h"

struct EnExItem;

typedef struct EnExItem {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x14];
    /* 0x0160 */ s16 unk_160;
    /* 0x0162 */ char unk_165[0x22];
} EnExItem; // size = 0x0184

extern const ActorInit En_Ex_Item_InitVars;

#endif
