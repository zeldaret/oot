#ifndef _Z_BG_TOKI_HIKARI_H_
#define _Z_BG_TOKI_HIKARI_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x8];
} BgTokiHikari; // size = 0x0154

extern const ActorInit Bg_Toki_Hikari_InitVars;

#endif
