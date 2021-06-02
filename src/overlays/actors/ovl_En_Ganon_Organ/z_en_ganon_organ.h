#ifndef _Z_EN_GANON_ORGAN_H_
#define _Z_EN_GANON_ORGAN_H_

#include "ultra64.h"
#include "global.h"

struct EnGanonOrgan;

typedef struct EnGanonOrgan {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x4];
} EnGanonOrgan; // size = 0x0150

extern const ActorInit En_Ganon_Organ_InitVars;

#endif
