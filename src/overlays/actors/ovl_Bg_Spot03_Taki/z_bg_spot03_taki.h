#ifndef _Z_BG_SPOT03_TAKI_H_
#define _Z_BG_SPOT03_TAKI_H_

#include <ultra64.h>
#include <global.h>

struct BgSpot03Taki;

typedef void (*BgSpot03TakiActionFunc)(struct BgSpot03Taki*, struct GlobalContext*);

typedef struct BgSpot03Taki {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgSpot03TakiActionFunc actionFunc;
    /* 0x0168 */ s32 unk_168;
    /* 0x016C */ s16 switchFlag;
    /* 0x0170 */ f32 unk_170;
    /* 0x0174 */ s8 unk_174;
} BgSpot03Taki; // size = 0x0178

extern const ActorInit Bg_Spot03_Taki_InitVars;

#endif
