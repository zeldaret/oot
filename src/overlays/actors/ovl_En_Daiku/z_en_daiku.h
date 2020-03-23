#ifndef _Z_EN_DAIKU_H_
#define _Z_EN_DAIKU_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x200];
} EnDaiku; // size = 0x034C

extern const ActorInit En_Daiku_InitVars;

#endif
