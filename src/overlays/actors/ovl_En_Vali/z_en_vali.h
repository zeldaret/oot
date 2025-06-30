#ifndef Z_EN_VALI_H
#define Z_EN_VALI_H

#include "ultra64.h"
#include "actor.h"
#include "assets/objects/object_vali/object_vali.h"

struct EnVali;

typedef void (*EnValiActionFunc)(struct EnVali*, struct PlayState*);

typedef struct EnVali {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnValiActionFunc actionFunc;
    /* 0x0194 */ u8 lightningTimer;
    /* 0x0195 */ u8 slingshotReactionTimer;
    /* 0x0196 */ s16 timer;
    /* 0x0198 */ Vec3s jointTable[VALI_LIMB_MAX];
    /* 0x0246 */ Vec3s morphTable[VALI_LIMB_MAX];
    /* 0x02F4 */ f32 armScale;
    /* 0x02F8 */ f32 floatHomeHeight; // Used as a centre for floating when visible (home is used for the lurk height)
    /* 0x02FC */ ColliderQuad leftArmCollider;
    /* 0x037C */ ColliderQuad rightArmCollider;
    /* 0x03FC */ ColliderCylinder bodyCollider;
} EnVali; // size = 0x0448

typedef enum EnValiType {
    /* 0 */ BARI_TYPE_NORMAL,
    /* 1 */ BARI_TYPE_SWORD_DAMAGE
} EnValiType;

#endif
