#ifndef _Z_BG_SPOT15_SAKU_H_
#define _Z_BG_SPOT15_SAKU_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ActorFunc actionFunc;
    /* 0x0168 */ u64 unk_168;
    /* 0x0170 */ f32 unk_170;
    /* 0x0174 */ f32 unk_174;
    /* 0x0174 */ f32 unk_178;
    /* 0x017C */ s16 unk_17C;
} BgSpot15Saku; // size = 0x0180

extern const ActorInit Bg_Spot15_Saku_InitVars;

#endif
