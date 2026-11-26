#ifndef Z_EN_GE3_H
#define Z_EN_GE3_H

#include "ultra64.h"
#include "actor.h"

#include "assets/objects/object_geldb/object_geldb.h"

struct EnGe3;

typedef void (*EnGe3ActionFunc)(struct EnGe3*, struct PlayState*);

typedef struct EnGe3 {
    /* 0x000 */ Actor actor;
    /* 0x14C */ ColliderCylinder collider;
    /* 0x198 */ SkelAnime skelAnime;
    /* 0x1DC */ Vec3s jointTable[GERUDO_RED_LIMB_MAX];
    /* 0x26C */ Vec3s morphTable[GERUDO_RED_LIMB_MAX];
    /* 0x2FC */ s16 eyeTexIndex;
    /* 0x2FE */ s16 eyeTimer;
    /* 0x300 */ Vec3s headRot;
    /* 0x306 */ Vec3s torsoRot;
    /* 0x30C */ u16 stateFlags;
    /* 0x310 */ EnGe3ActionFunc actionFunc;
} EnGe3; // size = 0x314

#endif
