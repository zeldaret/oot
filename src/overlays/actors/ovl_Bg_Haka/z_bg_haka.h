#ifndef Z_BG_HAKA_H
#define Z_BG_HAKA_H

#include "ultra64.h"
#include "z64actor.h"

struct BgHaka;

typedef void (*BgHakaActionFunc)(struct BgHaka*, struct PlayState*);

typedef struct BgHaka {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgHakaActionFunc actionFunc;
} BgHaka; // size = 0x0168

#endif
