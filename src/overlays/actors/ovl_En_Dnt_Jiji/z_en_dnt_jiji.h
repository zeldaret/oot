#ifndef _Z_EN_DNT_JIJI_H_
#define _Z_EN_DNT_JIJI_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x15C];
} EnDntJiji; // size = 0x02A8

extern const ActorInit En_Dnt_Jiji_InitVars;

#endif
