#ifndef _Z_BG_HAKA_MEGANEBG_H_
#define _Z_BG_HAKA_MEGANEBG_H_

#include "ultra64.h"
#include "global.h"

struct BgHakaMeganeBG;

typedef void (*BgHakaMeganeBGActionFunc)(struct BgHakaMeganeBG*, GlobalContext*);

typedef struct BgHakaMeganeBG {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgHakaMeganeBGActionFunc actionFunc;
    /* 0x0168 */ u8 unk_168;
    /* 0x016A */ s16 unk_16A;
} BgHakaMeganeBG; // size = 0x016C

#endif
