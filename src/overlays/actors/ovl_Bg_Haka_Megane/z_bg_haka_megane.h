#ifndef _Z_BG_HAKA_MEGANE_H_
#define _Z_BG_HAKA_MEGANE_H_

#include "ultra64.h"
#include "global.h"

struct BgHakaMegane;

typedef void (*BgHakaMeganeActionFunc)(struct BgHakaMegane*, GlobalContext*);

typedef struct BgHakaMegane {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgHakaMeganeActionFunc actionFunc;
    /* 0x0168 */ char unk_168[0x1];
    /* 0x0169 */ s8 objBankIndex;
    /* 0x016A */ char unk_16A[0x2];
} BgHakaMegane; // size = 0x016C

extern const ActorInit Bg_Haka_Megane_InitVars;

#endif
