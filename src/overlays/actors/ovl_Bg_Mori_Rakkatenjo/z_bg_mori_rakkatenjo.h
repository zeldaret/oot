#ifndef _Z_BG_MORI_RAKKATENJO_H_
#define _Z_BG_MORI_RAKKATENJO_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x2C];
} BgMoriRakkatenjo; // size = 0x0178

extern const ActorInit Bg_Mori_Rakkatenjo_InitVars;

#endif
