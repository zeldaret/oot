#ifndef _Z_BG_ICE_TURARA_H_
#define _Z_BG_ICE_TURARA_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x6C];
} BgIceTurara; // size = 0x01B8

extern const ActorInit Bg_Ice_Turara_InitVars;

#endif
