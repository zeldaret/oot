#ifndef Z_EN_GE2_H
#define Z_EN_GE2_H

#include "ultra64.h"
#include "actor.h"

#include "assets/objects/object_gla/object_gla.h"

typedef enum EnGe2Type {
    /* 0 */ EN_GE2_TYPE_PATROL,
    /* 1 */ EN_GE2_TYPE_STATIC,
    /* 2 */ EN_GE2_TYPE_GERUDOS_CARD_GIVER // unused and possibly non functional
} EnGe2Type;

struct EnGe2;

typedef void (*EnGe2ActionFunc)(struct EnGe2*, struct PlayState*);

typedef struct EnGe2 {
    /* 0x000 */ Actor actor;
    /* 0x14C */ ColliderCylinder collider;
    /* 0x198 */ SkelAnime skelAnime;
    /* 0x1DC */ Vec3s jointTable[OBJECT_GLA_LIMB_MAX];
    /* 0x260 */ Vec3s morphTable[OBJECT_GLA_LIMB_MAX];
    /* 0x2E4 */ s16 eyeTexIndex;
    /* 0x2E6 */ s16 eyeTimer;
    /* 0x2E8 */ Vec3s headRot;
    /* 0x2EE */ Vec3s torsoRot;
    /* 0x2F4 */ u16 stateFlags;
    /* 0x2F6 */ s16 targetYaw;
    /* 0x2F8 */ s16 patrolAlertedYaw;
    /* 0x2FA */ char pad_2FA[2];
    /* 0x2FC */ f32 detectionYRange;
    /* 0x300 */ u16 patrolTime;
    /* 0x302 */ u16 patrolTimer;
    /* 0x304 */ s8 unk_304; // unused
    /* 0x305 */ u8 timer;
    /* 0x306 */ u8 playerNoise;
    /* 0x307 */ char pad_307[1];
    /* 0x308 */ EnGe2ActionFunc actionFunc;
} EnGe2; // size = 0x30C

#endif
