#ifndef _Z_OCEFF_WIPE_H_
#define _Z_OCEFF_WIPE_H_

#include "ultra64.h"
#include "global.h"

typedef enum {
    /* 0x00 */ OCEFF_WIPE_ZL,
    /* 0x01 */ OCEFF_WIPE_SOT
} OceffWipeType;

struct OceffWipe;

typedef struct OceffWipe {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s16 counter;
} OceffWipe; // size = 0x0150

extern const ActorInit Oceff_Wipe_InitVars;

#endif
