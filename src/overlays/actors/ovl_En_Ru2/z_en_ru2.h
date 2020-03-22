#ifndef _Z_EN_RU2_H_
#define _Z_EN_RU2_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1C8];
} EnRu2; // size = 0x0314

extern const ActorInit En_Ru2_InitVars;

#endif
