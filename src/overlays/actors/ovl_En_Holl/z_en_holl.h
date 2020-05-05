#ifndef _Z_EN_HOLL_H_
#define _Z_EN_HOLL_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s16 unk_14C;
    /* 0x014E */ u8 unk_14E;
    /* 0x014F */ u8 unk_14F;
    /* 0x0150 */ ActorFunc actionFunc;
} EnHoll; // size = 0x0154

extern const ActorInit En_Holl_InitVars;

#endif
