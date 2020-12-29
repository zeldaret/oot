#ifndef _Z_EN_SHOPNUTS_H_
#define _Z_EN_SHOPNUTS_H_

#include "ultra64.h"
#include "global.h"

struct EnShopnuts;

typedef void (*EnShopnutsActionFunc)(struct EnShopnuts*, GlobalContext*);

typedef struct EnShopnuts {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnShopnutsActionFunc actionFunc;
    /* 0x0194 */ s16 unk_194;
    /* 0x0196 */ Vec3s limbDrawTable[18];
    /* 0x0202 */ Vec3s transitionDrawTable[18];
    /* 0x026E */ char unk_26E[0x2];
    /* 0x0270 */ ColliderCylinder collider;
} EnShopnuts; // size = 0x02BC

extern const ActorInit En_Shopnuts_InitVars;

#endif
