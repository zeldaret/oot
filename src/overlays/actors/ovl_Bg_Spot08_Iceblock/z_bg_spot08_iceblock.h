#ifndef _Z_BG_SPOT08_ICEBLOCK_H_
#define _Z_BG_SPOT08_ICEBLOCK_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x50];
} BgSpot08Iceblock; // size = 0x019C

extern const ActorInit Bg_Spot08_Iceblock_InitVars;

#endif
