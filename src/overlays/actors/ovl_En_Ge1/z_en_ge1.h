#ifndef _Z_EN_GE1_H_
#define _Z_EN_GE1_H_

#include <ultra64.h>
#include <global.h>

struct EnGe1;

typedef struct EnGe1 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x170];
} EnGe1; // size = 0x02BC

extern const ActorInit En_Ge1_InitVars;

#endif
