#ifndef _Z_BG_HAKA_GATE_H_
#define _Z_BG_HAKA_GATE_H_

#include "ultra64.h"
#include "global.h"

struct BgHakaGate;

typedef void (*BgHakaGateActionFunc)(struct BgHakaGate*, GlobalContext*);

typedef struct BgHakaGate {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgHakaGateActionFunc actionFunc;
    /* 0x0168 */ u8 switchFlag;
    /* 0x016A */ s16 timer;
    /* 0x016C */ s16 unk_16C;
    /* 0x016E */ s16 unk_16E;
    /* 0x0170 */ s16 unk_170;
    /* 0x0172 */ s16 frames;
} BgHakaGate; // size = 0x0174

extern const ActorInit Bg_Haka_Gate_InitVars;

#endif
