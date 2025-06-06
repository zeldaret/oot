#ifndef Z_EN_TORCH_H
#define Z_EN_TORCH_H

#include "ultra64.h"
#include "actor.h"

struct EnTorch;

typedef struct EnTorch {
    /* 0x0000 */ Actor actor;
} EnTorch; // size = 0x014C

#endif
