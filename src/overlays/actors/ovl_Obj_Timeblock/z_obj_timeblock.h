#ifndef _Z_OBJ_TIMEBLOCK_H_
#define _Z_OBJ_TIMEBLOCK_H_

#include "ultra64.h"
#include "global.h"

struct ObjTimeblock;

typedef void (*ObjTimeblockActionFunc)(struct ObjTimeblock*, GlobalContext*);

typedef struct ObjTimeblock {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ char unk_164[0x4];
    /* 0x0168 */ ObjTimeblockActionFunc actionFunc;
    /* 0x016C */ char unk_16C[0x10];
} ObjTimeblock; // size = 0x017C

extern const ActorInit Obj_Timeblock_InitVars;

#endif
