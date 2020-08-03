#ifndef _Z_EFF_SS_LIGHTNING_H_
#define _Z_EFF_SS_LIGHTNING_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ Color_RGBA8 primColor;
    /* 0x10 */ Color_RGBA8 envColor;
    /* 0x14 */ s16 scale;
    /* 0x16 */ s16 unk_16;
    /* 0x18 */ s16 life;
    /* 0x1A */ s16 unk_1A;
} EffectSsLightningInitParams; // size = 0x

#endif
