#ifndef Z_EN_WF_H
#define Z_EN_WF_H

#include "ultra64.h"
#include "actor.h"

struct EnWf;

typedef struct EnWf {
    /* 0x000 */ Actor actor;
    /* 0x14C */ Vec3s unk14C[10];
    /* 0x188 */ SkelAnime unk188;
    /* 0x1CC */ Vec3s unk1CC[22];
    /* 0x250 */ Vec3s unk250[22];
    /* 0x2D4 */ s32 unk2D4;
    /* 0x2D8 */ char pad2D8[4];
    /* 0x2DC */ void (*unk2DC)(struct EnWf*, struct PlayState*);
    /* 0x2E0 */ s16 unk2E0;
    /* 0x2E2 */ s16 unk2E2;
    /* 0x2E4 */ s16 unk2E4;
    /* 0x2E6 */ u8 unk2E6;
    /* 0x2E7 */ char pad2E7[1];
    /* 0x2E8 */ s32 unk2E8;
    /* 0x2EC */ f32 unk2EC;
    /* 0x2F0 */ char pad2F0[4];
    /* 0x2F4 */ f32 unk2F4;
    /* 0x2F8 */ s16 unk2F8;
    /* 0x2FA */ s16 unk2FA;
    /* 0x2FC */ s16 unk2FC;
    /* 0x2FE */ s16 unk2FE;
    /* 0x300 */ s16 unk300;
    /* 0x302 */ u8 unk302;
    /* 0x303 */ char pad303[1];
    /* 0x304 */ ColliderJntSph unk304;
    /* 0x324 */ ColliderJntSphElement unk324[4];
    /* 0x424 */ ColliderCylinder unk424;
    /* 0x470 */ ColliderCylinder unk470;
    /* 0x4BC */ Vec3f unk4BC;
    /* 0x4C8 */ Vec3f unk4C8;
    /* 0x4D4 */ char pad4D4[2];
    /* 0x4D6 */ s16 unk4D6;
    /* 0x4D8 */ char pad4D8[4];
} EnWf; // size = 0x4DC

#endif
