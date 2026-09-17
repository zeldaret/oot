#ifndef Z_BG_SPOT09_OBJ_H
#define Z_BG_SPOT09_OBJ_H

#include "ultra64.h"
#include "actor.h"

typedef enum BgSpot09ObjType {
    /* 0 */ BG_SPOT09_OBJ_BRIDGE_SIDES,    // bridge geometry, cutscene layer only
    /* 1 */ BG_SPOT09_OBJ_BRIDGE_BROKEN,   // adult Link, before carpenters are rescued
    /* 2 */ BG_SPOT09_OBJ_BRIDGE_CHILD,    // child Link
    /* 3 */ BG_SPOT09_OBJ_TENT,            // carpenters' tent, adult Link
    /* 4 */ BG_SPOT09_OBJ_BRIDGE_REPAIRED, // adult Link, after carpenters are rescued
    /* 5 */ BG_SPOT09_OBJ_MAX
} BgSpot09ObjType;

struct BgSpot09Obj;

typedef struct BgSpot09Obj {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ char unk_164[0x04];
} BgSpot09Obj; // size = 0x0168

#endif
