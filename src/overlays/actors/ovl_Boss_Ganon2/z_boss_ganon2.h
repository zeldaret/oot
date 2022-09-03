#ifndef Z_BOSS_GANON2_H
#define Z_BOSS_GANON2_H

#include "ultra64.h"
#include "global.h"

struct BossGanon2;

typedef void (*BossGanon2ActionFunc)(struct BossGanon2*, PlayState*);

typedef enum {
    /*  0 */ GANON_LIMB_NONE,
    /*  1 */ GANON_LIMB_ROOT,
    /*  2 */ GANON_LIMB_TORSO,
    /*  3 */ GANON_LIMB_LEFT_SHOULDER,
    /*  4 */ GANON_LIMB_LEFT_UPPER_ARM,
    /*  5 */ GANON_LIMB_LEFT_FOREARM,
    /*  6 */ GANON_LIMB_LEFT_WRIST,
    /*  7 */ GANON_LIMB_LEFT_SWORD,
    /*  8 */ GANON_LIMB_LEFT_HAND,
    /*  9 */ GANON_LIMB_RIGHT_SHOULDER,
    /* 10 */ GANON_LIMB_RIGHT_UPPER_ARM,
    /* 11 */ GANON_LIMB_RIGHT_FOREARM,
    /* 12 */ GANON_LIMB_RIGHT_WRIST,
    /* 13 */ GANON_LIMB_RIGHT_SWORD,
    /* 14 */ GANON_LIMB_RIGHT_HAND,
    /* 15 */ GANON_LIMB_NECK,
    /* 16 */ GANON_LIMB_JEWEL,
    /* 17 */ GANON_LIMB_SNOUT,
    /* 18 */ GANON_LIMB_OUTER_TEETH,
    /* 19 */ GANON_LIMB_MOUTH,
    /* 20 */ GANON_LIMB_INNER_TEETH,
    /* 21 */ GANON_LIMB_JAW,
    /* 22 */ GANON_LIMB_MIDDLE_HAIR_1,
    /* 23 */ GANON_LIMB_MIDDLE_HAIR_2,
    /* 24 */ GANON_LIMB_MIDDLE_HAIR_3,
    /* 25 */ GANON_LIMB_LEFT_HAIR_1,
    /* 26 */ GANON_LIMB_LEFT_HAIR_2,
    /* 27 */ GANON_LIMB_LEFT_HAIR_3,
    /* 28 */ GANON_LIMB_RIGHT_HAIR_1,
    /* 29 */ GANON_LIMB_RIGHT_HAIR_2,
    /* 30 */ GANON_LIMB_RIGHT_HAIR_3,
    /* 31 */ GANON_LIMB_EYES,
    /* 32 */ GANON_LIMB_HEAD,
    /* 33 */ GANON_LIMB_LEFT_HORN,
    /* 34 */ GANON_LIMB_RIGHT_HORN,
    /* 35 */ GANON_LIMB_PELVIS,
    /* 36 */ GANON_LIMB_LEFT_THIGH,
    /* 37 */ GANON_LIMB_LEFT_SHIN,
    /* 38 */ GANON_LIMB_LEFT_FOOT,
    /* 39 */ GANON_LIMB_RIGHT_THIGH,
    /* 40 */ GANON_LIMB_RIGHT_SHIN,
    /* 41 */ GANON_LIMB_RIGHT_FOOT,
    /* 42 */ GANON_LIMB_TAIL1,
    /* 43 */ GANON_LIMB_TAIL2,
    /* 44 */ GANON_LIMB_TAIL3,
    /* 45 */ GANON_LIMB_TAIL4,
    /* 46 */ GANON_LIMB_TAIL5,
    /* 47 */ GANON_LIMB_MAX
} GanonLimb;

typedef struct BossGanon2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ BossGanon2ActionFunc actionFunc;
    /* 0x0194 */ f32 unk_194;
    /* 0x0198 */ f32 unk_198;
    /* 0x019C */ s16 unk_19C;
    /* 0x019E */ char unk_19E[0x4];
    /* 0x01A2 */ s16 unk_1A2[5];
    /* 0x01AC */ s16 unk_1AC;
    /* 0x01B0 */ f32 unk_1B0;
    /* 0x01B4 */ f32 unk_1B4;
    /* 0x01B8 */ Vec3f unk_1B8;
    /* 0x01C4 */ Vec3f unk_1C4;
    /* 0x01D0 */ Vec3f unk_1D0;
    /* 0x01D0 */ Vec3f unk_1DC;
    /* 0x01E8 */ Vec3f unk_1E8;
    /* 0x01F4 */ Vec3f unk_1F4;
    /* 0x0200 */ Vec3f unk_200;
    /* 0x020C */ Vec3f unk_20C;
    /* 0x0218 */ Vec3f unk_218;
    /* 0x0224 */ f32 unk_224;
    /* 0x0228 */ f32 unk_228;
    /* 0x022C */ char unk_22C[0x8];
    /* 0x0234 */ Vec3f unk_234[16];
    /* 0x02F4 */ s16 unk_2F4[5];
    /* 0x02FE */ s16 unk_2FE[5];
    /* 0x0308 */ char unk_308[4];
    /* 0x030C */ f32 unk_30C;
    /* 0x0310 */ u8 unk_310;
    /* 0x0311 */ u8 unk_311;
    /* 0x0312 */ u8 unk_312;
    /* 0x0313 */ u8 unk_313; // "look_on"
    /* 0x0314 */ u8 unk_314;
    /* 0x0316 */ s16 unk_316; // "no_hit_time"
    /* 0x0318 */ s16 unk_318;
    /* 0x031A */ s16 unk_31A;
    /* 0x031C */ s16 unk_31C;
    /* 0x0320 */ f32 unk_320;
    /* 0x0324 */ f32 unk_324;
    /* 0x0328 */ s16 unk_328;
    /* 0x032C */ f32 unk_32C;
    /* 0x0330 */ s16 unk_330;
    /* 0x0332 */ s16 unk_332;
    /* 0x0334 */ u8 unk_334;
    /* 0x0335 */ u8 unk_335;
    /* 0x0336 */ u8 unk_336;
    /* 0x0337 */ u8 unk_337;
    /* 0x0338 */ u8 unk_338;
    /* 0x0339 */ s8 unk_339;
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
    /* 0x037C */ f32 unk_37C;
    /* 0x0380 */ f32 unk_380;
    /* 0x0384 */ f32 unk_384;
    /* 0x0388 */ f32 unk_388;
    /* 0x038C */ f32 unk_38C;
    /* 0x0390 */ s16 unk_390;
    /* 0x0392 */ s16 unk_392;
    /* 0x0394 */ f32 unk_394;
    /* 0x0398 */ u32 unk_398;
    /* 0x039C */ s16 unk_39C;
    /* 0x039E */ s16 subCamId;
    /* 0x03A0 */ char unk_3A0[0x4];
    /* 0x03A4 */ Vec3f subCamEye;
    /* 0x03B0 */ Vec3f subCamAt;
    /* 0x03BC */ Vec3f subCamUp;
    /* 0x03C8 */ char unk_3C8[0x48];
    /* 0x0410 */ Vec3f unk_410;
    /* 0x041C */ f32 unk_41C;
    /* 0x0420 */ f32 unk_420;
    /* 0x0424 */ ColliderJntSph unk_424;
    /* 0x0444 */ ColliderJntSph unk_444;
    /* 0x0464 */ ColliderJntSphElement unk_464[16];
    /* 0x0864 */ ColliderJntSphElement unk_864[2];
} BossGanon2; // size = 0x08E4

#endif
