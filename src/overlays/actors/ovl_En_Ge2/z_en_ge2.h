#ifndef _Z_EN_GE2_H_
#define _Z_EN_GE2_H_

#include "ultra64.h"
#include "global.h"

struct EnGe2;

typedef struct EnGe2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1C0];
} EnGe2; // size = 0x030C

extern const ActorInit En_Ge2_InitVars;

#endif
