#ifndef _Z_EN_M_THUNDER_H_
#define _Z_EN_M_THUNDER_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x80];
} EnMThunder; // size = 0x01CC

extern const ActorInit En_M_Thunder_InitVars;

#endif
