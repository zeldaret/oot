#ifndef _Z_EN_NY_H_
#define _Z_EN_NY_H_

#include <ultra64.h>
#include <global.h>

struct EnNy;

typedef struct EnNy {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x16C];
} EnNy; // size = 0x02B8

extern const ActorInit En_Ny_InitVars;

#endif
