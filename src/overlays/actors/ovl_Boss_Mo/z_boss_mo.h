#ifndef _Z_BOSS_MO_H_
#define _Z_BOSS_MO_H_

#include <ultra64.h>
#include <global.h>

struct BossMo;

typedef void (*BossMoActionFunc)(struct BossMo*, GlobalContext*);

typedef struct BossMoParticle {
    /* 0x00 */ Vec3f unk_00;
    /* 0x0C */ Vec3f unk_0C;
    /* 0x18 */ Vec3f unk_18;
    /* 0x24 */ u8 unk_24;
    /* 0x25 */ u8 unk_25;
    /* 0x26 */ u8 unk_26;
    /* 0x27 */ u8 unk_27; // unused?
    /* 0x28 */ s16 unk_28; // unused?
    /* 0x2A */ s16 unk_2A;
    /* 0x2C */ s16 unk_2C;
    /* 0x2E */ s16 unk_2E;
    /* 0x30 */ f32 unk_30;
    /* 0x34 */ f32 unk_34;
    /* 0x38 */ f32 unk_38;
    /* 0x3C */ Vec3f* unk_3C;
} BossMoParticle; //size = 0x40

typedef struct BossMo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ Actor* unk_14C;
    /* 0x0150 */ BossMoActionFunc unk_150;
    /* 0x0154 */ u8 unk_154;
    /* 0x0155 */ char unk_155[3];
    /* 0x0158 */ s16 unk_158;
    /* 0x015A */ s16 unk_15A;
    /* 0x015C */ s16 unk_15C;
    /* 0x015E */ s16 unk_15E;
    /* 0x0160 */ s16 unk_160;
    /* 0x0162 */ s16 unk_162;
    /* 0x0164 */ s16 unk_164;
    /* 0x0166 */ s16 unk_166;
    /* 0x0168 */ s16 unk_168;
    /* 0x016A */ s16 unk_16A;
    /* 0x016C */ s16 unk_16C;
    /* 0x016E */ char unk_16E[4];
    /* 0x0172 */ s16 unk_172;
    /* 0x0174 */ s16 unk_174;
    /* 0x0176 */ s16 unk_176;
    /* 0x0178 */ char unk_178[2];
    /* 0x017A */ s16 unk_17A;
    /* 0x017C */ s16 unk_17C;
    /* 0x017E */ s16 unk_17E[5];
    /* 0x0180 */ f32 unk_188;
    /* 0x018C */ f32 unk_18C;
    /* 0x0190 */ char unk_190[0x10];
    /* 0x01A0 */ f32 unk_1A0;
    /* 0x01A4 */ f32 unk_1A4;
    /* 0x01A8 */ f32 unk_1A8;
    /* 0x01AC */ f32 unk_1AC;
    /* 0x01B0 */ f32 unk_1B0;
    /* 0x01B4 */ f32 unk_1B4;
    /* 0x01B8 */ f32 unk_1B8;
    /* 0x01BC */ f32 unk_1BC;
    /* 0x01C0 */ char unk_1C0[4];
    /* 0x01C4 */ f32 unk_1C4;
    /* 0x01C8 */ f32 unk_1C8;
    /* 0x01CC */ s16 unk_1CC;
    /* 0x01CE */ char unk_1CE[2];
    /* 0x01D0 */ char unk_1D0;
    /* 0x01D1 */ u8 unk_1D1;
    /* 0x01D2 */ u8 unk_1D2;
    /* 0x01D3 */ char unk_1D3;
    /* 0x01D4 */ Vec3f unk_1D4;
    /* 0x01E0 */ f32 unk_1E0;
    /* 0x01E4 */ Vec3f unk_1E4;
    /* 0x01F0 */ s16 unk_1F0;
    /* 0x01F2 */ s16 unk_1F2;
    /* 0x01F4 */ s16 unk_1F4;
    /* 0x01F6 */ char unk_1F6[2];
    /* 0x01F8 */ f32 unk_1F8[300];
    /* 0x06A8 */ Vec3f unk_6A8[41]; 
    /* 0x087C */ Vec3f unk_894[41];
    /* 0x0A68 */ Vec3f unk_A80[41];
    /* 0x0C60 */ Vec3s unk_C6C[41];
    /* 0x0D56 */ char unk_D62[2];
    /* 0x0D64 */ f32 unk_D64;
    /* 0x0D68 */ char unk_D68[4];
    /* 0x0D6C */ f32 unk_D6C;
    /* 0x0D70 */ Vec3f unk_D70[41];
    /* 0x0F5C */ char unk_F5C[4];
    /* 0x0F60 */ s16 unk_F60;
    /* 0x0F62 */ s16 unk_F62;
    /* 0x0F64 */ char unk_F64[4];
    /* 0x0F68 */ Vec3f unk_F68;
    /* 0x0F74 */ Vec3f unk_F74;
    /* 0x0F80 */ char unk_F80[0x90];
    /* 0x1010 */ Vec3f unk_1010;
    /* 0x101C */ ColliderJntSph collider1;
    /* 0x103C */ ColliderJntSphItem colliderItems[19];
    /* 0x14FC */ ColliderCylinder collider2;
    /* 0x1548 */ char unk_1548[0x44];
} BossMo; // size = 0x158C

extern const ActorInit Boss_Mo_InitVars;

#endif
