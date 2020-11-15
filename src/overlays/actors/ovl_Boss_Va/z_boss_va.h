#ifndef _Z_BOSS_VA_H_
#define _Z_BOSS_VA_H_

#include <ultra64.h>
#include <global.h>

struct BossVa;

typedef void (*BossVaActionFunc)(struct BossVa*, GlobalContext*);

typedef struct {
    /* 0x00 */ Vec3f unk_00;
    /* 0x0C */ Vec3f unk_0C;
    /* 0x18 */ Vec3f unk_18;
    /* 0x24 */ u8 unk_24;
    /* 0x26 */ u16 unk_26;
    /* 0x28 */ s16 unk_28;
    /* 0x2A */ s16 unk_2A;
    /* 0x2C */ s16 unk_2C;
    /* 0x2E */ s16 unk_2E;
    /* 0x30 */ s16 unk_30[4];
    ///* 0x32 */ s16 unk_32;
    ///* 0x34 */ s16 unk_34;
    ///* 0x36 */ s16 unk_36;
    /* 0x38 */ s16 unk_38[4];
    ///* 0x3A */ s16 unk_3A;
    ///* 0x3C */ s16 unk_3C;
    ///* 0x3E */ s16 unk_3E;
    /* 0x40 */ f32 unk_40;
    /* 0x44 */ f32 unk_44[4];
    ///* 0x48 */ Vec3f unk_48;
    ///* 0x4C */ f32 unk_4C;
    ///* 0x50 */ f32 unk_50;
    /* 0x54 */ struct BossVa* unk_54;
} BossVaEffect; // size = 0x58

typedef struct BossVa {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ BossVaActionFunc actionFunc;
    /* 0x0194 */ u8 unk_194;
    /* 0x0195 */ u8 unk_195;
    /* 0x0196 */ s8 unk_196;
    /* 0x0197 */ u8 unk_197;
    /* 0x0198 */ s32 unk_198;
    /* 0x019C */ s16 unk_19C;
    /* 0x019E */ char unk_19E[0x2];
    /* 0x01A0 */ f32 unk_1A0;
    /* 0x01A4 */ f32 unk_1A4;
    /* 0x01A8 */ f32 unk_1A8;
    /* 0x01AC */ s16 unk_1AC;
    /* 0x01AE */ s16 unk_1AE;
    /* 0x01B0 */ s16 unk_1B0;
    /* 0x01B4 */ Vec3f unk_1B4;
    /* 0x01C0 */ Vec3f unk_1C0;
    /* 0x01CC */ Vec3f unk_1CC;
    /* 0x01D8 */ Vec3f unk_1D8;
    /* 0x01E4 */ s16 unk_1E4;
    /* 0x01E6 */ s16 unk_1E6;
    /* 0x01E8 */ s16 unk_1E8;
    /* 0x01EA */ s16 unk_1EA;
    /* 0x01EC */ s16 unk_1EC;
    /* 0x01EE */ s16 unk_1EE;
    /* 0x01F0 */ s16 unk_1F0;
    /* 0x01F2 */ s16 unk_1F2;
    /* 0x01F4 */ s16 unk_1F4;
    /* 0x01F6 */ Vec3s unk_1F6;
    ///* 0x01F8 */ s16 unk_1F8;
    /* 0x01FC */ Vec3f unk_1FC[10];
    /* 0x0274 */ Vec3f unk_274;
    /* 0x0280 */ Vec3f unk_280;
    /* 0x028C */ ColliderCylinder collider1;
    /* 0x02D8 */ ColliderJntSph collider2;
    /* 0x02F8 */ ColliderJntSphItem unk_2F8[1];
    /* 0x0338 */ ColliderQuad collider3;
} BossVa; // size = 0x03B8

extern const ActorInit Boss_Va_InitVars;

#endif
