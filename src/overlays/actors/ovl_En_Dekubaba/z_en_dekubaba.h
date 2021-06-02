#ifndef _Z_EN_DEKUBABA_H_
#define _Z_EN_DEKUBABA_H_

#include "ultra64.h"
#include "global.h"

struct EnDekubaba;

typedef struct EnDekubaba {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x2CC];
} EnDekubaba; // size = 0x0418

extern const ActorInit En_Dekubaba_InitVars;

#endif
