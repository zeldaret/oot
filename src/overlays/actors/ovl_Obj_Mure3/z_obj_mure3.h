#ifndef Z_OBJ_MURE3_H
#define Z_OBJ_MURE3_H

#include "ultra64.h"
#include "z64actor.h"

struct ObjMure3;

typedef void (*ObjMure3ActionFunc)(struct ObjMure3*, struct PlayState*);
typedef void (*ObjMure3SpawnFunc)(struct ObjMure3*, struct PlayState*);

typedef struct ObjMure3 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ObjMure3ActionFunc actionFunc;
    /* 0x0150 */ struct EnItem00* unk_150[7];
    /* 0x016C */ u16 unk_16C;
} ObjMure3; // size = 0x0170

#endif
