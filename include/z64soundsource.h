#ifndef Z64SOUND_SOURCE_H
#define Z64SOUND_SOURCE_H

#include "ultra64.h"
#include "z64math.h"

typedef struct {
    /* 0x00 */ u16 countdown;
    /* 0x04 */ Vec3f worldPos;
    /* 0x10 */ Vec3f projectedPos;
} SfxSource; // size = 0x1C

#endif
