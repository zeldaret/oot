#ifndef Z_EN_FIREFLY_H
#define Z_EN_FIREFLY_H

#include "ultra64.h"
#include "actor.h"

#include "assets/objects/object_firefly/object_firefly.h"

typedef enum EnFireflyType {
    EN_FIREFLY_TYPE_FIRE,
    EN_FIREFLY_TYPE_FIRE_CAN_PERCH, // Can perch when no longer on fire
    EN_FIREFLY_TYPE_NORMAL,
    EN_FIREFLY_TYPE_NORMAL_PERCHED,
    EN_FIREFLY_TYPE_ICE
} EnFireflyType;

struct EnFirefly;

typedef enum EnFireflyBodyPart {
    /* 0 */ EN_FIREFLY_BODY_PART_LEFT_WING,
    /* 1 */ EN_FIREFLY_BODY_PART_RIGHT_WING,
    /* 2 */ EN_FIREFLY_BODY_PART_BODY,
    /* 3 */ EN_FIREFLY_BODY_PART_MAX
} EnFireflyBodyPart;

typedef void (*EnFireflyActionFunc)(struct EnFirefly*, struct PlayState*);

typedef struct EnFirefly {
    /* 0x000 */ Actor actor;
    /* 0x14C */ Vec3f bodyPartsPos[EN_FIREFLY_BODY_PART_MAX];
    /* 0x170 */ SkelAnime skelAnime;
    /* 0x1B4 */ EnFireflyActionFunc actionFunc;
    /* 0x1B8 */ u8 effectsElementalType;
    /* 0x1B9 */ u8 bodyType;
    /* 0x1BA */ s16 timer;
    /* 0x1BC */ s16 targetPitch;
    /* 0x1BE */ Vec3s jointTable[KEESE_LIMB_MAX];
    /* 0x266 */ Vec3s morphTable[KEESE_LIMB_MAX];
    /* 0x310 */ f32 homeY;
    /* 0x314 */ ColliderJntSph collider;
    /* 0x334 */ ColliderJntSphElement colliderElements[1];
} EnFirefly; // size = 0x0374

#endif
