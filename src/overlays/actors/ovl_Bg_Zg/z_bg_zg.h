#ifndef _Z_BG_ZG_H_
#define _Z_BG_ZG_H_

#include "ultra64.h"
#include "global.h"

struct BgZg;

typedef void (*BgZgActionFunc)(struct BgZg*, GlobalContext*);
typedef void (*BgZgDrawFunc)(struct BgZg*, GlobalContext*);

typedef struct BgZg {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ s32 action;
    /* 0x0168 */ s32 drawConfig;
} BgZg; // size = 0x016C

#endif
