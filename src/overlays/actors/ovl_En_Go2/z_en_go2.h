#ifndef _Z_EN_GO2_H_
#define _Z_EN_GO2_H_

#include <ultra64.h>
#include <global.h>

struct EnGo2;

typedef struct EnGo2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x454];
} EnGo2; // size = 0x05A0

extern const ActorInit En_Go2_InitVars;

#endif
