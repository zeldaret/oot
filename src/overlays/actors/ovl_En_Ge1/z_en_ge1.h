#ifndef Z_EN_GE1_H
#define Z_EN_GE1_H

#include "ultra64.h"
#include "actor.h"

#include "assets/objects/object_ge1/object_ge1.h"

typedef enum EnGe1Type {
    /*  0 */ EN_GE1_TYPE_CHILD_ERA_WASTELAND_GATEKEEPER,
    /*  1 */ EN_GE1_TYPE_WASTELAND_GATEKEEPER,
    /*  4 */ EN_GE1_TYPE_SENTINEL = 4,
    /*  5 */ EN_GE1_TYPE_5,
    /* 69 */ EN_GE1_TYPE_HORSEBACK_ARCHERY = 69,
    /* 70 */ EN_GE1_TYPE_GTG_GATEKEEPER
} EnGe1Type;

struct EnGe1;

typedef void (*EnGe1ActionFunc)(struct EnGe1*, struct PlayState*);

typedef struct EnGe1 {
    /* 0x000 */ Actor actor;
    /* 0x14C */ ColliderCylinder collider;
    /* 0x198 */ SkelAnime skelAnime;
    /* 0x1DC */ Vec3s jointTable[OBJECT_GE1_LIMB_MAX];
    /* 0x23C */ Vec3s morphTable[OBJECT_GE1_LIMB_MAX];
    /* 0x29C */ Vec3s headRot;
    /* 0x2A2 */ Vec3s torsoRot;
    /* 0x2A8 */ s16 eyeTexIndex;
    /* 0x2AA */ s16 eyeTimer;
    /* 0x2AC */ u16 stateFlags;
    /* 0x2AE */ u8 hairType;
    /* 0x2AF */ u8 timer;
    /* 0x2B0 */ AnimationHeader* curAnim;
    /* 0x2B4 */ EnGe1ActionFunc actionFunc;
    /* 0x2B8 */ void (*playAnimFunc)(struct EnGe1*);
} EnGe1; // size = 0x2BC

#endif
