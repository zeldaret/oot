#ifndef _Z_EN_HEISHI2_H_
#define _Z_EN_HEISHI2_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x298];
} EnHeishi2; // size = 0x03E4

extern const ActorInit En_Heishi2_InitVars;

#endif
