#ifndef Z_EN_WF_H
#define Z_EN_WF_H

#include "ultra64.h"
#include "actor.h"

#include "assets/objects/object_wf/object_wf.h"

struct EnWf;

typedef struct EnWf {
    /* 0x000 */ Actor actor;
    /* 0x14C */ Vec3s bodyPartsPos[10];
    /* 0x188 */ SkelAnime skelAnime;
    /* 0x1CC */ Vec3s jointTable[WOLFOS_LIMB_MAX];
    /* 0x250 */ Vec3s morphTable[WOLFOS_LIMB_MAX];
    /* 0x2D4 */ s32 action;
    /* 0x2D8 */ char pad_2D8[4];
    /* 0x2DC */ void (*actionFunc)(struct EnWf*, struct PlayState*);
    /* 0x2E0 */ s16 unk_2E0;
    /* 0x2E2 */ s16 idleTimer;
    /* 0x2E4 */ s16 onFireTimer;
    /* 0x2E6 */ u8 lastDamageReaction;
    /* 0x2E7 */ char pad_2E7[1];
    /* 0x2E8 */ s32 timer;
    /* 0x2EC */ f32 circlePlayerExtraSpeed;
    /* 0x2F0 */ char pad_2F0[4];
    /* 0x2F4 */ f32 unk_2F4;
    /* 0x2F8 */ s16 attackState;
    /* 0x2FA */ s16 unk_2FA;
    /* 0x2FC */ s16 switchFlag;
    /* 0x2FE */ s16 circlePlayerDirection;
    /* 0x300 */ s16 unk_300;
    /* 0x302 */ u8 eyeIndex;
    /* 0x303 */ char pad_303[1];
    /* 0x304 */ ColliderJntSph attackAndBlockCollider;
    /* 0x324 */ ColliderJntSphElement attackAndBlockColliderElements[4];
    /* 0x424 */ ColliderCylinder bodyCollider;
    /* 0x470 */ ColliderCylinder tailCollider;
    /* 0x4BC */ Vec3f unk_4BC;
    /* 0x4C8 */ Vec3f unk_4C8;
    /* 0x4D4 */ char pad_4D4[2];
    /* 0x4D6 */ s16 headRot;
    /* 0x4D8 */ char pad_4D8[4];
} EnWf; // size = 0x4DC

#endif
