#ifndef _Z_BOSS_SST_H_
#define _Z_BOSS_SST_H_

#include <ultra64.h>
#include <global.h>

struct BossSst;

typedef void (*BossSstActionFunc)(struct BossSst*, GlobalContext*);

typedef struct {
    /* 0x0000 */ Vec3f unk_00;
    /* 0x0010 */ Vec3f unk_0C;
    /* 0x0018 */ Vec3s unk_18;
    ///* 0x001A */ s16 unk_1A;
    ///* 0x001C */ s16 unk_1C;
    /* 0x001E */ u16 unk_1E;
    /* 0x0020 */ s16 unk_20;
    /* 0x0022 */ s16 unk_22;
    /* 0x0024 */ u8 unk_24;
    /* 0x0026 */ char unk_25[0x3];
} BossSstStruct1; // size = 0x28

typedef struct {
    /* 0x0000 */ Vec3f unk_00;
    /* 0x000C */ Vec3s unk_0C;
    /* 0x0014 */ f32 unk_14;
    /* 0x0018 */ s16 unk_18;
    /* 0x001A */ char unk_1A[0x2];
} BossSstStruct2; // size = 0x1C

typedef struct BossSst {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ BossSstActionFunc actionFunc;
    /* 0x0194 */ s8 unk_194;
    /* 0x0195 */ s8 unk_195;
    /* 0x0196 */ u8 unk_196;
    /* 0x0197 */ char unk_197[0x1];
    /* 0x0198 */ s16 unk_198;
    /* 0x019A */ s16 unk_19A;
    /* 0x019C */ s16 unk_19C;
    /* 0x019E */ s16 unk_19E;
    /* 0x01A0 */ s16 unk_1A0;
    /* 0x01A2 */ s16 unk_1A2;
    /* 0x01A4 */ s16 unk_1A4;
    /* 0x01A6 */ s16 unk_1A6;
    /* 0x01A8 */ Vec3s limbDrawTable[45];
    /* 0x02B6 */ Vec3s transitionDrawTable[45];
    /* 0x03C4 */ f32 unk_3C4;
    /* 0x03C8 */ Vec3f unk_3C8;
    /* 0x03D4 */ ColliderJntSph collider1;
    /* 0x03F4 */ ColliderJntSphItem colliderItems[11];
    /* 0x06B4 */ ColliderCylinder collider2;
    /* 0x0700 */ BossSstStruct1 unk_700[18];
    /* 0x09D0 */ s16 unk_9D0;
    /* 0x09D2 */ s16 unk_9D2;
    /* 0x09D4 */ BossSstStruct2 unk_9D4[7];
} BossSst; // size = 0x0A98

extern const ActorInit Boss_Sst_InitVars;

#endif
