#ifndef _Z_BOSS_FD_H_
#define _Z_BOSS_FD_H_

#include <ultra64.h>
#include <global.h>

struct BossFd;

typedef void (*BossFdActionFunc)(struct BossFd*, GlobalContext*);

typedef struct {
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

// typedef struct {
    // /* 0x000 */ Vec3f pos[30];
    // /* 0x168 */ f32 scale[30];
    // /* 0x1E0 */ Vec3f head;
// } BossFdFireMane; //size = 0x1EC

typedef struct BossFd {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime1;
    /* 0x0190 */ SkelAnime skelAnime2;
    /* 0x01D4 */ SkelAnime skelAnime3;
    /* 0x0218 */ BossFdActionFunc actionFunc;
    /* 0x021C */ s16 fireBreathTimer;
    /* 0x021E */ s16 skinSegments;
    /* 0x0220 */ u8 fogMode;
    /* 0x0221 */ u8 unk_221;
    /* 0x0222 */ s16 actionState;
    /* 0x0224 */ s16 unk_224;
    /* 0x0226 */ s16 varianceTimer;
    /* 0x0228 */ s16 unk_228;
    /* 0x022A */ s16 unk_22A;
    /* 0x022C */ s16 unk_22C;
    /* 0x022E */ s16 roarTimer;
    /* 0x0230 */ s16 damageFlashTimer;
    /* 0x0232 */ s16 unk_232;
    /* 0x0234 */ char unk_234[4];
    /* 0x0238 */ s16 maneEmbersTimer;
    /* 0x023A */ s16 rockTimer;
    /* 0x023C */ s16 unk_23C;
    /* 0x023E */ s16 invincibilityTimer;
    /* 0x0240 */ s16 holeSplashTimer;
    /* 0x0242 */ char unk_242[6];
    /* 0x0248 */ s16 animationTimers[6];
    /* 0x0254 */ f32 bodyTextureFlow;
    /* 0x0258 */ f32 bodyTextureRotation;
    /* 0x025C */ f32 bodyTextureRipple1;
    /* 0x0260 */ f32 bodyTextureRipple2;
    /* 0x0264 */ char unk_264[0xC];
    /* 0x0270 */ f32 unk_270;
    /* 0x0274 */ f32 unk_274;
    /* 0x0278 */ f32 unk_278;
    /* 0x027C */ char unk_27C[4];
    /* 0x0280 */ f32 unk_280;
    /* 0x0284 */ f32 centerManeColor;
    /* 0x0288 */ f32 rightManeColor;
    /* 0x028c */ f32 leftManeColor;
    /* 0x0290 */ f32 maneEmberSpeed;
    /* 0x0294 */ f32 maneEmberRate;
    /* 0x0298 */ char unk_298[0xC];
    /* 0x02A4 */ f32 unk_2A4;
    /* 0x02A8 */ f32 unk_2A8;
    /* 0x02AC */ f32 unk_2AC;
    /* 0x02B0 */ char unk_2B0[0xC];
    /* 0x02BC */ Vec3f targetPosition;
    /* 0x02C8 */ Vec3f holePosition;
    /* 0x02D4 */ u8 holeIndex;
    /* 0x02D5 */ s8 unk_2D5;
    /* 0x02D6 */ u8 unk_2D6;
    /* 0x02D7 */ u8 unk_2D7;
    /* 0x02D8 */ u8 attackMode;
    /* 0x02D9 */ u8 unk_2D9;
    /* 0x02DA */ u8 unk_2DA;
    /* 0x02DB */ u8 unk_2DB;
    /* 0x02DC */ Vec3f unk_02DC[100]; //Related to Volvagia's mane
    /* 0x078C */ Vec3f unk_078C[100]; //Related to Volvagia's body segments.
    /* 0x0C3C */ f32 unk_C3C;
    /* 0x0C40 */ f32 unk_C40;
    /* 0x0C44 */ Vec3f unk_C44; //These Vec3f's are questionable.
    ///* 0x0C48 */ f32 unk_C48; //Might be part of a larger data structure.
    ///* 0x0C4C */ f32 unk_C4C;
    /* 0x0C50 */ Vec3f unk_C50;
    ///* 0x0C54 */ f32 unk_C54;
    ///* 0x0C58 */ f32 unk_C58;
    /* 0x0C5C */ char unk_C60[0x10];
    /* 0x0C6C */ f32 unk_C6C;
    /* 0x0C70 */ char unk_C70[4];
    /* 0x0C74 */ Vec3f unk_C74;  
    ///* 0x0C78 */ f32 unk_C78;
    ///* 0x0C7C */ f32 unk_C7C;
    /* 0x0C80 */ Vec3f unk_C80;
    ///* 0x0C84 */ f32 unk_C84;
    ///* 0x0C88 */ f32 unk_C88;
    /* 0x0C8C */ char unk_C8C[0x10];
    /* 0x0C9C */ Vec3f unk_C9C[30]; // Also related to the fire mane.
    /* 0x0E04 */ Vec3f unk_0E04[123]; //Volvagia's fire mane. Subdivisions needed.
    /* 0x13C8 */ f32 unk_13C8;
    /* 0x13CC */ f32 jawOpening;
    /* 0x13D0 */ s16 unk_13D0[18];
    /* 0x13F4 */ Vec3f fireBreathSpawnPoint;
    /* 0x1400 */ s16 introCutsceneState[2];
    /* 0x1404 */ s16 unk_1404;
    /* 0x1406 */ char unk_1406[2];
    /* 0x1408 */ Vec3f unk_1408;
    /* 0x1414 */ Vec3f unk_1414;
    /* 0x1420 */ char unk_1420[0x18];
    /* 0x1438 */ Vec3f unk_1438;
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