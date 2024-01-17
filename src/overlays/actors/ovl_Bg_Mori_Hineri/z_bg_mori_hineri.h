#ifndef Z_BG_MORI_HINERI_H
#define Z_BG_MORI_HINERI_H

#include "ultra64.h"
#include "global.h"

struct BgMoriHineri;

// Due to a unique access pattern, this param cannot use the generic "PARAMS_GET_U" macros
#define TWISTED_HALLWAY_GET_PARAM_15(thisx) (((thisx)->params & (NBITS_TO_MASK(1) << (15))) >> ((15) - (1)))

typedef void (*BgMoriHineriActionFunc)(struct BgMoriHineri*, PlayState*);

typedef struct BgMoriHineri {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgMoriHineriActionFunc actionFunc;
    /* 0x0168 */ s8 moriHineriObjectSlot;
    /* 0x0169 */ s8 moriTexObjectSlot;
    /* 0x016A */ s8 boxObjectSlot;
    /* 0x016B */ s8 switchFlag;
} BgMoriHineri; // size = 0x016C

#endif
