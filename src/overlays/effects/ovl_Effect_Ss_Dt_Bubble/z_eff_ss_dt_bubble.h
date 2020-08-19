#ifndef _Z_EFF_SS_DT_BUBBLE_H_
#define _Z_EFF_SS_DT_BUBBLE_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ Vec3f velocity;
    /* 0x18 */ Vec3f accel;
} EffectSsDtBubbleInitParams; // size = 0x

#endif
