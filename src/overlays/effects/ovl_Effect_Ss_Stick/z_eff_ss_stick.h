#ifndef Z_EFF_SS_STICK_H
#define Z_EFF_SS_STICK_H

#include "ultra64.h"
#include "z64math.h"

typedef struct EffectSsStickInitParams {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ s16 yaw;
} EffectSsStickInitParams; // size = 0x10

#endif
