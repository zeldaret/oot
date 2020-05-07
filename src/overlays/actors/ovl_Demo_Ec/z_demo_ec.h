#ifndef _Z_DEMO_EC_H_
#define _Z_DEMO_EC_H_

#include <ultra64.h>
#include <global.h>

struct DemoEc;

typedef struct DemoEc {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x5C];
} DemoEc; // size = 0x01A8

extern const ActorInit Demo_Ec_InitVars;

#endif
