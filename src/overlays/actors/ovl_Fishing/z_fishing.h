#ifndef _Z_FISHING_H_
#define _Z_FISHING_H_

#include "ultra64.h"
#include "global.h"

struct Fishing;

typedef struct Fishing {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x404];
} Fishing; // size = 0x0550

extern const ActorInit Fishing_InitVars;

#endif
