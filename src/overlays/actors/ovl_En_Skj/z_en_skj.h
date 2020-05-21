#ifndef _Z_EN_SKJ_H_
#define _Z_EN_SKJ_H_

#include <ultra64.h>
#include <global.h>

struct EnSkj;

typedef struct EnSkj {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1B4];
} EnSkj; // size = 0x0300

extern const ActorInit En_Skj_InitVars;

#endif
