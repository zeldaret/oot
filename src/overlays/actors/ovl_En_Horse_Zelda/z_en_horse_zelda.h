#ifndef _Z_EN_HORSE_ZELDA_H_
#define _Z_EN_HORSE_ZELDA_H_

#include "ultra64.h"
#include "global.h"

struct EnHorseZelda;

typedef struct EnHorseZelda {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x15C];
} EnHorseZelda; // size = 0x02A8

extern const ActorInit En_Horse_Zelda_InitVars;

#endif
