#ifndef _Z_EN_TANA_H_
#define _Z_EN_TANA_H_

#include <ultra64.h>
#include <global.h>

struct EnTana;

typedef struct EnTana {
    /* 0x0000 */ Actor actor;
} EnTana; // size = 0x014C

extern const ActorInit En_Tana_InitVars;

#endif
