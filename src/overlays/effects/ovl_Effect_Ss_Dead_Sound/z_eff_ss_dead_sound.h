#ifndef _Z_EFF_SS_DEAD_SOUND_H_
#define _Z_EFF_SS_DEAD_SOUND_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ Vec3f velocity;
    /* 0x18 */ Vec3f accel;
} EffectSsDeadSoundInitParams; // size = 0x

#endif
