#ifndef _Z_BG_GND_FIREMEIRO_H_
#define _Z_BG_GND_FIREMEIRO_H_

#include "ultra64.h"
#include "global.h"

struct BgGndFiremeiro;

typedef void (*BgGndFiremeiroActionFunc)(struct BgGndFiremeiro*, GlobalContext*);

typedef struct BgGndFiremeiro {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ Vec3f unk_164;
    /* 0x0170 */ char unk_170[0x4];
    /* 0x0174 */ BgGndFiremeiroActionFunc actionFunc;
} BgGndFiremeiro; // size = 0x0178

extern const ActorInit Bg_Gnd_Firemeiro_InitVars;

#endif
