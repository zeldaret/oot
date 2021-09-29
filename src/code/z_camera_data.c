#include "ultra64.h"
#include "global.h"

typedef struct {
    s16 val;
    s16 param;
} CameraModeValue;

typedef struct {
    s16 funcIdx;
    s16 valueCnt;
    CameraModeValue* values;
} CameraMode;

typedef struct {
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
s16 sOREGInit[] = {
    0,   1,   5,  5,  5,   14500, 20,  16, 150, 25,   150, 6,  10, 10, 0,  0,   1,     100,
    250, 120, 80, 30, 120, 4,     1,   50, 20,  1800, 50,  50, 50, 20, 20, -10, -5460, -9100,
    -6,  8,   15, 75, 60,  12,    110, 40, 50,  250,  -10, 30, 30, 70, 20, 20,  20,
};

s16 sOREGInitCnt = 53;

s16 sPREGInit[] = {
    -20, 200, 300, 10, 12, 10, 35, 60, 60, 3, 0, -40, 20, 25, 45, -5, 15, 15, 20, 0, 0, 0, 6, 60, 30, 0, 5,
};

s16 sPREGInitCnt = 27;

char sCameraSettingNames[][12] = {
    "NONE      ",  "NORMAL0    ", "NORMAL1    ", "DUNGEON0   ", "DUNGEON1   ", "NORMAL3    ", "HORSE0     ",
    "BOSS_GOMA  ", "BOSS_DODO  ", "BOSS_BARI  ", "BOSS_FGANON", "BOSS_BAL   ", "BOSS_SHADES", "BOSS_MOFA  ",
    "BOSS_TWIN0 ", "BOSS_TWIN1 ", "BOSS_GANON1", "BOSS_GANON2", "TOWER0     ", "TOWER1     ", "FIXED0     ",
    "FIXED1     ", "CIRCLE0    ", "CIRCLE2    ", "CIRCLE3    ", "PREREND0   ", "PREREND1   ", "PREREND3   ",
    "DOOR0      ", "DOORC      ", "RAIL3      ", "START0     ", "START1     ", "FREE0      ", "FREE2      ",
    "CIRCLE4    ", "CIRCLE5    ", "DEMO0      ", "DEMO1      ", "MORI1      ", "ITEM0      ", "ITEM1      ",
    "DEMO3      ", "DEMO4      ", "UFOBEAN    ", "LIFTBEAN   ", "SCENE0     ", "SCENE1     ", "HIDAN1     ",
    "HIDAN2     ", "MORI2      ", "MORI3      ", "TAKO       ", "SPOT05A    ", "SPOT05B    ", "HIDAN3     ",
    "ITEM2      ", "CIRCLE6    ", "NORMAL2    ", "FISHING    ", "DEMOC      ", "UO_FIBER   ", "DUNGEON2   ",
    "TEPPEN     ", "CIRCLE7    ", "NORMAL4    ",
};

char sCameraModeNames[][12] = {
    "NORMAL     ", "PARALLEL   ", "KEEPON     ", "TALK       ", "BATTLE     ", "CLIMB      ", "SUBJECT    ",
    "BOWARROW   ", "BOWARROWZ  ", "FOOKSHOT   ", "BOOMERANG  ", "PACHINCO   ", "CLIMBZ     ", "JUMP       ",
    "HANG       ", "HANGZ      ", "FREEFALL   ", "CHARGE     ", "STILL      ", "PUSHPULL   ", "BOOKEEPON  ",
};

/*=====================================================================
 *                   General Data: NORMAL0 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * NORMAL0    NORMAL    NORM1
 */
CameraModeValue D_8011A3A0[] = {
    { -20, CAM_DATA_Y_OFFSET },              // yOffset
    { 200, CAM_DATA_EYE_DIST },              // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 10, CAM_DATA_PITCH_TARGET },           // pitchtarget
    { 12, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 10, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_10
    { 35, CAM_DATA_MAX_YAW_UPDATE },         // unk_14
    { 60, CAM_DATA_FOV },                    // fovTarget
    { 60, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0003, CAM_DATA_FLAGS },
};

/**
 * Setting            Mode      Function
 * ---------------    ------    --------
 * NORMAL0            TARGET    PARA1
 * BOSS_GOHMA         TARGET    PARA1
 * BOSS_DODONGO       TARGET    PARA1
 * BOSS_BARINADE      TARGET    PARA1
 * BOSS_PHANTOM       TARGET    PARA1
 * BOSS_VOLVAGIA      TARGET    PARA1
 * BOSS_BONGO         TARGET    PARA1
 * BOSS_MORPHA        TARGET    PARA1
 * TWINROVA_PLATFORM  TARGET    PARA1
 * TWINROVA_FLOOR     TARGET    PARA1
 * BOSS_GANONDORF     TARGET    PARA1
 * BOSS_GANON        TARGET    PARA1
 * TOWER_CLIMB    TARGET    PARA1
 * TOWER1             TARGET    PARA1
 * CIRCLE3            TARGET    PARA1
 * NORMAL2            TARGET    PARA1
 * JABU_TENTICLE           TARGET    PARA1
 * TEPPEN             TARGET    PARA1
 * NORMAL4            TARGET    PARA1
 */
CameraModeValue D_8011A3C8[] = {
    { -20, CAM_DATA_Y_OFFSET },             // yOffset
    { 250, CAM_DATA_EYE_DIST },             // distTarget
    { 0, CAM_DATA_PITCH_TARGET },           // pitchTarget
    { 0, CAM_DATA_YAW_TARGET },             // yawTarget
    { 5, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_08
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_0C
    { 45, CAM_DATA_FOV },                   // fovTarget
    { 50, CAM_DATA_AT_LERP_STEP_SCALE },    // unk_14
    { 0x200A, CAM_DATA_FLAGS },
    { -40, CAM_DATA_GROUND_Y_OFFSET }, // unk_18
    { 20, 12 }                         // unk_1C
};

/**
 * Setting            Mode            Function
 * ---------------    ------------    --------
 * NORMAL0            FOLLOWTARGET    KEEP1
 * NORMAL3            FOLLOWTARGET    KEEP1
 * BOSS_GOHMA         FOLLOWTARGET    KEEP1
 * BOSS_DODONGO       FOLLOWTARGET    KEEP1
 * BOSS_BARINADE      FOLLOWTARGET    KEEP1
 * BOSS_PHANTOM       FOLLOWTARGET    KEEP1
 * BOSS_VOLVAGIA      FOLLOWTARGET    KEEP1
 * BOSS_BONGO         FOLLOWTARGET    KEEP1
 * BOSS_MORPHA        FOLLOWTARGET    KEEP1
 * TWINROVA_PLATFORM  FOLLOWTARGET    KEEP1
 * TWINROVA_FLOOR     FOLLOWTARGET    KEEP1
 * BOSS_GANONDORF     FOLLOWTARGET    KEEP1
 * BOSS_GANON        FOLLOWTARGET    KEEP1
 * TOWER_CLIMB    FOLLOWTARGET    KEEP1
 * TOWER1             FOLLOWTARGET    KEEP1
 * CIRCLE3            FOLLOWTARGET    KEEP1
 * UFOBEAN            FOLLOWTARGET    KEEP1
 * LIFTBEAN           FOLLOWTARGET    KEEP1
 * NORMAL2            FOLLOWTARGET    KEEP1
 * JABU_TENTICLE           FOLLOWTARGET    KEEP1
 * NORMAL4            FOLLOWTARGET    KEEP1
 */
CameraModeValue D_8011A3F4[] = {
    { -20, CAM_DATA_Y_OFFSET },          // unk_00
    { 120, CAM_DATA_EYE_DIST },          // unk_04
    { 140, CAM_DATA_EYE_DIST_NEXT },     // unk_08
    { 25, CAM_DATA_SWING_YAW_INIT },     // unk_0C
    { 45, CAM_DATA_SWING_YAW_FINAL },    // unk_10
    { -5, CAM_DATA_SWING_PITCH_INIT },   // unk_14
    { 15, CAM_DATA_SWING_PITCH_FINAL },  // unk_18
    { 15, CAM_DATA_SWING_PITCH_ADJ },    // unk_1C
    { 45, CAM_DATA_FOV },                // unk_20
    { 50, CAM_DATA_AT_LERP_STEP_SCALE }, // unk_24
    { 0x2001, CAM_DATA_FLAGS },
    { -50, CAM_DATA_GROUND_Y_OFFSET },          // unk_28
    { 30, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // unk_2C
};

/**
 * Setting            Mode    Function
 * ---------------    ----    --------
 * NORMAL0            TALK    KEEP3
 * NORMAL1            TALK    KEEP3
 * DUNGEON0           TALK    KEEP3
 * BOSS_GOHMA         TALK    KEEP3
 * BOSS_DODONGO       TALK    KEEP3
 * BOSS_BARINADE      TALK    KEEP3
 * BOSS_PHANTOM       TALK    KEEP3
 * BOSS_VOLVAGIA      TALK    KEEP3
 * BOSS_BONGO         TALK    KEEP3
 * BOSS_MORPHA        TALK    KEEP3
 * TWINROVA_PLATFORM  TALK    KEEP3
 * TWINROVA_FLOOR     TALK    KEEP3
 * BOSS_GANONDORF     TALK    KEEP3
 * BOSS_GANON        TALK    KEEP3
 * TOWER_CLIMB    TALK    KEEP3
 * TOWER1             TALK    KEEP3
 * CIRCLE3            TALK    KEEP3
 * UFOBEAN            TALK    KEEP3
 * LIFTBEAN           TALK    KEEP3
 * TAKO               TALK    KEEP3
 * NORMAL2            TALK    KEEP3
 * JABU_TENTICLE           TALK    KEEP3
 * DUNGEON2           TALK    KEEP3
 * CIRCLE7            TALK    KEEP3
 */
CameraModeValue D_8011A428[] = {
    { -30, CAM_DATA_Y_OFFSET },              // yOffset
    { 70, CAM_DATA_EYE_DIST },               // minDist
    { 200, CAM_DATA_EYE_DIST_NEXT },         // maxDist
    { 40, CAM_DATA_SWING_YAW_INIT },         // swingYawInitial
    { 10, CAM_DATA_SWING_YAW_FINAL },        // swingYawFinal
    { 0, CAM_DATA_SWING_PITCH_INIT },        // swingPitchInitial
    { 5, CAM_DATA_SWING_PITCH_FINAL },       // swingPitchFinal
    { 70, CAM_DATA_SWING_PITCH_ADJ },        // swingPitchAdj
    { 45, CAM_DATA_FOV },                    // fovTarget
    { 50, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 10, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // initTimer
    { 0x3500, CAM_DATA_FLAGS },
};

/**
 * Setting          Mode      Function
 * -------------    ------    --------
 * NORMAL0          BATTLE    BATT1
 * NORMAL3          BATTLE    BATT1
 * TOWER_CLIMB  BATTLE    BATT1
 * TOWER1           BATTLE    BATT1
 * TEPPEN           BATTLE    BATT1
 */
CameraModeValue D_8011A458[] = {
    { -20, CAM_DATA_Y_OFFSET },          // yOffset (PCT)
    { 180, CAM_DATA_EYE_DIST },          // distance
    { 10, CAM_DATA_SWING_YAW_INIT },     // swingYawInitial
    { 80, CAM_DATA_SWING_YAW_FINAL },    // swingYawFinal
    { 0, CAM_DATA_SWING_PITCH_INIT },    // swingPitchInitial
    { 10, CAM_DATA_SWING_PITCH_FINAL },  // swingPitchFinal
    { 25, CAM_DATA_SWING_PITCH_ADJ },    // swingPitchAdj (PCT)
    { 50, CAM_DATA_FOV },                // fov
    { 80, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleOnGround (PCT)
    { 0x2002, CAM_DATA_FLAGS },
    { -40, CAM_DATA_GROUND_Y_OFFSET },          // yOffsetOffGround (PCT)
    { 25, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // atLERPScaleOffGround (PCT)
};

/**
 * Setting            Mode     Function
 * ---------------    -----    --------
 * NORMAL0            CLIMB    JUMP2
 * NORMAL3            CLIMB    JUMP2
 * BOSS_GOHMA         CLIMB    JUMP2
 * BOSS_DODONGO       CLIMB    JUMP2
 * BOSS_BARINADE      CLIMB    JUMP2
 * BOSS_PHANTOM       CLIMB    JUMP2
 * BOSS_VOLVAGIA      CLIMB    JUMP2
 * BOSS_BONGO         CLIMB    JUMP2
 * BOSS_MORPHA        CLIMB    JUMP2
 * TWINROVA_PLATFORM  CLIMB    JUMP2
 * TWINROVA_FLOOR     CLIMB    JUMP2
 * BOSS_GANONDORF     CLIMB    JUMP2
 * BOSS_GANON        CLIMB    JUMP2
 * TOWER_CLIMB    CLIMB    JUMP2
 * TOWER1             CLIMB    JUMP2
 * CIRCLE3            CLIMB    JUMP2
 * UFOBEAN            CLIMB    JUMP2
 * LIFTBEAN           CLIMB    JUMP2
 * NORMAL2            CLIMB    JUMP2
 * JABU_TENTICLE           CLIMB    JUMP2
 * TEPPEN             CLIMB    JUMP2
 * NORMAL4            CLIMB    JUMP2
 */
CameraModeValue D_8011A488[] = {
    { -20, CAM_DATA_Y_OFFSET },             // atYOffset
    { 200, CAM_DATA_EYE_DIST },             // minDist
    { 300, CAM_DATA_EYE_DIST_NEXT },        // maxDist
    { 20, CAM_DATA_MIN_MAX_DIST_FACTOR },   // minMaxDistFactor
    { 5, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdRateTarget
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // xzUpdRateTarget
    { 60, CAM_DATA_FOV },                   // fovTarget
    { 40, CAM_DATA_AT_LERP_STEP_SCALE },    // atLERPStepScale
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting            Mode           Function
 * ---------------    -----------    --------
 * NORMAL0            FIRSTPERSON    SUBJ3
 * NORMAL1            FIRSTPERSON    SUBJ3
 * DUNGEON0           FIRSTPERSON    SUBJ3
 * DUNGEON1           FIRSTPERSON    SUBJ3
 * NORMAL3            FIRSTPERSON    SUBJ3
 * BOSS_GOHMA         FIRSTPERSON    SUBJ3
 * BOSS_DODONGO       FIRSTPERSON    SUBJ3
 * BOSS_BARINADE      FIRSTPERSON    SUBJ3
 * BOSS_PHANTOM       FIRSTPERSON    SUBJ3
 * BOSS_VOLVAGIA      FIRSTPERSON    SUBJ3
 * BOSS_BONGO         FIRSTPERSON    SUBJ3
 * BOSS_MORPHA        FIRSTPERSON    SUBJ3
 * TWINROVA_PLATFORM  FIRSTPERSON    SUBJ3
 * TWINROVA_FLOOR     FIRSTPERSON    SUBJ3
 * BOSS_GANONDORF     FIRSTPERSON    SUBJ3
 * BOSS_GANON        FIRSTPERSON    SUBJ3
 * TOWER_CLIMB    FIRSTPERSON    SUBJ3
 * TOWER1             FIRSTPERSON    SUBJ3
 * CIRCLE3            FIRSTPERSON    SUBJ3
 * UFOBEAN            FIRSTPERSON    SUBJ3
 * LIFTBEAN           FIRSTPERSON    SUBJ3
 * TAKO               FIRSTPERSON    SUBJ3
 * NORMAL2            FIRSTPERSON    SUBJ3
 * JABU_TENTICLE           FIRSTPERSON    SUBJ3
 * DUNGEON2           FIRSTPERSON    SUBJ3
 * TEPPEN             FIRSTPERSON    SUBJ3
 * CIRCLE7            FIRSTPERSON    SUBJ3
 * NORMAL4            FIRSTPERSON    SUBJ3
 */
CameraModeValue D_8011A4AC[] = {
    { 0, CAM_DATA_Y_OFFSET },                // eyeNextYOffset
    { 5, CAM_DATA_EYE_DIST },                // eyeDist
    { 50, CAM_DATA_EYE_DIST_NEXT },          // eyeNextDist
    { 10, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 0, CAM_DATA_AT_OFFSET_X },             // atOffset.x
    { 0, CAM_DATA_AT_OFFSET_Y },             // atOffset.y
    { 0, CAM_DATA_AT_OFFSET_Z },             // atOffset.z
    { 45, CAM_DATA_FOV },                    // fovTarget
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting            Mode        Function
 * ---------------    --------    --------
 * NORMAL0            BOWARROW    SUBJ3
 * NORMAL1            BOWARROW    SUBJ3
 * DUNGEON0           BOWARROW    SUBJ3
 * DUNGEON1           BOWARROW    SUBJ3
 * NORMAL3            BOWARROW    SUBJ3
 * BOSS_GOHMA         BOWARROW    SUBJ3
 * BOSS_DODONGO       BOWARROW    SUBJ3
 * BOSS_BARINADE      BOWARROW    SUBJ3
 * BOSS_PHANTOM       BOWARROW    SUBJ3
 * BOSS_VOLVAGIA      BOWARROW    SUBJ3
 * BOSS_BONGO         BOWARROW    SUBJ3
 * BOSS_MORPHA        BOWARROW    SUBJ3
 * TWINROVA_PLATFORM  BOWARROW    SUBJ3
 * TWINROVA_FLOOR     BOWARROW    SUBJ3
 * BOSS_GANONDORF     BOWARROW    SUBJ3
 * BOSS_GANON        BOWARROW    SUBJ3
 * TOWER_CLIMB    BOWARROW    SUBJ3
 * TOWER1             BOWARROW    SUBJ3
 * CIRCLE3            BOWARROW    SUBJ3
 * UFOBEAN            BOWARROW    SUBJ3
 * LIFTBEAN           BOWARROW    SUBJ3
 * TAKO               BOWARROW    SUBJ3
 * NORMAL2            BOWARROW    SUBJ3
 * JABU_TENTICLE           BOWARROW    SUBJ3
 * DUNGEON2           BOWARROW    SUBJ3
 * TEPPEN             BOWARROW    SUBJ3
 * CIRCLE7            BOWARROW    SUBJ3
 * NORMAL4            BOWARROW    SUBJ3
 */
CameraModeValue D_8011A4D0[] = {
    { -7, CAM_DATA_Y_OFFSET },               // eyeNextYOffset
    { 14, CAM_DATA_EYE_DIST },               // eyeDist
    { 50, CAM_DATA_EYE_DIST_NEXT },          // eyeNextDist
    { 10, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 0, CAM_DATA_AT_OFFSET_X },             // atOffset.x
    { -30, CAM_DATA_AT_OFFSET_Y },           // atOffset.y
    { -5, CAM_DATA_AT_OFFSET_Z },            // atOffset.z
    { 45, CAM_DATA_FOV },                    // fovTarget
    { 0x2000, CAM_DATA_FLAGS },
};

/**
 * Setting            Mode         Function
 * ---------------    ---------    --------
 * NORMAL0            BOWARROWZ    SUBJ3
 * NORMAL1            BOWARROWZ    SUBJ3
 * DUNGEON0           BOWARROWZ    SUBJ3
 * DUNGEON1           BOWARROWZ    SUBJ3
 * NORMAL3            BOWARROWZ    SUBJ3
 * HORSE             BOWARROWZ    SUBJ3
 * BOSS_GOHMA         BOWARROWZ    SUBJ3
 * BOSS_DODONGO       BOWARROWZ    SUBJ3
 * BOSS_BARINADE      BOWARROWZ    SUBJ3
 * BOSS_PHANTOM       BOWARROWZ    SUBJ3
 * BOSS_VOLVAGIA      BOWARROWZ    SUBJ3
 * BOSS_BONGO         BOWARROWZ    SUBJ3
 * BOSS_MORPHA        BOWARROWZ    SUBJ3
 * TWINROVA_PLATFORM  BOWARROWZ    SUBJ3
 * TWINROVA_FLOOR     BOWARROWZ    SUBJ3
 * BOSS_GANONDORF     BOWARROWZ    SUBJ3
 * BOSS_GANON        BOWARROWZ    SUBJ3
 * TOWER_CLIMB    BOWARROWZ    SUBJ3
 * TOWER1             BOWARROWZ    SUBJ3
 * CIRCLE3            BOWARROWZ    SUBJ3
 * UFOBEAN            BOWARROWZ    SUBJ3
 * LIFTBEAN           BOWARROWZ    SUBJ3
 * TAKO               BOWARROWZ    SUBJ3
 * NORMAL2            BOWARROWZ    SUBJ3
 * JABU_TENTICLE           BOWARROWZ    SUBJ3
 * DUNGEON2           BOWARROWZ    SUBJ3
 * TEPPEN             BOWARROWZ    SUBJ3
 * NORMAL4            BOWARROWZ    SUBJ3
 */
CameraModeValue D_8011A4F4[] = {
    { 20, CAM_DATA_Y_OFFSET },               // eyeNextYOffset
    { 70, CAM_DATA_EYE_DIST },               // eyeDist
    { 70, CAM_DATA_EYE_DIST_NEXT },          // eyeNextDist
    { 10, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { -120, CAM_DATA_AT_OFFSET_X },          // atOffset.x
    { 20, CAM_DATA_AT_OFFSET_Y },            // atOffset.y
    { 0, CAM_DATA_AT_OFFSET_Z },             // atOffset.z
    { 45, CAM_DATA_FOV },                    // fovTarget
    { 0x2000, CAM_DATA_FLAGS },
};

/**
 * Setting            Mode        Function
 * ---------------    --------    --------
 * NORMAL0            HOOKSHOT    SPEC5
 * NORMAL3            HOOKSHOT    SPEC5
 * BOSS_GOHMA         HOOKSHOT    SPEC5
 * BOSS_DODONGO       HOOKSHOT    SPEC5
 * BOSS_BARINADE      HOOKSHOT    SPEC5
 * BOSS_PHANTOM       HOOKSHOT    SPEC5
 * BOSS_VOLVAGIA      HOOKSHOT    SPEC5
 * BOSS_BONGO         HOOKSHOT    SPEC5
 * BOSS_MORPHA        HOOKSHOT    SPEC5
 * TWINROVA_PLATFORM  HOOKSHOT    SPEC5
 * TWINROVA_FLOOR     HOOKSHOT    SPEC5
 * BOSS_GANONDORF     HOOKSHOT    SPEC5
 * BOSS_GANON        HOOKSHOT    SPEC5
 * TOWER_CLIMB    HOOKSHOT    SPEC5
 * TOWER1             HOOKSHOT    SPEC5
 * CIRCLE3            HOOKSHOT    SPEC5
 * UFOBEAN            HOOKSHOT    SPEC5
 * LIFTBEAN           HOOKSHOT    SPEC5
 * NORMAL2            HOOKSHOT    SPEC5
 * JABU_TENTICLE           HOOKSHOT    SPEC5
 * TEPPEN             HOOKSHOT    SPEC5
 * CIRCLE7            HOOKSHOT    SPEC5
 * NORMAL4            HOOKSHOT    SPEC5
 */
CameraModeValue D_8011A518[] = {
    { -20, CAM_DATA_Y_OFFSET },          // yOffset
    { 80, CAM_DATA_EYE_DIST },           // eyeDist
    { 250, CAM_DATA_EYE_DIST_NEXT },     // minDistForRot
    { 45, CAM_DATA_PITCH_TARGET },       // timerInit
    { 60, CAM_DATA_FOV },                // pitch
    { 40, CAM_DATA_AT_LERP_STEP_SCALE }, // fovTarget
    { 6, CAM_DATA_UNK_22 },              // atMaxLERPScale
    { 0x2000, CAM_DATA_FLAGS },
};

/**
 * Setting            Mode         Function
 * ---------------    ---------    --------
 * NORMAL0            BOOMERANG    SUBJ3
 * NORMAL1            BOOMERANG    SUBJ3
 * DUNGEON0           BOOMERANG    SUBJ3
 * DUNGEON1           BOOMERANG    SUBJ3
 * BOSS_GOHMA         BOOMERANG    SUBJ3
 * BOSS_DODONGO       BOOMERANG    SUBJ3
 * BOSS_BARINADE      BOOMERANG    SUBJ3
 * BOSS_PHANTOM       BOOMERANG    SUBJ3
 * BOSS_VOLVAGIA      BOOMERANG    SUBJ3
 * BOSS_BONGO         BOOMERANG    SUBJ3
 * BOSS_MORPHA        BOOMERANG    SUBJ3
 * TWINROVA_PLATFORM  BOOMERANG    SUBJ3
 * TWINROVA_FLOOR     BOOMERANG    SUBJ3
 * BOSS_GANONDORF     BOOMERANG    SUBJ3
 * BOSS_GANON        BOOMERANG    SUBJ3
 * TOWER_CLIMB    BOOMERANG    SUBJ3
 * TOWER1             BOOMERANG    SUBJ3
 * CIRCLE3            BOOMERANG    SUBJ3
 * UFOBEAN            BOOMERANG    SUBJ3
 * LIFTBEAN           BOOMERANG    SUBJ3
 * TAKO               BOOMERANG    SUBJ3
 * NORMAL2            BOOMERANG    SUBJ3
 * JABU_TENTICLE           BOOMERANG    SUBJ3
 * DUNGEON2           BOOMERANG    SUBJ3
 * TEPPEN             BOOMERANG    SUBJ3
 * CIRCLE7            BOOMERANG    SUBJ3
 * NORMAL4            BOOMERANG    SUBJ3
 */
CameraModeValue D_8011A538[] = {
    { 5, CAM_DATA_Y_OFFSET },                // eyeNextYOffset
    { 50, CAM_DATA_EYE_DIST },               // eyeDist
    { 50, CAM_DATA_EYE_DIST_NEXT },          // eyeNextDist
    { 10, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 0, CAM_DATA_AT_OFFSET_X },             // atOffset.x
    { 0, CAM_DATA_AT_OFFSET_Y },             // atOffset.y
    { 0, CAM_DATA_AT_OFFSET_Z },             // atOffset.z
    { 45, CAM_DATA_FOV },                    // fovTarget
    { 0x2000, CAM_DATA_FLAGS },
};

/**
 * Setting            Mode         Function
 * ---------------    ---------    --------
 * NORMAL0            SLINGSHOT    SUBJ3
 * NORMAL1            SLINGSHOT    SUBJ3
 * DUNGEON0           SLINGSHOT    SUBJ3
 * DUNGEON1           SLINGSHOT    SUBJ3
 * BOSS_GOHMA         SLINGSHOT    SUBJ3
 * BOSS_DODONGO       SLINGSHOT    SUBJ3
 * BOSS_BARINADE      SLINGSHOT    SUBJ3
 * BOSS_PHANTOM       SLINGSHOT    SUBJ3
 * BOSS_VOLVAGIA      SLINGSHOT    SUBJ3
 * BOSS_BONGO         SLINGSHOT    SUBJ3
 * BOSS_MORPHA        SLINGSHOT    SUBJ3
 * TWINROVA_PLATFORM  SLINGSHOT    SUBJ3
 * TWINROVA_FLOOR     SLINGSHOT    SUBJ3
 * BOSS_GANONDORF     SLINGSHOT    SUBJ3
 * BOSS_GANON        SLINGSHOT    SUBJ3
 * TOWER_CLIMB    SLINGSHOT    SUBJ3
 * TOWER1             SLINGSHOT    SUBJ3
 * CIRCLE3            SLINGSHOT    SUBJ3
 * UFOBEAN            SLINGSHOT    SUBJ3
 * LIFTBEAN           SLINGSHOT    SUBJ3
 * TAKO               SLINGSHOT    SUBJ3
 * NORMAL2            SLINGSHOT    SUBJ3
 * JABU_TENTICLE           SLINGSHOT    SUBJ3
 * DUNGEON2           SLINGSHOT    SUBJ3
 * TEPPEN             SLINGSHOT    SUBJ3
 * CIRCLE7            SLINGSHOT    SUBJ3
 * NORMAL4            SLINGSHOT    SUBJ3
 */
CameraModeValue D_8011A55C[] = {
    { -7, CAM_DATA_Y_OFFSET },               // eyeNextYOffset
    { 14, CAM_DATA_EYE_DIST },               // eyeDist
    { 50, CAM_DATA_EYE_DIST_NEXT },          // eyeNextDist
    { 10, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { -9, CAM_DATA_AT_OFFSET_X },            // atOffset.x
    { -63, CAM_DATA_AT_OFFSET_Y },           // atOffset.y
    { -30, CAM_DATA_AT_OFFSET_Z },           // atOffset.z
    { 45, CAM_DATA_FOV },                    // fovTarget
    { 0x2000, CAM_DATA_FLAGS },
};

/**
 * Setting            Mode      Function
 * ---------------    ------    --------
 * NORMAL0            CLIMBZ    JUMP2
 * NORMAL3            CLIMBZ    JUMP2
 * BOSS_GOHMA         CLIMBZ    JUMP2
 * BOSS_DODONGO       CLIMBZ    JUMP2
 * BOSS_BARINADE      CLIMBZ    JUMP2
 * BOSS_PHANTOM       CLIMBZ    JUMP2
 * BOSS_VOLVAGIA      CLIMBZ    JUMP2
 * BOSS_BONGO         CLIMBZ    JUMP2
 * BOSS_MORPHA        CLIMBZ    JUMP2
 * TWINROVA_PLATFORM  CLIMBZ    JUMP2
 * TWINROVA_FLOOR     CLIMBZ    JUMP2
 * BOSS_GANONDORF     CLIMBZ    JUMP2
 * BOSS_GANON        CLIMBZ    JUMP2
 * TOWER_CLIMB    CLIMBZ    JUMP2
 * TOWER1             CLIMBZ    JUMP2
 * CIRCLE3            CLIMBZ    JUMP2
 * UFOBEAN            CLIMBZ    JUMP2
 * LIFTBEAN           CLIMBZ    JUMP2
 * NORMAL2            CLIMBZ    JUMP2
 * JABU_TENTICLE           CLIMBZ    JUMP2
 * TEPPEN             CLIMBZ    JUMP2
 * NORMAL4            CLIMBZ    JUMP2
 */
CameraModeValue D_8011A580[] = {
    { -20, CAM_DATA_Y_OFFSET },               // atYOffset
    { 200, CAM_DATA_EYE_DIST },               // minDist
    { 300, CAM_DATA_EYE_DIST_NEXT },          // maxDist
    { 20, CAM_DATA_MIN_MAX_DIST_FACTOR },     // minMaxDistFactor
    { 999, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdRateTarget
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },    // xzUpdRateTarget
    { 60, CAM_DATA_FOV },                     // fovTarget
    { 40, CAM_DATA_AT_LERP_STEP_SCALE },      // atLERPStepScale
    { 0x2006, CAM_DATA_FLAGS },
};

/**
 * Setting            Mode        Function
 * ---------------    --------    --------
 * NORMAL0            JUMP        JUMP1
 * NORMAL3            JUMP        JUMP1
 * NORMAL3            FREEFALL    JUMP1
 * BOSS_GOHMA         JUMP        JUMP1
 * BOSS_GOHMA         FREEFALL    JUMP1
 * BOSS_DODONGO       JUMP        JUMP1
 * BOSS_DODONGO       FREEFALL    JUMP1
 * BOSS_BARINADE      JUMP        JUMP1
 * BOSS_BARINADE      FREEFALL    JUMP1
 * BOSS_PHANTOM       JUMP        JUMP1
 * BOSS_PHANTOM       FREEFALL    JUMP1
 * BOSS_VOLVAGIA      JUMP        JUMP1
 * BOSS_VOLVAGIA      FREEFALL    JUMP1
 * BOSS_MORPHA        JUMP        JUMP1
 * BOSS_MORPHA        FREEFALL    JUMP1
 * TWINROVA_PLATFORM  JUMP        JUMP1
 * TWINROVA_PLATFORM  FREEFALL    JUMP1
 * TWINROVA_FLOOR     JUMP        JUMP1
 * TWINROVA_FLOOR     FREEFALL    JUMP1
 * BOSS_GANONDORF     JUMP        JUMP1
 * BOSS_GANONDORF     FREEFALL    JUMP1
 * GANON2             JUMP        JUMP1
 * GANON2             FREEFALL    JUMP1
 * TOWER_CLIMB    FREEFALL    JUMP1
 * TOWER1             FREEFALL    JUMP1
 * UFOBEAN            FREEFALL    JUMP1
 * LIFTBEAN           FREEFALL    JUMP1
 * NORMAL2            JUMP        JUMP1
 * NORMAL2            FREEFALL    JUMP1
 * JABU_TENTICLE            JUMP        JUMP1
 * JABU_TENTICLE            FREEFALL    JUMP1
 * TEPPEN             JUMP        JUMP1
 * TEPPEN             FREEFALL    JUMP1
 * NORMAL4            JUMP        JUMP1
 * NORMAL4            FREEFALL    JUMP1
 */
CameraModeValue D_8011A5A4[] = {
    { -20, CAM_DATA_Y_OFFSET },              // atYOffset
    { 200, CAM_DATA_EYE_DIST },              // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 12, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateRateTarget
    { 35, CAM_DATA_MAX_YAW_UPDATE },         // maxYawUpdate
    { 60, CAM_DATA_FOV },                    // unk_14
    { 40, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting            Mode    Function
 * ---------------    ----    --------
 * NORMAL0            HANG    UNIQ1
 * NORMAL3            HANG    UNIQ1
 * BOSS_GOHMA         HANG    UNIQ1
 * BOSS_DODONGO       HANG    UNIQ1
 * BOSS_BARINADE      HANG    UNIQ1
 * BOSS_PHANTOM       HANG    UNIQ1
 * BOSS_VOLVAGIA      HANG    UNIQ1
 * BOSS_BONGO         HANG    UNIQ1
 * BOSS_MORPHA        HANG    UNIQ1
 * TWINROVA_PLATFORM  HANG    UNIQ1
 * TWINROVA_FLOOR     HANG    UNIQ1
 * BOSS_GANONDORF     HANG    UNIQ1
 * GANON2             HANG    UNIQ1
 * TOWER_CLIMB    HANG    UNIQ1
 * TOWER1             HANG    UNIQ1
 * NORMAL2            HANG    UNIQ1
 * JABU_TENTICLE            HANG    UNIQ1
 * TEPPEN             HANG    UNIQ1
 * NORMAL4            HANG    UNIQ1
 */
CameraModeValue D_8011A5C4[] = {
    { -80, CAM_DATA_Y_OFFSET },          // yOffset
    { 200, CAM_DATA_EYE_DIST },          // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 40, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 60, CAM_DATA_FOV },                // fovTarget
    { 10, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting            Mode     Function
 * ---------------    -----    --------
 * NORMAL0            HANGZ    UNIQ1
 * NORMAL3            HANGZ    UNIQ1
 * BOSS_GOHMA         HANGZ    UNIQ1
 * BOSS_DODONGO       HANGZ    UNIQ1
 * BOSS_BARINADE      HANGZ    UNIQ1
 * BOSS_PHANTOM       HANGZ    UNIQ1
 * BOSS_VOLVAGIA      HANGZ    UNIQ1
 * BOSS_BONGO         HANGZ    UNIQ1
 * BOSS_MORPHA        HANGZ    UNIQ1
 * TWINROVA_PLATFORM  HANGZ    UNIQ1
 * TWINROVA_FLOOR     HANGZ    UNIQ1
 * BOSS_GANONDORF     HANGZ    UNIQ1
 * GANON2             HANGZ    UNIQ1
 * TOWER_CLIMB    HANGZ    UNIQ1
 * TOWER1             HANGZ    UNIQ1
 * NORMAL2            HANGZ    UNIQ1
 * JABU_TENTICLE            HANGZ    UNIQ1
 * TEPPEN             HANGZ    UNIQ1
 * NORMAL4            HANGZ    UNIQ1
 */
CameraModeValue D_8011A5E0[] = {
    { -120, CAM_DATA_Y_OFFSET },         // yOffset
    { 300, CAM_DATA_EYE_DIST },          // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 70, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 45, CAM_DATA_FOV },                // fovTarget
    { 10, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x2000, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode        Function
 * -------    --------    --------
 * NORMAL0    FREEFALL    JUMP1
 */
CameraModeValue D_8011A5FC[] = {
    { -20, CAM_DATA_Y_OFFSET },              // atYOffset
    { 200, CAM_DATA_EYE_DIST },              // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 15, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateRateTarget
    { 80, CAM_DATA_MAX_YAW_UPDATE },         // maxYawUpdate
    { 60, CAM_DATA_FOV },                    // unk_14
    { 20, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting            Mode      Function
 * ---------------    ------    --------
 * NORMAL0            CHARGE    BATT4
 * NORMAL3            CHARGE    BATT4
 * BOSS_DODONGO       CHARGE    BATT4
 * BOSS_BARINADE      CHARGE    BATT4
 * BOSS_PHANTOM       CHARGE    BATT4
 * BOSS_VOLVAGIA      CHARGE    BATT4
 * BOSS_BONGO         CHARGE    BATT4
 * BOSS_MORPHA        CHARGE    BATT4
 * TWINROVA_PLATFORM  CHARGE    BATT4
 * TWINROVA_FLOOR     CHARGE    BATT4
 * GANON2             CHARGE    BATT4
 * TOWER_CLIMB    CHARGE    BATT4
 * TOWER1             CHARGE    BATT4
 * CIRCLE3            CHARGE    BATT4
 * UFOBEAN            CHARGE    BATT4
 * LIFTBEAN           CHARGE    BATT4
 * NORMAL2            CHARGE    BATT4
 * JABU_TENTICLE            CHARGE    BATT4
 * DUNGEON2           CHARGE    BATT4
 * TEPPEN             CHARGE    BATT4
 * NORMAL4            CHARGE    BATT4
 */
CameraModeValue D_8011A61C[] = {
    { -20, CAM_DATA_Y_OFFSET },             // yOffset
    { 300, CAM_DATA_EYE_DIST },             // rTarget
    { 50, CAM_DATA_PITCH_TARGET },          // pitchTarget
    { 2, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // lerpUpdateRate
    { 80, CAM_DATA_FOV },                   // fovTarget
    { 20, CAM_DATA_AT_LERP_STEP_SCALE },    // atLERPTarget
    { 0xF000, CAM_DATA_FLAGS },
};

/**
 * Setting            Mode     Function
 * ---------------    -----    --------
 * NORMAL0            STILL    NORM1
 * NORMAL3            STILL    NORM1
 * BOSS_GOHMA         STILL    NORM1
 * BOSS_DODONGO       STILL    NORM1
 * BOSS_BARINADE      STILL    NORM1
 * BOSS_PHANTOM       STILL    NORM1
 * BOSS_VOLVAGIA      STILL    NORM1
 * BOSS_BONGO         STILL    NORM1
 * BOSS_MORPHA        STILL    NORM1
 * TWINROVA_PLATFORM  STILL    NORM1
 * TWINROVA_FLOOR     STILL    NORM1
 * BOSS_GANONDORF     STILL    NORM1
 * GANON2             STILL    NORM1
 * TOWER_CLIMB    STILL    NORM1
 * TOWER1             STILL    NORM1
 * CIRCLE3            STILL    NORM1
 * NORMAL2            STILL    NORM1
 * JABU_TENTICLE            STILL    NORM1
 * TEPPEN             STILL    NORM1
 * NORMAL4            STILL    NORM1
 */
CameraModeValue D_8011A638[] = {
    { -20, CAM_DATA_Y_OFFSET },               // yOffset
    { 200, CAM_DATA_EYE_DIST },               // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },          // distMax
    { 10, CAM_DATA_PITCH_TARGET },            // pitchTarget
    { 100, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 10, CAM_DATA_XZ_UPDATE_RATE_TARGET },   // unk_10
    { 100, CAM_DATA_MAX_YAW_UPDATE },         // unk_14
    { 60, CAM_DATA_FOV },                     // fovTarget
    { 5, CAM_DATA_AT_LERP_STEP_SCALE },       // atLERPScaleMax
    { 0xF003, CAM_DATA_FLAGS },
};

/**
 * Setting            Mode        Function
 * ---------------    --------    --------
 * NORMAL0            PUSHPULL    PARA1
 * NORMAL1            PUSHPULL    PARA1
 * DUNGEON0           PUSHPULL    PARA1
 * NORMAL3            PUSHPULL    PARA1
 * BOSS_GOHMA         PUSHPULL    PARA1
 * BOSS_DODONGO       PUSHPULL    PARA1
 * BOSS_BARINADE      PUSHPULL    PARA1
 * BOSS_PHANTOM       PUSHPULL    PARA1
 * BOSS_VOLVAGIA      PUSHPULL    PARA1
 * BOSS_BONGO         PUSHPULL    PARA1
 * BOSS_MORPHA        PUSHPULL    PARA1
 * TWINROVA_PLATFORM  PUSHPULL    PARA1
 * TWINROVA_FLOOR     PUSHPULL    PARA1
 * BOSS_GANONDORF     PUSHPULL    PARA1
 * GANON2             PUSHPULL    PARA1
 * TOWER_CLIMB    PUSHPULL    PARA1
 * TOWER1             PUSHPULL    PARA1
 * CIRCLE3            PUSHPULL    PARA1
 * UFOBEAN            PUSHPULL    PARA1
 * LIFTBEAN           PUSHPULL    PARA1
 * TAKO               PUSHPULL    PARA1
 * NORMAL2            PUSHPULL    PARA1
 * JABU_TENTICLE            PUSHPULL    PARA1
 * TEPPEN             PUSHPULL    PARA1
 * NORMAL4            PUSHPULL    PARA1
 */
CameraModeValue D_8011A660[] = {
    { 0, CAM_DATA_Y_OFFSET },               // yOffset
    { 250, CAM_DATA_EYE_DIST },             // distTarget
    { 25, CAM_DATA_PITCH_TARGET },          // pitchTarget
    { 0, CAM_DATA_YAW_TARGET },             // yawTarget
    { 5, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_08
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_0C
    { 70, CAM_DATA_FOV },                   // fovTarget
    { 30, CAM_DATA_AT_LERP_STEP_SCALE },    // unk_14
    { 0x206A, CAM_DATA_FLAGS },
    { -20, CAM_DATA_GROUND_Y_OFFSET },          // unk_18
    { 30, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // unk_1C
};

/**
 * Setting            Mode           Function
 * ---------------    -----------    --------
 * NORMAL0            BOOMFOLLLOW    KEEP1
 * NORMAL1            BOOMFOLLLOW    KEEP1
 * DUNGEON0           BOOMFOLLLOW    KEEP1
 * DUNGEON1           BOOMFOLLLOW    KEEP1
 * NORMAL3            BOOMFOLLLOW    KEEP1
 * BOSS_GOHMA         BOOMFOLLLOW    KEEP1
 * BOSS_DODONGO       BOOMFOLLLOW    KEEP1
 * BOSS_BARINADE      BOOMFOLLLOW    KEEP1
 * BOSS_PHANTOM       BOOMFOLLLOW    KEEP1
 * BOSS_VOLVAGIA      BOOMFOLLLOW    KEEP1
 * BOSS_BONGO         BOOMFOLLLOW    KEEP1
 * BOSS_MORPHA        BOOMFOLLLOW    KEEP1
 * TWINROVA_PLATFORM  BOOMFOLLLOW    KEEP1
 * TWINROVA_FLOOR     BOOMFOLLLOW    KEEP1
 * BOSS_GANONDORF     BOOMFOLLLOW    KEEP1
 * GANON2             BOOMFOLLLOW    KEEP1
 * TOWER_CLIMB    BOOMFOLLLOW    KEEP1
 * TOWER1             BOOMFOLLLOW    KEEP1
 * CIRCLE3            BOOMFOLLLOW    KEEP1
 * UFOBEAN            BOOMFOLLLOW    KEEP1
 * LIFTBEAN           BOOMFOLLLOW    KEEP1
 * TAKO               BOOMFOLLLOW    KEEP1
 * NORMAL2            BOOMFOLLLOW    KEEP1
 * JABU_TENTICLE            BOOMFOLLLOW    KEEP1
 * DUNGEON2           BOOMFOLLLOW    KEEP1
 * TEPPEN             BOOMFOLLLOW    KEEP1
 * NORMAL4            BOOMFOLLLOW    KEEP1
 */
CameraModeValue D_8011A68C[] = {
    { -5, CAM_DATA_Y_OFFSET },           // unk_00
    { 120, CAM_DATA_EYE_DIST },          // unk_04
    { 140, CAM_DATA_EYE_DIST_NEXT },     // unk_08
    { 5, CAM_DATA_SWING_YAW_INIT },      // unk_0C
    { 85, CAM_DATA_SWING_YAW_FINAL },    // unk_10
    { 10, CAM_DATA_SWING_PITCH_INIT },   // unk_14
    { 5, CAM_DATA_SWING_PITCH_FINAL },   // unk_18
    { 25, CAM_DATA_SWING_PITCH_ADJ },    // unk_1C
    { 45, CAM_DATA_FOV },                // unk_20
    { 50, CAM_DATA_AT_LERP_STEP_SCALE }, // unk_24
    { 0x2001, CAM_DATA_FLAGS },
    { -15, CAM_DATA_GROUND_Y_OFFSET },          // unk_28
    { 30, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // unk_2C
};

/*=====================================================================
 *                   Custom Data: NORMAL1 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * NORMAL1    NORMAL    NORM1
 */
CameraModeValue sSetNorm1ModeNormVals[] = {
    { 0, CAM_DATA_Y_OFFSET },                // yOffset
    { 200, CAM_DATA_EYE_DIST },              // distMin
    { 400, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 10, CAM_DATA_PITCH_TARGET },           // pitchTarget
    { 12, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 20, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_10
    { 40, CAM_DATA_MAX_YAW_UPDATE },         // unk_14
    { 60, CAM_DATA_FOV },                    // fovTarget
    { 60, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0003, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * NORMAL1    TARGET    PARA1
 */
CameraModeValue sSetNorm1ModeParaVals[] = {
    { 0, CAM_DATA_Y_OFFSET },               // yOffset
    { 250, CAM_DATA_EYE_DIST },             // distTarget
    { 0, CAM_DATA_PITCH_TARGET },           // pitchTarget
    { 0, CAM_DATA_YAW_TARGET },             // yawTarget
    { 5, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_08
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_0C
    { 45, CAM_DATA_FOV },                   // fovTarget
    { 50, CAM_DATA_AT_LERP_STEP_SCALE },    // unk_14
    { 0x2002, CAM_DATA_FLAGS },
    { -40, CAM_DATA_GROUND_Y_OFFSET },          // unk_18
    { 20, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // unk_1C
};

/**
 * Setting     Mode            Function
 * --------    ------------    --------
 * NORMAL1     FOLLOWTARGET    KEEP1
 * DUNGEON1    FOLLOWTARGET    KEEP1
 */
CameraModeValue D_8011A714[] = {
    { -20, CAM_DATA_Y_OFFSET },          // unk_00
    { 120, CAM_DATA_EYE_DIST },          // unk_04
    { 140, CAM_DATA_EYE_DIST_NEXT },     // unk_08
    { 25, CAM_DATA_SWING_YAW_INIT },     // unk_0C
    { 45, CAM_DATA_SWING_YAW_FINAL },    // unk_10
    { -5, CAM_DATA_SWING_PITCH_INIT },   // unk_14
    { 15, CAM_DATA_SWING_PITCH_FINAL },  // unk_18
    { 15, CAM_DATA_SWING_PITCH_ADJ },    // unk_1C
    { 45, CAM_DATA_FOV },                // unk_20
    { 50, CAM_DATA_AT_LERP_STEP_SCALE }, // unk_24
    { 0x2001, CAM_DATA_FLAGS },
    { -50, CAM_DATA_GROUND_Y_OFFSET },          // unk_28
    { 20, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // unk_2C
};

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * NORMAL1     BATTLE    BATT1
 * CIRCLE3     BATTLE    BATT1
 * UFOBEAN     BATTLE    BATT1
 * LIFTBEAN    BATTLE    BATT1
 * NORMAL2     BATTLE    BATT1
 * NORMAL4     BATTLE    BATT1
 */
CameraModeValue D_8011A748[] = {
    { -20, CAM_DATA_Y_OFFSET },          // yOffset (PCT)
    { 250, CAM_DATA_EYE_DIST },          // distance
    { 10, CAM_DATA_SWING_YAW_INIT },     // swingYawInitial
    { 80, CAM_DATA_SWING_YAW_FINAL },    // swingYawFinal
    { 0, CAM_DATA_SWING_PITCH_INIT },    // swingPitchInitial
    { 10, CAM_DATA_SWING_PITCH_FINAL },  // swingPitchFinal
    { 25, CAM_DATA_SWING_PITCH_ADJ },    // swingPitchAdj (PCT)
    { 50, CAM_DATA_FOV },                // fov
    { 65, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleOnGround (PCT)
    { 0x2002, CAM_DATA_FLAGS },
    { -40, CAM_DATA_GROUND_Y_OFFSET },          // yOffsetOffGround (PCT)
    { 25, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // atLERPScaleOffGround (PCT)
};

/**
 * Setting     Mode        Function
 * --------    --------    --------
 * NORMAL1     HOOKSHOT    SPEC5
 * DUNGEON0    HOOKSHOT    SPEC5
 * DUNGEON1    HOOKSHOT    SPEC5
 * TAKO        HOOKSHOT    SPEC5
 * DUNGEON2    HOOKSHOT    SPEC5
 */
CameraModeValue D_8011A778[] = {
    { -20, CAM_DATA_Y_OFFSET },          // yOffset
    { 80, CAM_DATA_EYE_DIST },           // eyeDist
    { 250, CAM_DATA_EYE_DIST_NEXT },     // minDistForRot
    { 6, CAM_DATA_UNK_22 },              // timerInit
    { 45, CAM_DATA_PITCH_TARGET },       // pitch
    { 60, CAM_DATA_FOV },                // fovTarget
    { 40, CAM_DATA_AT_LERP_STEP_SCALE }, // atMaxLERPScale
    { 0x2000, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode    Function
 * -------    ----    --------
 * NORMAL1    JUMP    JUMP1
 */
CameraModeValue D_8011A798[] = {
    { 0, CAM_DATA_Y_OFFSET },                // atYOffset
    { 250, CAM_DATA_EYE_DIST },              // distMin
    { 400, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 15, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateRateTarget
    { 50, CAM_DATA_MAX_YAW_UPDATE },         // maxYawUpdate
    { 60, CAM_DATA_FOV },                    // unk_14
    { 30, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode        Function
 * -------    --------    --------
 * NORMAL1    FREEFALL    JUMP1
 */
CameraModeValue D_8011A7B8[] = {
    { 0, CAM_DATA_Y_OFFSET },                // atYOffset
    { 200, CAM_DATA_EYE_DIST },              // distMin
    { 400, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 30, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateRateTarget
    { 80, CAM_DATA_MAX_YAW_UPDATE },         // maxYawUpdate
    { 60, CAM_DATA_FOV },                    // unk_14
    { 20, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode     Function
 * -------    -----    --------
 * NORMAL1    CLIMB    JUMP2
 */
CameraModeValue D_8011A7D8[] = {
    { -20, CAM_DATA_Y_OFFSET },             // atYOffset
    { 200, CAM_DATA_EYE_DIST },             // minDist
    { 400, CAM_DATA_EYE_DIST_NEXT },        // maxDist
    { 20, CAM_DATA_MIN_MAX_DIST_FACTOR },   // minMaxDistFactor
    { 5, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdRateTarget
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // xzUpdRateTarget
    { 60, CAM_DATA_FOV },                   // fovTarget
    { 40, CAM_DATA_AT_LERP_STEP_SCALE },    // atLERPStepScale
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * NORMAL1    CLIMBZ    JUMP2
 */
CameraModeValue D_8011A7FC[] = {
    { -20, CAM_DATA_Y_OFFSET },               // atYOffset
    { 250, CAM_DATA_EYE_DIST },               // minDist
    { 400, CAM_DATA_EYE_DIST_NEXT },          // maxDist
    { 20, CAM_DATA_MIN_MAX_DIST_FACTOR },     // minMaxDistFactor
    { 999, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdRateTarget
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },    // xzUpdRateTarget
    { 60, CAM_DATA_FOV },                     // fovTarget
    { 40, CAM_DATA_AT_LERP_STEP_SCALE },      // atLERPStepScale
    { 0x2006, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * NORMAL1    CHARGE    BATT4
 */
CameraModeValue D_8011A820[] = {
    { 0, CAM_DATA_Y_OFFSET },               // yOffset
    { 300, CAM_DATA_EYE_DIST },             // rTarget
    { 50, CAM_DATA_PITCH_TARGET },          // pitchTarget
    { 2, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // lerpUpdateRate
    { 80, CAM_DATA_FOV },                   // fovTarget
    { 20, CAM_DATA_AT_LERP_STEP_SCALE },    // atLERPTarget
    { 0xF000, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode    Function
 * -------    ----    --------
 * NORMAL1    HANG    UNIQ1
 */
CameraModeValue D_8011A83C[] = {
    { -80, CAM_DATA_Y_OFFSET },          // yOffset
    { 200, CAM_DATA_EYE_DIST },          // distMin
    { 400, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 40, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 60, CAM_DATA_FOV },                // fovTarget
    { 10, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode     Function
 * -------    -----    --------
 * NORMAL1    HANGZ    UNIQ1
 */
CameraModeValue D_8011A858[] = {
    { -120, CAM_DATA_Y_OFFSET },         // yOffset
    { 400, CAM_DATA_EYE_DIST },          // distMin
    { 400, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 70, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 45, CAM_DATA_FOV },                // fovTarget
    { 10, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x2000, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode     Function
 * -------    -----    --------
 * NORMAL1    STILL    NORM1
 */
CameraModeValue D_8011A874[] = {
    { 0, CAM_DATA_Y_OFFSET },                 // yOffset
    { 200, CAM_DATA_EYE_DIST },               // distMin
    { 400, CAM_DATA_EYE_DIST_NEXT },          // distMax
    { 10, CAM_DATA_PITCH_TARGET },            // pitchTarget
    { 100, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 20, CAM_DATA_XZ_UPDATE_RATE_TARGET },   // unk_10
    { 100, CAM_DATA_MAX_YAW_UPDATE },         // unk_14
    { 60, CAM_DATA_FOV },                     // fovTarget
    { 5, CAM_DATA_AT_LERP_STEP_SCALE },       // atLERPScaleMax
    { 0xF003, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: DUNGEON0 Setting
 *=====================================================================
 */

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * DUNGEON0    NORMAL    NORM1
 */
CameraModeValue D_8011A89C[] = {
    { -10, CAM_DATA_Y_OFFSET },              // yOffset
    { 150, CAM_DATA_EYE_DIST },              // distMin
    { 250, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 5, CAM_DATA_PITCH_TARGET },            // pitchTarget
    { 10, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },   // unk_10
    { 30, CAM_DATA_MAX_YAW_UPDATE },         // unk_14
    { 60, CAM_DATA_FOV },                    // fovTarget
    { 60, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0003, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * DUNGEON0    TARGET    PARA1
 * DUNGEON1    TARGET    PARA1
 * TAKO        TARGET    PARA1
 */
CameraModeValue D_8011A8C4[] = {
    { -20, CAM_DATA_Y_OFFSET },             // yOffset
    { 150, CAM_DATA_EYE_DIST },             // distTarget
    { 0, CAM_DATA_PITCH_TARGET },           // pitchTarget
    { 0, CAM_DATA_YAW_TARGET },             // yawTarget
    { 5, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_08
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_0C
    { 45, CAM_DATA_FOV },                   // fovTarget
    { 50, CAM_DATA_AT_LERP_STEP_SCALE },    // unk_14
    { 0x200A, CAM_DATA_FLAGS },
    { -40, CAM_DATA_GROUND_Y_OFFSET },          // unk_18
    { 20, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // unk_1C
};

/**
 * Setting     Mode            Function
 * --------    ------------    --------
 * DUNGEON0    FOLLOWTARGET    KEEP1
 * TAKO        FOLLOWTARGET    KEEP1
 * DUNGEON2    FOLLOWTARGET    KEEP1
 */
CameraModeValue D_8011A8F0[] = {
    { -20, CAM_DATA_Y_OFFSET },          // unk_00
    { 120, CAM_DATA_EYE_DIST },          // unk_04
    { 140, CAM_DATA_EYE_DIST_NEXT },     // unk_08
    { 25, CAM_DATA_SWING_YAW_INIT },     // unk_0C
    { 45, CAM_DATA_SWING_YAW_FINAL },    // unk_10
    { -5, CAM_DATA_SWING_PITCH_INIT },   // unk_14
    { 15, CAM_DATA_SWING_PITCH_FINAL },  // unk_18
    { 15, CAM_DATA_SWING_PITCH_ADJ },    // unk_1C
    { 45, CAM_DATA_FOV },                // unk_20
    { 50, CAM_DATA_AT_LERP_STEP_SCALE }, // unk_24
    { 0x2001, CAM_DATA_FLAGS },
    { -40, CAM_DATA_GROUND_Y_OFFSET },          // unk_28
    { 20, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // unk_2C
};

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * DUNGEON0    BATTLE    BATT1
 * DUNGEON1    BATTLE    BATT1
 */
CameraModeValue D_8011A924[] = {
    { -20, CAM_DATA_Y_OFFSET },          // yOffset (PCT)
    { 180, CAM_DATA_EYE_DIST },          // distance
    { 10, CAM_DATA_SWING_YAW_INIT },     // swingYawInitial
    { 80, CAM_DATA_SWING_YAW_FINAL },    // swingYawFinal
    { 0, CAM_DATA_SWING_PITCH_INIT },    // swingPitchInitial
    { 10, CAM_DATA_SWING_PITCH_FINAL },  // swingPitchFinal
    { 25, CAM_DATA_SWING_PITCH_ADJ },    // swingPitchAdj (PCT)
    { 45, CAM_DATA_FOV },                // fov
    { 80, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleOnGround (PCT)
    { 0x2002, CAM_DATA_FLAGS },
    { -40, CAM_DATA_GROUND_Y_OFFSET },          // yOffsetOffGround (PCT)
    { 25, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // atLERPScaleOnGround (PCT)
};

/**
 * Setting     Mode    Function
 * --------    ----    --------
 * DUNGEON0    JUMP    JUMP1
 * TAKO        JUMP    JUMP1
 */
CameraModeValue D_8011A954[] = {
    { -10, CAM_DATA_Y_OFFSET },              // atYOffset
    { 150, CAM_DATA_EYE_DIST },              // distMin
    { 250, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 10, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateRateTarget
    { 50, CAM_DATA_MAX_YAW_UPDATE },         // maxYawUpdate
    { 60, CAM_DATA_FOV },                    // unk_14
    { 40, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode        Function
 * --------    --------    --------
 * DUNGEON0    FREEFALL    JUMP1
 * TAKO        FREEFALL    JUMP1
 */
CameraModeValue D_8011A974[] = {
    { -10, CAM_DATA_Y_OFFSET },              // atYOffset
    { 150, CAM_DATA_EYE_DIST },              // distMin
    { 250, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 10, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateRateTarget
    { 80, CAM_DATA_MAX_YAW_UPDATE },         // maxYawUpdate
    { 60, CAM_DATA_FOV },                    // unk_14
    { 20, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode     Function
 * --------    -----    --------
 * DUNGEON0    CLIMB    JUMP2
 * TAKO        CLIMB    JUMP2
 */
CameraModeValue D_8011A994[] = {
    { -40, CAM_DATA_Y_OFFSET },             // atYOffset
    { 150, CAM_DATA_EYE_DIST },             // minDist
    { 250, CAM_DATA_EYE_DIST_NEXT },        // maxDist
    { 20, CAM_DATA_MIN_MAX_DIST_FACTOR },   // minMaxDistFactor
    { 5, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdRateTarget
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // xzUpdRateTarget
    { 60, CAM_DATA_FOV },                   // fovTarget
    { 40, CAM_DATA_AT_LERP_STEP_SCALE },    // atLERPStepScale
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * DUNGEON0    CLIMBZ    JUMP2
 * TAKO        CLIMBZ    JUMP2
 */
CameraModeValue D_8011A9B8[] = {
    { -40, CAM_DATA_Y_OFFSET },               // atYOffset
    { 250, CAM_DATA_EYE_DIST },               // minDist
    { 250, CAM_DATA_EYE_DIST_NEXT },          // maxDist
    { 20, CAM_DATA_MIN_MAX_DIST_FACTOR },     // minMaxDistFactor
    { 999, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdRateTarget
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },    // xzUpdRateTarget
    { 60, CAM_DATA_FOV },                     // fovTarget
    { 40, CAM_DATA_AT_LERP_STEP_SCALE },      // atLERPStepScale
    { 0x2006, CAM_DATA_FLAGS },
};

/**
 * Setting       Mode      Function
 * ----------    ------    --------
 * DUNGEON0      CHARGE    BATT4
 * BOSS_GOHMA    CHARGE    BATT4
 * TAKO          CHARGE    BATT4
 */
CameraModeValue D_8011A9DC[] = {
    { -10, CAM_DATA_Y_OFFSET },             // yOffset
    { 300, CAM_DATA_EYE_DIST },             // rTarget
    { 50, CAM_DATA_PITCH_TARGET },          // pitchTarget
    { 2, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // lerpUpdateRate
    { 80, CAM_DATA_FOV },                   // fovTarget
    { 20, CAM_DATA_AT_LERP_STEP_SCALE },    // atLERPTarget
    { 0xF000, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode    Function
 * --------    ----    --------
 * DUNGEON0    HANG    UNIQ1
 * TAKO        HANG    UNIQ1
 */
CameraModeValue D_8011A9F8[] = {
    { -80, CAM_DATA_Y_OFFSET },          // yOffset
    { 150, CAM_DATA_EYE_DIST },          // distMin
    { 250, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 40, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 60, CAM_DATA_FOV },                // fovTarget
    { 10, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode     Function
 * --------    -----    --------
 * DUNGEON0    HANGZ    UNIQ1
 * TAKO        HANGZ    UNIQ1
 */
CameraModeValue D_8011AA14[] = {
    { -120, CAM_DATA_Y_OFFSET },         // yOffset
    { 250, CAM_DATA_EYE_DIST },          // distMin
    { 250, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 70, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 45, CAM_DATA_FOV },                // fovTarget
    { 10, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x2000, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode     Function
 * --------    -----    --------
 * DUNGEON0    STILL    NORM1
 */
CameraModeValue D_8011AA30[] = {
    { -10, CAM_DATA_Y_OFFSET },               // yOffset
    { 150, CAM_DATA_EYE_DIST },               // distMin
    { 250, CAM_DATA_EYE_DIST_NEXT },          // distMax
    { 5, CAM_DATA_PITCH_TARGET },             // pitchTarget
    { 100, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },    // unk_10
    { 100, CAM_DATA_MAX_YAW_UPDATE },         // unk_14
    { 60, CAM_DATA_FOV },                     // fovTarget
    { 5, CAM_DATA_AT_LERP_STEP_SCALE },       // atLERPScaleMax
    { 0xF003, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: DUNGEON1 Setting
 *=====================================================================
 */

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * DUNGEON1    NORMAL    NORM1
 */
CameraModeValue D_8011AA58[] = {
    { -40, CAM_DATA_Y_OFFSET },              // yOffset
    { 150, CAM_DATA_EYE_DIST },              // distMin
    { 150, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 0, CAM_DATA_PITCH_TARGET },            // pitchTarget
    { 10, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },   // unk_10
    { 30, CAM_DATA_MAX_YAW_UPDATE },         // unk_14
    { 60, CAM_DATA_FOV },                    // fovTarget
    { 60, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0003, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode    Function
 * --------    ----    --------
 * DUNGEON1    TALK    KEEP3
 */
CameraModeValue D_8011AA80[] = {
    { -20, CAM_DATA_Y_OFFSET },              // yOffset
    { 70, CAM_DATA_EYE_DIST },               // minDist
    { 200, CAM_DATA_EYE_DIST_NEXT },         // maxDist
    { 40, CAM_DATA_SWING_YAW_INIT },         // swingYawInitial
    { 10, CAM_DATA_SWING_YAW_FINAL },        // swingYawFinal
    { 0, CAM_DATA_SWING_PITCH_INIT },        // swingPitchInitial
    { 5, CAM_DATA_SWING_PITCH_FINAL },       // swingPitchFinal
    { 70, CAM_DATA_SWING_PITCH_ADJ },        // swingPitchAdj
    { 45, CAM_DATA_FOV },                    // fovTarget
    { 50, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 10, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // initTimer
    { 0x3500, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode    Function
 * --------    ----    --------
 * DUNGEON1    JUMP    JUMP1
 */
CameraModeValue D_8011AAB0[] = {
    { -40, CAM_DATA_Y_OFFSET },              // atYOffset
    { 150, CAM_DATA_EYE_DIST },              // distMin
    { 150, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 10, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateRateTarget
    { 50, CAM_DATA_MAX_YAW_UPDATE },         // maxYawUpdate
    { 60, CAM_DATA_FOV },                    // unk_14
    { 40, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode        Function
 * --------    --------    --------
 * DUNGEON1    FREEFALL    JUMP1
 */
CameraModeValue D_8011AAD0[] = {
    { -40, CAM_DATA_Y_OFFSET },              // atYOffset
    { 150, CAM_DATA_EYE_DIST },              // distMin
    { 180, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 12, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateRateTarget
    { 80, CAM_DATA_MAX_YAW_UPDATE },         // maxYawUpdate
    { 60, CAM_DATA_FOV },                    // unk_14
    { 20, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode     Function
 * --------    -----    --------
 * DUNGEON1    CLIMB    JUMP2
 */
CameraModeValue D_8011AAF0[] = {
    { -40, CAM_DATA_Y_OFFSET },             // atYOffset
    { 150, CAM_DATA_EYE_DIST },             // minDist
    { 150, CAM_DATA_EYE_DIST_NEXT },        // maxDist
    { 20, CAM_DATA_MIN_MAX_DIST_FACTOR },   // minMaxDistFactor
    { 5, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdRateTarget
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // xzUpdRateTarget
    { 60, CAM_DATA_FOV },                   // fovTarget
    { 40, CAM_DATA_AT_LERP_STEP_SCALE },    // atLERPStepScale
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * DUNGEON1    CLIMBZ    JUMP2
 */
CameraModeValue D_8011AB14[] = {
    { -40, CAM_DATA_Y_OFFSET },               // atYOffset
    { 150, CAM_DATA_EYE_DIST },               // minDist
    { 150, CAM_DATA_EYE_DIST_NEXT },          // maxDist
    { 20, CAM_DATA_MIN_MAX_DIST_FACTOR },     // minMaxDistFactor
    { 999, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdRateTarget
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },    // xzUpdRateTarget
    { 60, CAM_DATA_FOV },                     // fovTarget
    { 40, CAM_DATA_AT_LERP_STEP_SCALE },      // atLERPStepScale
    { 0x2006, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * DUNGEON1    CHARGE    BATT4
 */
CameraModeValue D_8011AB38[] = {
    { -40, CAM_DATA_Y_OFFSET },             // yOffset
    { 200, CAM_DATA_EYE_DIST },             // rTarget
    { 50, CAM_DATA_PITCH_TARGET },          // pitchTarget
    { 2, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // lerpUpdateRate
    { 80, CAM_DATA_FOV },                   // fovTarget
    { 20, CAM_DATA_AT_LERP_STEP_SCALE },    // atLERPTarget
    { 0xF000, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode    Function
 * --------    ----    --------
 * DUNGEON1    HANG    UNIQ1
 */
CameraModeValue D_8011AB54[] = {
    { -80, CAM_DATA_Y_OFFSET },          // yOffset */
    { 150, CAM_DATA_EYE_DIST },          // distMin */
    { 150, CAM_DATA_EYE_DIST_NEXT },     // distMax */
    { 40, CAM_DATA_PITCH_TARGET },       // pitchTarget */
    { 60, CAM_DATA_FOV },                // fovTarget */
    { 10, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax */
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode     Function
 * --------    -----    --------
 * DUNGEON1    HANGZ    UNIQ1
 */
CameraModeValue D_8011AB70[] = {
    { -120, CAM_DATA_Y_OFFSET },         // yOffset
    { 150, CAM_DATA_EYE_DIST },          // distMin
    { 150, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 70, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 45, CAM_DATA_FOV },                // fovTarget
    { 10, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x2000, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode     Function
 * --------    -----    --------
 * DUNGEON1    STILL    NORM1
 */
CameraModeValue D_8011AB8C[] = {
    { -40, CAM_DATA_Y_OFFSET },               // yOffset
    { 150, CAM_DATA_EYE_DIST },               // distMin
    { 150, CAM_DATA_EYE_DIST_NEXT },          // distMax
    { 0, CAM_DATA_PITCH_TARGET },             // pitchTarget
    { 100, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },    // unk_10
    { 100, CAM_DATA_MAX_YAW_UPDATE },         // unk_14
    { 60, CAM_DATA_FOV },                     // fovTarget
    { 5, CAM_DATA_AT_LERP_STEP_SCALE },       // atLERPScaleMax
    { 0xF003, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode        Function
 * --------    --------    --------
 * DUNGEON1    PUSHPULL    PARA1
 */
CameraModeValue D_8011ABB4[] = {
    { -40, CAM_DATA_Y_OFFSET },             // yOffset
    { 180, CAM_DATA_EYE_DIST },             // distTarget
    { 25, CAM_DATA_PITCH_TARGET },          // pitchTarget
    { 0, CAM_DATA_YAW_TARGET },             // yawTarget
    { 5, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_08
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_0C
    { 60, CAM_DATA_FOV },                   // fovTarget
    { 50, CAM_DATA_AT_LERP_STEP_SCALE },    // unk_14
    { 0x206A, CAM_DATA_FLAGS },
    { -20, CAM_DATA_GROUND_Y_OFFSET },          // unk_18
    { 30, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // unk_1C
};

/*=====================================================================
 *                   Custom Data: NORMAL3 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * NORMAL3    NORMAL    JUMP3
 */
CameraModeValue sSetNorm3ModeNormVals[] = {
    { -20, CAM_DATA_Y_OFFSET },              // yOffset
    { 280, CAM_DATA_EYE_DIST },              // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 20, CAM_DATA_PITCH_TARGET },           // pitchTarget
    { 15, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // swingUpdateRate
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },   // unk_10
    { 40, CAM_DATA_MAX_YAW_UPDATE },         // unk_14
    { 60, CAM_DATA_FOV },                    // fovTarget
    { 100, CAM_DATA_AT_LERP_STEP_SCALE },    // unk_1C
    { 0x0004, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * NORMAL3    TARGET    PARA1
 */
CameraModeValue D_8011AC08[] = {
    { -50, CAM_DATA_Y_OFFSET },              // yOffset
    { 250, CAM_DATA_EYE_DIST },              // distTarget
    { 70, CAM_DATA_PITCH_TARGET },           // pitchTarget
    { 0, CAM_DATA_YAW_TARGET },              // yawTarget
    { 15, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_08
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },   // unk_0C
    { 60, CAM_DATA_FOV },                    // fovTarget
    { 100, CAM_DATA_AT_LERP_STEP_SCALE },    // unk_14
    { 0x200A, CAM_DATA_FLAGS },
    { -50, CAM_DATA_GROUND_Y_OFFSET },          // unk_18
    { 20, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // unk_1C
};

/**
 * Setting    Mode    Function
 * -------    ----    --------
 * NORMAL3    TALK    KEEP3
 */
CameraModeValue D_8011AC34[] = {
    { -30, CAM_DATA_Y_OFFSET },              // yOffset
    { 70, CAM_DATA_EYE_DIST },               // minDist
    { 200, CAM_DATA_EYE_DIST_NEXT },         // maxDist
    { 40, CAM_DATA_SWING_YAW_INIT },         // swingYawInitial
    { 10, CAM_DATA_SWING_YAW_FINAL },        // swingYawFinal
    { 10, CAM_DATA_SWING_PITCH_INIT },       // swingPitchInitial
    { 20, CAM_DATA_SWING_PITCH_FINAL },      // swingPitchFinal
    { 70, CAM_DATA_SWING_PITCH_ADJ },        // swingPitchAdj
    { 45, CAM_DATA_FOV },                    // fovTarget
    { 10, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 10, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // initTimer
    { 0x3500, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode         Function
 * -------    ---------    --------
 * NORMAL3    BOOMERANG    JUMP3
 */
CameraModeValue sSetNorm3ModeBoomVals[] = {
    /* These values are for when the eye
     * >= OREG(45) units below the surface of the water.
     */
    { -40, CAM_DATA_Y_OFFSET },              // yOffset
    { 150, CAM_DATA_EYE_DIST },              // distMin
    { 250, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { -5, CAM_DATA_PITCH_TARGET },           // pitchTarget
    { 18, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // swingUpdateRate
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },   // unk_10
    { 60, CAM_DATA_MAX_YAW_UPDATE },         // unk_14
    { 60, CAM_DATA_FOV },                    // fovTarget
    { 40, CAM_DATA_AT_LERP_STEP_SCALE },     // unk_1C
    { 0x0005, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: HORSE Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * HORSE     NORMAL    NORM3
 */
CameraModeValue sSetHrse0ModeNormVals[] = {
    { -50, CAM_DATA_Y_OFFSET },              // yOffset
    { 220, CAM_DATA_EYE_DIST },              // distMin
    { 250, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 10, CAM_DATA_PITCH_TARGET },           // pitchTarget
    { 16, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateSpeed
    { 20, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_10
    { 60, CAM_DATA_FOV },                    // fovTarget
    { 100, CAM_DATA_AT_LERP_STEP_SCALE },    // maxAtLERPScale
    { 0x0600, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * HORSE     TARGET    NORM3
 */
CameraModeValue sSetHrse0ModeParaVals[] = {
    { -40, CAM_DATA_Y_OFFSET },              // yOffset
    { 180, CAM_DATA_EYE_DIST },              // distMin
    { 220, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { -2, CAM_DATA_PITCH_TARGET },           // pitchTarget
    { 12, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateSpeed
    { 100, CAM_DATA_XZ_UPDATE_RATE_TARGET }, // unk_10
    { 45, CAM_DATA_FOV },                    // fovTarget
    { 100, CAM_DATA_AT_LERP_STEP_SCALE },    // maxAtLERPScale
    { 0x2600, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode        Function
 * -------    --------    --------
 * HORSE     BOWARROW    SUBJ3
 */
CameraModeValue D_8011ACD4[] = {
    { -7, CAM_DATA_Y_OFFSET },               // eyeNextYOffset
    { 14, CAM_DATA_EYE_DIST },               // eyeDist
    { 100, CAM_DATA_EYE_DIST_NEXT },         // eyeNextDist
    { 10, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 0, CAM_DATA_AT_OFFSET_X },             // atOffset.x
    { -30, CAM_DATA_AT_OFFSET_Y },           // atOffset.y
    { -5, CAM_DATA_AT_OFFSET_Z },            // atOffset.z
    { 40, CAM_DATA_FOV },                    // fovTarget
    { 0x2600, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode            Function
 * -------    ------------    --------
 * HORSE     FOLLOWTARGET    KEEP1
 */
CameraModeValue D_8011ACF8[] = {
    { -60, CAM_DATA_Y_OFFSET },          // unk_00
    { 180, CAM_DATA_EYE_DIST },          // unk_04
    { 220, CAM_DATA_EYE_DIST_NEXT },     // unk_08
    { 25, CAM_DATA_SWING_YAW_INIT },     // unk_0C
    { 45, CAM_DATA_SWING_YAW_FINAL },    // unk_10
    { -5, CAM_DATA_SWING_PITCH_INIT },   // unk_14
    { 15, CAM_DATA_SWING_PITCH_FINAL },  // unk_18
    { 15, CAM_DATA_SWING_PITCH_ADJ },    // unk_1C
    { 45, CAM_DATA_FOV },                // unk_20
    { 50, CAM_DATA_AT_LERP_STEP_SCALE }, // unk_24
    { 0x2601, CAM_DATA_FLAGS },
    { -60, CAM_DATA_GROUND_Y_OFFSET },          // unk_28
    { 20, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // unk_2C
};

/**
 * Setting    Mode    Function
 * -------    ----    --------
 * HORSE     TALK    KEEP3
 */
CameraModeValue D_8011AD2C[] = {
    { -60, CAM_DATA_Y_OFFSET },              // yOffset
    { 140, CAM_DATA_EYE_DIST },              // minDist
    { 200, CAM_DATA_EYE_DIST_NEXT },         // maxDist
    { 40, CAM_DATA_SWING_YAW_INIT },         // swingYawInitial
    { 10, CAM_DATA_SWING_YAW_FINAL },        // swingYawFinal
    { 0, CAM_DATA_SWING_PITCH_INIT },        // swingPitchInitial
    { 5, CAM_DATA_SWING_PITCH_FINAL },       // swingPitchFinal
    { 70, CAM_DATA_SWING_PITCH_ADJ },        // swingPitchAdj
    { 45, CAM_DATA_FOV },                    // fovTarget
    { 50, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 10, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // initTimer
    { 0x3500, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: BOSS_GOHMA Setting
 *=====================================================================
 */

/**
 * Setting       Mode      Function
 * ----------    ------    --------
 * BOSS_GOHMA    NORMAL    NORM1
 */
CameraModeValue D_8011AD5C[] = {
    { -20, CAM_DATA_Y_OFFSET },              // yOffset
    { 150, CAM_DATA_EYE_DIST },              // distMin
    { 250, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 0, CAM_DATA_PITCH_TARGET },            // pitchTarget
    { 15, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },   // unk_10
    { 40, CAM_DATA_MAX_YAW_UPDATE },         // unk_14
    { 60, CAM_DATA_FOV },                    // fovTarget
    { 60, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0001, CAM_DATA_FLAGS },
};

/**
 * Setting       Mode      Function
 * ----------    ------    --------
 * BOSS_GOHMA    BATTLE    BATT1
 */
CameraModeValue D_8011AD84[] = {
    { -30, CAM_DATA_Y_OFFSET },          // yOffset (PCT)
    { 150, CAM_DATA_EYE_DIST },          // distance
    { 10, CAM_DATA_SWING_YAW_INIT },     // swingYawInitial
    { 40, CAM_DATA_SWING_YAW_FINAL },    // swingYawFinal
    { -10, CAM_DATA_SWING_PITCH_INIT },  // swingPitchInitial
    { 0, CAM_DATA_SWING_PITCH_FINAL },   // swingPitchFinal
    { 25, CAM_DATA_SWING_PITCH_ADJ },    // swingPitchAdj (PCT)
    { 60, CAM_DATA_FOV },                // fov
    { 40, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleOnGround (PCT)
    { 0x2002, CAM_DATA_FLAGS },
    { -50, CAM_DATA_GROUND_Y_OFFSET },      // yOffsetOffGround (PCT)
    { 20, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // atLERPScaleOffGround (PCT)
};

/*=====================================================================
 *                   Custom Data: BOSS_DODONGO Setting
 *=====================================================================
 */

/**
 * Setting         Mode      Function
 * ------------    ------    --------
 * BOSS_DODONGO    NORMAL    NORM1
 */
CameraModeValue D_8011ADB4[] = {
    { 0, CAM_DATA_Y_OFFSET },                // yOffset
    { 150, CAM_DATA_EYE_DIST },              // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 0, CAM_DATA_PITCH_TARGET },            // pitchTarget
    { 12, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },   // unk_10
    { 70, CAM_DATA_MAX_YAW_UPDATE },         // unk_14
    { 70, CAM_DATA_FOV },                    // fovTarget
    { 40, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0003, CAM_DATA_FLAGS },
};

/**
 * Setting         Mode      Function
 * ------------    ------    --------
 * BOSS_DODONGO    BATTLE    BATT1
 */
CameraModeValue D_8011ADDC[] = {
    { -20, CAM_DATA_Y_OFFSET },          // yOffset (PCT)
    { 160, CAM_DATA_EYE_DIST },          // distance
    { 10, CAM_DATA_SWING_YAW_INIT },     // swingYawInitial
    { 60, CAM_DATA_SWING_YAW_FINAL },    // swingYawFinal
    { -5, CAM_DATA_SWING_PITCH_INIT },   // swingPitchInitial
    { 0, CAM_DATA_SWING_PITCH_FINAL },   // swingPitchFinal
    { 25, CAM_DATA_SWING_PITCH_ADJ },    // swingPitchAdj (PCT)
    { 70, CAM_DATA_FOV },                // fov
    { 50, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleOnGround (PCT)
    { 0x2002, CAM_DATA_FLAGS },
    { -40, CAM_DATA_GROUND_Y_OFFSET },          // yOffsetOffGround (PCT)
    { 20, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // atLERPScaleOffGround (PCT)
};

/*=====================================================================
 *                   Custom Data: BOSS_BARINADE Setting
 *=====================================================================
 */

/**
 * Setting          Mode      Function
 * -------------    ------    --------
 * BOSS_BARINADE    NORMAL    NORM1
 */
CameraModeValue D_8011AE0C[] = {
    { -20, CAM_DATA_Y_OFFSET },              // yOffset
    { 150, CAM_DATA_EYE_DIST },              // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { -5, CAM_DATA_PITCH_TARGET },           // pitchTarget
    { 15, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },   // unk_10
    { 40, CAM_DATA_MAX_YAW_UPDATE },         // unk_14
    { 70, CAM_DATA_FOV },                    // fovTarget
    { 70, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0003, CAM_DATA_FLAGS },
};

/**
 * Setting          Mode      Function
 * -------------    ------    --------
 * BOSS_BARINADE    BATTLE    BATT1
 */
CameraModeValue D_8011AE34[] = {
    { -30, CAM_DATA_Y_OFFSET },          // yOffset (PCT)
    { 125, CAM_DATA_EYE_DIST },          // distance
    { 10, CAM_DATA_SWING_YAW_INIT },     // swingYawInitial
    { 10, CAM_DATA_SWING_YAW_FINAL },    // swingYawFinal
    { 0, CAM_DATA_SWING_PITCH_INIT },    // swingPitchInitial
    { 0, CAM_DATA_SWING_PITCH_FINAL },   // swingPitchFinal
    { 50, CAM_DATA_SWING_PITCH_ADJ },    // swingPitchAdj (PCT)
    { 60, CAM_DATA_FOV },                // fov
    { 50, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleOnGround (PCT)
    { 0x2002, CAM_DATA_FLAGS },
    { -50, CAM_DATA_GROUND_Y_OFFSET },          // yOffsetOffGround (PCT)
    { 20, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // atLERPScaleOffGround (PCT)
};

/*=====================================================================
 *                   Custom Data: BOSS_PHANTOM Setting
 *=====================================================================
 */

/**
 * Setting         Mode      Function
 * ------------    ------    --------
 * BOSS_PHANTOM    NORMAL    NORM1
 */
CameraModeValue D_8011AE64[] = {
    { 10, CAM_DATA_Y_OFFSET },               // yOffset
    { 150, CAM_DATA_EYE_DIST },              // distMin
    { 250, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 0, CAM_DATA_PITCH_TARGET },            // pitchTarget
    { 15, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 15, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_10
    { 40, CAM_DATA_MAX_YAW_UPDATE },         // unk_14
    { 60, CAM_DATA_FOV },                    // fovTarget
    { 100, CAM_DATA_AT_LERP_STEP_SCALE },    // atLERPScaleMax
    { 0x0003, CAM_DATA_FLAGS },
};

/**
 * Setting         Mode      Function
 * ------------    ------    --------
 * BOSS_PHANTOM    BATTLE    BATT1
 */
CameraModeValue D_8011AE8C[] = {
    { -20, CAM_DATA_Y_OFFSET },           // yOffset (PCT)
    { 200, CAM_DATA_EYE_DIST },           // distance
    { 45, CAM_DATA_SWING_YAW_INIT },      // swingYawInitial
    { 40, CAM_DATA_SWING_YAW_FINAL },     // swingYawFinal
    { 5, CAM_DATA_SWING_PITCH_INIT },     // swingPitchInitial
    { -5, CAM_DATA_SWING_PITCH_FINAL },   // swingPitchFinal
    { 35, CAM_DATA_SWING_PITCH_ADJ },     // swingPitchAdj (PCT)
    { 60, CAM_DATA_FOV },                 // fov
    { 100, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleOnGround (PCT)
    { 0x2002, CAM_DATA_FLAGS },
    { -40, CAM_DATA_GROUND_Y_OFFSET },          // yOffsetOffGround (PCT)
    { 60, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // atLERPScaleOffGround (PCT)
};

/*=====================================================================
 *                   Custom Data: BOSS_VOLVAGIA Setting
 *=====================================================================
 */

/**
 * Setting          Mode      Function
 * -------------    ------    --------
 * BOSS_VOLVAGIA    NORMAL    NORM1
 */
CameraModeValue D_8011AEBC[] = {
    { -20, CAM_DATA_Y_OFFSET },              // yOffset
    { 500, CAM_DATA_EYE_DIST },              // distMin
    { 500, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 10, CAM_DATA_PITCH_TARGET },           // pitchTarget
    { 16, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 10, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_10
    { 40, CAM_DATA_MAX_YAW_UPDATE },         // unk_14
    { 60, CAM_DATA_FOV },                    // fovTarget
    { 80, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0003, CAM_DATA_FLAGS },
};

/**
 * Setting          Mode      Function
 * -------------    ------    --------
 * BOSS_VOLVAGIA    BATTLE    BATT1
 */
CameraModeValue D_8011AEE4[] = {
    { -20, CAM_DATA_Y_OFFSET },          // yOffset (PCT)
    { 200, CAM_DATA_EYE_DIST },          // distance
    { 20, CAM_DATA_SWING_YAW_INIT },     // swingYawInitial
    { 60, CAM_DATA_SWING_YAW_FINAL },    // swingYawFinal
    { 0, CAM_DATA_SWING_PITCH_INIT },    // swingPitchInitial
    { 10, CAM_DATA_SWING_PITCH_FINAL },  // swingPitchFinal
    { 15, CAM_DATA_SWING_PITCH_ADJ },    // swingPitchAdj (PCT)
    { 45, CAM_DATA_FOV },                // fov
    { 50, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleOnGround (PCT)
    { 0x2002, CAM_DATA_FLAGS },
    { -40, CAM_DATA_GROUND_Y_OFFSET },          // yOffsetOffGround (PCT)
    { 20, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // atLERPScaleOffGround (PCT)
};

/*=====================================================================
 *                   Custom Data: BOSS_BONGO Setting
 *=====================================================================
 */

/**
 * Setting       Mode      Function
 * ----------    ------    --------
 * BOSS_BONGO    NORMAL    NORM1
 */
CameraModeValue D_8011AF14[] = {
    { -20, CAM_DATA_Y_OFFSET },              // yOffset
    { 500, CAM_DATA_EYE_DIST },              // distMin
    { 500, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 10, CAM_DATA_PITCH_TARGET },           // pitchTarget
    { 20, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 10, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_10
    { 40, CAM_DATA_MAX_YAW_UPDATE },         // unk_14
    { 60, CAM_DATA_FOV },                    // fovTarget
    { 80, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0083, CAM_DATA_FLAGS },
};

/**
 * Setting       Mode      Function
 * ----------    ------    --------
 * BOSS_BONGO    BATTLE    BATT1
 */
CameraModeValue D_8011AF3C[] = {
    { -20, CAM_DATA_Y_OFFSET },          // yOffset (PCT)
    { 200, CAM_DATA_EYE_DIST },          // distance
    { 20, CAM_DATA_SWING_YAW_INIT },     // swingYawInitial
    { 60, CAM_DATA_SWING_YAW_FINAL },    // swingYawFinal
    { 0, CAM_DATA_SWING_PITCH_INIT },    // swingPitchInitial
    { 10, CAM_DATA_SWING_PITCH_FINAL },  // swingPitchFinal
    { 15, CAM_DATA_SWING_PITCH_ADJ },    // swingPitchAdj (PCT)
    { 45, CAM_DATA_FOV },                // fov
    { 50, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleOnGround (PCT)
    { 0x2082, CAM_DATA_FLAGS },
    { -40, CAM_DATA_GROUND_Y_OFFSET },          // yOffsetOffGround (PCT)
    { 20, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // atLERPScaleOffGround (PCT)
};

/**
 * Setting       Mode        Function
 * ----------    --------    --------
 * BOSS_BONGO    JUMP        NORM1
 * BOSS_BONGO    FREEFALL    NORM1
 */
CameraModeValue D_8011AF6C[] = {
    { -20, CAM_DATA_Y_OFFSET },              // yOffset
    { 500, CAM_DATA_EYE_DIST },              // distMin
    { 500, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 10, CAM_DATA_PITCH_TARGET },           // pitchTarget
    { 20, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 10, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_10
    { 80, CAM_DATA_MAX_YAW_UPDATE },         // unk_14
    { 60, CAM_DATA_FOV },                    // fovTarget
    { 80, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0083, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: BOSS_MORPHA Setting
 *=====================================================================
 */

/**
 * Setting        Mode      Function
 * -----------    ------    --------
 * BOSS_MORPHA    NORMAL    NORM1
 */
CameraModeValue D_8011AF94[] = {
    { -20, CAM_DATA_Y_OFFSET },              // yOffset
    { 100, CAM_DATA_EYE_DIST },              // distMin
    { 150, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { -10, CAM_DATA_PITCH_TARGET },          // pitchTarget
    { 15, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 10, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_10
    { 40, CAM_DATA_MAX_YAW_UPDATE },         // unk_14
    { 80, CAM_DATA_FOV },                    // fovTarget
    { 60, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0003, CAM_DATA_FLAGS },
};

/**
 * Setting        Mode      Function
 * -----------    ------    --------
 * BOSS_MORPHA    BATTLE    BATT1
 */
CameraModeValue D_8011AFBC[] = {
    { -20, CAM_DATA_Y_OFFSET },          // yOffset (PCT)
    { 200, CAM_DATA_EYE_DIST },          // distance
    { 10, CAM_DATA_SWING_YAW_INIT },     // swingYawInitial
    { 80, CAM_DATA_SWING_YAW_FINAL },    // swingYawFinal
    { -10, CAM_DATA_SWING_PITCH_INIT },  // swingPitchInitial
    { 10, CAM_DATA_SWING_PITCH_FINAL },  // swingPitchFinal
    { 25, CAM_DATA_SWING_PITCH_ADJ },    // swingPitchAdj (PCT)
    { 70, CAM_DATA_FOV },                // fov
    { 40, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleOnGround (PCT)
    { 0x2002, CAM_DATA_FLAGS },
    { -40, CAM_DATA_GROUND_Y_OFFSET },          // yOffsetOffGround (PCT)
    { 20, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // atLERPScaleOffGround (PCT)
};

/*=====================================================================
 *                   Custom Data: TWINROVA Setting
 *=====================================================================
 */

/**
 * Setting              Mode      Function
 * -----------------    ------    --------
 * TWINROVA_PLATFORM    NORMAL    NORM1
 */
CameraModeValue D_8011AFEC[] = {
    { -20, CAM_DATA_Y_OFFSET },              // yOffset
    { 150, CAM_DATA_EYE_DIST },              // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 0, CAM_DATA_PITCH_TARGET },            // pitchTarget
    { 20, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 10, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_10
    { 40, CAM_DATA_MAX_YAW_UPDATE },         // unk_14
    { 60, CAM_DATA_FOV },                    // fovTarget
    { 80, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0003, CAM_DATA_FLAGS },
};

/**
 * Setting              Mode      Function
 * -----------------    ------    --------
 * TWINROVA_PLATFORM    BATTLE    BATT1
 * TWINROVA_FLOOR       BATTLE    BATT1
 */
CameraModeValue D_8011B014[] = {
    { 0, CAM_DATA_Y_OFFSET },            // yOffset (PCT)
    { 400, CAM_DATA_EYE_DIST },          // distance
    { 0, CAM_DATA_SWING_YAW_INIT },      // swingYawInitial
    { 60, CAM_DATA_SWING_YAW_FINAL },    // swingYawFinal
    { -10, CAM_DATA_SWING_PITCH_INIT },  // swingPitchInitial
    { 5, CAM_DATA_SWING_PITCH_FINAL },   // swingPitchFinal
    { 25, CAM_DATA_SWING_PITCH_ADJ },    // swingPitchAdj (PCT)
    { 45, CAM_DATA_FOV },                // fov
    { 40, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleOnGround (PCT)
    { 0x2002, CAM_DATA_FLAGS },
    { -20, CAM_DATA_GROUND_Y_OFFSET },          // yOffsetOffGround (PCT)
    { 20, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // atLERPScaleOffGround (PCT)
};

/**
 * Setting           Mode      Function
 * --------------    ------    --------
 * TWINROVA_FLOOR    NORMAL    NORM1
 */
CameraModeValue D_8011B044[] = {
    { -10, CAM_DATA_Y_OFFSET },              // yOffset
    { 150, CAM_DATA_EYE_DIST },              // distMin
    { 200, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { -10, CAM_DATA_PITCH_TARGET },          // pitchTarget
    { 12, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 10, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_10
    { 40, CAM_DATA_MAX_YAW_UPDATE },         // unk_14
    { 60, CAM_DATA_FOV },                    // fovTarget
    { 50, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0003, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: BOSS_GANONDORF Setting
 *=====================================================================
 */

/**
 * Setting           Mode      Function
 * --------------    ------    --------
 * BOSS_GANONDORF    NORMAL    NORM1
 */
CameraModeValue D_8011B06C[] = {
    { 40, CAM_DATA_Y_OFFSET },               // yOffset
    { 330, CAM_DATA_EYE_DIST },              // distMin
    { 330, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { -5, CAM_DATA_PITCH_TARGET },           // pitchTarget
    { 15, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 15, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_10
    { 40, CAM_DATA_MAX_YAW_UPDATE },         // unk_14
    { 60, CAM_DATA_FOV },                    // fovTarget
    { 100, CAM_DATA_AT_LERP_STEP_SCALE },    // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting           Mode      Function
 * --------------    ------    --------
 * BOSS_GANONDORF    CHARGE    BATT4
 */
CameraModeValue D_8011B094[] = {
    { -40, CAM_DATA_Y_OFFSET },             // yOffset
    { 250, CAM_DATA_EYE_DIST },             // rTarget
    { 0, CAM_DATA_PITCH_TARGET },           // pitchTarget
    { 2, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // lerpUpdateRate
    { 80, CAM_DATA_FOV },                   // fovTarget
    { 20, CAM_DATA_AT_LERP_STEP_SCALE },    // atLERPTarget
    { 0xF000, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: BOSSGANON2 Setting
 *=====================================================================
 */

/**
 * Setting       Mode      Function
 * ----------    ------    --------
 * BOSSGANON2    NORMAL    NORM1
 */
CameraModeValue D_8011B0B0[] = {
    { -20, CAM_DATA_Y_OFFSET },              // yOffset
    { 500, CAM_DATA_EYE_DIST },              // distMin
    { 500, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 10, CAM_DATA_PITCH_TARGET },           // pitchTarget
    { 20, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 10, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_10
    { 40, CAM_DATA_MAX_YAW_UPDATE },         // unk_14
    { 60, CAM_DATA_FOV },                    // fovTarget
    { 80, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0003, CAM_DATA_FLAGS },
};

/**
 * Setting       Mode      Function
 * ----------    ------    --------
 * BOSSGANON2    BATTLE    BATT1
 */
CameraModeValue D_8011B0D8[] = {
    { -20, CAM_DATA_Y_OFFSET },          // yOffset (PCT)
    { 180, CAM_DATA_EYE_DIST },          // distance
    { 20, CAM_DATA_SWING_YAW_INIT },     // swingYawInitial
    { 60, CAM_DATA_SWING_YAW_FINAL },    // swingYawFinal
    { 0, CAM_DATA_SWING_PITCH_INIT },    // swingPitchInitial
    { 10, CAM_DATA_SWING_PITCH_FINAL },  // swingPitchFinal
    { 25, CAM_DATA_SWING_PITCH_ADJ },    // swingPitchAdj (PCT)
    { 45, CAM_DATA_FOV },                // fov
    { 50, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleOnGround (PCT)
    { 0x2002, CAM_DATA_FLAGS },
    { -40, CAM_DATA_GROUND_Y_OFFSET },          // yOffsetOffGround (PCT)
    { 20, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // atLERPScaleOffGround (PCT)
};

/*=====================================================================
 *                   Custom Data: TOWER_CLIMB Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * TOWER_UNUSED     NORMAL    NORM2
 */
CameraModeValue D_8011B108[] = {
    { 0, CAM_DATA_Y_OFFSET },               // unk_00
    { 120, CAM_DATA_EYE_DIST },             // unk_04
    { 280, CAM_DATA_EYE_DIST_NEXT },        // unk_08
    { 60, CAM_DATA_UNK_23 },                // unk_1C
    { 8, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 40, CAM_DATA_MAX_YAW_UPDATE },        // unk_10
    { 60, CAM_DATA_FOV },                   // unk_14
    { 50, CAM_DATA_AT_LERP_STEP_SCALE },    // unk_18
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode    Function
 * -------    ----    --------
 * TOWER_UNUSED     JUMP    NORM2
 */
CameraModeValue D_8011B12C[] = {
    { 0, CAM_DATA_Y_OFFSET },               // unk_00
    { 120, CAM_DATA_EYE_DIST },             // unk_04
    { 280, CAM_DATA_EYE_DIST_NEXT },        // unk_08
    { 60, CAM_DATA_UNK_23 },                // unk_1C
    { 8, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 40, CAM_DATA_MAX_YAW_UPDATE },        // unk_10
    { 60, CAM_DATA_FOV },                   // unk_14
    { 50, CAM_DATA_AT_LERP_STEP_SCALE },    // unk_18
    { 0x0080, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: TOWER1 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * TOWER1     NORMAL    NORM2
 */
CameraModeValue D_8011B150[] = {
    { 0, CAM_DATA_Y_OFFSET },               // unk_00
    { 270, CAM_DATA_EYE_DIST },             // unk_04
    { 300, CAM_DATA_EYE_DIST_NEXT },        // unk_08
    { 120, CAM_DATA_UNK_23 },               // unk_1C
    { 8, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 60, CAM_DATA_MAX_YAW_UPDATE },        // unk_10
    { 60, CAM_DATA_FOV },                   // unk_14
    { 100, CAM_DATA_AT_LERP_STEP_SCALE },   // unk_18
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode    Function
 * -------    ----    --------
 * TOWER1     JUMP    NORM2
 */
CameraModeValue D_8011B174[] = {
    { 0, CAM_DATA_Y_OFFSET },               // unk_00
    { 270, CAM_DATA_EYE_DIST },             // unk_04
    { 300, CAM_DATA_EYE_DIST_NEXT },        // unk_08
    { 120, CAM_DATA_UNK_23 },               // unk_1C
    { 6, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 60, CAM_DATA_MAX_YAW_UPDATE },        // unk_10
    { 60, CAM_DATA_FOV },                   // unk_14
    { 100, CAM_DATA_AT_LERP_STEP_SCALE },   // unk_18
    { 0x0000, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: MARKET_BALCONY Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * MARKET_BALCONY     NORMAL    FIXD1
 */
CameraModeValue sSetFixd0ModeNormVals[] = {
    { -40, CAM_DATA_Y_OFFSET },               // yOffset
    { 100, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // lerpStep
    { 60, CAM_DATA_FOV },                     // fov
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode            Function
 * -------    ------------    --------
 * MARKET_BALCONY     FOLLOWTARGET    FIXD1
 */
CameraModeValue D_8011B1A8[] = {
    { -40, CAM_DATA_Y_OFFSET },               // yOffset
    { 100, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // lerpStep
    { 60, CAM_DATA_FOV },                     // fov
    { 0x2000, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode    Function
 * -------    ----    --------
 * MARKET_BALCONY     TALK    FIXD1
 */
CameraModeValue D_8011B1B8[] = {
    { -40, CAM_DATA_Y_OFFSET },               // yOffset
    { 100, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // lerpStep
    { 60, CAM_DATA_FOV },                     // fov
    { 0x3500, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: CHU_BOWLING Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * CHU_BOWLING     NORMAL    FIXD1
 */
CameraModeValue D_8011B1C8[] = {
    { -40, CAM_DATA_Y_OFFSET },              // yOffset
    { 25, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // lerpStep
    { 60, CAM_DATA_FOV },                    // fov
    { 0x0000, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: CIRCLE0 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * CIRCLE0    NORMAL    FIXD2
 */
CameraModeValue sSetCirc0ModeNormVals[] = {
    { -40, CAM_DATA_Y_OFFSET },              // yOffset
    { 50, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // eyeStepScale
    { 80, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // posStepScale
    { 60, CAM_DATA_FOV },                    // fov
    { 0x0001, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: SHOP_BROWSING Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * SHOP_BROWSING    NORMAL    DATA4
 */
CameraModeValue sSetCirc2ModeNormVals[] = {
    { -40, CAM_DATA_Y_OFFSET }, // yOffset
    { 60, CAM_DATA_FOV },       // fov
    { 0x3F00, CAM_DATA_FLAGS },
};

/*=====================================================================
 *
 *=====================================================================
 */

/**
 * Setting    Mode            Function
 * -------    ------------    --------
 * CIRCLE3    NORMAL          FIXD4
 * CIRCLE7    NORMAL          FIXD4
 * CIRCLE7    FOLLOWTARGET    FIXD4
 */
CameraModeValue D_8011B1F8[] = {
    { -40, CAM_DATA_Y_OFFSET },              // yOffset
    { 50, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // speedToEyePos
    { 80, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // followSpeed
    { 60, CAM_DATA_FOV },                    // fov
    { 0x0004, CAM_DATA_FLAGS },
};

/*=====================================================================
 *
 *=====================================================================
 */

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * PREREND_FIXED    NORMAL    FIXD3
 * CAM_SET_PREREND_SCROLL    NORMAL    SPEC6
 * START0      NORMAL    UNIQ0
 * HIDAN1      NORMAL    SPEC7
 */
CameraModeValue D_8011B20C[] = {
    { 0x0000, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: PREREND_FIXED Setting
 *=====================================================================
 */

/**
 * Setting     Mode            Function
 * --------    ------------    --------
 * PREREND_FIXED    FOLLOWTARGET    FIXD3
 * PREREND_FIXED    TALK            FIXD3
 */
CameraModeValue sSetPR0ModeKeepTalkVals[] = {
    { 0x2000, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: PREREND_ROTATE Setting
 *=====================================================================
 */

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * PREREND_ROTATE    NORMAL    UNIQ7
 */
CameraModeValue sSetPR1ModeNormVals[] = {
    { 60, CAM_DATA_FOV }, // fov
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode            Function
 * --------    ------------    --------
 * PREREND_ROTATE    FOLLOWTARGET    UNIQ7
 */
CameraModeValue sSetPR1ModeKeepVals[] = {
    { 60, CAM_DATA_FOV }, // fov
    { 0x2000, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode    Function
 * --------    ----    --------
 * PREREND_ROTATE    TALK    KEEP0
 */
CameraModeValue sSetPreRend1ModeTalkVals[] = {
    { 30, CAM_DATA_FOV_SCALE },
    { 0, CAM_DATA_YAW_SCALE },
    { 4, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // timerInit
    { 0x3500, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: DOOR0 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * DOOR0      NORMAL    UNIQ3
 */
CameraModeValue sSetDoor0ModeNormVals[] = {
    { -40, CAM_DATA_Y_OFFSET }, // yOffset
    { 60, CAM_DATA_FOV },       // fov
    { 0x3200, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: DOORC Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * DOORC      NORMAL    SPEC9
 */
CameraModeValue sSetDoorCModeNormVals[] = {
    { -5, CAM_DATA_Y_OFFSET }, // yOffset
    { 60, CAM_DATA_FOV },      // unk_04 (unused)
    { 0x3202, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * DOORC      TARGET    SPEC9
 */
CameraModeValue sSetDoorCModeTargetVals[] = {
    { -5, CAM_DATA_Y_OFFSET }, // yOffset
    { 60, CAM_DATA_FOV },      // unk_04 (unused)
    { 0x320A, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: CRAWLSPACE Setting
 *=====================================================================
 */

/**
 * Setting       Mode      Function
 * ----------    ------    --------
 * CRAWLSPACE    NORMAL    SUBJ4 (Camera_Subj4 only reads one setting which is used for flags)
 */
CameraModeValue sSetRail3ModeNormVals[] = {
    { 0, CAM_DATA_Y_OFFSET },                // flags
    { 2, CAM_DATA_EYE_DIST },                // unused
    { 30, CAM_DATA_EYE_DIST_NEXT },          // unused
    { 10, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unused
    { 45, CAM_DATA_FOV },                    // unused
    { 0x3200, CAM_DATA_FLAGS },              // unused
};

/*=====================================================================
 *                   Custom Data: START1 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * START1     NORMAL    UNIQ0
 */
CameraModeValue D_8011B270[] = {
    { 0x0001, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: FREE0 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * FREE0      NORMAL    UNIQ6
 */
CameraModeValue sSetFree0ModeNormVals[] = {
    { 0xFF00, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: FREE1 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * FREE1      NORMAL    UNIQ6
 */
CameraModeValue sSetFree1ModeNormVals[] = {
    { 0xFF01, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: PRISON Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * PRISON    NORMAL    FIXD2
 */
CameraModeValue sSetCirc4ModeNormVals[] = {
    { -40, CAM_DATA_Y_OFFSET },               // yOffset
    { 100, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // eyeStepScale
    { 80, CAM_DATA_XZ_UPDATE_RATE_TARGET },   // posStepScale
    { 60, CAM_DATA_FOV },                     // fov
    { 0x0000, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: DIVING Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * DIVING    NORMAL    UNIQ2
 */
CameraModeValue D_8011B290[] = {
    { -40, CAM_DATA_Y_OFFSET }, // yOffset
    { 60, CAM_DATA_EYE_DIST },  // distTarget
    { 60, CAM_DATA_FOV },       // fovTarget
    { 0x0002, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * DIVING    TARGET    UNIQ2
 */
CameraModeValue D_8011B2A0[] = {
    { -30, CAM_DATA_Y_OFFSET }, // yOffset
    { 45, CAM_DATA_EYE_DIST },  // distTarget
    { 100, CAM_DATA_FOV },      // fovTarget
    { 0x2001, CAM_DATA_FLAGS },
};

/*=====================================================================
 *
 *=====================================================================
 */

/**
 * Setting        Mode      Function
 * -------------  ------    --------
 * DEMO0          NORMAL    DEMO1
 * DEMO1          NORMAL    DEMO2
 * DEMO4          NORMAL    DEMO5 (Not actually used in Camera_Demo4?)
 * HIDAN2         NORMAL    SPEC4
 * FOREST_UNUSED  NORMAL    UNIQ5
 * FOREST_POES    NORMAL    DEMO6
 */
CameraModeValue D_8011B2B0[] = {
    { 0x3200, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: CAM_SET_FOREST_BIRDS_EYE Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * CAM_SET_FOREST_BIRDS_EYE      NORMAL    PARA1
 */
CameraModeValue sSetMori1ModeNormVals[] = {
    { -50, CAM_DATA_Y_OFFSET },             // yOffset
    { 450, CAM_DATA_EYE_DIST },             // distTarget
    { 40, CAM_DATA_PITCH_TARGET },          // pitchTarget3
    { 180, CAM_DATA_YAW_TARGET },           // yawTarget
    { 5, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_08
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_0C
    { 70, CAM_DATA_FOV },                   // fovTarget
    { 30, CAM_DATA_AT_LERP_STEP_SCALE },    // unk_14
    { 0x000C, CAM_DATA_FLAGS },
    { -50, CAM_DATA_GROUND_Y_OFFSET },          // unk_18
    { 20, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // unk_1C
};

/**
 * Setting    Mode     Function
 * -------    -----    --------
 * CAM_SET_FOREST_BIRDS_EYE      TALK     PARA3
 */
CameraModeValue D_8011B2E0[] = {
    { 0x3501, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: ITEM Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * ITEM0      NORMAL    DEMO3
 * ITEM1      NORMAL    DEMO4 (not actually used in Camera_Demo4)
 */
CameraModeValue D_8011B2E4[] = {
    { 60, CAM_DATA_FOV },                // fov
    { 30, CAM_DATA_AT_LERP_STEP_SCALE }, // unk_04
    { 0x3200, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: DEMO3 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * DEMO3      NORMAL    DEMO9
 */
CameraModeValue sSetDemo3ModeNormVals[] = {
    { 0x3212, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: UFOBEAN Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * UFOBEAN    NORMAL    NORM1
 */
CameraModeValue D_8011B2F4[] = {
    { -50, CAM_DATA_Y_OFFSET },              // yOffset
    { 300, CAM_DATA_EYE_DIST },              // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 50, CAM_DATA_PITCH_TARGET },           // pitchTarget
    { 20, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 10, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_10
    { 50, CAM_DATA_MAX_YAW_UPDATE },         // unk_14
    { 70, CAM_DATA_FOV },                    // fovTarget
    { 40, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0002, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * UFOBEAN    TARGET    PARA1
 */
CameraModeValue D_8011B31C[] = {
    { -50, CAM_DATA_Y_OFFSET },             // yOffset
    { 300, CAM_DATA_EYE_DIST },             // distTarget
    { 10, CAM_DATA_PITCH_TARGET },          // pitchTarget
    { 0, CAM_DATA_YAW_TARGET },             // yawTarget
    { 5, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_08
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_0C
    { 45, CAM_DATA_FOV },                   // fovTarget
    { 50, CAM_DATA_AT_LERP_STEP_SCALE },    // unk_14
    { 0x200A, CAM_DATA_FLAGS },
    { -40, CAM_DATA_GROUND_Y_OFFSET },          // unk_18
    { 20, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // unk_1C
};

/**
 * Setting    Mode    Function
 * -------    ----    --------
 * UFOBEAN    JUMP    JUMP1
 */
CameraModeValue D_8011B348[] = {
    { -50, CAM_DATA_Y_OFFSET },              // atYOffset
    { 300, CAM_DATA_EYE_DIST },              // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 12, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateRateTarget
    { 35, CAM_DATA_MAX_YAW_UPDATE },         // maxYawUpdate
    { 60, CAM_DATA_FOV },                    // unk_14
    { 40, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode    Function
 * -------    ----    --------
 * UFOBEAN    HANG    UNIQ1
 */
CameraModeValue D_8011B368[] = {
    { -80, CAM_DATA_Y_OFFSET },          // yOffset
    { 300, CAM_DATA_EYE_DIST },          // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 60, CAM_DATA_PITCH_TARGET },       // fovTarget
    { 70, CAM_DATA_FOV },                // pitchTarget
    { 30, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode     Function
 * -------    -----    --------
 * UFOBEAN    HANGZ    UNIQ1
 */
CameraModeValue D_8011B384[] = {
    { -120, CAM_DATA_Y_OFFSET },         // yOffset
    { 300, CAM_DATA_EYE_DIST },          // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 70, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 50, CAM_DATA_FOV },                // fovTarget
    { 30, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x2000, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode     Function
 * -------    -----    --------
 * UFOBEAN    STILL    NORM1
 */
CameraModeValue D_8011B3A0[] = {
    { -20, CAM_DATA_Y_OFFSET },               // yOffset
    { 300, CAM_DATA_EYE_DIST },               // distMin
    { 350, CAM_DATA_EYE_DIST_NEXT },          // distMax
    { 50, CAM_DATA_PITCH_TARGET },            // pitchTarget
    { 100, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 10, CAM_DATA_XZ_UPDATE_RATE_TARGET },   // unk_10
    { 100, CAM_DATA_MAX_YAW_UPDATE },         // unk_14
    { 70, CAM_DATA_FOV },                     // fovTarget
    { 30, CAM_DATA_AT_LERP_STEP_SCALE },      // atLERPScaleMax
    { 0xF002, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: LIFTBEAN Setting
 *=====================================================================
 */

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * LIFTBEAN    NORMAL    NORM1
 */
CameraModeValue D_8011B3C8[] = {
    { -50, CAM_DATA_Y_OFFSET },              // yOffset
    { 200, CAM_DATA_EYE_DIST },              // distMin
    { 200, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 20, CAM_DATA_PITCH_TARGET },           // pitchTarget
    { 16, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 10, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_10
    { 50, CAM_DATA_MAX_YAW_UPDATE },         // unk_14
    { 60, CAM_DATA_FOV },                    // fovTarget
    { 50, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0002, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * LIFTBEAN    TARGET    PARA1
 */
CameraModeValue D_8011B3F0[] = {
    { -50, CAM_DATA_Y_OFFSET },             // yOffset
    { 200, CAM_DATA_EYE_DIST },             // distTarget
    { 40, CAM_DATA_PITCH_TARGET },          // pitchTarget
    { 0, CAM_DATA_YAW_TARGET },             // yawTarget
    { 5, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_08
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_0C
    { 45, CAM_DATA_FOV },                   // fovTarget
    { 50, CAM_DATA_AT_LERP_STEP_SCALE },    // unk_14
    { 0x200A, CAM_DATA_FLAGS },
    { -40, CAM_DATA_GROUND_Y_OFFSET },          // unk_18
    { 20, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // unk_1C
};

/**
 * Setting     Mode    Function
 * --------    ----    --------
 * LIFTBEAN    JUMP    JUMP1
 */
CameraModeValue D_8011B41C[] = {
    { -50, CAM_DATA_Y_OFFSET },              // atYOffset
    { 150, CAM_DATA_EYE_DIST },              // distMin
    { 250, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 12, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateRateTarget
    { 35, CAM_DATA_MAX_YAW_UPDATE },         // maxYawUpdate
    { 60, CAM_DATA_FOV },                    // unk_14
    { 40, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode    Function
 * --------    ----    --------
 * LIFTBEAN    HANG    UNIQ1
 */
CameraModeValue D_8011B43C[] = {
    { -80, CAM_DATA_Y_OFFSET },          // yOffset
    { 200, CAM_DATA_EYE_DIST },          // distMin
    { 200, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 40, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 60, CAM_DATA_FOV },                // fovTarget
    { 30, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode     Function
 * --------    -----    --------
 * LIFTBEAN    HANGZ    UNIQ1
 */
CameraModeValue D_8011B458[] = {
    { -120, CAM_DATA_Y_OFFSET },         // yOffset
    { 200, CAM_DATA_EYE_DIST },          // distMin
    { 200, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 60, CAM_DATA_PITCH_TARGET },       // pitchtarget
    { 50, CAM_DATA_FOV },                // fovTarget
    { 30, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x2000, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode     Function
 * --------    -----    --------
 * LIFTBEAN    STILL    NORM1
 */
CameraModeValue D_8011B474[] = {
    { -20, CAM_DATA_Y_OFFSET },               // yOffset
    { 200, CAM_DATA_EYE_DIST },               // distMin
    { 250, CAM_DATA_EYE_DIST_NEXT },          // distMax
    { 20, CAM_DATA_PITCH_TARGET },            // unk_0C
    { 100, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_10
    { 10, CAM_DATA_XZ_UPDATE_RATE_TARGET },   // unk_14
    { 100, CAM_DATA_MAX_YAW_UPDATE },         // pitchTarget
    { 60, CAM_DATA_FOV },                     // fovTarget
    { 30, CAM_DATA_AT_LERP_STEP_SCALE },      // atLERPScaleMax
    { 0xF002, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: SCENE0 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * SCENE0     NORMAL    SPEC9
 */
CameraModeValue sSetScn0ModeNormVals[] = {
    { -30, CAM_DATA_Y_OFFSET }, // yOffset
    { 60, CAM_DATA_FOV },       // unk_04 (unused)
    { 0x10A, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: SCENE1 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * SCENE1     NORMAL    UNIQ2
 */
CameraModeValue D_8011B4A8[] = {
    { -20, CAM_DATA_Y_OFFSET }, // yOffset
    { 150, CAM_DATA_EYE_DIST }, // distTarget
    { 60, CAM_DATA_FOV },       // fovTarget
    { 0x0210, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: TAKO Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * TAKO       NORMAL    NORM1
 */
CameraModeValue D_8011B4B8[] = {
    { 0, CAM_DATA_Y_OFFSET },                // yOffset
    { 400, CAM_DATA_EYE_DIST },              // distMin
    { 500, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 35, CAM_DATA_PITCH_TARGET },           // unk_0C
    { 14, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_10
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },   // unk_14
    { 20, CAM_DATA_MAX_YAW_UPDATE },         // pitchTarget
    { 60, CAM_DATA_FOV },                    // fovTarget
    { 40, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0012, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * TAKO       BATTLE    BATT1
 */
CameraModeValue D_8011B4E0[] = {
    { -20, CAM_DATA_Y_OFFSET },          // yOffset (PCT)
    { 250, CAM_DATA_EYE_DIST },          // distance
    { 5, CAM_DATA_SWING_YAW_INIT },      // swingYawInitial
    { 10, CAM_DATA_SWING_YAW_FINAL },    // swingYawFinal
    { 30, CAM_DATA_SWING_PITCH_INIT },   // swingPitchInitial
    { 20, CAM_DATA_SWING_PITCH_FINAL },  // swingPitchFinal
    { 25, CAM_DATA_SWING_PITCH_ADJ },    // swingPitchAdj (PCT)
    { 45, CAM_DATA_FOV },                // fov
    { 60, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleOnGround (PCT)
    { 0x2002, CAM_DATA_FLAGS },
    { -40, CAM_DATA_GROUND_Y_OFFSET },          // yOffsetOffGround (PCT)
    { 25, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // atLERPScaleOffGround (PCT)
};

/**
 * Setting    Mode     Function
 * -------    -----    --------
 * TAKO       STILL    NORM1
 */
CameraModeValue D_8011B510[] = {
    { 0, CAM_DATA_Y_OFFSET },               // yOffset
    { 300, CAM_DATA_EYE_DIST },             // distMin
    { 500, CAM_DATA_EYE_DIST_NEXT },        // distMax
    { 60, CAM_DATA_PITCH_TARGET },          // unk_0C
    { 8, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_10
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_14
    { 60, CAM_DATA_MAX_YAW_UPDATE },        // pitchTarget
    { 60, CAM_DATA_FOV },                   // fovTarget
    { 30, CAM_DATA_AT_LERP_STEP_SCALE },    // atLERPScaleMax
    { 0x0012, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: SPOT05A Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * SPOT05A    NORMAL    NORM1
 */
CameraModeValue D_8011B538[] = {
    { -20, CAM_DATA_Y_OFFSET },              // yOffset
    { 500, CAM_DATA_EYE_DIST },              // distMin
    { 500, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 80, CAM_DATA_PITCH_TARGET },           // unk_0C
    { 20, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_10
    { 10, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_14
    { 70, CAM_DATA_MAX_YAW_UPDATE },         // pitchTarget
    { 70, CAM_DATA_FOV },                    // fovTarget
    { 80, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0012, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * SPOT05A    TARGET    PARA1
 */
CameraModeValue D_8011B560[] = {
    { -20, CAM_DATA_Y_OFFSET },             // yOffset
    { 500, CAM_DATA_EYE_DIST },             // distTarget
    { 80, CAM_DATA_PITCH_TARGET },          // pitchTarget
    { 0, CAM_DATA_YAW_TARGET },             // yawTarget
    { 5, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_08
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_0C
    { 70, CAM_DATA_FOV },                   // fovTarget
    { 80, CAM_DATA_AT_LERP_STEP_SCALE },    // unk_14
    { 0x201A, CAM_DATA_FLAGS },
    { -40, CAM_DATA_GROUND_Y_OFFSET },          // unk_18
    { 40, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // unk_1C
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * SPOT05A    BATTLE    PARA1
 */
CameraModeValue D_8011B58C[] = {
    { -20, CAM_DATA_Y_OFFSET },             // yOffset
    { 500, CAM_DATA_EYE_DIST },             // distTarget
    { 80, CAM_DATA_PITCH_TARGET },          // pitchTarget
    { 0, CAM_DATA_YAW_TARGET },             // yawTarget
    { 5, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_08
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_0C
    { 60, CAM_DATA_FOV },                   // fovTarget
    { 80, CAM_DATA_AT_LERP_STEP_SCALE },    // unk_14
    { 0x201A, CAM_DATA_FLAGS },
    { -40, CAM_DATA_GROUND_Y_OFFSET },          // unk_18
    { 40, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // unk_1C
};

/**
 * Setting    Mode     Function
 * -------    -----    --------
 * SPOT05A    CLIMB    NORM1
 */
CameraModeValue D_8011B5B8[] = {
    { -20, CAM_DATA_Y_OFFSET },              // yOffset
    { 500, CAM_DATA_EYE_DIST },              // distMin
    { 500, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 80, CAM_DATA_PITCH_TARGET },           // unk_0C
    { 20, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_10
    { 10, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_14
    { 80, CAM_DATA_MAX_YAW_UPDATE },         // pitchTarget
    { 60, CAM_DATA_FOV },                    // fovTarget
    { 20, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0012, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: SPOT05B Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * SPOT05B    NORMAL    NORM1
 */
CameraModeValue D_8011B5E0[] = {
    { -20, CAM_DATA_Y_OFFSET },              // yOffset
    { 750, CAM_DATA_EYE_DIST },              // distMin
    { 750, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 80, CAM_DATA_PITCH_TARGET },           // unk_0C
    { 20, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_10
    { 10, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_14
    { 70, CAM_DATA_MAX_YAW_UPDATE },         // pitchTarget
    { 70, CAM_DATA_FOV },                    // fovTarget
    { 80, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0012, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * SPOT05B    TARGET    PARA1
 */
CameraModeValue D_8011B608[] = {
    { -20, CAM_DATA_Y_OFFSET },             // yOffset
    { 750, CAM_DATA_EYE_DIST },             // distTarget
    { 80, CAM_DATA_PITCH_TARGET },          // pitchTarget
    { 0, CAM_DATA_YAW_TARGET },             // yawTarget
    { 5, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_08
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_0C
    { 70, CAM_DATA_FOV },                   // fovTarget
    { 80, CAM_DATA_AT_LERP_STEP_SCALE },    // unk_14
    { 0x201A, CAM_DATA_FLAGS },
    { -40, CAM_DATA_GROUND_Y_OFFSET },          // unk_18
    { 40, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // unk_1C
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * SPOT05B    BATTLE    PARA1
 */
CameraModeValue D_8011B634[] = {
    { -20, CAM_DATA_Y_OFFSET },             // yOffset
    { 750, CAM_DATA_EYE_DIST },             // distTarget
    { 80, CAM_DATA_PITCH_TARGET },          // pitchTarget
    { 0, CAM_DATA_YAW_TARGET },             // yawTarget
    { 5, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_08
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_0C
    { 70, CAM_DATA_FOV },                   // fovTarget
    { 80, CAM_DATA_AT_LERP_STEP_SCALE },    // unk_14
    { 0x200A, CAM_DATA_FLAGS },
    { -40, CAM_DATA_GROUND_Y_OFFSET },          // unk_18
    { 40, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // unk_1C
};

/**
 * Setting    Mode     Function
 * -------    -----    --------
 * SPOT05B    CLIMB    NORM1
 */
CameraModeValue D_8011B660[] = {
    { -20, CAM_DATA_Y_OFFSET },              // yOffset
    { 750, CAM_DATA_EYE_DIST },              // distMin
    { 750, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 80, CAM_DATA_PITCH_TARGET },           // unk_0C
    { 20, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_10
    { 10, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_14
    { 80, CAM_DATA_MAX_YAW_UPDATE },         // pitchTarget
    { 70, CAM_DATA_FOV },                    // fovTarget
    { 20, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0012, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: HIDAN3 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * HIDAN3     NORMAL    NORM1
 */
CameraModeValue D_8011B688[] = {
    { -20, CAM_DATA_Y_OFFSET },              // yOffset
    { 500, CAM_DATA_EYE_DIST },              // distMin
    { 500, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 80, CAM_DATA_PITCH_TARGET },           // unk_0C
    { 20, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_10
    { 10, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_14
    { 70, CAM_DATA_MAX_YAW_UPDATE },         // pitchTarget
    { 70, CAM_DATA_FOV },                    // fovTarget
    { 80, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0002, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * HIDAN3     TARGET    PARA1
 */
CameraModeValue D_8011B6B0[] = {
    { -20, CAM_DATA_Y_OFFSET },             // yOffset
    { 500, CAM_DATA_EYE_DIST },             // distTarget
    { 80, CAM_DATA_PITCH_TARGET },          // pitchTarget
    { 0, CAM_DATA_YAW_TARGET },             // yawTarget
    { 5, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_08
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_0C
    { 70, CAM_DATA_FOV },                   // fovTarget
    { 80, CAM_DATA_AT_LERP_STEP_SCALE },    // unk_14
    { 0x200A, CAM_DATA_FLAGS },
    { -40, CAM_DATA_GROUND_Y_OFFSET },          // unk_18
    { 40, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // unk_1C
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * HIDAN3     BATTLE    PARA1
 */
CameraModeValue D_8011B6DC[] = {
    { -20, CAM_DATA_Y_OFFSET },             // yOffset
    { 500, CAM_DATA_EYE_DIST },             // distTarget
    { 80, CAM_DATA_PITCH_TARGET },          // pitchTarget
    { 0, CAM_DATA_YAW_TARGET },             // yawTarget
    { 5, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_08
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_0C
    { 60, CAM_DATA_FOV },                   // fovTarget
    { 80, CAM_DATA_AT_LERP_STEP_SCALE },    // unk_14
    { 0x200A, CAM_DATA_FLAGS },
    { -40, CAM_DATA_GROUND_Y_OFFSET },          // unk_18
    { 40, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // unk_1C
};

/**
 * Setting    Mode     Function
 * -------    -----    --------
 * HIDAN3     CLIMB    NORM1
 */
CameraModeValue D_8011B708[] = {
    { -20, CAM_DATA_Y_OFFSET },              // yOffset
    { 500, CAM_DATA_EYE_DIST },              // distMin
    { 500, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 80, CAM_DATA_PITCH_TARGET },           // unk_0C
    { 20, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_10
    { 10, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_14
    { 80, CAM_DATA_MAX_YAW_UPDATE },         // pitchTarget
    { 60, CAM_DATA_FOV },                    // fovTarget
    { 20, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0002, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: ITEM2 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * ITEM2      NORMAL    KEEP4
 */
CameraModeValue D_8011B730[] = {
    { -30, CAM_DATA_Y_OFFSET },                                              // unk_00
    { 120, CAM_DATA_EYE_DIST },                                              // unk_04
    { -10, CAM_DATA_PITCH_TARGET },                                          // unk_08
    { 170, CAM_DATA_YAW_TARGET },                                            // unk_0C
    { 0, CAM_DATA_AT_OFFSET_Z },                                             // unk_10
    { 60, CAM_DATA_FOV },                                                    // unk_18
    { 0x2502, CAM_DATA_FLAGS },     { 25, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_14
    { 6, CAM_DATA_UNK_22 },                                                  // unk_1E
};

/*=====================================================================
 *                   Custom Data: CIRCLE6 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * CIRCLE6    NORMAL    SPEC0
 */
CameraModeValue sSetCirc6ModeNormVals[] = {
    { 20, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // lerpATScale
    { 0x3200, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: NORMAL Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * NORMAL2    NORMAL    NORM1
 * NORMAL4    NORMAL    NORM1
 */
CameraModeValue D_8011B75C[] = {
    { -20, CAM_DATA_Y_OFFSET },              // yOffset
    { 200, CAM_DATA_EYE_DIST },              // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 10, CAM_DATA_PITCH_TARGET },           // pitchTarget
    { 12, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 10, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_10
    { 35, CAM_DATA_MAX_YAW_UPDATE },         // unk_14
    { 60, CAM_DATA_FOV },                    // fovTarget
    { 60, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0002, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: FISHING Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * FISHING    NORMAL    NORM1
 */
CameraModeValue D_8011B784[] = {
    { 0, CAM_DATA_Y_OFFSET },                // yOffset
    { 200, CAM_DATA_EYE_DIST },              // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 20, CAM_DATA_PITCH_TARGET },           // unk_0C
    { 12, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_10
    { 10, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_14
    { 35, CAM_DATA_MAX_YAW_UPDATE },         // pitchTarget
    { 55, CAM_DATA_FOV },                    // fovTarget
    { 60, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0F02, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * FISHING    TARGET    PARA1
 */
CameraModeValue D_8011B7AC[] = {
    { -20, CAM_DATA_Y_OFFSET },             // yOffset
    { 250, CAM_DATA_EYE_DIST },             // distTarget
    { 0, CAM_DATA_PITCH_TARGET },           // pitchTarget
    { 0, CAM_DATA_YAW_TARGET },             // yawTarget
    { 5, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_08
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_0C
    { 45, CAM_DATA_FOV },                   // fovTarget
    { 50, CAM_DATA_AT_LERP_STEP_SCALE },    // unk_14
    { 0x2F0A, CAM_DATA_FLAGS },
    { -40, CAM_DATA_GROUND_Y_OFFSET },          // unk_18
    { 20, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // unk_1C
};

/**
 * Setting    Mode            Function
 * -------    ------------    --------
 * FISHING    FOLLOWTARGET    BATT1
 * FISHING    BATTLE          BATT1
 */
CameraModeValue D_8011B7D8[] = {
    { -20, CAM_DATA_Y_OFFSET },          // yOffset (PCT)
    { 250, CAM_DATA_EYE_DIST },          // distance
    { 0, CAM_DATA_SWING_YAW_INIT },      // swingYawInitial
    { 80, CAM_DATA_SWING_YAW_FINAL },    // swingYawFinal
    { 0, CAM_DATA_SWING_PITCH_INIT },    // swingPitchInitial
    { 0, CAM_DATA_SWING_PITCH_FINAL },   // swingPitchFinal
    { 25, CAM_DATA_SWING_PITCH_ADJ },    // swingPitchAdj (PCT)
    { 55, CAM_DATA_FOV },                // fov
    { 80, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleOnGround (PCT)
    { 0x2F02, CAM_DATA_FLAGS },
    { -40, CAM_DATA_GROUND_Y_OFFSET },          // yOffsetOffGround (PCT)
    { 25, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // atLERPScaleOffGround (PCT)
};

/**
 * Setting    Mode    Function
 * -------    ----    --------
 * FISHING    TALK    KEEP3
 */
CameraModeValue D_8011B808[] = {
    { -30, CAM_DATA_Y_OFFSET },              // yOffset
    { 70, CAM_DATA_EYE_DIST },               // minDist
    { 200, CAM_DATA_EYE_DIST_NEXT },         // maxDist
    { 40, CAM_DATA_SWING_YAW_INIT },         // swingYawInitial
    { 10, CAM_DATA_SWING_YAW_FINAL },        // swingYawFinal
    { 0, CAM_DATA_SWING_PITCH_INIT },        // swingPitchInitial
    { 5, CAM_DATA_SWING_PITCH_FINAL },       // swingPitchFinal
    { 70, CAM_DATA_SWING_PITCH_ADJ },        // swingPitchAdj
    { 45, CAM_DATA_FOV },                    // fovTarget
    { 50, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 10, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // initTimer
    { 0x3F20, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode           Function
 * -------    -----------    --------
 * FISHING    FIRSTPERSON    SUBJ3
 */
CameraModeValue D_8011B838[] = {
    { 0, CAM_DATA_Y_OFFSET },                // eyeNextYOffset
    { 5, CAM_DATA_EYE_DIST },                // eyeDist
    { 50, CAM_DATA_EYE_DIST_NEXT },          // eyeNextDist
    { 10, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_0C
    { 0, CAM_DATA_AT_OFFSET_X },             // atOffset.x
    { 0, CAM_DATA_AT_OFFSET_Y },             // atOffset.y
    { 0, CAM_DATA_AT_OFFSET_Z },             // atOffset.z
    { 45, CAM_DATA_FOV },                    // fovTarget
    { 0x0F00, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode    Function
 * -------    ----    --------
 * FISHING    JUMP    JUMP1
 */
CameraModeValue D_8011B85C[] = {
    { -20, CAM_DATA_Y_OFFSET },              // atYOffset
    { 200, CAM_DATA_EYE_DIST },              // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 12, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateRateTarget
    { 35, CAM_DATA_MAX_YAW_UPDATE },         // maxYawUpdate
    { 60, CAM_DATA_FOV },                    // unk_14
    { 40, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0F00, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode        Function
 * -------    --------    --------
 * FISHING    FREEFALL    JUMP1
 */
CameraModeValue D_8011B87C[] = {
    { -20, CAM_DATA_Y_OFFSET },              // atYOffset
    { 200, CAM_DATA_EYE_DIST },              // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 15, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateRateTarget
    { 80, CAM_DATA_MAX_YAW_UPDATE },         // maxYawUpdate
    { 60, CAM_DATA_FOV },                    // unk_14
    { 20, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0F00, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode    Function
 * -------    ----    --------
 * FISHING    HANG    UNIQ1
 */
CameraModeValue D_8011B89C[] = {
    { -80, CAM_DATA_Y_OFFSET },          // yOffset
    { 200, CAM_DATA_EYE_DIST },          // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 40, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 60, CAM_DATA_FOV },                // fovTarget
    { 10, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x0F00, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode     Function
 * -------    -----    --------
 * FISHING    HANGZ    UNIQ1
 */
CameraModeValue D_8011B8B8[] = {
    { -120, CAM_DATA_Y_OFFSET },         // yOffset
    { 300, CAM_DATA_EYE_DIST },          // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 70, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 45, CAM_DATA_FOV },                // fovTarget
    { 10, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x2F00, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: CS_C Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * CS_C      NORMAL    UNIQ9
 */
CameraModeValue sSetDemoCModeNormVals[] = {
    { 0x3F00, CAM_DATA_FLAGS }, /* flags */
};

/*=====================================================================
 *                   Custom Data: JABU_TENTICLE Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * JABU_TENTICLE    NORMAL    NORM1
 */
CameraModeValue D_8011B8D8[] = {
    { 30, CAM_DATA_Y_OFFSET },               // yOffset
    { 200, CAM_DATA_EYE_DIST },              // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { -20, CAM_DATA_PITCH_TARGET },          // unk_0C
    { 15, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_10
    { 5, CAM_DATA_UNK_26 },                  // unk_14
    { 50, CAM_DATA_MAX_YAW_UPDATE },         // pitchTarget
    { 70, CAM_DATA_FOV },                    // fovTarget
    { 70, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0003, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * JABU_TENTICLE    BATTLE    BATT1
 */
CameraModeValue D_8011B900[] = {
    { -30, CAM_DATA_Y_OFFSET },          // yOffset (PCT)
    { 160, CAM_DATA_EYE_DIST },          // distance
    { 10, CAM_DATA_SWING_YAW_INIT },     // swingYawInitial
    { 10, CAM_DATA_SWING_YAW_FINAL },    // swingYawFinal
    { 0, CAM_DATA_SWING_PITCH_INIT },    // swingPitchInitial
    { 0, CAM_DATA_SWING_PITCH_FINAL },   // swingPitchFinal
    { 70, CAM_DATA_SWING_PITCH_ADJ },    // swingPitchAdj (PCT)
    { 60, CAM_DATA_FOV },                // fov
    { 40, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleOnGround (PCT)
    { 0x2002, CAM_DATA_FLAGS },
    { -50, CAM_DATA_GROUND_Y_OFFSET },          // yOffsetOffGround (PCT)
    { 20, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // atLERPScaleOffGround (PCT)
};

/*=====================================================================
 *                   Custom Data: DUNGEON2 Setting
 *=====================================================================
 */

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * DUNGEON2    NORMAL    NORM1
 */
CameraModeValue D_8011B930[] = {
    { -20, CAM_DATA_Y_OFFSET },              // yOffset
    { 350, CAM_DATA_EYE_DIST },              // distMin
    { 350, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 20, CAM_DATA_PITCH_TARGET },           // unk_0C
    { 15, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_10
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },   // unk_14
    { 30, CAM_DATA_MAX_YAW_UPDATE },         // pitchTarget
    { 60, CAM_DATA_FOV },                    // fovTarget
    { 60, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0003, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * DUNGEON2    TARGET    PARA1
 */
CameraModeValue D_8011B958[] = {
    { -20, CAM_DATA_Y_OFFSET },             // yOffset
    { 200, CAM_DATA_EYE_DIST },             // distTarget
    { 0, CAM_DATA_PITCH_TARGET },           // pitchTarget
    { 0, CAM_DATA_YAW_TARGET },             // yawTarget
    { 5, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_08
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_0C
    { 45, CAM_DATA_FOV },                   // fovTarget
    { 50, CAM_DATA_AT_LERP_STEP_SCALE },    // unk_14
    { 0x200A, CAM_DATA_FLAGS },
    { -40, CAM_DATA_GROUND_Y_OFFSET },          // unk_18
    { 20, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // unk_1C
};

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * DUNGEON2    BATTLE    BATT1
 */
CameraModeValue sSetDung2ModeBattVals[] = {
    { -20, CAM_DATA_Y_OFFSET },          // yOffset (PCT)
    { 180, CAM_DATA_EYE_DIST },          // distance
    { 10, CAM_DATA_SWING_YAW_INIT },     // swingYawInitial
    { 80, CAM_DATA_SWING_YAW_FINAL },    // swingYawFinal
    { -10, CAM_DATA_SWING_PITCH_INIT },  // swingPitchInitial
    { 10, CAM_DATA_SWING_PITCH_FINAL },  // swingPitchFinal
    { 25, CAM_DATA_SWING_PITCH_ADJ },    // swingPitchAdj (PCT)
    { 45, CAM_DATA_FOV },                // fov
    { 80, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleOnGround (PCT)
    { 0x2002, CAM_DATA_FLAGS },
    { -40, CAM_DATA_GROUND_Y_OFFSET },          // yOffsetOffGround (PCT)
    { 25, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // atLERPScaleOffGround (PCT)
};

/**
 * Setting     Mode    Function
 * --------    ----    --------
 * DUNGEON2    JUMP    JUMP1
 */
CameraModeValue D_8011B9B4[] = {
    { -20, CAM_DATA_Y_OFFSET },              // atYOffset
    { 350, CAM_DATA_EYE_DIST },              // distMin
    { 350, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 10, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateRateTarget
    { 50, CAM_DATA_MAX_YAW_UPDATE },         // maxYawUpdate
    { 60, CAM_DATA_FOV },                    // unk_14
    { 40, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode        Function
 * --------    --------    --------
 * DUNGEON2    FREEFALL    JUMP1
 */
CameraModeValue D_8011B9D4[] = {
    { -20, CAM_DATA_Y_OFFSET },              // atYOffset
    { 350, CAM_DATA_EYE_DIST },              // distMin
    { 350, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 15, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateRateTarget
    { 80, CAM_DATA_MAX_YAW_UPDATE },         // maxYawUpdate
    { 60, CAM_DATA_FOV },                    // unk_14
    { 20, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode     Function
 * --------    -----    --------
 * DUNGEON2    CLIMB    JUMP2
 */
CameraModeValue D_8011B9F4[] = {
    { -40, CAM_DATA_Y_OFFSET },             // atYOffset
    { 350, CAM_DATA_EYE_DIST },             // minDist
    { 350, CAM_DATA_EYE_DIST_NEXT },        // maxDist
    { 20, CAM_DATA_MIN_MAX_DIST_FACTOR },   // minMaxDistFactor
    { 5, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdRateTarget
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // xzUpdRateTarget
    { 60, CAM_DATA_FOV },                   // fovTarget
    { 40, CAM_DATA_AT_LERP_STEP_SCALE },    // atLERPStepScale
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * DUNGEON2    CLIMBZ    JUMP2
 */
CameraModeValue D_8011BA18[] = {
    { -40, CAM_DATA_Y_OFFSET },               // atYOffset
    { 350, CAM_DATA_EYE_DIST },               // minDist
    { 350, CAM_DATA_EYE_DIST_NEXT },          // maxDist
    { 20, CAM_DATA_MIN_MAX_DIST_FACTOR },     // minMaxDistFactor
    { 999, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdRateTarget
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },    // xzUpdRateTarget
    { 60, CAM_DATA_FOV },                     // fovTarget
    { 40, CAM_DATA_AT_LERP_STEP_SCALE },      // atLERPStepScale
    { 0x2006, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode    Function
 * --------    ----    --------
 * DUNGEON2    HANG    UNIQ1
 */
CameraModeValue D_8011BA3C[] = {
    { -50, CAM_DATA_Y_OFFSET },          // yOffset
    { 350, CAM_DATA_EYE_DIST },          // distMin
    { 350, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 40, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 60, CAM_DATA_FOV },                // fovTarget
    { 10, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode     Function
 * --------    -----    --------
 * DUNGEON2    HANGZ    UNIQ1
 */
CameraModeValue D_8011BA58[] = {
    { -100, CAM_DATA_Y_OFFSET },         // yOffset
    { 350, CAM_DATA_EYE_DIST },          // distMin
    { 350, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 70, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 45, CAM_DATA_FOV },                // fovTarget
    { 10, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x2000, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode     Function
 * --------    -----    --------
 * DUNGEON2    STILL    NORM1
 */
CameraModeValue D_8011BA74[] = {
    { -10, CAM_DATA_Y_OFFSET },               // yOffset
    { 350, CAM_DATA_EYE_DIST },               // distMin
    { 350, CAM_DATA_EYE_DIST_NEXT },          // distMax
    { 20, CAM_DATA_PITCH_TARGET },            // unk_0C
    { 100, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_10
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },    // unk_14
    { 100, CAM_DATA_MAX_YAW_UPDATE },         // pitchTarget
    { 60, CAM_DATA_FOV },                     // fovTarget
    { 5, CAM_DATA_AT_LERP_STEP_SCALE },       // atLERPScaleMax
    { 0xF003, CAM_DATA_FLAGS },
};

/**
 * Setting     Mode        Function
 * --------    --------    --------
 * DUNGEON2    PUSHPULL    PARA1
 */
CameraModeValue D_8011BA9C[] = {
    { 0, CAM_DATA_Y_OFFSET },               // yOffset
    { 280, CAM_DATA_EYE_DIST },             // distTarget
    { 25, CAM_DATA_PITCH_TARGET },          // pitchTarget
    { 0, CAM_DATA_YAW_TARGET },             // yawTarget
    { 5, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_08
    { 5, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_0C
    { 70, CAM_DATA_FOV },                   // fovTarget
    { 30, CAM_DATA_AT_LERP_STEP_SCALE },    // unk_14
    { 0x206A, CAM_DATA_FLAGS },
    { -20, CAM_DATA_GROUND_Y_OFFSET },          // unk_18
    { 30, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // unk_1C
};

/*=====================================================================
 *                   Custom Data: TEPPEN Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * TEPPEN     NORMAL    NORM1
 */
CameraModeValue D_8011BAC8[] = {
    { -10, CAM_DATA_Y_OFFSET },              // yOffset
    { 280, CAM_DATA_EYE_DIST },              // distMin
    { 320, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { -8, CAM_DATA_PITCH_TARGET },           // unk_0C
    { 20, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_10
    { 10, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_14
    { 80, CAM_DATA_MAX_YAW_UPDATE },         // pitchTarget
    { 60, CAM_DATA_FOV },                    // fovTarget
    { 80, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0002, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode            Function
 * -------    ------------    --------
 * TEPPEN     FOLLOWTARGET    KEEP1
 */
CameraModeValue D_8011BAF0[] = {
    { -20, CAM_DATA_Y_OFFSET },          // unk_00
    { 180, CAM_DATA_EYE_DIST },          // unk_04
    { 200, CAM_DATA_EYE_DIST_NEXT },     // unk_08
    { 35, CAM_DATA_SWING_YAW_INIT },     // unk_0C
    { 45, CAM_DATA_SWING_YAW_FINAL },    // unk_10
    { 0, CAM_DATA_SWING_PITCH_INIT },    // unk_14
    { -5, CAM_DATA_SWING_PITCH_FINAL },  // unk_18
    { 20, CAM_DATA_SWING_PITCH_ADJ },    // unk_1C
    { 50, CAM_DATA_FOV },                // unk_20
    { 50, CAM_DATA_AT_LERP_STEP_SCALE }, // unk_24
    { 0x2001, CAM_DATA_FLAGS },
    { -50, CAM_DATA_GROUND_Y_OFFSET },          // unk_28
    { 30, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // unk_2C
};

/**
 * Setting    Mode    Function
 * -------    ----    --------
 * TEPPEN     TALK    KEEP3
 */
CameraModeValue D_8011BB24[] = {
    { -80, CAM_DATA_Y_OFFSET },              // yOffset
    { 200, CAM_DATA_EYE_DIST },              // minDist
    { 250, CAM_DATA_EYE_DIST_NEXT },         // maxDist
    { 30, CAM_DATA_SWING_YAW_INIT },         // swingYawInitial
    { 10, CAM_DATA_SWING_YAW_FINAL },        // swingYawFinal
    { -8, CAM_DATA_SWING_PITCH_INIT },       // swingPitchInitial
    { -8, CAM_DATA_SWING_PITCH_FINAL },      // swingPitchFinal
    { 30, CAM_DATA_SWING_PITCH_ADJ },        // swingPitchAdj
    { 50, CAM_DATA_FOV },                    // fovTarget
    { 50, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 10, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // initTimer
    { 0x3520, CAM_DATA_FLAGS },
};

/*=====================================================================
 *                   Custom Data: NORMAL4 Setting
 *=====================================================================
 */

/**
 * Setting    Mode    Function
 * -------    ----    --------
 * NORMAL4    TALK    KEEP3
 */
CameraModeValue D_8011BB54[] = {
    { -30, CAM_DATA_Y_OFFSET },              // yOffset
    { 70, CAM_DATA_EYE_DIST },               // minDist
    { 200, CAM_DATA_EYE_DIST_NEXT },         // maxDist
    { 40, CAM_DATA_SWING_YAW_INIT },         // swingYawInitial
    { 10, CAM_DATA_SWING_YAW_FINAL },        // swingYawFinal
    { 0, CAM_DATA_SWING_PITCH_INIT },        // swingPitchInitial
    { 5, CAM_DATA_SWING_PITCH_FINAL },       // swingPitchFinal
    { 70, CAM_DATA_SWING_PITCH_ADJ },        // swingPitchAdj
    { 45, CAM_DATA_FOV },                    // fovTarget
    { 50, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 10, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // initTimer
    { 0x35A0, CAM_DATA_FLAGS },
};

/*=====================================================================
 *             CAMERA MODES TO DATA
 *=====================================================================
 */

CameraMode sCamSetNorm0Modes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011A3A0), D_8011A3A0 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A3C8), D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A3F4), D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011A428), D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(D_8011A458), D_8011A458 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A488), D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4AC), D_8011A4AC }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4D0), D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4F4), D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A538), D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A55C), D_8011A55C }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A580), D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5C4), D_8011A5C4 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5E0), D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5FC), D_8011A5FC }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(D_8011A61C), D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011A638), D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A660), D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_FOLLLOWRANG
};

CameraMode sCamSetNorm1Modes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetNorm1ModeNormVals), sSetNorm1ModeNormVals }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNorm1ModeParaVals), sSetNorm1ModeParaVals }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A714), D_8011A714 },                       // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011A428), D_8011A428 },                       // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(D_8011A748), D_8011A748 },                       // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A7D8), D_8011A7D8 },                       // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4AC), D_8011A4AC },                       // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4D0), D_8011A4D0 },                       // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4F4), D_8011A4F4 },                       // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A778), D_8011A778 },                       // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A538), D_8011A538 },                       // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A55C), D_8011A55C },                       // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A7FC), D_8011A7FC },                       // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A798), D_8011A798 },                       // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A83C), D_8011A83C },                       // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A858), D_8011A858 },                       // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A7B8), D_8011A7B8 },                       // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(D_8011A820), D_8011A820 },                       // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011A874), D_8011A874 },                       // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A660), D_8011A660 },                       // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C },                       // CAM_MODE_FOLLLOWRANG
};

CameraMode sCamSetDungeon0Modes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011A89C), D_8011A89C }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A8C4), D_8011A8C4 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A8F0), D_8011A8F0 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011A428), D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(D_8011A924), D_8011A924 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A994), D_8011A994 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4AC), D_8011A4AC }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4D0), D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4F4), D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A778), D_8011A778 }, // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A538), D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A55C), D_8011A55C }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A9B8), D_8011A9B8 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A954), D_8011A954 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A9F8), D_8011A9F8 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011AA14), D_8011AA14 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A974), D_8011A974 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(D_8011A9DC), D_8011A9DC }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011AA30), D_8011AA30 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A660), D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_FOLLLOWRANG
};

CameraMode sCamSetDungeon1Modes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011AA58), D_8011AA58 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A8C4), D_8011A8C4 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A714), D_8011A714 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011AA80), D_8011AA80 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(D_8011A924), D_8011A924 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011AAF0), D_8011AAF0 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4AC), D_8011A4AC }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4D0), D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4F4), D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A778), D_8011A778 }, // CAM_MODE_HOOKSHOT,
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A538), D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A55C), D_8011A55C }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011AB14), D_8011AB14 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011AAB0), D_8011AAB0 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011AB54), D_8011AB54 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011AB70), D_8011AB70 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011AAD0), D_8011AAD0 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(D_8011AB38), D_8011AB38 }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011AB8C), D_8011AB8C }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011ABB4), D_8011ABB4 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_FOLLLOWRANG
};

CameraMode sCamSetNorm3Modes[] = {
    { CAM_FUNC_JUMP3, ARRAY_COUNT(sSetNorm3ModeNormVals), sSetNorm3ModeNormVals }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011AC08), D_8011AC08 },                       // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A3F4), D_8011A3F4 },                       // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011AC34), D_8011AC34 },                       // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(D_8011A458), D_8011A458 },                       // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A488), D_8011A488 },                       // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4AC), D_8011A4AC },                       // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4D0), D_8011A4D0 },                       // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4F4), D_8011A4F4 },                       // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 },                       // CAM_MODE_HOOKSHOT
    { CAM_FUNC_JUMP3, ARRAY_COUNT(sSetNorm3ModeBoomVals), sSetNorm3ModeBoomVals }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_NONE, 0, NULL },                                                    // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A580), D_8011A580 },                       // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 },                       // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5C4), D_8011A5C4 },                       // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5E0), D_8011A5E0 },                       // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 },                       // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(D_8011A61C), D_8011A61C },                       // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011A638), D_8011A638 },                       // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A660), D_8011A660 },                       // CAM_MODE_PUSHPULL
};

CameraMode sCamSetHorse0Modes[] = {
    { CAM_FUNC_NORM3, ARRAY_COUNT(sSetHrse0ModeNormVals), sSetHrse0ModeNormVals }, // CAM_MODE_NORMAL
    { CAM_FUNC_NORM3, ARRAY_COUNT(sSetHrse0ModeParaVals), sSetHrse0ModeParaVals }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011ACF8), D_8011ACF8 },                       // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011AD2C), D_8011AD2C },                       // CAM_MODE_TALK
    { CAM_FUNC_NONE, 0, NULL },                                                    // CAM_MODE_BATTLE
    { CAM_FUNC_NONE, 0, NULL },                                                    // CAM_MODE_CLIMB
    { CAM_FUNC_NONE, 0, NULL },                                                    // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011ACD4), D_8011ACD4 },                       // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4F4), D_8011A4F4 },                       // CAM_MODE_BOWARROWZ
};

CameraMode sCamSetBossGomaModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011AD5C), D_8011AD5C }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A3C8), D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A3F4), D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011A428), D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(D_8011AD84), D_8011AD84 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A488), D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4AC), D_8011A4AC }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4D0), D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4F4), D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_HOOKSHOT,
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A538), D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A55C), D_8011A55C }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A580), D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5C4), D_8011A5C4 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5E0), D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(D_8011A9DC), D_8011A9DC }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011A638), D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A660), D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_FOLLLOWRANG
};

CameraMode sCamSetBossDodoModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011ADB4), D_8011ADB4 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A3C8), D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A3F4), D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011A428), D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(D_8011ADDC), D_8011ADDC }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A488), D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4AC), D_8011A4AC }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4D0), D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4F4), D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_HOOKSHOT,
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A538), D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A55C), D_8011A55C }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A580), D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5C4), D_8011A5C4 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5E0), D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(D_8011A61C), D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011A638), D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A660), D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_FOLLLOWRANG
};

CameraMode sCamSetBossBariModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011AE0C), D_8011AE0C }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A3C8), D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A3F4), D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011A428), D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(D_8011AE34), D_8011AE34 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A488), D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4AC), D_8011A4AC }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4D0), D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4F4), D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_HOOKSHOT,
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A538), D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A55C), D_8011A55C }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A580), D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5C4), D_8011A5C4 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5E0), D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(D_8011A61C), D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011A638), D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A660), D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_FOLLLOWRANG
};

CameraMode sCamSetBossFGanonModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011AE64), D_8011AE64 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A3C8), D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A3F4), D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011A428), D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(D_8011AE8C), D_8011AE8C }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A488), D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4AC), D_8011A4AC }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4D0), D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4F4), D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A538), D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A55C), D_8011A55C }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A580), D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5C4), D_8011A5C4 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5E0), D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(D_8011A61C), D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011A638), D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A660), D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_FOLLLOWRANG
};

CameraMode sCamSetBossBalModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011AEBC), D_8011AEBC }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A3C8), D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A3F4), D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011A428), D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(D_8011AEE4), D_8011AEE4 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A488), D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4AC), D_8011A4AC }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4D0), D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4F4), D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A538), D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A55C), D_8011A55C }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A580), D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5C4), D_8011A5C4 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5E0), D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(D_8011A61C), D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011A638), D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A660), D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_FOLLLOWRANG
};

CameraMode sCamSetBossShadesModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011AF14), D_8011AF14 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A3C8), D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A3F4), D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011A428), D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(D_8011AF3C), D_8011AF3C }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A488), D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4AC), D_8011A4AC }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4D0), D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4F4), D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_HOOKSHOT,
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A538), D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A55C), D_8011A55C }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A580), D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011AF6C), D_8011AF6C }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5C4), D_8011A5C4 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5E0), D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011AF6C), D_8011AF6C }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(D_8011A61C), D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011A638), D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A660), D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_FOLLLOWRANG
};

CameraMode sCamSetBossMofaModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011AF94), D_8011AF94 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A3C8), D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A3F4), D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011A428), D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(D_8011AFBC), D_8011AFBC }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A488), D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4AC), D_8011A4AC }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4D0), D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4F4), D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A538), D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A55C), D_8011A55C }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A580), D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5C4), D_8011A5C4 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5E0), D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_FREEFAL
    { CAM_FUNC_BATT4, ARRAY_COUNT(D_8011A61C), D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011A638), D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A660), D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_FOLLLOWRANG
};

CameraMode sCamSetBossTwin0Modes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011AFEC), D_8011AFEC }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A3C8), D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A3F4), D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011A428), D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(D_8011B014), D_8011B014 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A488), D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4AC), D_8011A4AC }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4D0), D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4F4), D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_HOOKSHOT,
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A538), D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A55C), D_8011A55C }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A580), D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5C4), D_8011A5C4 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5E0), D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_FREEFAL
    { CAM_FUNC_BATT4, ARRAY_COUNT(D_8011A61C), D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011A638), D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A660), D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_FOLLLOWRANG
};

CameraMode sCamSetBossTwin1Modes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011B044), D_8011B044 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A3C8), D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A3F4), D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011A428), D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(D_8011B014), D_8011B014 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A488), D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4AC), D_8011A4AC }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4D0), D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4F4), D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_HOOKSHOT,
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A538), D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A55C), D_8011A55C }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A580), D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5C4), D_8011A5C4 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5E0), D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_FREEFAL
    { CAM_FUNC_BATT4, ARRAY_COUNT(D_8011A61C), D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011A638), D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A660), D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_FOLLLOWRANG
};

CameraMode sCamSetBossGanon1Modes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011B06C), D_8011B06C }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A3C8), D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A3F4), D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011A428), D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(D_8011AE8C), D_8011AE8C }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A488), D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4AC), D_8011A4AC }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4D0), D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4F4), D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_HOOKSHOT,
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A538), D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A55C), D_8011A55C }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A580), D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5C4), D_8011A5C4 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5E0), D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_FREEFAL
    { CAM_FUNC_BATT4, ARRAY_COUNT(D_8011B094), D_8011B094 }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011A638), D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A660), D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_FOLLLOWRANG
};

CameraMode sCamSetBossGanon2Modes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011B0B0), D_8011B0B0 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A3C8), D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A3F4), D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011A428), D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(D_8011B0D8), D_8011B0D8 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A488), D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4AC), D_8011A4AC }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4D0), D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4F4), D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_HOOKSHOT,
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A538), D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A55C), D_8011A55C }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A580), D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5C4), D_8011A5C4 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5E0), D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_FREEFAL
    { CAM_FUNC_BATT4, ARRAY_COUNT(D_8011A61C), D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011A638), D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A660), D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_FOLLLOWRANG
};

CameraMode sCamSetTower0Modes[] = {
    { CAM_FUNC_NORM2, ARRAY_COUNT(D_8011B108), D_8011B108 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A3C8), D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A3F4), D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011A428), D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(D_8011A458), D_8011A458 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A488), D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4AC), D_8011A4AC }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4D0), D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4F4), D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A538), D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A55C), D_8011A55C }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A580), D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_NORM2, ARRAY_COUNT(D_8011B12C), D_8011B12C }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5C4), D_8011A5C4 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5E0), D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(D_8011A61C), D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011A638), D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A660), D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_FOLLLOWRANG
};

CameraMode sCamSetTower1Modes[] = {
    { CAM_FUNC_NORM2, ARRAY_COUNT(D_8011B150), D_8011B150 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A3C8), D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A3F4), D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011A428), D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(D_8011A458), D_8011A458 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A488), D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4AC), D_8011A4AC }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4D0), D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4F4), D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A538), D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A55C), D_8011A55C }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A580), D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_NORM2, ARRAY_COUNT(D_8011B174), D_8011B174 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5C4), D_8011A5C4 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5E0), D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(D_8011A61C), D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011A638), D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A660), D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_FOLLLOWRANG
};

CameraMode sCamSetFixed0Modes[] = {
    { CAM_FUNC_FIXD1, ARRAY_COUNT(sSetFixd0ModeNormVals), sSetFixd0ModeNormVals }, // CAM_MODE_NORMAL
    { CAM_FUNC_NONE, 0, NULL },                                                    // CAM_MODE_TARGET
    { CAM_FUNC_FIXD1, ARRAY_COUNT(D_8011B1A8), D_8011B1A8 },                       // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_FIXD1, ARRAY_COUNT(D_8011B1B8), D_8011B1B8 },                       // CAM_MODE_TALK
};

CameraMode sCamSetFixed1Modes[] = {
    { CAM_FUNC_FIXD1, ARRAY_COUNT(D_8011B1C8), D_8011B1C8 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetCirc0Modes[] = {
    { CAM_FUNC_FIXD2, ARRAY_COUNT(sSetCirc0ModeNormVals), sSetCirc0ModeNormVals }, // CAM_MODE_NORMAL
};

CameraMode sCamSetCirc2Modes[] = {
    { CAM_FUNC_DATA4, ARRAY_COUNT(sSetCirc2ModeNormVals), sSetCirc2ModeNormVals }, // CAM_MODE_NORMAL
};

CameraMode sCamSetCirc3Modes[] = {
    { CAM_FUNC_FIXD4, ARRAY_COUNT(D_8011B1F8), D_8011B1F8 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A3C8), D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A3F4), D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011A428), D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(D_8011A748), D_8011A748 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A488), D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4AC), D_8011A4AC }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4D0), D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4F4), D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A538), D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A55C), D_8011A55C }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A580), D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_JUMP
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_HANG
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_HANGZ
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(D_8011A61C), D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011A638), D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A660), D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_FOLLLOWRANG
};

CameraMode sCamSetPreRend0Modes[] = {
    { CAM_FUNC_FIXD3, ARRAY_COUNT(D_8011B20C), D_8011B20C },                           // CAM_MODE_NORMAL
    { CAM_FUNC_NONE, 0, NULL },                                                        // CAM_MODE_TARGET
    { CAM_FUNC_FIXD3, ARRAY_COUNT(sSetPR0ModeKeepTalkVals), sSetPR0ModeKeepTalkVals }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_FIXD3, ARRAY_COUNT(sSetPR0ModeKeepTalkVals), sSetPR0ModeKeepTalkVals }, // CAM_MODE_TALK
};

CameraMode sCamSetPreRend1Modes[] = {
    { CAM_FUNC_UNIQ7, ARRAY_COUNT(sSetPR1ModeNormVals), sSetPR1ModeNormVals },           // CAM_MODE_NORMAL
    { CAM_FUNC_NONE, 0, NULL },                                                          // CAM_MODE_TARGET
    { CAM_FUNC_UNIQ7, ARRAY_COUNT(sSetPR1ModeKeepVals), sSetPR1ModeKeepVals },           // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP0, ARRAY_COUNT(sSetPreRend1ModeTalkVals), sSetPreRend1ModeTalkVals }, // CAM_MODE_TALK
};

CameraMode sCamSetPreRend3Modes[] = {
    { CAM_FUNC_SPEC6, ARRAY_COUNT(D_8011B20C), D_8011B20C }, // CAM_MODE_NORMAL
};

CameraMode sCamSetDoor0Modes[] = {
    { CAM_FUNC_UNIQ3, ARRAY_COUNT(sSetDoor0ModeNormVals), sSetDoor0ModeNormVals }, // CAM_MODE_NORMAL
};

CameraMode sCamSetDoorCModes[] = {
    { CAM_FUNC_SPEC9, ARRAY_COUNT(sSetDoorCModeNormVals), sSetDoorCModeNormVals }, // CAM_MODE_NORMAL
    { CAM_FUNC_SPEC9, ARRAY_COUNT(sSetDoorCModeTargetVals), sSetDoorCModeTargetVals }, // CAM_MODE_TARGET
};

CameraMode sCamSetRail3Modes[] = {
    { CAM_FUNC_SUBJ4, ARRAY_COUNT(sSetRail3ModeNormVals), sSetRail3ModeNormVals }, // CAM_MODE_NORMAL
};

CameraMode sCamSetStart0Modes[] = {
    { CAM_FUNC_UNIQ0, ARRAY_COUNT(D_8011B20C), D_8011B20C }, // CAM_MODE_NORMAL
};

CameraMode sCamSetStart1Modes[] = {
    { CAM_FUNC_UNIQ0, ARRAY_COUNT(D_8011B270), D_8011B270 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetFree0Modes[] = {
    { CAM_FUNC_UNIQ6, ARRAY_COUNT(sSetFree0ModeNormVals), sSetFree0ModeNormVals }, // CAM_MODE_NORMAL
};

CameraMode sCamSetFree1Modes[] = {
    { CAM_FUNC_UNIQ6, ARRAY_COUNT(sSetFree1ModeNormVals), sSetFree1ModeNormVals }, // CAM_MODE_NORMAL
};

CameraMode sCamSetCirc4Modes[] = {
    { CAM_FUNC_FIXD2, ARRAY_COUNT(sSetCirc4ModeNormVals), sSetCirc4ModeNormVals }, // CAM_MODE_NORMAL
};

CameraMode sCamSetCirc5Modes[] = {
    { CAM_FUNC_UNIQ2, ARRAY_COUNT(D_8011B290), D_8011B290 }, // CAM_MODE_NORMAL
    { CAM_FUNC_UNIQ2, ARRAY_COUNT(D_8011B2A0), D_8011B2A0 }, // CAM_MODE_TARGET
};

CameraMode sCamSetDemo0Modes[] = {
    { CAM_FUNC_DEMO1, ARRAY_COUNT(D_8011B2B0), D_8011B2B0 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetDemo1Modes[] = {
    { CAM_FUNC_DEMO2, ARRAY_COUNT(D_8011B2B0), D_8011B2B0 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetMori1Modes[] = {
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetMori1ModeNormVals), sSetMori1ModeNormVals }, // CAM_MODE_NORMAL
    { CAM_FUNC_NONE, 0, NULL },                                                    // CAM_MODE_TARGET
    { CAM_FUNC_NONE, 0, NULL },                                                    // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_PARA3, ARRAY_COUNT(D_8011B2E0), D_8011B2E0 },                       // CAM_MODE_TALK
};

CameraMode sCamSetItem0Modes[] = {
    { CAM_FUNC_DEMO3, ARRAY_COUNT(D_8011B2E4), D_8011B2E4 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetItem1Modes[] = {
    { CAM_FUNC_DEMO4, ARRAY_COUNT(D_8011B2E4), D_8011B2E4 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetDemo3Modes[] = {
    { CAM_FUNC_DEMO9, ARRAY_COUNT(sSetDemo3ModeNormVals), sSetDemo3ModeNormVals }, // CAM_MODE_NORMAL
};

CameraMode sCamSetDemo4Modes[] = {
    { CAM_FUNC_DEMO5, ARRAY_COUNT(D_8011B2B0), D_8011B2B0 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetUFOBeanModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011B2F4), D_8011B2F4 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011B31C), D_8011B31C }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A3F4), D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011A428), D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(D_8011A748), D_8011A748 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A488), D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4AC), D_8011A4AC }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4D0), D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4F4), D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A538), D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A55C), D_8011A55C }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A580), D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011B348), D_8011B348 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011B368), D_8011B368 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011B384), D_8011B384 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(D_8011A61C), D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011B3A0), D_8011B3A0 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A660), D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_FOLLLOWRANG
};

CameraMode sCamSetLiftBeanModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011B3C8), D_8011B3C8 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011B3F0), D_8011B3F0 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A3F4), D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011A428), D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(D_8011A748), D_8011A748 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A488), D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4AC), D_8011A4AC }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4D0), D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4F4), D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A538), D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A55C), D_8011A55C }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A580), D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011B41C), D_8011B41C }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011B43C), D_8011B43C }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011B458), D_8011B458 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(D_8011A61C), D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011B474), D_8011B474 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A660), D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_FOLLLOWRANG
};

CameraMode sCamSetScene0Modes[] = {
    { CAM_FUNC_SPEC9, ARRAY_COUNT(sSetScn0ModeNormVals), sSetScn0ModeNormVals }, // CAM_MODE_NORMAL
};

CameraMode sCamSetScene1Modes[] = {
    { CAM_FUNC_UNIQ2, ARRAY_COUNT(D_8011B4A8), D_8011B4A8 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetHidan1Modes[] = {
    { CAM_FUNC_SPEC7, ARRAY_COUNT(D_8011B20C), D_8011B20C }, // CAM_MODE_NORMAL
};

CameraMode sCamSetHidan2Modes[] = {
    { CAM_FUNC_SPEC4, ARRAY_COUNT(D_8011B2B0), D_8011B2B0 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetMori2Modes[] = {
    { CAM_FUNC_UNIQ5, ARRAY_COUNT(D_8011B2B0), D_8011B2B0 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetMori3Modes[] = {
    { CAM_FUNC_DEMO6, ARRAY_COUNT(D_8011B2B0), D_8011B2B0 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetTakoModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011B4B8), D_8011B4B8 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A8C4), D_8011A8C4 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A8F0), D_8011A8F0 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011A428), D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(D_8011B4E0), D_8011B4E0 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A994), D_8011A994 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4AC), D_8011A4AC }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4D0), D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4F4), D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A778), D_8011A778 }, // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A538), D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A55C), D_8011A55C }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A9B8), D_8011A9B8 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A954), D_8011A954 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A9F8), D_8011A9F8 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011AA14), D_8011AA14 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A974), D_8011A974 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(D_8011A9DC), D_8011A9DC }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011B510), D_8011B510 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A660), D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_FOLLLOWRANG
};

CameraMode sCamSetSpot05AModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011B538), D_8011B538 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011B560), D_8011B560 }, // CAM_MODE_TARGET
    { 0, 0, NULL },                                          // CAM_MODE_FOLLOWTARGET
    { 0, 0, NULL },                                          // CAM_MODE_TALK
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011B58C), D_8011B58C }, // CAM_MODE_BATTLE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011B5B8), D_8011B5B8 }, // CAM_MODE_CLIMB
};

CameraMode sCamSetSpot05BModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011B5E0), D_8011B5E0 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011B608), D_8011B608 }, // CAM_MODE_TARGET
    { 0, 0, NULL },                                          // CAM_MODE_FOLLOWTARGET
    { 0, 0, NULL },                                          // CAM_MODE_TALK
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011B634), D_8011B634 }, // CAM_MODE_BATTLE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011B660), D_8011B660 }, // CAM_MODE_CLIMB
};

CameraMode sCamSetHidan3Modes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011B688), D_8011B688 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011B6B0), D_8011B6B0 }, // CAM_MODE_TARGET
    { 0, 0, NULL },                                          // CAM_MODE_FOLLOWTARGET
    { 0, 0, NULL },                                          // CAM_MODE_TALK
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011B6DC), D_8011B6DC }, // CAM_MODE_BATTLE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011B708), D_8011B708 }, // CAM_MODE_CLIMB
};

CameraMode sCamSetItem2Modes[] = {
    { CAM_FUNC_KEEP4, ARRAY_COUNT(D_8011B730), D_8011B730 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetCirc6Modes[] = {
    { CAM_FUNC_SPEC0, ARRAY_COUNT(sSetCirc6ModeNormVals), sSetCirc6ModeNormVals }, // CAM_MODE_NORMAL
};

CameraMode sCamSetNorm2Modes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011B75C), D_8011B75C }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A3C8), D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A3F4), D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011A428), D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(D_8011A748), D_8011A748 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A488), D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4AC), D_8011A4AC }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4D0), D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4F4), D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A538), D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A55C), D_8011A55C }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A580), D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5C4), D_8011A5C4 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5E0), D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(D_8011A61C), D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011A638), D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A660), D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_FOLLLOWRANG
};

CameraMode sCamSetFishingModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011B784), D_8011B784 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011B7AC), D_8011B7AC }, // CAM_MODE_TARGET
    { CAM_FUNC_BATT1, ARRAY_COUNT(D_8011B7D8), D_8011B7D8 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011B808), D_8011B808 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(D_8011B7D8), D_8011B7D8 }, // CAM_MODE_BATTLE
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011B838), D_8011B838 }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_BOWARROW
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_BOWARROWZ
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_HOOKSHOT
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_BOOMERANG
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_SLINGSHOT
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011B85C), D_8011B85C }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011B89C), D_8011B89C }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011B8B8), D_8011B8B8 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011B87C), D_8011B87C }, // CAM_MODE_FREEFALL
};

CameraMode sCamSetDemoCModes[] = {
    { CAM_FUNC_UNIQ9, ARRAY_COUNT(sSetDemoCModeNormVals), sSetDemoCModeNormVals }, // CAM_MODE_NORMAL
};

CameraMode sCamSetUOFiberModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011B8D8), D_8011B8D8 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A3C8), D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A3F4), D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011A428), D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(D_8011B900), D_8011B900 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A488), D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4AC), D_8011A4AC }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4D0), D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4F4), D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A538), D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A55C), D_8011A55C }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A580), D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5C4), D_8011A5C4 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5E0), D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(D_8011A61C), D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011A638), D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A660), D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_FOLLLOWRANG
};

CameraMode sCamSetDungeon2Modes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011B930), D_8011B930 },                       // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011B958), D_8011B958 },                       // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A8F0), D_8011A8F0 },                       // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011A428), D_8011A428 },                       // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetDung2ModeBattVals), sSetDung2ModeBattVals }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011B9F4), D_8011B9F4 },                       // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4AC), D_8011A4AC },                       // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4D0), D_8011A4D0 },                       // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4F4), D_8011A4F4 },                       // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A778), D_8011A778 },                       // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A538), D_8011A538 },                       // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A55C), D_8011A55C },                       // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011BA18), D_8011BA18 },                       // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011B9B4), D_8011B9B4 },                       // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011BA3C), D_8011BA3C },                       // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011BA58), D_8011BA58 },                       // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011B9D4), D_8011B9D4 },                       // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(D_8011A61C), D_8011A61C },                       // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011BA74), D_8011BA74 },                       // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011BA9C), D_8011BA9C },                       // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C },                       // CAM_MODE_FOLLLOWRANG
};

CameraMode sCamSetTeppenModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011BAC8), D_8011BAC8 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A3C8), D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011BAF0), D_8011BAF0 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011BB24), D_8011BB24 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(D_8011A458), D_8011A458 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A488), D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4AC), D_8011A4AC }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4D0), D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4F4), D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A538), D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A55C), D_8011A55C }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A580), D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5C4), D_8011A5C4 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5E0), D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(D_8011A61C), D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011A638), D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A660), D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_FOLLLOWRANG
};

CameraMode sCamSetCirc7Modes[] = {
    { CAM_FUNC_FIXD4, ARRAY_COUNT(D_8011B1F8), D_8011B1F8 }, // CAM_MODE_NORMAL
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_TARGET
    { CAM_FUNC_FIXD4, ARRAY_COUNT(D_8011B1F8), D_8011B1F8 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011A428), D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_BATTLE
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4AC), D_8011A4AC }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4D0), D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A538), D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A55C), D_8011A55C }, // CAM_MODE_SLINGSHOT
};

CameraMode sCamSetNorm4Modes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011B75C), D_8011B75C }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A3C8), D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A3F4), D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(D_8011BB54), D_8011BB54 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(D_8011A748), D_8011A748 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A488), D_8011A488 }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4AC), D_8011A4AC }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4D0), D_8011A4D0 }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A4F4), D_8011A4F4 }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A538), D_8011A538 }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(D_8011A55C), D_8011A55C }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(D_8011A580), D_8011A580 }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5C4), D_8011A5C4 }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(D_8011A5E0), D_8011A5E0 }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(D_8011A5A4), D_8011A5A4 }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(D_8011A61C), D_8011A61C }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(D_8011A638), D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(D_8011A660), D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_FOLLLOWRANG
};

CameraSetting sCameraSettings[] = {
    { { 0x00000000 }, NULL },                   // CAM_SET_NONE
    { { 0x051FFFFF }, sCamSetNorm0Modes },      // CAM_SET_NORMAL0
    { { 0x051FFFFF }, sCamSetNorm1Modes },      // CAM_SET_NORMAL1
    { { 0x051FFFFF }, sCamSetDungeon0Modes },   // CAM_SET_DUNGEON0
    { { 0x051FFFFF }, sCamSetDungeon1Modes },   // CAM_SET_DUNGEON1
    { { 0x050FF7FF }, sCamSetNorm3Modes },      // CAM_SET_NORMAL3
    { { 0x8500018F }, sCamSetHorse0Modes },     // CAM_SET_HORSE
    { { 0x051FFFFF }, sCamSetBossGomaModes },   // CAM_SET_BOSS_GOHMA
    { { 0x051FFFFF }, sCamSetBossDodoModes },   // CAM_SET_BOSS_DODONGO
    { { 0x051FFFFF }, sCamSetBossBariModes },   // CAM_SET_BOSS_BARINADE
    { { 0x051FFFFF }, sCamSetBossFGanonModes }, // CAM_SET_BOSS_PHANTOM
    { { 0x051FFFFF }, sCamSetBossBalModes },    // CAM_SET_BOSS_VOLVAGIA
    { { 0x051FFFFF }, sCamSetBossShadesModes }, // CAM_SET_BOSS_BONGO
    { { 0x051FFFFF }, sCamSetBossMofaModes },   // CAM_SET_BOSS_MORPHA
    { { 0x051FFFFF }, sCamSetBossTwin0Modes },  // CAM_SET_BOSS_TWINROVA_PLATFORM
    { { 0x051FFFFF }, sCamSetBossTwin1Modes },  // CAM_SET_BOSS_TWINROVA_FLOOR
    { { 0x051FFFFF }, sCamSetBossGanon1Modes }, // CAM_SET_BOSS_GANONDORF
    { { 0x051FFFFF }, sCamSetBossGanon2Modes }, // CAM_SET_BOSS_GANON
    { { 0x851FFFFF }, sCamSetTower0Modes },     // CAM_SET_TOWER_CLIMB
    { { 0x851FFFFF }, sCamSetTower1Modes },     // CAM_SET_TOWER_UNUSED
    { { 0x8500000D }, sCamSetFixed0Modes },     // CAM_SET_MARKET_BALCONY
    { { 0x85000001 }, sCamSetFixed1Modes },     // CAM_SET_CHU_BOWLING
    { { 0x85000001 }, sCamSetCirc0Modes },      // CAM_SET_CIRCLE0
    { { 0x85000001 }, sCamSetCirc2Modes },      // CAM_SET_SHOP_BROWSING
    { { 0x851E1FFF }, sCamSetCirc3Modes },      // CAM_SET_CIRCLE3
    { { 0x8C00000D }, sCamSetPreRend0Modes },   // CAM_SET_PREREND_FIXED
    { { 0x8C00000D }, sCamSetPreRend1Modes },   // CAM_SET_PREREND_ROTATE
    { { 0x8C000001 }, sCamSetPreRend3Modes },   // CAM_SET_PREREND_SCROLL
    { { 0xC5000001 }, sCamSetDoor0Modes },      // CAM_SET_DOOR0
    { { 0xC5000003 }, sCamSetDoorCModes },      // CAM_SET_DOORC
    { { 0xC5000001 }, sCamSetRail3Modes },      // CAM_SET_CRAWLSPACE
    { { 0xC5000001 }, sCamSetStart0Modes },     // CAM_SET_START0
    { { 0xC5000001 }, sCamSetStart1Modes },     // CAM_SET_START1
    { { 0x05000001 }, sCamSetFree0Modes },      // CAM_SET_FREE0
    { { 0x05000001 }, sCamSetFree1Modes },      // CAM_SET_FREE2
    { { 0x85000001 }, sCamSetCirc4Modes },      // CAM_SET_PRISON
    { { 0x05000003 }, sCamSetCirc5Modes },      // CAM_SET_DIVING
    { { 0xCE000001 }, sCamSetDemo0Modes },      // CAM_SET_CS_0
    { { 0x4E000001 }, sCamSetDemo1Modes },      // CAM_SET_CS_1
    { { 0x05000009 }, sCamSetMori1Modes },      // CAM_SET_FOREST_BIRDS_EYE
    { { 0x45000001 }, sCamSetItem0Modes },      // CAM_SET_SLOW_CHEST_CS
    { { 0x45000001 }, sCamSetItem1Modes },      // CAM_SET_ITEM_UNUSED
    { { 0x45000001 }, sCamSetDemo3Modes },      // CAM_SET_CS_3
    { { 0x45000001 }, sCamSetDemo4Modes },      // CAM_SET_CS_4
    { { 0x451FFFFF }, sCamSetUFOBeanModes },    // CAM_SET_BEAN_GENERIC
    { { 0x451FFFFF }, sCamSetLiftBeanModes },   // CAM_SET_BEAN_LOST_WOODS
    { { 0xC5000001 }, sCamSetScene0Modes },     // CAM_SET_SCENE_UNUSED
    { { 0x45000001 }, sCamSetScene1Modes },     // CAM_SET_SCENE_TRANSITION
    { { 0x05000001 }, sCamSetHidan1Modes },     // CAM_SET_FIRE_PLATFORM
    { { 0x45000001 }, sCamSetHidan2Modes },     // CAM_SET_FIRE_STAIRCASE
    { { 0x45000001 }, sCamSetMori2Modes },      // CAM_SET_FOREST_UNUSED
    { { 0x45000001 }, sCamSetMori3Modes },      // CAM_SET_FOREST_POES
    { { 0x451FFFFF }, sCamSetTakoModes },       // CAM_SET_BIG_OCTO
    { { 0x05000033 }, sCamSetSpot05AModes },    // CAM_SET_MEADOW_MAZE
    { { 0x05000033 }, sCamSetSpot05BModes },    // CAM_SET_MEADOW_UNUSED
    { { 0x05000033 }, sCamSetHidan3Modes },     // CAM_SET_FIRE_BIRDS_EYE
    { { 0x4A000001 }, sCamSetItem2Modes },      // CAM_SET_FACE_PLAYER_FRONT
    { { 0x05000001 }, sCamSetCirc6Modes },      // CAM_SET_LOWERING_PLATFORM
    { { 0x051FFFFF }, sCamSetNorm2Modes },      // CAM_SET_NORMAL2
    { { 0x0501E05F }, sCamSetFishingModes },    // CAM_SET_FISHING
    { { 0x45000001 }, sCamSetDemoCModes },      // CAM_SET_CS_C
    { { 0x051FFFFF }, sCamSetUOFiberModes },    // CAM_SET_JABU_TENTICLE
    { { 0x051FFFFF }, sCamSetDungeon2Modes },   // CAM_SET_DUNGEON2
    { { 0x051FFFFF }, sCamSetTeppenModes },     // CAM_SET_DIRECTED_YAW
    { { 0xC5000ECD }, sCamSetCirc7Modes },      // CAM_SET_FIXED_SIDE
    { { 0x051FFFFF }, sCamSetNorm4Modes },      // CAM_SET_NORMAL4
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
    NULL,
    Camera_Normal0,
    Camera_Normal1,
    Camera_Normal2,
    Camera_Normal3,
    Camera_Normal4,
    Camera_Parallel0,
    Camera_Parallel1,
    Camera_Parallel2,
    Camera_Parallel3,
    Camera_Parallel4,
    Camera_KeepOn0,
    Camera_KeepOn1,
    Camera_KeepOn2,
    Camera_KeepOn3,
    Camera_KeepOn4,
    Camera_Subj0,
    Camera_Subj1,
    Camera_Subj2,
    Camera_Subj3,
    Camera_Subj4,
    Camera_Jump0,
    Camera_Jump1,
    Camera_Jump2,
    Camera_Jump3,
    Camera_Jump4,
    Camera_Battle0,
    Camera_Battle1,
    Camera_Battle2,
    Camera_Battle3,
    Camera_Battle4,
    Camera_Fixed0,
    Camera_Fixed1,
    Camera_Fixed2,
    Camera_Fixed3,
    Camera_Fixed4,
    Camera_Data0,
    Camera_Data1,
    Camera_Data2,
    Camera_Data3,
    Camera_Data4,
    Camera_Unique0,
    Camera_Unique1,
    Camera_Unique2,
    Camera_Unique3,
    Camera_Unique4,
    Camera_Unique5,
    Camera_Unique6,
    Camera_Unique7,
    Camera_Unique8,
    Camera_Unique9,
    Camera_Demo0,
    Camera_Demo1,
    Camera_Demo2,
    Camera_Demo3,
    Camera_Demo4,
    Camera_Demo5,
    Camera_Demo6,
    Camera_Demo7,
    Camera_Demo8,
    Camera_Demo9,
    Camera_Special0,
    Camera_Special1,
    Camera_Special2,
    Camera_Special3,
    Camera_Special4,
    Camera_Special5,
    Camera_Special6,
    Camera_Special7,
    Camera_Special8,
    Camera_Special9,
};

s32 sInitRegs = 1;

s32 gDbgCamEnabled = 0;
s32 sDbgModeIdx = -1;
s16 sNextUID = 0;

s32 sCameraInterfaceFlags = 1;

s32 sCameraInterfaceAlpha = 0x02;
s32 sCameraShrinkWindowVal = 0x20;
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

char sCameraFunctionNames[][8] = {
    "NONE   ", "NORM0()", "NORM1()", "NORM2()", "NORM3()", "NORM4()", "PARA0()", "PARA1()", "PARA2()", "PARA3()",
    "PARA4()", "KEEP0()", "KEEP1()", "KEEP2()", "KEEP3()", "KEEP4()", "SUBJ0()", "SUBJ1()", "SUBJ2()", "SUBJ3()",
    "SUBJ4()", "JUMP0()", "JUMP1()", "JUMP2()", "JUMP3()", "JUMP4()", "BATT0()", "BATT1()", "BATT2()", "BATT3()",
    "BATT4()", "FIXD0()", "FIXD1()", "FIXD2()", "FIXD3()", "FIXD4()", "DATA0()", "DATA1()", "DATA2()", "DATA3()",
    "DATA4()", "UNIQ0()", "UNIQ1()", "UNIQ2()", "UNIQ3()", "UNIQ4()", "UNIQ5()", "UNIQ6()", "UNIQ7()", "UNIQ8()",
    "UNIQ9()", "DEMO0()", "DEMO1()", "DEMO2()", "DEMO3()", "DEMO4()", "DEMO5()", "DEMO6()", "DEMO7()", "DEMO8()",
    "DEMO9()", "SPEC0()", "SPEC1()", "SPEC2()", "SPEC3()", "SPEC4()", "SPEC5()", "SPEC6()", "SPEC7()", "SPEC8()",
    "SPEC9()", "",        "",        "",        "",        "",
};

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

/*******************************************************
 * OnePoint initalization values for Demo5
 ********************************************************/
s32 sDemo5PrevSfxFrame = -200;

// target is player, far from eye
OnePointCsFull D_8011D6AC[] = {
    { // initflags & 0x00FF (at): 2, atTarget is view lookAt + atInit
      // initFlags & 0xFF00 (eye): none
      // action: 15, copy at, eye, roll, fov to camera
      // result: eye remains in the same locaiton, at is View's lookAt
      0x8F,
      0xFF,
      0x0002,
      0x0001,
      0x0000,
      60.0f,
      1.0f,
      { 0.0f, 0.0f, 0.0f },
      { 0.0f, 0.0f, 0.0f } },
    { // initFlags & 0x00FF (at): 3, atTarget is camera's current at + atInit
      // initFlags & 0xFF00 (eye): 3, eyeTarget is the camera's current eye + eyeInit
      // action: interplate eye and at.
      // result: eye and at's y interpolate to become +20 from their current location.
      0x81,
      0xFF,
      0x0303,
      0x0013,
      0x0000,
      45.0f,
      1.0f,
      { 0.0f, 20.0f, 0.0f },
      { 0.0f, 20.0f, 0.0f } },
    { // initFlags & 0x00FF (at): 0 none
      // initFlags & 0xFF00 (eye): 0 none
      // action: 18, copy this camera to default camera.
      0x12,
      0xFF,
      0x0000,
      0x0001,
      0x0000,
      60.0f,
      1.0f,
      { -1.0f, -1.0f, -1.0f },
      { -1.0f, -1.0f, -1.0f } },
};

// target is player close to current eye
OnePointCsFull D_8011D724[] = {
    { 0x8F, 0xFF, 0x2424, 0x0001, 0x0000, 60.0f, 1.0f, { 0.0f, 0.0f, 0.0f }, { 0.0f, 10.0f, -20.0f } },
    { 0x81, 0xFF, 0x2121, 0x0013, 0x0000, 50.0f, 1.0f, { 0.0f, -10.0f, 0.0f }, { 0.0f, 0.0f, 60.0f } },
    { 0x12, 0xFF, 0x0000, 0x0001, 0x0000, 60.0f, 1.0f, { -1.0f, -1.0f, -1.0f }, { -1.0f, -1.0f, -1.0f } },
};

// target is close to player
OnePointCsFull D_8011D79C[] = {
    { 0xCF, 0xFF, 0x0002, 0x0001, 0x0000, 60.0f, 1.0f, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } },
    { 0xC1, 0xFF, 0x0303, 0x0013, 0x0000, 45.0f, 1.0f, { 0.0f, -20.0f, 0.0f }, { 0.0f, -10.0f, 5.0f } },
    {
        0xC1,
        0xFF,
        0x0303,
        0x0009,
        0x0000,
        60.0f,
        1.0f,
        { 0.0f, 10.0f, 0.0f },
        { 0.0f, 10.0f, 0.0f },
    },
    { 0x12, 0xFF, 0x0000, 0x0001, 0x0000, 60.0f, 1.0f, { -1.0f, -1.0f, -1.0f }, { -1.0f, -1.0f, -1.0f } },
};

// target is within 300 units of eye, and player is within 30 units of eye
OnePointCsFull D_8011D83C[] = {
    { 0x83, 0xFF, 0x2141, 0x0014, 0x0000, 45.0f, 0.2f, { 0.0f, 0.0f, 10.0f }, { 0.0f, 0.0f, 10.0f } },
    { 0x12, 0xFF, 0x0000, 0x0001, 0x0000, 60.0f, 1.0f, { -1.0f, -1.0f, -1.0f }, { -1.0f, -1.0f, -1.0f } },
};

// target is within 700 units of eye, angle between player/eye and target/eye is less than
// 76.9 degrees.  The x/y coordinates of the target on screen is between (21, 41) and (300, 200),
// and the player is farther than 30 units of the eye
OnePointCsFull D_8011D88C[] = {
    { 0x81, 0xFF, 0x0303, 0x0014, 0x0000, 45.0f, 1.0f, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } },
    { 0x12, 0xFF, 0x0000, 0x0001, 0x0000, 60.0f, 1.0f, { -1.0f, -1.0f, -1.0f }, { -1.0f, -1.0f, -1.0f } },
};

// same as above, but the target is NOT within the screen area.
OnePointCsFull D_8011D8DC[] = {
    { 0x8F, 0xFF, 0x0404, 0x0014, 0x0001, 50.0f, 1.0f, { 0.0f, 5.0f, 10.0f }, { 0.0f, 10.0f, -80.0f } },
    { 0x82, 0xFF, 0x2121, 0x0005, 0x0000, 60.0f, 1.0f, { 0.0f, 5.0f, 0.0f }, { 5.0f, 5.0f, -200.0f } },
    { 0x12, 0xFF, 0x0000, 0x0001, 0x0000, 60.0f, 1.0f, { -1.0f, -1.0f, -1.0f }, { -1.0f, -1.0f, -1.0f } },
};

// target is a door.
OnePointCsFull D_8011D954[] = {
    { 0x0F, 0xFF, 0xC1C1, 0x0014, 0x0000, 60.0f, 1.0f, { 0.0f, 0.0f, 50.0f }, { 0.0f, 0.0f, 250.0f } },
    { 0x83, 0xFF, 0x05B1, 0x0005, 0x0000, 60.0f, 0.1f, { 0.0f, 10.0f, 50.0f }, { 0.0f, 10.0f, 100.0f } },
    { 0x82, 0xFF, 0x2121, 0x0005, 0x0002, 60.0f, 1.0f, { 0.0f, 10.0f, 0.0f }, { 0.0f, 20.0f, -150.0f } },
    { 0x12, 0xFF, 0x0000, 0x0001, 0x0000, 60.0f, 1.0f, { -1.0f, -1.0f, -1.0f }, { -1.0f, -1.0f, -1.0f } },
};

// otherwise
OnePointCsFull D_8011D9F4[] = {
    { 0x8F, 0xFF, 0x0504, 0x0014, 0x0002, 60.0f, 1.0f, { 0.0f, 5.0f, 50.0f }, { 0.0f, 20.0f, 300.0f } },
    { 0x82, 0xFF, 0x2121, 0x0005, 0x0002, 60.0f, 1.0f, { 0.0f, 10.0f, 0.0f }, { 0.0f, 20.0f, -150.0f } },
    { 0x12, 0xFF, 0x0000, 0x0001, 0x0000, 60.0f, 1.0f, { -1.0f, -1.0f, -1.0f }, { -1.0f, -1.0f, -1.0f } },
};

Vec3f D_8011DA6C[] = {
    { 3050.0f, 700.0f, 0.0f }, { 1755.0f, 3415.0f, -380.0f }, { -3120.0f, 3160.0f, 245.0f }, { 0.0f, -10.0f, 240.0f }
};

Vec3f D_8011DA9C[] = {
    { 3160.0f, 2150.0f, 0.0f },
    { 1515.0f, 4130.0f, -835.0f },
    { -3040.0f, 4135.0f, 230.0f },
    { -50.0f, 600.0f, -75.0f },
};

f32 D_8011DACC[] = { 1570.0f, 3680.0f, 3700.0f, 395.0f };

f32 D_8011DADC[] = { 320.0f, 320.0f, 320.0f, 0.0f };

s16 D_8011DAEC[] = { -2000, -1000, 0, 0, 0, 0, 0, 0 };

s16 D_8011DAFC[] = {
    CAM_SET_NORMAL0, CAM_SET_NORMAL1, CAM_SET_NORMAL2, CAM_SET_DUNGEON0, CAM_SET_DUNGEON1, CAM_SET_DUNGEON2,
};

GlobalContext* D_8015BD7C;
DbCamera D_8015BD80;
CollisionPoly* playerFloorPoly;
