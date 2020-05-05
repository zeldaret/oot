#ifndef _Z_EN_XC_H_
#define _Z_EN_XC_H_

#include <ultra64.h>
#include <global.h>

struct EnXc;

typedef struct EnXc {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1F0];
} EnXc; // size = 0x033C

extern const ActorInit En_Xc_InitVars;

#endif
