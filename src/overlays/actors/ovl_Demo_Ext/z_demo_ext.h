#ifndef _Z_DEMO_EXT_H_
#define _Z_DEMO_EXT_H_

#include <ultra64.h>
#include <global.h>

struct DemoExt;

typedef struct DemoExt {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x38];
} DemoExt; // size = 0x0184

extern const ActorInit Demo_Ext_InitVars;

#endif
