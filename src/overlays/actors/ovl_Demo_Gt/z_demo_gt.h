#ifndef _Z_DEMO_GT_H_
#define _Z_DEMO_GT_H_

#include <ultra64.h>
#include <global.h>

struct DemoGt;

typedef struct DemoGt {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x5C];
} DemoGt; // size = 0x01A8

extern const ActorInit Demo_Gt_InitVars;

#endif
