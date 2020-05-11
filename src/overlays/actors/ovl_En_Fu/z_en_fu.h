#ifndef _Z_EN_FU_H_
#define _Z_EN_FU_H_

#include <ultra64.h>
#include <global.h>

struct EnFu;

typedef struct EnFu {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x164];
} EnFu; // size = 0x02B0

extern const ActorInit En_Fu_InitVars;

#endif
