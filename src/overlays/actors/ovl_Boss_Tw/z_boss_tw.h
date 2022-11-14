#ifndef Z_BOSS_TW_H
#define Z_BOSS_TW_H

#include "ultra64.h"
#include "global.h"

struct BossTw;

typedef void (*BossTwActionFunc)(struct BossTw* this, PlayState* play);

typedef enum {
    /*  0 */ CS_TIMER_1,
    /*  1 */ CS_TIMER_2,
    /*  2 */ TW_PLLR_IDX,
    /*  3 */ TAIL_IDX,
    /*  4 */ BLINK_IDX,
    /*  5 */ INVINC_TIMER,
    /*  6 */ FOG_TIMER,
    /*  7 */ CAN_SHOOT,
    /*  8 */ UNK_S8,
    /*  9 */ TW_BLINK_IDX,
    /* 10 */ YAW_TGT,
    /* 11 */ PLAYED_CHRG_SFX,
    /* 12 */ BURN_TMR,
    /* 13 */ WORK_MAX
} TwWork;

typedef enum {
    /*  0 */ OUTR_CRWN_TX_X1,
    /*  1 */ OUTR_CRWN_TX_X2,
    /*  2 */ INNR_CRWN_TX_X1,
    /*  3 */ INNR_CRWN_TX_X2,
    /*  4 */ OUTR_CRWN_TX_Y1,
    /*  5 */ OUTR_CRWN_TX_Y2,
    /*  6 */ INNR_CRWN_TX_Y1,
    /*  7 */ INNR_CRWN_TX_Y2,
    /*  8 */ ANIM_SW_TGT,
    /*  9 */ UNK_F9,
    /*  9 */ KM_GD_FLM_A = 9,
    /* 10 */ UNK_F10 = 10,
    /* 10 */ TAIL_ALPHA = 10,
    /* 10 */ KM_GD_SMOKE_A = 10,
    /* 14 */ UNK_F11 = 11,
    /* 15 */ KM_GRND_CRTR_A = 11,
    /* 16 */ UNK_F12 = 12,
    /* 17 */ KM_GD_FLM_SCL = 12,
    /* 18 */ UNK_F13 = 13,
    /* 19 */ KM_GD_CRTR_SCL = 13,
    /* 20 */ UNK_F14,
    /* 21 */ UNK_F15,
    /* 22 */ UNK_F16,
    /* 23 */ UNK_F17,
    /* 24 */ UNK_F18,
    /* 25 */ UNK_F19,
    /* 26 */ FWORK_MAX
} TwFwork;

typedef enum {
    /*  0 */ TWINROVA_KOTAKE_KOUME_LIMB_NONE,
    /*  1 */ TWINROVA_KOTAKE_KOUME_LIMB_PELVIS,
    /*  2 */ TWINROVA_KOTAKE_KOUME_LIMB_LEFT_THIGH,
    /*  3 */ TWINROVA_KOTAKE_KOUME_LIMB_LEFT_SHIN,
    /*  4 */ TWINROVA_KOTAKE_KOUME_LIMB_LEFT_FOOT,
    /*  5 */ TWINROVA_KOTAKE_KOUME_LIMB_RIGH_THIGH,
    /*  6 */ TWINROVA_KOTAKE_KOUME_LIMB_RIGHT_SHIN,
    /*  7 */ TWINROVA_KOTAKE_KOUME_LIMB_RIGHT_FOOT,
    /*  8 */ TWINROVA_KOTAKE_KOUME_LIMB_TORSO_LIMB,
    /*  9 */ TWINROVA_KOTAKE_KOUME_LIMB_LEFT_SLEEVE_START,
    /* 10 */ TWINROVA_KOTAKE_KOUME_LIMB_LEFT_SLEEVE_MID,
    /* 11 */ TWINROVA_KOTAKE_KOUME_LIMB_LEFT_SLEEVE_END,
    /* 12 */ TWINROVA_KOTAKE_KOUME_LIMB_LEFT_SLEEVE_FRONT,
    /* 13 */ TWINROVA_KOTAKE_KOUME_LIMB_LEFT_HAND,
    /* 14 */ TWINROVA_KOTAKE_KOUME_LIMB_BROOM,
    /* 15 */ TWINROVA_KOTAKE_KOUME_LIMB_RIGHT_SLEEVE_START,
    /* 16 */ TWINROVA_KOTAKE_KOUME_LIMB_RIGHT_SLEEVE_MID,
    /* 17 */ TWINROVA_KOTAKE_KOUME_LIMB_RIGHT_SLEEVE_END,
    /* 18 */ TWINROVA_KOTAKE_KOUME_LIMB_RIGHT_SLEEVE_FRONT,
    /* 19 */ TWINROVA_KOTAKE_KOUME_LIMB_RIGHT_HAND,
    /* 20 */ TWINROVA_KOTAKE_KOUME_LIMB_NECK,
    /* 21 */ TWINROVA_KOTAKE_KOUME_LIMB_HEAD,
    /* 22 */ TWINROVA_KOTAKE_KOUME_LIMB_RIGHT_HAIR_PIECE_START,
    /* 23 */ TWINROVA_KOTAKE_KOUME_LIMB_RIGHT_HAIR_PIECE_END,
    /* 24 */ TWINROVA_KOTAKE_KOUME_LIMB_TEETH,
    /* 25 */ TWINROVA_KOTAKE_KOUME_LIMB_LEFT_HAIR_PIECE_START,
    /* 26 */ TWINROVA_KOTAKE_KOUME_LIMB_LEFT_HAIR_PIECE_END,
    /* 27 */ TWINROVA_KOTAKE_KOUME_LIMB_MAX
} TwinrovaKotakeKoumeLimb;

typedef enum {
    /*  0 */ TWINROVA_LIMB_NONE,
    /*  1 */ TWINROVA_LIMB_PELVIS,
    /*  2 */ TWINROVA_LIMB_SASH_1,
    /*  3 */ TWINROVA_LIMB_SASH_2,
    /*  4 */ TWINROVA_LIMB_SASH_3,
    /*  5 */ TWINROVA_LIMB_SASH_4,
    /*  6 */ TWINROVA_LIMB_LEFT_THIGH,
    /*  7 */ TWINROVA_LIMB_LEFT_SHIN,
    /*  8 */ TWINROVA_LIMB_LEFT_FOOT,
    /*  9 */ TWINROVA_LIMB_RIGHT_THIGH,
    /* 10 */ TWINROVA_LIMB_RIGHT_SHIN,
    /* 11 */ TWINROVA_LIMB_RIGHT_FOOT,
    /* 12 */ TWINROVA_LIMB_TORSO,
    /* 13 */ TWINROVA_LIMB_LEFT_BREAST,
    /* 14 */ TWINROVA_LIMB_RIGHT_BREAST,
    /* 15 */ TWINROVA_LIMB_HAIR_ICE_TRAIL,
    /* 16 */ TWINROVA_LIMB_HAIR_ICE_JET,
    /* 17 */ TWINROVA_LIMB_HAIR_FIRE_JET,
    /* 18 */ TWINROVA_LIMB_HAIR_FIRE_TRAIL,
    /* 19 */ TWINROVA_LIMB_LEFT_HAIR_BUN,
    /* 20 */ TWINROVA_LIMB_RIGHT_HAIR_BUN,
    /* 21 */ TWINROVA_LIMB_HEAD,
    /* 22 */ TWINROVA_LIMB_RIGHT_BRAID_START,
    /* 23 */ TWINROVA_LIMB_RIGHT_BRAID_END,
    /* 24 */ TWINROVA_LIMB_LEFT_BRAID_START,
    /* 25 */ TWINROVA_LIMB_LEFT_BRAID_END,
    /* 26 */ TWINROVA_LIMB_LEFT_SHOULDER,
    /* 27 */ TWINROVA_LIMB_LEFT_UPPER_ARM,
    /* 28 */ TWINROVA_LIMB_LEFT_FOREARM,
    /* 29 */ TWINROVA_LIMB_LEFT_SLEEVE_START,
    /* 30 */ TWINROVA_LIMB_LEFT_SLEEVE_END,
    /* 31 */ TWINROVA_LIMB_BROOM_ICE_TRAIL,
    /* 32 */ TWINROVA_LIMB_BROOM_ICE_JET,
    /* 33 */ TWINROVA_LIMB_LEFT_HAND,
    /* 34 */ TWINROVA_LIMB_LEFT_BROOM,
    /* 35 */ TWINROVA_LIMB_RIGHT_SHOULDER,
    /* 36 */ TWINROVA_LIMB_RIGHT_UPPER_ARM,
    /* 37 */ TWINROVA_LIMB_RIGHT_FOREARM,
    /* 38 */ TWINROVA_LIMB_RIGHT_SLEEVE_START,
    /* 39 */ TWINROVA_LIMB_RIGHT_SLEEVE_END,
    /* 40 */ TWINROVA_LIMB_RIGHT_BROOM,
    /* 41 */ TWINROVA_LIMB_BROOM_FIRE_JET,
    /* 42 */ TWINROVA_LIMB_BROOM_FIRE_TRAIL,
    /* 43 */ TWINROVA_LIMB_RIGHT_HAND,
    /* 44 */ TWINROVA_LIMB_MAX
} TwinrovaLimb;

typedef struct BossTw {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ BossTwActionFunc actionFunc;
    /* 0x0150 */ s16 work[WORK_MAX];
    /* 0x0168 */ char unused_170[0xE]; // Likely unused Work variables
    /* 0x0178 */ s16 timers[5];
    /* 0x0184 */ f32 workf[FWORK_MAX];
    /* 0x01D4 */ f32 fogR;
    /* 0x01D8 */ f32 fogG;
    /* 0x01DC */ f32 fogB;
    /* 0x01E0 */ f32 fogNear;
    /* 0x01E4 */ f32 fogFar;
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
    /* 0x0654 */ Vec3f subCamEyeVel;
    /* 0x0660 */ Vec3f subCamAtVel;
    /* 0x066C */ Vec3f subCamEyeNext;
    /* 0x0678 */ char unused_678[0xC];
    /* 0x0684 */ Vec3f subCamAtNext;
    /* 0x0690 */ char unused_690[0xC];
    /* 0x069C */ f32 subCamUpdateRate;
    /* 0x06A0 */ f32 subCamDistStep;
    /* 0x06A4 */ f32 subCamDist;
    /* 0x06A8 */ char unused_6A8[4];
    /* 0x06AC */ f32 subCamYaw;
    /* 0x06B0 */ f32 subCamYawStep;
} BossTw; // size = 0x06B4

#endif
