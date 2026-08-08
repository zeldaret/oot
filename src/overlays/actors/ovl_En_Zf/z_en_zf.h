#ifndef Z_EN_ZF_H
#define Z_EN_ZF_H

#include "ultra64.h"
#include "actor.h"

#include "assets/objects/object_zf/object_zf.h"

typedef enum EnZfType {
    /* -2 */ ENZF_TYPE_DINOLFOS = -2,
    /* -1 */ ENZF_TYPE_LIZALFOS_SINGLE,
    /*  0 */ ENZF_TYPE_LIZALFOS_PAIRED_MINIBOSS_A,
    /*  1 */ ENZF_TYPE_LIZALFOS_PAIRED_MINIBOSS_B
} EnZfType;

#define ENZF_IS_TYPE_PAIRED(type) ((type) >= ENZF_TYPE_LIZALFOS_PAIRED_MINIBOSS_A)

struct EnZf;

typedef struct EnZf {
    /* 0x000 */ Actor actor;
    /* 0x14C */ SkelAnime skelAnime;
    /* 0x190 */ Vec3s jointTable[ZF_LIMB_MAX];
    /* 0x2B6 */ Vec3s morphTable[ZF_LIMB_MAX];
    /* 0x3DC */ s32 action;
    /* 0x3E0 */ s32 unk_3E0; // unused
    /* 0x3E4 */ s32 actionState;
    /* 0x3E8 */ void (*actionFunc)(struct EnZf*, struct PlayState*);
    /* 0x3EC */ s16 headRot;
    /* 0x3EE */ s16 headRotStep;
    /* 0x3F0 */ s32 timer;
    /* 0x3F4 */ s16 timer2;
    /* 0x3F6 */ s16 frozenTimer;
    /* 0x3F8 */ s16 noFloorAhead;
    /* 0x3FA */ s16 isSwordSheathed;
    /* 0x3FC */ s16 switchFlag;
    /* 0x3FE */ s16 curPlatform;
    /* 0x400 */ s16 homePlatform;
    /* 0x402 */ s16 targetPlatform;
    /* 0x404 */ u8 alpha;
    /* 0x405 */ char pad_405[3];
    /* 0x408 */ f32 dodgeSpeed;
    /* 0x40C */ f32 dodgeVelocityY;
    /* 0x410 */ u8 lastDamageReaction;
    /* 0x411 */ char pad_411[3];
    /* 0x414 */ s32 swordBlureEffectIndex;
    /* 0x418 */ ColliderCylinder bodyCollider;
    /* 0x464 */ ColliderQuad swordCollider;
    /* 0x4E4 */ Vec3f rightFootPos;
    /* 0x4F0 */ Vec3f leftFootPos;
    /* 0x4FC */ Vec3f bodyPartsPos[9];
} EnZf; // size = 0x568

#endif
