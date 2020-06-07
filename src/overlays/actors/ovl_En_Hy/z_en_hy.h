#ifndef _Z_EN_HY_H_
#define _Z_EN_HY_H_

#include <ultra64.h>
#include <global.h>

struct EnHy;

typedef struct EnHy {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1E8];
} EnHy; // size = 0x0334

extern const ActorInit En_Hy_InitVars;

#endif
