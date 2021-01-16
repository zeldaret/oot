#ifndef _Z_EN_FIRE_ROCK_H_
#define _Z_EN_FIRE_ROCK_H_

#include "ultra64.h"
#include "global.h"

#include "overlays/actors/ovl_En_Encount2/z_en_encount2.h"


struct EnFireRock;

typedef struct EnFireRock {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x44];
    /* 0x0190 */ EnEncount2* spawner;
    /* 0x0194 */ char unk_198[0x4C];
} EnFireRock; // size = 0x01E0

extern const ActorInit En_Fire_Rock_InitVars;

#endif
