#ifndef _Z_EFF_SS_HITMARK_H_
#define _Z_EFF_SS_HITMARK_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x00 */ u8 unk_00;
    /* 0x02 */ char unk_02[2];
    /* 0x04 */ s16 scale;
    /* 0x08 */ Vec3f pos;
} EffectSsHitMarkInitParams; // size = 0x14

#endif
