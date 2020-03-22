#ifndef _Z_BG_MORI_KAITENKABE_H_
#define _Z_BG_MORI_KAITENKABE_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x3C];
} BgMoriKaitenkabe; // size = 0x0188

extern const ActorInit Bg_Mori_Kaitenkabe_InitVars;

#endif
