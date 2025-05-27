#ifndef Z_BG_HIDAN_FSLIFT_H
#define Z_BG_HIDAN_FSLIFT_H

#include "ultra64.h"
#include "z64actor.h"

struct BgHidanFslift;

typedef void (*BgHidanFsliftActionFunc)(struct BgHidanFslift*, struct PlayState*);

typedef struct BgHidanFslift {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgHidanFsliftActionFunc actionFunc;
    /* 0x0168 */ s16 timer;
    /* 0x016A */ s16 cameraSetting;
} BgHidanFslift; // size = 0x016C

#endif
