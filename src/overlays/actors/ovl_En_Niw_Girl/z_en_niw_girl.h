#ifndef _Z_EN_NIW_GIRL_H_
#define _Z_EN_NIW_GIRL_H_

#include <ultra64.h>
#include <global.h>

struct EnNiwGirl;

typedef struct EnNiwGirl {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1B0];
} EnNiwGirl; // size = 0x02FC

extern const ActorInit En_Niw_Girl_InitVars;

#endif
