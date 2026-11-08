#ifndef Z_EN_SKB_H
#define Z_EN_SKB_H

#include "ultra64.h"
#include "actor.h"

#include "assets/objects/object_skb/object_skb.h"

struct EnSkb;

typedef void (*EnSkbActionFunc)(struct EnSkb*, struct PlayState*);

typedef struct EnSkb {
    /* 0x000 */ Actor actor;
    /* 0x14C */ SkelAnime skelAnime;
    /* 0x190 */ Vec3s jointTable[STALCHILD_LIMB_MAX];
    /* 0x208 */ Vec3s morphTable[STALCHILD_LIMB_MAX];
    /* 0x280 */ u8 actionState;
    /* 0x281 */ u8 setColliderAT;
    /* 0x282 */ u8 lastDamageReaction;
    /* 0x283 */ u8 breakFlags;
    /* 0x284 */ EnSkbActionFunc actionFunc;
    /* 0x288 */ s16 headlessYawOffset;
    /* 0x28C */ BodyBreak bodyBreak;
    /* 0x2A4 */ ColliderJntSph collider;
    /* 0x2C4 */ ColliderJntSphElement colliderElements[2];
} EnSkb; // size = 0x344

#endif
