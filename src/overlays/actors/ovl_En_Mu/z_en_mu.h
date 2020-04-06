#ifndef _Z_EN_MU_H_
#define _Z_EN_MU_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x100];
} EnMu; // size = 0x024C

extern const ActorInit En_Mu_InitVars;

#endif
