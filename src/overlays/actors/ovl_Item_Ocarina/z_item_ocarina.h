#ifndef _Z_ITEM_OCARINA_H_
#define _Z_ITEM_OCARINA_H_

#include <ultra64.h>
#include <global.h>

struct ItemOcarina;

typedef struct ItemOcarina {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x8];
} ItemOcarina; // size = 0x0154

extern const ActorInit Item_Ocarina_InitVars;

#endif
