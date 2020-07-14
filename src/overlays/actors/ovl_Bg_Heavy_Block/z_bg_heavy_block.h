#ifndef _Z_BG_HEAVY_BLOCK_H_
#define _Z_BG_HEAVY_BLOCK_H_

#include <ultra64.h>
#include <global.h>

struct BgHeavyBlock;

typedef void (*BgHeavyBlockActionFunc)(struct BgHeavyBlock*, GlobalContext*);

typedef struct BgHeavyBlock {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ Vec3f unk_164;
    /* 0x0170 */ s16 timer;
    /* 0x0172 */ u16 unk_172;
    /* 0x0174 */ BgHeavyBlockActionFunc actionFunc;
} BgHeavyBlock; // size = 0x0178

extern const ActorInit Bg_Heavy_Block_InitVars;

#endif
