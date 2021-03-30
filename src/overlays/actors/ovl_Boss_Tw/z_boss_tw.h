#ifndef _Z_BOSS_TW_H_
#define _Z_BOSS_TW_H_

#include "ultra64.h"
#include "global.h"

struct BossTw;

typedef void (*BossTW_ActionFunc)(struct BossTw* this, GlobalContext* globalCtx);

#define CS_TIMER_1 0
#define CS_TIMER_2 1
#define TW_PLLR_IDX 2
#define TAIL_IDX 3
#define BLINK_IDX 4
#define INVINC_TIMER 5
#define FOG_TIMER 6
#define CAN_SHOOT 7
#define UNK_S8 8
#define TW_BLINK_IDX 9
#define YAW_TGT 10
#define PLAYED_CHRG_SFX 11
#define BURN_TMR 12

#define OUTR_CRWN_TX_X1 0
#define OUTR_CRWN_TX_X2 1

#define INNR_CRWN_TX_X1 2
#define INNR_CRWN_TX_X2 3

#define OUTR_CRWN_TX_Y1 4
#define OUTR_CRWN_TX_Y2 5

#define INNR_CRWN_TX_Y1 6
#define INNR_CRWN_TX_Y2 7

#define ANIM_SW_TGT 8

#define UNK_F9 9
#define KM_GD_FLM_A 9

#define UNK_F10 10
#define TAIL_ALPHA 10
#define KM_GD_SMOKE_A 10

#define UNK_F11 11
#define KM_GRND_CRTR_A 11

#define UNK_F12 12
#define KM_GD_FLM_SCL 12

#define UNK_F13 13
#define KM_GD_CRTR_SCL 13

#define UNK_F14 14
#define UNK_F15 15
#define UNK_F16 16
#define UNK_F17 17
#define UNK_F18 18
#define UNK_F19 19
#define UNK_F20 20

typedef struct BossTw {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ BossTW_ActionFunc actionFunc;
    /* 0x0150 */ s16 work[12];
    /* 0x0168 */ char unused_168[0x10];
    /* 0x0178 */ s16 timers[5];
    /* 0x0184 */ f32 workf[20];
    /* 0x01D4 */ f32 fogR;
    /* 0x01D8 */ f32 fogG;
    /* 0x01DC */ f32 fogB;
    /* 0x01E0 */ f32 fogMin;
    /* 0x01E4 */ f32 fogMax;
    /* 0x01E8 */ Vec3f blastTailPos[50];
    /* 0x0440 */ s16 csState1;
    /* 0x0444 */ Vec3f crownPos;
    /* 0x0450 */ Vec3f scepterFlamePos[5];
    /* 0x048C */ Vec3f beamOrigin;
    /* 0x0498 */ Vec3f leftScepterPos;
    /* 0x04A4 */ Vec3f rightScepterPos;
    /* 0x04B0 */ Vec3f targetPos;
    /* 0x04BC */ Vec3f groundBlastPos2;
    /* 0x04C8 */ f32 rotateSpeed;
    /* 0x04CC */ s16 eyeTexIdx;
    /* 0x04CE */ s16 leftEyeTexIdx;
    /* 0x04D0 */ f32 scepterAlpha;
    /* 0x04D4 */ f32 flameAlpha;
    /* 0x04D8 */ f32 spawnPortalAlpha;
    /* 0x04DC */ f32 unk_4DC;
    /* 0x04E0 */ f32 spawnPortalScale;
    /* 0x04E4 */ f32 updateRate1;
    /* 0x04E8 */ f32 flameRotation;
    /* 0x04EC */ f32 portalRotation;
    /* 0x04F0 */ f32 updateRate2;
    /* 0x04F4 */ u8 twinrovaStun;
    /* 0x04F8 */ f32 beamScale;
    /* 0x04FC */ s16 beamShootState;
    /* 0x0500 */ Vec3f groundBlastPos;
    /* 0x050C */ Vec3f beamReflectionOrigin;
    /* 0x0518 */ f32 beamPitch;
    /* 0x051C */ f32 beamYaw;
    /* 0x0520 */ f32 beamRoll;
    /* 0x0524 */ Vec3s magicDir;
    /* 0x052C */ f32 beamDist;
    /* 0x0530 */ Vec3f unk_530;
    /* 0x053C */ f32 beamReflectionPitch;
    /* 0x0540 */ f32 beamReflectionYaw;
    /* 0x0544 */ f32 unused_544;
    /* 0x0548 */ f32 beamReflectionDist;
    /* 0x054C */ Vec3f unk_54C;
    /* 0x0558 */ Vec3f unk_558;
    /* 0x0564 */ u8 visible;
    /* 0x0565 */ u8 blastActive;
    /* 0x0566 */ s16 blastType;
    /* 0x0568 */ SkelAnime skelAnime;
    /* 0x05AC */ ColliderCylinder collider;
    /* 0x05F8 */ u8 unk_5F8;
    /* 0x05F9 */ u8 unk_5F9;
    /* 0x05FA */ s16 csState2;
    /* 0x05FC */ s16 subCamId;
    /* 0x05FE */ s16 csSfxTimer;
    /* 0x0600 */ Vec3f subCamEye;
    /* 0x060C */ Vec3f subCamAt;
    /* 0x0618 */ char unused_618[0xC];
    /* 0x0624 */ Vec3f subCamEye2;
    /* 0x0630 */ Vec3f subCamAt2;
    /* 0x063C */ char unused_63C[0x18];
    /* 0x0654 */ Vec3f subCamEyeStep;
    /* 0x0660 */ Vec3f subCamAtStep;
    /* 0x066C */ Vec3f subCamEyeTarget;
    /* 0x0678 */ char unused_678[0xC];
    /* 0x0684 */ Vec3f subCamAtTarget;
    /* 0x0690 */ char unused_690[0xC];
    /* 0x069C */ f32 subCamUpdateRate;
    /* 0x06A0 */ f32 subCamDistStep;
    /* 0x06A4 */ f32 subCamDist;
    /* 0x06A8 */ char unused_6A8[4];
    /* 0x06AC */ f32 subCamYaw;
    /* 0x06B0 */ f32 subCamYawStep;
} BossTw; // size = 0x06B4

extern const ActorInit Boss_Tw_InitVars;

#endif
