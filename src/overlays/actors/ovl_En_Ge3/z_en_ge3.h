#ifndef _Z_EN_GE3_H_
#define _Z_EN_GE3_H_

#include "ultra64.h"
#include "global.h"

struct EnGe3;

typedef enum {
    /* 00 */ GELDB_LIMB_NONE,
    /* 01 */ GELDB_LIMB_ROOT,
    /* 02 */ GELDB_LIMB_TORSO,
    /* 03 */ GELDB_LIMB_NECK,
    /* 04 */ GELDB_LIMB_PONYTAIL,
    /* 05 */ GELDB_LIMB_VEIL,
    /* 06 */ GELDB_LIMB_HEAD,
    /* 07 */ GELDB_LIMB_UPPER_ARM_R,
    /* 08 */ GELDB_LIMB_FOREARM_R,
    /* 09 */ GELDB_LIMB_WRIST_R,
    /* 10 */ GELDB_LIMB_HAND_R,
    /* 11 */ GELDB_LIMB_SWORD_R,
    /* 12 */ GELDB_LIMB_UPPER_ARM_L,
    /* 13 */ GELDB_LIMB_FOREARM_L,
    /* 14 */ GELDB_LIMB_WRIST_L,
    /* 15 */ GELDB_LIMB_HAND_L,
    /* 16 */ GELDB_LIMB_SWORD_L,
    /* 17 */ GELDB_LIMB_THIGH_L,
    /* 18 */ GELDB_LIMB_SHIN_L,
    /* 19 */ GELDB_LIMB_FOOT_L,
    /* 20 */ GELDB_LIMB_THIGH_R,
    /* 21 */ GELDB_LIMB_SHIN_R,
    /* 22 */ GELDB_LIMB_FOOT_R,
    /* 23 */ GELDB_LIMB_WAIST,
    /* 24 */ GELDB_LIMB_MAX
} EnGeldBLimbs;

typedef void (*EnGe3ActionFunc)(struct EnGe3*, GlobalContext*);

typedef struct EnGe3 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder collider;
    /* 0x0198 */ SkelAnime skelAnime;
    /* 0x01DC */ Vec3s jointTable[GELDB_LIMB_MAX];
    /* 0x026C */ Vec3s morphTable[GELDB_LIMB_MAX];
    /* 0x02FC */ s16 eyeIndex;
    /* 0x02FE */ s16 blinkTimer;
    /* 0x0300 */ Vec3s headRot;
    /* 0x0306 */ Vec3s unk_306;
    /* 0x030C */ u16 unk_30C;
    /* 0x0310 */ EnGe3ActionFunc actionFunc;
} EnGe3; // size = 0x0314

extern const ActorInit En_Ge3_InitVars;

#endif
