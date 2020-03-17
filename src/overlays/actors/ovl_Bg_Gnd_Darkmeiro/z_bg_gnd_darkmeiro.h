#ifndef _Z_BG_GND_DARKMEIRO_H_
#define _Z_BG_GND_DARKMEIRO_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x24];
} BgGndDarkmeiro; // size = 0x0170

extern const ActorInit Bg_Gnd_Darkmeiro_InitVars;

#endif
