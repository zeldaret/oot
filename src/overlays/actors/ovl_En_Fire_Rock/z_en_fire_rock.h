#ifndef _Z_EN_FIRE_ROCK_H_
#define _Z_EN_FIRE_ROCK_H_

#include "ultra64.h"
#include "global.h"

struct EnFireRock;

typedef void (*EnFireRockActionFunc)(struct EnFireRock*, GlobalContext*);

typedef struct EnFireRock {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ Vec3f unk14C;
    /* 0x0158 */ f32 unk158;
    /* 0x015C */ f32 unk15C;
    /* 0x0160 */ f32 unk160;
    /* 0x0164 */ char unk164[0x4];
    /* 0x0168 */ EnFireRockActionFunc unk168;
    /* 0x016C */ f32 unk16C;
    /* 0x0170 */ f32 unk170;
    /* 0x0174 */ f32 unk174;
    /* 0x0178 */ f32 unk178;
    /* 0x017C */ Vec3f unk17C;
    /* 0x0188 */ s16 unk188;
    /* 0x018A */ s16 unk18A;
    /* 0x018C */ s16 unk18C;
    /* 0x018E */ u8 unk18E;
    /* 0x018F */ char unk18F[0x1];
    /* 0x0190 */ Actor* unk190;
    /* 0x0194 */ ColliderCylinder unk194;
} EnFireRock; // size = 0x01E0

extern const ActorInit En_Fire_Rock_InitVars;

#endif
/*
     0x0000  s16 radius;
    0x0002  s16 height;
     0x0004 s16 yShift;
     0x0006  Vec3s pos;
    */
