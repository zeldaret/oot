#ifndef _Z_OBJ_MURE2_H_
#define _Z_OBJ_MURE2_H_

#include "ultra64.h"
#include "global.h"

struct ObjMure2;

typedef void (*ObjMure2ActionFunc)(struct ObjMure2*, GlobalContext*);

typedef struct ObjMure2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ObjMure2ActionFunc actionFunc;
    /* 0x0150 */ Actor* unk_150[12];
    /* 0x0180 */ u16 unk_180;
    /* 0x0184 */ f32 unk_184;
} ObjMure2; // size = 0x0188

extern const ActorInit Obj_Mure2_InitVars;

#endif
