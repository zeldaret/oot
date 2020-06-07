#ifndef _Z_EN_FD_FIRE_H_
#define _Z_EN_FD_FIRE_H_

#include <ultra64.h>
#include <global.h>

struct EnFdFire;

typedef struct EnFdFire {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x60];
} EnFdFire; // size = 0x01AC

extern const ActorInit En_Fd_Fire_InitVars;

#endif
