#ifndef _Z_OBJ_WARP2BLOCK_H_
#define _Z_OBJ_WARP2BLOCK_H_

#include "ultra64.h"
#include "global.h"

struct ObjWarp2block;

typedef void (*ObjWarp2blockActionFunc)(struct ObjWarp2block*, GlobalContext*);
typedef s32 (*OtherFunc)(struct ObjWarp2block*, GlobalContext*);

typedef struct ObjWarp2block {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ObjWarp2blockActionFunc actionFunc_164;
    /* 0x0168 */ OtherFunc actionFunc_168;
    /* 0x016C */ s16 unk_16C;
    /* 0x016E */ s16 unk_16E;
    /* 0x0170 */ s16 unk_170;
    /* 0x0172 */ u16 unk_172;
    /* 0x0174 */ s16 unk_174;
    /* 0x0176 */ char unk_176[2];
} ObjWarp2block; // size = 0x0178

extern const ActorInit Obj_Warp2block_InitVars;

#endif
