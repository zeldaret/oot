#ifndef _Z_EN_ENCOUNT2_H_
#define _Z_EN_ENCOUNT2_H_

#include "ultra64.h"
#include "global.h"

struct EnEncount2;

typedef struct EnEncount2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x10];
    /* 0x015C */ u16 unk_15C;
    /* 0x015E */ char unk_15E[0x8C2];
} EnEncount2; // size = 0x0A20

extern const ActorInit En_Encount2_InitVars;

#endif
