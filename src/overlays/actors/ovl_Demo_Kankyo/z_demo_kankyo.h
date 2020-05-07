#ifndef _Z_DEMO_KANKYO_H_
#define _Z_DEMO_KANKYO_H_

#include <ultra64.h>
#include <global.h>

struct DemoKankyo;

typedef struct DemoKankyo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x4B8];
} DemoKankyo; // size = 0x0604

extern const ActorInit Demo_Kankyo_InitVars;

#endif
