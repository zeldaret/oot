#ifndef _Z_EN_ICE_HONO_H_
#define _Z_EN_ICE_HONO_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x70];
} EnIceHono; // size = 0x01BC

extern const ActorInit En_Ice_Hono_InitVars;

#endif
