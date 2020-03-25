#ifndef _Z_EN_IN_H_
#define _Z_EN_IN_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x25C];
} EnIn; // size = 0x03A8

extern const ActorInit En_In_InitVars;

#endif
