#ifndef _Z_BG_HIDAN_KOUSI_H_
#define _Z_BG_HIDAN_KOUSI_H_

#include <ultra64.h>
#include <global.h>

struct BgHidanKousi;

typedef void (*BgHidanKousiActionFunc)(struct BgHidanKousi*, GlobalContext*);

typedef struct BgHidanKousi {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgHidanKousiActionFunc actionFunc;
    /* 0x0168 */ s16 unk_168;
} BgHidanKousi; // size = 0x016C

extern const ActorInit Bg_Hidan_Kousi_InitVars;

#endif
