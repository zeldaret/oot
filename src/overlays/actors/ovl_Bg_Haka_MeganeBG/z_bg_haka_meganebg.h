#ifndef _Z_BG_HAKA_MEGANEBG_H_
#define _Z_BG_HAKA_MEGANEBG_H_

#include <ultra64.h>
#include <global.h>

struct BgHakaMeganeBG;

typedef void (*BgHakaMeganeBGActionFunc)(struct BgHakaMeganeBG*, GlobalContext*);

typedef struct BgHakaMeganeBG {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgHakaMeganeBGActionFunc actionFunc;
    /* 0x0168 */ char unk_168[0x1];
    /* 0x0169 */ s8 unk_169; // objBankIndex ?
    /* 0x016A */ char unk_16A[0x2];
} BgHakaMeganeBG; // size = 0x016C

extern const ActorInit Bg_Haka_Meganebg_InitVars;

#endif
