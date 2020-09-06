#ifndef _Z_EFF_SS_EN_FIRE_H_
#define _Z_EFF_SS_EN_FIRE_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x00 */ Actor* actor;
    /* 0x04 */ Vec3f pos;
    /* 0x10 */ s16 unk_10;
    /* 0x12 */ s16 unk_12;
    /* 0x14 */ s16 reg8;
    /* 0x16 */ s16 reg7;
} EffectSsEnFireInitParams; // size = 0x18

#endif
