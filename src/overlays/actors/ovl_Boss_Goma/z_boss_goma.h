#ifndef _Z_BOSS_GOMA_H_
#define _Z_BOSS_GOMA_H_

#include "ultra64.h"
#include "global.h"

struct BossGoma;

typedef void (*BossGomaActionFunc)(struct BossGoma*, GlobalContext*);

typedef struct BossGoma {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelanime;
    /* 0x0190 */ BossGomaActionFunc actionFunc;
    /* 0x0194 */ s16 frameCount; // also used as a timer
    /* 0x0196 */ s16 patienceTimer; // when non-0: walk towards player, can be stunned
    /* 0x0198 */ s16 eyeLidBottomRotX;
    /* 0x019A */ s16 eyeLidTopRotX;
    /* 0x019C */ s16 eyeClosedTimer; // also used as a second invincibility frames source
    /* 0x019E */ s16 eyeIrisRotX;
    /* 0x01A0 */ s16 eyeIrisRotY;
    /* 0x01A2 */ s16 unusedTimer;
    /* 0x01A4 */ s16 childrenGohmaState[3]; // 0 not spawned, 1 spawned, -1 dead (-1 set by child gohma)
    /* 0x01AA */ s16 tailLimbsScaleTimers[4];
    /* 0x01B2 */ s16 spawnGohmasActionTimer;
    /* 0x01B4 */ s16 eyeState;
    /* 0x01B6 */ s16 doNotMoveThisFrame;
    /* 0x01B8 */ s16 visualState;
    /* 0x01BA */ s16 invincibilityFrames;
    /* 0x01BC */ s16 subCameraId;
    /* 0x01BE */ s16 disableGameplayLogic;
    /* 0x01C0 */ s16 decayingProgress; // when defeated, textures are progressively cleared
    /* 0x01C2 */ s16 noBackfaceCulling;
    /* 0x01C4 */ s16 blinkTimer;
    /* 0x01C6 */ s16 lookedAtFrames;
    /* 0x01C8 */ char unk_1C8[0x8];
    /* 0x01D0 */ s16 actionState;
    /* 0x01D2 */ s16 framesUntilNextAction; // not always used as named
    /* 0x01D4 */ s16 timer;
    /* 0x01D6 */ s16 sfxFaintTimer;
    /* 0x01D8 */ char unk_1D8[0x10];
    /* 0x01E8 */ f32 tailLimbsScale[4];
    /* 0x01F8 */ f32 eyeIrisScaleX;
    /* 0x01FC */ f32 unusedInitX;
    /* 0x0200 */ f32 unusedInitZ;
    /* 0x0204 */ f32 mainEnvColor[3];
    /* 0x0210 */ f32 eyeEnvColor[3];
    /* 0x021C */ f32 currentAnimFrameCount; // not used consistently
    /* 0x0220 */ f32 subCameraFollowSpeed;
    /* 0x0224 */ f32 eyeIrisScaleY;
    /* 0x0228 */ f32 defeatedCameraEyeDist;
    /* 0x022C */ f32 defeatedCameraEyeAngle;
    /* 0x0230 */ char unk_230[0x30];
    /* 0x0260 */ Vec3f lastTailLimbWorldPos;
    /* 0x026C */ Vec3f firstTailLimbWorldPos;
    /* 0x0278 */ Vec3f rightHandBackLimbWorldPos;
    /* 0x0284 */ Vec3f leftHandBackLimbWorldPos;
    /* 0x0290 */ Vec3f subCameraEye;
    /* 0x029C */ Vec3f subCameraAt;
    /* 0x02A8 */ Vec3f defeatedLimbPositions[100]; // only 85/86 first indices actually used
    /* 0x0758 */ u8 deadLimbsState[100]; // only 85/90 first indices actually used
    /* 0x07BC */ ColliderJntSph collider;
    /* 0x07DC */ ColliderJntSphElement colliderItems[13];
} BossGoma; // size = 0x0B1C

extern const ActorInit Boss_Goma_InitVars;

#endif
