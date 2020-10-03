#ifndef _Z_EN_BILI_H_
#define _Z_EN_BILI_H_

#include "ultra64.h"
#include "global.h"

struct EnBili;

typedef struct EnBili {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xD4];
} EnBili; // size = 0x0220

extern const ActorInit En_Bili_InitVars;

#endif
