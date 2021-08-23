#ifndef _Z_BG_HAKA_ZOU_H_
#define _Z_BG_HAKA_ZOU_H_

#include "ultra64.h"
#include "global.h"

struct BgHakaZou;

typedef void (*BgHakaZouActionFunc)(struct BgHakaZou*, GlobalContext*);

typedef struct BgHakaZou {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgHakaZouActionFunc actionFunc;
    /* 0x0168 */ s8 requiredObjBankIndex;
    /* 0x0169 */ u8 switchFlag;
    /* 0x016A */ s16 timer;
    /* 0x016C */ ColliderCylinder collider;
} BgHakaZou; // size = 0x01B8

extern const ActorInit Bg_Haka_Zou_InitVars;

#endif
