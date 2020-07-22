#ifndef _Z_EFF_SS_DEAD_SOUND_H_
#define _Z_EFF_SS_DEAD_SOUND_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ Vec3f velocity;
    /* 0x18 */ Vec3f accel;
    /* 0x24 */ u16 sfxId;
    /* 0x26 */ s16 lowerPriority;
    /* 0x28 */ s16 repeatMode;
    /* 0x26 */ s16 unused2;
    /* 0x2C */ s32 life;
} EffectSsDeadSoundInitParams; // size = 0x30

#endif
