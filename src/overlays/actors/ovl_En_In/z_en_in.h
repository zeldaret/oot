#ifndef Z_EN_IN_H
#define Z_EN_IN_H

#include "ultra64.h"
#include "actor.h"
#include "assets/objects/object_in/object_in.h"

struct EnIn;

typedef void (*EnInActionFunc)(struct EnIn*, struct PlayState*);

typedef struct EnIn {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnInActionFunc actionFunc;
    /* 0x0194 */ ColliderCylinder collider;
    /* 0x01E0 */ f32 horsebackAnimFrame;
    /* 0x01E4 */ s8 requiredObjectSlot;
    /* 0x01E6 */ s16 horsebackAnimationIdx;
    /* 0x01E8 */ s16 unusedAnimationIdx;
    /* 0x01EA */ s16 blinkTimer;
    /* 0x01EC */ s16 losingScreamTimer;
    /* 0x01EE */ s16 eyeIndex;
    /* 0x01F0 */ s16 subCamId;
    /* 0x01F2 */ s16 returnToCamId;
    /* 0x01F4 */ char unk_1F4[0x4];
    /* 0x01F8 */ s16 textState;
    /* 0x01FA */ s16 prevTextState;
    /* 0x01FC */ s16 unk_1FC;
    /* 0x01FE */ Vec3s jointTable[INGO_LIMB_MAX];
    /* 0x0276 */ Vec3s morphTable[INGO_LIMB_MAX];
    /* 0x02F0 */ Vec3f subCamAtOffset;
    /* 0x02FC */ Vec3f subCamEyeOffset;
    /* 0x0308 */ NpcInteractInfo interactInfo;
    /* 0x0330 */ Vec3s swayVec[INGO_LIMB_MAX];
} EnIn; // size = 0x03A8

typedef enum EnInHorseAnimation {
    /* 0 */ ENIN_HORSE_ANIM_SLOW_RIDE,
    /* 1 */ ENIN_HORSE_ANIM_SITTING_FORWARD,
    /* 2 */ ENIN_HORSE_ANIM_REARING,
    /* 3 */ ENIN_HORSE_ANIM_LASHING_FAST,
    /* 4 */ ENIN_HORSE_ANIM_LASHING_SLOW,
    /* 5 */ ENIN_HORSE_ANIM_KICKING,
    /* 6 */ ENIN_HORSE_ANIM_SITTING_UPRIGHT,
    /* 7 */ ENIN_HORSE_ANIM_WHOOPING,
    /* 8 */ ENIN_HORSE_ANIM_MAX
} EnInHorseAnimation;

#endif
