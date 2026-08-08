#ifndef Z_EN_BOM_BOWL_MAN_H
#define Z_EN_BOM_BOWL_MAN_H

#include "ultra64.h"
#include "actor.h"

#include "assets/objects/object_bg/object_bg.h"

typedef enum EnBomBowlManWallState {
    EN_BOM_BOWL_MAN_WALL_STATE_STANDING,
    EN_BOM_BOWL_MAN_WALL_STATE_HIT,
    EN_BOM_BOWL_MAN_WALL_STATE_DISAPPEARED
} EnBomBowlManWallState;

typedef enum EnBomBowlManGameStartStatus {
    EN_BOM_BOWL_MAN_GAME_START_STATUS_INACTIVE,
    EN_BOM_BOWL_MAN_GAME_START_STATUS_PAID,
    EN_BOM_BOWL_MAN_GAME_START_STATUS_STARTED
} EnBomBowlManGameStartStatus;

struct EnBomBowlMan;

typedef void (*EnBomBowlManActionFunc)(struct EnBomBowlMan*, struct PlayState*);

typedef struct EnBomBowlMan {
    /* 0x000 */ Actor actor;
    /* 0x14C */ SkelAnime skelAnime;
    /* 0x190 */ Vec3s jointTable[BOWLING_GIRL_LIMB_MAX];
    /* 0x1D2 */ Vec3s morphTable[BOWLING_GIRL_LIMB_MAX];
    /* 0x214 */ EnBomBowlManActionFunc actionFunc;
    /* 0x218 */ Vec3s headRot;
    /* 0x21E */ char pad_21E[6];
    /* 0x224 */ Vec3s torsoRot;
    /* 0x22A */ s16 rewardAppearTimer;
    /* 0x22C */ s16 unk_22C; // unused
    /* 0x22E */ s16 waitMessageState;
    /* 0x230 */ s16 reward;
    /* 0x232 */ s16 hasPlayedBefore;
    /* 0x234 */ s16 eyeTexIndex;
    /* 0x236 */ s16 eyesTimer;
    /* 0x238 */ s16 eyesState;
    /* 0x23A */ s16 wakingUpTimer;
    /* 0x23C */ s16 isAskingToPlayAgain;
    /* 0x23E */ s16 wallsState[2]; // State of the first two walls
    /* 0x242 */ s16 rewardState;
    /* 0x244 */ s16 gameEndStatus;
    /* 0x246 */ char pad_246[2];
    /* 0x248 */ Vec3f homePos;
    /* 0x254 */ f32 curAnimLastFrame;
    /* 0x258 */ u8 gameStartStatus;
    /* 0x259 */ char pad_259[3];
    /* 0x25C */ struct EnBomBowlPit* finalTargetManager;
    /* 0x260 */ struct EnExItem* rewardItemOnCounter;
} EnBomBowlMan; // size = 0x0264

#endif
