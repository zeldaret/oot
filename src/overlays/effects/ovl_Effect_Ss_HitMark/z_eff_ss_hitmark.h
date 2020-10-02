#ifndef _Z_EFF_SS_HITMARK_H_
#define _Z_EFF_SS_HITMARK_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x00 */ s32 type;
    /* 0x04 */ s16 scale;
    /* 0x08 */ Vec3f pos;
} EffectSsHitMarkInitParams; // size = 0x14

#endif
