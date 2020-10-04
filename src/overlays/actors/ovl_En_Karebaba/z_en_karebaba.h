#ifndef _Z_EN_KAREBABA_H_
#define _Z_EN_KAREBABA_H_

#include "ultra64.h"
#include "global.h"

struct EnKarebaba;

typedef struct EnKarebaba {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x144];
} EnKarebaba; // size = 0x0290

extern const ActorInit En_Karebaba_InitVars;

#endif
