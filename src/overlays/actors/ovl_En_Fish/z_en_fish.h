#ifndef _Z_EN_FISH_H_
#define _Z_EN_FISH_H_

#include "ultra64.h"
#include "global.h"

struct EnFish;

typedef struct EnFish {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x108];
} EnFish; // size = 0x0254

extern const ActorInit En_Fish_InitVars;

#endif
