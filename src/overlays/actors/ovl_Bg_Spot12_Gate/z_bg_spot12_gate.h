#ifndef _Z_BG_SPOT12_GATE_H_
#define _Z_BG_SPOT12_GATE_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x20];
} BgSpot12Gate; // size = 0x016C

extern const ActorInit Bg_Spot12_Gate_InitVars;

#endif
