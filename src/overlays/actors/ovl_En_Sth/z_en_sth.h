#ifndef _Z_EN_STH_H_
#define _Z_EN_STH_H_

#include "ultra64.h"
#include "global.h"

struct EnSth;

typedef struct EnSth {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x170];
} EnSth; // size = 0x02BC

extern const ActorInit En_Sth_InitVars;

#endif
