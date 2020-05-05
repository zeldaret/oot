#ifndef _Z_ITEM_SHIELD_H_
#define _Z_ITEM_SHIELD_H_

#include <ultra64.h>
#include <global.h>

struct ItemShield;

typedef struct ItemShield {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xC0];
} ItemShield; // size = 0x020C

extern const ActorInit Item_Shield_InitVars;

#endif
