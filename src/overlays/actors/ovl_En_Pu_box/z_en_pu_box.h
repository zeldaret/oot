#ifndef Z_EN_PU_BOX_H
#define Z_EN_PU_BOX_H

#include "ultra64.h"
#include "actor.h"

struct EnPubox;

typedef struct EnPubox {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ u32 unused_164; // Set to 1 on initialization, has no other uses
} EnPubox; // size = 0x0168

#endif
