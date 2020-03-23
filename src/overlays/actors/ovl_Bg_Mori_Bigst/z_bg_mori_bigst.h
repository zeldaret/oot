#ifndef _Z_BG_MORI_BIGST_H_
#define _Z_BG_MORI_BIGST_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x20];
} BgMoriBigst; // size = 0x016C

extern const ActorInit Bg_Mori_Bigst_InitVars;

#endif
