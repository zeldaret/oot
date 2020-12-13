#ifndef _Z_BOSS_GANON2_H_
#define _Z_BOSS_GANON2_H_

#include "ultra64.h"
#include "global.h"

struct BossGanon2;

typedef void (*BossGanon2ActionFunc)(struct BossGanon2*, GlobalContext*);

typedef struct BossGanon2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ BossGanon2ActionFunc actionFunc;
    /* 0x0194 */ char unk_194[0x8];
    /* 0x019C */ s16 unk_19C;
    /* 0x019E */ char unk_19E[0x4];
    /* 0x01A2 */ s16 unk_1A2[5];
    /* 0x01AC */ char unk_1AC[0x4];
    /* 0x01B0 */ f32 unk_1B0;
    /* 0x01B4 */ char unk_1B4[0x1C];
    /* 0x01D0 */ Vec3f unk_1D0;
    /* 0x01D0 */ Vec3f unk_1DC;
    /* 0x01E8 */ char unk_1E8[0x124];
    /* 0x030C */ f32 unk_30C;
    /* 0x0310 */ u8 unk_310;
    /* 0x0311 */ char unk_311[0x1];
    /* 0x0312 */ u8 unk_312;
    /* 0x0313 */ char unk_313[0x3];
    /* 0x0316 */ s16 unk_316;
    /* 0x0318 */ s16 unk_318;
    /* 0x031A */ char unk_31A[0xE];
    /* 0x0328 */ s16 unk_328;
    /* 0x032A */ char unk_32A[0x2];
    /* 0x032C */ f32 unk_32C;
    /* 0x0330 */ s16 unk_330;
    /* 0x0332 */ s16 unk_332;
    /* 0x0334 */ char unk_334[0x1];
    /* 0x0335 */ u8 unk_335;
    /* 0x0336 */ u8 unk_336;
    /* 0x0337 */ u8 unk_337;
    /* 0x0338 */ char unk_338[0x1];
    /* 0x0339 */ s8 unk_339;
    /* 0x033A */ char unk_33A[0x2];
    /* 0x033C */ f32 unk_33C;
    /* 0x0340 */ s16 unk_340;
    /* 0x0342 */ s16 unk_342;
    /* 0x0344 */ s16 unk_344;
    /* 0x0346 */ s16 unk_346;
    /* 0x0348 */ s16 unk_348[5];
    /* 0x0352 */ s16 unk_352[5];
    /* 0x035C */ f32 unk_35C;
    /* 0x0360 */ Vec3f unk_360;
    /* 0x036C */ f32 unk_36C;
    /* 0x0370 */ Vec3f unk_370;
    /* 0x037C */ char unk_37C[0xC];
    /* 0x0388 */ f32 unk_388;
    /* 0x038C */ char unk_38C[0x4];
    /* 0x0390 */ s16 unk_390;
    /* 0x0392 */ s16 unk_392;
    /* 0x0394 */ char unk_394[0x8];
    /* 0x039C */ s16 unk_39C;
    /* 0x039E */ s16 unk_39E;
    /* 0x03A0 */ char unk_3A0[0x84];
    /* 0x0424 */ ColliderJntSph unk_424;
    /* 0x0444 */ ColliderJntSph unk_444;
    /* 0x0464 */ ColliderJntSphItem unk_464[16];
    /* 0x0864 */ ColliderJntSphItem unk_864[2];
} BossGanon2; // size = 0x08E4

extern const ActorInit Boss_Ganon2_InitVars;

#endif
