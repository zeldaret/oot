#ifndef _Z_EN_EIYER_H_
#define _Z_EN_EIYER_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x188];
} EnEiyer; // size = 0x02D4

extern const ActorInit En_Eiyer_InitVars;

#endif
