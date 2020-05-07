#ifndef _Z_EN_DODONGO_H_
#define _Z_EN_DODONGO_H_

#include <ultra64.h>
#include <global.h>

struct EnDodongo;

typedef struct EnDodongo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x5DC];
} EnDodongo; // size = 0x0728

extern const ActorInit En_Dodongo_InitVars;

#endif
