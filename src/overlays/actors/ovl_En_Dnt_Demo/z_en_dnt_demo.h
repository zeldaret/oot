#ifndef _Z_EN_DNT_DEMO_H_
#define _Z_EN_DNT_DEMO_H_

#include "ultra64.h"
#include "global.h"

struct EnDntDemo;

typedef struct EnDntDemo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xB4];
} EnDntDemo; // size = 0x0200

extern const ActorInit En_Dnt_Demo_InitVars;

#endif
