#ifndef _Z_BG_SPOT08_BAKUDANKABE_H_
#define _Z_BG_SPOT08_BAKUDANKABE_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xF8];
} BgSpot08Bakudankabe; // size = 0x0244

extern const ActorInit Bg_Spot08_Bakudankabe_InitVars;

#endif
