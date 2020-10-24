#ifndef _Z_EN_IK_H_
#define _Z_EN_IK_H_

#include "ultra64.h"
#include "global.h"

struct EnIk;

typedef struct EnIk {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x390];
} EnIk; // size = 0x04DC

extern const ActorInit En_Ik_InitVars;

#endif
