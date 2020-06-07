#ifndef _Z_EN_RD_H_
#define _Z_EN_RD_H_

#include <ultra64.h>
#include <global.h>

struct EnRd;

typedef struct EnRd {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x220];
} EnRd; // size = 0x036C

extern const ActorInit En_Rd_InitVars;

#endif
