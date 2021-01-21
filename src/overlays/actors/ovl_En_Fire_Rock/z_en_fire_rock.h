#ifndef _Z_EN_FIRE_ROCK_H_
#define _Z_EN_FIRE_ROCK_H_

#include "ultra64.h"
#include "global.h"

struct EnFireRock;

typedef struct EnFireRock {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ Vec3f unk14C;
    /* 0x0158 */ char unk_158[0x10];
    /* 0x0168 */ void* unk168;
    /* 0x016C */ f32 unk16C;
    /* 0x0170 */ char unk_170[0xC];
    /* 0x017C */ Vec3f unk17C;
    /* 0x0188 */ s16 unk188;
    /* 0x018A */ char unk18A[0x2];
    /* 0x018C */ s16 unk18C;
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
