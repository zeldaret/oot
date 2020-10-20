#ifndef _Z_EN_SYATEKI_MAN_H_
#define _Z_EN_SYATEKI_MAN_H_

#include "ultra64.h"
#include "global.h"

struct EnSyatekiMan;

typedef struct EnSyatekiMan {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xE0];
} EnSyatekiMan; // size = 0x022C

extern const ActorInit En_Syateki_Man_InitVars;

#endif
