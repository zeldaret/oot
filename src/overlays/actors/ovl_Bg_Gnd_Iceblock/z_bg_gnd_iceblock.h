#ifndef _Z_BG_GND_ICEBLOCK_H_
#define _Z_BG_GND_ICEBLOCK_H_

#include "ultra64.h"
#include "global.h"

struct BgGndIceblock;

typedef void (*BgGndIceblockActionFunc)(struct BgGndIceblock*, GlobalContext*);

typedef struct BgGndIceblock {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgGndIceblockActionFunc actionFunc;
    /* 0x0168 */ Vec3f targetPos;
} BgGndIceblock; // size = 0x0174

extern const ActorInit Bg_Gnd_Iceblock_InitVars;

#endif
