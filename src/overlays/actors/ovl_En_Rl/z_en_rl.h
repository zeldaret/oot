#ifndef _Z_EN_RL_H_
#define _Z_EN_RL_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x60];
} EnRl; // size = 0x01AC

extern const ActorInit En_Rl_InitVars;

#endif
