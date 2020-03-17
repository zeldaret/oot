#ifndef _Z_BG_MORI_HASHIGO_H_
#define _Z_BG_MORI_HASHIGO_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x84];
} BgMoriHashigo; // size = 0x01D0

extern const ActorInit Bg_Mori_Hashigo_InitVars;

#endif
