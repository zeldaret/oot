#ifndef _Z_BG_MORI_HASHIGO_H_
#define _Z_BG_MORI_HASHIGO_H_

#include "ultra64.h"
#include "global.h"

struct BgMoriHashigo;

typedef void (*BgMoriHashigoActionFunc)(struct BgMoriHashigo*, GlobalContext*);

typedef struct BgMoriHashigo {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ColliderJntSph collider;
    /* 0x0184 */ ColliderJntSphElement colliderItems[1];
    /* 0x01C4 */ BgMoriHashigoActionFunc actionFunc;
    /* 0x01C8 */ s16 hitTimer;
    /* 0x01CA */ s16 bounceCounter;
    /* 0x01CC */ s8 moriTexObjIndex;
} BgMoriHashigo; // size = 0x01D0

extern const ActorInit Bg_Mori_Hashigo_InitVars;

#endif
