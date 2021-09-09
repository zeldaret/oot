#ifndef _Z_EN_EG_H_
#define _Z_EN_EG_H_

#include "ultra64.h"
#include "global.h"

struct EnEg;

typedef void (*EnEgActionFunc)(struct EnEg*, GlobalContext*);

typedef struct EnEg {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s32 action;
} EnEg; // size = 0x0154
#endif
