#ifndef _Z_EFF_SS_K_FIRE_H_
#define _Z_EFF_SS_K_FIRE_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ Vec3f velocity;
    /* 0x18 */ Vec3f accel;
    /* 0x24 */ s16 unk_24;
    /* 0x26 */ u8 unk_26;
} EffectSsKFireInitParams; // size = 0x28

#endif
