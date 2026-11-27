#ifndef Z_BG_SPOT12_GATE_H
#define Z_BG_SPOT12_GATE_H

#include "ultra64.h"
#include "actor.h"

#define BGSPOT12GATE_GET_SWITCH_FLAG(thisx) PARAMS_GET_U((thisx)->params, 0, 6)

struct BgSpot12Gate;

typedef void (*BgSpot12GateActionFunc)(struct BgSpot12Gate*, struct PlayState*);

typedef struct BgSpot12Gate {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgSpot12GateActionFunc actionFunc;
    /* 0x0168 */ s16 timer;
} BgSpot12Gate; // size = 0x016C

#endif
