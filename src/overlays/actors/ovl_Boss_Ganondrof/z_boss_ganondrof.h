#ifndef _Z_BOSS_GANONDROF_H_
#define _Z_BOSS_GANONDROF_H_

#include "ultra64.h"
#include "global.h"

struct BossGanondrof;

typedef void (*BossGanondrofActionFunc)(struct BossGanondrof*, GlobalContext*);

typedef enum {
    /* 0 */ FHG_FLY_PAINTING,
    /* 1 */ FHG_FLY_NEUTRAL,
    /* 2 */ FHG_FLY_VOLLEY,
    /* 3 */ FHG_FLY_RETURN,
    /* 4 */ FHG_FLY_CHARGE
} BossGanondrofFlyModes;

typedef struct BossGanondrof {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ BossGanondrofActionFunc actionFunc;
    /* 0x0194 */ s16 varianceTimer;
    /* 0x0196 */ char unk_196[6];
    /* 0x019C */ s16 unkTimer1; // Decremented every frame, but
    /* 0x019E */ s16 unkTimer2; // nothing sets or uses them.
    /* 0x01A0 */ s16 invincibilityTimer;
    /* 0x01A2 */ s16 actionState;
    /* 0x01A4 */ s16 throwFrame;
    /* 0x01A6 */ s16 throwCount;
    /* 0x01A8 */ s16 maskOff;
    /* 0x01AA */ s16 eyeState;
    /* 0x01AC */ s16 particleAngle;
    /* 0x01AE */ s16 bodyDecayIndex;
    /* 0x01B0 */ s16 bodyDecayFlag;
    /* 0x01B2 */ s16 limbDecayIndex;
    /* 0x01B4 */ s16 deathEnvTimer;
    /* 0x01B6 */ s16 deathSfxTimer;
    /* 0x01B8 */ char unk_1B8[4];
    /* 0x01BC */ s16 timers[5];
    /* 0x01C6 */ u8 killActor;
    /* 0x01C7 */ u8 returnCount;
    /* 0x01C8 */ u8 shockTimer;
    /* 0x01C9 */ u8 flyMode;
    /* 0x01CA */ u8 returnSuccess;
    /* 0x01CC */ f32 floatSpeed;
    /* 0x01D0 */ f32 endFrame;
    /* 0x01D4 */ f32 eyeBrightness;
    /* 0x01D8 */ f32 cameraZoom;
    /* 0x01DC */ f32 cameraAngle;
    /* 0x01E0 */ f32 eyeAlpha;
    /* 0x01E4 */ char unk_1E4[0x1C];
    /* 0x0200 */ Vec3f spearTip;
    /* 0x020C */ Vec3f targetPos;
    /* 0x0218 */ Vec3f bodyPartsPos[27]; // only 25 used
    /* 0x035C */ s16 deathCamera;
    /* 0x035E */ s16 deathState;
    /* 0x0360 */ Vec3f cameraEye;
    /* 0x036C */ Vec3f cameraAt;
    /* 0x0378 */ Vec3f cameraEyeVel;
    /* 0x0384 */ Vec3f cameraAtVel;
    /* 0x0390 */ Vec3f cameraNextEye;
    /* 0x039C */ Vec3f cameraEyeMaxVel;
    /* 0x03A8 */ Vec3f cameraNextAt;
    /* 0x03B4 */ Vec3f cameraAtMaxVel;
    /* 0x03C0 */ f32 cameraSpeedMod;
    /* 0x03C4 */ f32 cameraAccel;
    /* 0x03C8 */ f32 legRotY;
    /* 0x03CC */ f32 legRotZ;
    /* 0x03D0 */ f32 legSplitY;
    /* 0x03D4 */ f32 armRotY;
    /* 0x03D8 */ f32 armRotZ;
    /* 0x03DC */ f32 rideRotZ[30]; // possibly only 25 used
    /* 0x0454 */ f32 rideRotY[30]; // possibly only 25 used
    /* 0x04CC */ LightNode* lightNode;
    /* 0x04D0 */ LightInfo lightInfo;
    /* 0x04E0 */ ColliderCylinder colliderBody;
    /* 0x052C */ ColliderCylinder colliderSpear;
} BossGanondrof; // size = 0x0578

extern const ActorInit Boss_Ganondrof_InitVars;

#endif