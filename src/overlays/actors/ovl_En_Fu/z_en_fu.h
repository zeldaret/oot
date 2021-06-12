#ifndef _Z_EN_FU_H_
#define _Z_EN_FU_H_

#include "ultra64.h"
#include "global.h"

struct EnFu;

typedef void (*EnFuActionFunc)(struct EnFu*, GlobalContext*);

typedef struct EnFu {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder collider;
    /* 0x0198 */ SkelAnime skelanime;
    /* 0x01DC */ Vec3s jointTable[FU_LIMB_MAX];
    /* 0x023C */ Vec3s morphTable[FU_LIMB_MAX];
    /* 0x029C */ Vec3s lookAngleOffset; // offset applied to neck rotation to look at link when he is close
    /* 0x02A2 */ Vec3s unk_2A2; 
    /* 0x02A8 */ u16 behaviorFlags;
    /* 0x02AA */ u16 facialExpression;
    /* 0x02AC */ EnFuActionFunc actionFunc;
} EnFu; // size = 0x02B0

extern const ActorInit En_Fu_InitVars;

typedef enum {
    /* 0 */ FU_ROOT_LIMB,
    /* 1 */ FU_TORSO_LIMB,
    /* 2 */ FU_LEFT_THIGH_LIMB,
    /* 3 */ FU_LEFT_LEG_LIMB,
    /* 4 */ FU_LEFT_FOOT_LIMB,
    /* 5 */ FU_RIGHT_THIGH_LIMB,
    /* 6 */ FU_RIGHT_LEG_LIMB,
    /* 7 */ FU_RIGHT_FOOT_LIMB,
    /* 8 */ FU_CHEST_MUSIC_BOX_LIMB,
    /* 9 */ FU_LEFT_ARM_MUSIC_BOX_LIMB,
    /* A */ FU_UNK_LIMB,
    /* B */ FU_RIGHT_SHOULDER_LIMB,
    /* C */ FU_RIGHT_ARM_LIMB,
    /* D */ FU_RIGHT_HAND_AND_CRANK_LIMB,
    /* E */ FU_HEAD_LIMB,
    /* F */ FU_HORN_LIMB,
    /* 10 */ FU_LIMB_MAX
} EnFuLimb;

#endif
