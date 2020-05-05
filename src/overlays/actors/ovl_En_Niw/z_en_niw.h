#ifndef _Z_EN_NIW_H_
#define _Z_EN_NIW_H_

#include <ultra64.h>
#include <global.h>

struct EnNiw;

typedef struct EnNiw {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x66C];
} EnNiw; // size = 0x07B8

extern const ActorInit En_Niw_InitVars;

#endif
