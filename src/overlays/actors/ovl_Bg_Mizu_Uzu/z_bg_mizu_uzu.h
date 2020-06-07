#ifndef _Z_BG_MIZU_UZU_H_
#define _Z_BG_MIZU_UZU_H_

#include <ultra64.h>
#include <global.h>

struct BgMizuUzu;

typedef void (*BgMizuUzuActionFunc)(struct BgMizuUzu*, GlobalContext*);

typedef struct BgMizuUzu {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgMizuUzuActionFunc actionFunc;
} BgMizuUzu; // size = 0x0168

extern const ActorInit Bg_Mizu_Uzu_InitVars;

#endif
