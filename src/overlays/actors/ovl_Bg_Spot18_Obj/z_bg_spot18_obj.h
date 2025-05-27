#ifndef Z_BG_SPOT18_OBJ_H
#define Z_BG_SPOT18_OBJ_H

#include "ultra64.h"
#include "z64actor.h"

struct BgSpot18Obj;

typedef void (*BgSpot18ObjActionFunc)(struct BgSpot18Obj*, struct PlayState*);
typedef s32 (*BgSpot18ObjInitFunc)(struct BgSpot18Obj*, struct PlayState*);

typedef struct BgSpot18Obj {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgSpot18ObjActionFunc actionFunc;
    /* 0x0168 */ s16 unk_168;
} BgSpot18Obj; // size = 0x016C

#endif
