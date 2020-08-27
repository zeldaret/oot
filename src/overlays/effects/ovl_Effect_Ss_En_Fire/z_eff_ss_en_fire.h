#ifndef _Z_EFF_SS_EN_FIRE_H_
#define _Z_EFF_SS_EN_FIRE_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ Vec3f velocity;
    /* 0x18 */ Vec3f accel;
} EffectSsEnFireInitParams; // size = 0x

#endif
