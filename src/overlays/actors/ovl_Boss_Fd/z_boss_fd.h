#ifndef _Z_BOSS_FD_H_
#define _Z_BOSS_FD_H_

#include <ultra64.h>
#include <global.h>

struct BossFd;

typedef void (*BossFdActionFunc)(struct BossFd*, GlobalContext*);
    

typedef struct BossFdParticle {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ Vec3f vel;
    /* 0x18 */ Vec3f accel;
    /* 0x24 */ u8 type;
    /* 0x25 */ u8 timer1;
    /* 0x26 */ Color_RGB8 color;
   //* 0x29 */ char pad;
    /* 0x2A */ s16 opacity;
    /* 0x2C */ s16 timer2;
    /* 0x2E */ s16 kbAngle;
    /* 0x30 */ f32 scale;
    /* 0x34 */ f32 unk_34;
    /* 0x38 */ f32 unk_38;
} BossFdParticle; // size = 0x3C

typedef struct BossFd {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime1;
    /* 0x0190 */ SkelAnime skelAnime2;
    /* 0x01D4 */ SkelAnime skelAnime3;
    /* 0x0218 */ BossFdActionFunc actionFunc;
    /* 0x021C */ s16 fireBreathTimer;
    /* 0x021E */ s16 skinSegments;
    /* 0x0220 */ u8 fogMode;
    /* 0x0221 */ u8 unk_221;  //Possibly padding
    /* 0x0222 */ s16 actionState;
    /* 0x0224 */ s16 movementTimer;
    /* 0x0226 */ s16 varianceTimer;
    /* 0x0228 */ s16 leadBodySegment;
    /* 0x022A */ s16 leadManeSegment;
    /* 0x022C */ s16 blinkTimer;
    /* 0x022E */ s16 roarTimer;
    /* 0x0230 */ s16 damageFlashTimer;
    /* 0x0232 */ s16 startAttack;
    /* 0x0234 */ s16 unk_234; //Could be used by attached actors
    /* 0x0236 */ s16 unk_236;
    /* 0x0238 */ s16 maneEmbersTimer;
    /* 0x023A */ s16 rockTimer;
    /* 0x023C */ s16 ceilingTargetIndex;
    /* 0x023E */ s16 invincibilityTimer;
    /* 0x0240 */ s16 holeSplashTimer;
    /* 0x0242 */ s16 deathCameraShakeTimer;
    /* 0x0244 */ s16 stopFlag;
    /* 0x0246 */ s16 flightCount;
    /* 0x0248 */ s16 animationTimers[6]; //Change name to just "timers"
    /* 0x0254 */ f32 bodyTex1Scroll;
    /* 0x0258 */ f32 bodyTex1Rot;
    /* 0x025C */ f32 bodyTex2Scroll;
    /* 0x0260 */ f32 bodyTex2Rot;
    /* 0x0264 */ char unk_264[0xC];
    /* 0x0270 */ f32 bodyTex2Opacity;
    /* 0x0274 */ f32 headTex2Opacity;
    /* 0x0278 */ f32 targetLinkYOffset;
    /* 0x027C */ f32 unk_27C; // Something to do with how he moves while dropping rocks
    /* 0x0280 */ f32 bodyOscillation;
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
    /* 0x02D7 */ u8 faceGlow;
    /* 0x02D8 */ u8 handoffSignal;
    /* 0x02D9 */ u8 unk_2D9;
    /* 0x02DA */ u8 unk_2DA; // Possibly padding
    /* 0x02DB */ u8 unk_2DB;
    /* 0x02DC */ Vec3f bodySegmentsRot[100];
    /* 0x078C */ Vec3f bodySegmentsPos[100];
    /* 0x0C3C */ Vec3f unk_C3C[3]; //Probably his right arm rotations
    /* 0x0C60 */ char unk_C60[0xC];
    /* 0x0C6C */ Vec3f unk_C6C[3]; //Probably his left arm rotations
    /* 0x0C90 */ char unk_C90[0xC];
    /* 0x0C9C */ Vec3f fireManeRot[30]; 
    /* 0x0E04 */ Vec3f centerManePos[30];
    /* 0x0F6C */ f32 centerManeScale[30];
    /* 0x0FE4 */ Vec3f centerManeHead;
    /* 0x0FF0 */ Vec3f rightManePos[30];
    /* 0x1158 */ f32 rightManeScale[30];
    /* 0x11D0 */ Vec3f rightManeHead;
    /* 0x11DC */ Vec3f leftManePos[30];
    /* 0x1344 */ f32 leftManeScale[30];
    /* 0x13BC */ Vec3f leftManeHead;    
    /* 0x13C8 */ f32 flattenMane;
    /* 0x13CC */ f32 jawOpening;
    /* 0x13D0 */ s16 bodyFallApart[18];
    /* 0x13F4 */ Vec3f fireBreathSpawnPoint;
    /* 0x1400 */ s16 introState1;
    /* 0x1402 */ s16 introState2;
    /* 0x1404 */ s16 introCameraState;
    /* 0x1406 */ char unk_1406[2]; //Probably just padding
    /* 0x1408 */ Vec3f unk_1408;
    /* 0x1414 */ Vec3f unk_1414;
    /* 0x1420 */ char unk_1420[0x18];
    /* 0x1438 */ Vec3f unk_1438;            //This is all related to the intro cutscene
    /* 0x1444 */ Vec3f unk_1444;
    /* 0x1450 */ Vec3f unk_1450;
    /* 0x145C */ Vec3f unk_145C;
    /* 0x1468 */ Vec3f unk_1468; 
    /* 0x1474 */ Vec3f unk_1474;
    /* 0x1480 */ f32 unk_1480;
    /* 0x1484 */ f32 unk_1484;
    /* 0x1488 */ f32 unk_1488;
    /* 0x148C */ f32 unk_148C;
    /* 0x1490 */ ColliderJntSph collider1;
    /* 0x14B0 */ ColliderJntSphItem colliderItems[19];
    /* 0x1970 */ BossFdParticle particles[180];
} BossFd; // size = 0x43A0

extern const ActorInit Boss_Fd_InitVars;

#endif
