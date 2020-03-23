#ifndef _Z_EN_NIW_LADY_H_
#define _Z_EN_NIW_LADY_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1B0];
} EnNiwLady; // size = 0x02FC

extern const ActorInit En_Niw_Lady_InitVars;

#endif
