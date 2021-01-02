#ifndef _Z_EN_NY_H_
#define _Z_EN_NY_H_

#include "ultra64.h"
#include "global.h"

struct EnNy;

typedef void (*EnNyActionFunc)(struct EnNy*, GlobalContext*);

typedef struct EnNy {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnNyActionFunc actionFunc;
    /* 0x0150 */ ColliderJntSph collider;
    /* 0x0170 */ ColliderJntSphItem items;
    /* 0x01B0 */ char unk_1B0[0x108];
    ///* 0x014C */ char unk_150[0x168];
    /* 0x01
} EnNy; // size = 0x02B8

extern const ActorInit En_Ny_InitVars;

#endif
