#ifndef Z_BOSS_FD2_H
#define Z_BOSS_FD2_H

#include "ultra64.h"
#include "global.h"

struct BossFd2;

typedef void (*BossFd2ActionFunc)(struct BossFd2*, PlayState*);

typedef enum {
    /* 0 */ FD2_SIGNAL_NONE,
    /* 1 */ FD2_SIGNAL_FLY,
    /* 2 */ FD2_SIGNAL_DEATH,
    /* 100 */ FD2_SIGNAL_GROUND = 100
} BossFd2Signal;

typedef struct {
    /* 0x000 */ Vec3f rot[10];
    /* 0x078 */ Vec3f pos[10];
    /* 0x0F0 */ Vec3f pull[10];
    /* 0x168 */ f32 scale[10];
    /* 0x190 */ Vec3f head;
} BossFd2Mane; // size = 0x19C

typedef enum {
    /* 0 */ FD2_TURN_TO_LINK,
    /* 1 */ FD2_ACTION_STATE,
    /* 2 */ FD2_UNK_TIMER,
    /* 3 */ FD2_VAR_TIMER,
    /* 4 */ FD2_UNUSED_4,
    /* 5 */ FD2_UNUSED_5,
    /* 6 */ FD2_BLINK_TIMER,
    /* 7 */ FD2_SCREAM_TIMER,
    /* 8 */ FD2_DAMAGE_FLASH_TIMER,
    /* 9 */ FD2_HOLE_COUNTER,
    /* 10 */ FD2_INVINC_TIMER,
    /* 11 */ FD2_FAKEOUT_COUNT,
    /* 19 */ FD2_SHORT_COUNT = 19
} BossFd2S16Var;

typedef enum {
    /*  0 */ FD2_TEX1_SCROLL_X,
    /*  1 */ FD2_TEX1_SCROLL_Y,
    /*  2 */ FD2_TEX2_SCROLL_X,
    /*  3 */ FD2_TEX2_SCROLL_Y,
    /* 10 */ FD2_END_FRAME = 10,
    /* 18 */ FD2_FLOAT_COUNT = 18
} BossFd2F32Var;

typedef struct BossFd2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ BossFd2ActionFunc actionFunc;
    /* 0x0194 */ u8 disableAT;
    /* 0x0196 */ s16 work[FD2_SHORT_COUNT];
    /* 0x01BC */ s16 timers[5];
    /* 0x01C8 */ f32 fwork[FD2_FLOAT_COUNT];
    /* 0x0210 */ Vec3f headPos;
    /* 0x021C */ Vec3s headRot;
    /* 0x0222 */ char unk_222;
    /* 0x0223 */ u8 eyeState;
    /* 0x0224 */ char unk_224[0xC90]; // despite its size, seems to be unused.
    /* 0x0EB4 */ BossFd2Mane centerMane;
    /* 0x1050 */ BossFd2Mane rightMane;
    /* 0x11EC */ BossFd2Mane leftMane;
    /* 0x1388 */ char unk_1388[4];
    /* 0x138C */ f32 jawOpening;
    /* 0x1390 */ s16 deathState;
    /* 0x1392 */ s16 subCamId;
    /* 0x1394 */ Vec3f subCamEye;
    /* 0x13A0 */ Vec3f subCamAt;
    /* 0x13AC */ Vec3f subCamUp;
    /* 0x13B8 */ Vec3f pad;
    /* 0x13C4 */ Vec3f subCamEyeVel;
    /* 0x13D0 */ Vec3f subCamAtVel;
    /* 0x13DC */ Vec3f subCamEyeNext;
    /* 0x13E8 */ Vec3f subCamEyeMaxVelFrac;
    /* 0x13F4 */ Vec3f subCamAtNext;
    /* 0x1400 */ Vec3f subCamAtMaxVelFrac;
    /* 0x140C */ f32 subCamVelFactor;
    /* 0x1410 */ f32 subCamAccel;
    /* 0x1414 */ f32 subCamAtYOffset;
    /* 0x1418 */ f32 subCamShake;
    /* 0x141C */ ColliderJntSph collider;
    /* 0x143C */ ColliderJntSphElement elements[9];
} BossFd2; // size = 0x167C

#endif
