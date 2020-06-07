#ifndef _Z_OCEFF_WIPE3_H_
#define _Z_OCEFF_WIPE3_H_

#include <ultra64.h>
#include <global.h>

struct OceffWipe3;

typedef struct OceffWipe3 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s16 counter;
} OceffWipe3; // size = 0x0150

extern const ActorInit Oceff_Wipe3_InitVars;

#endif
