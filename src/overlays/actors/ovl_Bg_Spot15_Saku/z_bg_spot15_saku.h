#ifndef Z_BG_SPOT15_SAKU_H
#define Z_BG_SPOT15_SAKU_H

#include "ultra64.h"
#include "actor.h"

struct BgSpot15Saku;

typedef void (*BgSpot15SakuActionFunc)(struct BgSpot15Saku*, struct PlayState*);

typedef struct BgSpot15Saku {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgSpot15SakuActionFunc actionFunc;
    /* 0x0168 */ u64 unk_168;
    /* 0x0170 */ f32 unk_170;
    /* 0x0174 */ f32 unk_174;
    /* 0x0174 */ f32 unk_178;
    /* 0x017C */ s16 unk_17C;
} BgSpot15Saku; // size = 0x0180

#endif
