#ifndef _Z_BG_VB_SIMA_H_
#define _Z_BG_VB_SIMA_H_

#include <ultra64.h>
#include <global.h>

struct BgVbSima;

typedef struct BgVbSima {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x30];
} BgVbSima; // size = 0x017C

extern const ActorInit Bg_Vb_Sima_InitVars;

#endif
