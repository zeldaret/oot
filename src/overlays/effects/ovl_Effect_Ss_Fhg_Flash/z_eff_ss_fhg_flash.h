#ifndef _Z_EFF_SS_FHGFLASH_h_
#define _Z_EFF_SS_FHGFLASH_h_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ Vec3f velocity;
    /* 0x18 */ Vec3f accel;
    /* 0x24 */ s16 unk_24;
    /* 0x26 */ u8 unk_26;
    /* 0x28 */ Actor* unk_28;
    /* 0x2C */ u8 unk_2C;
} EffectSsFhgFlashInitParams;

#endif
