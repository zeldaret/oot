#ifndef _Z_BG_MORI_BIGST_H_
#define _Z_BG_MORI_BIGST_H_

#include <ultra64.h>
#include <global.h>

struct BgMoriBigst;

typedef void (*BgMoriBigstActionFunc)(struct BgMoriBigst*, GlobalContext*);

typedef struct BgMoriBigst {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgMoriBigstActionFunc actionFunc;
    /* 0x0168 */ s16 waitTimer;
    /* 0x016A */ s8 objBankIndex;
} BgMoriBigst; // size = 0x016C

extern const ActorInit Bg_Mori_Bigst_InitVars;

#endif
