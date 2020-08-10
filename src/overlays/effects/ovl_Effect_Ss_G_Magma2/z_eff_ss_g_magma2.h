#ifndef _Z_EFF_SS_G_MAGMA2_H_
#define _Z_EFF_SS_G_MAGMA2_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ Color_RGBA8 primColor;
    /* 0x10 */ Color_RGBA8 envColor;
    /* 0x14 */ s16 unk_14;
    /* 0x16 */ s16 unk_16;
    /* 0x18 */ s16 unk_18;
} EffectSsGMagma2InitParams; // size = 0x1C

#endif
