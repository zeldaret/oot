#ifndef _Z_EFF_SS_FHGFLASH_h_
#define _Z_EFF_SS_FHGFLASH_h_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ Vec3f velocity;
    /* 0x18 */ Vec3f accel;
    /* 0x24 */ s16 scale;
    /* 0x26 */ u8 unk_26;
    /* 0x28 */ Actor* actor;
    /* 0x2C */ u8 unk_2C;
} EffectSsFhgFlashInitParams; // size = 0x30

#endif
