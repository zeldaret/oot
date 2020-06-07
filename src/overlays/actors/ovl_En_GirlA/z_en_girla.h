#ifndef _Z_EN_GIRLA_H_
#define _Z_EN_GIRLA_H_

#include <ultra64.h>
#include <global.h>

struct EnGirlA;

typedef struct EnGirlA {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x88];
} EnGirlA; // size = 0x01D4

extern const ActorInit En_Girla_InitVars;

#endif
