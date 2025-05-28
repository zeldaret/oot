#ifndef Z_EFF_SS_K_FIRE_H
#define Z_EFF_SS_K_FIRE_H

#include "ultra64.h"
#include "z64math.h"

typedef struct EffectSsKFireInitParams {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ Vec3f velocity;
    /* 0x18 */ Vec3f accel;
    /* 0x24 */ s16 scaleMax;
    /* 0x26 */ u8 type;
} EffectSsKFireInitParams; // size = 0x28

#endif
