#ifndef _Z_BG_HEAVY_BLOCK_H_
#define _Z_BG_HEAVY_BLOCK_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x2C];
} BgHeavyBlock; // size = 0x0178

extern const ActorInit Bg_Heavy_Block_InitVars;

#endif
