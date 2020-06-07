#ifndef _Z_EN_ZF_H_
#define _Z_EN_ZF_H_

#include <ultra64.h>
#include <global.h>

struct EnZf;

typedef struct EnZf {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x41C];
} EnZf; // size = 0x0568

extern const ActorInit En_Zf_InitVars;

#endif
