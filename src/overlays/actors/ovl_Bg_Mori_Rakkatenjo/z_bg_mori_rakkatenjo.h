#ifndef Z_BG_MORI_RAKKATENJO_H
#define Z_BG_MORI_RAKKATENJO_H

#include "ultra64.h"
#include "z64actor.h"

struct BgMoriRakkatenjo;

typedef void (*BgMoriRakkatenjoActionFunction)(struct BgMoriRakkatenjo*, struct PlayState*);

typedef struct BgMoriRakkatenjo {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgMoriRakkatenjoActionFunction actionFunc;
    /* 0x0168 */ s32 timer;
    /* 0x016C */ s32 bounceCount;
    /* 0x0170 */ s32 fallCount;
    /* 0x0174 */ s8 moriTexObjectSlot;
} BgMoriRakkatenjo; // size = 0x0178

#endif
