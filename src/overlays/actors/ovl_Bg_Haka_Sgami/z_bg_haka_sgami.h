#ifndef _Z_BG_HAKA_SGAMI_H_
#define _Z_BG_HAKA_SGAMI_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1EC];
} BgHakaSgami; // size = 0x0338

extern const ActorInit Bg_Haka_Sgami_InitVars;

#endif
