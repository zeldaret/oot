#ifndef Z_EFF_SS_BLAST_H
#define Z_EFF_SS_BLAST_H

#include "ultra64.h"
#include "color.h"
#include "z64math.h"

typedef struct EffectSsBlastParams {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ Vec3f velocity;
    /* 0x18 */ Vec3f accel;
    /* 0x24 */ Color_RGBA8 innerColor;
    /* 0x28 */ Color_RGBA8 outerColor;
    /* 0x2C */ s16 scale;
    /* 0x2E */ s16 scaleStep;
    /* 0x30 */ s16 scaleStepDecay;
    /* 0x32 */ s16 life;
} EffectSsBlastParams; // size = 0x34

#endif
