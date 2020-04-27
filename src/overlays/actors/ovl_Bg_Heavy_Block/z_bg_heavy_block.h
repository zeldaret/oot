#ifndef _Z_BG_HEAVY_BLOCK_H_
#define _Z_BG_HEAVY_BLOCK_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ char unk_164[0x4];
    /* 0x0168 */ f32 unk_168;
    /* 0x016C */ char unk_16C[0x4];
    /* 0x0170 */ s16 timer;
    /* 0x0172 */ u16 unk_172;
    /* 0x0174 */ ActorFunc actionFunc;
} BgHeavyBlock; // size = 0x0178

extern const ActorInit Bg_Heavy_Block_InitVars;

#endif
