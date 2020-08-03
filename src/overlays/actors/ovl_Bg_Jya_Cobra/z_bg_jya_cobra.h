#ifndef _Z_BG_JYA_COBRA_H_
#define _Z_BG_JYA_COBRA_H_

#include "ultra64.h"
#include "global.h"

struct BgJyaCobra;

typedef void (*BgJyaCobraActionFunc)(struct BgJyaCobra*, GlobalContext*);

typedef struct BgJyaCobra {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgJyaCobraActionFunc actionFunc;
    /* 0x0168 */ char unk_168[0x0008];
    /* 0x0170 */ s16 unk_170;
    /* 0x0172 */ char unk_172[0x0002];
    /* 0x0174 */ Vec3f unk_174;
    /* 0x0180 */ char unk_180[0x000C];
    /* 0x018C */ f32 unk_18C;
    /* 0x0190 */ char unk_190[0x1014];
} BgJyaCobra; // size = 0x11A4

extern const ActorInit Bg_Jya_Cobra_InitVars;

#endif
