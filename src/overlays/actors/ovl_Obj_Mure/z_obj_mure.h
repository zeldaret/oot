#ifndef _Z_OBJ_MURE_H_
#define _Z_OBJ_MURE_H_

#include "ultra64.h"
#include "global.h"

struct ObjMure;

typedef void (*ObjMureActionFunc)(struct ObjMure*, GlobalContext*);

typedef struct ObjMure {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ObjMureActionFunc actionFunc; // function
    /* 0x0150 */ s16 unk_150;
    /* 0x0152 */ s16 unk_152;
    /* 0x0154 */ s16 unk_154;
    /* 0x0156 */ s16 unk_156;
    /* 0x0158 */ char unk_158[0x54];
} ObjMure; // size = 0x01AC

extern const ActorInit Obj_Mure_InitVars;

#endif
