#ifndef _Z_EN_FU_H_
#define _Z_EN_FU_H_

#include "ultra64.h"
#include "global.h"

struct EnFu;

typedef void (*EnFuActionFunc)(struct EnFu*, GlobalContext*);

typedef enum {
    /* 0x00 */ FU_ROOT_LIMB,
    /* 0x01 */ FU_TORSO_LIMB,
    /* 0x02 */ FU_LEFT_THIGH_LIMB,
    /* 0x03 */ FU_LEFT_LEG_LIMB,
    /* 0x04 */ FU_LEFT_FOOT_LIMB,
    /* 0x05 */ FU_RIGHT_THIGH_LIMB,
    /* 0x06 */ FU_RIGHT_LEG_LIMB,
    /* 0x07 */ FU_RIGHT_FOOT_LIMB,
    /* 0x08 */ FU_CHEST_MUSIC_BOX_LIMB,
    /* 0x09 */ FU_LEFT_ARM_MUSIC_BOX_LIMB,
    /* 0x0A */ FU_UNK_LIMB,
    /* 0x0B */ FU_RIGHT_SHOULDER_LIMB,
    /* 0x0C */ FU_RIGHT_ARM_LIMB,
    /* 0x0D */ FU_RIGHT_HAND_AND_CRANK_LIMB,
    /* 0x0E */ FU_HEAD_LIMB,
    /* 0x0F */ FU_HORN_LIMB,
    /* 0x10 */ FU_LIMB_MAX
} EnFuLimb;

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

#endif
