#ifndef _Z_EN_SHOPNUTS_H_
#define _Z_EN_SHOPNUTS_H_

#include "ultra64.h"
#include "global.h"

struct EnShopnuts;

typedef struct EnShopnuts {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x170];
} EnShopnuts; // size = 0x02BC

extern const ActorInit En_Shopnuts_InitVars;

#endif
