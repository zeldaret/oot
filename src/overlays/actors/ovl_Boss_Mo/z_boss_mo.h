#ifndef _Z_BOSS_MO_H_
#define _Z_BOSS_MO_H_

#include "ultra64.h"
#include "global.h"

struct BossMo;

typedef void (*BossMoActionFunc)(struct BossMo*, GlobalContext*);

typedef struct BossMoParticle {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ Vec3f vel;
    /* 0x18 */ Vec3f accel;
    /* 0x24 */ u8 type;
    /* 0x25 */ u8 timer;
    /* 0x26 */ u8 stopTimer;
    /* 0x28 */ s16 unk_28; // unused?
    /* 0x2A */ s16 alpha;
    /* 0x2C */ s16 rippleMode;
    /* 0x2E */ s16 maxAlpha;
    /* 0x30 */ f32 scale;
    /* 0x34 */ union{f32 maxSize; f32 shimmer; f32 suction;};
    /* 0x38 */ union{f32 spreadRate; f32 stretch; f32 maxScale;};
    /* 0x3C */ Vec3f* targetPos;
} BossMoParticle; // size = 0x40

typedef enum {
    /*  0 */ MO_TENT_ACTION_STATE,
    /*  1 */ MO_TENT_MOVE_TIMER,
    /*  2 */ MO_TENT_VAR_TIMER,
    /*  3 */ MO_TENT_UNK_TIMER,
    /*  4 */ MO_TENT_INVINC_TIMER,
    /*  5 */ MO_TENT_BASE_TEX1_X,
    /*  6 */ MO_TENT_BASE_TEX1_Y,
    /*  7 */ MO_TENT_BASE_TEX2_X,
    /*  8 */ MO_TENT_BASE_TEX2_Y,
    /*  9 */ MO_TENT_WIDTH_INDEX,
    /* 10 */ MO_TENT_PULSE_PHASE,
    /* 11 */ MO_TENT_SWING_X,
    /* 12 */ MO_TENT_SWING_Z,
    /* 13 */ MO_TENT_CUT_INDEX,
    /* 14 */ MO_TENT_MELT_INDEX,
    /* 15 */ MO_TENT_LINK_TO_LEFT,
    /* 16 */ MO_TENT_MASH_COUNTER,
    /* 17 */ MO_TENT_NO_BUBBLES,
    /* 18 */ MO_TENT_SFX_TIMER,
    /* 19 */ MO_TENT_SHORT_MAX
} BossMoTentVar;

typedef enum {
    /*  0 */ MO_CORE_ACTION_STATE,
    /*  1 */ MO_CORE_MOVE_TIMER,
    /*  2 */ MO_CORE_VAR_TIMER,
    /*  3 */ MO_CORE_DMG_FLASH_TIMER,
    /*  4 */ MO_CORE_INVINC_TIMER,
    /*  5 */ MO_CORE_SHORT_5,
    /*  6 */ MO_CORE_POS_IN_TENT,
    /*  7 */ MO_CORE_DRAW_SHADOW,
    /*  8 */ MO_CORE_WAIT_IN_WATER,
    /*  9 */ MO_CORE_SHORT_MAX
} BossMoCoreVar;

typedef enum {
    /*  0 */ MO_TENT_SWING_LAG_X,
    /*  1 */ MO_TENT_SWING_SIZE_X,
    /*  2 */ MO_TENT_SWING_RATE_X,
    /*  3 */ MO_TENT_SWING_LAG_Z,
    /*  4 */ MO_TENT_SWING_SIZE_Z,
    /*  5 */ MO_TENT_SWING_RATE_Z,
    /*  6 */ MO_TENT_MAX_STRETCH,
    /*  7 */ MO_TENT_BASE_ALPHA,
    /*  8 */ MO_TENT_CUT_SCALE,
    /*  9 */ MO_TENT_FLOAT_9,
    /* 10 */ MO_TENT_FLOAT_10,
    /* 11 */ MO_TENT_FLOAT_11,
    /* 12 */ MO_TENT_FLOAT_12,
    /* 13 */ MO_TENT_FLOAT_13,
    /* 14 */ MO_TENT_FLATTEN_RATE,
    /* 15 */ MO_TENT_WATER_ALPHA,
    /* 16 */ MO_TENT_WATER_LEVEL_MOD,
    /* 17 */ MO_TENT_FLOAT_MAX
} BossMoTentVarF;

typedef enum {
    /*  0 */ MO_CORE_INTRO_WATER_ALPHA,
    /*  1 */ MO_CORE_FLOAT_1,
    /*  2 */ MO_CORE_FLOAT_2,
    /*  3 */ MO_CORE_FLOAT_3,
    /*  4 */ MO_CORE_FLOAT_4,
    /*  5 */ MO_CORE_FLOAT_5,
    /*  6 */ MO_CORE_FLOAT_6,
    /*  7 */ MO_CORE_BASE_ALPHA,
    /*  8 */ MO_CORE_FLOAT_8,
    /*  9 */ MO_CORE_WATER_TEX1_X,
    /* 10 */ MO_CORE_WATER_TEX1_Y,
    /* 11 */ MO_CORE_WATER_TEX2_X,
    /* 12 */ MO_CORE_WATER_TEX2_Y,
    /* 13 */ MO_CORE_WATER_LEVEL,
    /* 14 */ MO_CORE_FLOAT_MAX
} BossMoCoreVarF;

#define MO_SHORT_MAX MAX(MO_TENT_SHORT_MAX, MO_CORE_SHORT_MAX)
#define MO_FLOAT_MAX MAX(MO_TENT_FLOAT_MAX, MO_CORE_FLOAT_MAX)

typedef struct BossMo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ Actor* otherTent;
    /* 0x0150 */ BossMoActionFunc actionFunc;
    /* 0x0154 */ u8 tent2KillTimer;
    /* 0x0155 */ u8 hitCount;
    /* 0x0156 */ u8 tentSpawnPos;
    /* 0x0158 */ s16 actionState;
    /* 0x015A */ s16 movementTimer;
    /* 0x015C */ s16 rippleTimer;
    /* 0x015E */ s16 damageFlashTimer;
    /* 0x0160 */ s16 invincibilityTimer;
    /* 0x0162 */ s16 baseTex1x;
    /* 0x0164 */ union{s16 baseTex1y; s16 corePos;};
    /* 0x0166 */ union{s16 baseTex2x; s16 drawShadow;};
    /* 0x0168 */ union{s16 baseTex2y; s16 waitUnderwater;};
    /* 0x016A */ s16 tentWidthIndex;
    /* 0x016C */ s16 tentPulsePhase;
    /* 0x016E */ s16 tentSwingX;
    /* 0x0170 */ s16 tentSwingZ;
    /* 0x0172 */ s16 cutIndex;
    /* 0x0174 */ s16 meltIndex;
    /* 0x0176 */ s16 linkToLeft;
    /* 0x0178 */ s16 mashCounter;
    /* 0x017A */ s16 noBubbles;
    /* 0x017C */ s16 sfxTimer;
    /* 0x017E */ s16 timers[5];
    /* 0x0188 */ union{f32 swingLagX; f32 introWaterTexAlpha;};
    /* 0x018C */ f32 swingSizeX;
    /* 0x0190 */ f32 swingRateX;
    /* 0x0194 */ f32 swingLagZ;
    /* 0x0198 */ f32 swingSizeZ;
    /* 0x019C */ f32 swingRateZ;
    /* 0x01A0 */ f32 tentMaxStretch;
    /* 0x01A4 */ f32 baseAlpha;
    /* 0x01A8 */ f32 cutScale;
    /* 0x01AC */ f32 waterTex1x;
    /* 0x01B0 */ f32 waterTex1y;
    /* 0x01B4 */ f32 waterTex2x;
    /* 0x01B8 */ f32 waterTex2y;
    /* 0x01BC */ f32 waterLevel;
    /* 0x01C0 */ f32 flattenRate;
    /* 0x01C4 */ f32 waterTexAlpha;
    /* 0x01C8 */ f32 waterLevelMod;
    /* 0x01CC */ s16 baseBubblesTimer;
    /* 0x01CE */ s16 attackAngleMod;
    /* 0x01D0 */ u8 unk_1D0; // unused?
    /* 0x01D1 */ u8 drawActor;
    /* 0x01D2 */ u8 linkHitTimer;
    /* 0x01D4 */ Vec3f targetPos;
    /* 0x01E0 */ f32 tentRippleSize;
    /* 0x01E4 */ PosRot grabPosRot;
    /* 0x01F8 */ f32 tentWidth[300];
    /* 0x06A8 */ Vec3f tentStretch[41];
    /* 0x0894 */ Vec3f tentScale[41];
    /* 0x0A80 */ Vec3f tentRipple[41];
    /* 0x0C6C */ Vec3s tentRot[41];
    /* 0x0D64 */ f32 tentMaxAngle;
    /* 0x0D68 */ f32 tentSpeed;
    /* 0x0D6C */ f32 tentPulse;
    /* 0x0D70 */ Vec3f tentPos[41];
    /* 0x0F5C */ f32 cameraZoom;
    /* 0x0F60 */ s16 csState;
    /* 0x0F62 */ s16 csCamera;
    /* 0x0F64 */ s16 targetIndex;
    /* 0x0F68 */ Vec3f cameraEye;
    /* 0x0F74 */ Vec3f cameraAt;
    /* 0x0F80 */ Vec3f cameraUp;
    /* 0x0F8C */ char unk_F8C[0x18];
    /* 0x0FA4 */ Vec3f cameraEyeVel;
    /* 0x0FB0 */ Vec3f cameraAtVel;
    /* 0x0FBC */ Vec3f cameraNextEye;
    /* 0x0FC8 */ Vec3f cameraEyeMaxVel;
    /* 0x0FD4 */ Vec3f cameraNextAt;
    /* 0x0FE0 */ Vec3f cameraAtMaxVel;
    /* 0x0FEC */ f32 cameraSpeedMod;
    /* 0x0FF0 */ f32 cameraAccel;
    /* 0x0FF4 */ char unk_FF4[8];
    /* 0x0FFC */ f32 cameraDist;
    /* 0x1000 */ f32 cameraSpeed;
    /* 0x1004 */ f32 cameraYaw;
    /* 0x1008 */ f32 cameraYawRate;
    /* 0x100C */ f32 cameraYawShake;
    /* 0x1010 */ Vec3f tentTipPos;
    /* 0x101C */ ColliderJntSph tentCollider;
    /* 0x103C */ ColliderJntSphElement tentElements[19];
    /* 0x14FC */ ColliderCylinder coreCollider;
    /* 0x1548 */ char unk_1548[0x44];
} BossMo; // size = 0x158C

#define BOSSMO_CORE -1
#define BOSSMO_TENTACLE 0x64

extern const ActorInit Boss_Mo_InitVars;

#endif
