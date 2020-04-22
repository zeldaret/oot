#ifndef _Z_EN_FHG_H_
#define _Z_EN_FHG_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x148];
} EnfHG; // size = 0x0294

extern const ActorInit En_Fhg_InitVars;

#endif
