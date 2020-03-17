#ifndef _Z_BG_HAKA_WATER_H_
#define _Z_BG_HAKA_WATER_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x8];
} BgHakaWater; // size = 0x0154

extern const ActorInit Bg_Haka_Water_InitVars;

#endif
