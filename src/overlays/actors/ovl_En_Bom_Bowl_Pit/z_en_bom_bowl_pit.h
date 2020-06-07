#ifndef _Z_EN_BOM_BOWL_PIT_H_
#define _Z_EN_BOM_BOWL_PIT_H_

#include <ultra64.h>
#include <global.h>

struct EnBomBowlPit;

typedef struct EnBomBowlPit {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x35B8];
} EnBomBowlPit; // size = 0x3704

extern const ActorInit En_Bom_Bowl_Pit_InitVars;

#endif
