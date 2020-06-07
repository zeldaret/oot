#ifndef _Z_BG_SPOT07_TAKI_H_
#define _Z_BG_SPOT07_TAKI_H_

#include <ultra64.h>
#include <global.h>

struct BgSpot07Taki;

typedef struct BgSpot07Taki {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1C];
} BgSpot07Taki; // size = 0x0168

extern const ActorInit Bg_Spot07_Taki_InitVars;

#endif
