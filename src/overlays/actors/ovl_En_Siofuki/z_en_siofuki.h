#ifndef _Z_EN_SIOFUKI_H_
#define _Z_EN_SIOFUKI_H_

#include "ultra64.h"
#include "global.h"

struct EnSiofuki;

typedef struct EnSiofuki {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x54];
} EnSiofuki; // size = 0x01A0

extern const ActorInit En_Siofuki_InitVars;

#endif
