#ifndef _Z_BG_MORI_HASHIRA4_H_
#define _Z_BG_MORI_HASHIRA4_H_

#include "ultra64.h"
#include "global.h"

struct BgMoriHashira4;

typedef void (*BgMoriHashira4ActionFunc)(struct BgMoriHashira4*, GlobalContext*);

typedef struct BgMoriHashira4 {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgMoriHashira4ActionFunc actionFunc;
    /* 0x0168 */ s8 moriTexObjIndex;
    /* 0x0169 */ s8 switchFlag;
    /* 0x016A */ s16 gateTimer;
} BgMoriHashira4; // size = 0x016C

extern const ActorInit Bg_Mori_Hashira4_InitVars;

#endif
