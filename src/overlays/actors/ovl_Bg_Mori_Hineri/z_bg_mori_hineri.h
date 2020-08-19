#ifndef _Z_BG_MORI_HINERI_H_
#define _Z_BG_MORI_HINERI_H_

#include <ultra64.h>
#include <global.h>

struct BgMoriHineri;

typedef void (*BgMoriHineriActionFunc)(struct BgMoriHineri*, GlobalContext*);

typedef struct BgMoriHineri {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgMoriHineriActionFunc actionFunc;
    /* 0x0168 */ s8 moriHineriObjIdx;
    /* 0x0169 */ s8 moriTexObjIdx;
    /* 0x016A */ s8 boxObjIdx;
    /* 0x016B */ s8 switchFlag;
} BgMoriHineri; // size = 0x016C

extern const ActorInit Bg_Mori_Hineri_InitVars;

#endif
