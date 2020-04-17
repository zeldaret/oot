#ifndef _Z_EN_M_FIRE1_H_
#define _Z_EN_M_FIRE1_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinderMain capsule;
    /* 0x0198 */ f32 unk_0198;
} EnMFire1; // size = 0x019C

extern const ActorInit En_M_Fire1_InitVars;

#endif
