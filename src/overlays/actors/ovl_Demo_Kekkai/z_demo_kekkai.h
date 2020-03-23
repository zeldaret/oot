#ifndef _Z_DEMO_KEKKAI_H_
#define _Z_DEMO_KEKKAI_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xB0];
} DemoKekkai; // size = 0x01FC

extern const ActorInit Demo_Kekkai_InitVars;

#endif
