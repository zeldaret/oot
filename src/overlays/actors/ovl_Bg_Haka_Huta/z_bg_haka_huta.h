#ifndef Z_BG_HAKA_HUTA_H
#define Z_BG_HAKA_HUTA_H

#include "ultra64.h"
#include "z64actor.h"

struct BgHakaHuta;

typedef void (*BgHakaHutaActionFunc)(struct BgHakaHuta*, struct PlayState*);

typedef struct BgHakaHuta {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgHakaHutaActionFunc actionFunc;
    /* 0x0168 */ s16 counter;
    /* 0x016A */ s16 unk_16A;
} BgHakaHuta; // size = 0x016C

#endif
