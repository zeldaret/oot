#ifndef _Z_EN_HONOTRAP_H_
#define _Z_EN_HONOTRAP_H_

#include "ultra64.h"
#include "global.h"

struct EnHonotrap;

typedef struct EnHonotrap {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xF8];
} EnHonotrap; // size = 0x0244

extern const ActorInit En_Honotrap_InitVars;

#endif
