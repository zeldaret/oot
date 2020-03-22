#ifndef _Z_DEMO_TRE_LGT_H_
#define _Z_DEMO_TRE_LGT_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x30];
} DemoTreLgt; // size = 0x017C

extern const ActorInit Demo_Tre_Lgt_InitVars;

#endif
