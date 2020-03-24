#ifndef _Z_EN_FLOORMAS_H_
#define _Z_EN_FLOORMAS_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1C8];
} EnFloormas; // size = 0x0314

extern const ActorInit En_Floormas_InitVars;

#endif
