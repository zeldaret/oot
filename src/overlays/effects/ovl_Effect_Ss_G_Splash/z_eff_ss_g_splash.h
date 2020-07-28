#ifndef _Z_EFF_SS_G_SPLASH_H_
#define _Z_EFF_SS_G_SPLASH_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ u8 unk_0C;
    /* 0x0D */ u8 customColor;
    /* 0x0E */ s16 scale;
    /* 0x10 */ Color_RGBA8_n primColor;
    /* 0x14 */ Color_RGBA8_n envColor;
} EffectSsGSplashInitParams; // size = 0x18

#endif
