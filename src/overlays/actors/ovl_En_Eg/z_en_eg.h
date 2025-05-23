#ifndef Z_EN_EG_H
#define Z_EN_EG_H

#include "ultra64.h"
#include "z64actor.h"

struct EnEg;

typedef void (*EnEgActionFunc)(struct EnEg*, struct PlayState*);

typedef struct EnEg {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s32 action;
} EnEg; // size = 0x0154
#endif
