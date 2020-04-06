#ifndef _Z_EN_GB_H_
#define _Z_EN_GB_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x2EC];
} EnGb; // size = 0x0438

extern const ActorInit En_Gb_InitVars;

#endif
