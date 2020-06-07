#ifndef _Z_EN_KAKASI2_H_
#define _Z_EN_KAKASI2_H_

#include <ultra64.h>
#include <global.h>

struct EnKakasi2;

typedef struct EnKakasi2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xAC];
} EnKakasi2; // size = 0x01F8

extern const ActorInit En_Kakasi2_InitVars;

#endif
