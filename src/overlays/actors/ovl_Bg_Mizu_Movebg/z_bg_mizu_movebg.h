#ifndef _Z_BG_MIZU_MOVEBG_H_
#define _Z_BG_MIZU_MOVEBG_H_

#include "ultra64.h"
#include "global.h"

struct BgMizuMovebg;

typedef void (*BgMizuMovebgActionFunc)(struct BgMizuMovebg*, GlobalContext*);

typedef struct BgMizuMovebg {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgMizuMovebgActionFunc actionFunc;
    /* 0x0168 */ f32 unk_168;
    /* 0x016C */ s32 unk_16C;
    /* 0x0170 */ s32 unk_170;
    /* 0x0174 */ s32 unk_174;
    /* 0x0178 */ s32 unk_178;
    /* 0x017C */ u8 unk_17C;
    /* 0x0180 */ Gfx* unk_180;
    /* 0x0184 */ s32 unk_184;
} BgMizuMovebg; // size = 0x0188

extern const ActorInit Bg_Mizu_Movebg_InitVars;

#endif
