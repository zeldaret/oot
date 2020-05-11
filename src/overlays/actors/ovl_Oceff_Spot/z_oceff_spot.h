#ifndef _Z_OCEFF_SPOT_H_
#define _Z_OCEFF_SPOT_H_

#include <ultra64.h>
#include <global.h>

struct OceffSpot;

typedef struct OceffSpot {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x34];
} OceffSpot; // size = 0x0180

extern const ActorInit Oceff_Spot_InitVars;

#endif
