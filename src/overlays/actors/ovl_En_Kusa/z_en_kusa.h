#ifndef _Z_EN_KUSA_H_
#define _Z_EN_KUSA_H_

#include "ultra64.h"
#include "global.h"

struct EnKusa;

typedef struct EnKusa {
    /* 0x0000 */ Actor actor;
    /* 0x012B */ s8 kusaTexObjIndex;
    /* 0x014C */ char unk_14C[0x4];
    /* 0x0150 */ ColliderCylinder collider;
} EnKusa; // size = 0x01A0

extern const ActorInit En_Kusa_InitVars;

#endif
