#ifndef _Z_DEMO_DU_H_
#define _Z_DEMO_DU_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x68];
} DemoDu; // size = 0x01B4

extern const ActorInit Demo_Du_InitVars;

#endif
