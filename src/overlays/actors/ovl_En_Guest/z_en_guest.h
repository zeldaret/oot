#ifndef _Z_EN_GUEST_H_
#define _Z_EN_GUEST_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1C4];
} EnGuest; // size = 0x0310

extern const ActorInit En_Guest_InitVars;

#endif
