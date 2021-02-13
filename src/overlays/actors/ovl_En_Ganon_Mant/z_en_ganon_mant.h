#ifndef _Z_EN_GANON_MANT_H_
#define _Z_EN_GANON_MANT_H_

#include "ultra64.h"
#include "global.h"

struct EnGanonMant;

typedef struct {
    /* 0x000 */ Vec3f unk_0;        // 14C  points along dorf's collar, the "roots" of unK_C
    /* 0x00C */ Vec3f unk_C[12];    // 158  points down the cape, the "skeleton"
    /* 0x090 */ Vec3f unk_90[12];   // 1E8  normal vector rotations, z is unused
    /* 0x120 */ Vec3f unk_120[12];  // 278  in the range [-5,5], approaches 0, is the difference between previous points
    /* 0x1B0 */ u8 unk_1B0[12];     // 308
} MantSub14C; // size = 0x1C8

typedef struct EnGanonMant {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ MantSub14C unk_14C[12];
    /* 0x16AC */ f32 unk_16AC; // set by ganondorf to 57.0f, 2.0f
    /* 0x16B0 */ f32 unk_16B0; // " to -2.0f, -3.0f, -3.0f, -3.0f, -9.0f
    /* 0x16B4 */ f32 unk_16B4; // " to 0.25f, 0.25f, 0.25f, 1.25f, 0.25f
    /* 0x16B8 */ f32 unk_16B8; // " to -1.0f, -3.0f, -3.0f, -2.0f, -2.0f, -13.0f
    /* 0x16BC */ f32 unk_16BC; // " to 20.0f, D_808E4D40[random], 0
    /* 0x16C0 */ f32 unk_16C0; // " to 15.0f, 10, 0
    /* 0x16C4 */ f32 unk_16C4; // " to 18.0f, 18.0f, 26.0f, 15.0f, 18.0f
    /* 0x16C8 */ f32 unk_16C8; // " to -1.0f
    /* 0x16CC */ f32 unk_16CC;
    /* 0x16D0 */ f32 unk_16D0; // " to 0.0f, 20.0f, 10.0f, 13.0f
    /* 0x16D4 */ Vec3f unk_16D4;
    /* 0x16E0 */ Vec3f unk_16E0;
    /* 0x16EC */ Vec3f unk_16EC;
    /* 0x16F8 */ Vec3f unk_16F8;
    /* 0x1704 */ u8 unk_1704;
    /* 0x1705 */ u8 unk_1705;
    /* 0x1706 */ u8 frameTimer;
} EnGanonMant; // size = 0x1708

extern const ActorInit En_Ganon_Mant_InitVars;

#endif
