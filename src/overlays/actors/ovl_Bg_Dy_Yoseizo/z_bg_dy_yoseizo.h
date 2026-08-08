#ifndef Z_BG_DY_YOSEIZO_H
#define Z_BG_DY_YOSEIZO_H

#include "ultra64.h"
#include "actor.h"

#define BG_DY_YOSEIZO_EFFECT_COUNT 200

typedef struct BgDyYoseizoEffect {
    /* 0x00 */ u8 active;
    /* 0x01 */ char pad_1[3];
    /* 0x04 */ Vec3f pos;
    /* 0x10 */ Vec3f vel;   // for type == 0
    /* 0x1C */ Vec3f accel; // for type == 0
    /* 0x28 */ Color_RGB8 innerColor;
    /* 0x2B */ Color_RGB8 outerColor;
    /* 0x2E */ s16 alpha;
    /* 0x30 */ f32 scale;
    /* 0x34 */ s16 life;
    /* 0x36 */ s16 type;
    /* 0x38 */ f32 pitch; // for type != 0
    /* 0x3C */ f32 yaw;   // for type != 0
    /* 0x40 */ f32 rot;
} BgDyYoseizoEffect; // size = 0x44

struct BgDyYoseizo;

typedef void (*BgDyYoseizoActionFunc)(struct BgDyYoseizo*, struct PlayState*);

typedef struct BgDyYoseizo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ void (*actionFunc)(struct BgDyYoseizo*, struct PlayState*);
    /* 0x0150 */ SkelAnime skelAnime;
    /* 0x0194 */ Vec3s jointTable[28];
    /* 0x023C */ Vec3s morphTable[28];
    /* 0x02E4 */ u8 hasSpawnedDemoEffect;
    /* 0x02E5 */ u8 giveDoubleDefense;
    /* 0x02E6 */ u8 energyRefilled;
    /* 0x02E7 */ char pad_2E7[1];
    /* 0x02E8 */ s16 disappearTimer;
    /* 0x02EA */ s16 isNewAcquireMagic;
    /* 0x02EC */ s16 reward;
    /* 0x02EE */ s16 waitMessageState;
    /* 0x02F0 */ s16 unk_2F0; // unused
    /* 0x02F2 */ s16 eyeTexIndex;
    /* 0x02F4 */ s16 unusedEyeTexIndex;
    /* 0x02F6 */ s16 mouthTexIndex;
    /* 0x02F8 */ s16 eyeTimer;
    /* 0x02FA */ s16 unk_2FA; // unused
    /* 0x02FC */ s16 hasSwitchedAnim;
    /* 0x02FE */ s16 isDoneAppearing;
    /* 0x0300 */ s16 hasSpawnedItem;
    /* 0x0302 */ s16 refillTimer;
    /* 0x0304 */ s16 unk304;
    /* 0x0306 */ s16 refillTimeoutTimer;
    /* 0x0308 */ f32 scale;
    /* 0x030C */ f32 aboveFountainY;
    /* 0x0310 */ f32 homePosY;
    /* 0x0314 */ f32 yApproachFraction;
    /* 0x0318 */ f32 scaleApproachFraction;
    /* 0x031C */ f32 targetPosY;
    /* 0x0320 */ f32 offsetY;
    /* 0x0324 */ f32 yVelocityPhase;
    /* 0x0328 */ f32 focusY;
    /* 0x032C */ f32 curAnimLastFrame;
    /* 0x0330 */ char pad_330[4];
    /* 0x0334 */ Vec3s headRot;
    /* 0x033A */ Vec3s torsoRot;
    /* 0x0340 */ struct EnDyExtra* refillBeam;
    /* 0x0344 */ struct EnExItem* item;
    /* 0x0348 */ char pad_348[0x4C];
    /* 0x0394 */ BgDyYoseizoEffect effects[BG_DY_YOSEIZO_EFFECT_COUNT];
} BgDyYoseizo; // size = 0x38B4

#endif
