#ifndef _Z_EFC_ERUPC_H_
#define _Z_EFC_ERUPC_H_

#include "ultra64.h"
#include "global.h"

struct EfcErupc;

typedef struct EfcErupc {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1780];
} EfcErupc; // size = 0x18CC

extern const ActorInit Efc_Erupc_InitVars;

#endif
