#ifndef _Z_BOSS_FD2_H_
#define _Z_BOSS_FD2_H_

#include "ultra64.h"
#include "global.h"

struct BossFd2;

typedef void (*BossFd2ActionFunc)(struct BossFd2*, GlobalContext*);

typedef struct BossFd2Mane {
    /* 0x000 */ Vec3f rot[10];
    /* 0x078 */ Vec3f pos[10];
    /* 0x0F0 */ Vec3f pull[10];
    /* 0x168 */ f32 scale[10];
    /* 0x190 */ Vec3f head;
} BossFd2Mane; //size = 0x19C

typedef struct BossFd2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ BossFd2ActionFunc actionFunc;
    /* 0x0194 */ u8 disableAT;
    /* 0x0196 */ s16 turnToLink;
    /* 0x0198 */ s16 actionState;
    /* 0x019A */ s16 unkTimer; //Increments every frame, but nothing uses it.
    /* 0x019C */ s16 varianceTimer;
    /* 0x019E */ char unk_19E[2];
    /* 0x01A0 */ char unk_1A0[2];
    /* 0x01A2 */ s16 blinkTimer;
    /* 0x01A4 */ s16 screamTimer;
    /* 0x01A6 */ s16 damageFlashTimer;
    /* 0x01A8 */ s16 holeCounter;
    /* 0x01AA */ s16 invincibilityTimer;
    /* 0x01AC */ s16 fakeoutCount;
    /* 0x01AE */ char unk_1AE[2];
    /* 0x01B0 */ char unk_1B0[0xC];
    /* 0x01BC */ s16 timers[5];
    /* 0x01C8 */ f32 bodyTex1x;
    /* 0x01CC */ f32 bodyTex1y;
    /* 0x01D0 */ f32 bodyTex2x;
    /* 0x01D4 */ f32 bodyTex2y;
    /* 0x01D8 */ char unk_1D8[0x18];
    /* 0x01F0 */ f32 animationLength;
    /* 0x01F4 */ char unk_1F4[0x1C];
    /* 0x0210 */ Vec3f headPos;
    /* 0x021C */ Vec3s headRot;
    /* 0x0222 */ char unk_222;
    /* 0x0223 */ u8 eyeState;
    /* 0x0224 */ char unk_224[0xC90]; //despite its size, seems to be unused.
    /* 0x0EB4 */ BossFd2Mane centerMane;
    /* 0x1050 */ BossFd2Mane rightMane;
    /* 0x11EC */ BossFd2Mane leftMane;
    /* 0x1388 */ char unk_1388[4];
    /* 0x138C */ f32 jawOpening;
    /* 0x1390 */ s16 deathState;
    /* 0x1392 */ s16 deathCamera;
    /* 0x1394 */ Vec3f cameraEye;
    /* 0x13A0 */ Vec3f cameraAt;
    /* 0x13AC */ char unk_13AC[0x18];
    /* 0x13C4 */ Vec3f cameraEyeVel;
    /* 0x13D0 */ Vec3f cameraAtVel;
    /* 0x13DC */ Vec3f cameraNextEye;
    /* 0x13E8 */ Vec3f cameraEyeMaxVel; //death cutscene camera stuff
    /* 0x13F4 */ Vec3f cameraNextAt;
    /* 0x1400 */ Vec3f cameraAtMaxVel;
    /* 0x140C */ f32 cameraSpeedMod;
    /* 0x1410 */ f32 cameraAccel;
    /* 0x1414 */ f32 cameraYMod;
    /* 0x1418 */ char unk_1418[4];
    /* 0x141C */ ColliderJntSph collider;
    /* 0x143C */ ColliderJntSphElement elements[9];
} BossFd2; // size = 0x167C

extern const ActorInit Boss_Fd2_InitVars;

#endif