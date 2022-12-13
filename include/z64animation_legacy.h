#ifndef Z64_ANIMATION_LEGACY_H
#define Z64_ANIMATION_LEGACY_H

#include "ultra64.h"
#include "z64math.h"

typedef struct LegacyLimb {
    /* 0x000 */ Gfx* dList;
    /* 0x004 */ Vec3f trans;
    /* 0x010 */ Vec3s rot;
    /* 0x018 */ struct LegacyLimb* sibling;
    /* 0x01C */ struct LegacyLimb* child;
} LegacyLimb; // size = 0x20

typedef struct {
    /* 0x00 */ s16 xMax;
    /* 0x02 */ s16 x;
    /* 0x04 */ s16 yMax;
    /* 0x06 */ s16 y;
    /* 0x08 */ s16 zMax;
    /* 0x0A */ s16 z;
} LegacyJointKey; // size = 0x0C

// ZAPD compatibility typedefs
// TODO: Remove when ZAPD adds support for them
typedef LegacyJointKey JointKey;

typedef struct {
    /* 0x00 */ s16 frameCount;
    /* 0x02 */ s16 limbCount;
    /* 0x04 */ s16* frameData;
    /* 0x08 */ LegacyJointKey* jointKey;
} LegacyAnimationHeader; // size = 0xC

s32 SkelAnime_GetFrameDataLegacy(LegacyAnimationHeader* animation, s32 frame, Vec3s* frameTable);
s16 Animation_GetLimbCountLegacy(LegacyAnimationHeader* animation);
s16 Animation_GetLengthLegacy(LegacyAnimationHeader* animation);
s16 Animation_GetLastFrameLegacy(LegacyAnimationHeader* animation);

#endif
