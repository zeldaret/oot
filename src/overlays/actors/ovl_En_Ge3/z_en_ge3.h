#ifndef _Z_EN_GE3_H_
#define _Z_EN_GE3_H_

#include "ultra64.h"
#include "global.h"

struct EnGe3;

typedef struct EnGe3 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1C8];
} EnGe3; // size = 0x0314

extern const ActorInit En_Ge3_InitVars;

#endif
