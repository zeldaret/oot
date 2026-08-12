#ifndef Z_EN_GE3_H
#define Z_EN_GE3_H

#include "ultra64.h"
#include "actor.h"

struct EnGe3;

typedef struct EnGe3 {
    /* 0x000 */ Actor actor;
    /* 0x14C */ ColliderCylinder collider;
    /* 0x198 */ SkelAnime skelAnime;
    /* 0x1DC */ Vec3s jointTable[24];
    /* 0x26C */ Vec3s morphTable[24];
    /* 0x2FC */ s16 eyeTexIndex;
    /* 0x2FE */ s16 eyeTimer;
    /* 0x300 */ Vec3s headRot;
    /* 0x306 */ Vec3s torsoRot;
    /* 0x30C */ u16 stateFlags;
    /* 0x30E */ char pad30E[2];
    /* 0x310 */ void (*actionFunc)(struct EnGe3*, struct PlayState*);
} EnGe3; // size = 0x314

#endif
