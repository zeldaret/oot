#ifndef _Z_BG_PUSHBOX_H_
#define _Z_BG_PUSHBOX_H_

#include "ultra64.h"
#include "global.h"

struct BgPushbox;

typedef void (*BgPushboxActionFunc)(struct BgPushbox*, GlobalContext*);

typedef struct BgPushbox {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgPushboxActionFunc actionFunc;
} BgPushbox; // size = 0x0168

extern const ActorInit Bg_Pushbox_InitVars;

#endif
