#ifndef _Z_DEMO_GEFF_H_
#define _Z_DEMO_GEFF_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1C];
} DemoGeff; // size = 0x0168

extern const ActorInit Demo_Geff_InitVars;

#endif
