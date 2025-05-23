#ifndef Z_EN_BOMBF_H
#define Z_EN_BOMBF_H

#include "ultra64.h"
#include "z64actor.h"

struct EnBombf;

typedef void (*EnBombfActionFunc)(struct EnBombf*, struct PlayState*);

typedef struct EnBombf {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder bombCollider;
    /* 0x0198 */ ColliderJntSph explosionCollider;
    /* 0x01B8 */ ColliderJntSphElement explosionColliderElements[1];
    /* 0x01F8 */ s16 timer;
    /* 0x01FC */ EnBombfActionFunc actionFunc;
    /* 0x0200 */ s32 isFuseEnabled; // enables the ability to ignite and tick down to explode
    /* 0x0204 */ u8 colliderSetOC;
    /* 0x0206 */ s16 flashSpeedScale;
    /* 0x0208 */ f32 flashIntensity;
    /* 0x020C */ f32 flowerBombScale;
} EnBombf; // size = 0x0210

typedef enum EnBombfType {
    /* 0xFFFF */ BOMBFLOWER_FLOWER = -1,
    /* 0x0000 */ BOMBFLOWER_BODY,
    /* 0x0001 */ BOMBFLOWER_EXPLOSION
} EnBombfType;

#endif
