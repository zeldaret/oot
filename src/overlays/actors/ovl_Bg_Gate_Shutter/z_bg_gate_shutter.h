#ifndef Z_BG_GATE_SHUTTER_H
#define Z_BG_GATE_SHUTTER_H

#include "ultra64.h"
#include "actor.h"

struct BgGateShutter;

typedef void (*BgGateShutterActionFunc)(struct BgGateShutter*, struct PlayState*);

typedef struct BgGateShutter {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgGateShutterActionFunc actionFunc;
    /* 0x0168 */ s16 openingState; // Set by EnHeishi2: 1/2 = open, negative = close; reset to 0 when movement finishes.
    /* 0x016C */ Vec3f homePos; // never read
    /* 0x0178 */ s16 timer;
} BgGateShutter; // size = 0x017C

#endif
