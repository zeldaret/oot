#ifndef _Z_ITEM_B_HEART_H_
#define _Z_ITEM_B_HEART_H_

#include <ultra64.h>
#include <global.h>

struct ItemBHeart;

typedef struct ItemBHeart {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x20];
} ItemBHeart; // size = 0x016C

extern const ActorInit Item_B_Heart_InitVars;

#endif
