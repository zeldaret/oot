#ifndef _Z_EN_KAKASI3_H_
#define _Z_EN_KAKASI3_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xC0];
} EnKakasi3; // size = 0x020C

extern const ActorInit En_Kakasi3_InitVars;

#endif
