#ifndef Z_EN_SKB_H
#define Z_EN_SKB_H

#include "ultra64.h"
#include "actor.h"

struct EnSkb;

typedef struct EnSkb {
    /* 0x000 */ Actor actor;
    /* 0x14C */ SkelAnime unk14C;
    /* 0x190 */ Vec3s unk190[20];
    /* 0x208 */ Vec3s unk208[20];
    /* 0x280 */ u8 actionState;
    /* 0x281 */ u8 setColliderAT;
    /* 0x282 */ u8 lastDamageReaction;
    /* 0x283 */ u8 breakFlags;
    /* 0x284 */ void (*unk284)(struct EnSkb*, struct PlayState*);
    /* 0x288 */ s16 headlessYawOffset;
    /* 0x28A */ char pad28A[2];
    /* 0x28C */ BodyBreak bodyBreak;
    /* 0x2A4 */ ColliderJntSph unk2A4;
    /* 0x2C4 */ ColliderJntSphElement unk2C4[2];
} EnSkb; // size = 0x344

#endif
