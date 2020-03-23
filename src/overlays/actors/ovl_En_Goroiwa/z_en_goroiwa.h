#ifndef _Z_EN_GOROIWA_H_
#define _Z_EN_GOROIWA_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x88];
} EnGoroiwa; // size = 0x01D4

extern const ActorInit En_Goroiwa_InitVars;

#endif
