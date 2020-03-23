#ifndef _Z_EN_ENCOUNT2_H_
#define _Z_EN_ENCOUNT2_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x8D4];
} EnEncount2; // size = 0x0A20

extern const ActorInit En_Encount2_InitVars;

#endif
