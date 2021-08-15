#ifndef _Z_BG_INGATE_H_
#define _Z_BG_INGATE_H_

#include "ultra64.h"
#include "global.h"

struct BgInGate;

typedef void (*BgInGateActionFunc)(struct BgInGate*, GlobalContext*);

typedef struct BgInGate {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgInGateActionFunc actionFunc;
} BgInGate; // size = 0x0168

extern const ActorInit Bg_Ingate_InitVars;

#endif
