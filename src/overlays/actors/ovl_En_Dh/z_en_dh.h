#ifndef _Z_EN_DH_H_
#define _Z_EN_DH_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1D8];
} EnDh; // size = 0x0324

extern const ActorInit En_Dh_InitVars;

#endif
