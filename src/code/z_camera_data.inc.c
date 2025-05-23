#include "ultra64.h"
#include "global.h"

typedef struct CameraModeValue {
    s16 val;
    s16 dataType;
} CameraModeValue;

typedef struct CameraMode {
    s16 funcIdx;
    s16 valueCnt;
    CameraModeValue* values;
} CameraMode;

typedef struct CameraSetting {
    union {
        u32 unk_00;
        struct {
            u32 unk_bit0 : 1;
            u32 unk_bit1 : 1;
            u32 validModes : 30;
        };
    };
    CameraMode* cameraModes;
} CameraSetting;

/*==================================================================*/
// Data

#if DEBUG_FEATURES
s16 sOREGInit[] = {
    0,     // OREG(0)
    1,     // OREG(1)
    5,     // R_CAM_XZ_OFFSET_UPDATE_RATE
    5,     // R_CAM_Y_OFFSET_UPDATE_RATE
    5,     // R_CAM_FOV_UPDATE_RATE
    14500, // R_CAM_MAX_PITCH
    20,    // R_CAM_R_UPDATE_RATE_INV
    16,    // R_CAM_PITCH_UPDATE_RATE_INV
    150,   // OREG(8)
    25,    // R_CAM_SLOPE_Y_ADJ_AMOUNT
    150,   // OREG(10)
    6,     // OREG(11)
    10,    // OREG(12)
    10,    // OREG(13)
    0,     // OREG(14) (unused)
    0,     // OREG(15) (unused)
    1,     // OREG(16) (unused)
    100,   // R_CAM_PITCH_FLOOR_CHECK_NEAR_DIST_FAC
    250,   // R_CAM_PITCH_FLOOR_CHECK_FAR_DIST_FAC
    120,   // R_CAM_PITCH_FLOOR_CHECK_OFFSET_Y_FAC
    80,    // R_CAM_PITCH_FLOOR_CHECK_NEAR_WEIGHT
    30,    // OREG(21)
    120,   // OREG(22)
    4,     // R_CAM_DEFAULT_ANIM_TIME
    1,     // OREG(24)
    50,    // R_CAM_UPDATE_RATE_STEP_SCALE_XZ
    20,    // R_CAM_UPDATE_RATE_STEP_SCALE_Y
    1800,  // OREG(27)
    50,    // OREG(28)
    50,    // OREG(29)
    50,    // OREG(30)
    20,    // R_CAM_JUMP1_EYE_Y_STEP_SCALE
    20,    // OREG(32)
    -10,   // OREG(33)
    -5460, // R_CAM_MIN_PITCH_1
    -9100, // R_CAM_MIN_PITCH_2
    -6,    // R_CAM_BATTLE1_ROLL_TARGET_BASE
    8,     // R_CAM_BATTLE1_ROLL_STEP_SCALE
    15,    // OREG(38)
    75,    // OREG(39)
    60,    // R_CAM_BATTLE1_XYZ_OFFSET_UPDATE_RATE_TARGET
    12,    // R_CAM_AT_LERP_STEP_SCALE_MIN
    110,   // R_CAM_AT_LERP_STEP_SCALE_FAC
    40,    // OREG(43)
    50,    // OREG(44)
    250,   // OREG(45)
    -10,   // R_CAM_YOFFSET_NORM
    30,    // OREG(47) (unused)
    30,    // OREG(48)
    70,    // OREG(49)
    20,    // OREG(50)
    20,    // OREG(51)
    20,    // OREG(52)
};

s16 sOREGInitCnt = ARRAY_COUNT(sOREGInit);
#endif

s16 sCamDataRegsInit[CAM_DATA_MAX] = {
    -20, // CAM_DATA_Y_OFFSET
    200, // CAM_DATA_EYE_DIST
    300, // CAM_DATA_EYE_DIST_NEXT
    10,  // CAM_DATA_PITCH_TARGET
    12,  // CAM_DATA_YAW_UPDATE_RATE_TARGET
    10,  // CAM_DATA_XZ_UPDATE_RATE_TARGET
    35,  // CAM_DATA_MAX_YAW_UPDATE
    60,  // CAM_DATA_FOV
    60,  // CAM_DATA_AT_LERP_STEP_SCALE
    3,   // CAM_DATA_INTERFACE_FIELD
    0,   // CAM_DATA_YAW_TARGET
    -40, // CAM_DATA_GROUND_Y_OFFSET
    20,  // CAM_DATA_GROUND_AT_LERP_STEP_SCALE
    25,  // CAM_DATA_SWING_YAW_INIT
    45,  // CAM_DATA_SWING_YAW_FINAL
    -5,  // CAM_DATA_SWING_PITCH_INIT
    15,  // CAM_DATA_SWING_PITCH_FINAL
    15,  // CAM_DATA_SWING_PITCH_ADJ
    20,  // CAM_DATA_MIN_MAX_DIST_FACTOR
    0,   // CAM_DATA_AT_OFFSET_X
    0,   // CAM_DATA_AT_OFFSET_Y
    0,   // CAM_DATA_AT_OFFSET_Z
    6,   // CAM_DATA_UNK_22
    60,  // CAM_DATA_UNK_23
    30,  // CAM_DATA_FOV_SCALE
    0,   // CAM_DATA_YAW_SCALE
    5,   // CAM_DATA_UNK_26
};

s16 sCamDataRegsInitCount = ARRAY_COUNT(sCamDataRegsInit);

#if DEBUG_FEATURES
char sCameraSettingNames[][12] = {
    "NONE      ",  // CAM_SET_NONE
    "NORMAL0    ", // CAM_SET_NORMAL0
    "NORMAL1    ", // CAM_SET_NORMAL1
    "DUNGEON0   ", // CAM_SET_DUNGEON0
    "DUNGEON1   ", // CAM_SET_DUNGEON1
    "NORMAL3    ", // CAM_SET_NORMAL3
    "HORSE0     ", // CAM_SET_HORSE
    "BOSS_GOMA  ", // CAM_SET_BOSS_GOHMA
    "BOSS_DODO  ", // CAM_SET_BOSS_DODONGO
    "BOSS_BARI  ", // CAM_SET_BOSS_BARINADE
    "BOSS_FGANON", // CAM_SET_BOSS_PHANTOM_GANON
    "BOSS_BAL   ", // CAM_SET_BOSS_VOLVAGIA
    "BOSS_SHADES", // CAM_SET_BOSS_BONGO
    "BOSS_MOFA  ", // CAM_SET_BOSS_MORPHA
    "BOSS_TWIN0 ", // CAM_SET_BOSS_TWINROVA_PLATFORM
    "BOSS_TWIN1 ", // CAM_SET_BOSS_TWINROVA_FLOOR
    "BOSS_GANON1", // CAM_SET_BOSS_GANONDORF
    "BOSS_GANON2", // CAM_SET_BOSS_GANON
    "TOWER0     ", // CAM_SET_TOWER_CLIMB
    "TOWER1     ", // CAM_SET_TOWER_UNUSED
    "FIXED0     ", // CAM_SET_MARKET_BALCONY
    "FIXED1     ", // CAM_SET_CHU_BOWLING
    "CIRCLE0    ", // CAM_SET_PIVOT_CRAWLSPACE
    "CIRCLE2    ", // CAM_SET_PIVOT_SHOP_BROWSING
    "CIRCLE3    ", // CAM_SET_PIVOT_IN_FRONT
    "PREREND0   ", // CAM_SET_PREREND_FIXED
    "PREREND1   ", // CAM_SET_PREREND_PIVOT
    "PREREND3   ", // CAM_SET_PREREND_SIDE_SCROLL
    "DOOR0      ", // CAM_SET_DOOR0
    "DOORC      ", // CAM_SET_DOORC
    "RAIL3      ", // CAM_SET_CRAWLSPACE
    "START0     ", // CAM_SET_START0
    "START1     ", // CAM_SET_START1
    "FREE0      ", // CAM_SET_FREE0
    "FREE2      ", // CAM_SET_FREE2
    "CIRCLE4    ", // CAM_SET_PIVOT_CORNER
    "CIRCLE5    ", // CAM_SET_PIVOT_WATER_SURFACE
    "DEMO0      ", // CAM_SET_CS_0
    "DEMO1      ", // CAM_SET_CS_TWISTED_HALLWAY
    "MORI1      ", // CAM_SET_FOREST_BIRDS_EYE
    "ITEM0      ", // CAM_SET_SLOW_CHEST_CS
    "ITEM1      ", // CAM_SET_ITEM_UNUSED
    "DEMO3      ", // CAM_SET_CS_3
    "DEMO4      ", // CAM_SET_CS_ATTENTION
    "UFOBEAN    ", // CAM_SET_BEAN_GENERIC
    "LIFTBEAN   ", // CAM_SET_BEAN_LOST_WOODS
    "SCENE0     ", // CAM_SET_SCENE_UNUSED
    "SCENE1     ", // CAM_SET_SCENE_TRANSITION
    "HIDAN1     ", // CAM_SET_ELEVATOR_PLATFORM
    "HIDAN2     ", // CAM_SET_FIRE_STAIRCASE
    "MORI2      ", // CAM_SET_FOREST_UNUSED
    "MORI3      ", // CAM_SET_FOREST_DEFEAT_POE
    "TAKO       ", // CAM_SET_BIG_OCTO
    "SPOT05A    ", // CAM_SET_MEADOW_BIRDS_EYE
    "SPOT05B    ", // CAM_SET_MEADOW_UNUSED
    "HIDAN3     ", // CAM_SET_FIRE_BIRDS_EYE
    "ITEM2      ", // CAM_SET_TURN_AROUND
    "CIRCLE6    ", // CAM_SET_PIVOT_VERTICAL
    "NORMAL2    ", // CAM_SET_NORMAL2
    "FISHING    ", // CAM_SET_FISHING
    "DEMOC      ", // CAM_SET_CS_C
    "UO_FIBER   ", // CAM_SET_JABU_TENTACLE
    "DUNGEON2   ", // CAM_SET_DUNGEON2
    "TEPPEN     ", // CAM_SET_DIRECTED_YAW
    "CIRCLE7    ", // CAM_SET_PIVOT_FROM_SIDE
    "NORMAL4    ", // CAM_SET_NORMAL4
};

char sCameraModeNames[][12] = {
    "NORMAL     ", // CAM_MODE_NORMAL
    "PARALLEL   ", // CAM_MODE_Z_PARALLEL
    "KEEPON     ", // CAM_MODE_Z_TARGET_FRIENDLY
    "TALK       ", // CAM_MODE_TALK
    "BATTLE     ", // CAM_MODE_Z_TARGET_UNFRIENDLY
    "CLIMB      ", // CAM_MODE_WALL_CLIMB
    "SUBJECT    ", // CAM_MODE_FIRST_PERSON
    "BOWARROW   ", // CAM_MODE_AIM_ADULT
    "BOWARROWZ  ", // CAM_MODE_Z_AIM
    "FOOKSHOT   ", // CAM_MODE_HOOKSHOT_FLY
    "BOOMERANG  ", // CAM_MODE_AIM_BOOMERANG
    "PACHINCO   ", // CAM_MODE_AIM_CHILD
    "CLIMBZ     ", // CAM_MODE_Z_WALL_CLIMB
    "JUMP       ", // CAM_MODE_JUMP
    "HANG       ", // CAM_MODE_LEDGE_HANG
    "HANGZ      ", // CAM_MODE_Z_LEDGE_HANG
    "FREEFALL   ", // CAM_MODE_FREE_FALL
    "CHARGE     ", // CAM_MODE_CHARGE
    "STILL      ", // CAM_MODE_STILL
    "PUSHPULL   ", // CAM_MODE_PUSH_PULL
    "BOOKEEPON  ", // CAM_MODE_FOLLOW_BOOMERANG
};
#endif

/**
 *=====================================================================
 *                   General Data: NORMAL0 Setting
 *=====================================================================
 */

CameraModeValue sSetNormal0ModeNormalData[] = {
    CAM_FUNCDATA_NORM1(
        -20, 200, 300, 10, 12, 10, 35, 60, 60,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_1 | NORMAL1_FLAG_0)),
};

CameraModeValue sSetNormal0ModeZParallelData[] = {
    CAM_FUNCDATA_PARA1(
        -20, 250, 0, 0, 5, 5, 45, 50,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, PARALLEL1_FLAG_3 | PARALLEL1_FLAG_1), -40,
        20),
};

CameraModeValue sSetNormal0ModeZTargetFriendlyData[] = {
    CAM_FUNCDATA_KEEP1(-20, 120, 140, 25, 45, -5, 15, 15, 45, 50,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, KEEPON1_FLAG_0), -50, 30),
};

CameraModeValue sSetNormal0ModeTalkData[] = {
    CAM_FUNCDATA_KEEP3(-30, 70, 200, 40, 10, 0, 5, 70, 45, 50, 10,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_LARGE, CAM_HUD_VISIBILITY_A_HEARTS_MAGIC_FORCE, 0)),
};

CameraModeValue sSetNormal0ModeZTargetUnfriendlyData[] = {
    CAM_FUNCDATA_BATT1(-20, 180, 10, 80, 0, 10, 25, 50, 80,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, BATTLE1_FLAG_1), -40, 25),
};

CameraModeValue sSetNormal0ModeWallClimbData[] = {
    CAM_FUNCDATA_JUMP2(-20, 200, 300, 20, 5, 5, 60, 40,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetNormal0ModeFirstPersonData[] = {
    CAM_FUNCDATA_SUBJ3(0, 5, 50, 10, 0, 0, 0, 45, CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetNormal0ModeAimAdultData[] = {
    CAM_FUNCDATA_SUBJ3(-7, 14, 50, 10, 0, -30, -5, 45,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetNormal0ModeZAimData[] = {
    CAM_FUNCDATA_SUBJ3(20, 70, 70, 10, -120, 20, 0, 45,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetNormal0ModeHookshotFlyData[] = {
    CAM_FUNCDATA_SPEC5_ALT(-20, 80, 250, 45, 60, 40, 6,
                           CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetNormal0ModeAimBoomerangData[] = {
    CAM_FUNCDATA_SUBJ3(5, 50, 50, 10, 0, 0, 0, 45,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetNormal0ModeAimChildData[] = {
    CAM_FUNCDATA_SUBJ3(-7, 14, 50, 10, -9, -63, -30, 45,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetNormal0ModeZWallClimbData[] = {
    CAM_FUNCDATA_JUMP2(-20, 200, 300, 20, 999, 5, 60, 40,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, JUMP2_FLAG_2 | JUMP2_FLAG_1)),
};

CameraModeValue sSetNormal0ModeJumpData[] = {
    CAM_FUNCDATA_JUMP1(-20, 200, 300, 12, 35, 60, 40,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetNormal0ModeLedgeHangData[] = {
    CAM_FUNCDATA_UNIQ1(-80, 200, 300, 40, 60, 10, CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetNormal0ModeZLedgeHangData[] = {
    CAM_FUNCDATA_UNIQ1(-120, 300, 300, 70, 45, 10,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetNormal0ModeFreeFallData[] = {
    CAM_FUNCDATA_JUMP1(-20, 200, 300, 15, 80, 60, 20,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetNormal0ModeChargeData[] = {
    CAM_FUNCDATA_BATT4(-20, 300, 50, 2, 80, 20, CAM_INTERFACE_FIELD(CAM_LETTERBOX_IGNORE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetNormal0ModeStillData[] = {
    CAM_FUNCDATA_NORM1(
        -20, 200, 300, 10, 100, 10, 100, 60, 5,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_IGNORE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_1 | NORMAL1_FLAG_0)),
};

CameraModeValue sSetNormal0ModePushPullData[] = {
    CAM_FUNCDATA_PARA1(0, 250, 25, 0, 5, 5, 70, 30,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL,
                                           PARALLEL1_FLAG_6 | PARALLEL1_FLAG_5 | PARALLEL1_FLAG_3 | PARALLEL1_FLAG_1),
                       -20, 30),
};

CameraModeValue sSetNormal0ModeFollowBoomerangData[] = {
    CAM_FUNCDATA_KEEP1(-5, 120, 140, 5, 85, 10, 5, 25, 45, 50,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, KEEPON1_FLAG_0), -15, 30),
};

/**
 *=====================================================================
 *                   Custom Data: NORMAL1 Setting
 *=====================================================================
 */

CameraModeValue sSetNormal1ModeNormalData[] = {
    CAM_FUNCDATA_NORM1(
        0, 200, 400, 10, 12, 20, 40, 60, 60,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_1 | NORMAL1_FLAG_0)),
};

CameraModeValue sSetNormal1ModeZParallelData[] = {
    CAM_FUNCDATA_PARA1(0, 250, 0, 0, 5, 5, 45, 50,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, PARALLEL1_FLAG_1), -40, 20),
};

CameraModeValue sSetNormal1ModeZTargetFriendlyData[] = {
    CAM_FUNCDATA_KEEP1(-20, 120, 140, 25, 45, -5, 15, 15, 45, 50,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, KEEPON1_FLAG_0), -50, 20),
};

CameraModeValue sSetNormal1ModeZTargetUnfriendlyData[] = {
    CAM_FUNCDATA_BATT1(-20, 250, 10, 80, 0, 10, 25, 50, 65,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, BATTLE1_FLAG_1), -40, 25),
};

CameraModeValue sSetNormal1ModeHookshotFlyData[] = {
    CAM_FUNCDATA_SPEC5(-20, 80, 250, 6, 45, 60, 40,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetNormal1ModeJumpData[] = {
    CAM_FUNCDATA_JUMP1(0, 250, 400, 15, 50, 60, 30, CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetNormal1ModeFreeFallData[] = {
    CAM_FUNCDATA_JUMP1(0, 200, 400, 30, 80, 60, 20, CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetNormal1ModeWallClimbData[] = {
    CAM_FUNCDATA_JUMP2(-20, 200, 400, 20, 5, 5, 60, 40,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetNormal1ModeZWallClimbData[] = {
    CAM_FUNCDATA_JUMP2(-20, 250, 400, 20, 999, 5, 60, 40,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, JUMP2_FLAG_2 | JUMP2_FLAG_1)),
};

CameraModeValue sSetNormal1ModeChargeData[] = {
    CAM_FUNCDATA_BATT4(0, 300, 50, 2, 80, 20, CAM_INTERFACE_FIELD(CAM_LETTERBOX_IGNORE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetNormal1ModeLedgeHangData[] = {
    CAM_FUNCDATA_UNIQ1(-80, 200, 400, 40, 60, 10, CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetNormal1ModeZLedgeHangData[] = {
    CAM_FUNCDATA_UNIQ1(-120, 400, 400, 70, 45, 10,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetNormal1ModeStillData[] = {
    CAM_FUNCDATA_NORM1(
        0, 200, 400, 10, 100, 20, 100, 60, 5,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_IGNORE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_1 | NORMAL1_FLAG_0)),
};

/**
 *=====================================================================
 *                   Custom Data: DUNGEON0 Setting
 *=====================================================================
 */

CameraModeValue sSetDungeon0ModeNormalData[] = {
    CAM_FUNCDATA_NORM1(
        -10, 150, 250, 5, 10, 5, 30, 60, 60,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_1 | NORMAL1_FLAG_0)),
};

CameraModeValue sSetDungeon0ModeZParallelData[] = {
    CAM_FUNCDATA_PARA1(
        -20, 150, 0, 0, 5, 5, 45, 50,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, PARALLEL1_FLAG_3 | PARALLEL1_FLAG_1), -40,
        20),
};

CameraModeValue sSetDungeon0ModeZTargetFriendlyData[] = {
    CAM_FUNCDATA_KEEP1(-20, 120, 140, 25, 45, -5, 15, 15, 45, 50,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, KEEPON1_FLAG_0), -40, 20),
};

CameraModeValue sSetDungeon0ModeZTargetUnfriendlyData[] = {
    CAM_FUNCDATA_BATT1(-20, 180, 10, 80, 0, 10, 25, 45, 80,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, BATTLE1_FLAG_1), -40, 25),
};

CameraModeValue sSetDungeon0ModeJumpData[] = {
    CAM_FUNCDATA_JUMP1(-10, 150, 250, 10, 50, 60, 40,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetDungeon0ModeFreeFallData[] = {
    CAM_FUNCDATA_JUMP1(-10, 150, 250, 10, 80, 60, 20,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetDungeon0ModeWallClimbData[] = {
    CAM_FUNCDATA_JUMP2(-40, 150, 250, 20, 5, 5, 60, 40,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetDungeon0ModeZWallClimbData[] = {
    CAM_FUNCDATA_JUMP2(-40, 250, 250, 20, 999, 5, 60, 40,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, JUMP2_FLAG_2 | JUMP2_FLAG_1)),
};

CameraModeValue sSetDungeon0ModeChargeData[] = {
    CAM_FUNCDATA_BATT4(-10, 300, 50, 2, 80, 20, CAM_INTERFACE_FIELD(CAM_LETTERBOX_IGNORE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetDungeon0ModeLedgeHangData[] = {
    CAM_FUNCDATA_UNIQ1(-80, 150, 250, 40, 60, 10, CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetDungeon0ModeZLedgeHangData[] = {
    CAM_FUNCDATA_UNIQ1(-120, 250, 250, 70, 45, 10,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetDungeon0ModeStillData[] = {
    CAM_FUNCDATA_NORM1(
        -10, 150, 250, 5, 100, 5, 100, 60, 5,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_IGNORE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_1 | NORMAL1_FLAG_0)),
};

/**
 *=====================================================================
 *                   Custom Data: DUNGEON1 Setting
 *=====================================================================
 */

CameraModeValue sSetDungeon1ModeNormalData[] = {
    CAM_FUNCDATA_NORM1(
        -40, 150, 150, 0, 10, 5, 30, 60, 60,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_1 | NORMAL1_FLAG_0)),
};

CameraModeValue sSetDungeon1ModeTalkData[] = {
    CAM_FUNCDATA_KEEP3(-20, 70, 200, 40, 10, 0, 5, 70, 45, 50, 10,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_LARGE, CAM_HUD_VISIBILITY_A_HEARTS_MAGIC_FORCE, 0)),
};

CameraModeValue sSetDungeon1ModeJumpData[] = {
    CAM_FUNCDATA_JUMP1(-40, 150, 150, 10, 50, 60, 40,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetDungeon1ModeFreeFallData[] = {
    CAM_FUNCDATA_JUMP1(-40, 150, 180, 12, 80, 60, 20,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetDungeon1ModeWallClimbData[] = {
    CAM_FUNCDATA_JUMP2(-40, 150, 150, 20, 5, 5, 60, 40,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetDungeon1ModeZWallClimbData[] = {
    CAM_FUNCDATA_JUMP2(-40, 150, 150, 20, 999, 5, 60, 40,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, JUMP2_FLAG_2 | JUMP2_FLAG_1)),
};

CameraModeValue sSetDungeon1ModeChargeData[] = {
    CAM_FUNCDATA_BATT4(-40, 200, 50, 2, 80, 20, CAM_INTERFACE_FIELD(CAM_LETTERBOX_IGNORE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetDungeon1ModeLedgeHangData[] = {
    CAM_FUNCDATA_UNIQ1(-80, 150, 150, 40, 60, 10, CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetDungeon1ModeZLedgeHangData[] = {
    CAM_FUNCDATA_UNIQ1(-120, 150, 150, 70, 45, 10,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetDungeon1ModeStillData[] = {
    CAM_FUNCDATA_NORM1(
        -40, 150, 150, 0, 100, 5, 100, 60, 5,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_IGNORE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_1 | NORMAL1_FLAG_0)),
};

CameraModeValue sSetDungeon1ModePushPullData[] = {
    CAM_FUNCDATA_PARA1(-40, 180, 25, 0, 5, 5, 60, 50,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL,
                                           PARALLEL1_FLAG_6 | PARALLEL1_FLAG_5 | PARALLEL1_FLAG_3 | PARALLEL1_FLAG_1),
                       -20, 30),
};

/**
 *=====================================================================
 *                   Custom Data: NORMAL3 Setting
 *=====================================================================
 */

CameraModeValue sSetNormal3ModeNormalData[] = {
    CAM_FUNCDATA_JUMP3(-20, 280, 300, 20, 15, 5, 40, 60, 100,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, JUMP3_FLAG_2)),
};

CameraModeValue sSetNormal3ModeZParallelData[] = {
    CAM_FUNCDATA_PARA1(
        -50, 250, 70, 0, 15, 5, 60, 100,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, PARALLEL1_FLAG_3 | PARALLEL1_FLAG_1), -50,
        20),
};

CameraModeValue sSetNormal3ModeTalkData[] = {
    CAM_FUNCDATA_KEEP3(-30, 70, 200, 40, 10, 10, 20, 70, 45, 10, 10,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_LARGE, CAM_HUD_VISIBILITY_A_HEARTS_MAGIC_FORCE, 0)),
};

/*
 * These values are for when the eye is >= OREG(45) units below the surface of the water.
 */
CameraModeValue sSetNormal3ModeAimBoomerangData[] = {
    CAM_FUNCDATA_JUMP3(-40, 150, 250, -5, 18, 5, 60, 60, 40,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, JUMP3_FLAG_2 | JUMP3_FLAG_0)),
};

/**
 *=====================================================================
 *                   Custom Data: HORSE Setting
 *=====================================================================
 */

CameraModeValue sSetHorseModeNormalData[] = {
    CAM_FUNCDATA_NORM3(-50, 220, 250, 10, 16, 20, 60, 100,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_A_HEARTS_MAGIC_MINIMAP_FORCE, 0)),
};

CameraModeValue sSetHorseModeZParallelData[] = {
    CAM_FUNCDATA_NORM3(-40, 180, 220, -2, 12, 100, 45, 100,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_A_HEARTS_MAGIC_MINIMAP_FORCE, 0)),
};

CameraModeValue sSetHorseModeAimAdultData[] = {
    CAM_FUNCDATA_SUBJ3(-7, 14, 100, 10, 0, -30, -5, 40,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_A_HEARTS_MAGIC_MINIMAP_FORCE, 0)),
};

CameraModeValue sSetHorseModeZTargetFriendlyData[] = {
    CAM_FUNCDATA_KEEP1(
        -60, 180, 220, 25, 45, -5, 15, 15, 45, 50,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_A_HEARTS_MAGIC_MINIMAP_FORCE, KEEPON1_FLAG_0), -60,
        20),
};

CameraModeValue sSetHorseModeTalkData[] = {
    CAM_FUNCDATA_KEEP3(-60, 140, 200, 40, 10, 0, 5, 70, 45, 50, 10,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_LARGE, CAM_HUD_VISIBILITY_A_HEARTS_MAGIC_FORCE, 0)),
};

/**
 *=====================================================================
 *                   Custom Data: BOSS_GOHMA Setting
 *=====================================================================
 */

CameraModeValue sSetBossGohmaModeNormalData[] = {
    CAM_FUNCDATA_NORM1(-20, 150, 250, 0, 15, 5, 40, 60, 60,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_0)),
};

CameraModeValue sSetBossGohmaModeZTargetUnfriendlyData[] = {
    CAM_FUNCDATA_BATT1(-30, 150, 10, 40, -10, 0, 25, 60, 40,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, BATTLE1_FLAG_1), -50, 20),
};

/**
 *=====================================================================
 *                 Custom Data: BOSS_DODONGO Setting
 *=====================================================================
 */

CameraModeValue sSetBossDodongoModeNormalData[] = {
    CAM_FUNCDATA_NORM1(
        0, 150, 300, 0, 12, 5, 70, 70, 40,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_1 | NORMAL1_FLAG_0)),
};

CameraModeValue sSetBossDodongoModeZTargetUnfriendlyData[] = {
    CAM_FUNCDATA_BATT1(-20, 160, 10, 60, -5, 0, 25, 70, 50,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, BATTLE1_FLAG_1), -40, 20),
};

/**
 *=====================================================================
 *                Custom Data: BOSS_BARINADE Setting
 *=====================================================================
 */

CameraModeValue sSetBossBarinadeModeNormalData[] = {
    CAM_FUNCDATA_NORM1(
        -20, 150, 300, -5, 15, 5, 40, 70, 70,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_1 | NORMAL1_FLAG_0)),
};

CameraModeValue sSetBossBarinadeModeZTargetUnfriendlyData[] = {
    CAM_FUNCDATA_BATT1(-30, 125, 10, 10, 0, 0, 50, 60, 50,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, BATTLE1_FLAG_1), -50, 20),
};

/**
 *=====================================================================
 *              Custom Data: BOSS_PHANTOM_GANON Setting
 *=====================================================================
 */

CameraModeValue sSetBossPhantomGanonModeNormalData[] = {
    CAM_FUNCDATA_NORM1(
        10, 150, 250, 0, 15, 15, 40, 60, 100,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_1 | NORMAL1_FLAG_0)),
};

CameraModeValue sSetBossPhantomGanonModeZTargetUnfriendlyData[] = {
    CAM_FUNCDATA_BATT1(-20, 200, 45, 40, 5, -5, 35, 60, 100,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, BATTLE1_FLAG_1), -40, 60),
};

/**
 *=====================================================================
 *                Custom Data: BOSS_VOLVAGIA Setting
 *=====================================================================
 */

CameraModeValue sSetBossVolvagiaModeNormalData[] = {
    CAM_FUNCDATA_NORM1(
        -20, 500, 500, 10, 16, 10, 40, 60, 80,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_1 | NORMAL1_FLAG_0)),
};

CameraModeValue sSetBossVolvagiaModeZTargetUnfriendlyData[] = {
    CAM_FUNCDATA_BATT1(-20, 200, 20, 60, 0, 10, 15, 45, 50,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, BATTLE1_FLAG_1), -40, 20),
};

/**
 *=====================================================================
 *                   Custom Data: BOSS_BONGO Setting
 *=====================================================================
 */

CameraModeValue sSetBossBongoModeNormalData[] = {
    CAM_FUNCDATA_NORM1(-20, 500, 500, 10, 20, 10, 40, 60, 80,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL,
                                           NORMAL1_FLAG_7 | NORMAL1_FLAG_1 | NORMAL1_FLAG_0)),
};

CameraModeValue sSetBossBongoModeZTargetUnfriendlyData[] = {
    CAM_FUNCDATA_BATT1(
        -20, 200, 20, 60, 0, 10, 15, 45, 50,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, BATTLE1_FLAG_7 | BATTLE1_FLAG_1), -40, 20),
};

CameraModeValue sSetBossBongoModeJumpData[] = {
    CAM_FUNCDATA_NORM1(-20, 500, 500, 10, 20, 10, 80, 60, 80,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL,
                                           NORMAL1_FLAG_7 | NORMAL1_FLAG_1 | NORMAL1_FLAG_0)),
};

/**
 *=====================================================================
 *                 Custom Data: BOSS_MORPHA Setting
 *=====================================================================
 */

CameraModeValue sSetBossMorphaModeNormalData[] = {
    CAM_FUNCDATA_NORM1(
        -20, 100, 150, -10, 15, 10, 40, 80, 60,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_1 | NORMAL1_FLAG_0)),
};

CameraModeValue sSetBossMorphaModeZTargetUnfriendlyData[] = {
    CAM_FUNCDATA_BATT1(-20, 200, 10, 80, -10, 10, 25, 70, 40,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, BATTLE1_FLAG_1), -40, 20),
};

/**
 *=====================================================================
 *                  Custom Data: TWINROVA Setting
 *=====================================================================
 */

CameraModeValue sSetBossTwinrovaPlatformModeNormalData[] = {
    CAM_FUNCDATA_NORM1(
        -20, 150, 300, 0, 20, 10, 40, 60, 80,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_1 | NORMAL1_FLAG_0)),
};

CameraModeValue sSetBossTwinrovaModeZTargetUnfriendlyData[] = {
    CAM_FUNCDATA_BATT1(0, 400, 0, 60, -10, 5, 25, 45, 40,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, BATTLE1_FLAG_1), -20, 20),
};

CameraModeValue sSetBossTwinrovaFloorModeNormalData[] = {
    CAM_FUNCDATA_NORM1(
        -10, 150, 200, -10, 12, 10, 40, 60, 50,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_1 | NORMAL1_FLAG_0)),
};

/**
 *=====================================================================
 *                Custom Data: BOSS_GANONDORF Setting
 *=====================================================================
 */

CameraModeValue sSetBossGanondorfModeNormalData[] = {
    CAM_FUNCDATA_NORM1(40, 330, 330, -5, 15, 15, 40, 60, 100,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetBossGanondorfModeChargeData[] = {
    CAM_FUNCDATA_BATT4(-40, 250, 0, 2, 80, 20, CAM_INTERFACE_FIELD(CAM_LETTERBOX_IGNORE, CAM_HUD_VISIBILITY_ALL, 0)),
};

/**
 *=====================================================================
 *                 Custom Data: BOSS_GANON Setting
 *=====================================================================
 */

CameraModeValue sSetBossGanonModeNormalData[] = {
    CAM_FUNCDATA_NORM1(
        -20, 500, 500, 10, 20, 10, 40, 60, 80,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_1 | NORMAL1_FLAG_0)),
};

CameraModeValue sSetBossGanonModeZTargetUnfriendlyData[] = {
    CAM_FUNCDATA_BATT1(-20, 180, 20, 60, 0, 10, 25, 45, 50,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, BATTLE1_FLAG_1), -40, 20),
};

/**
 *=====================================================================
 *                 Custom Data: TOWER_CLIMB Setting
 *=====================================================================
 */

CameraModeValue sSetTowerClimbModeNormalData[] = {
    CAM_FUNCDATA_NORM2(0, 120, 280, 60, 8, 40, 60, 50,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetTowerClimbModeJumpData[] = {
    CAM_FUNCDATA_NORM2(0, 120, 280, 60, 8, 40, 60, 50,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, NORMAL2_FLAG_7)),
};

/**
 *=====================================================================
 *                Custom Data: TOWER_UNUSED Setting
 *=====================================================================
 */

CameraModeValue sSetTowerUnusedModeNormalData[] = {
    CAM_FUNCDATA_NORM2(0, 270, 300, 120, 8, 60, 60, 100,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetTowerUnusedModeJumpData[] = {
    CAM_FUNCDATA_NORM2(0, 270, 300, 120, 6, 60, 60, 100,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

/**
 *=====================================================================
 *                Custom Data: MARKET_BALCONY Setting
 *=====================================================================
 */

CameraModeValue sSetMarketBalconyModeNormalData[] = {
    CAM_FUNCDATA_FIXD1(-40, 100, 60, CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetMarketBalconyModeZTargetFriendlyData[] = {
    CAM_FUNCDATA_FIXD1(-40, 100, 60, CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetMarketBalconyModeTalkData[] = {
    CAM_FUNCDATA_FIXD1(-40, 100, 60,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_LARGE, CAM_HUD_VISIBILITY_A_HEARTS_MAGIC_FORCE, 0)),
};

/**
 *=====================================================================
 *                 Custom Data: CHU_BOWLING Setting
 *=====================================================================
 */

CameraModeValue sSetChuBowlingModeNormalData[] = {
    CAM_FUNCDATA_FIXD1(-40, 25, 60, CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

/**
 *=====================================================================
 *               Custom Data: PIVOT_CRAWLSPACE Setting
 *=====================================================================
 */

CameraModeValue sSetPivotCrawlspaceModeNormalData[] = {
    CAM_FUNCDATA_FIXD2(-40, 50, 80, 60, CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, FIXED2_FLAG_0)),
};

/**
 *=====================================================================
 *              Custom Data: PIVOT_SHOP_BROWSING Setting
 *=====================================================================
 */

CameraModeValue sSetPivotShopBrowsingModeNormalData[] = {
    CAM_FUNCDATA_DATA4(-40, 60, CAM_INTERFACE_FIELD(CAM_LETTERBOX_LARGE, CAM_HUD_VISIBILITY_IGNORE, 0)),
};

/**
 *=====================================================================
 *          Custom Data: PIVOT_IN_FRONT and PIVOT_FROM_SIDE
 *=====================================================================
 */

CameraModeValue sSetPivotInFrontAndFromSideModeNormalData[] = {
    CAM_FUNCDATA_FIXD4(-40, 50, 80, 60, CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, FIXED4_FLAG_2)),
};

/**
 *=====================================================================
 *                 Custom Data: No data, all flags off
 *=====================================================================
 */

CameraModeValue sDataOnlyNullFlags[] = {
    CAM_FUNCDATA_INTERFACE_FIELD(CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

/**
 *=====================================================================
 *                 Custom Data: PREREND_FIXED Setting
 *=====================================================================
 */

CameraModeValue sSetPreRendFixedModeZTargetFriendlyData[] = {
    CAM_FUNCDATA_INTERFACE_FIELD(CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, 0)),
};

/**
 *=====================================================================
 *                Custom Data: PREREND_PIVOT Setting
 *=====================================================================
 */

CameraModeValue sSetPreRendPivotModeNormalData[] = {
    CAM_FUNCDATA_UNIQ7(60, CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetPreRendPivotModeZTargetFriendlyData[] = {
    CAM_FUNCDATA_UNIQ7(60, CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetPreRendPivotModeTalkData[] = {
    CAM_FUNCDATA_KEEP0(30, 0, 4, CAM_INTERFACE_FIELD(CAM_LETTERBOX_LARGE, CAM_HUD_VISIBILITY_A_HEARTS_MAGIC_FORCE, 0)),
};

/**
 *=====================================================================
 *                   Custom Data: DOOR0 Setting
 *=====================================================================
 */

CameraModeValue sSetDoor0ModeNormalData[] = {
    CAM_FUNCDATA_UNIQ3(-40, 60, CAM_INTERFACE_FIELD(CAM_LETTERBOX_LARGE, CAM_HUD_VISIBILITY_NOTHING_ALT, 0)),
};

/**
 *=====================================================================
 *                   Custom Data: DOORC Setting
 *=====================================================================
 */

CameraModeValue sSetDoorCModeNormalData[] = {
    CAM_FUNCDATA_SPEC9(-5, 60,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_LARGE, CAM_HUD_VISIBILITY_NOTHING_ALT, SPECIAL9_FLAG_1)),
};

CameraModeValue sSetDoorCModeZParallelData[] = {
    CAM_FUNCDATA_SPEC9(
        -5, 60,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_LARGE, CAM_HUD_VISIBILITY_NOTHING_ALT, SPECIAL9_FLAG_3 | SPECIAL9_FLAG_1)),
};

/**
 *=====================================================================
 *                   Custom Data: CRAWLSPACE Setting
 *=====================================================================
 */

// Camera_Subj4 only reads one setting which is used for flags
CameraModeValue sSetCrawlspaceModeNormalData[] = {
    CAM_FUNCDATA_SUBJ4(CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0), 2, 30, 10, 45,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_LARGE, CAM_HUD_VISIBILITY_NOTHING_ALT, 0)),
};

/**
 *=====================================================================
 *                   Custom Data: START1 Setting
 *=====================================================================
 */

CameraModeValue sSetStart1ModeNormalData[] = {
    CAM_FUNCDATA_INTERFACE_FIELD(CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, UNIQUE0_FLAG_0)),
};

/**
 *=====================================================================
 *                   Custom Data: FREE0 Setting
 *=====================================================================
 */

CameraModeValue sSetFree0ModeNormalData[] = {
    CAM_FUNCDATA_INTERFACE_FIELD(CAM_INTERFACE_FIELD(CAM_LETTERBOX_IGNORE, CAM_HUD_VISIBILITY_IGNORE, 0)),
};

/**
 *=====================================================================
 *                   Custom Data: FREE2 Setting
 *=====================================================================
 */

CameraModeValue sSetFree2ModeNormalData[] = {
    CAM_FUNCDATA_INTERFACE_FIELD(CAM_INTERFACE_FIELD(CAM_LETTERBOX_IGNORE, CAM_HUD_VISIBILITY_IGNORE, UNIQUE6_FLAG_0)),
};

/**
 *=====================================================================
 *                 Custom Data: PIVOT_CORNER Setting
 *=====================================================================
 */

CameraModeValue sSetPivotCornerModeNormalData[] = {
    CAM_FUNCDATA_FIXD2(-40, 100, 80, 60, CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

/**
 *=====================================================================
 *              Custom Data: PIVOT_WATER_SURFACE Setting
 *=====================================================================
 */

CameraModeValue sSetPivotWaterSurfaceModeNormalData[] = {
    CAM_FUNCDATA_UNIQ2(-40, 60, 60, CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, UNIQUE2_FLAG_1)),
};

CameraModeValue sSetPivotWaterSurfaceModeZParallelData[] = {
    CAM_FUNCDATA_UNIQ2(-30, 45, 100, CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, UNIQUE2_FLAG_0)),
};

/**
 *=====================================================================
 *               Custom Data: Various cutscene settings
 *=====================================================================
 */

CameraModeValue sDataOnlyInterfaceField[] = {
    CAM_FUNCDATA_INTERFACE_FIELD(CAM_INTERFACE_FIELD(CAM_LETTERBOX_LARGE, CAM_HUD_VISIBILITY_NOTHING_ALT, 0)),
};

/**
 *=====================================================================
 *                Custom Data: FOREST_BIRDS_EYE Setting
 *=====================================================================
 */

CameraModeValue sSetForestBirdsEyeModeNormalData[] = {
    CAM_FUNCDATA_PARA1(
        -50, 450, 40, 180, 5, 5, 70, 30,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, PARALLEL1_FLAG_3 | PARALLEL1_FLAG_2), -50, 20),
};

CameraModeValue sSetForestBirdsEyeModeTalkData[] = {
    CAM_FUNCDATA_INTERFACE_FIELD(
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_LARGE, CAM_HUD_VISIBILITY_A_HEARTS_MAGIC_FORCE, PARALLEL3_FLAG_0)),
};

/**
 *=====================================================================
 *                 Custom Data: SLOW_CHEST_CS Setting
 *=====================================================================
 */

// Also set to but unused by function Demo4
CameraModeValue sSetSlowChestCsModeNormalData[] = {
    CAM_FUNCDATA_DEMO3(60, 30, CAM_INTERFACE_FIELD(CAM_LETTERBOX_LARGE, CAM_HUD_VISIBILITY_NOTHING_ALT, 0)),
};

/**
 *=====================================================================
 *                     Custom Data: CS_3 Setting
 *=====================================================================
 */

CameraModeValue sSetCs3ModeNormalData[] = {
    CAM_FUNCDATA_INTERFACE_FIELD(
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_LARGE, CAM_HUD_VISIBILITY_NOTHING_ALT, DEMO9_FLAG_4 | DEMO9_FLAG_1)),
};

/**
 *=====================================================================
 *                 Custom Data: BEAN_GENERIC Setting
 *=====================================================================
 */

CameraModeValue sSetBeanGenericModeNormalData[] = {
    CAM_FUNCDATA_NORM1(-50, 300, 300, 50, 20, 10, 50, 70, 40,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_1)),
};

CameraModeValue sSetBeanGenericModeZParallelData[] = {
    CAM_FUNCDATA_PARA1(
        -50, 300, 10, 0, 5, 5, 45, 50,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, PARALLEL1_FLAG_3 | PARALLEL1_FLAG_1), -40,
        20),
};

CameraModeValue sSetBeanGenericModeJumpData[] = {
    CAM_FUNCDATA_JUMP1(-50, 300, 300, 12, 35, 60, 40,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetBeanGenericModeLedgeHangData[] = {
    CAM_FUNCDATA_UNIQ1(-80, 300, 300, 60, 70, 30, CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetBeanGenericModeZLedgeHangData[] = {
    CAM_FUNCDATA_UNIQ1(-120, 300, 300, 70, 50, 30,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetBeanGenericModeStillData[] = {
    CAM_FUNCDATA_NORM1(-20, 300, 350, 50, 100, 10, 100, 70, 30,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_IGNORE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_1)),
};

/**
 *=====================================================================
 *                Custom Data: BEAN_LOST_WOODS Setting
 *=====================================================================
 */

CameraModeValue sSetBeanLostWoodsModeNormalData[] = {
    CAM_FUNCDATA_NORM1(-50, 200, 200, 20, 16, 10, 50, 60, 50,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_1)),
};

CameraModeValue sSetBeanLostWoodsModeZParallelData[] = {
    CAM_FUNCDATA_PARA1(
        -50, 200, 40, 0, 5, 5, 45, 50,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, PARALLEL1_FLAG_3 | PARALLEL1_FLAG_1), -40,
        20),
};

CameraModeValue sSetBeanLostWoodsModeJumpData[] = {
    CAM_FUNCDATA_JUMP1(-50, 150, 250, 12, 35, 60, 40,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetBeanLostWoodsModeLedgeHangData[] = {
    CAM_FUNCDATA_UNIQ1(-80, 200, 200, 40, 60, 30, CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetBeanLostWoodsModeZLedgeHangData[] = {
    CAM_FUNCDATA_UNIQ1(-120, 200, 200, 60, 50, 30,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetBeanLostWoodsModeStillData[] = {
    CAM_FUNCDATA_NORM1(-20, 200, 250, 20, 100, 10, 100, 60, 30,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_IGNORE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_1)),
};

/**
 *=====================================================================
 *                 Custom Data: SCENE_UNUSED Setting
 *=====================================================================
 */

CameraModeValue sSetSceneUnusedModeNormalData[] = {
    CAM_FUNCDATA_SPEC9(
        -30, 60,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_NOTHING, SPECIAL9_FLAG_3 | SPECIAL9_FLAG_1)),
};

/**
 *=====================================================================
 *                Custom Data: SCENE_TRANSITION Setting
 *=====================================================================
 */

CameraModeValue sSetSceneTransitionModeNormalData[] = {
    CAM_FUNCDATA_UNIQ2(-20, 150, 60,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_NOTHING_ALT, UNIQUE2_FLAG_4)),
};

/**
 *=====================================================================
 *                   Custom Data: BIG_OCTO Setting
 *=====================================================================
 */

CameraModeValue sSetBigOctoModeNormalData[] = {
    CAM_FUNCDATA_NORM1(
        0, 400, 500, 35, 14, 5, 20, 60, 40,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_4 | NORMAL1_FLAG_1)),
};

CameraModeValue sSetBigOctoModeZTargetUnfriendlyData[] = {
    CAM_FUNCDATA_BATT1(-20, 250, 5, 10, 30, 20, 25, 45, 60,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, BATTLE1_FLAG_1), -40, 25),
};

CameraModeValue sSetBigOctoModeStillData[] = {
    CAM_FUNCDATA_NORM1(
        0, 300, 500, 60, 8, 5, 60, 60, 30,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_4 | NORMAL1_FLAG_1)),
};

/**
 *=====================================================================
 *               Custom Data: MEADOW_BIRDS_EYE Setting
 *=====================================================================
 */

CameraModeValue sSetMeadowBirdsEyeModeNormalData[] = {
    CAM_FUNCDATA_NORM1(
        -20, 500, 500, 80, 20, 10, 70, 70, 80,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_4 | NORMAL1_FLAG_1)),
};

CameraModeValue sSetMeadowBirdsEyeModeZParallelData[] = {
    CAM_FUNCDATA_PARA1(-20, 500, 80, 0, 5, 5, 70, 80,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL,
                                           PARALLEL1_FLAG_4 | PARALLEL1_FLAG_3 | PARALLEL1_FLAG_1),
                       -40, 40),
};

CameraModeValue sSetMeadowBirdsEyeModeZTargetUnfriendlyData[] = {
    CAM_FUNCDATA_PARA1(-20, 500, 80, 0, 5, 5, 60, 80,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL,
                                           PARALLEL1_FLAG_4 | PARALLEL1_FLAG_3 | PARALLEL1_FLAG_1),
                       -40, 40),
};

CameraModeValue sSetMeadowBirdsEyeModeWallClimbData[] = {
    CAM_FUNCDATA_NORM1(
        -20, 500, 500, 80, 20, 10, 80, 60, 20,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_4 | NORMAL1_FLAG_1)),
};

/**
 *=====================================================================
 *                 Custom Data: MEADOW_UNUSED Setting
 *=====================================================================
 */

CameraModeValue sSetMeadowUnusedModeNormalData[] = {
    CAM_FUNCDATA_NORM1(
        -20, 750, 750, 80, 20, 10, 70, 70, 80,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_4 | NORMAL1_FLAG_1)),
};

CameraModeValue sSetMeadowUnusedModeZParallelData[] = {
    CAM_FUNCDATA_PARA1(-20, 750, 80, 0, 5, 5, 70, 80,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL,
                                           PARALLEL1_FLAG_4 | PARALLEL1_FLAG_3 | PARALLEL1_FLAG_1),
                       -40, 40),
};

CameraModeValue sSetMeadowUnusedModeZTargetUnfriendlyData[] = {
    CAM_FUNCDATA_PARA1(
        -20, 750, 80, 0, 5, 5, 70, 80,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, PARALLEL1_FLAG_3 | PARALLEL1_FLAG_1), -40,
        40),
};

CameraModeValue sSetMeadowUnusedModeWallClimbData[] = {
    CAM_FUNCDATA_NORM1(
        -20, 750, 750, 80, 20, 10, 80, 70, 20,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_4 | NORMAL1_FLAG_1)),
};

/**
 *=====================================================================
 *                Custom Data: FIRE_BIRDS_EYE Setting
 *=====================================================================
 */

CameraModeValue sSetFireBirdsEyeModeNormalData[] = {
    CAM_FUNCDATA_NORM1(-20, 500, 500, 80, 20, 10, 70, 70, 80,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_1)),
};

CameraModeValue sSetFireBirdsEyeModeZParallelData[] = {
    CAM_FUNCDATA_PARA1(
        -20, 500, 80, 0, 5, 5, 70, 80,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, PARALLEL1_FLAG_3 | PARALLEL1_FLAG_1), -40,
        40),
};

CameraModeValue sSetFireBirdsEyeModeZTargetUnfriendlyData[] = {
    CAM_FUNCDATA_PARA1(
        -20, 500, 80, 0, 5, 5, 60, 80,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, PARALLEL1_FLAG_3 | PARALLEL1_FLAG_1), -40,
        40),
};

CameraModeValue sSetFireBirdsEyeModeWallClimbData[] = {
    CAM_FUNCDATA_NORM1(-20, 500, 500, 80, 20, 10, 80, 60, 20,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_1)),
};

/**
 *=====================================================================
 *                Custom Data: TURN_AROUND Setting
 *=====================================================================
 */

CameraModeValue sSetTurnAroundModeNormalData[] = {
    CAM_FUNCDATA_KEEP4(
        -30, 120, -10, 170, 0, 60,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_A_HEARTS_MAGIC_FORCE, KEEPON4_FLAG_1), 25, 6),
};

/**
 *=====================================================================
 *                Custom Data: PIVOT_VERTICAL Setting
 *=====================================================================
 */

CameraModeValue sSetPivotVerticalModeNormalData[] = {
    CAM_FUNCDATA_SPEC0(20, CAM_INTERFACE_FIELD(CAM_LETTERBOX_LARGE, CAM_HUD_VISIBILITY_NOTHING_ALT, 0)),
};

/**
 *=====================================================================
 *                 Custom Data: NORMAL2/4 Setting
 *=====================================================================
 */

CameraModeValue sSetNormal2and4ModeNormalData[] = {
    CAM_FUNCDATA_NORM1(-20, 200, 300, 10, 12, 10, 35, 60, 60,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_1)),
};

/**
 *=====================================================================
 *                   Custom Data: FISHING Setting
 *=====================================================================
 */

CameraModeValue sSetFishingModeNormalData[] = {
    CAM_FUNCDATA_NORM1(0, 200, 300, 20, 12, 10, 35, 55, 60,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_IGNORE, NORMAL1_FLAG_1)),
};

CameraModeValue sSetFishingModeZParallelData[] = {
    CAM_FUNCDATA_PARA1(
        -20, 250, 0, 0, 5, 5, 45, 50,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_IGNORE, PARALLEL1_FLAG_3 | PARALLEL1_FLAG_1), -40,
        20),
};

CameraModeValue sSetFishingModeZTargetFriendlyData[] = {
    CAM_FUNCDATA_BATT1(-20, 250, 0, 80, 0, 0, 25, 55, 80,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_IGNORE, BATTLE1_FLAG_1), -40, 25),
};

CameraModeValue sSetFishingModeTalkData[] = {
    CAM_FUNCDATA_KEEP3(-30, 70, 200, 40, 10, 0, 5, 70, 45, 50, 10,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_LARGE, CAM_HUD_VISIBILITY_IGNORE, KEEPON3_FLAG_5)),
};

CameraModeValue sSetFishingModeFirstPersonData[] = {
    CAM_FUNCDATA_SUBJ3(0, 5, 50, 10, 0, 0, 0, 45,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_IGNORE, 0)),
};

CameraModeValue sSetFishingModeJumpData[] = {
    CAM_FUNCDATA_JUMP1(-20, 200, 300, 12, 35, 60, 40,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_IGNORE, 0)),
};

CameraModeValue sSetFishingModeFreeFallData[] = {
    CAM_FUNCDATA_JUMP1(-20, 200, 300, 15, 80, 60, 20,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_IGNORE, 0)),
};

CameraModeValue sSetFishingModeLedgeHangData[] = {
    CAM_FUNCDATA_UNIQ1(-80, 200, 300, 40, 60, 10,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_IGNORE, 0)),
};

CameraModeValue sSetFishingModeZLedgeHangData[] = {
    CAM_FUNCDATA_UNIQ1(-120, 300, 300, 70, 45, 10,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_IGNORE, 0)),
};

/**
 *=====================================================================
 *                   Custom Data: CS_C Setting
 *=====================================================================
 */

CameraModeValue sSetCsCModeNormalData[] = {
    CAM_FUNCDATA_INTERFACE_FIELD(CAM_INTERFACE_FIELD(CAM_LETTERBOX_LARGE, CAM_HUD_VISIBILITY_IGNORE, 0)),
};

/**
 *=====================================================================
 *                   Custom Data: JABU_TENTACLE Setting
 *=====================================================================
 */

CameraModeValue sSetJabuTentacleModeNormalData[] = {
    CAM_FUNCDATA_NORM1_ALT(
        30, 200, 300, -20, 15, 5, 50, 70, 70,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_1 | NORMAL1_FLAG_0)),
};

CameraModeValue sSetJabuTentacleModeZTargetUnfriendlyData[] = {
    CAM_FUNCDATA_BATT1(-30, 160, 10, 10, 0, 0, 70, 60, 40,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, BATTLE1_FLAG_1), -50, 20),
};

/**
 *=====================================================================
 *                   Custom Data: DUNGEON2 Setting
 *=====================================================================
 */

CameraModeValue sSetDungeon2ModeNormalData[] = {
    CAM_FUNCDATA_NORM1(
        -20, 350, 350, 20, 15, 5, 30, 60, 60,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_1 | NORMAL1_FLAG_0)),
};

CameraModeValue sSetDungeon2ModeZParallelData[] = {
    CAM_FUNCDATA_PARA1(
        -20, 200, 0, 0, 5, 5, 45, 50,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, PARALLEL1_FLAG_3 | PARALLEL1_FLAG_1), -40,
        20),
};

CameraModeValue sSetDungeon2ModeZTargetUnfriendlyData[] = {
    CAM_FUNCDATA_BATT1(-20, 180, 10, 80, -10, 10, 25, 45, 80,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, BATTLE1_FLAG_1), -40, 25),
};

CameraModeValue sSetDungeon2ModeJumpData[] = {
    CAM_FUNCDATA_JUMP1(-20, 350, 350, 10, 50, 60, 40,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetDungeon2ModeFreeFallData[] = {
    CAM_FUNCDATA_JUMP1(-20, 350, 350, 15, 80, 60, 20,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetDungeon2ModeWallClimbData[] = {
    CAM_FUNCDATA_JUMP2(-40, 350, 350, 20, 5, 5, 60, 40,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetDungeon2ModeZWallClimbData[] = {
    CAM_FUNCDATA_JUMP2(-40, 350, 350, 20, 999, 5, 60, 40,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, JUMP2_FLAG_2 | JUMP2_FLAG_1)),
};

CameraModeValue sSetDungeon2ModeLedgeHangData[] = {
    CAM_FUNCDATA_UNIQ1(-50, 350, 350, 40, 60, 10, CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetDungeon2ModeZLedgeHangData[] = {
    CAM_FUNCDATA_UNIQ1(-100, 350, 350, 70, 45, 10,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, 0)),
};

CameraModeValue sSetDungeon2ModeStillData[] = {
    CAM_FUNCDATA_NORM1(
        -10, 350, 350, 20, 100, 5, 100, 60, 5,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_IGNORE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_1 | NORMAL1_FLAG_0)),
};

CameraModeValue sSetDungeon2ModePushPullData[] = {
    CAM_FUNCDATA_PARA1(0, 280, 25, 0, 5, 5, 70, 30,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL,
                                           PARALLEL1_FLAG_6 | PARALLEL1_FLAG_5 | PARALLEL1_FLAG_3 | PARALLEL1_FLAG_1),
                       -20, 30),
};

/**
 *=====================================================================
 *                 Custom Data: DIRECTED_YAW Setting
 *=====================================================================
 */

CameraModeValue sSetDirectedYawModeNormalData[] = {
    CAM_FUNCDATA_NORM1(-10, 280, 320, -8, 20, 10, 80, 60, 80,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, NORMAL1_FLAG_1)),
};

CameraModeValue sSetDirectedYawModeZTargetFriendlyData[] = {
    CAM_FUNCDATA_KEEP1(-20, 180, 200, 35, 45, 0, -5, 20, 50, 50,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_MEDIUM, CAM_HUD_VISIBILITY_ALL, KEEPON1_FLAG_0), -50, 30),
};

CameraModeValue sSetDirectedYawModeTalkData[] = {
    CAM_FUNCDATA_KEEP3(
        -80, 200, 250, 30, 10, -8, -8, 30, 50, 50, 10,
        CAM_INTERFACE_FIELD(CAM_LETTERBOX_LARGE, CAM_HUD_VISIBILITY_A_HEARTS_MAGIC_FORCE, KEEPON3_FLAG_5)),
};

/**
 *=====================================================================
 *                   Custom Data: NORMAL4 Setting
 *=====================================================================
 */

CameraModeValue sSetNormal4ModeTalkData[] = {
    CAM_FUNCDATA_KEEP3(-30, 70, 200, 40, 10, 0, 5, 70, 45, 50, 10,
                       CAM_INTERFACE_FIELD(CAM_LETTERBOX_LARGE, CAM_HUD_VISIBILITY_A_HEARTS_MAGIC_FORCE,
                                           KEEPON3_FLAG_7 | KEEPON3_FLAG_5)),
};

/**
 * =====================================================================
 *    CAMERA SETTINGS: USAGE OF FUNCTIONS AND DATA FOR SPECIFIC MODES
 * =====================================================================
 */

#define CAM_SETTING_MODE_ENTRY(func, data) \
    { func, ARRAY_COUNT(data), data }

CameraMode sCamSetNormal0Modes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetNormal0ModeNormalData),            // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModeZParallelData),         // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeZTargetFriendlyData),   // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetNormal0ModeTalkData),              // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1, sSetNormal0ModeZTargetUnfriendlyData), // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeWallClimbData),         // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeFirstPersonData),       // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimAdultData),          // CAM_MODE_AIM_ADULT
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeZAimData),              // CAM_MODE_Z_AIM
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC5, sSetNormal0ModeHookshotFlyData),       // CAM_MODE_HOOKSHOT_FLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimBoomerangData),      // CAM_MODE_AIM_BOOMERANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimChildData),          // CAM_MODE_AIM_CHILD
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeZWallClimbData),        // CAM_MODE_Z_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),              // CAM_MODE_JUMP
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeLedgeHangData),         // CAM_MODE_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeZLedgeHangData),        // CAM_MODE_Z_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeFreeFallData),          // CAM_MODE_FREE_FALL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT4, sSetNormal0ModeChargeData),            // CAM_MODE_CHARGE
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetNormal0ModeStillData),             // CAM_MODE_STILL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModePushPullData),          // CAM_MODE_PUSH_PULL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeFollowBoomerangData),   // CAM_MODE_FOLLOW_BOOMERANG
};

CameraMode sCamSetNormal1Modes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetNormal1ModeNormalData),            // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal1ModeZParallelData),         // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal1ModeZTargetFriendlyData),   // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetNormal0ModeTalkData),              // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1, sSetNormal1ModeZTargetUnfriendlyData), // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal1ModeWallClimbData),         // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeFirstPersonData),       // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimAdultData),          // CAM_MODE_AIM_ADULT
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeZAimData),              // CAM_MODE_Z_AIM
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC5, sSetNormal1ModeHookshotFlyData),       // CAM_MODE_HOOKSHOT_FLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimBoomerangData),      // CAM_MODE_AIM_BOOMERANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimChildData),          // CAM_MODE_AIM_CHILD
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal1ModeZWallClimbData),        // CAM_MODE_Z_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal1ModeJumpData),              // CAM_MODE_JUMP
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal1ModeLedgeHangData),         // CAM_MODE_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal1ModeZLedgeHangData),        // CAM_MODE_Z_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal1ModeFreeFallData),          // CAM_MODE_FREE_FALL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT4, sSetNormal1ModeChargeData),            // CAM_MODE_CHARGE
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetNormal1ModeStillData),             // CAM_MODE_STILL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModePushPullData),          // CAM_MODE_PUSH_PULL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeFollowBoomerangData),   // CAM_MODE_FOLLOW_BOOMERANG
};

CameraMode sCamSetDungeon0Modes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetDungeon0ModeNormalData),            // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetDungeon0ModeZParallelData),         // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetDungeon0ModeZTargetFriendlyData),   // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetNormal0ModeTalkData),               // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1, sSetDungeon0ModeZTargetUnfriendlyData), // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetDungeon0ModeWallClimbData),         // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeFirstPersonData),        // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimAdultData),           // CAM_MODE_AIM_ADULT
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeZAimData),               // CAM_MODE_Z_AIM
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC5, sSetNormal1ModeHookshotFlyData),        // CAM_MODE_HOOKSHOT_FLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimBoomerangData),       // CAM_MODE_AIM_BOOMERANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimChildData),           // CAM_MODE_AIM_CHILD
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetDungeon0ModeZWallClimbData),        // CAM_MODE_Z_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetDungeon0ModeJumpData),              // CAM_MODE_JUMP
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetDungeon0ModeLedgeHangData),         // CAM_MODE_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetDungeon0ModeZLedgeHangData),        // CAM_MODE_Z_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetDungeon0ModeFreeFallData),          // CAM_MODE_FREE_FALL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT4, sSetDungeon0ModeChargeData),            // CAM_MODE_CHARGE
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetDungeon0ModeStillData),             // CAM_MODE_STILL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModePushPullData),           // CAM_MODE_PUSH_PULL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeFollowBoomerangData),    // CAM_MODE_FOLLOW_BOOMERANG
};

CameraMode sCamSetDungeon1Modes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetDungeon1ModeNormalData),            // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetDungeon0ModeZParallelData),         // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal1ModeZTargetFriendlyData),    // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetDungeon1ModeTalkData),              // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1, sSetDungeon0ModeZTargetUnfriendlyData), // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetDungeon1ModeWallClimbData),         // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeFirstPersonData),        // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimAdultData),           // CAM_MODE_AIM_ADULT
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeZAimData),               // CAM_MODE_Z_AIM
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC5, sSetNormal1ModeHookshotFlyData),        // CAM_MODE_HOOKSHOT_FLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimBoomerangData),       // CAM_MODE_AIM_BOOMERANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimChildData),           // CAM_MODE_AIM_CHILD
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetDungeon1ModeZWallClimbData),        // CAM_MODE_Z_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetDungeon1ModeJumpData),              // CAM_MODE_JUMP
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetDungeon1ModeLedgeHangData),         // CAM_MODE_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetDungeon1ModeZLedgeHangData),        // CAM_MODE_Z_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetDungeon1ModeFreeFallData),          // CAM_MODE_FREE_FALL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT4, sSetDungeon1ModeChargeData),            // CAM_MODE_CHARGE
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetDungeon1ModeStillData),             // CAM_MODE_STILL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetDungeon1ModePushPullData),          // CAM_MODE_PUSH_PULL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeFollowBoomerangData),    // CAM_MODE_FOLLOW_BOOMERANG
};

CameraMode sCamSetNormal3Modes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP3, sSetNormal3ModeNormalData),            // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal3ModeZParallelData),         // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeZTargetFriendlyData),   // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetNormal3ModeTalkData),              // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1, sSetNormal0ModeZTargetUnfriendlyData), // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeWallClimbData),         // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeFirstPersonData),       // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimAdultData),          // CAM_MODE_AIM_ADULT
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeZAimData),              // CAM_MODE_Z_AIM
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC5, sSetNormal0ModeHookshotFlyData),       // CAM_MODE_HOOKSHOT_FLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP3, sSetNormal3ModeAimBoomerangData),      // CAM_MODE_AIM_BOOMERANG
    { CAM_FUNC_NONE, 0, NULL },                                                   // CAM_MODE_AIM_CHILD
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeZWallClimbData),        // CAM_MODE_Z_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),              // CAM_MODE_JUMP
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeLedgeHangData),         // CAM_MODE_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeZLedgeHangData),        // CAM_MODE_Z_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),              // CAM_MODE_FREE_FALL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT4, sSetNormal0ModeChargeData),            // CAM_MODE_CHARGE
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetNormal0ModeStillData),             // CAM_MODE_STILL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModePushPullData),          // CAM_MODE_PUSH_PULL
};

CameraMode sCamSetHorseModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM3, sSetHorseModeNormalData),          // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM3, sSetHorseModeZParallelData),       // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetHorseModeZTargetFriendlyData), // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetHorseModeTalkData),            // CAM_MODE_TALK
    { CAM_FUNC_NONE, 0, NULL },                                               // CAM_MODE_Z_TARGET_UNFRIENDLY
    { CAM_FUNC_NONE, 0, NULL },                                               // CAM_MODE_WALL_CLIMB
    { CAM_FUNC_NONE, 0, NULL },                                               // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetHorseModeAimAdultData),        // CAM_MODE_AIM_ADULT
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeZAimData),          // CAM_MODE_Z_AIM
};

CameraMode sCamSetBossGohmaModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetBossGohmaModeNormalData),            // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModeZParallelData),           // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeZTargetFriendlyData),     // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetNormal0ModeTalkData),                // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1, sSetBossGohmaModeZTargetUnfriendlyData), // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeWallClimbData),           // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeFirstPersonData),         // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimAdultData),            // CAM_MODE_AIM_ADULT
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeZAimData),                // CAM_MODE_Z_AIM
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC5, sSetNormal0ModeHookshotFlyData),         // CAM_MODE_HOOKSHOT_FLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimBoomerangData),        // CAM_MODE_AIM_BOOMERANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimChildData),            // CAM_MODE_AIM_CHILD
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeZWallClimbData),          // CAM_MODE_Z_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),                // CAM_MODE_JUMP
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeLedgeHangData),           // CAM_MODE_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeZLedgeHangData),          // CAM_MODE_Z_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),                // CAM_MODE_FREE_FALL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT4, sSetDungeon0ModeChargeData),             // CAM_MODE_CHARGE
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetNormal0ModeStillData),               // CAM_MODE_STILL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModePushPullData),            // CAM_MODE_PUSH_PULL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeFollowBoomerangData),     // CAM_MODE_FOLLOW_BOOMERANG
};

CameraMode sCamSetBossDodongoModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetBossDodongoModeNormalData),            // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModeZParallelData),             // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeZTargetFriendlyData),       // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetNormal0ModeTalkData),                  // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1, sSetBossDodongoModeZTargetUnfriendlyData), // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeWallClimbData),             // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeFirstPersonData),           // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimAdultData),              // CAM_MODE_AIM_ADULT
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeZAimData),                  // CAM_MODE_Z_AIM
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC5, sSetNormal0ModeHookshotFlyData),           // CAM_MODE_HOOKSHOT_FLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimBoomerangData),          // CAM_MODE_AIM_BOOMERANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimChildData),              // CAM_MODE_AIM_CHILD
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeZWallClimbData),            // CAM_MODE_Z_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),                  // CAM_MODE_JUMP
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeLedgeHangData),             // CAM_MODE_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeZLedgeHangData),            // CAM_MODE_Z_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),                  // CAM_MODE_FREE_FALL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT4, sSetNormal0ModeChargeData),                // CAM_MODE_CHARGE
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetNormal0ModeStillData),                 // CAM_MODE_STILL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModePushPullData),              // CAM_MODE_PUSH_PULL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeFollowBoomerangData),       // CAM_MODE_FOLLOW_BOOMERANG
};

CameraMode sCamSetBossBarinadeModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetBossBarinadeModeNormalData),            // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModeZParallelData),              // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeZTargetFriendlyData),        // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetNormal0ModeTalkData),                   // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1, sSetBossBarinadeModeZTargetUnfriendlyData), // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeWallClimbData),              // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeFirstPersonData),            // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimAdultData),               // CAM_MODE_AIM_ADULT
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeZAimData),                   // CAM_MODE_Z_AIM
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC5, sSetNormal0ModeHookshotFlyData),            // CAM_MODE_HOOKSHOT_FLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimBoomerangData),           // CAM_MODE_AIM_BOOMERANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimChildData),               // CAM_MODE_AIM_CHILD
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeZWallClimbData),             // CAM_MODE_Z_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),                   // CAM_MODE_JUMP
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeLedgeHangData),              // CAM_MODE_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeZLedgeHangData),             // CAM_MODE_Z_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),                   // CAM_MODE_FREE_FALL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT4, sSetNormal0ModeChargeData),                 // CAM_MODE_CHARGE
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetNormal0ModeStillData),                  // CAM_MODE_STILL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModePushPullData),               // CAM_MODE_PUSH_PULL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeFollowBoomerangData),        // CAM_MODE_FOLLOW_BOOMERANG
};

CameraMode sCamSetBossPhantomGanonModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetBossPhantomGanonModeNormalData), // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModeZParallelData),       // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeZTargetFriendlyData), // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetNormal0ModeTalkData),            // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1,
                           sSetBossPhantomGanonModeZTargetUnfriendlyData),      // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeWallClimbData),       // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeFirstPersonData),     // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimAdultData),        // CAM_MODE_AIM_ADULT
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeZAimData),            // CAM_MODE_Z_AIM
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC5, sSetNormal0ModeHookshotFlyData),     // CAM_MODE_HOOKSHOT_FLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimBoomerangData),    // CAM_MODE_AIM_BOOMERANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimChildData),        // CAM_MODE_AIM_CHILD
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeZWallClimbData),      // CAM_MODE_Z_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),            // CAM_MODE_JUMP
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeLedgeHangData),       // CAM_MODE_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeZLedgeHangData),      // CAM_MODE_Z_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),            // CAM_MODE_FREE_FALL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT4, sSetNormal0ModeChargeData),          // CAM_MODE_CHARGE
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetNormal0ModeStillData),           // CAM_MODE_STILL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModePushPullData),        // CAM_MODE_PUSH_PULL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeFollowBoomerangData), // CAM_MODE_FOLLOW_BOOMERANG
};

CameraMode sCamSetBossVolvagiaModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetBossVolvagiaModeNormalData),            // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModeZParallelData),              // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeZTargetFriendlyData),        // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetNormal0ModeTalkData),                   // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1, sSetBossVolvagiaModeZTargetUnfriendlyData), // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeWallClimbData),              // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeFirstPersonData),            // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimAdultData),               // CAM_MODE_AIM_ADULT
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeZAimData),                   // CAM_MODE_Z_AIM
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC5, sSetNormal0ModeHookshotFlyData),            // CAM_MODE_HOOKSHOT_FLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimBoomerangData),           // CAM_MODE_AIM_BOOMERANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimChildData),               // CAM_MODE_AIM_CHILD
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeZWallClimbData),             // CAM_MODE_Z_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),                   // CAM_MODE_JUMP
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeLedgeHangData),              // CAM_MODE_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeZLedgeHangData),             // CAM_MODE_Z_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),                   // CAM_MODE_FREE_FALL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT4, sSetNormal0ModeChargeData),                 // CAM_MODE_CHARGE
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetNormal0ModeStillData),                  // CAM_MODE_STILL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModePushPullData),               // CAM_MODE_PUSH_PULL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeFollowBoomerangData),        // CAM_MODE_FOLLOW_BOOMERANG
};

CameraMode sCamSetBossBongoModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetBossBongoModeNormalData),            // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModeZParallelData),           // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeZTargetFriendlyData),     // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetNormal0ModeTalkData),                // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1, sSetBossBongoModeZTargetUnfriendlyData), // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeWallClimbData),           // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeFirstPersonData),         // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimAdultData),            // CAM_MODE_AIM_ADULT
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeZAimData),                // CAM_MODE_Z_AIM
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC5, sSetNormal0ModeHookshotFlyData),         // CAM_MODE_HOOKSHOT_FLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimBoomerangData),        // CAM_MODE_AIM_BOOMERANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimChildData),            // CAM_MODE_AIM_CHILD
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeZWallClimbData),          // CAM_MODE_Z_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetBossBongoModeJumpData),              // CAM_MODE_JUMP
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeLedgeHangData),           // CAM_MODE_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeZLedgeHangData),          // CAM_MODE_Z_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetBossBongoModeJumpData),              // CAM_MODE_FREE_FALL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT4, sSetNormal0ModeChargeData),              // CAM_MODE_CHARGE
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetNormal0ModeStillData),               // CAM_MODE_STILL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModePushPullData),            // CAM_MODE_PUSH_PULL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeFollowBoomerangData),     // CAM_MODE_FOLLOW_BOOMERANG
};

CameraMode sCamSetBossMorphaModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetBossMorphaModeNormalData),            // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModeZParallelData),            // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeZTargetFriendlyData),      // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetNormal0ModeTalkData),                 // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1, sSetBossMorphaModeZTargetUnfriendlyData), // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeWallClimbData),            // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeFirstPersonData),          // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimAdultData),             // CAM_MODE_AIM_ADULT
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeZAimData),                 // CAM_MODE_Z_AIM
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC5, sSetNormal0ModeHookshotFlyData),          // CAM_MODE_HOOKSHOT_FLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimBoomerangData),         // CAM_MODE_AIM_BOOMERANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimChildData),             // CAM_MODE_AIM_CHILD
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeZWallClimbData),           // CAM_MODE_Z_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),                 // CAM_MODE_JUMP
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeLedgeHangData),            // CAM_MODE_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeZLedgeHangData),           // CAM_MODE_Z_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),                 // CAM_MODE_FREE_FALL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT4, sSetNormal0ModeChargeData),               // CAM_MODE_CHARGE
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetNormal0ModeStillData),                // CAM_MODE_STILL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModePushPullData),             // CAM_MODE_PUSH_PULL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeFollowBoomerangData),      // CAM_MODE_FOLLOW_BOOMERANG
};

CameraMode sCamSetBossTwinrovaPlatformModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetBossTwinrovaPlatformModeNormalData),    // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModeZParallelData),              // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeZTargetFriendlyData),        // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetNormal0ModeTalkData),                   // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1, sSetBossTwinrovaModeZTargetUnfriendlyData), // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeWallClimbData),              // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeFirstPersonData),            // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimAdultData),               // CAM_MODE_AIM_ADULT
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeZAimData),                   // CAM_MODE_Z_AIM
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC5, sSetNormal0ModeHookshotFlyData),            // CAM_MODE_HOOKSHOT_FLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimBoomerangData),           // CAM_MODE_AIM_BOOMERANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimChildData),               // CAM_MODE_AIM_CHILD
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeZWallClimbData),             // CAM_MODE_Z_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),                   // CAM_MODE_JUMP
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeLedgeHangData),              // CAM_MODE_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeZLedgeHangData),             // CAM_MODE_Z_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),                   // CAM_MODE_FREE_FALL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT4, sSetNormal0ModeChargeData),                 // CAM_MODE_CHARGE
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetNormal0ModeStillData),                  // CAM_MODE_STILL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModePushPullData),               // CAM_MODE_PUSH_PULL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeFollowBoomerangData),        // CAM_MODE_FOLLOW_BOOMERANG
};

CameraMode sCamSetBossTwinrovaFloorModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetBossTwinrovaFloorModeNormalData),       // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModeZParallelData),              // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeZTargetFriendlyData),        // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetNormal0ModeTalkData),                   // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1, sSetBossTwinrovaModeZTargetUnfriendlyData), // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeWallClimbData),              // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeFirstPersonData),            // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimAdultData),               // CAM_MODE_AIM_ADULT
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeZAimData),                   // CAM_MODE_Z_AIM
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC5, sSetNormal0ModeHookshotFlyData),            // CAM_MODE_HOOKSHOT_FLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimBoomerangData),           // CAM_MODE_AIM_BOOMERANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimChildData),               // CAM_MODE_AIM_CHILD
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeZWallClimbData),             // CAM_MODE_Z_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),                   // CAM_MODE_JUMP
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeLedgeHangData),              // CAM_MODE_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeZLedgeHangData),             // CAM_MODE_Z_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),                   // CAM_MODE_FREE_FALL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT4, sSetNormal0ModeChargeData),                 // CAM_MODE_CHARGE
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetNormal0ModeStillData),                  // CAM_MODE_STILL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModePushPullData),               // CAM_MODE_PUSH_PULL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeFollowBoomerangData),        // CAM_MODE_FOLLOW_BOOMERANG
};

CameraMode sCamSetBossGanondorfModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetBossGanondorfModeNormalData),    // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModeZParallelData),       // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeZTargetFriendlyData), // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetNormal0ModeTalkData),            // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1,
                           sSetBossPhantomGanonModeZTargetUnfriendlyData),      // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeWallClimbData),       // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeFirstPersonData),     // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimAdultData),        // CAM_MODE_AIM_ADULT
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeZAimData),            // CAM_MODE_Z_AIM
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC5, sSetNormal0ModeHookshotFlyData),     // CAM_MODE_HOOKSHOT_FLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimBoomerangData),    // CAM_MODE_AIM_BOOMERANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimChildData),        // CAM_MODE_AIM_CHILD
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeZWallClimbData),      // CAM_MODE_Z_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),            // CAM_MODE_JUMP
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeLedgeHangData),       // CAM_MODE_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeZLedgeHangData),      // CAM_MODE_Z_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),            // CAM_MODE_FREE_FALL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT4, sSetBossGanondorfModeChargeData),    // CAM_MODE_CHARGE
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetNormal0ModeStillData),           // CAM_MODE_STILL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModePushPullData),        // CAM_MODE_PUSH_PULL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeFollowBoomerangData), // CAM_MODE_FOLLOW_BOOMERANG
};

CameraMode sCamSetBossGanonModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetBossGanonModeNormalData),            // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModeZParallelData),           // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeZTargetFriendlyData),     // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetNormal0ModeTalkData),                // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1, sSetBossGanonModeZTargetUnfriendlyData), // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeWallClimbData),           // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeFirstPersonData),         // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimAdultData),            // CAM_MODE_AIM_ADULT
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeZAimData),                // CAM_MODE_Z_AIM
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC5, sSetNormal0ModeHookshotFlyData),         // CAM_MODE_HOOKSHOT_FLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimBoomerangData),        // CAM_MODE_AIM_BOOMERANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimChildData),            // CAM_MODE_AIM_CHILD
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeZWallClimbData),          // CAM_MODE_Z_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),                // CAM_MODE_JUMP
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeLedgeHangData),           // CAM_MODE_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeZLedgeHangData),          // CAM_MODE_Z_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),                // CAM_MODE_FREE_FALL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT4, sSetNormal0ModeChargeData),              // CAM_MODE_CHARGE
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetNormal0ModeStillData),               // CAM_MODE_STILL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModePushPullData),            // CAM_MODE_PUSH_PULL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeFollowBoomerangData),     // CAM_MODE_FOLLOW_BOOMERANG
};

CameraMode sCamSetTowerClimbModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM2, sSetTowerClimbModeNormalData),         // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModeZParallelData),         // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeZTargetFriendlyData),   // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetNormal0ModeTalkData),              // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1, sSetNormal0ModeZTargetUnfriendlyData), // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeWallClimbData),         // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeFirstPersonData),       // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimAdultData),          // CAM_MODE_AIM_ADULT
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeZAimData),              // CAM_MODE_Z_AIM
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC5, sSetNormal0ModeHookshotFlyData),       // CAM_MODE_HOOKSHOT_FLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimBoomerangData),      // CAM_MODE_AIM_BOOMERANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimChildData),          // CAM_MODE_AIM_CHILD
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeZWallClimbData),        // CAM_MODE_Z_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM2, sSetTowerClimbModeJumpData),           // CAM_MODE_JUMP
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeLedgeHangData),         // CAM_MODE_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeZLedgeHangData),        // CAM_MODE_Z_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),              // CAM_MODE_FREE_FALL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT4, sSetNormal0ModeChargeData),            // CAM_MODE_CHARGE
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetNormal0ModeStillData),             // CAM_MODE_STILL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModePushPullData),          // CAM_MODE_PUSH_PULL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeFollowBoomerangData),   // CAM_MODE_FOLLOW_BOOMERANG
};

CameraMode sCamSetTowerUnusedModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM2, sSetTowerUnusedModeNormalData),        // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModeZParallelData),         // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeZTargetFriendlyData),   // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetNormal0ModeTalkData),              // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1, sSetNormal0ModeZTargetUnfriendlyData), // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeWallClimbData),         // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeFirstPersonData),       // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimAdultData),          // CAM_MODE_AIM_ADULT
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeZAimData),              // CAM_MODE_Z_AIM
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC5, sSetNormal0ModeHookshotFlyData),       // CAM_MODE_HOOKSHOT_FLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimBoomerangData),      // CAM_MODE_AIM_BOOMERANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimChildData),          // CAM_MODE_AIM_CHILD
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeZWallClimbData),        // CAM_MODE_Z_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM2, sSetTowerUnusedModeJumpData),          // CAM_MODE_JUMP
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeLedgeHangData),         // CAM_MODE_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeZLedgeHangData),        // CAM_MODE_Z_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),              // CAM_MODE_FREE_FALL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT4, sSetNormal0ModeChargeData),            // CAM_MODE_CHARGE
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetNormal0ModeStillData),             // CAM_MODE_STILL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModePushPullData),          // CAM_MODE_PUSH_PULL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeFollowBoomerangData),   // CAM_MODE_FOLLOW_BOOMERANG
};

CameraMode sCamSetMarketBalconyModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_FIXD1, sSetMarketBalconyModeNormalData),          // CAM_MODE_NORMAL
    { CAM_FUNC_NONE, 0, NULL },                                                       // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_FIXD1, sSetMarketBalconyModeZTargetFriendlyData), // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_FIXD1, sSetMarketBalconyModeTalkData),            // CAM_MODE_TALK
};

CameraMode sCamSetChuBowlingModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_FIXD1, sSetChuBowlingModeNormalData), // CAM_MODE_NORMAL
};

CameraMode sCamSetPivotCrawlspaceModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_FIXD2, sSetPivotCrawlspaceModeNormalData), // CAM_MODE_NORMAL
};

CameraMode sCamSetPivotShopBrowsingModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_DATA4, sSetPivotShopBrowsingModeNormalData), // CAM_MODE_NORMAL
};

CameraMode sCamSetPivotInFrontModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_FIXD4, sSetPivotInFrontAndFromSideModeNormalData), // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModeZParallelData),              // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeZTargetFriendlyData),        // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetNormal0ModeTalkData),                   // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1, sSetNormal1ModeZTargetUnfriendlyData),      // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeWallClimbData),              // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeFirstPersonData),            // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimAdultData),               // CAM_MODE_AIM_ADULT
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeZAimData),                   // CAM_MODE_Z_AIM
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC5, sSetNormal0ModeHookshotFlyData),            // CAM_MODE_HOOKSHOT_FLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimBoomerangData),           // CAM_MODE_AIM_BOOMERANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimChildData),               // CAM_MODE_AIM_CHILD
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeZWallClimbData),             // CAM_MODE_Z_WALL_CLIMB
    { CAM_FUNC_NONE, 0, NULL },                                                        // CAM_MODE_JUMP
    { CAM_FUNC_NONE, 0, NULL },                                                        // CAM_MODE_LEDGE_HANG
    { CAM_FUNC_NONE, 0, NULL },                                                        // CAM_MODE_Z_LEDGE_HANG
    { CAM_FUNC_NONE, 0, NULL },                                                        // CAM_MODE_FREE_FALL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT4, sSetNormal0ModeChargeData),                 // CAM_MODE_CHARGE
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetNormal0ModeStillData),                  // CAM_MODE_STILL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModePushPullData),               // CAM_MODE_PUSH_PULL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeFollowBoomerangData),        // CAM_MODE_FOLLOW_BOOMERANG
};

CameraMode sCamSetPreRendFixedModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_FIXD3, sDataOnlyNullFlags),                      // CAM_MODE_NORMAL
    { CAM_FUNC_NONE, 0, NULL },                                                      // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_FIXD3, sSetPreRendFixedModeZTargetFriendlyData), // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_FIXD3, sSetPreRendFixedModeZTargetFriendlyData), // CAM_MODE_TALK
};

CameraMode sCamSetPreRendPivotModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ7, sSetPreRendPivotModeNormalData),          // CAM_MODE_NORMAL
    { CAM_FUNC_NONE, 0, NULL },                                                      // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ7, sSetPreRendPivotModeZTargetFriendlyData), // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP0, sSetPreRendPivotModeTalkData),            // CAM_MODE_TALK
};

CameraMode sCamSetPreRendSideScrollModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC6, sDataOnlyNullFlags), // CAM_MODE_NORMAL
};

CameraMode sCamSetDoor0Modes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ3, sSetDoor0ModeNormalData), // CAM_MODE_NORMAL
};

CameraMode sCamSetDoorCModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC9, sSetDoorCModeNormalData),    // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC9, sSetDoorCModeZParallelData), // CAM_MODE_Z_PARALLEL
};

CameraMode sCamSetCrawlspaceModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ4, sSetCrawlspaceModeNormalData), // CAM_MODE_NORMAL
};

CameraMode sCamSetStart0Modes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ0, sDataOnlyNullFlags), // CAM_MODE_NORMAL
};

CameraMode sCamSetStart1Modes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ0, sSetStart1ModeNormalData), // CAM_MODE_NORMAL
};

CameraMode sCamSetFree0Modes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ6, sSetFree0ModeNormalData), // CAM_MODE_NORMAL
};

CameraMode sCamSetFree2Modes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ6, sSetFree2ModeNormalData), // CAM_MODE_NORMAL
};

CameraMode sCamSetPivotCornerModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_FIXD2, sSetPivotCornerModeNormalData), // CAM_MODE_NORMAL
};

CameraMode sCamSetPivotWaterSurfaceModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ2, sSetPivotWaterSurfaceModeNormalData),    // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ2, sSetPivotWaterSurfaceModeZParallelData), // CAM_MODE_Z_PARALLEL
};

CameraMode sCamSetCs0Modes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_DEMO1, sDataOnlyInterfaceField), // CAM_MODE_NORMAL
};

CameraMode sCamSetCsTwistedHallwayModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_DEMO2, sDataOnlyInterfaceField), // CAM_MODE_NORMAL
};

CameraMode sCamSetForestBirdsEyeModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetForestBirdsEyeModeNormalData), // CAM_MODE_NORMAL
    { CAM_FUNC_NONE, 0, NULL },                                               // CAM_MODE_Z_PARALLEL
    { CAM_FUNC_NONE, 0, NULL },                                               // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA3, sSetForestBirdsEyeModeTalkData),   // CAM_MODE_TALK
};

CameraMode sCamSetSlowChestCsModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_DEMO3, sSetSlowChestCsModeNormalData), // CAM_MODE_NORMAL
};

CameraMode sCamSetItemUnusedModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_DEMO4, sSetSlowChestCsModeNormalData), // CAM_MODE_NORMAL
};

CameraMode sCamSetCs3Modes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_DEMO9, sSetCs3ModeNormalData), // CAM_MODE_NORMAL
};

CameraMode sCamSetCsAttentionModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_DEMO5, sDataOnlyInterfaceField), // CAM_MODE_NORMAL
};

CameraMode sCamSetBeanGenericModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetBeanGenericModeNormalData),        // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetBeanGenericModeZParallelData),     // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeZTargetFriendlyData),   // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetNormal0ModeTalkData),              // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1, sSetNormal1ModeZTargetUnfriendlyData), // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeWallClimbData),         // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeFirstPersonData),       // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimAdultData),          // CAM_MODE_AIM_ADULT
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeZAimData),              // CAM_MODE_Z_AIM
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC5, sSetNormal0ModeHookshotFlyData),       // CAM_MODE_HOOKSHOT_FLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimBoomerangData),      // CAM_MODE_AIM_BOOMERANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimChildData),          // CAM_MODE_AIM_CHILD
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeZWallClimbData),        // CAM_MODE_Z_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetBeanGenericModeJumpData),          // CAM_MODE_JUMP
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetBeanGenericModeLedgeHangData),     // CAM_MODE_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetBeanGenericModeZLedgeHangData),    // CAM_MODE_Z_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),              // CAM_MODE_FREE_FALL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT4, sSetNormal0ModeChargeData),            // CAM_MODE_CHARGE
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetBeanGenericModeStillData),         // CAM_MODE_STILL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModePushPullData),          // CAM_MODE_PUSH_PULL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeFollowBoomerangData),   // CAM_MODE_FOLLOW_BOOMERANG
};

CameraMode sCamSetBeanLostWoodsModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetBeanLostWoodsModeNormalData),      // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetBeanLostWoodsModeZParallelData),   // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeZTargetFriendlyData),   // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetNormal0ModeTalkData),              // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1, sSetNormal1ModeZTargetUnfriendlyData), // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeWallClimbData),         // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeFirstPersonData),       // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimAdultData),          // CAM_MODE_AIM_ADULT
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeZAimData),              // CAM_MODE_Z_AIM
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC5, sSetNormal0ModeHookshotFlyData),       // CAM_MODE_HOOKSHOT_FLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimBoomerangData),      // CAM_MODE_AIM_BOOMERANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimChildData),          // CAM_MODE_AIM_CHILD
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeZWallClimbData),        // CAM_MODE_Z_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetBeanLostWoodsModeJumpData),        // CAM_MODE_JUMP
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetBeanLostWoodsModeLedgeHangData),   // CAM_MODE_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetBeanLostWoodsModeZLedgeHangData),  // CAM_MODE_Z_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),              // CAM_MODE_FREE_FALL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT4, sSetNormal0ModeChargeData),            // CAM_MODE_CHARGE
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetBeanLostWoodsModeStillData),       // CAM_MODE_STILL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModePushPullData),          // CAM_MODE_PUSH_PULL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeFollowBoomerangData),   // CAM_MODE_FOLLOW_BOOMERANG
};

CameraMode sCamSetSceneUnusedModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC9, sSetSceneUnusedModeNormalData), // CAM_MODE_NORMAL
};

CameraMode sCamSetSceneTransitionModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ2, sSetSceneTransitionModeNormalData), // CAM_MODE_NORMAL
};

CameraMode sCamSetElevatorPlatformModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC7, sDataOnlyNullFlags), // CAM_MODE_NORMAL
};

CameraMode sCamSetFireStaircaseModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC4, sDataOnlyInterfaceField), // CAM_MODE_NORMAL
};

CameraMode sCamSetForestUnusedModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ5, sDataOnlyInterfaceField), // CAM_MODE_NORMAL
};

CameraMode sCamSetForestDefeatPoeModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_DEMO6, sDataOnlyInterfaceField), // CAM_MODE_NORMAL
};

CameraMode sCamSetBigOctoModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetBigOctoModeNormalData),            // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetDungeon0ModeZParallelData),        // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetDungeon0ModeZTargetFriendlyData),  // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetNormal0ModeTalkData),              // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1, sSetBigOctoModeZTargetUnfriendlyData), // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetDungeon0ModeWallClimbData),        // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeFirstPersonData),       // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimAdultData),          // CAM_MODE_AIM_ADULT
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeZAimData),              // CAM_MODE_Z_AIM
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC5, sSetNormal1ModeHookshotFlyData),       // CAM_MODE_HOOKSHOT_FLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimBoomerangData),      // CAM_MODE_AIM_BOOMERANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimChildData),          // CAM_MODE_AIM_CHILD
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetDungeon0ModeZWallClimbData),       // CAM_MODE_Z_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetDungeon0ModeJumpData),             // CAM_MODE_JUMP
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetDungeon0ModeLedgeHangData),        // CAM_MODE_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetDungeon0ModeZLedgeHangData),       // CAM_MODE_Z_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetDungeon0ModeFreeFallData),         // CAM_MODE_FREE_FALL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT4, sSetDungeon0ModeChargeData),           // CAM_MODE_CHARGE
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetBigOctoModeStillData),             // CAM_MODE_STILL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModePushPullData),          // CAM_MODE_PUSH_PULL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeFollowBoomerangData),   // CAM_MODE_FOLLOW_BOOMERANG
};

CameraMode sCamSetMeadowBirdsEyeModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetMeadowBirdsEyeModeNormalData),            // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetMeadowBirdsEyeModeZParallelData),         // CAM_MODE_Z_PARALLEL
    { CAM_FUNC_NONE, 0, NULL },                                                          // CAM_MODE_Z_TARGET_FRIENDLY
    { CAM_FUNC_NONE, 0, NULL },                                                          // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetMeadowBirdsEyeModeZTargetUnfriendlyData), // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetMeadowBirdsEyeModeWallClimbData),         // CAM_MODE_WALL_CLIMB
};

CameraMode sCamSetMeadowUnusedModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetMeadowUnusedModeNormalData),            // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetMeadowUnusedModeZParallelData),         // CAM_MODE_Z_PARALLEL
    { CAM_FUNC_NONE, 0, NULL },                                                        // CAM_MODE_Z_TARGET_FRIENDLY
    { CAM_FUNC_NONE, 0, NULL },                                                        // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetMeadowUnusedModeZTargetUnfriendlyData), // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetMeadowUnusedModeWallClimbData),         // CAM_MODE_WALL_CLIMB
};

CameraMode sCamSetFireBirdsEyeModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetFireBirdsEyeModeNormalData),            // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetFireBirdsEyeModeZParallelData),         // CAM_MODE_Z_PARALLEL
    { CAM_FUNC_NONE, 0, NULL },                                                        // CAM_MODE_Z_TARGET_FRIENDLY
    { CAM_FUNC_NONE, 0, NULL },                                                        // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetFireBirdsEyeModeZTargetUnfriendlyData), // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetFireBirdsEyeModeWallClimbData),         // CAM_MODE_WALL_CLIMB
};

CameraMode sCamSetTurnAroundModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP4, sSetTurnAroundModeNormalData), // CAM_MODE_NORMAL
};

CameraMode sCamSetPivotVerticalModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC0, sSetPivotVerticalModeNormalData), // CAM_MODE_NORMAL
};

CameraMode sCamSetNorm2Modes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetNormal2and4ModeNormalData),        // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModeZParallelData),         // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeZTargetFriendlyData),   // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetNormal0ModeTalkData),              // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1, sSetNormal1ModeZTargetUnfriendlyData), // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeWallClimbData),         // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeFirstPersonData),       // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimAdultData),          // CAM_MODE_AIM_ADULT
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeZAimData),              // CAM_MODE_Z_AIM
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC5, sSetNormal0ModeHookshotFlyData),       // CAM_MODE_HOOKSHOT_FLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimBoomerangData),      // CAM_MODE_AIM_BOOMERANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimChildData),          // CAM_MODE_AIM_CHILD
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeZWallClimbData),        // CAM_MODE_Z_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),              // CAM_MODE_JUMP
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeLedgeHangData),         // CAM_MODE_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeZLedgeHangData),        // CAM_MODE_Z_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),              // CAM_MODE_FREE_FALL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT4, sSetNormal0ModeChargeData),            // CAM_MODE_CHARGE
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetNormal0ModeStillData),             // CAM_MODE_STILL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModePushPullData),          // CAM_MODE_PUSH_PULL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeFollowBoomerangData),   // CAM_MODE_FOLLOW_BOOMERANG
};

CameraMode sCamSetFishingModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetFishingModeNormalData),          // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetFishingModeZParallelData),       // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1, sSetFishingModeZTargetFriendlyData), // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetFishingModeTalkData),            // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1, sSetFishingModeZTargetFriendlyData), // CAM_MODE_Z_TARGET_UNFRIENDLY
    { CAM_FUNC_NONE, 0, NULL },                                                 // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetFishingModeFirstPersonData),     // CAM_MODE_FIRST_PERSON
    { CAM_FUNC_NONE, 0, NULL },                                                 // CAM_MODE_AIM_ADULT
    { CAM_FUNC_NONE, 0, NULL },                                                 // CAM_MODE_Z_AIM
    { CAM_FUNC_NONE, 0, NULL },                                                 // CAM_MODE_HOOKSHOT_FLY
    { CAM_FUNC_NONE, 0, NULL },                                                 // CAM_MODE_AIM_BOOMERANG
    { CAM_FUNC_NONE, 0, NULL },                                                 // CAM_MODE_AIM_CHILD
    { CAM_FUNC_NONE, 0, NULL },                                                 // CAM_MODE_Z_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetFishingModeJumpData),            // CAM_MODE_JUMP
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetFishingModeLedgeHangData),       // CAM_MODE_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetFishingModeZLedgeHangData),      // CAM_MODE_Z_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetFishingModeFreeFallData),        // CAM_MODE_FREE_FALL
};

CameraMode sCamSetCsCModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ9, sSetCsCModeNormalData), // CAM_MODE_NORMAL
};

CameraMode sCamSetJabuTentacleModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetJabuTentacleModeNormalData),            // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModeZParallelData),              // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeZTargetFriendlyData),        // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetNormal0ModeTalkData),                   // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1, sSetJabuTentacleModeZTargetUnfriendlyData), // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeWallClimbData),              // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeFirstPersonData),            // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimAdultData),               // CAM_MODE_AIM_ADULT
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeZAimData),                   // CAM_MODE_Z_AIM
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC5, sSetNormal0ModeHookshotFlyData),            // CAM_MODE_HOOKSHOT_FLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimBoomerangData),           // CAM_MODE_AIM_BOOMERANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimChildData),               // CAM_MODE_AIM_CHILD
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeZWallClimbData),             // CAM_MODE_Z_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),                   // CAM_MODE_JUMP
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeLedgeHangData),              // CAM_MODE_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeZLedgeHangData),             // CAM_MODE_Z_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),                   // CAM_MODE_FREE_FALL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT4, sSetNormal0ModeChargeData),                 // CAM_MODE_CHARGE
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetNormal0ModeStillData),                  // CAM_MODE_STILL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModePushPullData),               // CAM_MODE_PUSH_PULL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeFollowBoomerangData),        // CAM_MODE_FOLLOW_BOOMERANG
};

CameraMode sCamSetDungeon2Modes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetDungeon2ModeNormalData),            // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetDungeon2ModeZParallelData),         // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetDungeon0ModeZTargetFriendlyData),   // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetNormal0ModeTalkData),               // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1, sSetDungeon2ModeZTargetUnfriendlyData), // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetDungeon2ModeWallClimbData),         // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeFirstPersonData),        // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimAdultData),           // CAM_MODE_AIM_ADULT
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeZAimData),               // CAM_MODE_Z_AIM
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC5, sSetNormal1ModeHookshotFlyData),        // CAM_MODE_HOOKSHOT_FLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimBoomerangData),       // CAM_MODE_AIM_BOOMERANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimChildData),           // CAM_MODE_AIM_CHILD
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetDungeon2ModeZWallClimbData),        // CAM_MODE_Z_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetDungeon2ModeJumpData),              // CAM_MODE_JUMP
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetDungeon2ModeLedgeHangData),         // CAM_MODE_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetDungeon2ModeZLedgeHangData),        // CAM_MODE_Z_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetDungeon2ModeFreeFallData),          // CAM_MODE_FREE_FALL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT4, sSetNormal0ModeChargeData),             // CAM_MODE_CHARGE
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetDungeon2ModeStillData),             // CAM_MODE_STILL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetDungeon2ModePushPullData),          // CAM_MODE_PUSH_PULL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeFollowBoomerangData),    // CAM_MODE_FOLLOW_BOOMERANG
};

CameraMode sCamSetDirectedYawModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetDirectedYawModeNormalData),          // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModeZParallelData),           // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetDirectedYawModeZTargetFriendlyData), // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetDirectedYawModeTalkData),            // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1, sSetNormal0ModeZTargetUnfriendlyData),   // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeWallClimbData),           // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeFirstPersonData),         // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimAdultData),            // CAM_MODE_AIM_ADULT
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeZAimData),                // CAM_MODE_Z_AIM
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC5, sSetNormal0ModeHookshotFlyData),         // CAM_MODE_HOOKSHOT_FLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimBoomerangData),        // CAM_MODE_AIM_BOOMERANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimChildData),            // CAM_MODE_AIM_CHILD
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeZWallClimbData),          // CAM_MODE_Z_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),                // CAM_MODE_JUMP
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeLedgeHangData),           // CAM_MODE_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeZLedgeHangData),          // CAM_MODE_Z_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),                // CAM_MODE_FREE_FALL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT4, sSetNormal0ModeChargeData),              // CAM_MODE_CHARGE
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetNormal0ModeStillData),               // CAM_MODE_STILL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModePushPullData),            // CAM_MODE_PUSH_PULL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeFollowBoomerangData),     // CAM_MODE_FOLLOW_BOOMERANG
};

CameraMode sCamSetPivotFromSideModes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_FIXD4, sSetPivotInFrontAndFromSideModeNormalData), // CAM_MODE_NORMAL
    { CAM_FUNC_NONE, 0, NULL },                                                        // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_FIXD4, sSetPivotInFrontAndFromSideModeNormalData), // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetNormal0ModeTalkData),                   // CAM_MODE_TALK
    { CAM_FUNC_NONE, 0, NULL },                                                        // CAM_MODE_Z_TARGET_UNFRIENDLY
    { CAM_FUNC_NONE, 0, NULL },                                                        // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeFirstPersonData),            // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimAdultData),               // CAM_MODE_AIM_ADULT
    { CAM_FUNC_NONE, 0, NULL },                                                        // CAM_MODE_Z_AIM
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC5, sSetNormal0ModeHookshotFlyData),            // CAM_MODE_HOOKSHOT_FLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimBoomerangData),           // CAM_MODE_AIM_BOOMERANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimChildData),               // CAM_MODE_AIM_CHILD
};

CameraMode sCamSetNormal4Modes[] = {
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetNormal2and4ModeNormalData),        // CAM_MODE_NORMAL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModeZParallelData),         // CAM_MODE_Z_PARALLEL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeZTargetFriendlyData),   // CAM_MODE_Z_TARGET_FRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP3, sSetNormal4ModeTalkData),              // CAM_MODE_TALK
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT1, sSetNormal1ModeZTargetUnfriendlyData), // CAM_MODE_Z_TARGET_UNFRIENDLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeWallClimbData),         // CAM_MODE_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeFirstPersonData),       // CAM_MODE_FIRST_PERSON
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimAdultData),          // CAM_MODE_AIM_ADULT
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeZAimData),              // CAM_MODE_Z_AIM
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SPEC5, sSetNormal0ModeHookshotFlyData),       // CAM_MODE_HOOKSHOT_FLY
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimBoomerangData),      // CAM_MODE_AIM_BOOMERANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_SUBJ3, sSetNormal0ModeAimChildData),          // CAM_MODE_AIM_CHILD
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP2, sSetNormal0ModeZWallClimbData),        // CAM_MODE_Z_WALL_CLIMB
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),              // CAM_MODE_JUMP
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeLedgeHangData),         // CAM_MODE_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_UNIQ1, sSetNormal0ModeZLedgeHangData),        // CAM_MODE_Z_LEDGE_HANG
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_JUMP1, sSetNormal0ModeJumpData),              // CAM_MODE_FREE_FALL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_BATT4, sSetNormal0ModeChargeData),            // CAM_MODE_CHARGE
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_NORM1, sSetNormal0ModeStillData),             // CAM_MODE_STILL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_PARA1, sSetNormal0ModePushPullData),          // CAM_MODE_PUSH_PULL
    CAM_SETTING_MODE_ENTRY(CAM_FUNC_KEEP1, sSetNormal0ModeFollowBoomerangData),   // CAM_MODE_FOLLOW_BOOMERANG
};

CameraSetting sCameraSettings[] = {
    { { 0x00000000 }, NULL },                             // CAM_SET_NONE
    { { 0x051FFFFF }, sCamSetNormal0Modes },              // CAM_SET_NORMAL0
    { { 0x051FFFFF }, sCamSetNormal1Modes },              // CAM_SET_NORMAL1
    { { 0x051FFFFF }, sCamSetDungeon0Modes },             // CAM_SET_DUNGEON0
    { { 0x051FFFFF }, sCamSetDungeon1Modes },             // CAM_SET_DUNGEON1
    { { 0x050FF7FF }, sCamSetNormal3Modes },              // CAM_SET_NORMAL3
    { { 0x8500018F }, sCamSetHorseModes },                // CAM_SET_HORSE
    { { 0x051FFFFF }, sCamSetBossGohmaModes },            // CAM_SET_BOSS_GOHMA
    { { 0x051FFFFF }, sCamSetBossDodongoModes },          // CAM_SET_BOSS_DODONGO
    { { 0x051FFFFF }, sCamSetBossBarinadeModes },         // CAM_SET_BOSS_BARINADE
    { { 0x051FFFFF }, sCamSetBossPhantomGanonModes },     // CAM_SET_BOSS_PHANTOM_GANON
    { { 0x051FFFFF }, sCamSetBossVolvagiaModes },         // CAM_SET_BOSS_VOLVAGIA
    { { 0x051FFFFF }, sCamSetBossBongoModes },            // CAM_SET_BOSS_BONGO
    { { 0x051FFFFF }, sCamSetBossMorphaModes },           // CAM_SET_BOSS_MORPHA
    { { 0x051FFFFF }, sCamSetBossTwinrovaPlatformModes }, // CAM_SET_BOSS_TWINROVA_PLATFORM
    { { 0x051FFFFF }, sCamSetBossTwinrovaFloorModes },    // CAM_SET_BOSS_TWINROVA_FLOOR
    { { 0x051FFFFF }, sCamSetBossGanondorfModes },        // CAM_SET_BOSS_GANONDORF
    { { 0x051FFFFF }, sCamSetBossGanonModes },            // CAM_SET_BOSS_GANON
    { { 0x851FFFFF }, sCamSetTowerClimbModes },           // CAM_SET_TOWER_CLIMB
    { { 0x851FFFFF }, sCamSetTowerUnusedModes },          // CAM_SET_TOWER_UNUSED
    { { 0x8500000D }, sCamSetMarketBalconyModes },        // CAM_SET_MARKET_BALCONY
    { { 0x85000001 }, sCamSetChuBowlingModes },           // CAM_SET_CHU_BOWLING
    { { 0x85000001 }, sCamSetPivotCrawlspaceModes },      // CAM_SET_PIVOT_CRAWLSPACE
    { { 0x85000001 }, sCamSetPivotShopBrowsingModes },    // CAM_SET_PIVOT_SHOP_BROWSING
    { { 0x851E1FFF }, sCamSetPivotInFrontModes },         // CAM_SET_PIVOT_IN_FRONT
    { { 0x8C00000D }, sCamSetPreRendFixedModes },         // CAM_SET_PREREND_FIXED
    { { 0x8C00000D }, sCamSetPreRendPivotModes },         // CAM_SET_PREREND_PIVOT
    { { 0x8C000001 }, sCamSetPreRendSideScrollModes },    // CAM_SET_PREREND_SIDE_SCROLL
    { { 0xC5000001 }, sCamSetDoor0Modes },                // CAM_SET_DOOR0
    { { 0xC5000003 }, sCamSetDoorCModes },                // CAM_SET_DOORC
    { { 0xC5000001 }, sCamSetCrawlspaceModes },           // CAM_SET_CRAWLSPACE
    { { 0xC5000001 }, sCamSetStart0Modes },               // CAM_SET_START0
    { { 0xC5000001 }, sCamSetStart1Modes },               // CAM_SET_START1
    { { 0x05000001 }, sCamSetFree0Modes },                // CAM_SET_FREE0
    { { 0x05000001 }, sCamSetFree2Modes },                // CAM_SET_FREE2
    { { 0x85000001 }, sCamSetPivotCornerModes },          // CAM_SET_PIVOT_CORNER
    { { 0x05000003 }, sCamSetPivotWaterSurfaceModes },    // CAM_SET_PIVOT_WATER_SURFACE
    { { 0xCE000001 }, sCamSetCs0Modes },                  // CAM_SET_CS_0
    { { 0x4E000001 }, sCamSetCsTwistedHallwayModes },     // CAM_SET_CS_TWISTED_HALLWAY
    { { 0x05000009 }, sCamSetForestBirdsEyeModes },       // CAM_SET_FOREST_BIRDS_EYE
    { { 0x45000001 }, sCamSetSlowChestCsModes },          // CAM_SET_SLOW_CHEST_CS
    { { 0x45000001 }, sCamSetItemUnusedModes },           // CAM_SET_ITEM_UNUSED
    { { 0x45000001 }, sCamSetCs3Modes },                  // CAM_SET_CS_3
    { { 0x45000001 }, sCamSetCsAttentionModes },          // CAM_SET_CS_ATTENTION
    { { 0x451FFFFF }, sCamSetBeanGenericModes },          // CAM_SET_BEAN_GENERIC
    { { 0x451FFFFF }, sCamSetBeanLostWoodsModes },        // CAM_SET_BEAN_LOST_WOODS
    { { 0xC5000001 }, sCamSetSceneUnusedModes },          // CAM_SET_SCENE_UNUSED
    { { 0x45000001 }, sCamSetSceneTransitionModes },      // CAM_SET_SCENE_TRANSITION
    { { 0x05000001 }, sCamSetElevatorPlatformModes },     // CAM_SET_ELEVATOR_PLATFORM
    { { 0x45000001 }, sCamSetFireStaircaseModes },        // CAM_SET_FIRE_STAIRCASE
    { { 0x45000001 }, sCamSetForestUnusedModes },         // CAM_SET_FOREST_UNUSED
    { { 0x45000001 }, sCamSetForestDefeatPoeModes },      // CAM_SET_FOREST_DEFEAT_POE
    { { 0x451FFFFF }, sCamSetBigOctoModes },              // CAM_SET_BIG_OCTO
    { { 0x05000033 }, sCamSetMeadowBirdsEyeModes },       // CAM_SET_MEADOW_BIRDS_EYE
    { { 0x05000033 }, sCamSetMeadowUnusedModes },         // CAM_SET_MEADOW_UNUSED
    { { 0x05000033 }, sCamSetFireBirdsEyeModes },         // CAM_SET_FIRE_BIRDS_EYE
    { { 0x4A000001 }, sCamSetTurnAroundModes },           // CAM_SET_TURN_AROUND
    { { 0x05000001 }, sCamSetPivotVerticalModes },        // CAM_SET_PIVOT_VERTICAL
    { { 0x051FFFFF }, sCamSetNorm2Modes },                // CAM_SET_NORMAL2
    { { 0x0501E05F }, sCamSetFishingModes },              // CAM_SET_FISHING
    { { 0x45000001 }, sCamSetCsCModes },                  // CAM_SET_CS_C
    { { 0x051FFFFF }, sCamSetJabuTentacleModes },         // CAM_SET_JABU_TENTACLE
    { { 0x051FFFFF }, sCamSetDungeon2Modes },             // CAM_SET_DUNGEON2
    { { 0x051FFFFF }, sCamSetDirectedYawModes },          // CAM_SET_DIRECTED_YAW
    { { 0xC5000ECD }, sCamSetPivotFromSideModes },        // CAM_SET_PIVOT_FROM_SIDE
    { { 0x051FFFFF }, sCamSetNormal4Modes },              // CAM_SET_NORMAL4
};

s32 Camera_Normal0(Camera* camera);
s32 Camera_Normal1(Camera* camera);
s32 Camera_Normal2(Camera* camera);
s32 Camera_Normal3(Camera* camera);
s32 Camera_Normal4(Camera* camera);
s32 Camera_Parallel0(Camera* camera);
s32 Camera_Parallel1(Camera* camera);
s32 Camera_Parallel2(Camera* camera);
s32 Camera_Parallel3(Camera* camera);
s32 Camera_Parallel4(Camera* camera);
s32 Camera_KeepOn0(Camera* camera);
s32 Camera_KeepOn1(Camera* camera);
s32 Camera_KeepOn2(Camera* camera);
s32 Camera_KeepOn3(Camera* camera);
s32 Camera_KeepOn4(Camera* camera);
s32 Camera_Subj0(Camera* camera);
s32 Camera_Subj1(Camera* camera);
s32 Camera_Subj2(Camera* camera);
s32 Camera_Subj3(Camera* camera);
s32 Camera_Subj4(Camera* camera);
s32 Camera_Jump0(Camera* camera);
s32 Camera_Jump1(Camera* camera);
s32 Camera_Jump2(Camera* camera);
s32 Camera_Jump3(Camera* camera);
s32 Camera_Jump4(Camera* camera);
s32 Camera_Battle0(Camera* camera);
s32 Camera_Battle1(Camera* camera);
s32 Camera_Battle2(Camera* camera);
s32 Camera_Battle3(Camera* camera);
s32 Camera_Battle4(Camera* camera);
s32 Camera_Fixed0(Camera* camera);
s32 Camera_Fixed1(Camera* camera);
s32 Camera_Fixed2(Camera* camera);
s32 Camera_Fixed3(Camera* camera);
s32 Camera_Fixed4(Camera* camera);
s32 Camera_Data0(Camera* camera);
s32 Camera_Data1(Camera* camera);
s32 Camera_Data2(Camera* camera);
s32 Camera_Data3(Camera* camera);
s32 Camera_Data4(Camera* camera);
s32 Camera_Unique0(Camera* camera);
s32 Camera_Unique1(Camera* camera);
s32 Camera_Unique2(Camera* camera);
s32 Camera_Unique3(Camera* camera);
s32 Camera_Unique4(Camera* camera);
s32 Camera_Unique5(Camera* camera);
s32 Camera_Unique6(Camera* camera);
s32 Camera_Unique7(Camera* camera);
s32 Camera_Unique8(Camera* camera);
s32 Camera_Unique9(Camera* camera);
s32 Camera_Demo0(Camera* camera);
s32 Camera_Demo1(Camera* camera);
s32 Camera_Demo2(Camera* camera);
s32 Camera_Demo3(Camera* camera);
s32 Camera_Demo4(Camera* camera);
s32 Camera_Demo5(Camera* camera);
s32 Camera_Demo6(Camera* camera);
s32 Camera_Demo7(Camera* camera);
s32 Camera_Demo8(Camera* camera);
s32 Camera_Demo9(Camera* camera);
s32 Camera_Special0(Camera* camera);
s32 Camera_Special1(Camera* camera);
s32 Camera_Special2(Camera* camera);
s32 Camera_Special3(Camera* camera);
s32 Camera_Special4(Camera* camera);
s32 Camera_Special5(Camera* camera);
s32 Camera_Special6(Camera* camera);
s32 Camera_Special7(Camera* camera);
s32 Camera_Special8(Camera* camera);
s32 Camera_Special9(Camera* camera);

s32 (*sCameraFunctions[])(Camera*) = {
    NULL,             // CAM_FUNC_NONE
    Camera_Normal0,   // CAM_FUNC_NORM0
    Camera_Normal1,   // CAM_FUNC_NORM1
    Camera_Normal2,   // CAM_FUNC_NORM2
    Camera_Normal3,   // CAM_FUNC_NORM3
    Camera_Normal4,   // CAM_FUNC_NORM4
    Camera_Parallel0, // CAM_FUNC_PARA0
    Camera_Parallel1, // CAM_FUNC_PARA1
    Camera_Parallel2, // CAM_FUNC_PARA2
    Camera_Parallel3, // CAM_FUNC_PARA3
    Camera_Parallel4, // CAM_FUNC_PARA4
    Camera_KeepOn0,   // CAM_FUNC_KEEP0
    Camera_KeepOn1,   // CAM_FUNC_KEEP1
    Camera_KeepOn2,   // CAM_FUNC_KEEP2
    Camera_KeepOn3,   // CAM_FUNC_KEEP3
    Camera_KeepOn4,   // CAM_FUNC_KEEP4
    Camera_Subj0,     // CAM_FUNC_SUBJ0
    Camera_Subj1,     // CAM_FUNC_SUBJ1
    Camera_Subj2,     // CAM_FUNC_SUBJ2
    Camera_Subj3,     // CAM_FUNC_SUBJ3
    Camera_Subj4,     // CAM_FUNC_SUBJ4
    Camera_Jump0,     // CAM_FUNC_JUMP0
    Camera_Jump1,     // CAM_FUNC_JUMP1
    Camera_Jump2,     // CAM_FUNC_JUMP2
    Camera_Jump3,     // CAM_FUNC_JUMP3
    Camera_Jump4,     // CAM_FUNC_JUMP4
    Camera_Battle0,   // CAM_FUNC_BATT0
    Camera_Battle1,   // CAM_FUNC_BATT1
    Camera_Battle2,   // CAM_FUNC_BATT2
    Camera_Battle3,   // CAM_FUNC_BATT3
    Camera_Battle4,   // CAM_FUNC_BATT4
    Camera_Fixed0,    // CAM_FUNC_FIXD0
    Camera_Fixed1,    // CAM_FUNC_FIXD1
    Camera_Fixed2,    // CAM_FUNC_FIXD2
    Camera_Fixed3,    // CAM_FUNC_FIXD3
    Camera_Fixed4,    // CAM_FUNC_FIXD4
    Camera_Data0,     // CAM_FUNC_DATA0
    Camera_Data1,     // CAM_FUNC_DATA1
    Camera_Data2,     // CAM_FUNC_DATA2
    Camera_Data3,     // CAM_FUNC_DATA3
    Camera_Data4,     // CAM_FUNC_DATA4
    Camera_Unique0,   // CAM_FUNC_UNIQ0
    Camera_Unique1,   // CAM_FUNC_UNIQ1
    Camera_Unique2,   // CAM_FUNC_UNIQ2
    Camera_Unique3,   // CAM_FUNC_UNIQ3
    Camera_Unique4,   // CAM_FUNC_UNIQ4
    Camera_Unique5,   // CAM_FUNC_UNIQ5
    Camera_Unique6,   // CAM_FUNC_UNIQ6
    Camera_Unique7,   // CAM_FUNC_UNIQ7
    Camera_Unique8,   // CAM_FUNC_UNIQ8
    Camera_Unique9,   // CAM_FUNC_UNIQ9
    Camera_Demo0,     // CAM_FUNC_DEMO0
    Camera_Demo1,     // CAM_FUNC_DEMO1
    Camera_Demo2,     // CAM_FUNC_DEMO2
    Camera_Demo3,     // CAM_FUNC_DEMO3
    Camera_Demo4,     // CAM_FUNC_DEMO4
    Camera_Demo5,     // CAM_FUNC_DEMO5
    Camera_Demo6,     // CAM_FUNC_DEMO6
    Camera_Demo7,     // CAM_FUNC_DEMO7
    Camera_Demo8,     // CAM_FUNC_DEMO8
    Camera_Demo9,     // CAM_FUNC_DEMO9
    Camera_Special0,  // CAM_FUNC_SPEC0
    Camera_Special1,  // CAM_FUNC_SPEC1
    Camera_Special2,  // CAM_FUNC_SPEC2
    Camera_Special3,  // CAM_FUNC_SPEC3
    Camera_Special4,  // CAM_FUNC_SPEC4
    Camera_Special5,  // CAM_FUNC_SPEC5
    Camera_Special6,  // CAM_FUNC_SPEC6
    Camera_Special7,  // CAM_FUNC_SPEC7
    Camera_Special8,  // CAM_FUNC_SPEC8
    Camera_Special9,  // CAM_FUNC_SPEC9
};

s32 sInitRegs = 1;

s32 gDebugCamEnabled = false;

#if DEBUG_FEATURES
s32 sDbgModeIdx = -1;
#endif

s16 sNextUID = 0;

s32 sCameraInterfaceField = CAM_INTERFACE_FIELD(CAM_LETTERBOX_NONE, CAM_HUD_VISIBILITY_ALL, 1);
s32 sCameraHudVisibilityMode = HUD_VISIBILITY_NOTHING_ALT;
s32 sCameraLetterboxSize = 32;

s32 D_8011D3AC = -1;

s16 D_8011D3B0[] = {
    0x0AAA, 0xF556, 0x1555, 0xEAAB, 0x2AAA, 0xD556, 0x3FFF, 0xC001, 0x5555, 0xAAAB, 0x6AAA, 0x9556, 0x7FFF, 0x0000,
};

s16 D_8011D3CC[] = {
    0x0000, 0x02C6, 0x058C, 0x0000, 0x0000, 0xFD3A, 0x0000, 0x0852, 0x0000, 0x0000, 0x0B18, 0x02C6, 0xFA74, 0x0000,
};

s32 sUpdateCameraDirection = 0;
s32 D_8011D3EC = 0;
s32 D_8011D3F0 = 0;

s32 sDemo5PrevAction12Frame = -16;

#if DEBUG_FEATURES
char sCameraFunctionNames[][8] = {
    "NONE   ", // CAM_FUNC_NONE
    "NORM0()", // CAM_FUNC_NORM0
    "NORM1()", // CAM_FUNC_NORM1
    "NORM2()", // CAM_FUNC_NORM2
    "NORM3()", // CAM_FUNC_NORM3
    "NORM4()", // CAM_FUNC_NORM4
    "PARA0()", // CAM_FUNC_PARA0
    "PARA1()", // CAM_FUNC_PARA1
    "PARA2()", // CAM_FUNC_PARA2
    "PARA3()", // CAM_FUNC_PARA3
    "PARA4()", // CAM_FUNC_PARA4
    "KEEP0()", // CAM_FUNC_KEEP0
    "KEEP1()", // CAM_FUNC_KEEP1
    "KEEP2()", // CAM_FUNC_KEEP2
    "KEEP3()", // CAM_FUNC_KEEP3
    "KEEP4()", // CAM_FUNC_KEEP4
    "SUBJ0()", // CAM_FUNC_SUBJ0
    "SUBJ1()", // CAM_FUNC_SUBJ1
    "SUBJ2()", // CAM_FUNC_SUBJ2
    "SUBJ3()", // CAM_FUNC_SUBJ3
    "SUBJ4()", // CAM_FUNC_SUBJ4
    "JUMP0()", // CAM_FUNC_JUMP0
    "JUMP1()", // CAM_FUNC_JUMP1
    "JUMP2()", // CAM_FUNC_JUMP2
    "JUMP3()", // CAM_FUNC_JUMP3
    "JUMP4()", // CAM_FUNC_JUMP4
    "BATT0()", // CAM_FUNC_BATT0
    "BATT1()", // CAM_FUNC_BATT1
    "BATT2()", // CAM_FUNC_BATT2
    "BATT3()", // CAM_FUNC_BATT3
    "BATT4()", // CAM_FUNC_BATT4
    "FIXD0()", // CAM_FUNC_FIXD0
    "FIXD1()", // CAM_FUNC_FIXD1
    "FIXD2()", // CAM_FUNC_FIXD2
    "FIXD3()", // CAM_FUNC_FIXD3
    "FIXD4()", // CAM_FUNC_FIXD4
    "DATA0()", // CAM_FUNC_DATA0
    "DATA1()", // CAM_FUNC_DATA1
    "DATA2()", // CAM_FUNC_DATA2
    "DATA3()", // CAM_FUNC_DATA3
    "DATA4()", // CAM_FUNC_DATA4
    "UNIQ0()", // CAM_FUNC_UNIQ0
    "UNIQ1()", // CAM_FUNC_UNIQ1
    "UNIQ2()", // CAM_FUNC_UNIQ2
    "UNIQ3()", // CAM_FUNC_UNIQ3
    "UNIQ4()", // CAM_FUNC_UNIQ4
    "UNIQ5()", // CAM_FUNC_UNIQ5
    "UNIQ6()", // CAM_FUNC_UNIQ6
    "UNIQ7()", // CAM_FUNC_UNIQ7
    "UNIQ8()", // CAM_FUNC_UNIQ8
    "UNIQ9()", // CAM_FUNC_UNIQ9
    "DEMO0()", // CAM_FUNC_DEMO0
    "DEMO1()", // CAM_FUNC_DEMO1
    "DEMO2()", // CAM_FUNC_DEMO2
    "DEMO3()", // CAM_FUNC_DEMO3
    "DEMO4()", // CAM_FUNC_DEMO4
    "DEMO5()", // CAM_FUNC_DEMO5
    "DEMO6()", // CAM_FUNC_DEMO6
    "DEMO7()", // CAM_FUNC_DEMO7
    "DEMO8()", // CAM_FUNC_DEMO8
    "DEMO9()", // CAM_FUNC_DEMO9
    "SPEC0()", // CAM_FUNC_SPEC0
    "SPEC1()", // CAM_FUNC_SPEC1
    "SPEC2()", // CAM_FUNC_SPEC2
    "SPEC3()", // CAM_FUNC_SPEC3
    "SPEC4()", // CAM_FUNC_SPEC4
    "SPEC5()", // CAM_FUNC_SPEC5
    "SPEC6()", // CAM_FUNC_SPEC6
    "SPEC7()", // CAM_FUNC_SPEC7
    "SPEC8()", // CAM_FUNC_SPEC8
    "SPEC9()", // CAM_FUNC_SPEC9
    "",        "", "", "", "",
};
#endif

VecSph D_8011D658[] = {
    { 50.0f, 0xEE3A, 0xD558 },
    { 75.0f, 0x0000, 0x8008 },
    { 80.0f, 0xEE3A, 0x8008 },
    { 15.0f, 0xEE3A, 0x8008 },
};

Vec3f D_8011D678[] = {
    { 0.0f, 40.0f, 20.0f },
    { 0.0f, 40.0f, 0.0f },
    { 0.0f, 3.0f, -3.0f },
    { 0.0f, 3.0f, -3.0 },
};

PlayState* D_8015BD7C;

#if DEBUG_FEATURES
DebugCam D_8015BD80;
#endif

CollisionPoly* playerFloorPoly;
