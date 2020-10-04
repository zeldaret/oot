#ifndef _Z_BG_HAKA_GATE_H_
#define _Z_BG_HAKA_GATE_H_

#include "ultra64.h"
#include "global.h"

struct BgHakaGate;

typedef void (*BgHakaGateActionFunc)(struct BgHakaGate*, GlobalContext*);

typedef struct BgHakaGate {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgHakaGateActionFunc actionFunc;
    /* 0x0168 */ char unk_168[0xC];
} BgHakaGate; // size = 0x0174

extern const ActorInit Bg_Haka_Gate_InitVars;

#endif
