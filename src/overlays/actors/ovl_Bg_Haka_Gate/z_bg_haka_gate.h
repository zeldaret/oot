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
    /* 0x016A */ s16 actionVar1; // action timer, turn direction when statue is pushed
    /* 0x016C */ s16 actionVar2; // statue turn rate in 10ths of a degree per frame, floor open angle
    /* 0x016E */ s16 actionVar3; // statue turn angle in 10ths of a degree, skull flame scale
    /* 0x0170 */ s16 actionVar4; // statue rotation in 10ths of a degree, unused skull of truth flag
    /* 0x0172 */ s16 actionVar5; // initial rotation when pushing statue, skull flame tex scroll counter
} BgHakaGate; // size = 0x0174

typedef enum {
    BGHAKAGATE_STATUE,
    BGHAKAGATE_FLOOR,
    BGHAKAGATE_GATE,
    BGHAKAGATE_SKULL
} BgHakaGateType;

extern const ActorInit Bg_Haka_Gate_InitVars;

#endif
