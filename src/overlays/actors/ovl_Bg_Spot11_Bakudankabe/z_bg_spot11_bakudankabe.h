#ifndef _Z_BG_SPOT11_BAKUDANKABE_H_
#define _Z_BG_SPOT11_BAKUDANKABE_H_

#include <ultra64.h>
#include <global.h>

struct BgSpot11Bakudankabe;

typedef struct BgSpot11Bakudankabe {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x64];
} BgSpot11Bakudankabe; // size = 0x01B0

extern const ActorInit Bg_Spot11_Bakudankabe_InitVars;

#endif
