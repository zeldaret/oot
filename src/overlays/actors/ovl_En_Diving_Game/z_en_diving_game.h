#ifndef Z_EN_DIVING_GAME_H
#define Z_EN_DIVING_GAME_H

#include "ultra64.h"
#include "z64actor.h"

struct EnDivingGame;

typedef void (*EnDivingGameActionFunc)(struct EnDivingGame*, struct PlayState*);

typedef struct EnDivingGame {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s jointTable[20];
    /* 0x0208 */ Vec3s morphTable[20];
    /* 0x0280 */ EnDivingGameActionFunc actionFunc;
    /* 0x0284 */ Vec3s headRot;
    /* 0x028A */ Vec3s torsoRot;
    /* 0x0290 */ s16 unk_290; // counter that only goes up
    /* 0x0292 */ s16 unk_292;
    /* 0x0294 */ s16 subCamTimer;
    /* 0x0296 */ s16 unk_296; // read by ExRuppy // timer?
    /* 0x0298 */ s16 eyeTimer;
    /* 0x029A */ s16 spawnRuppyTimer;
    /* 0x029C */ s16 phase;
    /* 0x029E */ s16 eyeTexIndex;
    /* 0x02A0 */ s16 subCamId;
    /* 0x02A2 */ s16 unk_2A2; // 0: , 1: , 2: Tells rupees to sink in water
    /* 0x02A4 */ s16 grabbedRupeesCounter;
    /* 0x02A6 */ s16 rupeesLeftToThrow;
    /* 0x02A8 */ s16 state; // minigameState? 0: default, 1: waiting to give the scale, 2: minigame started
    /* 0x02AA */ s16 extraWinCount; // counts how many times you have beaten the minigame **after** you got the scale. ExRuppy will reset it to zero if a 500 rupee is spawned.
    /* 0x02AC */ char unk_2AC[0xC]; // probably another Vec3f, but unused.
    /* 0x02B8 */ Vec3f subCamAt;
    /* 0x02C4 */ Vec3f subCamEye;
    /* 0x02D0 */ Vec3f subCamEyeNext;
    /* 0x02DC */ Vec3f subCamEyeMaxVelFrac;
    /* 0x02E8 */ Vec3f subCamEyeVel;
    /* 0x02F4 */ Vec3f subCamAtNext;
    /* 0x0300 */ Vec3f subCamAtMaxVelFrac;
    /* 0x030C */ Vec3f subCamAtVel;
    /* 0x0318 */ f32 subCamVelFactor;
    /* 0x031C */ char unk_31C; // unused
    /* 0x031D */ u8 notPlayingMinigame; // flag
    /* 0x031E */ u8 allRupeesThrown; // flag
    /* 0x031F */ u8 unk_31F; // flag
    /* 0x0320 */ char unk_320[0x4]; // unused
    /* 0x0324 */ NpcInteractInfo interactInfo;
    /* 0x034C */ ColliderCylinder collider;
} EnDivingGame; // size = 0x0398

typedef enum EnDivingGamePhase {
    /* 0 */ ENDIVINGGAME_PHASE_ENDED,
    /* 1 */ ENDIVINGGAME_PHASE_1, // Player has not received the scale.
    /* 2 */ ENDIVINGGAME_PHASE_2 // Player got the scale and there are 10 rupees thrown.
} EnDivingGamePhase;

typedef enum EnDivingGameState {
    /* 0 */ ENDIVINGGAME_STATE_NOTPLAYING,
    /* 1 */ ENDIVINGGAME_STATE_AWARDPRIZE, // Waiting to give the scale to player.
    /* 2 */ ENDIVINGGAME_STATE_PLAYING
} EnDivingGameState;

#endif
