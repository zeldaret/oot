#ifndef Z_EN_TEST_H
#define Z_EN_TEST_H

#include "ultra64.h"
#include "actor.h"
#include "assets/objects/object_sk2/object_sk2.h"

struct EnTest;

typedef void (*EnTestActionFunc)(struct EnTest*, struct PlayState*);

typedef struct EnTest {
    /* 0x000 */ Actor actor;
    /* 0x14C */ Vec3s bodyPartsPos[10];
    /* 0x188 */ SkelAnime skelAnime;
    /* 0x1CC */ Vec3s jointTable[STALFOS_LIMB_MAX];
    /* 0x33A */ Vec3s morphTable[STALFOS_LIMB_MAX];
    /* 0x4A8 */ SkelAnime upperSkelanime;
    /* 0x4EC */ Vec3s upperJointTable[STALFOS_LIMB_MAX];
    /* 0x65A */ Vec3s upperMorphTable[STALFOS_LIMB_MAX];
    /* 0x7C8 */ u8 unk_7C8;
    /* 0x7CC */ EnTestActionFunc actionFunc;
    /* 0x7D0 */ Vec3s headRot;
    /* 0x7D6 */ Vec3s headRotOffset;
    /* 0x7DC */ u8 unk_7DC;
    /* 0x7DD */ char unk_7DD[0x1];
    /* 0x7DE */ u8 unk_7DE;
    /* 0x7E0 */ s16 iceTimer;
    /* 0x7E2 */ u8 lastDamageReaction;
    /* 0x7E4 */ s32 unk_7E4;
    /* 0x7E8 */ s32 timer;
    /* 0x7EC */ f32 unk_7EC;
    /* 0x7F0 */ BodyBreak bodyBreak;
    /* 0x808 */ s8 swordState;
    /* 0x80C */ s32 effectIndex;
    /* 0x810 */ ColliderCylinder bodyCollider;
    /* 0x85C */ ColliderQuad swordCollider;
    /* 0x8DC */ ColliderCylinder shieldCollider;
} EnTest; // size = 0x928

typedef enum StalfosType {
    /* 0 */ STALFOS_TYPE_INVISIBLE,
    /* 1 */ STALFOS_TYPE_1,
    /* 2 */ STALFOS_TYPE_2,
    /* 3 */ STALFOS_TYPE_CEILING,
    /* 4 */ STALFOS_TYPE_4,
    /* 5 */ STALFOS_TYPE_5
} StalfosType;

#endif
