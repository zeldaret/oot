#ifndef _Z_BG_HAKA_TUBO_H_
#define _Z_BG_HAKA_TUBO_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xB8];
} BgHakaTubo; // size = 0x0204

extern const ActorInit Bg_Haka_Tubo_InitVars;

#endif
