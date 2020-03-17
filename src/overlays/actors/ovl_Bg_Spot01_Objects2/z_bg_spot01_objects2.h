#ifndef _Z_BG_SPOT01_OBJECTS2_H_
#define _Z_BG_SPOT01_OBJECTS2_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x34];
} BgSpot01Objects2; // size = 0x0180

extern const ActorInit Bg_Spot01_Objects2_InitVars;

#endif
