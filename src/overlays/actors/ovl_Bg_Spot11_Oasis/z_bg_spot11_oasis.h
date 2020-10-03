#ifndef _Z_BG_SPOT11_OASIS_H_
#define _Z_BG_SPOT11_OASIS_H_

#include "ultra64.h"
#include "global.h"

struct BgSpot11Oasis;

typedef struct BgSpot11Oasis {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x8];
} BgSpot11Oasis; // size = 0x0154

extern const ActorInit Bg_Spot11_Oasis_InitVars;

#endif
