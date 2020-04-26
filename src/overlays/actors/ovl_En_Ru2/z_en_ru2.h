#ifndef _Z_EN_RU2_H_
#define _Z_EN_RU2_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTable[23];
    /* 0x021A */ Vec3s transitionDrawTable[23];
    /* 0x02A4 */ s16 unk_2A4;
    /* 0x02A6 */ s16 unk_2A6;
    /* 0x02A8 */ s32 action;
    /* 0x02AC */ s32 drawConfig;
    /* 0x02B0 */ f32 unk_2B0;
    /* 0x02B4 */ u32 unk_2B4;
    /* 0x02B8 */ s32 unk_2B8;
    /* 0x02BC */ s32 unk_2BC;
    /* 0x02C0 */ u16 unk_2C0;
    /* 0x02C2 */ u8 unk_2C2;
    /* 0x02C3 */ u8 unk_2C3;
    /* 0x02C4 */ f32 unk_2C4;
    /* 0x02C8 */ ColliderCylinder collider;
} EnRu2; // size = 0x0314

extern const ActorInit En_Ru2_InitVars;

#endif
