#ifndef _Z_EN_EX_RUPPY_H_
#define _Z_EN_EX_RUPPY_H_

#include <ultra64.h>
#include <global.h>

struct EnExRuppy;

typedef struct EnExRuppy {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x18];
} EnExRuppy; // size = 0x0164

extern const ActorInit En_Ex_Ruppy_InitVars;

#endif
