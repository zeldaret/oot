#ifndef _Z_BG_INGATE_H_
#define _Z_BG_INGATE_H_

#include "ultra64.h"
#include "global.h"

struct BgIngate;

typedef void (*BgIngateActionFunc)(struct BgIngate*, GlobalContext*);

typedef struct BgIngate {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgIngateActionFunc actionFunc;
} BgIngate; // size = 0x0168

extern const ActorInit Bg_Ingate_InitVars;

#endif
