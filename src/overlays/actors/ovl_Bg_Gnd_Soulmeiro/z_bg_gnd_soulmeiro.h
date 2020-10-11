#ifndef _Z_BG_GND_SOULMEIRO_H_
#define _Z_BG_GND_SOULMEIRO_H_

#include "ultra64.h"
#include "global.h"

struct BgGndSoulmeiro;

typedef void (*BgGndSoulmeiroActionFunc)(struct BgGndSoulmeiro*, GlobalContext*);

typedef struct BgGndSoulmeiro {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder collider;
    /* 0x0198 */ u16 unk_198;
    /* 0x019C */ BgGndSoulmeiroActionFunc actionFunc;
} BgGndSoulmeiro; // size = 0x01A0

extern const ActorInit Bg_Gnd_Soulmeiro_InitVars;

#endif
