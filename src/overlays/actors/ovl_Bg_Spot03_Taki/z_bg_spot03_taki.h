#ifndef _Z_BG_SPOT03_TAKI_H_
#define _Z_BG_SPOT03_TAKI_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x2C];
} BgSpot03Taki; // size = 0x0178

extern const ActorInit Bg_Spot03_Taki_InitVars;

#endif
