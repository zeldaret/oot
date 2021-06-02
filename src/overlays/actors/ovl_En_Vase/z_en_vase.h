#ifndef _Z_EN_VASE_H_
#define _Z_EN_VASE_H_

#include "ultra64.h"
#include "global.h"

struct EnVase;

typedef struct EnVase {
    /* 0x0000 */ Actor actor;
} EnVase; // size = 0x014C

extern const ActorInit En_Vase_InitVars;

#endif
