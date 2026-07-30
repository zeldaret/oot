#ifndef Z_EN_FIREFLY_H
#define Z_EN_FIREFLY_H

#include "ultra64.h"
#include "actor.h"

struct EnFirefly;

typedef enum EnFireflyBodyPart {
    /* 0 */ EN_FIREFLY_BODY_PART_LIMB_15,
    /* 1 */ EN_FIREFLY_BODY_PART_LIMB_21,
    /* 2 */ EN_FIREFLY_BODY_PART_LIMB_10,
    /* 3 */ EN_FIREFLY_BODY_PART_MAX
} EnFireflyBodyPart;

typedef void (*EnFireflyActionFunc)(struct EnFirefly*, struct PlayState*);

typedef struct EnFirefly {
    /* 0x000 */ Actor actor;
    /* 0x14C */ Vec3f bodyPartsPos[EN_FIREFLY_BODY_PART_MAX];
    /* 0x170 */ SkelAnime skelAnime;
    /* 0x1B4 */ EnFireflyActionFunc actionFunc;
    /* 0x1B8 */ u8 unk1B8;
    /* 0x1B9 */ u8 unk1B9;
    /* 0x1BA */ s16 unk1BA_timer;
    /* 0x1BC */ s16 unk1BC_targetRotX;
    /* 0x1BE */ Vec3s unk1BE[0x1C];
    /* 0x266 */ Vec3s unk266[0x1C];
    /* 0x310 */ f32 unk310_homeY;
    /* 0x314 */ ColliderJntSph collider;
    /* 0x334 */ ColliderJntSphElement colliderElements[1];
} EnFirefly; // size = 0x0374

#endif
