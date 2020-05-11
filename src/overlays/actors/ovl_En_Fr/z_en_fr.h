#ifndef _Z_EN_FR_H_
#define _Z_EN_FR_H_

#include <ultra64.h>
#include <global.h>

struct EnFr;

typedef struct EnFr {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x278];
} EnFr; // size = 0x03C4

extern const ActorInit En_Fr_InitVars;

#endif
