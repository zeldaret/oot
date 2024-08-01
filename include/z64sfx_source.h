#ifndef Z64SFX_SOURCE_H
#define Z64SFX_SOURCE_H

#include "ultra64.h"
#include "z64math.h"

struct PlayState;

typedef struct SfxSource {
    /* 0x00 */ u16 countdown;
    /* 0x04 */ Vec3f worldPos;
    /* 0x10 */ Vec3f projectedPos;
} SfxSource; // size = 0x1C

#define SFX_SOURCE_COUNT 16

void SfxSource_InitAll(struct PlayState* play);
void SfxSource_UpdateAll(struct PlayState* play);
void SfxSource_PlaySfxAtFixedWorldPos(struct PlayState* play, Vec3f* worldPos, s32 duration, u16 sfxId);

#endif
