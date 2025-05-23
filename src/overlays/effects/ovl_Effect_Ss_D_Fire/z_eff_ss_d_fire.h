#ifndef Z_EFF_SS_D_FIRE_H
#define Z_EFF_SS_D_FIRE_H

#include "ultra64.h"
#include "z64math.h"

typedef struct EffectSsDFireInitParams {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ Vec3f velocity;
    /* 0x18 */ Vec3f accel;
    /* 0x24 */ s16 scale;
    /* 0x26 */ s16 scaleStep;
    /* 0x28 */ s16 alpha;
    /* 0x2A */ s16 fadeDelay;
    /* 0x2C */ s32 life;
} EffectSsDFireInitParams; // size = 0x30

#endif
