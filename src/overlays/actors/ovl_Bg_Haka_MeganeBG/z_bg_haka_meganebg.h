#ifndef Z_BG_HAKA_MEGANEBG_H
#define Z_BG_HAKA_MEGANEBG_H

#include "ultra64.h"
#include "actor.h"

typedef enum BgHakaMeganeBGType {
    /* 0 */ BGHAKAMEGANEBG_TYPE_HIDDEN_MOVING_PLATFORM,
    /* 1 */ BGHAKAMEGANEBG_TYPE_CHAINED_ELEVATOR_PLATFORM,
    /* 2 */ BGHAKAMEGANEBG_TYPE_ROTATING_PLATFORM,
    /* 3 */ BGHAKAMEGANEBG_TYPE_METAL_GATE
} BgHakaMeganeBGType;

struct BgHakaMeganeBG;

typedef void (*BgHakaMeganeBGActionFunc)(struct BgHakaMeganeBG*, struct PlayState*);

typedef struct BgHakaMeganeBG {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgHakaMeganeBGActionFunc actionFunc;
    /* 0x0168 */ u8 switchFlag;
    /* 0x016A */ s16 timer;
} BgHakaMeganeBG; // size = 0x016C

#endif
