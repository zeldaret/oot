#ifndef _Z_BOSS_FD_H_
#define _Z_BOSS_FD_H_

#include "ultra64.h"
#include "global.h"

struct BossFd;

typedef void (*BossFdActionFunc)(struct BossFd*, GlobalContext*);
    

typedef struct BossFdParticle {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ Vec3f velocity;
    /* 0x18 */ Vec3f accel;
    /* 0x24 */ u8 type;
    /* 0x25 */ u8 timer1;
    /* 0x26 */ Color_RGB8 color;
    /* 0x2A */ s16 alpha;
    /* 0x2C */ s16 timer2;
    /* 0x2E */ s16 kbAngle;
    /* 0x30 */ f32 scale;
    /* 0x34 */ union {f32 xRot; f32 scaleMod;};
    /* 0x38 */ union {f32 yRot; f32 yStop;};
} BossFdParticle; // size = 0x3C

typedef enum {
    /* 0 */ FD_NULL,
    /* 1 */ FD_EMBER,
    /* 2 */ FD_DEBRIS,
    /* 3 */ FD_DUST,
    /* 4 */ FD_FIRE_BREATH,
    /* 5 */ FD_SKULL_PIECE
} BossFdParticleType;

typedef enum {
    /*  -1 */ FD_WAIT_INTRO = -1,
    /*   0 */ FD_FLY_MAIN,
    /*   1 */ FD_FLY_HOLE,
    /*   2 */ FD_BURROW,
    /*   3 */ FD_EMERGE,
    /*  50 */ FD_FLY_CEILING = 50,
    /*  51 */ FD_DROP_ROCKS,
    /* 100 */ FD_FLY_CHASE = 100,
    /* 101 */ FD_FLY_UNUSED,
    /* 200 */ FD_DEATH_START = 200,
    /* 201 */ FD_SKIN_BURN,
    /* 202 */ FD_BONES_FALL,
    /* 203 */ FD_SKULL_PAUSE,
    /* 204 */ FD_SKULL_FALL,
    /* 205 */ FD_SKULL_BURN
} BossFdActionStates;

typedef struct BossFdMane {
    /* 0x000 */ Vec3f pos[30];
    /* 0x168 */ f32 scale[30];
    /* 0x1E0 */ Vec3f head;
} BossFdMane; // size = 0x1EC

typedef struct BossFd {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnimeHead;
    /* 0x0190 */ SkelAnime skelAnimeRightArm;
    /* 0x01D4 */ SkelAnime skelAnimeLeftArm;
    /* 0x0218 */ BossFdActionFunc actionFunc;
    /* 0x021C */ s16 fireBreathTimer;
    /* 0x021E */ s16 skinSegments;
    /* 0x0220 */ u8 fogMode;
    /* 0x0222 */ s16 actionState;
    /* 0x0224 */ s16 movementTimer;
    /* 0x0226 */ s16 varianceTimer;
    /* 0x0228 */ s16 leadBodySeg;
    /* 0x022A */ s16 leadManeSeg;
    /* 0x022C */ s16 blinkTimer;
    /* 0x022E */ s16 roarTimer;
    /* 0x0230 */ s16 damageFlashTimer;
    /* 0x0232 */ s16 startAttack;
    /* 0x0234 */ s16 unk_234; // Seem to be unused
    /* 0x0236 */ s16 unk_236;
    /* 0x0238 */ s16 maneEmbersTimer;
    /* 0x023A */ s16 rockTimer;
    /* 0x023C */ s16 ceilingTargetIndex;
    /* 0x023E */ s16 invincibilityTimer;
    /* 0x0240 */ s16 holeSplashTimer;
    /* 0x0242 */ s16 deathCameraShakeTimer;
    /* 0x0244 */ s16 stopFlag;
    /* 0x0246 */ s16 flightCount;
    /* 0x0248 */ s16 timers[6];
    /* 0x0254 */ f32 bodyTex1Scroll;
    /* 0x0258 */ f32 bodyTex1Rot;
    /* 0x025C */ f32 bodyTex2Scroll;
    /* 0x0260 */ f32 bodyTex2Rot;
    /* 0x0264 */ char unk_264[0xC];
    /* 0x0270 */ f32 bodyTex2Opacity;
    /* 0x0274 */ f32 headTex2Opacity;
    /* 0x0278 */ f32 targetLinkYOffset;
    /* 0x027C */ f32 ceilingBounce;
    /* 0x0280 */ f32 bodyPulse;
    /* 0x0284 */ f32 centerManeColor;
    /* 0x0288 */ f32 rightManeColor;
    /* 0x028c */ f32 leftManeColor;
    /* 0x0290 */ f32 maneEmberSpeed;
    /* 0x0294 */ f32 maneEmberRate;
    /* 0x0298 */ char unk_298[0xC];
    /* 0x02A4 */ f32 flightSpeed;
    /* 0x02A8 */ f32 turnRate;
    /* 0x02AC */ f32 maxTurnRate;
    /* 0x02B0 */ f32 flightWobbleAmplitude;
    /* 0x02B4 */ f32 flightWobbleRate;
    /* 0x02B8 */ char unk_2B8[4];
    /* 0x02BC */ Vec3f targetPosition;
    /* 0x02C8 */ Vec3f holePosition;
    /* 0x02D4 */ u8 holeIndex;
    /* 0x02D5 */ u8 eyeState;
    /* 0x02D6 */ u8 collapsePlatform;
    /* 0x02D7 */ u8 faceExposed;
    /* 0x02D8 */ u8 handoffSignal;
    /* 0x02DC */ Vec3f bodySegsRot[100];
    /* 0x078C */ Vec3f bodySegsPos[100];
    /* 0x0C3C */ Vec3f rightArmRot[4];
    /* 0x0C6C */ Vec3f leftArmRot[4];
    /* 0x0C9C */ Vec3f fireManeRot[30]; 
    /* 0x0E04 */ BossFdMane centerMane;
    /* 0x0FF0 */ BossFdMane rightMane;
    /* 0x11DC */ BossFdMane leftMane;   
    /* 0x13C8 */ f32 flattenMane;
    /* 0x13CC */ f32 jawOpening;
    /* 0x13D0 */ s16 bodyFallApart[18];
    /* 0x13F4 */ Vec3f headPos;
    /* 0x1400 */ s16 introFlyState;
    /* 0x1402 */ s16 introState;
    /* 0x1404 */ s16 introCamera;
    /* 0x1408 */ Vec3f cameraEye;
    /* 0x1414 */ Vec3f cameraAt;
    /* 0x1420 */ char unk_1420[0x18];
    /* 0x1438 */ Vec3f cameraEyeVel;
    /* 0x1444 */ Vec3f cameraAtVel;
    /* 0x1450 */ Vec3f cameraNextEye;
    /* 0x145C */ Vec3f cameraEyeMaxVel;
    /* 0x1468 */ Vec3f cameraNextAt; 
    /* 0x1474 */ Vec3f cameraAtMaxVel;
    /* 0x1480 */ f32 cameraSpeedMod;
    /* 0x1484 */ f32 cameraAccel;
    /* 0x1488 */ f32 cameraYMod;
    /* 0x148C */ f32 cameraShake;
    /* 0x1490 */ ColliderJntSph collider;
    /* 0x14B0 */ ColliderJntSphElement elements[19];
    /* 0x1970 */ BossFdParticle particles[180];
} BossFd; // size = 0x43A0

extern const ActorInit Boss_Fd_InitVars;

#endif
