#ifndef _Z_OCEFF_WIPE2_H_
#define _Z_OCEFF_WIPE2_H_

#include "ultra64.h"
#include "global.h"

struct OceffWipe2;

typedef struct OceffWipe2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s16 counter;
} OceffWipe2; // size = 0x0150

extern const ActorInit Oceff_Wipe2_InitVars;

#endif
