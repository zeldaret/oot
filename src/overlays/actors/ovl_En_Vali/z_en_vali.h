#ifndef Z_EN_VALI_H
#define Z_EN_VALI_H

#include "ultra64.h"
#include "actor.h"

#include "assets/objects/object_vali/object_vali.h"

struct EnVali;

typedef struct EnVali {
    /* 0x000 */ Actor actor;
    /* 0x14C */ SkelAnime skelAnime;
    /* 0x190 */ void (*actionFunc)(struct EnVali*, struct PlayState*);
    /* 0x194 */ u8 electrifyTimer;
    /* 0x195 */ u8 spinTimer;
    /* 0x196 */ s16 timer;
    /* 0x198 */ Vec3s jointTable[BARI_LIMB_MAX];
    /* 0x246 */ Vec3s morphTable[BARI_LIMB_MAX];
    /* 0x2F4 */ f32 tentaclesLengthFactor;
    /* 0x2F8 */ f32 spinHeight;
    /* 0x2FC */ ColliderQuad leftTentacleCollider;
    /* 0x37C */ ColliderQuad rightTentacleCollider;
    /* 0x3FC */ ColliderCylinder collider;
} EnVali; // size = 0x448

#endif
