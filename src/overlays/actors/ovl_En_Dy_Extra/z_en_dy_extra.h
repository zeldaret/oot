#ifndef _Z_EN_DY_EXTRA_H_
#define _Z_EN_DY_EXTRA_H_

#include <ultra64.h>
#include <global.h>

struct EnDyExtra;

typedef struct EnDyExtra {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x28];
} EnDyExtra; // size = 0x0174

extern const ActorInit En_Dy_Extra_InitVars;

#endif
