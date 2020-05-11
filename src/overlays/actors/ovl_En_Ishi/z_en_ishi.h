#ifndef _Z_EN_ISHI_H_
#define _Z_EN_ISHI_H_

#include <ultra64.h>
#include <global.h>

struct EnIshi;

typedef struct EnIshi {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x50];
} EnIshi; // size = 0x019C

extern const ActorInit En_Ishi_InitVars;

#endif
