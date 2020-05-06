#ifndef _Z_EN_ZO_H_
#define _Z_EN_ZO_H_

#include <ultra64.h>
#include <global.h>

struct EnZo;

typedef struct EnZo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x55C];
} EnZo; // size = 0x06A8

extern const ActorInit En_Zo_InitVars;

#endif
