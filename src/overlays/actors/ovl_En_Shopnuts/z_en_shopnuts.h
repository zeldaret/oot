#ifndef Z_EN_SHOPNUTS_H
#define Z_EN_SHOPNUTS_H

#include "ultra64.h"
#include "z64actor.h"
#include "assets/objects/object_shopnuts/object_shopnuts.h"

struct EnShopnuts;

#define SHOPNUTS_GET_TYPE(thisx) ((thisx)->params)

typedef void (*EnShopnutsActionFunc)(struct EnShopnuts*, struct PlayState*);

typedef struct EnShopnuts {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnShopnutsActionFunc actionFunc;
    /* 0x0194 */ s16 animFlagAndTimer; // 0x1000 bit denotes that projectile has been thrown
    /* 0x0196 */ Vec3s jointTable[BUSINESS_SCRUB_LIMB_MAX];
    /* 0x0202 */ Vec3s morphTable[BUSINESS_SCRUB_LIMB_MAX];
    /* 0x0270 */ ColliderCylinder collider;
} EnShopnuts; // size = 0x02BC

#endif
