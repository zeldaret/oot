#ifndef _Z_BG_JYA_IRONOBJ_H_
#define _Z_BG_JYA_IRONOBJ_H_

#include "ultra64.h"
#include "global.h"

struct BgJyaIronobj;

typedef void (*BgJyaIronobjActionFunc)(struct BgJyaIronobj*, GlobalContext*);

typedef struct BgJyaIronobj {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgJyaIronobjActionFunc actionFunc;
    /* 0x0168 */ ColliderCylinder colCylinder;
} BgJyaIronobj; // size = 0x01B4

extern const ActorInit Bg_Jya_Ironobj_InitVars;

#endif
