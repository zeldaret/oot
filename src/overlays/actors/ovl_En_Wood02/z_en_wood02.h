#ifndef _Z_EN_WOOD02_H_
#define _Z_EN_WOOD02_H_

#include "ultra64.h"
#include "global.h"

struct EnWood02;

typedef struct EnWood02 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s16 unk_14C;
    /* 0x014E */ u8 unk_14E[0x5];
    /* 0x0153 */ u8 spawnType;
    /* 0x0154 */ u8 drawType;
    /* 0x0158 */ ColliderCylinder collider;
} EnWood02; // size = 0x01A4

extern const ActorInit En_Wood02_InitVars;

#endif
