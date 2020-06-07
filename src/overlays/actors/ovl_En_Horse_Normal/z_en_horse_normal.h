#ifndef _Z_EN_HORSE_NORMAL_H_
#define _Z_EN_HORSE_NORMAL_H_

#include <ultra64.h>
#include <global.h>

struct EnHorseNormal;

typedef struct EnHorseNormal {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1DC];
} EnHorseNormal; // size = 0x0328

extern const ActorInit En_Horse_Normal_InitVars;

#endif
