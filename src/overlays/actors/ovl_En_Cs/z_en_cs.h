#ifndef _Z_EN_CS_H_
#define _Z_EN_CS_H_

#include "ultra64.h"
#include "global.h"

struct EnCs;

typedef struct EnCs {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1F8];
} EnCs; // size = 0x0344

extern const ActorInit En_Cs_InitVars;

#endif
