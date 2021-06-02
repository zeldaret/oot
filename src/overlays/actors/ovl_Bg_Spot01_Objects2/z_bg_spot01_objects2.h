#ifndef _Z_BG_SPOT01_OBJECTS2_H_
#define _Z_BG_SPOT01_OBJECTS2_H_

#include "ultra64.h"
#include "global.h"

struct BgSpot01Objects2;

typedef void (*BgSpot01Objects2ActionFunc)(struct BgSpot01Objects2*, GlobalContext*);

typedef struct BgSpot01Objects2 {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgSpot01Objects2ActionFunc actionFunc;
    /* 0x0168 */ char unk_168[0x10];
    /* 0x0178 */ s32 objectId;
    /* 0x017C */ s8 objBankIndex;
} BgSpot01Objects2; // size = 0x0180

extern const ActorInit Bg_Spot01_Objects2_InitVars;

#endif
