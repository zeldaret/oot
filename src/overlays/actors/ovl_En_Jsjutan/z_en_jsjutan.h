#ifndef _Z_EN_JSJUTAN_H_
#define _Z_EN_JSJUTAN_H_

#include "ultra64.h"
#include "global.h"

struct EnJsjutan;

typedef struct EnJsjutan {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x2C];
} EnJsjutan; // size = 0x0178

extern const ActorInit En_Jsjutan_InitVars;

#endif
