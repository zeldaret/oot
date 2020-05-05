#ifndef _Z_BG_GATE_SHUTTER_H_
#define _Z_BG_GATE_SHUTTER_H_

#include <ultra64.h>
#include <global.h>

struct BgGateShutter;

typedef void (*BgGateShutterActionFunc)(struct BgGateShutter*, GlobalContext*);

typedef struct BgGateShutter {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgGateShutterActionFunc actionFunc;
    /* 0x0168 */ s16 unk_168;
    /* 0x016C */ f32 somePosX;
    /* 0x0170 */ f32 somePosY;
    /* 0x0174 */ f32 somePosZ;
    /* 0x0178 */ s16 unk_178;
} BgGateShutter; // size = 0x017C

extern const ActorInit Bg_Gate_Shutter_InitVars;

#endif
