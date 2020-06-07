#ifndef _Z_BG_HAKA_HUTA_H_
#define _Z_BG_HAKA_HUTA_H_

#include <ultra64.h>
#include <global.h>

struct BgHakaHuta;

typedef void (*BgHakaHutaActionFunc)(struct BgHakaHuta*, GlobalContext*);

typedef struct BgHakaHuta {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgHakaHutaActionFunc actionFunc;
    /* 0x0168 */ char unk_168[0x4];
} BgHakaHuta; // size = 0x016C

extern const ActorInit Bg_Haka_Huta_InitVars;

#endif
