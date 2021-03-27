#ifndef _Z_BG_JYA_BLOCK_H_
#define _Z_BG_JYA_BLOCK_H_

#include "ultra64.h"
#include "global.h"

struct BgJyaBlock;

typedef struct BgJyaBlock {
    /* 0x0000 */ DynaPolyActor dyna;
} BgJyaBlock; // size = 0x0164

extern const ActorInit Bg_Jya_Block_InitVars;

#endif
