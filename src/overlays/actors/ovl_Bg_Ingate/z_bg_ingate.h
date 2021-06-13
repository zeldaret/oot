#ifndef _Z_BG_INGATE_H_
#define _Z_BG_INGATE_H_

#include "ultra64.h"
#include "global.h"

struct BgIngoGate;

typedef void (*BgIngoGateActionFunc)(struct BgIngoGate*, GlobalContext*);

typedef struct BgIngoGate {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgIngoGateActionFunc actionFunc;
} BgIngoGate; // size = 0x0168

extern const ActorInit Bg_Ingate_InitVars;

#endif
