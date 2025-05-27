#ifndef Z_BOSS_SST_H
#define Z_BOSS_SST_H

#include "ultra64.h"
#include "z64actor.h"

struct BossSst;

typedef void (*BossSstActionFunc)(struct BossSst*, struct PlayState*);

#define BOSS_SST_EFFECT_COUNT 18

typedef struct BossSstEffect {
    /* 0x0000 */ Vec3f pos;
    /* 0x0010 */ Vec3f vel;
    /* 0x0018 */ Vec3s rot;
    /* 0x001E */ u16 scale;
    /* 0x0020 */ s16 move;
    /* 0x0022 */ s16 status;
    /* 0x0024 */ u8 alpha;
} BossSstEffect; // size = 0x28

typedef struct BossSstHandTrail {
    /* 0x0000 */ PosRot world;
    /* 0x0014 */ f32 zPosMod;
    /* 0x0018 */ s16 yRotMod;
} BossSstHandTrail; // size = 0x1C

typedef struct BossSst {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ BossSstActionFunc actionFunc;
    /* 0x0194 */ s8 actionVar; // head: flag for visible without lens; hand: 1 for right, -1 for left
    /* 0x0195 */ s8 ready;
    /* 0x0196 */ u8 effectMode;
    /* 0x0198 */ s16 timer;
    /* 0x019A */ s16 handAngSpeed;
    /* 0x019C */ s16 handMaxSpeed;
    /* 0x019E */ s16 handZPosMod;
    /* 0x01A0 */ s16 handYRotMod;
    /* 0x01A2 */ s16 amplitude;
    /* 0x01A4 */ s16 targetYaw;
    /* 0x01A6 */ s16 targetRoll;
    /* 0x01A8 */ Vec3s jointTable[45];
    /* 0x02B6 */ Vec3s morphTable[45];
    /* 0x03C4 */ f32 radius;
    /* 0x03C8 */ Vec3f center;
    /* 0x03D4 */ ColliderJntSph colliderJntSph;
    /* 0x03F4 */ ColliderJntSphElement colliderJntSphElements[11];
    /* 0x06B4 */ ColliderCylinder colliderCylinder;
    /* 0x0700 */ BossSstEffect effects[BOSS_SST_EFFECT_COUNT];
    /* 0x09D0 */ s16 trailIndex;
    /* 0x09D2 */ s16 trailCount;
    /* 0x09D4 */ BossSstHandTrail handTrails[7];
} BossSst; // size = 0x0A98

typedef enum BossSstType {
    /* -1 */ BONGO_HEAD = -1,
    /*  0 */ BONGO_LEFT_HAND,
    /*  1 */ BONGO_RIGHT_HAND
} BossSstType;

#endif
