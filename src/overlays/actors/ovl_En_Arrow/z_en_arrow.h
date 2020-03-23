#ifndef _Z_EN_ARROW_H_
#define _Z_EN_ARROW_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x114];
} EnArrow; // size = 0x0260

extern const ActorInit En_Arrow_InitVars;

#endif
