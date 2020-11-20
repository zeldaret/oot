#ifndef _Z_BOSS_DODONGO_H_
#define _Z_BOSS_DODONGO_H_

#include "ultra64.h"
#include "global.h"

struct BossDodongo;

typedef void (*BossDodongoActionFunc)(struct BossDodongo*, GlobalContext*);

typedef struct BossDodongo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ BossDodongoActionFunc actionFunc;
    /* 0x0194 */ u16 unk_194;
    /* 0x0196 */ s16 unk_196;
    /* 0x0198 */ s16 unk_198;
    /* 0x019A */ s16 unk_19A;
    /* 0x019C */ s16 unk_19C;
    /* 0x019E */ s16 unk_19E;
    /* 0x01A0 */ s16 unk_1A0;
    /* 0x01A2 */ s16 unk_1A2;
    /* 0x01A4 */ s16 unk_1A4;
    /* 0x01A6 */ char unk_1A6[0x4];
    /* 0x01AA */ s16 unk_1AA;
    /* 0x01AC */ s16 unk_1AC;
    /* 0x01AE */ s16 unk_1AE;
    /* 0x01B0 */ char unk_1B0[0x4];
    /* 0x01B4 */ s16 cutsceneCamera;
    /* 0x01B6 */ s16 unk_1B6;
    /* 0x01B8 */ s16 unk_1B8;
    /* 0x01BA */ s16 unk_1BA;
    /* 0x01BC */ s16 unk_1BC;//u16 unk_1BC;
    /* 0x01BE */ char unk_1BE[0x6];
    /* 0x01C4 */ s16 unk_1C4;
    /* 0x01C6 */ char unk_1C6[0x14];
    /* 0x01DA */ s16 unk_1DA; //u16 unk_1DA;
    /* 0x01DC */ char unk_1DC[0x6];
    /* 0x01E2 */ s8 unk_1E2;
    /* 0x01E3 */ s8 unk_1E3;
    /* 0x01E4 */ f32 unk_1E4;
    /* 0x01E8 */ f32 unk_1E8;//Vec3f?
    /* 0x01EC */ f32 unk_1EC;
    /* 0x01EC */ char unk_1F0[0x8];
    /* 0x01F8 */ f32 unk_1F8;
    /* 0x01FC */ char unk_1FC[0x8];
    /* 0x0204 */ f32 unk_204;
    /* 0x0208 */ f32 unk_208;
    /* 0x020C */ f32 unk_20C;
    /* 0x0210 */ char unk_210[0xC];
    /* 0x021C */ f32 unk_21C;
    /* 0x0220 */ f32 unk_220;
    /* 0x0224 */ f32 unk_224;
    /* 0x0228 */ f32 unk_228;
    /* 0x022C */ char unk_22C[0x1C0];
    /* 0x03EC */ Vec3f unk_3EC;
    /* 0x03F8 */ char unk_3F8[0xC];//Vec3f?
    /* 0x0404 */ Vec3f unk_404;
    /* 0x0410 */ Vec3f unk_410;
    /* 0x041C */ char unk_41C[0xC];
    /* 0x0428 */ Vec3f cameraEye;
    /* 0x0434 */ Vec3f cameraAt;
    /* 0x0440 */ ColliderJntSph collider;
    /* 0x0460 */ ColliderJntSphItem items[19];
    /* 0x0920 */ s32 unk_920;
    /* 0x0924 */ char unk_924[0xEFC];
} BossDodongo;   // size = 0x1820

extern const ActorInit Boss_Dodongo_InitVars;

#endif
