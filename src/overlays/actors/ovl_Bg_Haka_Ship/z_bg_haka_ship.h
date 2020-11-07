#ifndef _Z_BG_HAKA_SHIP_H_
#define _Z_BG_HAKA_SHIP_H_

#include "ultra64.h"
#include "global.h"

struct BgHakaShip;

typedef void (*BgHakaShipActionFunc)(struct BgHakaShip*, GlobalContext*);

typedef struct BgHakaShip {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgHakaShipActionFunc actionFunc;
    /* 0x0168 */ char unk_168[0x2];
    /* 0x016A */ char unk_16A[0x2];
    /* 0x016C */ Vec3f unk_16C;
} BgHakaShip; // size = 0x0178

extern const ActorInit Bg_Haka_Ship_InitVars;

#endif
