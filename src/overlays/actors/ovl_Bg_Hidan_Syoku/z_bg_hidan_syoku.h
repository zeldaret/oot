#ifndef _Z_BG_HIDAN_SYOKU_H_
#define _Z_BG_HIDAN_SYOKU_H_

#include <ultra64.h>
#include <global.h>

struct BgHidanSyoku;

typedef void (*BgHidanSyokuActionFunc)(struct BgHidanSyoku*, GlobalContext*);

typedef struct BgHidanSyoku {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgHidanSyokuActionFunc actionFunc;
    /* 0x0168 */ s16 unk_168;
    /* 0x016A */ s16 unk_16A;
} BgHidanSyoku; // size = 0x016C

extern const ActorInit Bg_Hidan_Syoku_InitVars;

#endif;
