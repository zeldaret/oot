#ifndef _Z_DEMO_IM_H_
#define _Z_DEMO_IM_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1B0];
} DemoIm; // size = 0x02FC

extern const ActorInit Demo_Im_InitVars;

#endif
