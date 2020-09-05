#ifndef _Z_EFF_SS_EN_ICE_H_
#define _Z_EFF_SS_EN_ICE_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x00 */ Actor* actor;
    /* 0x04 */ Vec3f pos;
    /* 0x10 */ Vec3f velocity;
    /* 0x1C */ Vec3f accel;
    /* 0x28 */ s32 unk_28;
    /* 0x2C */ 
} EffectSsEnIceInitParams; // size = 0x

#endif
