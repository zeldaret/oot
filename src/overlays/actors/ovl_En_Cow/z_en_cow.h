#ifndef _Z_EN_COW_H_
#define _Z_EN_COW_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x134];
} EnCow; // size = 0x0280

extern const ActorInit En_Cow_InitVars;

#endif
