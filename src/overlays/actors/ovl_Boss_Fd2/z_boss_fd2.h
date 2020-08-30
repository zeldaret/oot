#ifndef _Z_BOSS_FD2_H_
#define _Z_BOSS_FD2_H_

#include <ultra64.h>
#include <global.h>

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
    /* 0x014C */ SkelAnime skelAnime1;
    /* 0x0190 */ BossFd2ActionFunc actionFunc;
    /* 0x0194 */ u8 disableAT;
    /* 0x0196 */ s16 turnToLink;
    /* 0x0198 */ s16 actionState;
    /* 0x019A */ s16 unkTimer; //Increments every frame, but nothing uses it.
    /* 0x019C */ s16 varianceTimer;
    /* 0x019E */ char unk_19E[4]; //seems to be unused
    /* 0x01A2 */ s16 blinkTimer;
    /* 0x01A4 */ s16 screamTimer;
    /* 0x01A6 */ s16 damageFlashTimer;
    /* 0x01A8 */ s16 holeCounter;
    /* 0x01AA */ s16 invulnerabilityTimer;
    /* 0x01AC */ s16 fakeoutCount;
    /* 0x01AE */ char unk_1AE[0xE]; //seems to be unused
    /* 0x01BC */ s16 timers[5];
    /* 0x01C8 */ f32 bodyTex1Scroll;
    /* 0x01CC */ f32 bodyTex1Rot;
    /* 0x01D0 */ f32 bodyTex2Scroll;
    /* 0x01D4 */ f32 bodyTex2Rot;
    /* 0x01D8 */ char unk_1D8[0x18];
    /* 0x01F0 */ f32 animationLength;
    /* 0x01F4 */ char unk_1F4[0x1C];
    /* 0x0210 */ Vec3f fireBreathSpawnPoint;
    /* 0x021C */ Vec3s fireBreathAngle;
    /* 0x0222 */ char unk_222; //seems to be unused
    /* 0x0223 */ u8 eyeState;
    /* 0x0224 */ char unk_224[0xC90]; //seems to be unused
    /* 0x0EB4 */ BossFd2Mane centerMane;
//  /* 0x0EB4 */ Vec3f unk_EB4[10];
//  /* 0x0F2C */ Vec3f unk_F2C[10];
//  /* 0x0FA4 */ Vec3f unk_FA4[10];
//  /* 0x101C */ f32 unk_101C[10];
//  /* 0x1044 */ Vec3f unk_1044;
    /* 0x1050 */ BossFd2Mane rightMane;
//  /* 0x1050 */ Vec3f unk_1050[10];
//  /* 0x10C8 */ Vec3f unk_10C8[10];
//  /* 0x1140 */ Vec3f unk_1140[10];
//  /* 0x11B8 */ f32 unk_11B8[10];
//  /* 0x11E0 */ Vec3f unk_11E0;
    /* 0x11EC */ BossFd2Mane leftMane;
//  /* 0x11EC */ Vec3f unk_11EC[10];
//  /* 0x1264 */ Vec3f unk_1264[10];
//  /* 0x12DC */ Vec3f unk_12DC[10];
//  /* 0x1354 */ f32 unk_1354[10];
//  /* 0x137C */ Vec3f unk_137C;
    /* 0x1388 */ char unk_1388[4]; //seems to be unused
    /* 0x138C */ f32 jawOpening;
    /* 0x1390 */ s16 cutsceneState;
    /* 0x1392 */ s16 cutsceneCamera;
    /* 0x1394 */ Vec3f unk_1394;
    /* 0x13A0 */ Vec3f unk_13A0;
    /* 0x13AC */ char unk_13AC[0x18]; //seems to be unused
    /* 0x13C4 */ Vec3f unk_13C4;
    /* 0x13D0 */ Vec3f unk_13D0;
    /* 0x13DC */ Vec3f unk_13DC;
    /* 0x13E8 */ Vec3f unk_13E8; //death cutscene camera stuff
    /* 0x13F4 */ Vec3f unk_13F4;
    /* 0x1400 */ Vec3f unk_1400;
    /* 0x140C */ f32 unk_140C;
    /* 0x1410 */ f32 unk_1410;
    /* 0x1414 */ f32 unk_1414;
    /* 0x1418 */ char unk_1418[4]; //seems to be unused
    /* 0x141C */ ColliderJntSph collider1;
    /* 0x143C */ ColliderJntSphItem colliderItems[9];
} BossFd2; // size = 0x167C

extern const ActorInit Boss_Fd2_InitVars;

#endif
