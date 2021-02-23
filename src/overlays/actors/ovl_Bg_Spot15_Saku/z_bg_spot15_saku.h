#ifndef _Z_BG_SPOT15_SAKU_H_
#define _Z_BG_SPOT15_SAKU_H_

#include "ultra64.h"
#include "global.h"

struct BgSpot15Saku;

typedef void (*BgSpot15SakuActionFunc)(struct BgSpot15Saku*, GlobalContext*);

typedef struct BgSpot15Saku {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgSpot15SakuActionFunc actionFunc;
    /* 0x0168 */ u64 unk_168;
    /* 0x0170 */ Vec3f unk_170;
    /* 0x017C */ s16 timer;
} BgSpot15Saku; // size = 0x0180

extern const ActorInit Bg_Spot15_Saku_InitVars;

#endif
