#ifndef _Z_BG_BOMBWALL_H_
#define _Z_BG_BOMBWALL_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x158];
} BgBombwall; // size = 0x02A4

extern const ActorInit Bg_Bombwall_InitVars;

#endif
