#ifndef _Z_EN_SB_H_
#define _Z_EN_SB_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xBC];
} EnSb; // size = 0x0208

extern const ActorInit En_Sb_InitVars;

#endif
