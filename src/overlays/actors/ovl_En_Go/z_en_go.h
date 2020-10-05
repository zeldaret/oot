#ifndef _Z_EN_GO_H_
#define _Z_EN_GO_H_

#include "ultra64.h"
#include "global.h"

struct EnGo;

typedef struct EnGo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x57C];
} EnGo; // size = 0x06C8

extern const ActorInit En_Go_InitVars;

#endif
