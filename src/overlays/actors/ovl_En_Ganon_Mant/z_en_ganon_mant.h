#ifndef _Z_EN_GANON_MANT_H_
#define _Z_EN_GANON_MANT_H_

#include "ultra64.h"
#include "global.h"

struct EnGanonMant;

typedef struct EnGanonMant {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x15BC];
} EnGanonMant; // size = 0x1708

extern const ActorInit En_Ganon_Mant_InitVars;

#endif
