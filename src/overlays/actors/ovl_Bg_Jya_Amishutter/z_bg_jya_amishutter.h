#ifndef _Z_BG_JYA_AMISHUTTER_H_
#define _Z_BG_JYA_AMISHUTTER_H_

#include "ultra64.h"
#include "global.h"

struct BgJyaAmishutter;

typedef void (*BgJyaAmishutterActionFunc)(struct BgJyaAmishutter*);

typedef struct BgJyaAmishutter {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u32 dynaPolyId;
    /* 0x0150 */ char unk_150[0x14];
    /* 0x0164 */ BgJyaAmishutterActionFunc actionFunc;
} BgJyaAmishutter; // size = 0x0168

extern const ActorInit Bg_Jya_Amishutter_InitVars;

#endif
