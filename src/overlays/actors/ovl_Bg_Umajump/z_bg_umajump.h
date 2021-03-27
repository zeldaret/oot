#ifndef _Z_BG_UMAJUMP_H_
#define _Z_BG_UMAJUMP_H_

#include "ultra64.h"
#include "global.h"

struct BgUmaJump;

typedef struct BgUmaJump {
    /* 0x0000 */ DynaPolyActor dyna;
} BgUmaJump; // size = 0x0164

extern const ActorInit Bg_Uma_Jump_InitVars;

#endif
