#ifndef Z_BG_HIDAN_KOUSI_H
#define Z_BG_HIDAN_KOUSI_H

#include "ultra64.h"
#include "z64actor.h"

struct BgHidanKousi;

typedef void (*BgHidanKousiActionFunc)(struct BgHidanKousi*, struct PlayState*);

typedef struct BgHidanKousi {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgHidanKousiActionFunc actionFunc;
    /* 0x0168 */ s16 unk_168;
} BgHidanKousi; // size = 0x016C

#endif
