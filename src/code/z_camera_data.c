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
    { -20, 0 },    // yOffset
    { 200, 1 },    // distMin
    { 300, 2 },    // distMax
    { 10, 3 },     // pitchtarget
    { 12, 4 },     // unk_0C
    { 10, 5 },     // unk_10
    { 35, 6 },     // unk_14
    { 60, 7 },     // fovTarget
    { 60, 8 },     // atLERPScaleMax
    { 0x0003, 9 }, // flags
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
 * BOSS_GANON2        TARGET    PARA1
 * COLLAPSE_STAIRS    TARGET    PARA1
 * TOWER1             TARGET    PARA1
 * CIRCLE3            TARGET    PARA1
 * NORMAL2            TARGET    PARA1
 * UO_FIBER           TARGET    PARA1
 * TEPPEN             TARGET    PARA1
 * NORMAL4            TARGET    PARA1
 */
CameraModeValue D_8011A3C8[] = {
    { -20, 0 },    // unk_00
    { 250, 1 },    // distTarget
    { 0, 3 },      // pitchTarget
    { 0, 10 },     // yawTarget
    { 5, 4 },      // unk_08
    { 5, 5 },      // unk_0C
    { 45, 7 },     // fovTarget
    { 50, 8 },     // unk_14
    { 0x200A, 9 }, // flags
    { -40, 11 },   // unk_18
    { 20, 12 }     // unk_1C
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
 * BOSS_GANON2        FOLLOWTARGET    KEEP1
 * COLLAPSE_STAIRS    FOLLOWTARGET    KEEP1
 * TOWER1             FOLLOWTARGET    KEEP1
 * CIRCLE3            FOLLOWTARGET    KEEP1
 * UFOBEAN            FOLLOWTARGET    KEEP1
 * LIFTBEAN           FOLLOWTARGET    KEEP1
 * NORMAL2            FOLLOWTARGET    KEEP1
 * UO_FIBER           FOLLOWTARGET    KEEP1
 * NORMAL4            FOLLOWTARGET    KEEP1
 */
CameraModeValue D_8011A3F4[] = {
    { -20, 0 },    // unk_00
    { 120, 1 },    // unk_04
    { 140, 2 },    // unk_08
    { 25, 13 },    // unk_0C
    { 45, 14 },    // unk_10
    { -5, 15 },    // unk_14
    { 15, 16 },    // unk_18
    { 15, 17 },    // unk_1C
    { 45, 7 },     // unk_20
    { 50, 8 },     // unk_24
    { 0x2001, 9 }, // flags
    { -50, 11 },   // unk_28
    { 30, 12 },    // unk_2C
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
 * BOSS_GANON2        TALK    KEEP3
 * COLLAPSE_STAIRS    TALK    KEEP3
 * TOWER1             TALK    KEEP3
 * CIRCLE3            TALK    KEEP3
 * UFOBEAN            TALK    KEEP3
 * LIFTBEAN           TALK    KEEP3
 * TAKO               TALK    KEEP3
 * NORMAL2            TALK    KEEP3
 * UO_FIBER           TALK    KEEP3
 * DUNGEON2           TALK    KEEP3
 * CIRCLE7            TALK    KEEP3
 */
CameraModeValue D_8011A428[] = {
    { -30, 0 },    // yOffset
    { 70, 1 },     // minDist
    { 200, 2 },    // maxDist
    { 40, 13 },    // swingYawInitial
    { 10, 14 },    // swingYawFinal
    { 0, 15 },     // swingPitchInitial
    { 5, 16 },     // swingPitchFinal
    { 70, 17 },    // swingPitchAdj
    { 45, 7 },     // fovTarget
    { 50, 8 },     // atLERPScaleMax
    { 10, 4 },     // initTimer
    { 0x3500, 9 }, // flags
};

/**
 * Setting          Mode      Function
 * -------------    ------    --------
 * NORMAL0          BATTLE    BATT1
 * NORMAL3          BATTLE    BATT1
 * COLLAPSE_STAIRS  BATTLE    BATT1
 * TOWER1           BATTLE    BATT1
 * TEPPEN           BATTLE    BATT1
 */
CameraModeValue D_8011A458[] = {
    { -20, 0 },    // yOffset (PCT)
    { 180, 1 },    // distance
    { 10, 13 },    // swingYawInitial
    { 80, 14 },    // swingYawFinal
    { 0, 15 },     // swingPitchInitial
    { 10, 16 },    // swingPitchFinal
    { 25, 17 },    // swingPitchAdj (PCT)
    { 50, 7 },     // fov
    { 80, 8 },     // atLERPScaleOnGround (PCT)
    { 0x2002, 9 }, // flags
    { -40, 11 },   // yOffsetOffGround (PCT)
    { 25, 12 },    // atLERPScaleOffGround (PCT)
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
 * BOSS_GANON2        CLIMB    JUMP2
 * COLLAPSE_STAIRS    CLIMB    JUMP2
 * TOWER1             CLIMB    JUMP2
 * CIRCLE3            CLIMB    JUMP2
 * UFOBEAN            CLIMB    JUMP2
 * LIFTBEAN           CLIMB    JUMP2
 * NORMAL2            CLIMB    JUMP2
 * UO_FIBER           CLIMB    JUMP2
 * TEPPEN             CLIMB    JUMP2
 * NORMAL4            CLIMB    JUMP2
 */
CameraModeValue D_8011A488[] = {
    { -20, 0 },    // atYOffset
    { 200, 1 },    // minDist
    { 300, 2 },    // maxDist
    { 20, 18 },    // minMaxDistFactor
    { 5, 4 },      // yawUpdRateTarget
    { 5, 5 },      // xzUpdRateTarget
    { 60, 7 },     // fovTarget
    { 40, 8 },     // atLERPStepScale
    { 0x0000, 9 }, // flags
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
 * BOSS_GANON2        FIRSTPERSON    SUBJ3
 * COLLAPSE_STAIRS    FIRSTPERSON    SUBJ3
 * TOWER1             FIRSTPERSON    SUBJ3
 * CIRCLE3            FIRSTPERSON    SUBJ3
 * UFOBEAN            FIRSTPERSON    SUBJ3
 * LIFTBEAN           FIRSTPERSON    SUBJ3
 * TAKO               FIRSTPERSON    SUBJ3
 * NORMAL2            FIRSTPERSON    SUBJ3
 * UO_FIBER           FIRSTPERSON    SUBJ3
 * DUNGEON2           FIRSTPERSON    SUBJ3
 * TEPPEN             FIRSTPERSON    SUBJ3
 * CIRCLE7            FIRSTPERSON    SUBJ3
 * NORMAL4            FIRSTPERSON    SUBJ3
 */
CameraModeValue D_8011A4AC[] = {
    { 0, 0 },      // eyeNextYOffset
    { 5, 1 },      // eyeDist
    { 50, 2 },     // eyeNextDist
    { 10, 4 },     // unk_0C
    { 0, 19 },     // atOffset.x
    { 0, 20 },     // atOffset.y
    { 0, 21 },     // atOffset.z
    { 45, 7 },     // fovTarget
    { 0x0000, 9 }, // flags
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
 * BOSS_GANON2        BOWARROW    SUBJ3
 * COLLAPSE_STAIRS    BOWARROW    SUBJ3
 * TOWER1             BOWARROW    SUBJ3
 * CIRCLE3            BOWARROW    SUBJ3
 * UFOBEAN            BOWARROW    SUBJ3
 * LIFTBEAN           BOWARROW    SUBJ3
 * TAKO               BOWARROW    SUBJ3
 * NORMAL2            BOWARROW    SUBJ3
 * UO_FIBER           BOWARROW    SUBJ3
 * DUNGEON2           BOWARROW    SUBJ3
 * TEPPEN             BOWARROW    SUBJ3
 * CIRCLE7            BOWARROW    SUBJ3
 * NORMAL4            BOWARROW    SUBJ3
 */
CameraModeValue D_8011A4D0[] = {
    { -7, 0 },     // eyeNextYOffset
    { 14, 1 },     // eyeDist
    { 50, 2 },     // eyeNextDist
    { 10, 4 },     // unk_0C
    { 0, 19 },     // atOffset.x
    { -30, 20 },   // atOffset.y
    { -5, 21 },    // atOffset.z
    { 45, 7 },     // fovTarget
    { 0x2000, 9 }, // flags
};

/**
 * Setting            Mode         Function
 * ---------------    ---------    --------
 * NORMAL0            BOWARROWZ    SUBJ3
 * NORMAL1            BOWARROWZ    SUBJ3
 * DUNGEON0           BOWARROWZ    SUBJ3
 * DUNGEON1           BOWARROWZ    SUBJ3
 * NORMAL3            BOWARROWZ    SUBJ3
 * HORSE0             BOWARROWZ    SUBJ3
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
 * BOSS_GANON2        BOWARROWZ    SUBJ3
 * COLLAPSE_STAIRS    BOWARROWZ    SUBJ3
 * TOWER1             BOWARROWZ    SUBJ3
 * CIRCLE3            BOWARROWZ    SUBJ3
 * UFOBEAN            BOWARROWZ    SUBJ3
 * LIFTBEAN           BOWARROWZ    SUBJ3
 * TAKO               BOWARROWZ    SUBJ3
 * NORMAL2            BOWARROWZ    SUBJ3
 * UO_FIBER           BOWARROWZ    SUBJ3
 * DUNGEON2           BOWARROWZ    SUBJ3
 * TEPPEN             BOWARROWZ    SUBJ3
 * NORMAL4            BOWARROWZ    SUBJ3
 */
CameraModeValue D_8011A4F4[] = {
    { 20, 0 },     // eyeNextYOffset
    { 70, 1 },     // eyeDist
    { 70, 2 },     // eyeNextDist
    { 10, 4 },     // unk_0C
    { -120, 19 },  // atOffset.x
    { 20, 20 },    // atOffset.y
    { 0, 21 },     // atOffset.z
    { 45, 7 },     // fovTarget
    { 0x2000, 9 }, // flags
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
 * BOSS_GANON2        HOOKSHOT    SPEC5
 * COLLAPSE_STAIRS    HOOKSHOT    SPEC5
 * TOWER1             HOOKSHOT    SPEC5
 * CIRCLE3            HOOKSHOT    SPEC5
 * UFOBEAN            HOOKSHOT    SPEC5
 * LIFTBEAN           HOOKSHOT    SPEC5
 * NORMAL2            HOOKSHOT    SPEC5
 * UO_FIBER           HOOKSHOT    SPEC5
 * TEPPEN             HOOKSHOT    SPEC5
 * CIRCLE7            HOOKSHOT    SPEC5
 * NORMAL4            HOOKSHOT    SPEC5
 */
CameraModeValue D_8011A518[] = {
    { -20, 0 },    // yOffset
    { 80, 1 },     // eyeDist
    { 250, 2 },    // minDistForRot
    { 45, 3 },     // timerInit
    { 60, 7 },     // pitch
    { 40, 8 },     // fovTarget
    { 6, 22 },     // atMaxLERPScale
    { 0x2000, 9 }, // flags
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
 * BOSS_GANON2        BOOMERANG    SUBJ3
 * COLLAPSE_STAIRS    BOOMERANG    SUBJ3
 * TOWER1             BOOMERANG    SUBJ3
 * CIRCLE3            BOOMERANG    SUBJ3
 * UFOBEAN            BOOMERANG    SUBJ3
 * LIFTBEAN           BOOMERANG    SUBJ3
 * TAKO               BOOMERANG    SUBJ3
 * NORMAL2            BOOMERANG    SUBJ3
 * UO_FIBER           BOOMERANG    SUBJ3
 * DUNGEON2           BOOMERANG    SUBJ3
 * TEPPEN             BOOMERANG    SUBJ3
 * CIRCLE7            BOOMERANG    SUBJ3
 * NORMAL4            BOOMERANG    SUBJ3
 */
CameraModeValue D_8011A538[] = {
    { 5, 0 },      // eyeNextYOffset
    { 50, 1 },     // eyeDist
    { 50, 2 },     // eyeNextDist
    { 10, 4 },     // unk_0C
    { 0, 19 },     // atOffset.x
    { 0, 20 },     // atOffset.y
    { 0, 21 },     // atOffset.z
    { 45, 7 },     // fovTarget
    { 0x2000, 9 }, // flags
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
 * BOSS_GANON2        SLINGSHOT    SUBJ3
 * COLLAPSE_STAIRS    SLINGSHOT    SUBJ3
 * TOWER1             SLINGSHOT    SUBJ3
 * CIRCLE3            SLINGSHOT    SUBJ3
 * UFOBEAN            SLINGSHOT    SUBJ3
 * LIFTBEAN           SLINGSHOT    SUBJ3
 * TAKO               SLINGSHOT    SUBJ3
 * NORMAL2            SLINGSHOT    SUBJ3
 * UO_FIBER           SLINGSHOT    SUBJ3
 * DUNGEON2           SLINGSHOT    SUBJ3
 * TEPPEN             SLINGSHOT    SUBJ3
 * CIRCLE7            SLINGSHOT    SUBJ3
 * NORMAL4            SLINGSHOT    SUBJ3
 */
CameraModeValue D_8011A55C[] = {
    { -7, 0 },     // eyeNextYOffset
    { 14, 1 },     // eyeDist
    { 50, 2 },     // eyeNextDist
    { 10, 4 },     // unk_0C
    { -9, 19 },    // atOffset.x
    { -63, 20 },   // atOffset.y
    { -30, 21 },   // atOffset.z
    { 45, 7 },     // fovTarget
    { 0x2000, 9 }, // flags
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
 * BOSS_GANON2        CLIMBZ    JUMP2
 * COLLAPSE_STAIRS    CLIMBZ    JUMP2
 * TOWER1             CLIMBZ    JUMP2
 * CIRCLE3            CLIMBZ    JUMP2
 * UFOBEAN            CLIMBZ    JUMP2
 * LIFTBEAN           CLIMBZ    JUMP2
 * NORMAL2            CLIMBZ    JUMP2
 * UO_FIBER           CLIMBZ    JUMP2
 * TEPPEN             CLIMBZ    JUMP2
 * NORMAL4            CLIMBZ    JUMP2
 */
CameraModeValue D_8011A580[] = {
    { -20, 0 },    // atYOffset
    { 200, 1 },    // minDist
    { 300, 2 },    // maxDist
    { 20, 18 },    // minMaxDistFactor
    { 999, 4 },    // yawUpdRateTarget
    { 5, 5 },      // xzUpdRateTarget
    { 60, 7 },     // fovTarget
    { 40, 8 },     // atLERPStepScale
    { 0x2006, 9 }, // flags
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
 * COLLAPSE_STAIRS    FREEFALL    JUMP1
 * TOWER1             FREEFALL    JUMP1
 * UFOBEAN            FREEFALL    JUMP1
 * LIFTBEAN           FREEFALL    JUMP1
 * NORMAL2            JUMP        JUMP1
 * NORMAL2            FREEFALL    JUMP1
 * UOFIBER            JUMP        JUMP1
 * UOFIBER            FREEFALL    JUMP1
 * TEPPEN             JUMP        JUMP1
 * TEPPEN             FREEFALL    JUMP1
 * NORMAL4            JUMP        JUMP1
 * NORMAL4            FREEFALL    JUMP1
 */
CameraModeValue D_8011A5A4[] = {
    { -20, 0 },    // atYOffset
    { 200, 1 },    // distMin
    { 300, 2 },    // distMax
    { 12, 4 },     // yawUpdateRateTarget
    { 35, 6 },     // maxYawUpdate
    { 60, 7 },     // unk_14
    { 40, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
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
 * COLLAPSE_STAIRS    HANG    UNIQ1
 * TOWER1             HANG    UNIQ1
 * NORMAL2            HANG    UNIQ1
 * UOFIBER            HANG    UNIQ1
 * TEPPEN             HANG    UNIQ1
 * NORMAL4            HANG    UNIQ1
 */
CameraModeValue D_8011A5C4[] = {
    { -80, 0 },    // yOffset
    { 200, 1 },    // distMin
    { 300, 2 },    // distMax
    { 40, 3 },     // pitchTarget
    { 60, 7 },     // fovTarget
    { 10, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
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
 * COLLAPSE_STAIRS    HANGZ    UNIQ1
 * TOWER1             HANGZ    UNIQ1
 * NORMAL2            HANGZ    UNIQ1
 * UOFIBER            HANGZ    UNIQ1
 * TEPPEN             HANGZ    UNIQ1
 * NORMAL4            HANGZ    UNIQ1
 */
CameraModeValue D_8011A5E0[] = {
    { -120, 0 },   // yOffset
    { 300, 1 },    // distMin
    { 300, 2 },    // distMax
    { 70, 3 },     // pitchTarget
    { 45, 7 },     // fovTarget
    { 10, 8 },     // atLERPScaleMax
    { 0x2000, 9 }, // flags
};

/**
 * Setting    Mode        Function
 * -------    --------    --------
 * NORMAL0    FREEFALL    JUMP1
 */
CameraModeValue D_8011A5FC[] = {
    { -20, 0 },    // atYOffset
    { 200, 1 },    // distMin
    { 300, 2 },    // distMax
    { 15, 4 },     // yawUpdateRateTarget
    { 80, 6 },     // maxYawUpdate
    { 60, 7 },     // unk_14
    { 20, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
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
 * COLLAPSE_STAIRS    CHARGE    BATT4
 * TOWER1             CHARGE    BATT4
 * CIRCLE3            CHARGE    BATT4
 * UFOBEAN            CHARGE    BATT4
 * LIFTBEAN           CHARGE    BATT4
 * NORMAL2            CHARGE    BATT4
 * UOFIBER            CHARGE    BATT4
 * DUNGEON2           CHARGE    BATT4
 * TEPPEN             CHARGE    BATT4
 * NORMAL4            CHARGE    BATT4
 */
CameraModeValue D_8011A61C[] = {
    { -20, 0 },    // yOffset
    { 300, 1 },    // rTarget
    { 50, 3 },     // pitchTarget
    { 2, 4 },      // lerpUpdateRate
    { 80, 7 },     // fovTarget
    { 20, 8 },     // atLERPTarget
    { 0xF000, 9 }, // flags
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
 * COLLAPSE_STAIRS    STILL    NORM1
 * TOWER1             STILL    NORM1
 * CIRCLE3            STILL    NORM1
 * NORMAL2            STILL    NORM1
 * UOFIBER            STILL    NORM1
 * TEPPEN             STILL    NORM1
 * NORMAL4            STILL    NORM1
 */
CameraModeValue D_8011A638[] = {
    { -20, 0 },    // yOffset
    { 200, 1 },    // distMin
    { 300, 2 },    // distMax
    { 10, 3 },     // pitchTarget
    { 100, 4 },    // unk_0C
    { 10, 5 },     // unk_10
    { 100, 6 },    // unk_14
    { 60, 7 },     // fovTarget
    { 5, 8 },      // atLERPScaleMax
    { 0xF003, 9 }, // flags
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
 * COLLAPSE_STAIRS    PUSHPULL    PARA1
 * TOWER1             PUSHPULL    PARA1
 * CIRCLE3            PUSHPULL    PARA1
 * UFOBEAN            PUSHPULL    PARA1
 * LIFTBEAN           PUSHPULL    PARA1
 * TAKO               PUSHPULL    PARA1
 * NORMAL2            PUSHPULL    PARA1
 * UOFIBER            PUSHPULL    PARA1
 * TEPPEN             PUSHPULL    PARA1
 * NORMAL4            PUSHPULL    PARA1
 */
CameraModeValue D_8011A660[] = {
    { 0, 0 },      // unk_00
    { 250, 1 },    // distTarget
    { 25, 3 },     // pitchTarget
    { 0, 10 },     // yawTarget
    { 5, 4 },      // unk_08
    { 5, 5 },      // unk_0C
    { 70, 7 },     // fovTarget
    { 30, 8 },     // unk_14
    { 0x206A, 9 }, // flags
    { -20, 11 },   // unk_18
    { 30, 12 },    // unk_1C
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
 * COLLAPSE_STAIRS    BOOMFOLLLOW    KEEP1
 * TOWER1             BOOMFOLLLOW    KEEP1
 * CIRCLE3            BOOMFOLLLOW    KEEP1
 * UFOBEAN            BOOMFOLLLOW    KEEP1
 * LIFTBEAN           BOOMFOLLLOW    KEEP1
 * TAKO               BOOMFOLLLOW    KEEP1
 * NORMAL2            BOOMFOLLLOW    KEEP1
 * UOFIBER            BOOMFOLLLOW    KEEP1
 * DUNGEON2           BOOMFOLLLOW    KEEP1
 * TEPPEN             BOOMFOLLLOW    KEEP1
 * NORMAL4            BOOMFOLLLOW    KEEP1
 */
CameraModeValue D_8011A68C[] = {
    { -5, 0 },     // unk_00
    { 120, 1 },    // unk_04
    { 140, 2 },    // unk_08
    { 5, 13 },     // unk_0C
    { 85, 14 },    // unk_10
    { 10, 15 },    // unk_14
    { 5, 16 },     // unk_18
    { 25, 17 },    // unk_1C
    { 45, 7 },     // unk_20
    { 50, 8 },     // unk_24
    { 0x2001, 9 }, // flags
    { -15, 11 },   // unk_28
    { 30, 12 },    // unk_2C
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
    { 0, 0 },      // yOffset
    { 200, 1 },    // distMin
    { 400, 2 },    // distMax
    { 10, 3 },     // pitchTarget
    { 12, 4 },     // unk_0C
    { 20, 5 },     // unk_10
    { 40, 6 },     // unk_14
    { 60, 7 },     // fovTarget
    { 60, 8 },     // atLERPScaleMax
    { 0x0003, 9 }, // flags
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * NORMAL1    TARGET    PARA1
 */
CameraModeValue sSetNorm1ModeParaVals[] = {
    { 0, 0 },      // unk_00
    { 250, 1 },    // distTarget
    { 0, 3 },      // pitchTarget
    { 0, 10 },     // yawTarget
    { 5, 4 },      // unk_08
    { 5, 5 },      // unk_0C
    { 45, 7 },     // fovTarget
    { 50, 8 },     // unk_14
    { 0x2002, 9 }, // flags
    { -40, 11 },   // unk_18
    { 20, 12 },    // unk_1C
};

/**
 * Setting     Mode            Function
 * --------    ------------    --------
 * NORMAL1     FOLLOWTARGET    KEEP1
 * DUNGEON1    FOLLOWTARGET    KEEP1
 */
CameraModeValue D_8011A714[] = {
    { -20, 0 },    // unk_00
    { 120, 1 },    // unk_04
    { 140, 2 },    // unk_08
    { 25, 13 },    // unk_0C
    { 45, 14 },    // unk_10
    { -5, 15 },    // unk_14
    { 15, 16 },    // unk_18
    { 15, 17 },    // unk_1C
    { 45, 7 },     // unk_20
    { 50, 8 },     // unk_24
    { 0x2001, 9 }, // flags
    { -50, 11 },   // unk_28
    { 20, 12 },    // unk_2C
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
    { -20, 0 },    // yOffset (PCT)
    { 250, 1 },    // distance
    { 10, 13 },    // swingYawInitial
    { 80, 14 },    // swingYawFinal
    { 0, 15 },     // swingPitchInitial
    { 10, 16 },    // swingPitchFinal
    { 25, 17 },    // swingPitchAdj (PCT)
    { 50, 7 },     // fov
    { 65, 8 },     // atLERPScaleOnGround (PCT)
    { 0x2002, 9 }, // flags
    { -40, 11 },   // yOffsetOffGround (PCT)
    { 25, 12 },    // atLERPScaleOffGround (PCT)
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
    { -20, 0 },    // yOffset
    { 80, 1 },     // eyeDist
    { 250, 2 },    // minDistForRot
    { 6, 22 },     // timerInit
    { 45, 3 },     // pitch
    { 60, 7 },     // fovTarget
    { 40, 8 },     // atMaxLERPScale
    { 0x2000, 9 }, // flags
};

/**
 * Setting    Mode    Function
 * -------    ----    --------
 * NORMAL1    JUMP    JUMP1
 */
CameraModeValue D_8011A798[] = {
    { 0, 0 },      // atYOffset
    { 250, 1 },    // distMin
    { 400, 2 },    // distMax
    { 15, 4 },     // yawUpdateRateTarget
    { 50, 6 },     // maxYawUpdate
    { 60, 7 },     // unk_14
    { 30, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

/**
 * Setting    Mode        Function
 * -------    --------    --------
 * NORMAL1    FREEFALL    JUMP1
 */
CameraModeValue D_8011A7B8[] = {
    { 0, 0 },      // atYOffset
    { 200, 1 },    // distMin
    { 400, 2 },    // distMax
    { 30, 4 },     // yawUpdateRateTarget
    { 80, 6 },     // maxYawUpdate
    { 60, 7 },     // unk_14
    { 20, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

/**
 * Setting    Mode     Function
 * -------    -----    --------
 * NORMAL1    CLIMB    JUMP2
 */
CameraModeValue D_8011A7D8[] = {
    { -20, 0 },    // atYOffset
    { 200, 1 },    // minDist
    { 400, 2 },    // maxDist
    { 20, 18 },    // minMaxDistFactor
    { 5, 4 },      // yawUpdRateTarget
    { 5, 5 },      // xzUpdRateTarget
    { 60, 7 },     // fovTarget
    { 40, 8 },     // atLERPStepScale
    { 0x0000, 9 }, // flags
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * NORMAL1    CLIMBZ    JUMP2
 */
CameraModeValue D_8011A7FC[] = {
    { -20, 0 },    // atYOffset
    { 250, 1 },    // minDist
    { 400, 2 },    // maxDist
    { 20, 18 },    // minMaxDistFactor
    { 999, 4 },    // yawUpdRateTarget
    { 5, 5 },      // xzUpdRateTarget
    { 60, 7 },     // fovTarget
    { 40, 8 },     // atLERPStepScale
    { 0x2006, 9 }, // flags
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * NORMAL1    CHARGE    BATT4
 */
CameraModeValue D_8011A820[] = {
    { 0, 0 },      // yOffset
    { 300, 1 },    // rTarget
    { 50, 3 },     // pitchTarget
    { 2, 4 },      // lerpUpdateRate
    { 80, 7 },     // fovTarget
    { 20, 8 },     // atLERPTarget
    { 0xF000, 9 }, // flags
};

/**
 * Setting    Mode    Function
 * -------    ----    --------
 * NORMAL1    HANG    UNIQ1
 */
CameraModeValue D_8011A83C[] = {
    { -80, 0 },    // yOffset
    { 200, 1 },    // distMin
    { 400, 2 },    // distMax
    { 40, 3 },     // pitchTarget
    { 60, 7 },     // fovTarget
    { 10, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

/**
 * Setting    Mode     Function
 * -------    -----    --------
 * NORMAL1    HANGZ    UNIQ1
 */
CameraModeValue D_8011A858[] = {
    { -120, 0 },   // yOffset
    { 400, 1 },    // distMin
    { 400, 2 },    // distMax
    { 70, 3 },     // pitchTarget
    { 45, 7 },     // fovTarget
    { 10, 8 },     // atLERPScaleMax
    { 0x2000, 9 }, // flags
};

/**
 * Setting    Mode     Function
 * -------    -----    --------
 * NORMAL1    STILL    NORM1
 */
CameraModeValue D_8011A874[] = {
    { 0, 0 },      // yOffset
    { 200, 1 },    // distMin
    { 400, 2 },    // distMax
    { 10, 3 },     // pitchTarget
    { 100, 4 },    // unk_0C
    { 20, 5 },     // unk_10
    { 100, 6 },    // unk_14
    { 60, 7 },     // fovTarget
    { 5, 8 },      // atLERPScaleMax
    { 0xF003, 9 }, // flags
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
    { -10, 0 },    // yOffset
    { 150, 1 },    // distMin
    { 250, 2 },    // distMax
    { 5, 3 },      // pitchTarget
    { 10, 4 },     // unk_0C
    { 5, 5 },      // unk_10
    { 30, 6 },     // unk_14
    { 60, 7 },     // fovTarget
    { 60, 8 },     // atLERPScaleMax
    { 0x0003, 9 }, // flags
};

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * DUNGEON0    TARGET    PARA1
 * DUNGEON1    TARGET    PARA1
 * TAKO        TARGET    PARA1
 */
CameraModeValue D_8011A8C4[] = {
    { -20, 0 },    // unk_00
    { 150, 1 },    // distTarget
    { 0, 3 },      // pitchTarget
    { 0, 10 },     // yawTarget
    { 5, 4 },      // unk_08
    { 5, 5 },      // unk_0C
    { 45, 7 },     // fovTarget
    { 50, 8 },     // unk_14
    { 0x200A, 9 }, // flags
    { -40, 11 },   // unk_18
    { 20, 12 },    // unk_1C
};

/**
 * Setting     Mode            Function
 * --------    ------------    --------
 * DUNGEON0    FOLLOWTARGET    KEEP1
 * TAKO        FOLLOWTARGET    KEEP1
 * DUNGEON2    FOLLOWTARGET    KEEP1
 */
CameraModeValue D_8011A8F0[] = {
    { -20, 0 },    // unk_00
    { 120, 1 },    // unk_04
    { 140, 2 },    // unk_08
    { 25, 13 },    // unk_0C
    { 45, 14 },    // unk_10
    { -5, 15 },    // unk_14
    { 15, 16 },    // unk_18
    { 15, 17 },    // unk_1C
    { 45, 7 },     // unk_20
    { 50, 8 },     // unk_24
    { 0x2001, 9 }, // flags
    { -40, 11 },   // unk_28
    { 20, 12 },    // unk_2C
};

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * DUNGEON0    BATTLE    BATT1
 * DUNGEON1    BATTLE    BATT1
 */
CameraModeValue D_8011A924[] = {
    { -20, 0 },    // yOffset (PCT)
    { 180, 1 },    // distance
    { 10, 13 },    // swingYawInitial
    { 80, 14 },    // swingYawFinal
    { 0, 15 },     // swingPitchInitial
    { 10, 16 },    // swingPitchFinal
    { 25, 17 },    // swingPitchAdj (PCT)
    { 45, 7 },     // fov
    { 80, 8 },     // atLERPScaleOnGround (PCT)
    { 0x2002, 9 }, // flags
    { -40, 11 },   // yOffsetOffGround (PCT)
    { 25, 12 },    // atLERPScaleOnGround (PCT)
};

/**
 * Setting     Mode    Function
 * --------    ----    --------
 * DUNGEON0    JUMP    JUMP1
 * TAKO        JUMP    JUMP1
 */
CameraModeValue D_8011A954[] = {
    { -10, 0 },    // atYOffset
    { 150, 1 },    // distMin
    { 250, 2 },    // distMax
    { 10, 4 },     // yawUpdateRateTarget
    { 50, 6 },     // maxYawUpdate
    { 60, 7 },     // unk_14
    { 40, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

/**
 * Setting     Mode        Function
 * --------    --------    --------
 * DUNGEON0    FREEFALL    JUMP1
 * TAKO        FREEFALL    JUMP1
 */
CameraModeValue D_8011A974[] = {
    { -10, 0 },    // atYOffset
    { 150, 1 },    // distMin
    { 250, 2 },    // distMax
    { 10, 4 },     // yawUpdateRateTarget
    { 80, 6 },     // maxYawUpdate
    { 60, 7 },     // unk_14
    { 20, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

/**
 * Setting     Mode     Function
 * --------    -----    --------
 * DUNGEON0    CLIMB    JUMP2
 * TAKO        CLIMB    JUMP2
 */
CameraModeValue D_8011A994[] = {
    { -40, 0 },    // atYOffset
    { 150, 1 },    // minDist
    { 250, 2 },    // maxDist
    { 20, 18 },    // minMaxDistFactor
    { 5, 4 },      // yawUpdRateTarget
    { 5, 5 },      // xzUpdRateTarget
    { 60, 7 },     // fovTarget
    { 40, 8 },     // atLERPStepScale
    { 0x0000, 9 }, // flags
};

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * DUNGEON0    CLIMBZ    JUMP2
 * TAKO        CLIMBZ    JUMP2
 */
CameraModeValue D_8011A9B8[] = {
    { -40, 0 },    // atYOffset
    { 250, 1 },    // minDist
    { 250, 2 },    // maxDist
    { 20, 18 },    // minMaxDistFactor
    { 999, 4 },    // yawUpdRateTarget
    { 5, 5 },      // xzUpdRateTarget
    { 60, 7 },     // fovTarget
    { 40, 8 },     // atLERPStepScale
    { 0x2006, 9 }, // flags
};

/**
 * Setting       Mode      Function
 * ----------    ------    --------
 * DUNGEON0      CHARGE    BATT4
 * BOSS_GOHMA    CHARGE    BATT4
 * TAKO          CHARGE    BATT4
 */
CameraModeValue D_8011A9DC[] = {
    { -10, 0 },    // yOffset
    { 300, 1 },    // rTarget
    { 50, 3 },     // pitchTarget
    { 2, 4 },      // lerpUpdateRate
    { 80, 7 },     // fovTarget
    { 20, 8 },     // atLERPTarget
    { 0xF000, 9 }, // flags
};

/**
 * Setting     Mode    Function
 * --------    ----    --------
 * DUNGEON0    HANG    UNIQ1
 * TAKO        HANG    UNIQ1
 */
CameraModeValue D_8011A9F8[] = {
    { -80, 0 },    // yOffset
    { 150, 1 },    // distMin
    { 250, 2 },    // distMax
    { 40, 3 },     // pitchTarget
    { 60, 7 },     // fovTarget
    { 10, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

/**
 * Setting     Mode     Function
 * --------    -----    --------
 * DUNGEON0    HANGZ    UNIQ1
 * TAKO        HANGZ    UNIQ1
 */
CameraModeValue D_8011AA14[] = {
    { -120, 0 },   // yOffset */
    { 250, 1 },    // distMin */
    { 250, 2 },    // distMax */
    { 70, 3 },     // pitchTarget */
    { 45, 7 },     // fovTarget */
    { 10, 8 },     // atLERPScaleMax */
    { 0x2000, 9 }, // flags */
};

/**
 * Setting     Mode     Function
 * --------    -----    --------
 * DUNGEON0    STILL    NORM1
 */
CameraModeValue D_8011AA30[] = {
    { -10, 0 },    // yOffset
    { 150, 1 },    // distMin
    { 250, 2 },    // distMax
    { 5, 3 },      // pitchTarget
    { 100, 4 },    // unk_0C
    { 5, 5 },      // unk_10
    { 100, 6 },    // unk_14
    { 60, 7 },     // fovTarget
    { 5, 8 },      // atLERPScaleMax
    { 0xF003, 9 }, // flags
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
    { -40, 0 },    // yOffset
    { 150, 1 },    // distMin
    { 150, 2 },    // distMax
    { 0, 3 },      // pitchTarget
    { 10, 4 },     // unk_0C
    { 5, 5 },      // unk_10
    { 30, 6 },     // unk_14
    { 60, 7 },     // fovTarget
    { 60, 8 },     // atLERPScaleMax
    { 0x0003, 9 }, // flags
};

/**
 * Setting     Mode    Function
 * --------    ----    --------
 * DUNGEON1    TALK    KEEP3
 */
CameraModeValue D_8011AA80[] = {
    { -20, 0 },    // yOffset
    { 70, 1 },     // minDist
    { 200, 2 },    // maxDist
    { 40, 13 },    // swingYawInitial
    { 10, 14 },    // swingYawFinal
    { 0, 15 },     // swingPitchInitial
    { 5, 16 },     // swingPitchFinal
    { 70, 17 },    // swingPitchAdj
    { 45, 7 },     // fovTarget
    { 50, 8 },     // atLERPScaleMax
    { 10, 4 },     // initTimer
    { 0x3500, 9 }, // flags
};

/**
 * Setting     Mode    Function
 * --------    ----    --------
 * DUNGEON1    JUMP    JUMP1
 */
CameraModeValue D_8011AAB0[] = {
    { -40, 0 },    // atYOffset
    { 150, 1 },    // distMin
    { 150, 2 },    // distMax
    { 10, 4 },     // yawUpdateRateTarget
    { 50, 6 },     // maxYawUpdate
    { 60, 7 },     // unk_14
    { 40, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

/**
 * Setting     Mode        Function
 * --------    --------    --------
 * DUNGEON1    FREEFALL    JUMP1
 */
CameraModeValue D_8011AAD0[] = {
    { -40, 0 },    // atYOffset
    { 150, 1 },    // distMin
    { 180, 2 },    // distMax
    { 12, 4 },     // yawUpdateRateTarget
    { 80, 6 },     // maxYawUpdate
    { 60, 7 },     // unk_14
    { 20, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

/**
 * Setting     Mode     Function
 * --------    -----    --------
 * DUNGEON1    CLIMB    JUMP2
 */
CameraModeValue D_8011AAF0[] = {
    { -40, 0 },    // atYOffset
    { 150, 1 },    // minDist
    { 150, 2 },    // maxDist
    { 20, 18 },    // minMaxDistFactor
    { 5, 4 },      // yawUpdRateTarget
    { 5, 5 },      // xzUpdRateTarget
    { 60, 7 },     // fovTarget
    { 40, 8 },     // atLERPStepScale
    { 0x0000, 9 }, // flags
};

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * DUNGEON1    CLIMBZ    JUMP2
 */
CameraModeValue D_8011AB14[] = {
    /* CAM_FUNC_JUMP2 */
    { -40, 0 },    // atYOffset
    { 150, 1 },    // minDist
    { 150, 2 },    // maxDist
    { 20, 18 },    // minMaxDistFactor
    { 999, 4 },    // yawUpdRateTarget
    { 5, 5 },      // xzUpdRateTarget
    { 60, 7 },     // fovTarget
    { 40, 8 },     // atLERPStepScale
    { 0x2006, 9 }, // flags
};

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * DUNGEON1    CHARGE    BATT4
 */
CameraModeValue D_8011AB38[] = {
    { -40, 0 },    // yOffset
    { 200, 1 },    // rTarget
    { 50, 3 },     // pitchTarget
    { 2, 4 },      // lerpUpdateRate
    { 80, 7 },     // fovTarget
    { 20, 8 },     // atLERPTarget
    { 0xF000, 9 }, // flags
};

/**
 * Setting     Mode    Function
 * --------    ----    --------
 * DUNGEON1    HANG    UNIQ1
 */
CameraModeValue D_8011AB54[] = {
    { -80, 0 },    // yOffset */
    { 150, 1 },    // distMin */
    { 150, 2 },    // distMax */
    { 40, 3 },     // pitchTarget */
    { 60, 7 },     // fovTarget */
    { 10, 8 },     // atLERPScaleMax */
    { 0x0000, 9 }, // flags */
};

/**
 * Setting     Mode     Function
 * --------    -----    --------
 * DUNGEON1    HANGZ    UNIQ1
 */
CameraModeValue D_8011AB70[] = {
    { -120, 0 },   // yOffset
    { 150, 1 },    // distMin
    { 150, 2 },    // distMax
    { 70, 3 },     // pitchTarget
    { 45, 7 },     // fovTarget
    { 10, 8 },     // atLERPScaleMax
    { 0x2000, 9 }, // flags
};

/**
 * Setting     Mode     Function
 * --------    -----    --------
 * DUNGEON1    STILL    NORM1
 */
CameraModeValue D_8011AB8C[] = {
    { -40, 0 },    // yOffset
    { 150, 1 },    // distMin
    { 150, 2 },    // distMax
    { 0, 3 },      // pitchTarget
    { 100, 4 },    // unk_0C
    { 5, 5 },      // unk_10
    { 100, 6 },    // unk_14
    { 60, 7 },     // fovTarget
    { 5, 8 },      // atLERPScaleMax
    { 0xF003, 9 }, // flags
};

/**
 * Setting     Mode        Function
 * --------    --------    --------
 * DUNGEON1    PUSHPULL    PARA1
 */
CameraModeValue D_8011ABB4[] = {
    { -40, 0 },    // unk_00
    { 180, 1 },    // distTarget
    { 25, 3 },     // pitchTarget
    { 0, 10 },     // yawTarget
    { 5, 4 },      // unk_08
    { 5, 5 },      // unk_0C
    { 60, 7 },     // fovTarget
    { 50, 8 },     // unk_14
    { 0x206A, 9 }, // flags
    { -20, 11 },   // unk_18
    { 30, 12 },    // unk_1C
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
    /* CAM_FUNC_JUMP3 */
    { -20, 0 },    // yOffset
    { 280, 1 },    // distMin
    { 300, 2 },    // distMax
    { 20, 3 },     // pitchTarget
    { 15, 4 },     // swingUpdateRate
    { 5, 5 },      // unk_10
    { 40, 6 },     // unk_14
    { 60, 7 },     // fovTarget
    { 100, 8 },    // unk_1C
    { 0x0004, 9 }, // flags
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * NORMAL3    TARGET    PARA1
 */
CameraModeValue D_8011AC08[] = {
    { -50, 0 },    // unk_00
    { 250, 1 },    // distTarget
    { 70, 3 },     // pitchTarget
    { 0, 10 },     // yawTarget
    { 15, 4 },     // unk_08
    { 5, 5 },      // unk_0C
    { 60, 7 },     // fovTarget
    { 100, 8 },    // unk_14
    { 0x200A, 9 }, // flags
    { -50, 11 },   // unk_18
    { 20, 12 },    // unk_1C
};

/**
 * Setting    Mode    Function
 * -------    ----    --------
 * NORMAL3    TALK    KEEP3
 */
CameraModeValue D_8011AC34[] = {
    { -30, 0 },    // yOffset
    { 70, 1 },     // minDist
    { 200, 2 },    // maxDist
    { 40, 13 },    // swingYawInitial
    { 10, 14 },    // swingYawFinal
    { 10, 15 },    // swingPitchInitial
    { 20, 16 },    // swingPitchFinal
    { 70, 17 },    // swingPitchAdj
    { 45, 7 },     // fovTarget
    { 10, 8 },     // atLERPScaleMax
    { 10, 4 },     // initTimer
    { 0x3500, 9 }, // flags
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
    { -40, 0 },    // yOffset
    { 150, 1 },    // distMin
    { 250, 2 },    // distMax
    { -5, 3 },     // pitchTarget
    { 18, 4 },     // swingUpdateRate
    { 5, 5 },      // unk_10
    { 60, 6 },     // unk_14
    { 60, 7 },     // fovTarget
    { 40, 8 },     // unk_1C
    { 0x0005, 9 }, // flags
};

/*=====================================================================
 *                   Custom Data: HORSE0 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * HORSE0     NORMAL    NORM3
 */
CameraModeValue sSetHrse0ModeNormVals[] = {
    { -50, 0 },    // yOffset
    { 220, 1 },    // distMin
    { 250, 2 },    // distMax
    { 10, 3 },     // pitchTarget
    { 16, 4 },     // yawUpdateSpeed
    { 20, 5 },     // unk_10
    { 60, 7 },     // fovTarget
    { 100, 8 },    // maxAtLERPScale
    { 0x0600, 9 }, // flags
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * HORSE0     TARGET    NORM3
 */
CameraModeValue sSetHrse0ModeParaVals[] = {
    { -40, 0 },    // yOffset
    { 180, 1 },    // distMin
    { 220, 2 },    // distMax
    { -2, 3 },     // pitchTarget
    { 12, 4 },     // yawUpdateSpeed
    { 100, 5 },    // unk_10
    { 45, 7 },     // fovTarget
    { 100, 8 },    // maxAtLERPScale
    { 0x2600, 9 }, // flags
};

/**
 * Setting    Mode        Function
 * -------    --------    --------
 * HORSE0     BOWARROW    SUBJ3
 */
CameraModeValue D_8011ACD4[] = {
    { -7, 0 },     // eyeNextYOffset
    { 14, 1 },     // eyeDist
    { 100, 2 },    // eyeNextDist
    { 10, 4 },     // unk_0C
    { 0, 19 },     // atOffset.x
    { -30, 20 },   // atOffset.y
    { -5, 21 },    // atOffset.z
    { 40, 7 },     // fovTarget
    { 0x2600, 9 }, // flags
};

/**
 * Setting    Mode            Function
 * -------    ------------    --------
 * HORSE0     FOLLOWTARGET    KEEP1
 */
CameraModeValue D_8011ACF8[] = {
    { -60, 0 },    // unk_00
    { 180, 1 },    // unk_04
    { 220, 2 },    // unk_08
    { 25, 13 },    // unk_0C
    { 45, 14 },    // unk_10
    { -5, 15 },    // unk_14
    { 15, 16 },    // unk_18
    { 15, 17 },    // unk_1C
    { 45, 7 },     // unk_20
    { 50, 8 },     // unk_24
    { 0x2601, 9 }, // flags
    { -60, 11 },   // unk_28
    { 20, 12 },    // unk_2C
};

/**
 * Setting    Mode    Function
 * -------    ----    --------
 * HORSE0     TALK    KEEP3
 */
CameraModeValue D_8011AD2C[] = {
    { -60, 0 },    // yOffset
    { 140, 1 },    // minDist
    { 200, 2 },    // maxDist
    { 40, 13 },    // swingYawInitial
    { 10, 14 },    // swingYawFinal
    { 0, 15 },     // swingPitchInitial
    { 5, 16 },     // swingPitchFinal
    { 70, 17 },    // swingPitchAdj
    { 45, 7 },     // fovTarget
    { 50, 8 },     // atLERPScaleMax
    { 10, 4 },     // initTimer
    { 0x3500, 9 }, // flags
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
    { -20, 0 },    // yOffset
    { 150, 1 },    // distMin
    { 250, 2 },    // distMax
    { 0, 3 },      // pitchTarget
    { 15, 4 },     // unk_0C
    { 5, 5 },      // unk_10
    { 40, 6 },     // unk_14
    { 60, 7 },     // fovTarget
    { 60, 8 },     // atLERPScaleMax
    { 0x0001, 9 }, // flags
};

/**
 * Setting       Mode      Function
 * ----------    ------    --------
 * BOSS_GOHMA    BATTLE    BATT1
 */
CameraModeValue D_8011AD84[] = {
    { -30, 0 },    // yOffset (PCT)
    { 150, 1 },    // distance
    { 10, 13 },    // swingYawInitial
    { 40, 14 },    // swingYawFinal
    { -10, 15 },   // swingPitchInitial
    { 0, 16 },     // swingPitchFinal
    { 25, 17 },    // swingPitchAdj (PCT)
    { 60, 7 },     // fov
    { 40, 8 },     // atLERPScaleOnGround (PCT)
    { 0x2002, 9 }, // flags
    { -50, 11 },   // yOffsetOffGround (PCT)
    { 20, 12 },    // atLERPScaleOffGround (PCT)
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
    { 0, 0 },      // yOffset
    { 150, 1 },    // distMin
    { 300, 2 },    // distMax
    { 0, 3 },      // pitchTarget
    { 12, 4 },     // unk_0C
    { 5, 5 },      // unk_10
    { 70, 6 },     // unk_14
    { 70, 7 },     // fovTarget
    { 40, 8 },     // atLERPScaleMax
    { 0x0003, 9 }, // flags
};

/**
 * Setting         Mode      Function
 * ------------    ------    --------
 * BOSS_DODONGO    BATTLE    BATT1
 */
CameraModeValue D_8011ADDC[] = {
    { -20, 0 },    // yOffset (PCT)
    { 160, 1 },    // distance
    { 10, 13 },    // swingYawInitial
    { 60, 14 },    // swingYawFinal
    { -5, 15 },    // swingPitchInitial
    { 0, 16 },     // swingPitchFinal
    { 25, 17 },    // swingPitchAdj (PCT)
    { 70, 7 },     // fov
    { 50, 8 },     // atLERPScaleOnGround (PCT)
    { 0x2002, 9 }, // flags
    { -40, 11 },   // yOffsetOffGround (PCT)
    { 20, 12 },    // atLERPScaleOffGround (PCT)
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
    { -20, 0 },    // yOffset
    { 150, 1 },    // distMin
    { 300, 2 },    // distMax
    { -5, 3 },     // pitchTarget
    { 15, 4 },     // unk_0C
    { 5, 5 },      // unk_10
    { 40, 6 },     // unk_14
    { 70, 7 },     // fovTarget
    { 70, 8 },     // atLERPScaleMax
    { 0x0003, 9 }, // flags
};

/**
 * Setting          Mode      Function
 * -------------    ------    --------
 * BOSS_BARINADE    BATTLE    BATT1
 */
CameraModeValue D_8011AE34[] = {
    { -30, 0 },    // yOffset (PCT)
    { 125, 1 },    // distance
    { 10, 13 },    // swingYawInitial
    { 10, 14 },    // swingYawFinal
    { 0, 15 },     // swingPitchInitial
    { 0, 16 },     // swingPitchFinal
    { 50, 17 },    // swingPitchAdj (PCT)
    { 60, 7 },     // fov
    { 50, 8 },     // atLERPScaleOnGround (PCT)
    { 0x2002, 9 }, // flags
    { -50, 11 },   // yOffsetOffGround (PCT)
    { 20, 12 },    // atLERPScaleOffGround (PCT)
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
    { 10, 0 },     // yOffset
    { 150, 1 },    // distMin
    { 250, 2 },    // distMax
    { 0, 3 },      // pitchTarget
    { 15, 4 },     // unk_0C
    { 15, 5 },     // unk_10
    { 40, 6 },     // unk_14
    { 60, 7 },     // fovTarget
    { 100, 8 },    // atLERPScaleMax
    { 0x0003, 9 }, // flags
};

/**
 * Setting         Mode      Function
 * ------------    ------    --------
 * BOSS_PHANTOM    BATTLE    BATT1
 */
CameraModeValue D_8011AE8C[] = {
    /* CAM_FUNC_BATT1 */
    { -20, 0 },    // yOffset (PCT)
    { 200, 1 },    // distance
    { 45, 13 },    // swingYawInitial
    { 40, 14 },    // swingYawFinal
    { 5, 15 },     // swingPitchInitial
    { -5, 16 },    // swingPitchFinal
    { 35, 17 },    // swingPitchAdj (PCT)
    { 60, 7 },     // fov
    { 100, 8 },    // atLERPScaleOnGround (PCT)
    { 0x2002, 9 }, // flags
    { -40, 11 },   // yOffsetOffGround (PCT)
    { 60, 12 },    // atLERPScaleOffGround (PCT)
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
    { -20, 0 },    // yOffset
    { 500, 1 },    // distMin
    { 500, 2 },    // distMax
    { 10, 3 },     // pitchTarget
    { 16, 4 },     // unk_0C
    { 10, 5 },     // unk_10
    { 40, 6 },     // unk_14
    { 60, 7 },     // fovTarget
    { 80, 8 },     // atLERPScaleMax
    { 0x0003, 9 }, // flags
};

/**
 * Setting          Mode      Function
 * -------------    ------    --------
 * BOSS_VOLVAGIA    BATTLE    BATT1
 */
CameraModeValue D_8011AEE4[] = {
    { -20, 0 },    // yOffset (PCT)
    { 200, 1 },    // distance
    { 20, 13 },    // swingYawInitial
    { 60, 14 },    // swingYawFinal
    { 0, 15 },     // swingPitchInitial
    { 10, 16 },    // swingPitchFinal
    { 15, 17 },    // swingPitchAdj (PCT)
    { 45, 7 },     // fov
    { 50, 8 },     // atLERPScaleOnGround (PCT)
    { 0x2002, 9 }, // flags
    { -40, 11 },   // yOffsetOffGround (PCT)
    { 20, 12 },    // atLERPScaleOffGround (PCT)
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
    { -20, 0 },    // yOffset
    { 500, 1 },    // distMin
    { 500, 2 },    // distMax
    { 10, 3 },     // pitchTarget
    { 20, 4 },     // unk_0C
    { 10, 5 },     // unk_10
    { 40, 6 },     // unk_14
    { 60, 7 },     // fovTarget
    { 80, 8 },     // atLERPScaleMax
    { 0x0083, 9 }, // flags
};

/**
 * Setting       Mode      Function
 * ----------    ------    --------
 * BOSS_BONGO    BATTLE    BATT1
 */
CameraModeValue D_8011AF3C[] = {
    { -20, 0 },    // yOffset (PCT)
    { 200, 1 },    // distance
    { 20, 13 },    // swingYawInitial
    { 60, 14 },    // swingYawFinal
    { 0, 15 },     // swingPitchInitial
    { 10, 16 },    // swingPitchFinal
    { 15, 17 },    // swingPitchAdj (PCT)
    { 45, 7 },     // fov
    { 50, 8 },     // atLERPScaleOnGround (PCT)
    { 0x2082, 9 }, // flags
    { -40, 11 },   // yOffsetOffGround (PCT)
    { 20, 12 },    // atLERPScaleOffGround (PCT)
};

/**
 * Setting       Mode        Function
 * ----------    --------    --------
 * BOSS_BONGO    JUMP        NORM1
 * BOSS_BONGO    FREEFALL    NORM1
 */
CameraModeValue D_8011AF6C[] = {
    { -20, 0 },    // yOffset
    { 500, 1 },    // distMin
    { 500, 2 },    // distMax
    { 10, 3 },     // pitchTarget
    { 20, 4 },     // unk_0C
    { 10, 5 },     // unk_10
    { 80, 6 },     // unk_14
    { 60, 7 },     // fovTarget
    { 80, 8 },     // atLERPScaleMax
    { 0x0083, 9 }, // flags
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
    { -20, 0 },    // yOffset
    { 100, 1 },    // distMin
    { 150, 2 },    // distMax
    { -10, 3 },    // pitchTarget
    { 15, 4 },     // unk_0C
    { 10, 5 },     // unk_10
    { 40, 6 },     // unk_14
    { 80, 7 },     // fovTarget
    { 60, 8 },     // atLERPScaleMax
    { 0x0003, 9 }, // flags
};

/**
 * Setting        Mode      Function
 * -----------    ------    --------
 * BOSS_MORPHA    BATTLE    BATT1
 */
CameraModeValue D_8011AFBC[] = {
    { -20, 0 },    // yOffset (PCT)
    { 200, 1 },    // distance
    { 10, 13 },    // swingYawInitial
    { 80, 14 },    // swingYawFinal
    { -10, 15 },   // swingPitchInitial
    { 10, 16 },    // swingPitchFinal
    { 25, 17 },    // swingPitchAdj (PCT)
    { 70, 7 },     // fov
    { 40, 8 },     // atLERPScaleOnGround (PCT)
    { 0x2002, 9 }, // flags
    { -40, 11 },   // yOffsetOffGround (PCT)
    { 20, 12 },    // atLERPScaleOffGround (PCT)
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
    { -20, 0 },    // yOffset
    { 150, 1 },    // distMin
    { 300, 2 },    // distMax
    { 0, 3 },      // pitchTarget
    { 20, 4 },     // unk_0C
    { 10, 5 },     // unk_10
    { 40, 6 },     // unk_14
    { 60, 7 },     // fovTarget
    { 80, 8 },     // atLERPScaleMax
    { 0x0003, 9 }, // flags
};

/**
 * Setting              Mode      Function
 * -----------------    ------    --------
 * TWINROVA_PLATFORM    BATTLE    BATT1
 * TWINROVA_FLOOR       BATTLE    BATT1
 */
CameraModeValue D_8011B014[] = {
    { 0, 0 },      // yOffset (PCT)
    { 400, 1 },    // distance
    { 0, 13 },     // swingYawInitial
    { 60, 14 },    // swingYawFinal
    { -10, 15 },   // swingPitchInitial
    { 5, 16 },     // swingPitchFinal
    { 25, 17 },    // swingPitchAdj (PCT)
    { 45, 7 },     // fov
    { 40, 8 },     // atLERPScaleOnGround (PCT)
    { 0x2002, 9 }, // flags
    { -20, 11 },   // yOffsetOffGround (PCT)
    { 20, 12 },    // atLERPScaleOffGround (PCT)
};

/**
 * Setting           Mode      Function
 * --------------    ------    --------
 * TWINROVA_FLOOR    NORMAL    NORM1
 */
CameraModeValue D_8011B044[] = {
    { -10, 0 },    // yOffset
    { 150, 1 },    // distMin
    { 200, 2 },    // distMax
    { -10, 3 },    // pitchTarget
    { 12, 4 },     // unk_0C
    { 10, 5 },     // unk_10
    { 40, 6 },     // unk_14
    { 60, 7 },     // fovTarget
    { 50, 8 },     // atLERPScaleMax
    { 0x0003, 9 }, // flags
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
    { 40, 0 },     // yOffset
    { 330, 1 },    // distMin
    { 330, 2 },    // distMax
    { -5, 3 },     // pitchTarget
    { 15, 4 },     // unk_0C
    { 15, 5 },     // unk_10
    { 40, 6 },     // unk_14
    { 60, 7 },     // fovTarget
    { 100, 8 },    // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

/**
 * Setting           Mode      Function
 * --------------    ------    --------
 * BOSS_GANONDORF    CHARGE    BATT4
 */
CameraModeValue D_8011B094[] = {
    { -40, 0 },    // yOffset
    { 250, 1 },    // rTarget
    { 0, 3 },      // pitchTarget
    { 2, 4 },      // lerpUpdateRate
    { 80, 7 },     // fovTarget
    { 20, 8 },     // atLERPTarget
    { 0xF000, 9 }, // flags
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
    { -20, 0 },    // yOffset
    { 500, 1 },    // distMin
    { 500, 2 },    // distMax
    { 10, 3 },     // pitchTarget
    { 20, 4 },     // unk_0C
    { 10, 5 },     // unk_10
    { 40, 6 },     // unk_14
    { 60, 7 },     // fovTarget
    { 80, 8 },     // atLERPScaleMax
    { 0x0003, 9 }, // flags
};

/**
 * Setting       Mode      Function
 * ----------    ------    --------
 * BOSSGANON2    BATTLE    BATT1
 */
CameraModeValue D_8011B0D8[] = {
    { -20, 0 },    // yOffset (PCT)
    { 180, 1 },    // distance
    { 20, 13 },    // swingYawInitial
    { 60, 14 },    // swingYawFinal
    { 0, 15 },     // swingPitchInitial
    { 10, 16 },    // swingPitchFinal
    { 25, 17 },    // swingPitchAdj (PCT)
    { 45, 7 },     // fov
    { 50, 8 },     // atLERPScaleOnGround (PCT)
    { 0x2002, 9 }, // flags
    { -40, 11 },   // yOffsetOffGround (PCT)
    { 20, 12 },    // atLERPScaleOffGround (PCT)
};

/*=====================================================================
 *                   Custom Data: COLLAPSE_STAIRS Setting
 *=====================================================================
 */

/**
 * Setting            Mode      Function
 * ---------------    ------    --------
 * COLLAPSE_STAIRS    NORMAL    NORM2
 */
CameraModeValue D_8011B108[] = {
    { 0, 0 },      // unk_00
    { 120, 1 },    // unk_04
    { 280, 2 },    // unk_08
    { 60, 23 },    // unk_1C
    { 8, 4 },      // unk_0C
    { 40, 6 },     // unk_10
    { 60, 7 },     // unk_14
    { 50, 8 },     // unk_18
    { 0x0000, 9 }, // flags
};

/**
 * Setting            Mode    Function
 * ---------------    ----    --------
 * COLLAPSE_STAIRS    JUMP    NORM2
 */
CameraModeValue D_8011B12C[] = {
    { 0, 0 },      // unk_00
    { 120, 1 },    // unk_04
    { 280, 2 },    // unk_08
    { 60, 23 },    // unk_1C
    { 8, 4 },      // unk_0C
    { 40, 6 },     // unk_10
    { 60, 7 },     // unk_14
    { 50, 8 },     // unk_18
    { 0x0080, 9 }, // flags
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
    { 0, 0 },      // unk_00
    { 270, 1 },    // unk_04
    { 300, 2 },    // unk_08
    { 120, 23 },   // unk_1C
    { 8, 4 },      // unk_0C
    { 60, 6 },     // unk_10
    { 60, 7 },     // unk_14
    { 100, 8 },    // unk_18
    { 0x0000, 9 }, // flags
};

/**
 * Setting    Mode    Function
 * -------    ----    --------
 * TOWER1     JUMP    NORM2
 */
CameraModeValue D_8011B174[] = {
    { 0, 0 },      // unk_00
    { 270, 1 },    // unk_04
    { 300, 2 },    // unk_08
    { 120, 23 },   // unk_1C
    { 6, 4 },      // unk_0C
    { 60, 6 },     // unk_10
    { 60, 7 },     // unk_14
    { 100, 8 },    // unk_18
    { 0x0000, 9 }, // flags
};

/*=====================================================================
 *                   Custom Data: FIXED0 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * FIXED0     NORMAL    FIXD1
 */
CameraModeValue sSetFixd0ModeNormVals[] = {
    { -40, 0 },    // yOffset
    { 100, 4 },    // lerpStep
    { 60, 7 },     // fov
    { 0x0000, 9 }, // flags
};

/**
 * Setting    Mode            Function
 * -------    ------------    --------
 * FIXED0     FOLLOWTARGET    FIXD1
 */
CameraModeValue D_8011B1A8[] = {
    { -40, 0 },    // yOffset
    { 100, 4 },    // lerpStep
    { 60, 7 },     // fov
    { 0x2000, 9 }, // flags
};

/**
 * Setting    Mode    Function
 * -------    ----    --------
 * FIXED0     TALK    FIXD1
 */
CameraModeValue D_8011B1B8[] = {
    { -40, 0 },    // yOffset
    { 100, 4 },    // lerpStep
    { 60, 7 },     // fov
    { 0x3500, 9 }, // flags
};

/*=====================================================================
 *                   Custom Data: FIXED1 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * FIXED1     NORMAL    FIXD1
 */
CameraModeValue D_8011B1C8[] = {
    { -40, 0 },    // yOffset
    { 25, 4 },     // lerpStep
    { 60, 7 },     // fov
    { 0x0000, 9 }, // flags
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
    { -40, 0 },    // yOffset
    { 50, 4 },     // eyeStepScale
    { 80, 5 },     // posStepScale
    { 60, 7 },     // fov
    { 0x0001, 9 }, // flags
};

/*=====================================================================
 *                   Custom Data: CIRCLE2 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * CIRCLE2    NORMAL    DATA4
 */
CameraModeValue sSetCirc2ModeNormVals[] = {
    { -40, 0 },    // yOffset
    { 60, 7 },     // fov
    { 0x3F00, 9 }, // flags
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
    { -40, 0 },    // yOffset
    { 50, 4 },     // speedToEyePos
    { 80, 5 },     // followSpeed
    { 60, 7 },     // fov
    { 0x0004, 9 }, // flags
};

/*=====================================================================
 *
 *=====================================================================
 */

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * PREREND0    NORMAL    FIXD3
 * PREREND3    NORMAL    SPEC6
 * START0      NORMAL    UNIQ0
 * HIDAN1      NORMAL    SPEC7
 */
CameraModeValue D_8011B20C[] = {
    { 0x0000, 9 }, // flags
};

/*=====================================================================
 *                   Custom Data: PREREND0 Setting
 *=====================================================================
 */

/**
 * Setting     Mode            Function
 * --------    ------------    --------
 * PREREND0    FOLLOWTARGET    FIXD3
 * PREREND0    TALK            FIXD3
 */
CameraModeValue sSetPR0ModeKeepTalkVals[] = {
    { 0x2000, 9 }, // flags
};

/*=====================================================================
 *                   Custom Data: PREREND1 Setting
 *=====================================================================
 */

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * PREREND1    NORMAL    UNIQ7
 */
CameraModeValue sSetPR1ModeNormVals[] = {
    { 60, 7 },     // fov
    { 0x0000, 9 }, // flags
};

/**
 * Setting     Mode            Function
 * --------    ------------    --------
 * PREREND1    FOLLOWTARGET    UNIQ7
 */
CameraModeValue sSetPR1ModeKeepVals[] = {
    { 60, 7 },     // fov
    { 0x2000, 9 }, // flags
};

/**
 * Setting     Mode    Function
 * --------    ----    --------
 * PREREND1    TALK    KEEP0
 */
CameraModeValue sSetPreRend1ModeTalkVals[] = {
    { 30, 24 },    // fovScale
    { 0, 25 },     // yawScale
    { 4, 4 },      // timerInit
    { 0x3500, 9 }, // flags
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
    { -40, 0 },    // yOffset
    { 60, 7 },     // fov
    { 0x3200, 9 }, // flags
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
    { -5, 0 },     // yOffset
    { 60, 7 },     // unk_04 (unused)
    { 0x3202, 9 }, // flags
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * DOORC      TARGET    SPEC9
 */
CameraModeValue sSetDoorCModeTargetVals[] = {
    { -5, 0 },     // yOffset
    { 60, 7 },     // unk_04 (unused)
    { 0x320A, 9 }, // flags
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
    { 0x0000, 0 }, // flags
    { 2, 1 },      // unused
    { 30, 2 },     // unused
    { 10, 4 },     // unused
    { 45, 7 },     // unused
    { 0x3200, 9 }, // unused
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
    { 0x0001, 9 }, // flags
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
    { 0xFF00, 9 }, // flags
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
    { 0xFF01, 9 }, // flags
};

/*=====================================================================
 *                   Custom Data: CIRCLE4 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * CIRCLE4    NORMAL    FIXD2
 */
CameraModeValue sSetCirc4ModeNormVals[] = {
    { -40, 0 },    // yOffset
    { 100, 4 },    // eyeStepScale
    { 80, 5 },     // posStepScale
    { 60, 7 },     // fov
    { 0x0000, 9 }, // flags
};

/*=====================================================================
 *                   Custom Data: CIRCLE5 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * CIRCLE5    NORMAL    UNIQ2
 */
CameraModeValue D_8011B290[] = {
    { -40, 0 },    // yOffset
    { 60, 1 },     // distTarget
    { 60, 7 },     // fovTarget
    { 0x0002, 9 }, // flags
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * CIRCLE5    TARGET    UNIQ2
 */
CameraModeValue D_8011B2A0[] = {
    { -30, 0 },    // yOffset
    { 45, 1 },     // distTarget
    { 100, 7 },    // fovTarget
    { 0x2001, 9 }, // flags
};

/*=====================================================================
 *
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * DEMO0      NORMAL    DEMO1
 * DEMO1      NORMAL    DEMO2
 * DEMO4      NORMAL    DEMO5 (Not actually used in Camera_Demo4?)
 * HIDAN2     NORMAL    SPEC4
 * MORI2      NORMAL    UNIQ5
 * MORI3      NORMAL    DEMO6
 */
CameraModeValue D_8011B2B0[] = {
    { 0x3200, 9 }, // flags
};

/*=====================================================================
 *                   Custom Data: MORE1 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * MORI1      NORMAL    PARA1
 */
CameraModeValue sSetMori1ModeNormVals[] = {
    { -50, 0 },    // unk_00
    { 450, 1 },    // distTarget
    { 40, 3 },     // pitchTarget3
    { 180, 10 },   // yawTarget
    { 5, 4 },      // unk_08
    { 5, 5 },      // unk_0C
    { 70, 7 },     // fovTarget
    { 30, 8 },     // unk_14
    { 0x000C, 9 }, // flags
    { -50, 11 },   // unk_18
    { 20, 12 },    // unk_1C
};

/**
 * Setting    Mode     Function
 * -------    -----    --------
 * MORI1      TALK     PARA3
 */
CameraModeValue sSetMori1ModeTalkVals[] = {
    { 0x3501, 9 }, // flags
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
    { 60, 7 },     // fov
    { 30, 8 },     // unk_04
    { 0x3200, 9 }, // flags
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
    { 0x3212, 9 }, // flags
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
    { -50, 0 },    // yOffset
    { 300, 1 },    // distMin
    { 300, 2 },    // distMax
    { 50, 3 },     // pitchTarget
    { 20, 4 },     // unk_0C
    { 10, 5 },     // unk_10
    { 50, 6 },     // unk_14
    { 70, 7 },     // fovTarget
    { 40, 8 },     // atLERPScaleMax
    { 0x0002, 9 }, // flags
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * UFOBEAN    TARGET    PARA1
 */
CameraModeValue D_8011B31C[] = {
    { -50, 0 },    // unk_00
    { 300, 1 },    // distTarget
    { 10, 3 },     // pitchTarget
    { 0, 10 },     // yawTarget
    { 5, 4 },      // unk_08
    { 5, 5 },      // unk_0C
    { 45, 7 },     // fovTarget
    { 50, 8 },     // unk_14
    { 0x200A, 9 }, // flags
    { -40, 11 },   // unk_18
    { 20, 12 },    // unk_1C
};

/**
 * Setting    Mode    Function
 * -------    ----    --------
 * UFOBEAN    JUMP    JUMP1
 */
CameraModeValue D_8011B348[] = {
    { -50, 0 },    // atYOffset
    { 300, 1 },    // distMin
    { 300, 2 },    // distMax
    { 12, 4 },     // yawUpdateRateTarget
    { 35, 6 },     // maxYawUpdate
    { 60, 7 },     // unk_14
    { 40, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

/**
 * Setting    Mode    Function
 * -------    ----    --------
 * UFOBEAN    HANG    UNIQ1
 */
CameraModeValue D_8011B368[] = {
    { -80, 0 },    // yOffset
    { 300, 1 },    // distMin
    { 300, 2 },    // distMax
    { 60, 3 },     // fovTarget
    { 70, 7 },     // pitchTarget
    { 30, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

/**
 * Setting    Mode     Function
 * -------    -----    --------
 * UFOBEAN    HANGZ    UNIQ1
 */
CameraModeValue D_8011B384[] = {
    { -120, 0 },   // yOffset
    { 300, 1 },    // distMin
    { 300, 2 },    // distMax
    { 70, 3 },     // pitchTarget
    { 50, 7 },     // fovTarget
    { 30, 8 },     // atLERPScaleMax
    { 0x2000, 9 }, // flags
};

/**
 * Setting    Mode     Function
 * -------    -----    --------
 * UFOBEAN    STILL    NORM1
 */
CameraModeValue D_8011B3A0[] = {
    { -20, 0 },    // yOffset
    { 300, 1 },    // distMin
    { 350, 2 },    // distMax
    { 50, 3 },     // pitchTarget
    { 100, 4 },    // unk_0C
    { 10, 5 },     // unk_10
    { 100, 6 },    // unk_14
    { 70, 7 },     // fovTarget
    { 30, 8 },     // atLERPScaleMax
    { 0xF002, 9 }, // flags
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
    { -50, 0 },    // yOffset
    { 200, 1 },    // distMin
    { 200, 2 },    // distMax
    { 20, 3 },     // pitchTarget
    { 16, 4 },     // unk_0C
    { 10, 5 },     // unk_10
    { 50, 6 },     // unk_14
    { 60, 7 },     // fovTarget
    { 50, 8 },     // atLERPScaleMax
    { 0x0002, 9 }, // flags
};

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * LIFTBEAN    TARGET    PARA1
 */
CameraModeValue D_8011B3F0[] = {
    { -50, 0 },    // unk_00
    { 200, 1 },    // distTarget
    { 40, 3 },     // pitchTarget
    { 0, 10 },     // yawTarget
    { 5, 4 },      // unk_08
    { 5, 5 },      // unk_0C
    { 45, 7 },     // fovTarget
    { 50, 8 },     // unk_14
    { 0x200A, 9 }, // flags
    { -40, 11 },   // unk_18
    { 20, 12 },    // unk_1C
};

/**
 * Setting     Mode    Function
 * --------    ----    --------
 * LIFTBEAN    JUMP    JUMP1
 */
CameraModeValue D_8011B41C[] = {
    { -50, 0 },    // atYOffset
    { 150, 1 },    // distMin
    { 250, 2 },    // distMax
    { 12, 4 },     // yawUpdateRateTarget
    { 35, 6 },     // maxYawUpdate
    { 60, 7 },     // unk_14
    { 40, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

/**
 * Setting     Mode    Function
 * --------    ----    --------
 * LIFTBEAN    HANG    UNIQ1
 */
CameraModeValue D_8011B43C[] = {
    { -80, 0 },    // yOffset
    { 200, 1 },    // distMin
    { 200, 2 },    // distMax
    { 40, 3 },     // pitchTarget
    { 60, 7 },     // fovTarget
    { 30, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

/**
 * Setting     Mode     Function
 * --------    -----    --------
 * LIFTBEAN    HANGZ    UNIQ1
 */
CameraModeValue D_8011B458[] = {
    { -120, 0 },   // yOffset
    { 200, 1 },    // distMin
    { 200, 2 },    // distMax
    { 60, 3 },     // pitchtarget
    { 50, 7 },     // fovTarget
    { 30, 8 },     // atLERPScaleMax
    { 0x2000, 9 }, // flags
};

/**
 * Setting     Mode     Function
 * --------    -----    --------
 * LIFTBEAN    STILL    NORM1
 */
CameraModeValue D_8011B474[] = {
    { -20, 0 },    // yOffset
    { 200, 1 },    // distMin
    { 250, 2 },    // distMax
    { 20, 3 },     // unk_0C
    { 100, 4 },    // unk_10
    { 10, 5 },     // unk_14
    { 100, 6 },    // pitchTarget
    { 60, 7 },     // fovTarget
    { 30, 8 },     // atLERPScaleMax
    { 0xF002, 9 }, // flags
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
    { -30, 0 },    // yOffset
    { 60, 7 },     // unk_04 (unused)
    { 0x010A, 9 }, // flags
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
CameraModeValue sSetScn1ModeNormVals[] = {
    { -20, 0 },    // yOffset
    { 150, 1 },    // distTarget
    { 60, 7 },     // fovTarget
    { 0x0210, 9 }, // flags
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
    { 0, 0 },      // yOffset
    { 400, 1 },    // distMin
    { 500, 2 },    // distMax
    { 35, 3 },     // unk_0C
    { 14, 4 },     // unk_10
    { 5, 5 },      // unk_14
    { 20, 6 },     // pitchTarget
    { 60, 7 },     // fovTarget
    { 40, 8 },     // atLERPScaleMax
    { 0x0012, 9 }, // flags
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * TAKO       BATTLE    BATT1
 */
CameraModeValue D_8011B4E0[] = {
    { -20, 0 },    // yOffset (PCT)
    { 250, 1 },    // distance
    { 5, 13 },     // swingYawInitial
    { 10, 14 },    // swingYawFinal
    { 30, 15 },    // swingPitchInitial
    { 20, 16 },    // swingPitchFinal
    { 25, 17 },    // swingPitchAdj (PCT)
    { 45, 7 },     // fov
    { 60, 8 },     // atLERPScaleOnGround (PCT)
    { 0x2002, 9 }, // flags
    { -40, 11 },   // yOffsetOffGround (PCT)
    { 25, 12 },    // atLERPScaleOffGround (PCT)
};

/**
 * Setting    Mode     Function
 * -------    -----    --------
 * TAKO       STILL    NORM1
 */
CameraModeValue D_8011B510[] = {
    { 0, 0 },      // yOffset
    { 300, 1 },    // distMin
    { 500, 2 },    // distMax
    { 60, 3 },     // unk_0C
    { 8, 4 },      // unk_10
    { 5, 5 },      // unk_14
    { 60, 6 },     // pitchTarget
    { 60, 7 },     // fovTarget
    { 30, 8 },     // atLERPScaleMax
    { 0x0012, 9 }, // flags
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
    { -20, 0 },    // yOffset
    { 500, 1 },    // distMin
    { 500, 2 },    // distMax
    { 80, 3 },     // unk_0C
    { 20, 4 },     // unk_10
    { 10, 5 },     // unk_14
    { 70, 6 },     // pitchTarget
    { 70, 7 },     // fovTarget
    { 80, 8 },     // atLERPScaleMax
    { 0x0012, 9 }, // flags
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * SPOT05A    TARGET    PARA1
 */
CameraModeValue D_8011B560[] = {
    { -20, 0 },    // unk_00
    { 500, 1 },    // distTarget
    { 80, 3 },     // pitchTarget
    { 0, 10 },     // yawTarget
    { 5, 4 },      // unk_08
    { 5, 5 },      // unk_0C
    { 70, 7 },     // fovTarget
    { 80, 8 },     // unk_14
    { 0x201A, 9 }, // flags
    { -40, 11 },   // unk_18
    { 40, 12 },    // unk_1C
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * SPOT05A    BATTLE    PARA1
 */
CameraModeValue D_8011B58C[] = {
    { -20, 0 },    // unk_00
    { 500, 1 },    // distTarget
    { 80, 3 },     // pitchTarget
    { 0, 10 },     // yawTarget
    { 5, 4 },      // unk_08
    { 5, 5 },      // unk_0C
    { 60, 7 },     // fovTarget
    { 80, 8 },     // unk_14
    { 0x201A, 9 }, // flags
    { -40, 11 },   // unk_18
    { 40, 12 },    // unk_1C
};

/**
 * Setting    Mode     Function
 * -------    -----    --------
 * SPOT05A    CLIMB    NORM1
 */
CameraModeValue D_8011B5B8[] = {
    { -20, 0 },    // yOffset
    { 500, 1 },    // distMin
    { 500, 2 },    // distMax
    { 80, 3 },     // unk_0C
    { 20, 4 },     // unk_10
    { 10, 5 },     // unk_14
    { 80, 6 },     // pitchTarget
    { 60, 7 },     // fovTarget
    { 20, 8 },     // atLERPScaleMax
    { 0x0012, 9 }, // flags
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
    { -20, 0 },    // yOffset
    { 750, 1 },    // distMin
    { 750, 2 },    // distMax
    { 80, 3 },     // unk_0C
    { 20, 4 },     // unk_10
    { 10, 5 },     // unk_14
    { 70, 6 },     // pitchTarget
    { 70, 7 },     // fovTarget
    { 80, 8 },     // atLERPScaleMax
    { 0x0012, 9 }, // flags
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * SPOT05B    TARGET    PARA1
 */
CameraModeValue D_8011B608[] = {
    { -20, 0 },    // unk_00
    { 750, 1 },    // distTarget
    { 80, 3 },     // pitchTarget
    { 0, 10 },     // yawTarget
    { 5, 4 },      // unk_08
    { 5, 5 },      // unk_0C
    { 70, 7 },     // fovTarget
    { 80, 8 },     // unk_14
    { 0x201A, 9 }, // flags
    { -40, 11 },   // unk_18
    { 40, 12 },    // unk_1C
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * SPOT05B    BATTLE    PARA1
 */
CameraModeValue D_8011B634[] = {
    { -20, 0 },    // unk_00
    { 750, 1 },    // distTarget
    { 80, 3 },     // pitchTarget
    { 0, 10 },     // yawTarget
    { 5, 4 },      // unk_08
    { 5, 5 },      // unk_0C
    { 70, 7 },     // fovTarget
    { 80, 8 },     // unk_14
    { 0x200A, 9 }, // flags
    { -40, 11 },   // unk_18
    { 40, 12 },    // unk_1C
};

/**
 * Setting    Mode     Function
 * -------    -----    --------
 * SPOT05B    CLIMB    NORM1
 */
CameraModeValue D_8011B660[] = {
    { -20, 0 },    // yOffset
    { 750, 1 },    // distMin
    { 750, 2 },    // distMax
    { 80, 3 },     // unk_0C
    { 20, 4 },     // unk_10
    { 10, 5 },     // unk_14
    { 80, 6 },     // pitchTarget
    { 70, 7 },     // fovTarget
    { 20, 8 },     // atLERPScaleMax
    { 0x0012, 9 }, // flags
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
    { -20, 0 },    // yOffset
    { 500, 1 },    // distMin
    { 500, 2 },    // distMax
    { 80, 3 },     // unk_0C
    { 20, 4 },     // unk_10
    { 10, 5 },     // unk_14
    { 70, 6 },     // pitchTarget
    { 70, 7 },     // fovTarget
    { 80, 8 },     // atLERPScaleMax
    { 0x0002, 9 }, // flags
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * HIDAN3     TARGET    PARA1
 */
CameraModeValue D_8011B6B0[] = {
    { -20, 0 },    // unk_00
    { 500, 1 },    // distTarget
    { 80, 3 },     // pitchTarget
    { 0, 10 },     // yawTarget
    { 5, 4 },      // unk_08
    { 5, 5 },      // unk_0C
    { 70, 7 },     // fovTarget
    { 80, 8 },     // unk_14
    { 0x200A, 9 }, // flags
    { -40, 11 },   // unk_18
    { 40, 12 },    // unk_1C
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * HIDAN3     BATTLE    PARA1
 */
CameraModeValue D_8011B6DC[] = {
    { -20, 0 },    // unk_00
    { 500, 1 },    // distTarget
    { 80, 3 },     // pitchTarget
    { 0, 10 },     // yawTarget
    { 5, 4 },      // unk_08
    { 5, 5 },      // unk_0C
    { 60, 7 },     // fovTarget
    { 80, 8 },     // unk_14
    { 0x200A, 9 }, // flags
    { -40, 11 },   // unk_18
    { 40, 12 },    // unk_1C
};

/**
 * Setting    Mode     Function
 * -------    -----    --------
 * HIDAN3     CLIMB    NORM1
 */
CameraModeValue D_8011B708[] = {
    { -20, 0 },    // yOffset
    { 500, 1 },    // distMin
    { 500, 2 },    // distMax
    { 80, 3 },     // unk_0C
    { 20, 4 },     // unk_10
    { 10, 5 },     // unk_14
    { 80, 6 },     // pitchTarget
    { 60, 7 },     // fovTarget
    { 20, 8 },     // atLERPScaleMax
    { 0x0002, 9 }, // flags
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
    { -30, 0 },    // unk_00
    { 120, 1 },    // unk_04
    { -10, 3 },    // unk_08
    { 170, 10 },   // unk_0C
    { 0, 21 },     // unk_10
    { 60, 7 },     // unk_18
    { 0x2502, 9 }, // flags
    { 25, 4 },     // unk_14
    { 6, 22 },     // unk_1E
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
    { 20, 4 },     // lerpATScale
    { 0x3200, 9 }, // flags
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
    { -20, 0 },    // yOffset
    { 200, 1 },    // distMin
    { 300, 2 },    // distMax
    { 10, 3 },     // pitchTarget
    { 12, 4 },     // unk_0C
    { 10, 5 },     // unk_10
    { 35, 6 },     // unk_14
    { 60, 7 },     // fovTarget
    { 60, 8 },     // atLERPScaleMax
    { 0x0002, 9 }, // flags
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
CameraModeValue sSetFishingModeNormVals[] = {
    { 0, 0 },      // yOffset
    { 200, 1 },    // distMin
    { 300, 2 },    // distMax
    { 20, 3 },     // unk_0C
    { 12, 4 },     // unk_10
    { 10, 5 },     // unk_14
    { 35, 6 },     // pitchTarget
    { 55, 7 },     // fovTarget
    { 60, 8 },     // atLERPScaleMax
    { 0x0F02, 9 }, // flags
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * FISHING    TARGET    PARA1
 */
CameraModeValue sSetFishingModeTargetVals[] = {
    { -20, 0 },    // unk_00
    { 250, 1 },    // distTarget
    { 0, 3 },      // pitchTarget
    { 0, 10 },     // yawTarget
    { 5, 4 },      // unk_08
    { 5, 5 },      // unk_0C
    { 45, 7 },     // fovTarget
    { 50, 8 },     // unk_14
    { 0x2F0A, 9 }, // flags
    { -40, 11 },   // unk_18
    { 20, 12 },    // unk_1C
};

/**
 * Setting    Mode            Function
 * -------    ------------    --------
 * FISHING    FOLLOWTARGET    BATT1
 * FISHING    BATTLE          BATT1
 */
CameraModeValue sSetFishingModeBattVals[] = {
    { -20, 0 },    // yOffset (PCT)
    { 250, 1 },    // distance
    { 0, 13 },     // swingYawInitial
    { 80, 14 },    // swingYawFinal
    { 0, 15 },     // swingPitchInitial
    { 0, 16 },     // swingPitchFinal
    { 25, 17 },    // swingPitchAdj (PCT)
    { 55, 7 },     // fov
    { 80, 8 },     // atLERPScaleOnGround (PCT)
    { 0x2F02, 9 }, // flags
    { -40, 11 },   // yOffsetOffGround (PCT)
    { 25, 12 },    // atLERPScaleOffGround (PCT)
};

/**
 * Setting    Mode    Function
 * -------    ----    --------
 * FISHING    TALK    KEEP3
 */
CameraModeValue sSetFishingModeTalkVals[] = {
    { -30, 0 },    // yOffset
    { 70, 1 },     // minDist
    { 200, 2 },    // maxDist
    { 40, 13 },    // swingYawInitial
    { 10, 14 },    // swingYawFinal
    { 0, 15 },     // swingPitchInitial
    { 5, 16 },     // swingPitchFinal
    { 70, 17 },    // swingPitchAdj
    { 45, 7 },     // fovTarget
    { 50, 8 },     // atLERPScaleMax
    { 10, 4 },     // initTimer
    { 0x3F20, 9 }, // flags
};

/**
 * Setting    Mode           Function
 * -------    -----------    --------
 * FISHING    FIRSTPERSON    SUBJ3
 */
CameraModeValue sSetFishingModeFirstPersonVals[] = {
    { 0, 0 },      // eyeNextYOffset
    { 5, 1 },      // eyeDist
    { 50, 2 },     // eyeNextDist
    { 10, 4 },     // unk_0C
    { 0, 19 },     // atOffset.x
    { 0, 20 },     // atOffset.y
    { 0, 21 },     // atOffset.z
    { 45, 7 },     // fovTarget
    { 0x0F00, 9 }, // flags
};

/**
 * Setting    Mode    Function
 * -------    ----    --------
 * FISHING    JUMP    JUMP1
 */
CameraModeValue sSetFishingModeJumpVals[] = {
    { -20, 0 },    // atYOffset
    { 200, 1 },    // distMin
    { 300, 2 },    // distMax
    { 12, 4 },     // yawUpdateRateTarget
    { 35, 6 },     // maxYawUpdate
    { 60, 7 },     // unk_14
    { 40, 8 },     // atLERPScaleMax
    { 0x0F00, 9 }, // flags
};

/**
 * Setting    Mode        Function
 * -------    --------    --------
 * FISHING    FREEFALL    JUMP1
 */
CameraModeValue sSetFishingModeFreeFallVals[] = {
    { -20, 0 },    // atYOffset
    { 200, 1 },    // distMin
    { 300, 2 },    // distMax
    { 15, 4 },     // yawUpdateRateTarget
    { 80, 6 },     // maxYawUpdate
    { 60, 7 },     // unk_14
    { 20, 8 },     // atLERPScaleMax
    { 0x0F00, 9 }, // flags
};

/**
 * Setting    Mode    Function
 * -------    ----    --------
 * FISHING    HANG    UNIQ1
 */
CameraModeValue sSetFishingModeHangVals[] = {
    { -80, 0 },    // yOffset
    { 200, 1 },    // distMin
    { 300, 2 },    // distMax
    { 40, 3 },     // pitchTarget
    { 60, 7 },     // fovTarget
    { 10, 8 },     // atLERPScaleMax
    { 0x0F00, 9 }, // flags
};

/**
 * Setting    Mode     Function
 * -------    -----    --------
 * FISHING    HANGZ    UNIQ1
 */
CameraModeValue sSetFishingModeHangZVals[] = {
    { -120, 0 },   // yOffset
    { 300, 1 },    // distMin
    { 300, 2 },    // distMax
    { 70, 3 },     // pitchTarget
    { 45, 7 },     // fovTarget
    { 10, 8 },     // atLERPScaleMax
    { 0x2F00, 9 }, // flags
};

/*=====================================================================
 *                   Custom Data: DEMOC Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * DEMOC      NORMAL    UNIQ9
 */
CameraModeValue sSetDemoCModeNormVals[] = {
    { 0x3F00, 9 }, /* flags */
};

/*=====================================================================
 *                   Custom Data: UOFIBER Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * UOFIBER    NORMAL    NORM1
 */
CameraModeValue sSetUOFiberModeNormVals[] = {
    { 30, 0 },     // yOffset
    { 200, 1 },    // distMin
    { 300, 2 },    // distMax
    { -20, 3 },    // unk_0C
    { 15, 4 },     // unk_10
    { 5, 26 },     // unk_14
    { 50, 6 },     // pitchTarget
    { 70, 7 },     // fovTarget
    { 70, 8 },     // atLERPScaleMax
    { 0x0003, 9 }, // flags
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * UOFIBER    BATTLE    BATT1
 */
CameraModeValue sSetUOFiberModeBattVals[] = {
    { -30, 0 },    // yOffset (PCT)
    { 160, 1 },    // distance
    { 10, 13 },    // swingYawInitial
    { 10, 14 },    // swingYawFinal
    { 0, 15 },     // swingPitchInitial
    { 0, 16 },     // swingPitchFinal
    { 70, 17 },    // swingPitchAdj (PCT)
    { 60, 7 },     // fov
    { 40, 8 },     // atLERPScaleOnGround (PCT)
    { 0x2002, 9 }, // flags
    { -50, 11 },   // yOffsetOffGround (PCT)
    { 20, 12 },    // atLERPScaleOffGround (PCT)
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
CameraModeValue sSetDung2ModeNormVals[] = {
    { -20, 0 },    // yOffset
    { 350, 1 },    // distMin
    { 350, 2 },    // distMax
    { 20, 3 },     // unk_0C
    { 15, 4 },     // unk_10
    { 5, 5 },      // unk_14
    { 30, 6 },     // pitchTarget
    { 60, 7 },     // fovTarget
    { 60, 8 },     // atLERPScaleMax
    { 0x0003, 9 }, // flags
};

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * DUNGEON2    TARGET    PARA1
 */
CameraModeValue sSetDung2ModeTargetVals[] = {
    { -20, 0 },    // unk_00
    { 200, 1 },    // distTarget
    { 0, 3 },      // pitchTarget
    { 0, 10 },     // yawTarget
    { 5, 4 },      // unk_08
    { 5, 5 },      // unk_0C
    { 45, 7 },     // fovTarget
    { 50, 8 },     // unk_14
    { 0x200A, 9 }, // flags
    { -40, 11 },   // unk_18
    { 20, 12 },    // unk_1C
};

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * DUNGEON2    BATTLE    BATT1
 */
CameraModeValue sSetDung2ModeBattVals[] = {
    { -20, 0 },    // yOffset (PCT)
    { 180, 1 },    // distance
    { 10, 13 },    // swingYawInitial
    { 80, 14 },    // swingYawFinal
    { -10, 15 },   // swingPitchInitial
    { 10, 16 },    // swingPitchFinal
    { 25, 17 },    // swingPitchAdj (PCT)
    { 45, 7 },     // fov
    { 80, 8 },     // atLERPScaleOnGround (PCT)
    { 0x2002, 9 }, // flags
    { -40, 11 },   // yOffsetOffGround (PCT)
    { 25, 12 },    // atLERPScaleOffGround (PCT)
};

/**
 * Setting     Mode    Function
 * --------    ----    --------
 * DUNGEON2    JUMP    JUMP1
 */
CameraModeValue sSetDung2ModeJumpVals[] = {
    { -20, 0 },    // atYOffset
    { 350, 1 },    // distMin
    { 350, 2 },    // distMax
    { 10, 4 },     // yawUpdateRateTarget
    { 50, 6 },     // maxYawUpdate
    { 60, 7 },     // unk_14
    { 40, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

/**
 * Setting     Mode        Function
 * --------    --------    --------
 * DUNGEON2    FREEFALL    JUMP1
 */
CameraModeValue sSetDung2ModeFreefallVals[] = {
    { -20, 0 },    // atYOffset
    { 350, 1 },    // distMin
    { 350, 2 },    // distMax
    { 15, 4 },     // yawUpdateRateTarget
    { 80, 6 },     // maxYawUpdate
    { 60, 7 },     // unk_14
    { 20, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

/**
 * Setting     Mode     Function
 * --------    -----    --------
 * DUNGEON2    CLIMB    JUMP2
 */
CameraModeValue sSetDung2ModeClimbVals[] = {
    { -40, 0 },    // atYOffset
    { 350, 1 },    // minDist
    { 350, 2 },    // maxDist
    { 20, 18 },    // minMaxDistFactor
    { 5, 4 },      // yawUpdRateTarget
    { 5, 5 },      // xzUpdRateTarget
    { 60, 7 },     // fovTarget
    { 40, 8 },     // atLERPStepScale
    { 0x0000, 9 }, // flags
};

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * DUNGEON2    CLIMBZ    JUMP2
 */
CameraModeValue sSetDung2ModeClimbZVals[] = {
    { -40, 0 },    // atYOffset
    { 350, 1 },    // minDist
    { 350, 2 },    // maxDist
    { 20, 18 },    // minMaxDistFactor
    { 999, 4 },    // yawUpdRateTarget
    { 5, 5 },      // xzUpdRateTarget
    { 60, 7 },     // fovTarget
    { 40, 8 },     // atLERPStepScale
    { 0x2006, 9 }, // flags
};

/**
 * Setting     Mode    Function
 * --------    ----    --------
 * DUNGEON2    HANG    UNIQ1
 */
CameraModeValue sSetDung2ModeHangVals[] = {
    { -50, 0 },    // yOffset
    { 350, 1 },    // distMin
    { 350, 2 },    // distMax
    { 40, 3 },     // pitchTarget
    { 60, 7 },     // fovTarget
    { 10, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

/**
 * Setting     Mode     Function
 * --------    -----    --------
 * DUNGEON2    HANGZ    UNIQ1
 */
CameraModeValue sSetDung2ModeHangZVals[] = {
    { -100, 0 },   // yOffset
    { 350, 1 },    // distMin
    { 350, 2 },    // distMax
    { 70, 3 },     // pitchTarget
    { 45, 7 },     // fovTarget
    { 10, 8 },     // atLERPScaleMax
    { 0x2000, 9 }, // flags
};

/**
 * Setting     Mode     Function
 * --------    -----    --------
 * DUNGEON2    STILL    NORM1
 */
CameraModeValue sSetDung2ModeStillVals[] = {
    { -10, 0 },    // yOffset
    { 350, 1 },    // distMin
    { 350, 2 },    // distMax
    { 20, 3 },     // unk_0C
    { 100, 4 },    // unk_10
    { 5, 5 },      // unk_14
    { 100, 6 },    // pitchTarget
    { 60, 7 },     // fovTarget
    { 5, 8 },      // atLERPScaleMax
    { 0xF003, 9 }, // flags
};

/**
 * Setting     Mode        Function
 * --------    --------    --------
 * DUNGEON2    PUSHPULL    PARA1
 */
CameraModeValue sSetDung2ModePushpullVals[] = {
    { 0, 0 },      // unk_00
    { 280, 1 },    // distTarget
    { 25, 3 },     // pitchTarget
    { 0, 10 },     // yawTarget
    { 5, 4 },      // unk_08
    { 5, 5 },      // unk_0C
    { 70, 7 },     // fovTarget
    { 30, 8 },     // unk_14
    { 0x206A, 9 }, // flags
    { -20, 11 },   // unk_18
    { 30, 12 },    // unk_1C
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
CameraModeValue sSetTeppenModeNormVals[] = {
    { -10, 0 },    // yOffset
    { 280, 1 },    // distMin
    { 320, 2 },    // distMax
    { -8, 3 },     // unk_0C
    { 20, 4 },     // unk_10
    { 10, 5 },     // unk_14
    { 80, 6 },     // pitchTarget
    { 60, 7 },     // fovTarget
    { 80, 8 },     // atLERPScaleMax
    { 0x0002, 9 }, // flags
};

/**
 * Setting    Mode            Function
 * -------    ------------    --------
 * TEPPEN     FOLLOWTARGET    KEEP1
 */
CameraModeValue sSetTeppenModeFollowTargetVals[] = {
    { -20, 0 },    // unk_00
    { 180, 1 },    // unk_04
    { 200, 2 },    // unk_08
    { 35, 13 },    // unk_0C
    { 45, 14 },    // unk_10
    { 0, 15 },     // unk_14
    { -5, 16 },    // unk_18
    { 20, 17 },    // unk_1C
    { 50, 7 },     // unk_20
    { 50, 8 },     // unk_24
    { 0x2001, 9 }, // flags
    { -50, 11 },   // unk_28
    { 30, 12 },    // unk_2C
};

/**
 * Setting    Mode    Function
 * -------    ----    --------
 * TEPPEN     TALK    KEEP3
 */
CameraModeValue sSetTeppenModeTalkVals[] = {
    { -80, 0 },    // yOffset
    { 200, 1 },    // minDist
    { 250, 2 },    // maxDist
    { 30, 13 },    // swingYawInitial
    { 10, 14 },    // swingYawFinal
    { -8, 15 },    // swingPitchInitial
    { -8, 16 },    // swingPitchFinal
    { 30, 17 },    // swingPitchAdj
    { 50, 7 },     // fovTarget
    { 50, 8 },     // atLERPScaleMax
    { 10, 4 },     // initTimer
    { 0x3520, 9 }, // flags
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
CameraModeValue sSetNorm4ModeTalkVals[] = {
    { -30, 0 },    // yOffset
    { 70, 1 },     // minDist
    { 200, 2 },    // maxDist
    { 40, 13 },    // swingYawInitial
    { 10, 14 },    // swingYawFinal
    { 0, 15 },     // swingPitchInitial
    { 5, 16 },     // swingPitchFinal
    { 70, 17 },    // swingPitchAdj
    { 45, 7 },     // fovTarget
    { 50, 8 },     // atLERPScaleMax
    { 10, 4 },     // initTimer
    { 0x35A0, 9 }, // flags
};

/*=====================================================================
 *             CAMERA MODES TO DATA
 *=====================================================================
 */

CameraMode sCamSetNorm0Modes[] = {
    { CAM_FUNC_NORM1, 10, D_8011A3A0 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011A458 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 },  // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },  // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },  // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },  // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },  // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A580 },  // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 },  // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 },  // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5FC },  // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C },  // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
};

CameraMode sCamSetNorm1Modes[] = {
    { CAM_FUNC_NORM1, 10, sSetNorm1ModeNormVals }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, sSetNorm1ModeParaVals }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A714 },            // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011A428 },            // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011A748 },            // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A7D8 },             // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },             // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },             // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },             // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A778 },             // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },             // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },             // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A7FC },             // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A798 },             // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A83C },             // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A858 },             // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A7B8 },             // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A820 },             // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A874 },            // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 },            // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C },            // CAM_MODE_BOOMFOLLLOW
};

CameraMode sCamSetDungeon0Modes[] = {
    { CAM_FUNC_NORM1, 10, D_8011A89C }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A8C4 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A8F0 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011A924 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A994 },  // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },  // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },  // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },  // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A778 },  // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },  // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A9B8 },  // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A954 },  // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A9F8 },  // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011AA14 },  // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A974 },  // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A9DC },  // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011AA30 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
};

CameraMode sCamSetDungeon1Modes[] = {
    { CAM_FUNC_NORM1, 10, D_8011AA58 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A8C4 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A714 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011AA80 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011A924 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011AAF0 },  // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },  // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },  // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },  // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A778 },  // CAM_MODE_HOOKSHOT,
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },  // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011AB14 },  // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011AAB0 },  // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011AB54 },  // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011AB70 },  // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011AAD0 },  // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011AB38 },  // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011AB8C }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011ABB4 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
};

CameraMode sCamSetNorm3Modes[] = {
    { CAM_FUNC_JUMP3, 10, sSetNorm3ModeNormVals }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011AC08 },            // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 },            // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011AC34 },            // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011A458 },            // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 },             // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },             // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },             // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },             // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 },             // CAM_MODE_HOOKSHOT
    { CAM_FUNC_JUMP3, 10, sSetNorm3ModeBoomVals }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_NONE, 0, NULL },                    // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A580 },             // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },             // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 },             // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 },             // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },             // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C },             // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A638 },            // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 },            // CAM_MODE_PUSHPULL
};

CameraMode sCamSetHorse0Modes[] = {
    { CAM_FUNC_NORM3, 9, sSetHrse0ModeNormVals }, // CAM_MODE_NORMAL
    { CAM_FUNC_NORM3, 9, sSetHrse0ModeParaVals }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011ACF8 },           // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011AD2C },           // CAM_MODE_TALK
    { CAM_FUNC_NONE, 0, NULL },                   // CAM_MODE_BATTLE
    { CAM_FUNC_NONE, 0, NULL },                   // CAM_MODE_CLIMB
    { CAM_FUNC_NONE, 0, NULL },                   // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011ACD4 },            // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },            // CAM_MODE_BOWARROWZ
};

CameraMode sCamSetBossGomaModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011AD5C }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011AD84 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 },  // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },  // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },  // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },  // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_HOOKSHOT,
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },  // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A580 },  // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 },  // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 },  // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A9DC },  // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
};

CameraMode sCamSetBossDodoModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011ADB4 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011ADDC }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 },  // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },  // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },  // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },  // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_HOOKSHOT,
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },  // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A580 },  // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 },  // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 },  // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C },  // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
};

CameraMode sCamSetBossBariModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011AE0C }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011AE34 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 },  // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },  // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },  // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },  // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_HOOKSHOT,
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },  // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A580 },  // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 },  // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 },  // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C },  // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
};

CameraMode sCamSetBossFGanonModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011AE64 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011AE8C }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 },  // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },  // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },  // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },  // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },  // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A580 },  // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 },  // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 },  // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C },  // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
};

CameraMode sCamSetBossBalModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011AEBC }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011AEE4 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 },  // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },  // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },  // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },  // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },  // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A580 },  // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 },  // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 },  // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C },  // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
};

CameraMode sCamSetBossShadesModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011AF14 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011AF3C }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 },  // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },  // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },  // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },  // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_HOOKSHOT,
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },  // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A580 },  // CAM_MODE_CLIMBZ
    { CAM_FUNC_NORM1, 10, D_8011AF6C }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 },  // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 },  // CAM_MODE_HANGZ
    { CAM_FUNC_NORM1, 10, D_8011AF6C }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C },  // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
};

CameraMode sCamSetBossMofaModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011AF94 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011AFBC }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 },  // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },  // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },  // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },  // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },  // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A580 },  // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 },  // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 },  // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C },  // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
};

CameraMode sCamSetBossTwin0Modes[] = {
    { CAM_FUNC_NORM1, 10, D_8011AFEC }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011B014 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 },  // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },  // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },  // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },  // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_HOOKSHOT,
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },  // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A580 },  // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 },  // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 },  // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C },  // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
};

CameraMode sCamSetBossTwin1Modes[] = {
    { CAM_FUNC_NORM1, 10, D_8011B044 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011B014 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 },  // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },  // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },  // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },  // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_HOOKSHOT,
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },  // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A580 },  // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 },  // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 },  // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C },  // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
};

CameraMode sCamSetBossGanon1Modes[] = {
    { CAM_FUNC_NORM1, 10, D_8011B06C }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011AE8C }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 },  // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },  // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },  // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },  // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_HOOKSHOT,
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },  // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A580 },  // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 },  // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 },  // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011B094 },  // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
};

CameraMode sCamSetBossGanon2Modes[] = {
    { CAM_FUNC_NORM1, 10, D_8011B0B0 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011B0D8 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 },  // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },  // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },  // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },  // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_HOOKSHOT,
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },  // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A580 },  // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 },  // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 },  // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C },  // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
};

CameraMode sCamSetTower0Modes[] = {
    { CAM_FUNC_NORM2, 9, D_8011B108 },  // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011A458 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 },  // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },  // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },  // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },  // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },  // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A580 },  // CAM_MODE_CLIMBZ
    { CAM_FUNC_NORM2, 9, D_8011B12C },  // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 },  // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 },  // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C },  // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
};

CameraMode sCamSetTower1Modes[] = {
    { CAM_FUNC_NORM2, 9, D_8011B150 },  // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011A458 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 },  // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },  // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },  // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },  // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },  // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A580 },  // CAM_MODE_CLIMBZ
    { CAM_FUNC_NORM2, 9, D_8011B174 },  // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 },  // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 },  // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C },  // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
};

CameraMode sCamSetFixed0Modes[] = {
    { CAM_FUNC_FIXD1, 4, sSetFixd0ModeNormVals }, // CAM_MODE_NORMAL
    { CAM_FUNC_NONE, 0, NULL },                   // CAM_MODE_TARGET
    { CAM_FUNC_FIXD1, 4, D_8011B1A8 },            // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_FIXD1, 4, D_8011B1B8 },            // CAM_MODE_TALK
};

CameraMode sCamSetFixed1Modes[] = {
    { CAM_FUNC_FIXD1, 4, D_8011B1C8 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetCirc0Modes[] = {
    { CAM_FUNC_FIXD2, 5, sSetCirc0ModeNormVals }, // CAM_MODE_NORMAL
};

CameraMode sCamSetCirc2Modes[] = {
    { CAM_FUNC_DATA4, 3, sSetCirc2ModeNormVals }, // CAM_MODE_NORMAL
};

CameraMode sCamSetCirc3Modes[] = {
    { CAM_FUNC_FIXD4, 5, D_8011B1F8 },  // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011A748 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 },  // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },  // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },  // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },  // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },  // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A580 },  // CAM_MODE_CLIMBZ
    { CAM_FUNC_NONE, 0, NULL },         // CAM_MODE_JUMP
    { CAM_FUNC_NONE, 0, NULL },         // CAM_MODE_HANG
    { CAM_FUNC_NONE, 0, NULL },         // CAM_MODE_HANGZ
    { CAM_FUNC_NONE, 0, NULL },         // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C },  // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
};

CameraMode sCamSetPreRend0Modes[] = {
    { CAM_FUNC_FIXD3, 1, D_8011B20C },              // CAM_MODE_NORMAL
    { CAM_FUNC_NONE, 0, NULL },                     // CAM_MODE_TARGET
    { CAM_FUNC_FIXD3, 1, sSetPR0ModeKeepTalkVals }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_FIXD3, 1, sSetPR0ModeKeepTalkVals }, // CAM_MODE_TALK
};

CameraMode sCamSetPreRend1Modes[] = {
    { CAM_FUNC_UNIQ7, 2, sSetPR1ModeNormVals },      // CAM_MODE_NORMAL
    { CAM_FUNC_NONE, 0, NULL },                      // CAM_MODE_TARGET
    { CAM_FUNC_UNIQ7, 2, sSetPR1ModeKeepVals },      // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP0, 4, sSetPreRend1ModeTalkVals }, // CAM_MODE_TALK
};

CameraMode sCamSetPreRend3Modes[] = {
    { CAM_FUNC_SPEC6, 1, D_8011B20C }, // CAM_MODE_NORMAL
};

CameraMode sCamSetDoor0Modes[] = {
    { CAM_FUNC_UNIQ3, 3, sSetDoor0ModeNormVals }, // CAM_MODE_NORMAL
};

CameraMode sCamSetDoorCModes[] = {
    { CAM_FUNC_SPEC9, 3, sSetDoorCModeNormVals },   // CAM_MODE_NORMAL
    { CAM_FUNC_SPEC9, 3, sSetDoorCModeTargetVals }, // CAM_MODE_TARGET
};

CameraMode sCamSetRail3Modes[] = {
    { CAM_FUNC_SUBJ4, 6, sSetRail3ModeNormVals }, // CAM_MODE_NORMAL
};

CameraMode sCamSetStart0Modes[] = {
    { CAM_FUNC_UNIQ0, 1, D_8011B20C }, // CAM_MODE_NORMAL
};

CameraMode sCamSetStart1Modes[] = {
    { CAM_FUNC_UNIQ0, 1, D_8011B270 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetFree0Modes[] = {
    { CAM_FUNC_UNIQ6, 1, sSetFree0ModeNormVals }, // CAM_MODE_NORMAL
};

CameraMode sCamSetFree1Modes[] = {
    { CAM_FUNC_UNIQ6, 1, sSetFree1ModeNormVals }, // CAM_MODE_NORMAL
};

CameraMode sCamSetCirc4Modes[] = {
    { CAM_FUNC_FIXD2, 5, sSetCirc4ModeNormVals }, // CAM_MODE_NORMAL
};

CameraMode sCamSetCirc5Modes[] = {
    { CAM_FUNC_UNIQ2, 4, D_8011B290 }, // CAM_MODE_NORMAL
    { CAM_FUNC_UNIQ2, 4, D_8011B2A0 }, // CAM_MODE_TARGET
};

CameraMode sCamSetDemo0Modes[] = {
    { CAM_FUNC_DEMO1, 1, D_8011B2B0 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetDemo1Modes[] = {
    { CAM_FUNC_DEMO2, 1, D_8011B2B0 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetMori1Modes[] = {
    { CAM_FUNC_PARA1, 11, sSetMori1ModeNormVals }, // CAM_MODE_NORMAL
    { CAM_FUNC_NONE, 0, NULL },                    // CAM_MODE_TARGET
    { CAM_FUNC_NONE, 0, NULL },                    // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_PARA3, 1, sSetMori1ModeTalkVals },  // CAM_MODE_TALK
};

CameraMode sCamSetItem0Modes[] = {
    { CAM_FUNC_DEMO3, 3, D_8011B2E4 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetItem1Modes[] = {
    { CAM_FUNC_DEMO4, 3, D_8011B2E4 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetDemo3Modes[] = {
    { CAM_FUNC_DEMO9, 1, sSetDemo3ModeNormVals }, // CAM_MODE_NORMAL
};

CameraMode sCamSetDemo4Modes[] = {
    { CAM_FUNC_DEMO5, 1, D_8011B2B0 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetUFOBeanModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011B2F4 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011B31C }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011A748 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 },  // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },  // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },  // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },  // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },  // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A580 },  // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011B348 },  // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011B368 },  // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011B384 },  // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C },  // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011B3A0 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
};

CameraMode sCamSetLiftBeanModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011B3C8 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011B3F0 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011A748 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 },  // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },  // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },  // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },  // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },  // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A580 },  // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011B41C },  // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011B43C },  // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011B458 },  // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C },  // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011B474 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
};

CameraMode sCamSetScene0Modes[] = {
    { CAM_FUNC_SPEC9, 3, sSetScn0ModeNormVals }, // CAM_MODE_NORMAL
};

CameraMode sCamSetScene1Modes[] = {
    { CAM_FUNC_UNIQ2, 4, sSetScn1ModeNormVals }, // CAM_MODE_NORMAL
};

CameraMode sCamSetHidan1Modes[] = {
    { CAM_FUNC_SPEC7, 1, D_8011B20C }, // CAM_MODE_NORMAL
};

CameraMode sCamSetHidan2Modes[] = {
    { CAM_FUNC_SPEC4, 1, D_8011B2B0 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetMori2Modes[] = {
    { CAM_FUNC_UNIQ5, 1, D_8011B2B0 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetMori3Modes[] = {
    { CAM_FUNC_DEMO6, 1, D_8011B2B0 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetTakoModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011B4B8 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A8C4 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A8F0 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011B4E0 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A994 },  // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },  // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },  // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },  // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A778 },  // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },  // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A9B8 },  // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A954 },  // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A9F8 },  // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011AA14 },  // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A974 },  // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A9DC },  // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011B510 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
};

CameraMode sCamSetSpot05AModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011B538 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011B560 }, // CAM_MODE_TARGET
    { 0, 0, NULL },                     // CAM_MODE_FOLLOWTARGET
    { 0, 0, NULL },                     // CAM_MODE_TALK
    { CAM_FUNC_PARA1, 11, D_8011B58C }, // CAM_MODE_BATTLE
    { CAM_FUNC_NORM1, 10, D_8011B5B8 }, // CAM_MODE_CLIMB
};

CameraMode sCamSetSpot05BModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011B5E0 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011B608 }, // CAM_MODE_TARGET
    { 0, 0, NULL },                     // CAM_MODE_FOLLOWTARGET
    { 0, 0, NULL },                     // CAM_MODE_TALK
    { CAM_FUNC_PARA1, 11, D_8011B634 }, // CAM_MODE_BATTLE
    { CAM_FUNC_NORM1, 10, D_8011B660 }, // CAM_MODE_CLIMB
};

CameraMode sCamSetHidan3Modes[] = {
    { CAM_FUNC_NORM1, 10, D_8011B688 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011B6B0 }, // CAM_MODE_TARGET
    { 0, 0, NULL },                     // CAM_MODE_FOLLOWTARGET
    { 0, 0, NULL },                     // CAM_MODE_TALK
    { CAM_FUNC_PARA1, 11, D_8011B6DC }, // CAM_MODE_BATTLE
    { CAM_FUNC_NORM1, 10, D_8011B708 }, // CAM_MODE_CLIMB
};

CameraMode sCamSetItem2Modes[] = {
    { CAM_FUNC_KEEP4, 9, D_8011B730 }, // CAM_MODE_NORMAL
};

CameraMode sCamSetCirc6Modes[] = {
    { CAM_FUNC_SPEC0, 2, sSetCirc6ModeNormVals }, // CAM_MODE_NORMAL
};

CameraMode sCamSetNorm2Modes[] = {
    { CAM_FUNC_NORM1, 10, D_8011B75C }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011A748 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 },  // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },  // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },  // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },  // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },  // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A580 },  // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 },  // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 },  // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C },  // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A638 }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
};

CameraMode sCamSetFishingModes[] = {
    { CAM_FUNC_NORM1, 10, sSetFishingModeNormVals },       // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, sSetFishingModeTargetVals },     // CAM_MODE_TARGET
    { CAM_FUNC_BATT1, 12, sSetFishingModeBattVals },       // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, sSetFishingModeTalkVals },       // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, sSetFishingModeBattVals },       // CAM_MODE_BATTLE
    { CAM_FUNC_NONE, 0, NULL },                            // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, sSetFishingModeFirstPersonVals }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_NONE, 0, NULL },                            // CAM_MODE_BOWARROW
    { CAM_FUNC_NONE, 0, NULL },                            // CAM_MODE_BOWARROWZ
    { CAM_FUNC_NONE, 0, NULL },                            // CAM_MODE_HOOKSHOT
    { CAM_FUNC_NONE, 0, NULL },                            // CAM_MODE_BOOMERANG
    { CAM_FUNC_NONE, 0, NULL },                            // CAM_MODE_SLINGSHOT
    { CAM_FUNC_NONE, 0, NULL },                            // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, sSetFishingModeJumpVals },        // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, sSetFishingModeHangVals },        // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, sSetFishingModeHangZVals },       // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, sSetFishingModeFreeFallVals },    // CAM_MODE_FREEFALL
};

CameraMode sCamSetDemoCModes[] = {
    { CAM_FUNC_UNIQ9, 1, sSetDemoCModeNormVals }, // CAM_MODE_NORMAL
};

CameraMode sCamSetUOFiberModes[] = {
    { CAM_FUNC_NORM1, 10, sSetUOFiberModeNormVals }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 },              // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 },              // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011A428 },              // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, sSetUOFiberModeBattVals }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 },               // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },               // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },               // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },               // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 },               // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },               // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },               // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A580 },               // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },               // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 },               // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 },               // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },               // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C },               // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A638 },              // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 },              // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C },              // CAM_MODE_BOOMFOLLLOW
};

CameraMode sCamSetDungeon2Modes[] = {
    { CAM_FUNC_NORM1, 10, sSetDung2ModeNormVals },     // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, sSetDung2ModeTargetVals },   // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A8F0 },                // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011A428 },                // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, sSetDung2ModeBattVals },     // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, sSetDung2ModeClimbVals },     // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },                 // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },                 // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },                 // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A778 },                 // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },                 // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },                 // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, sSetDung2ModeClimbZVals },    // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, sSetDung2ModeJumpVals },      // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, sSetDung2ModeHangVals },      // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, sSetDung2ModeHangZVals },     // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, sSetDung2ModeFreefallVals },  // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C },                 // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, sSetDung2ModeStillVals },    // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, sSetDung2ModePushpullVals }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C },                // CAM_MODE_BOOMFOLLLOW
};

CameraMode sCamSetTeppenModes[] = {
    { CAM_FUNC_NORM1, 10, sSetTeppenModeNormVals },         // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 },                     // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, sSetTeppenModeFollowTargetVals }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, sSetTeppenModeTalkVals },         // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011A458 },                     // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 },                      // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },                      // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },                      // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },                      // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 },                      // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },                      // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },                      // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A580 },                      // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },                      // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 },                      // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 },                      // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },                      // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C },                      // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A638 },                     // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 },                     // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C },                     // CAM_MODE_BOOMFOLLLOW
};

CameraMode sCamSetCirc7Modes[] = {
    { CAM_FUNC_FIXD4, 5, D_8011B1F8 },  // CAM_MODE_NORMAL
    { CAM_FUNC_NONE, 0, NULL },         // CAM_MODE_TARGET
    { CAM_FUNC_FIXD4, 5, D_8011B1F8 },  // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_NONE, 0, NULL },         // CAM_MODE_BATTLE
    { CAM_FUNC_NONE, 0, NULL },         // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },  // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },  // CAM_MODE_BOWARROW
    { CAM_FUNC_NONE, 0, NULL },         // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },  // CAM_MODE_SLINGSHOT
};

CameraMode sCamSetNorm4Modes[] = {
    { CAM_FUNC_NORM1, 10, D_8011B75C },            // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 },            // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 },            // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, sSetNorm4ModeTalkVals }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011A748 },            // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 },             // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },             // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },             // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },             // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 },             // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },             // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },             // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A580 },             // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },             // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 },             // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 },             // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },             // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C },             // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011A638 },            // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011A660 },            // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C },            // CAM_MODE_BOOMFOLLLOW
};

/*=====================================================================
 *             CAMERA SETTINGS TO MODES
 *=====================================================================
 */

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
    { { 0x051FFFFF }, sCamSetBossTwin0Modes },  // CAM_SET_TWINROVA_PLATFORM
    { { 0x051FFFFF }, sCamSetBossTwin1Modes },  // CAM_SET_BOSS_TWINROVA_FLOOR
    { { 0x051FFFFF }, sCamSetBossGanon1Modes }, // CAM_SET_BOSS_GANONDORF
    { { 0x051FFFFF }, sCamSetBossGanon2Modes }, // CAM_SET_BOSS_GANON
    { { 0x851FFFFF }, sCamSetTower0Modes },     // CAM_SET_COLLAPSE_STAIRS
    { { 0x851FFFFF }, sCamSetTower1Modes },     // CAM_SET_TOWER1
    { { 0x8500000D }, sCamSetFixed0Modes },     // CAM_SET_FIXED0
    { { 0x85000001 }, sCamSetFixed1Modes },     // CAM_SET_FIXED1
    { { 0x85000001 }, sCamSetCirc0Modes },      // CAM_SET_CIRCLE0
    { { 0x85000001 }, sCamSetCirc2Modes },      // CAM_SET_CIRCLE2
    { { 0x851E1FFF }, sCamSetCirc3Modes },      // CAM_SET_CIRCLE3
    { { 0x8C00000D }, sCamSetPreRend0Modes },   // CAM_SET_PREREND0
    { { 0x8C00000D }, sCamSetPreRend1Modes },   // CAM_SET_PREREND1
    { { 0x8C000001 }, sCamSetPreRend3Modes },   // CAM_SET_PREREND3
    { { 0xC5000001 }, sCamSetDoor0Modes },      // CAM_SET_DOOR0
    { { 0xC5000003 }, sCamSetDoorCModes },      // CAM_SET_DOORC
    { { 0xC5000001 }, sCamSetRail3Modes },      // CAM_SET_CRAWLSPACE
    { { 0xC5000001 }, sCamSetStart0Modes },     // CAM_SET_START0
    { { 0xC5000001 }, sCamSetStart1Modes },     // CAM_SET_START1
    { { 0x05000001 }, sCamSetFree0Modes },      // CAM_SET_FREE0
    { { 0x05000001 }, sCamSetFree1Modes },      // CAM_SET_FREE2
    { { 0x85000001 }, sCamSetCirc4Modes },      // CAM_SET_CIRCLE4
    { { 0x05000003 }, sCamSetCirc5Modes },      // CAM_SET_CIRCLE5
    { { 0xCE000001 }, sCamSetDemo0Modes },      // CAM_SET_DEMO0
    { { 0x4E000001 }, sCamSetDemo1Modes },      // CAM_SET_DEMO1
    { { 0x05000009 }, sCamSetMori1Modes },      // CAM_SET_MORI1
    { { 0x45000001 }, sCamSetItem0Modes },      // CAM_SET_ITEM0
    { { 0x45000001 }, sCamSetItem1Modes },      // CAM_SET_ITEM1
    { { 0x45000001 }, sCamSetDemo3Modes },      // CAM_SET_DEMO3
    { { 0x45000001 }, sCamSetDemo4Modes },      // CAM_SET_DEMO4
    { { 0x451FFFFF }, sCamSetUFOBeanModes },    // CAM_SET_UFOBEAN
    { { 0x451FFFFF }, sCamSetLiftBeanModes },   // CAM_SET_LIFTBEAN
    { { 0xC5000001 }, sCamSetScene0Modes },     // CAM_SET_SCENE0
    { { 0x45000001 }, sCamSetScene1Modes },     // CAM_SET_SCENE1
    { { 0x05000001 }, sCamSetHidan1Modes },     // CAM_SET_HIDAN1
    { { 0x45000001 }, sCamSetHidan2Modes },     // CAM_SET_HIDAN2
    { { 0x45000001 }, sCamSetMori2Modes },      // CAM_SET_MORI2
    { { 0x45000001 }, sCamSetMori3Modes },      // CAM_SET_MORI3
    { { 0x451FFFFF }, sCamSetTakoModes },       // CAM_SET_TAKO
    { { 0x05000033 }, sCamSetSpot05AModes },    // CAM_SET_SPOT05A
    { { 0x05000033 }, sCamSetSpot05BModes },    // CAM_SET_SPOT05B
    { { 0x05000033 }, sCamSetHidan3Modes },     // CAM_SET_HIDAN3
    { { 0x4A000001 }, sCamSetItem2Modes },      // CAM_SET_ITEM2
    { { 0x05000001 }, sCamSetCirc6Modes },      // CAM_SET_CIRCLE6
    { { 0x051FFFFF }, sCamSetNorm2Modes },      // CAM_SET_NORMAL2
    { { 0x0501E05F }, sCamSetFishingModes },    // CAM_SET_FISHING
    { { 0x45000001 }, sCamSetDemoCModes },      // CAM_SET_DEMOC
    { { 0x051FFFFF }, sCamSetUOFiberModes },    // CAM_SET_UO_FIBER
    { { 0x051FFFFF }, sCamSetDungeon2Modes },   // CAM_SET_DUNGEON2
    { { 0x051FFFFF }, sCamSetTeppenModes },     // CAM_SET_TEPPEN
    { { 0xC5000ECD }, sCamSetCirc7Modes },      // CAM_SET_CIRCLE7
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
