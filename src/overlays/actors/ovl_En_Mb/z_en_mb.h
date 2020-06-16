#ifndef _Z_EN_MB_H_
#define _Z_EN_MB_H_

#include <ultra64.h>
#include <global.h>

struct EnMb;

typedef struct EnMb {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x3C0];
} EnMb; // size = 0x050C

extern const ActorInit En_Mb_InitVars;

#endif
