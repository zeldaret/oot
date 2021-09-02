#ifndef _Z_EN_IT_H_
#define _Z_EN_IT_H_

#include "ultra64.h"
#include "global.h"

struct EnIt;

typedef struct EnIt {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u32 unk_14C;
    /* 0x0150 */ ColliderCylinder collider;
} EnIt; // size = 0x019C

#endif
