#ifndef _Z_BG_GANON_OTYUKA_H_
#define _Z_BG_GANON_OTYUKA_H_

#include "ultra64.h"
#include "global.h"

struct BgGanonOtyuka;

typedef void (*BgGanonOtyukaActionFunc)(struct BgGanonOtyuka*, GlobalContext*);

typedef struct BgGanonOtyuka {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgGanonOtyukaActionFunc actionFunc;
    /* 0x0168 */ s16 unk_168;
    /* 0x016A */ u8 unk_16A;
    /* 0x016B */ u8 unk_16B;
    /* 0x016C */ u8 unk_16C;
    /* 0x016D */ u8 unk_16D;
    /* 0x016E */ u8 unk_16E;
    /* 0x0170 */ f32 yScale;
    /* 0x0174 */ f32 primColorR;
    /* 0x0178 */ f32 primColorG;
    /* 0x017C */ f32 primColorB;
    /* 0x0180 */ f32 envColorR;
    /* 0x0184 */ f32 envColorG;
    /* 0x0188 */ f32 envColorB;
} BgGanonOtyuka; // size = 0x018C

extern const ActorInit Bg_Ganon_Otyuka_InitVars;

#endif
