#ifndef _Z_BG_GND_FIREMEIRO_H_
#define _Z_BG_GND_FIREMEIRO_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x2C];
} BgGndFiremeiro; // size = 0x0178

extern const ActorInit Bg_Gnd_Firemeiro_InitVars;

#endif
