#ifndef _Z_EN_BOM_BOWL_MAN_H_
#define _Z_EN_BOM_BOWL_MAN_H_

#include "ultra64.h"
#include "global.h"

struct EnBomBowlMan;

typedef struct EnBomBowlMan {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x10C];
    /* 0x0258 */ u8 unk_258;
    /* 0x0259 */ char unk_259[0xB];
} EnBomBowlMan; // size = 0x0264

extern const ActorInit En_Bom_Bowl_Man_InitVars;

#endif
