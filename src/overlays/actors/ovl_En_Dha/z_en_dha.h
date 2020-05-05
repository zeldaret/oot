#ifndef _Z_EN_DHA_H_
#define _Z_EN_DHA_H_

#include <ultra64.h>
#include <global.h>

struct EnDha;

typedef struct EnDha {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x214];
} EnDha; // size = 0x0360

extern const ActorInit En_Dha_InitVars;

#endif
