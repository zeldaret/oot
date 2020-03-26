#ifndef _Z_EN_DS_H_
#define _Z_EN_DS_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xA4];
} EnDs; // size = 0x01F0

extern const ActorInit En_Ds_InitVars;

#endif
