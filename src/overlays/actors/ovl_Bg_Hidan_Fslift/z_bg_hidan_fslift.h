#ifndef _Z_BG_HIDAN_FSLIFT_H_
#define _Z_BG_HIDAN_FSLIFT_H_

#include "ultra64.h"
#include "global.h"

struct BgHidanFslift;

typedef void (*BgHidanFsliftActionFunc)(struct BgHidanFslift*, GlobalContext*);

typedef struct BgHidanFslift {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgHidanFsliftActionFunc actionFunc;
    /* 0x0168 */ s16 timer;
    /* 0x016A */ s16 unk_16A;
} BgHidanFslift; // size = 0x016C

#endif
