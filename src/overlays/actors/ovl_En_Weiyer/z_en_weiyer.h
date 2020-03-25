#ifndef _Z_EN_WEIYER_H_
#define _Z_EN_WEIYER_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x184];
} EnWeiyer; // size = 0x02D0

extern const ActorInit En_Weiyer_InitVars;

#endif
