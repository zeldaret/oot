#include "ultra64.h"
#include "global.h"

typedef struct {
    s16 val;
    s16 dataType;
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

/**
 *==================================================================*/
// Data
s16 sOREGInit[] = {
    0,   1,   5,  5,  5,   14500, 20,  16, 150, 25,   150, 6,  10, 10, 0,  0,   1,     100,
    250, 120, 80, 30, 120, 4,     1,   50, 20,  1800, 50,  50, 50, 20, 20, -10, -5460, -9100,
    -6,  8,   15, 75, 60,  12,    110, 40, 50,  250,  -10, 30, 30, 70, 20, 20,  20,
};

s16 sOREGInitCnt = 53;

s16 sPREGInit[] = {
    -20, // R_CAM_DATA(CAM_DATA_Y_OFFSET)
    200, // R_CAM_DATA(CAM_DATA_EYE_DIST)
    300, // R_CAM_DATA(CAM_DATA_EYE_DIST_NEXT)
    10,  // R_CAM_DATA(CAM_DATA_PITCH_TARGET)
    12,  // R_CAM_DATA(CAM_DATA_YAW_UPDATE_RATE_TARGET)
    10,  // R_CAM_DATA(CAM_DATA_XZ_UPDATE_RATE_TARGET)
    35,  // R_CAM_DATA(CAM_DATA_MAX_YAW_UPDATE)
    60,  // R_CAM_DATA(CAM_DATA_FOV)
    60,  // R_CAM_DATA(CAM_DATA_AT_LERP_STEP_SCALE)
    3,   // R_CAM_DATA(CAM_DATA_FLAGS)
    0,   // R_CAM_DATA(CAM_DATA_YAW_TARGET)
    -40, // R_CAM_DATA(CAM_DATA_GROUND_Y_OFFSET)
    20,  // R_CAM_DATA(CAM_DATA_GROUND_AT_LERP_STEP_SCALE)
    25,  // R_CAM_DATA(CAM_DATA_SWING_YAW_INIT)
    45,  // R_CAM_DATA(CAM_DATA_SWING_YAW_FINAL)
    -5,  // R_CAM_DATA(CAM_DATA_SWING_PITCH_INIT)
    15,  // R_CAM_DATA(CAM_DATA_SWING_PITCH_FINAL)
    15,  // R_CAM_DATA(CAM_DATA_SWING_PITCH_ADJ)
    20,  // R_CAM_DATA(CAM_DATA_MIN_MAX_DIST_FACTOR)
    0,   // R_CAM_DATA(CAM_DATA_AT_OFFSET_X)
    0,   // R_CAM_DATA(CAM_DATA_AT_OFFSET_Y)
    0,   // R_CAM_DATA(CAM_DATA_AT_OFFSET_Z)
    6,   // R_CAM_DATA(CAM_DATA_UNK_22)
    60,  // R_CAM_DATA(CAM_DATA_UNK_23)
    30,  // R_CAM_DATA(CAM_DATA_FOV_SCALE)
    0,   // R_CAM_DATA(CAM_DATA_YAW_SCALE)
    5,   // R_CAM_DATA(CAM_DATA_UNK_26)
};

s16 sPREGInitCnt = CAM_DATA_MAX;

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

/**
 *=====================================================================
 *                   General Data: NORMAL0 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * NORMAL0    NORMAL    NORM1
 */
CameraModeValue sSetNormal0ModeNormalData[] = {
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
 * Setting                 Mode      Function
 * --------------------    ------    --------
 * NORMAL0                 TARGET    PARA1
 * BOSS_GOHMA              TARGET    PARA1
 * BOSS_DODONGO            TARGET    PARA1
 * BOSS_BARINADE           TARGET    PARA1
 * BOSS_PHANTOM_GANON      TARGET    PARA1
 * BOSS_VOLVAGIA           TARGET    PARA1
 * BOSS_BONGO              TARGET    PARA1
 * BOSS_MORPHA             TARGET    PARA1
 * BOSS_TWINROVA_PLATFORM  TARGET    PARA1
 * BOSS_TWINROVA_FLOOR     TARGET    PARA1
 * BOSS_GANONDORF          TARGET    PARA1
 * BOSS_GANON              TARGET    PARA1
 * TOWER_CLIMB             TARGET    PARA1
 * TOWER_UNUSED            TARGET    PARA1
 * PIVOT_IN_FRONT          TARGET    PARA1
 * NORMAL2                 TARGET    PARA1
 * JABU_TENTACLE           TARGET    PARA1
 * DIRECTED_YAW            TARGET    PARA1
 * NORMAL4                 TARGET    PARA1
 */
CameraModeValue sSetNormal0ModeTargetData[] = {
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
 * Setting                Mode            Function
 * -------------------    ------------    --------
 * NORMAL0                FOLLOWTARGET    KEEP1
 * NORMAL3                FOLLOWTARGET    KEEP1
 * BOSS_GOHMA             FOLLOWTARGET    KEEP1
 * BOSS_DODONGO           FOLLOWTARGET    KEEP1
 * BOSS_BARINADE          FOLLOWTARGET    KEEP1
 * BOSS_PHANTOM_GANON     FOLLOWTARGET    KEEP1
 * BOSS_VOLVAGIA          FOLLOWTARGET    KEEP1
 * BOSS_BONGO             FOLLOWTARGET    KEEP1
 * BOSS_MORPHA            FOLLOWTARGET    KEEP1
 * BOSSTWINROVA_PLATFORM  FOLLOWTARGET    KEEP1
 * BOSSTWINROVA_FLOOR     FOLLOWTARGET    KEEP1
 * BOSS_GANONDORF         FOLLOWTARGET    KEEP1
 * BOSS_GANON             FOLLOWTARGET    KEEP1
 * TOWER_CLIMB            FOLLOWTARGET    KEEP1
 * TOWER_UNUSED           FOLLOWTARGET    KEEP1
 * PIVOT_IN_FRONT         FOLLOWTARGET    KEEP1
 * BEAN_GENERIC           FOLLOWTARGET    KEEP1
 * BEAN_LOST_WOODS        FOLLOWTARGET    KEEP1
 * NORMAL2                FOLLOWTARGET    KEEP1
 * JABU_TENTACLE          FOLLOWTARGET    KEEP1
 * NORMAL4                FOLLOWTARGET    KEEP1
 */
CameraModeValue sSetNormal0ModeFollowTargetData[] = {
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
 * Setting                 Mode    Function
 * --------------------    ----    --------
 * NORMAL0                 TALK    KEEP3
 * NORMAL1                 TALK    KEEP3
 * DUNGEON0                TALK    KEEP3
 * BOSS_GOHMA              TALK    KEEP3
 * BOSS_DODONGO            TALK    KEEP3
 * BOSS_BARINADE           TALK    KEEP3
 * BOSS_PHANTOM_GANON      TALK    KEEP3
 * BOSS_VOLVAGIA           TALK    KEEP3
 * BOSS_BONGO              TALK    KEEP3
 * BOSS_MORPHA             TALK    KEEP3
 * BOSS_TWINROVA_PLATFORM  TALK    KEEP3
 * BOSS_TWINROVA_FLOOR     TALK    KEEP3
 * BOSS_GANONDORF          TALK    KEEP3
 * BOSS_GANON              TALK    KEEP3
 * TOWER_CLIMB             TALK    KEEP3
 * TOWER_UNUSED            TALK    KEEP3
 * PIVOT_IN_FRONT          TALK    KEEP3
 * BEAN_GENERIC            TALK    KEEP3
 * BEAN_LOST_WOODS         TALK    KEEP3
 * BIG_OCTO                TALK    KEEP3
 * NORMAL2                 TALK    KEEP3
 * JABU_TENTACLE           TALK    KEEP3
 * DUNGEON2                TALK    KEEP3
 * PIVOT_FROM_SIDE         TALK    KEEP3
 */
CameraModeValue sSetNormal0ModeTalkData[] = {
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
 * TOWER_CLIMB      BATTLE    BATT1
 * TOWER_UNUSED     BATTLE    BATT1
 * DIRECTED_YAW     BATTLE    BATT1
 */
CameraModeValue sSetNormal0ModeBattleData[] = {
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
 * Setting                 Mode     Function
 * --------------------    -----    --------
 * NORMAL0                 CLIMB    JUMP2
 * NORMAL3                 CLIMB    JUMP2
 * BOSS_GOHMA              CLIMB    JUMP2
 * BOSS_DODONGO            CLIMB    JUMP2
 * BOSS_BARINADE           CLIMB    JUMP2
 * BOSS_PHANTOM_GANON      CLIMB    JUMP2
 * BOSS_VOLVAGIA           CLIMB    JUMP2
 * BOSS_BONGO              CLIMB    JUMP2
 * BOSS_MORPHA             CLIMB    JUMP2
 * BOSS_TWINROVA_PLATFORM  CLIMB    JUMP2
 * BOSS_TWINROVA_FLOOR     CLIMB    JUMP2
 * BOSS_GANONDORF          CLIMB    JUMP2
 * BOSS_GANON              CLIMB    JUMP2
 * TOWER_CLIMB             CLIMB    JUMP2
 * TOWER_UNUSED            CLIMB    JUMP2
 * PIVOT_IN_FRONT          CLIMB    JUMP2
 * BEAN_GENERIC            CLIMB    JUMP2
 * BEAN_LOST_WOODS         CLIMB    JUMP2
 * NORMAL2                 CLIMB    JUMP2
 * JABU_TENTACLE           CLIMB    JUMP2
 * DIRECTED_YAW            CLIMB    JUMP2
 * NORMAL4                 CLIMB    JUMP2
 */
CameraModeValue sSetNormal0ModeClimbData[] = {
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
 * Setting                 Mode           Function
 * --------------------    -----------    --------
 * NORMAL0                 FIRSTPERSON    SUBJ3
 * NORMAL1                 FIRSTPERSON    SUBJ3
 * DUNGEON0                FIRSTPERSON    SUBJ3
 * DUNGEON1                FIRSTPERSON    SUBJ3
 * NORMAL3                 FIRSTPERSON    SUBJ3
 * BOSS_GOHMA              FIRSTPERSON    SUBJ3
 * BOSS_DODONGO            FIRSTPERSON    SUBJ3
 * BOSS_BARINADE           FIRSTPERSON    SUBJ3
 * BOSS_PHANTOM_GANON      FIRSTPERSON    SUBJ3
 * BOSS_VOLVAGIA           FIRSTPERSON    SUBJ3
 * BOSS_BONGO              FIRSTPERSON    SUBJ3
 * BOSS_MORPHA             FIRSTPERSON    SUBJ3
 * BOSS_TWINROVA_PLATFORM  FIRSTPERSON    SUBJ3
 * BOSS_TWINROVA_FLOOR     FIRSTPERSON    SUBJ3
 * BOSS_GANONDORF          FIRSTPERSON    SUBJ3
 * BOSS_GANON              FIRSTPERSON    SUBJ3
 * TOWER_CLIMB             FIRSTPERSON    SUBJ3
 * TOWER_UNUSED            FIRSTPERSON    SUBJ3
 * PIVOT_IN_FRONT          FIRSTPERSON    SUBJ3
 * BEAN_GENERIC            FIRSTPERSON    SUBJ3
 * BEAN_LOST_WOODS         FIRSTPERSON    SUBJ3
 * BIG_OCTO                FIRSTPERSON    SUBJ3
 * NORMAL2                 FIRSTPERSON    SUBJ3
 * JABU_TENTACLE           FIRSTPERSON    SUBJ3
 * DUNGEON2                FIRSTPERSON    SUBJ3
 * DIRECTED_YAW            FIRSTPERSON    SUBJ3
 * PIVOT_FROM_SIDE         FIRSTPERSON    SUBJ3
 * NORMAL4                 FIRSTPERSON    SUBJ3
 */
CameraModeValue sSetNormal0ModeFirstPersonData[] = {
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
 * Setting                 Mode        Function
 * --------------------    --------    --------
 * NORMAL0                 BOWARROW    SUBJ3
 * NORMAL1                 BOWARROW    SUBJ3
 * DUNGEON0                BOWARROW    SUBJ3
 * DUNGEON1                BOWARROW    SUBJ3
 * NORMAL3                 BOWARROW    SUBJ3
 * BOSS_GOHMA              BOWARROW    SUBJ3
 * BOSS_DODONGO            BOWARROW    SUBJ3
 * BOSS_BARINADE           BOWARROW    SUBJ3
 * BOSS_PHANTOM_GANON      BOWARROW    SUBJ3
 * BOSS_VOLVAGIA           BOWARROW    SUBJ3
 * BOSS_BONGO              BOWARROW    SUBJ3
 * BOSS_MORPHA             BOWARROW    SUBJ3
 * BOSS_TWINROVA_PLATFORM  BOWARROW    SUBJ3
 * BOSS_TWINROVA_FLOOR     BOWARROW    SUBJ3
 * BOSS_GANONDORF          BOWARROW    SUBJ3
 * BOSS_GANON              BOWARROW    SUBJ3
 * TOWER_CLIMB             BOWARROW    SUBJ3
 * TOWER_UNUSED            BOWARROW    SUBJ3
 * PIVOT_IN_FRONT          BOWARROW    SUBJ3
 * BEAN_GENERIC            BOWARROW    SUBJ3
 * BEAN_LOST_WOODS         BOWARROW    SUBJ3
 * BIG_OCTO                BOWARROW    SUBJ3
 * NORMAL2                 BOWARROW    SUBJ3
 * JABU_TENTACLE           BOWARROW    SUBJ3
 * DUNGEON2                BOWARROW    SUBJ3
 * DIRECTED_YAW            BOWARROW    SUBJ3
 * PIVOT_FROM_SIDE         BOWARROW    SUBJ3
 * NORMAL4                 BOWARROW    SUBJ3
 */
CameraModeValue sSetNormal0ModeBowArrowData[] = {
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
 * Setting                 Mode         Function
 * --------------------    ---------    --------
 * NORMAL0                 BOWARROWZ    SUBJ3
 * NORMAL1                 BOWARROWZ    SUBJ3
 * DUNGEON0                BOWARROWZ    SUBJ3
 * DUNGEON1                BOWARROWZ    SUBJ3
 * NORMAL3                 BOWARROWZ    SUBJ3
 * HORSE                   BOWARROWZ    SUBJ3
 * BOSS_GOHMA              BOWARROWZ    SUBJ3
 * BOSS_DODONGO            BOWARROWZ    SUBJ3
 * BOSS_BARINADE           BOWARROWZ    SUBJ3
 * BOSS_PHANTOM_GANON      BOWARROWZ    SUBJ3
 * BOSS_VOLVAGIA           BOWARROWZ    SUBJ3
 * BOSS_BONGO              BOWARROWZ    SUBJ3
 * BOSS_MORPHA             BOWARROWZ    SUBJ3
 * BOSS_TWINROVA_PLATFORM  BOWARROWZ    SUBJ3
 * BOSS_TWINROVA_FLOOR     BOWARROWZ    SUBJ3
 * BOSS_GANONDORF          BOWARROWZ    SUBJ3
 * BOSS_GANON              BOWARROWZ    SUBJ3
 * TOWER_CLIMB             BOWARROWZ    SUBJ3
 * TOWER_UNUSED            BOWARROWZ    SUBJ3
 * PIVOT_IN_FRONT          BOWARROWZ    SUBJ3
 * BEAN_GENERIC            BOWARROWZ    SUBJ3
 * BEAN_LOST_WOODS         BOWARROWZ    SUBJ3
 * BIG_OCTO                BOWARROWZ    SUBJ3
 * NORMAL2                 BOWARROWZ    SUBJ3
 * JABU_TENTACLE           BOWARROWZ    SUBJ3
 * DUNGEON2                BOWARROWZ    SUBJ3
 * DIRECTED_YAW            BOWARROWZ    SUBJ3
 * NORMAL4                 BOWARROWZ    SUBJ3
 */
CameraModeValue sSetNormal0ModeBowArrowZData[] = {
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
 * Setting                 Mode        Function
 * --------------------    --------    --------
 * NORMAL0                 HOOKSHOT    SPEC5
 * NORMAL3                 HOOKSHOT    SPEC5
 * BOSS_GOHMA              HOOKSHOT    SPEC5
 * BOSS_DODONGO            HOOKSHOT    SPEC5
 * BOSS_BARINADE           HOOKSHOT    SPEC5
 * BOSS_PHANTOM_GANON      HOOKSHOT    SPEC5
 * BOSS_VOLVAGIA           HOOKSHOT    SPEC5
 * BOSS_BONGO              HOOKSHOT    SPEC5
 * BOSS_MORPHA             HOOKSHOT    SPEC5
 * BOSS_TWINROVA_PLATFORM  HOOKSHOT    SPEC5
 * BOSS_TWINROVA_FLOOR     HOOKSHOT    SPEC5
 * BOSS_GANONDORF          HOOKSHOT    SPEC5
 * BOSS_GANON              HOOKSHOT    SPEC5
 * TOWER_CLIMB             HOOKSHOT    SPEC5
 * TOWER_UNUSED            HOOKSHOT    SPEC5
 * PIVOT_IN_FRONT          HOOKSHOT    SPEC5
 * BEAN_GENERIC            HOOKSHOT    SPEC5
 * BEAN_LOST_WOODS         HOOKSHOT    SPEC5
 * NORMAL2                 HOOKSHOT    SPEC5
 * JABU_TENTACLE           HOOKSHOT    SPEC5
 * DIRECTED_YAW            HOOKSHOT    SPEC5
 * PIVOT_FROM_SIDE         HOOKSHOT    SPEC5
 * NORMAL4                 HOOKSHOT    SPEC5
 */
CameraModeValue sSetNormal0ModeHookshotData[] = {
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
 * Setting                 Mode         Function
 * --------------------    ---------    --------
 * NORMAL0                 BOOMERANG    SUBJ3
 * NORMAL1                 BOOMERANG    SUBJ3
 * DUNGEON0                BOOMERANG    SUBJ3
 * DUNGEON1                BOOMERANG    SUBJ3
 * BOSS_GOHMA              BOOMERANG    SUBJ3
 * BOSS_DODONGO            BOOMERANG    SUBJ3
 * BOSS_BARINADE           BOOMERANG    SUBJ3
 * BOSS_PHANTOM_GANON      BOOMERANG    SUBJ3
 * BOSS_VOLVAGIA           BOOMERANG    SUBJ3
 * BOSS_BONGO              BOOMERANG    SUBJ3
 * BOSS_MORPHA             BOOMERANG    SUBJ3
 * BOSS_TWINROVA_PLATFORM  BOOMERANG    SUBJ3
 * BOSS_TWINROVA_FLOOR     BOOMERANG    SUBJ3
 * BOSS_GANONDORF          BOOMERANG    SUBJ3
 * BOSS_GANON              BOOMERANG    SUBJ3
 * TOWER_CLIMB             BOOMERANG    SUBJ3
 * TOWER_UNUSED            BOOMERANG    SUBJ3
 * PIVOT_IN_FRONT          BOOMERANG    SUBJ3
 * BEAN_GENERIC            BOOMERANG    SUBJ3
 * BEAN_LOST_WOODS         BOOMERANG    SUBJ3
 * BIG_OCTO                BOOMERANG    SUBJ3
 * NORMAL2                 BOOMERANG    SUBJ3
 * JABU_TENTACLE           BOOMERANG    SUBJ3
 * DUNGEON2                BOOMERANG    SUBJ3
 * DIRECTED_YAW            BOOMERANG    SUBJ3
 * PIVOT_FROM_SIDE         BOOMERANG    SUBJ3
 * NORMAL4                 BOOMERANG    SUBJ3
 */
CameraModeValue sSetNormal0ModeBoomerangData[] = {
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
 * Setting                 Mode         Function
 * --------------------    ---------    --------
 * NORMAL0                 SLINGSHOT    SUBJ3
 * NORMAL1                 SLINGSHOT    SUBJ3
 * DUNGEON0                SLINGSHOT    SUBJ3
 * DUNGEON1                SLINGSHOT    SUBJ3
 * BOSS_GOHMA              SLINGSHOT    SUBJ3
 * BOSS_DODONGO            SLINGSHOT    SUBJ3
 * BOSS_BARINADE           SLINGSHOT    SUBJ3
 * BOSS_PHANTOM_GANON      SLINGSHOT    SUBJ3
 * BOSS_VOLVAGIA           SLINGSHOT    SUBJ3
 * BOSS_BONGO              SLINGSHOT    SUBJ3
 * BOSS_MORPHA             SLINGSHOT    SUBJ3
 * BOSS_TWINROVA_PLATFORM  SLINGSHOT    SUBJ3
 * BOSS_TWINROVA_FLOOR     SLINGSHOT    SUBJ3
 * BOSS_GANONDORF          SLINGSHOT    SUBJ3
 * BOSS_GANON              SLINGSHOT    SUBJ3
 * TOWER_CLIMB             SLINGSHOT    SUBJ3
 * TOWER_UNUSED            SLINGSHOT    SUBJ3
 * PIVOT_IN_FRONT          SLINGSHOT    SUBJ3
 * BEAN_GENERIC            SLINGSHOT    SUBJ3
 * BEAN_LOST_WOODS         SLINGSHOT    SUBJ3
 * BIG_OCTO                SLINGSHOT    SUBJ3
 * NORMAL2                 SLINGSHOT    SUBJ3
 * JABU_TENTACLE           SLINGSHOT    SUBJ3
 * DUNGEON2                SLINGSHOT    SUBJ3
 * DIRECTED_YAW            SLINGSHOT    SUBJ3
 * PIVOT_FROM_SIDE         SLINGSHOT    SUBJ3
 * NORMAL4                 SLINGSHOT    SUBJ3
 */
CameraModeValue sSetNormal0ModeSlingshotData[] = {
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
 * Setting                 Mode      Function
 * --------------------    ------    --------
 * NORMAL0                 CLIMBZ    JUMP2
 * NORMAL3                 CLIMBZ    JUMP2
 * BOSS_GOHMA              CLIMBZ    JUMP2
 * BOSS_DODONGO            CLIMBZ    JUMP2
 * BOSS_BARINADE           CLIMBZ    JUMP2
 * BOSS_PHANTOM_GANON      CLIMBZ    JUMP2
 * BOSS_VOLVAGIA           CLIMBZ    JUMP2
 * BOSS_BONGO              CLIMBZ    JUMP2
 * BOSS_MORPHA             CLIMBZ    JUMP2
 * BOSS_TWINROVA_PLATFORM  CLIMBZ    JUMP2
 * BOSS_TWINROVA_FLOOR     CLIMBZ    JUMP2
 * BOSS_GANONDORF          CLIMBZ    JUMP2
 * BOSS_GANON              CLIMBZ    JUMP2
 * TOWER_CLIMB             CLIMBZ    JUMP2
 * TOWER_UNUSED            CLIMBZ    JUMP2
 * PIVOT_IN_FRONT          CLIMBZ    JUMP2
 * BEAN_GENERIC            CLIMBZ    JUMP2
 * BEAN_LOST_WOODS         CLIMBZ    JUMP2
 * NORMAL2                 CLIMBZ    JUMP2
 * JABU_TENTACLE           CLIMBZ    JUMP2
 * DIRECTED_YAW            CLIMBZ    JUMP2
 * NORMAL4                 CLIMBZ    JUMP2
 */
CameraModeValue sSetNormal0ModeClimbZData[] = {
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
 * Setting                 Mode        Function
 * --------------------    --------    --------
 * NORMAL0                 JUMP        JUMP1
 * NORMAL3                 JUMP        JUMP1
 * NORMAL3                 FREEFALL    JUMP1
 * BOSS_GOHMA              JUMP        JUMP1
 * BOSS_GOHMA              FREEFALL    JUMP1
 * BOSS_DODONGO            JUMP        JUMP1
 * BOSS_DODONGO            FREEFALL    JUMP1
 * BOSS_BARINADE           JUMP        JUMP1
 * BOSS_BARINADE           FREEFALL    JUMP1
 * BOSS_PHANTOM_GANON      JUMP        JUMP1
 * BOSS_PHANTOM_GANON      FREEFALL    JUMP1
 * BOSS_VOLVAGIA           JUMP        JUMP1
 * BOSS_VOLVAGIA           FREEFALL    JUMP1
 * BOSS_MORPHA             JUMP        JUMP1
 * BOSS_MORPHA             FREEFALL    JUMP1
 * BOSS_TWINROVA_PLATFORM  JUMP        JUMP1
 * BOSS_TWINROVA_PLATFORM  FREEFALL    JUMP1
 * BOSS_TWINROVA_FLOOR     JUMP        JUMP1
 * BOSS_TWINROVA_FLOOR     FREEFALL    JUMP1
 * BOSS_GANONDORF          JUMP        JUMP1
 * BOSS_GANONDORF          FREEFALL    JUMP1
 * GANON2                  JUMP        JUMP1
 * GANON2                  FREEFALL    JUMP1
 * TOWER_CLIMB             FREEFALL    JUMP1
 * TOWER_UNUSED            FREEFALL    JUMP1
 * BEAN_GENERIC            FREEFALL    JUMP1
 * BEAN_LOST_WOODS         FREEFALL    JUMP1
 * NORMAL2                 JUMP        JUMP1
 * NORMAL2                 FREEFALL    JUMP1
 * JABU_TENTACLE           JUMP        JUMP1
 * JABU_TENTACLE           FREEFALL    JUMP1
 * DIRECTED_YAW            JUMP        JUMP1
 * DIRECTED_YAW            FREEFALL    JUMP1
 * NORMAL4                 JUMP        JUMP1
 * NORMAL4                 FREEFALL    JUMP1
 */
CameraModeValue sSetNormal0ModeJumpData[] = {
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
 * Setting                 Mode    Function
 * --------------------    ----    --------
 * NORMAL0                 HANG    UNIQ1
 * NORMAL3                 HANG    UNIQ1
 * BOSS_GOHMA              HANG    UNIQ1
 * BOSS_DODONGO            HANG    UNIQ1
 * BOSS_BARINADE           HANG    UNIQ1
 * BOSS_PHANTOM_GANON      HANG    UNIQ1
 * BOSS_VOLVAGIA           HANG    UNIQ1
 * BOSS_BONGO              HANG    UNIQ1
 * BOSS_MORPHA             HANG    UNIQ1
 * BOSS_TWINROVA_PLATFORM  HANG    UNIQ1
 * BOSS_TWINROVA_FLOOR     HANG    UNIQ1
 * BOSS_GANONDORF          HANG    UNIQ1
 * GANON2                  HANG    UNIQ1
 * TOWER_CLIMB             HANG    UNIQ1
 * TOWER_UNUSED            HANG    UNIQ1
 * NORMAL2                 HANG    UNIQ1
 * JABU_TENTACLE           HANG    UNIQ1
 * DIRECTED_YAW            HANG    UNIQ1
 * NORMAL4                 HANG    UNIQ1
 */
CameraModeValue sSetNormal0ModeHangData[] = {
    { -80, CAM_DATA_Y_OFFSET },          // yOffset
    { 200, CAM_DATA_EYE_DIST },          // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 40, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 60, CAM_DATA_FOV },                // fovTarget
    { 10, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting                 Mode     Function
 * --------------------    -----    --------
 * NORMAL0                 HANGZ    UNIQ1
 * NORMAL3                 HANGZ    UNIQ1
 * BOSS_GOHMA              HANGZ    UNIQ1
 * BOSS_DODONGO            HANGZ    UNIQ1
 * BOSS_BARINADE           HANGZ    UNIQ1
 * BOSS_PHANTOM_GANON      HANGZ    UNIQ1
 * BOSS_VOLVAGIA           HANGZ    UNIQ1
 * BOSS_BONGO              HANGZ    UNIQ1
 * BOSS_MORPHA             HANGZ    UNIQ1
 * BOSS_TWINROVA_PLATFORM  HANGZ    UNIQ1
 * BOSS_TWINROVA_FLOOR     HANGZ    UNIQ1
 * BOSS_GANONDORF          HANGZ    UNIQ1
 * GANON2                  HANGZ    UNIQ1
 * TOWER_CLIMB             HANGZ    UNIQ1
 * TOWER_UNUSED            HANGZ    UNIQ1
 * NORMAL2                 HANGZ    UNIQ1
 * JABU_TENTACLE           HANGZ    UNIQ1
 * DIRECTED_YAW            HANGZ    UNIQ1
 * NORMAL4                 HANGZ    UNIQ1
 */
CameraModeValue sSetNormal0ModeHangZData[] = {
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
CameraModeValue sSetNormal0ModeFreeFallData[] = {
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
 * Setting                 Mode      Function
 * --------------------    ------    --------
 * NORMAL0                 CHARGE    BATT4
 * NORMAL3                 CHARGE    BATT4
 * BOSS_DODONGO            CHARGE    BATT4
 * BOSS_BARINADE           CHARGE    BATT4
 * BOSS_PHANTOM_GANON      CHARGE    BATT4
 * BOSS_VOLVAGIA           CHARGE    BATT4
 * BOSS_BONGO              CHARGE    BATT4
 * BOSS_MORPHA             CHARGE    BATT4
 * BOSS_TWINROVA_PLATFORM  CHARGE    BATT4
 * BOSS_TWINROVA_FLOOR     CHARGE    BATT4
 * GANON2                  CHARGE    BATT4
 * TOWER_CLIMB             CHARGE    BATT4
 * TOWER_UNUSED            CHARGE    BATT4
 * PIVOT_IN_FRONT          CHARGE    BATT4
 * BEAN_GENERIC            CHARGE    BATT4
 * BEAN_LOST_WOODS         CHARGE    BATT4
 * NORMAL2                 CHARGE    BATT4
 * JABU_TENTACLE           CHARGE    BATT4
 * DUNGEON2                CHARGE    BATT4
 * DIRECTED_YAW            CHARGE    BATT4
 * NORMAL4                 CHARGE    BATT4
 */
CameraModeValue sSetNormal0ModeChargeData[] = {
    { -20, CAM_DATA_Y_OFFSET },             // yOffset
    { 300, CAM_DATA_EYE_DIST },             // rTarget
    { 50, CAM_DATA_PITCH_TARGET },          // pitchTarget
    { 2, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // lerpUpdateRate
    { 80, CAM_DATA_FOV },                   // fovTarget
    { 20, CAM_DATA_AT_LERP_STEP_SCALE },    // atLERPTarget
    { 0xF000, CAM_DATA_FLAGS },
};

/**
 * Setting                 Mode     Function
 * --------------------    -----    --------
 * NORMAL0                 STILL    NORM1
 * NORMAL3                 STILL    NORM1
 * BOSS_GOHMA              STILL    NORM1
 * BOSS_DODONGO            STILL    NORM1
 * BOSS_BARINADE           STILL    NORM1
 * BOSS_PHANTOM_GANON      STILL    NORM1
 * BOSS_VOLVAGIA           STILL    NORM1
 * BOSS_BONGO              STILL    NORM1
 * BOSS_MORPHA             STILL    NORM1
 * BOSS_TWINROVA_PLATFORM  STILL    NORM1
 * BOSS_TWINROVA_FLOOR     STILL    NORM1
 * BOSS_GANONDORF          STILL    NORM1
 * GANON2                  STILL    NORM1
 * TOWER_CLIMB             STILL    NORM1
 * TOWER_UNUSED            STILL    NORM1
 * PIVOT_IN_FRONT          STILL    NORM1
 * NORMAL2                 STILL    NORM1
 * JABU_TENTACLE           STILL    NORM1
 * DIRECTED_YAW            STILL    NORM1
 * NORMAL4                 STILL    NORM1
 */
CameraModeValue sSetNormal0ModeStillData[] = {
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
 * Setting                 Mode        Function
 * --------------------    --------    --------
 * NORMAL0                 PUSHPULL    PARA1
 * NORMAL1                 PUSHPULL    PARA1
 * DUNGEON0                PUSHPULL    PARA1
 * NORMAL3                 PUSHPULL    PARA1
 * BOSS_GOHMA              PUSHPULL    PARA1
 * BOSS_DODONGO            PUSHPULL    PARA1
 * BOSS_BARINADE           PUSHPULL    PARA1
 * BOSS_PHANTOM_GANON      PUSHPULL    PARA1
 * BOSS_VOLVAGIA           PUSHPULL    PARA1
 * BOSS_BONGO              PUSHPULL    PARA1
 * BOSS_MORPHA             PUSHPULL    PARA1
 * BOSS_TWINROVA_PLATFORM  PUSHPULL    PARA1
 * BOSS_TWINROVA_FLOOR     PUSHPULL    PARA1
 * BOSS_GANONDORF          PUSHPULL    PARA1
 * GANON2                  PUSHPULL    PARA1
 * TOWER_CLIMB             PUSHPULL    PARA1
 * TOWER_UNUSED            PUSHPULL    PARA1
 * PIVOT_IN_FRONT          PUSHPULL    PARA1
 * BEAN_GENERIC            PUSHPULL    PARA1
 * BEAN_LOST_WOODS         PUSHPULL    PARA1
 * BIG_OCTO                PUSHPULL    PARA1
 * NORMAL2                 PUSHPULL    PARA1
 * JABU_TENTACLE           PUSHPULL    PARA1
 * DIRECTED_YAW            PUSHPULL    PARA1
 * NORMAL4                 PUSHPULL    PARA1
 */
CameraModeValue sSetNormal0ModePushPullData[] = {
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
 * Setting                 Mode           Function
 * --------------------    -----------    --------
 * NORMAL0                 FOLLOWBOOMERANG    KEEP1
 * NORMAL1                 FOLLOWBOOMERANG    KEEP1
 * DUNGEON0                FOLLOWBOOMERANG    KEEP1
 * DUNGEON1                FOLLOWBOOMERANG    KEEP1
 * NORMAL3                 FOLLOWBOOMERANG    KEEP1
 * BOSS_GOHMA              FOLLOWBOOMERANG    KEEP1
 * BOSS_DODONGO            FOLLOWBOOMERANG    KEEP1
 * BOSS_BARINADE           FOLLOWBOOMERANG    KEEP1
 * BOSS_PHANTOM_GANON      FOLLOWBOOMERANG    KEEP1
 * BOSS_VOLVAGIA           FOLLOWBOOMERANG    KEEP1
 * BOSS_BONGO              FOLLOWBOOMERANG    KEEP1
 * BOSS_MORPHA             FOLLOWBOOMERANG    KEEP1
 * BOSS_TWINROVA_PLATFORM  FOLLOWBOOMERANG    KEEP1
 * BOSS_TWINROVA_FLOOR     FOLLOWBOOMERANG    KEEP1
 * BOSS_GANONDORF          FOLLOWBOOMERANG    KEEP1
 * GANON2                  FOLLOWBOOMERANG    KEEP1
 * TOWER_CLIMB             FOLLOWBOOMERANG    KEEP1
 * TOWER_UNUSED            FOLLOWBOOMERANG    KEEP1
 * PIVOT_IN_FRONT          FOLLOWBOOMERANG    KEEP1
 * BEAN_GENERIC            FOLLOWBOOMERANG    KEEP1
 * BEAN_LOST_WOODS         FOLLOWBOOMERANG    KEEP1
 * BIG_OCTO                FOLLOWBOOMERANG    KEEP1
 * NORMAL2                 FOLLOWBOOMERANG    KEEP1
 * JABU_TENTACLE           FOLLOWBOOMERANG    KEEP1
 * DUNGEON2                FOLLOWBOOMERANG    KEEP1
 * DIRECTED_YAW            FOLLOWBOOMERANG    KEEP1
 * NORMAL4                 FOLLOWBOOMERANG    KEEP1
 */
CameraModeValue sSetNormal0ModeFollowBoomerangData[] = {
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

/**
 *=====================================================================
 *                   Custom Data: NORMAL1 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * NORMAL1    NORMAL    NORM1
 */
CameraModeValue sSetNormal1ModeNormalData[] = {
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
CameraModeValue sSetNormal1ModeTargetData[] = {
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
CameraModeValue sSetNormal1ModeFollowTargetData[] = {
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
 * Setting            Mode      Function
 * ---------------    ------    --------
 * NORMAL1            BATTLE    BATT1
 * PIVOT_IN_FRONT     BATTLE    BATT1
 * BEAN_GENERIC       BATTLE    BATT1
 * BEAN_LOST_WOODS    BATTLE    BATT1
 * NORMAL2            BATTLE    BATT1
 * NORMAL4            BATTLE    BATT1
 */
CameraModeValue sSetNormal1ModeBattleData[] = {
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
 * BIG_OCTO    HOOKSHOT    SPEC5
 * DUNGEON2    HOOKSHOT    SPEC5
 */
CameraModeValue sSetNormal1ModeHookshotData[] = {
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
CameraModeValue sSetNormal1ModeJumpData[] = {
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
CameraModeValue sSetNormal1ModeFreeFallData[] = {
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
CameraModeValue sSetNormal1ModeClimbData[] = {
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
CameraModeValue sSetNormal1ModeClimbZData[] = {
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
CameraModeValue sSetNormal1ModeChargeData[] = {
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
CameraModeValue sSetNormal1ModeHangData[] = {
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
CameraModeValue sSetNormal1ModeHangZData[] = {
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
CameraModeValue sSetNormal1ModeStillData[] = {
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

/**
 *=====================================================================
 *                   Custom Data: DUNGEON0 Setting
 *=====================================================================
 */

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * DUNGEON0    NORMAL    NORM1
 */
CameraModeValue sSetDungeon0ModeNormalData[] = {
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
 * BIG_OCTO    TARGET    PARA1
 */
CameraModeValue sSetDungeon0ModeTargetData[] = {
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
 * BIG_OCTO    FOLLOWTARGET    KEEP1
 * DUNGEON2    FOLLOWTARGET    KEEP1
 */
CameraModeValue sSetDungeon0ModeFollowTargetData[] = {
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
CameraModeValue sSetDungeon0ModeBattleData[] = {
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
 * BIG_OCTO    JUMP    JUMP1
 */
CameraModeValue sSetDungeon0ModeJumpData[] = {
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
 * BIG_OCTO    FREEFALL    JUMP1
 */
CameraModeValue sSetDungeon0ModeFreeFallData[] = {
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
 * BIG_OCTO    CLIMB    JUMP2
 */
CameraModeValue sSetDungeon0ModeClimbData[] = {
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
 * BIG_OCTO    CLIMBZ    JUMP2
 */
CameraModeValue sSetDungeon0ModeClimbZData[] = {
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
 * BIG_OCTO      CHARGE    BATT4
 */
CameraModeValue sSetDungeon0ModeChargeData[] = {
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
 * BIG_OCTO    HANG    UNIQ1
 */
CameraModeValue sSetDungeon0ModeHangData[] = {
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
 * BIG_OCTO    HANGZ    UNIQ1
 */
CameraModeValue sSetDungeon0ModeHangZData[] = {
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
CameraModeValue sSetDungeon0ModeStillData[] = {
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

/**
 *=====================================================================
 *                   Custom Data: DUNGEON1 Setting
 *=====================================================================
 */

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * DUNGEON1    NORMAL    NORM1
 */
CameraModeValue sSetDungeon1ModeNormalData[] = {
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
CameraModeValue sSetDungeon1ModeTalkData[] = {
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
CameraModeValue sSetDungeon1ModeJumpData[] = {
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
CameraModeValue sSetDungeon1ModeFreeFallData[] = {
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
CameraModeValue sSetDungeon1ModeClimbData[] = {
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
CameraModeValue sSetDungeon1ModeClimbZData[] = {
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
CameraModeValue sSetDungeon1ModeChargeData[] = {
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
CameraModeValue sSetDungeon1ModeHangData[] = {
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
CameraModeValue sSetDungeon1ModeHangZData[] = {
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
CameraModeValue sSetDungeon1ModeStillData[] = {
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
CameraModeValue sSetDungeon1ModePushPullData[] = {
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

/**
 *=====================================================================
 *                   Custom Data: NORMAL3 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * NORMAL3    NORMAL    JUMP3
 */
CameraModeValue sSetNormal3ModeNormalData[] = {
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
CameraModeValue sSetNormal3ModeTargetData[] = {
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
CameraModeValue sSetNormal3ModeTalkData[] = {
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
CameraModeValue sSetNormal3ModeBoomerangData[] = {
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

/**
 *=====================================================================
 *                   Custom Data: HORSE Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * HORSE      NORMAL    NORM3
 */
CameraModeValue sSetHorseModeNormalData[] = {
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
 * HORSE      TARGET    NORM3
 */
CameraModeValue sSetHorseModeTargetData[] = {
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
 * HORSE      BOWARROW    SUBJ3
 */
CameraModeValue sSetHorseModeBowArrowData[] = {
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
 * HORSE      FOLLOWTARGET    KEEP1
 */
CameraModeValue sSetHorseModeFollowTargetData[] = {
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
 * HORSE      TALK    KEEP3
 */
CameraModeValue sSetHorseModeTalkData[] = {
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

/**
 *=====================================================================
 *                   Custom Data: BOSS_GOHMA Setting
 *=====================================================================
 */

/**
 * Setting       Mode      Function
 * ----------    ------    --------
 * BOSS_GOHMA    NORMAL    NORM1
 */
CameraModeValue sSetBossGohmaModeNormalData[] = {
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
CameraModeValue sSetBossGohmaModeBattleData[] = {
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

/**
 *=====================================================================
 *                 Custom Data: BOSS_DODONGO Setting
 *=====================================================================
 */

/**
 * Setting         Mode      Function
 * ------------    ------    --------
 * BOSS_DODONGO    NORMAL    NORM1
 */
CameraModeValue sSetBossDodongoModeNormalData[] = {
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
CameraModeValue sSetBossDodongoModeBattleData[] = {
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

/**
 *=====================================================================
 *                Custom Data: BOSS_BARINADE Setting
 *=====================================================================
 */

/**
 * Setting          Mode      Function
 * -------------    ------    --------
 * BOSS_BARINADE    NORMAL    NORM1
 */
CameraModeValue sSetBossBarinadeModeNormalData[] = {
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
CameraModeValue sSetBossBarinadeModeBattleData[] = {
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

/**
 *=====================================================================
 *              Custom Data: BOSS_PHANTOM_GANON Setting
 *=====================================================================
 */

/**
 * Setting               Mode      Function
 * ------------------    ------    --------
 * BOSS_PHANTOM_GANON    NORMAL    NORM1
 */
CameraModeValue sSetBossPhantomGanonModeNormalData[] = {
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
 * Setting               Mode      Function
 * ------------------    ------    --------
 * BOSS_PHANTOM_GANON    BATTLE    BATT1
 */
CameraModeValue sSetBossPhantomGanonModeBattleData[] = {
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

/**
 *=====================================================================
 *                Custom Data: BOSS_VOLVAGIA Setting
 *=====================================================================
 */

/**
 * Setting          Mode      Function
 * -------------    ------    --------
 * BOSS_VOLVAGIA    NORMAL    NORM1
 */
CameraModeValue sSetBossVolvagiaModeNormalData[] = {
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
CameraModeValue sSetBossVolvagiaModeBattleData[] = {
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

/**
 *=====================================================================
 *                   Custom Data: BOSS_BONGO Setting
 *=====================================================================
 */

/**
 * Setting       Mode      Function
 * ----------    ------    --------
 * BOSS_BONGO    NORMAL    NORM1
 */
CameraModeValue sSetBossBongoModeNormalData[] = {
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
CameraModeValue sSetBossBongoModeBattleData[] = {
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
CameraModeValue sSetBossBongoModeJumpData[] = {
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

/**
 *=====================================================================
 *                 Custom Data: BOSS_MORPHA Setting
 *=====================================================================
 */

/**
 * Setting        Mode      Function
 * -----------    ------    --------
 * BOSS_MORPHA    NORMAL    NORM1
 */
CameraModeValue sSetBossMorphaModeNormalData[] = {
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
CameraModeValue sSetBossMorphaModeBattleData[] = {
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

/**
 *=====================================================================
 *                  Custom Data: TWINROVA Setting
 *=====================================================================
 */

/**
 * Setting                   Mode      Function
 * ----------------------    ------    --------
 * BOSS_TWINROVA_PLATFORM    NORMAL    NORM1
 */
CameraModeValue sSetBossTwinrovaPlatformModeNormalData[] = {
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
 * Setting                   Mode      Function
 * ----------------------    ------    --------
 * BOSS_TWINROVA_PLATFORM    BATTLE    BATT1
 * BOSS_TWINROVA_FLOOR       BATTLE    BATT1
 */
CameraModeValue sSetBossTwinrovaModeBattleData[] = {
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
 * Setting                Mode      Function
 * -------------------    ------    --------
 * BOSS_TWINROVA_FLOOR    NORMAL    NORM1
 */
CameraModeValue sSetBossTwinrovaFloorModeNormalData[] = {
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

/**
 *=====================================================================
 *                Custom Data: BOSS_GANONDORF Setting
 *=====================================================================
 */

/**
 * Setting           Mode      Function
 * --------------    ------    --------
 * BOSS_GANONDORF    NORMAL    NORM1
 */
CameraModeValue sSetBossGanondorfModeNormalData[] = {
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
CameraModeValue sSetBossGanondorfModeChargeData[] = {
    { -40, CAM_DATA_Y_OFFSET },             // yOffset
    { 250, CAM_DATA_EYE_DIST },             // rTarget
    { 0, CAM_DATA_PITCH_TARGET },           // pitchTarget
    { 2, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // lerpUpdateRate
    { 80, CAM_DATA_FOV },                   // fovTarget
    { 20, CAM_DATA_AT_LERP_STEP_SCALE },    // atLERPTarget
    { 0xF000, CAM_DATA_FLAGS },
};

/**
 *=====================================================================
 *                 Custom Data: BOSS_GANON Setting
 *=====================================================================
 */

/**
 * Setting       Mode      Function
 * ----------    ------    --------
 * BOSS_GANON    NORMAL    NORM1
 */
CameraModeValue sSetBossGanonModeNormalData[] = {
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
 * BOSS_GANON    BATTLE    BATT1
 */
CameraModeValue sSetBossGanonModeBattleData[] = {
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

/**
 *=====================================================================
 *                 Custom Data: TOWER_CLIMB Setting
 *=====================================================================
 */

/**
 * Setting        Mode      Function
 * ------------   ------    --------
 * TOWER_CLIMB    NORMAL    NORM2
 */
CameraModeValue sSetTowerClimbModeNormalData[] = {
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
 * Setting        Mode    Function
 * -----------    ----    --------
 * TOWER_CLIMB    JUMP    NORM2
 */
CameraModeValue sSetTowerClimbModeJumpData[] = {
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

/**
 *=====================================================================
 *                Custom Data: TOWER_UNUSED Setting
 *=====================================================================
 */

/**
 * Setting         Mode      Function
 * ------------    ------    --------
 * TOWER_UNUSED    NORMAL    NORM2
 */
CameraModeValue sSetTowerUnusedModeNormalData[] = {
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
 * Setting         Mode    Function
 * ------------    ----    --------
 * TOWER_UNUSED    JUMP    NORM2
 */
CameraModeValue sSetTowerUnusedModeJumpData[] = {
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

/**
 *=====================================================================
 *                Custom Data: MARKET_BALCONY Setting
 *=====================================================================
 */

/**
 * Setting           Mode      Function
 * --------------    ------    --------
 * MARKET_BALCONY    NORMAL    FIXD1
 */
CameraModeValue sSetMarketBalconyModeNormalData[] = {
    { -40, CAM_DATA_Y_OFFSET },               // yOffset
    { 100, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // lerpStep
    { 60, CAM_DATA_FOV },                     // fov
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting           Mode            Function
 * --------------    ------------    --------
 * MARKET_BALCONY    FOLLOWTARGET    FIXD1
 */
CameraModeValue sSetMarketBalconyModeFollowTargetData[] = {
    { -40, CAM_DATA_Y_OFFSET },               // yOffset
    { 100, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // lerpStep
    { 60, CAM_DATA_FOV },                     // fov
    { 0x2000, CAM_DATA_FLAGS },
};

/**
 * Setting           Mode    Function
 * --------------    ----    --------
 * MARKET_BALCONY    TALK    FIXD1
 */
CameraModeValue sSetMarketBalconyModeTalkData[] = {
    { -40, CAM_DATA_Y_OFFSET },               // yOffset
    { 100, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // lerpStep
    { 60, CAM_DATA_FOV },                     // fov
    { 0x3500, CAM_DATA_FLAGS },
};

/**
 *=====================================================================
 *                 Custom Data: CHU_BOWLING Setting
 *=====================================================================
 */

/**
 * Setting        Mode      Function
 * -----------    ------    --------
 * CHU_BOWLING    NORMAL    FIXD1
 */
CameraModeValue sSetChuBowlingModeNormalData[] = {
    { -40, CAM_DATA_Y_OFFSET },              // yOffset
    { 25, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // lerpStep
    { 60, CAM_DATA_FOV },                    // fov
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 *=====================================================================
 *               Custom Data: PIVOT_CRAWLSPACE Setting
 *=====================================================================
 */

/**
 * Setting             Mode      Function
 * ----------------    ------    --------
 * PIVOT_CRAWLSPACE    NORMAL    FIXD2
 */
CameraModeValue sSetPivotCrawlspaceModeNormalData[] = {
    { -40, CAM_DATA_Y_OFFSET },              // yOffset
    { 50, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // eyeStepScale
    { 80, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // posStepScale
    { 60, CAM_DATA_FOV },                    // fov
    { 0x0001, CAM_DATA_FLAGS },
};

/**
 *=====================================================================
 *              Custom Data: PIVOT_SHOP_BROWSING Setting
 *=====================================================================
 */

/**
 * Setting                Mode      Function
 * -------------------    ------    --------
 * PIVOT_SHOP_BROWSING    NORMAL    DATA4
 */
CameraModeValue sSetPivotShopBrowsingModeNormalData[] = {
    { -40, CAM_DATA_Y_OFFSET }, // yOffset
    { 60, CAM_DATA_FOV },       // fov
    { 0x3F00, CAM_DATA_FLAGS },
};

/**
 *=====================================================================
 *          Custom Data: PIVOT_IN_FRONT and PIVOT_FROM_SIDE
 *=====================================================================
 */

/**
 * Setting            Mode            Function
 * ---------------    ------------    --------
 * PIVOT_IN_FRONT     NORMAL          FIXD4
 * PIVOT_FROM_SIDE    NORMAL          FIXD4
 * PIVOT_FROM_SIDE    FOLLOWTARGET    FIXD4
 */
CameraModeValue sSetPivotInFrontAndFromSideModeNormalData[] = {
    { -40, CAM_DATA_Y_OFFSET },              // yOffset
    { 50, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // speedToEyePos
    { 80, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // followSpeed
    { 60, CAM_DATA_FOV },                    // fov
    { 0x0004, CAM_DATA_FLAGS },
};

/**
 *=====================================================================
 *                 Custom Data: No data, all flags off
 *=====================================================================
 */

/**
 * Setting                Mode      Function
 * -------------------    ------    --------
 * PREREND_FIXED          NORMAL    FIXD3
 * PREREND_SIDE_SCROLL    NORMAL    SPEC6
 * START0                 NORMAL     UNIQ0
 * FIRE_PLATFORM          NORMAL    SPEC7
 */
CameraModeValue sDataOnlyNullFlags[] = {
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 *=====================================================================
 *                 Custom Data: PREREND_FIXED Setting
 *=====================================================================
 */

/**
 * Setting          Mode            Function
 * -------------    ------------    --------
 * PREREND_FIXED    FOLLOWTARGET    FIXD3
 * PREREND_FIXED    TALK            FIXD3
 */
CameraModeValue sSetPrerendFixedModeFollowTargetData[] = {
    { 0x2000, CAM_DATA_FLAGS },
};

/**
 *=====================================================================
 *                Custom Data: PREREND_PIVOT Setting
 *=====================================================================
 */

/**
 * Setting          Mode      Function
 * -------------    ------    --------
 * PREREND_PIVOT    NORMAL    UNIQ7
 */
CameraModeValue sSetPrerendPivotModeNormalData[] = {
    { 60, CAM_DATA_FOV }, // fov
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting          Mode            Function
 * -------------    ------------    --------
 * PREREND_PIVOT    FOLLOWTARGET    UNIQ7
 */
CameraModeValue sSetPrerendPivotModeFollowTargetData[] = {
    { 60, CAM_DATA_FOV }, // fov
    { 0x2000, CAM_DATA_FLAGS },
};

/**
 * Setting          Mode    Function
 * -------------    ----    --------
 * PREREND_PIVOT    TALK    KEEP0
 */
CameraModeValue sSetPrerendPivotModeTalkData[] = {
    { 30, CAM_DATA_FOV_SCALE },
    { 0, CAM_DATA_YAW_SCALE },
    { 4, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // timerInit
    { 0x3500, CAM_DATA_FLAGS },
};

/**
 *=====================================================================
 *                   Custom Data: DOOR0 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * DOOR0      NORMAL    UNIQ3
 */
CameraModeValue sSetDoor0ModeNormalData[] = {
    { -40, CAM_DATA_Y_OFFSET }, // yOffset
    { 60, CAM_DATA_FOV },       // fov
    { 0x3200, CAM_DATA_FLAGS },
};

/**
 *=====================================================================
 *                   Custom Data: DOORC Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * DOORC      NORMAL    SPEC9
 */
CameraModeValue sSetDoorCModeNormalData[] = {
    { -5, CAM_DATA_Y_OFFSET }, // yOffset
    { 60, CAM_DATA_FOV },      // unk_04 (unused)
    { 0x3202, CAM_DATA_FLAGS },
};

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * DOORC      TARGET    SPEC9
 */
CameraModeValue sSetDoorCModeTargetData[] = {
    { -5, CAM_DATA_Y_OFFSET }, // yOffset
    { 60, CAM_DATA_FOV },      // unk_04 (unused)
    { 0x320A, CAM_DATA_FLAGS },
};

/**
 *=====================================================================
 *                   Custom Data: CRAWLSPACE Setting
 *=====================================================================
 */

/**
 * Setting       Mode      Function
 * ----------    ------    --------
 * CRAWLSPACE    NORMAL    SUBJ4 (Camera_Subj4 only reads one setting which is used for flags)
 */
CameraModeValue sSetCrawlspaceModeNormalData[] = {
    { 0x0000, CAM_DATA_Y_OFFSET },                // flags
    { 2, CAM_DATA_EYE_DIST },                // unused
    { 30, CAM_DATA_EYE_DIST_NEXT },          // unused
    { 10, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unused
    { 45, CAM_DATA_FOV },                    // unused
    { 0x3200, CAM_DATA_FLAGS },              // unused
};

/**
 *=====================================================================
 *                   Custom Data: START1 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * START1     NORMAL    UNIQ0
 */
CameraModeValue sSetStart1ModeNormalData[] = {
    { 0x0001, CAM_DATA_FLAGS },
};

/**
 *=====================================================================
 *                   Custom Data: FREE0 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * FREE0      NORMAL    UNIQ6
 */
CameraModeValue sSetFree0ModeNormalData[] = {
    { 0xFF00, CAM_DATA_FLAGS },
};

/**
 *=====================================================================
 *                   Custom Data: FREE1 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * FREE1      NORMAL    UNIQ6
 */
CameraModeValue sSetFree1ModeNormalData[] = {
    { 0xFF01, CAM_DATA_FLAGS },
};

/**
 *=====================================================================
 *                 Custom Data: PIVOT_CORNER Setting
 *=====================================================================
 */

/**
 * Setting         Mode      Function
 * ------------    ------    --------
 * PIVOT_CORNER    NORMAL    FIXD2
 */
CameraModeValue sSetPivotCornerModeNormalData[] = {
    { -40, CAM_DATA_Y_OFFSET },               // yOffset
    { 100, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // eyeStepScale
    { 80, CAM_DATA_XZ_UPDATE_RATE_TARGET },   // posStepScale
    { 60, CAM_DATA_FOV },                     // fov
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 *=====================================================================
 *              Custom Data: PIVOT_WATER_SURFACE Setting
 *=====================================================================
 */

/**
 * Setting                Mode      Function
 * -------------------    ------    --------
 * PIVOT_WATER_SURFACE    NORMAL    UNIQ2
 */
CameraModeValue sSetPivotWaterSurfaceModeNormalData[] = {
    { -40, CAM_DATA_Y_OFFSET }, // yOffset
    { 60, CAM_DATA_EYE_DIST },  // distTarget
    { 60, CAM_DATA_FOV },       // fovTarget
    { 0x0002, CAM_DATA_FLAGS },
};

/**
 * Setting                Mode      Function
 * -------------------    ------    --------
 * PIVOT_WATER_SURFACE    TARGET    UNIQ2
 */
CameraModeValue sSetPivotWaterSurfaceModeTargetData[] = {
    { -30, CAM_DATA_Y_OFFSET }, // yOffset
    { 45, CAM_DATA_EYE_DIST },  // distTarget
    { 100, CAM_DATA_FOV },      // fovTarget
    { 0x2001, CAM_DATA_FLAGS },
};

/**
 *=====================================================================
 *               Custom Data: Various cutscene settings
 *=====================================================================
 */

/**
 * Setting               Mode      Function
 * ------------------    ------    --------
 * CS_0                  NORMAL    CS_TWISTED_HALLWAY
 * CS_TWISTED_HALLWAY    NORMAL    DEMO2
 * CS_ATTENTION          NORMAL    DEMO5 (Not actually used in Camera_Demo4?)
 * FIRE_STAIRCASE        NORMAL    SPEC4
 * FOREST_UNUSED         NORMAL    UNIQ5
 * FOREST_DEFEAT_POE     NORMAL    DEMO6
 */
CameraModeValue sDataOnlyInterfaceFlags[] = {
    { 0x3200, CAM_DATA_FLAGS },
};

/**
 *=====================================================================
 *                Custom Data: FOREST_BIRDS_EYE Setting
 *=====================================================================
 */

/**
 * Setting             Mode      Function
 * ----------------    ------    --------
 * FOREST_BIRDS_EYE    NORMAL    PARA1
 */
CameraModeValue sSetForestBirdsEyeModeNormalData[] = {
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
 * Setting             Mode     Function
 * ----------------    -----    --------
 * FOREST_BIRDS_EYE    TALK     PARA3
 */
CameraModeValue sSetForestBirdsEyeModeTalkData[] = {
    { 0x3501, CAM_DATA_FLAGS },
};

/**
 *=====================================================================
 *                 Custom Data: SLOW_CHEST_CS Setting
 *=====================================================================
 */

/**
 * Setting          Mode      Function
 * -------------    ------    --------
 * SLOW_CHEST_CS    NORMAL    CS_3
 * ITEM_UNUSED      NORMAL    CS_ATTENTION (not actually used in Camera_Demo4)
 */
CameraModeValue sSetSlowChestCsModeNormalData[] = {
    { 60, CAM_DATA_FOV },                // fov
    { 30, CAM_DATA_AT_LERP_STEP_SCALE }, // unk_04
    { 0x3200, CAM_DATA_FLAGS },
};

/**
 *=====================================================================
 *                     Custom Data: CS_3 Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * CS_3       NORMAL    DEMO9
 */
CameraModeValue sSetCs3ModeNormalData[] = {
    { 0x3212, CAM_DATA_FLAGS },
};

/**
 *=====================================================================
 *                 Custom Data: BEAN_GENERIC Setting
 *=====================================================================
 */

/**
 * Setting         Mode      Function
 * ------------    ------    --------
 * BEAN_GENERIC    NORMAL    NORM1
 */
CameraModeValue sSetBeanGenericModeNormalData[] = {
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
 * Setting         Mode      Function
 * ------------    ------    --------
 * BEAN_GENERIC    TARGET    PARA1
 */
CameraModeValue sSetBeanGenericModeTargetData[] = {
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
 * Setting         Mode    Function
 * ------------    ----    --------
 * BEAN_GENERIC    JUMP    JUMP1
 */
CameraModeValue sSetBeanGenericModeJumpData[] = {
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
 * Setting         Mode    Function
 * ------------    ----    --------
 * BEAN_GENERIC    HANG    UNIQ1
 */
CameraModeValue sSetBeanGenericModeHangData[] = {
    { -80, CAM_DATA_Y_OFFSET },          // yOffset
    { 300, CAM_DATA_EYE_DIST },          // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 60, CAM_DATA_PITCH_TARGET },       // fovTarget
    { 70, CAM_DATA_FOV },                // pitchTarget
    { 30, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting         Mode     Function
 * ------------    -----    --------
 * BEAN_GENERIC    HANGZ    UNIQ1
 */
CameraModeValue sSetBeanGenericModeHangZData[] = {
    { -120, CAM_DATA_Y_OFFSET },         // yOffset
    { 300, CAM_DATA_EYE_DIST },          // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 70, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 50, CAM_DATA_FOV },                // fovTarget
    { 30, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x2000, CAM_DATA_FLAGS },
};

/**
 * Setting         Mode     Function
 * ------------    -----    --------
 * BEAN_GENERIC    STILL    NORM1
 */
CameraModeValue sSetBeanGenericModeStillData[] = {
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

/**
 *=====================================================================
 *                Custom Data: BEAN_LOST_WOODS Setting
 *=====================================================================
 */

/**
 * Setting            Mode      Function
 * ---------------    ------    --------
 * BEAN_LOST_WOODS    NORMAL    NORM1
 */
CameraModeValue sSetBeanLostWoodsModeNormalData[] = {
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
 * Setting            Mode      Function
 * ---------------    ------    --------
 * BEAN_LOST_WOODS    TARGET    PARA1
 */
CameraModeValue sSetBeanLostWoodsModeTargetData[] = {
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
 * Setting            Mode    Function
 * ---------------    ----    --------
 * BEAN_LOST_WOODS    JUMP    JUMP1
 */
CameraModeValue sSetBeanLostWoodsModeJumpData[] = {
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
 * Setting            Mode    Function
 * ---------------    ----    --------
 * BEAN_LOST_WOODS    HANG    UNIQ1
 */
CameraModeValue sSetBeanLostWoodsModeHangData[] = {
    { -80, CAM_DATA_Y_OFFSET },          // yOffset
    { 200, CAM_DATA_EYE_DIST },          // distMin
    { 200, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 40, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 60, CAM_DATA_FOV },                // fovTarget
    { 30, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

/**
 * Setting            Mode     Function
 * ---------------    -----    --------
 * BEAN_LOST_WOODS    HANGZ    UNIQ1
 */
CameraModeValue sSetBeanLostWoodsModeHangZData[] = {
    { -120, CAM_DATA_Y_OFFSET },         // yOffset
    { 200, CAM_DATA_EYE_DIST },          // distMin
    { 200, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 60, CAM_DATA_PITCH_TARGET },       // pitchtarget
    { 50, CAM_DATA_FOV },                // fovTarget
    { 30, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x2000, CAM_DATA_FLAGS },
};

/**
 * Setting            Mode     Function
 * ---------------    -----    --------
 * BEAN_LOST_WOODS    STILL    NORM1
 */
CameraModeValue sSetBeanLostWoodsModeStillData[] = {
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

/**
 *=====================================================================
 *                 Custom Data: SCENE_UNUSED Setting
 *=====================================================================
 */

/**
 * Setting         Mode      Function
 * ------------    ------    --------
 * SCENE_UNUSED    NORMAL    SPEC9
 */
CameraModeValue sSetSceneUnusedModeNormalData[] = {
    { -30, CAM_DATA_Y_OFFSET }, // yOffset
    { 60, CAM_DATA_FOV },       // unk_04 (unused)
    { 0x10A, CAM_DATA_FLAGS },
};

/**
 *=====================================================================
 *                Custom Data: SCENE_TRANSITION Setting
 *=====================================================================
 */

/**
 * Setting             Mode      Function
 * ----------------    ------    --------
 * SCENE_TRANSITION    NORMAL    UNIQ2
 */
CameraModeValue sSetSceneTransitionModeNormalData[] = {
    { -20, CAM_DATA_Y_OFFSET }, // yOffset
    { 150, CAM_DATA_EYE_DIST }, // distTarget
    { 60, CAM_DATA_FOV },       // fovTarget
    { 0x0210, CAM_DATA_FLAGS },
};

/**
 *=====================================================================
 *                   Custom Data: BIG_OCTO Setting
 *=====================================================================
 */

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * BIG_OCTO    NORMAL    NORM1
 */
CameraModeValue sSetBigOctoModeNormalData[] = {
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
 * Setting     Mode      Function
 * --------    ------    --------
 * BIG_OCTO    BATTLE    BATT1
 */
CameraModeValue sSetBigOctoModeBattleData[] = {
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
 * Setting     Mode     Function
 * --------    -----    --------
 * BIG_OCTO    STILL    NORM1
 */
CameraModeValue sSetBigOctoModeStillData[] = {
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

/**
 *=====================================================================
 *               Custom Data: MEADOW_BIRDS_EYE Setting
 *=====================================================================
 */

/**
 * Setting             Mode      Function
 * ----------------    ------    --------
 * MEADOW_BIRDS_EYE    NORMAL    NORM1
 */
CameraModeValue sSetMeadowBirdsEyeModeNormalData[] = {
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
 * Setting             Mode      Function
 * ----------------    ------    --------
 * MEADOW_BIRDS_EYE    TARGET    PARA1
 */
CameraModeValue sSetMeadowBirdsEyeModeTargetData[] = {
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
 * Setting             Mode      Function
 * ----------------    ------    --------
 * MEADOW_BIRDS_EYE    BATTLE    PARA1
 */
CameraModeValue sSetMeadowBirdsEyeModeBattleData[] = {
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
 * Setting             Mode     Function
 * ----------------    -----    --------
 * MEADOW_BIRDS_EYE    CLIMB    NORM1
 */
CameraModeValue sSetMeadowBirdsEyeModeClimbData[] = {
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

/**
 *=====================================================================
 *                 Custom Data: MEADOW_UNUSED Setting
 *=====================================================================
 */

/**
 * Setting          Mode      Function
 * -------------    ------    --------
 * MEADOW_UNUSED    NORMAL    NORM1
 */
CameraModeValue sSetMeadowUnusedModeNormalData[] = {
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
 * Setting          Mode      Function
 * -------------    ------    --------
 * MEADOW_UNUSED    TARGET    PARA1
 */
CameraModeValue sSetMeadowUnusedModeTargetData[] = {
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
 * Setting          Mode      Function
 * -------------    ------    --------
 * MEADOW_UNUSED    BATTLE    PARA1
 */
CameraModeValue sSetMeadowUnusedModeBattleData[] = {
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
 * Setting          Mode     Function
 * -------------    -----    --------
 * MEADOW_UNUSED    CLIMB    NORM1
 */
CameraModeValue sSetMeadowUnusedModeClimbData[] = {
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

/**
 *=====================================================================
 *                Custom Data: FIRE_BIRDS_EYE Setting
 *=====================================================================
 */

/**
 * Setting           Mode      Function
 * --------------    ------    --------
 * FIRE_BIRDS_EYE    NORMAL    NORM1
 */
CameraModeValue sSetFireBirdsEyeModeNormalData[] = {
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
 * Setting           Mode      Function
 * --------------    ------    --------
 * FIRE_BIRDS_EYE    TARGET    PARA1
 */
CameraModeValue sSetFireBirdsEyeModeTargetData[] = {
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
 * Setting           Mode      Function
 * --------------    ------    --------
 * FIRE_BIRDS_EYE    BATTLE    PARA1
 */
CameraModeValue sSetFireBirdsEyeModeBattleData[] = {
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
 * Setting           Mode     Function
 * --------------    -----    --------
 * FIRE_BIRDS_EYE    CLIMB    NORM1
 */
CameraModeValue sSetFireBirdsEyeModeClimbData[] = {
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

/**
 *=====================================================================
 *                Custom Data: TURN_AROUND Setting
 *=====================================================================
 */

/**
 * Setting        Mode      Function
 * -----------    ------    --------
 * TURN_AROUND    NORMAL    KEEP4
 */
CameraModeValue sSetTurnAroundModeNormalData[] = {
    { -30, CAM_DATA_Y_OFFSET },                                              // unk_00
    { 120, CAM_DATA_EYE_DIST },                                              // unk_04
    { -10, CAM_DATA_PITCH_TARGET },                                          // unk_08
    { 170, CAM_DATA_YAW_TARGET },                                            // unk_0C
    { 0, CAM_DATA_AT_OFFSET_Z },                                             // unk_10
    { 60, CAM_DATA_FOV },                                                    // unk_18
    { 0x2502, CAM_DATA_FLAGS },     { 25, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_14
    { 6, CAM_DATA_UNK_22 },                                                  // unk_1E
};

/**
 *=====================================================================
 *                Custom Data: PIVOT_VERTICAL Setting
 *=====================================================================
 */

/**
 * Setting           Mode      Function
 * --------------    ------    --------
 * PIVOT_VERTICAL    NORMAL    SPEC0
 */
CameraModeValue sSetPivotVerticalModeNormalData[] = {
    { 20, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // lerpATScale
    { 0x3200, CAM_DATA_FLAGS },
};

/**
 *=====================================================================
 *                   Custom Data: NORMAL Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * NORMAL2    NORMAL    NORM1
 * NORMAL4    NORMAL    NORM1
 */
CameraModeValue sSetNormal2and4ModeNormalData[] = {
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

/**
 *=====================================================================
 *                   Custom Data: FISHING Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * FISHING    NORMAL    NORM1
 */
CameraModeValue sSetFishingModeNormalData[] = {
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
CameraModeValue sSetFishingModeTargetData[] = {
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
CameraModeValue sSetFishingModeFollowTargetData[] = {
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
CameraModeValue sSetFishingModeTalkData[] = {
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
CameraModeValue sSetFishingModeFirstPersonData[] = {
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
CameraModeValue sSetFishingModeJumpData[] = {
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
CameraModeValue sSetFishingModeFreeFallData[] = {
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
CameraModeValue sSetFishingModeHangData[] = {
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
CameraModeValue sSetFishingModeHangZData[] = {
    { -120, CAM_DATA_Y_OFFSET },         // yOffset
    { 300, CAM_DATA_EYE_DIST },          // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 70, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 45, CAM_DATA_FOV },                // fovTarget
    { 10, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x2F00, CAM_DATA_FLAGS },
};

/**
 *=====================================================================
 *                   Custom Data: CS_C Setting
 *=====================================================================
 */

/**
 * Setting    Mode      Function
 * -------    ------    --------
 * CS_C       NORMAL    UNIQ9
 */
CameraModeValue sSetCsCModeNormalData[] = {
    { 0x3F00, CAM_DATA_FLAGS }, /* flags */
};

/**
 *=====================================================================
 *                   Custom Data: JABU_TENTACLE Setting
 *=====================================================================
 */

/**
 * Setting          Mode      Function
 * -------------    ------    --------
 * JABU_TENTACLE    NORMAL    NORM1
 */
CameraModeValue sSetJabuTentacleModeNormalData[] = {
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
 * Setting          Mode      Function
 * -------------    ------    --------
 * JABU_TENTACLE    BATTLE    BATT1
 */
CameraModeValue sSetJabuTentacleModeBattleData[] = {
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

/**
 *=====================================================================
 *                   Custom Data: DUNGEON2 Setting
 *=====================================================================
 */

/**
 * Setting     Mode      Function
 * --------    ------    --------
 * DUNGEON2    NORMAL    NORM1
 */
CameraModeValue sSetDungeon2ModeNormalData[] = {
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
CameraModeValue sSetDungeon2ModeTargetData[] = {
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
CameraModeValue sSetDungeon2ModeBattleData[] = {
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
CameraModeValue sSetDungeon2ModeJumpData[] = {
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
CameraModeValue sSetDungeon2ModeFreeFallData[] = {
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
CameraModeValue sSetDungeon2ModeClimbData[] = {
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
CameraModeValue sSetDungeon2ModeClimbZData[] = {
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
CameraModeValue sSetDungeon2ModeHangData[] = {
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
CameraModeValue sSetDungeon2ModeHangZData[] = {
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
CameraModeValue sSetDungeon2ModeStillData[] = {
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
CameraModeValue sSetDungeon2ModePushPullData[] = {
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

/**
 *=====================================================================
 *                 Custom Data: DIRECTED_YAW Setting
 *=====================================================================
 */

/**
 * Setting         Mode      Function
 * ------------    ------    --------
 * DIRECTED_YAW    NORMAL    NORM1
 */
CameraModeValue sSetDirectedYawModeNormalData[] = {
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
 * Setting         Mode            Function
 * ------------    ------------    --------
 * DIRECTED_YAW    FOLLOWTARGET    KEEP1
 */
CameraModeValue sSetDirectedYawModeFollowTargetData[] = {
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
 * Setting         Mode    Function
 * ------------    ----    --------
 * DIRECTED_YAW    TALK    KEEP3
 */
CameraModeValue sSetDirectedYawModeTalkData[] = {
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

/**
 *=====================================================================
 *                   Custom Data: NORMAL4 Setting
 *=====================================================================
 */

/**
 * Setting    Mode    Function
 * -------    ----    --------
 * NORMAL4    TALK    KEEP3
 */
CameraModeValue sNormal4ModeTalkData[] = {
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

/**
 * =====================================================================
 *    CAMERA SETTINGS: USAGE OF FUNCTIONS AND DATA FOR SPECIFIC MODES
 * =====================================================================
 */

/**
 * Camera Setting: NORMAL0
 */
CameraMode sCamSetNormal0Modes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetNormal0ModeNormalData), sSetNormal0ModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModeTargetData), sSetNormal0ModeTargetData }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowTargetData), sSetNormal0ModeFollowTargetData }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetNormal0ModeTalkData), sSetNormal0ModeTalkData }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetNormal0ModeBattleData), sSetNormal0ModeBattleData }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbData), sSetNormal0ModeClimbData }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeFirstPersonData), sSetNormal0ModeFirstPersonData }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowData), sSetNormal0ModeBowArrowData }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowZData), sSetNormal0ModeBowArrowZData }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(sSetNormal0ModeHookshotData), sSetNormal0ModeHookshotData }, // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBoomerangData), sSetNormal0ModeBoomerangData }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeSlingshotData), sSetNormal0ModeSlingshotData }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbZData), sSetNormal0ModeClimbZData }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangData), sSetNormal0ModeHangData }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangZData), sSetNormal0ModeHangZData }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeFreeFallData), sSetNormal0ModeFreeFallData }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(sSetNormal0ModeChargeData), sSetNormal0ModeChargeData }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetNormal0ModeStillData), sSetNormal0ModeStillData }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModePushPullData), sSetNormal0ModePushPullData }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowBoomerangData), sSetNormal0ModeFollowBoomerangData }, // CAM_MODE_FOLLOWBOOMERANG
};

/**
 * Camera Setting: NORMAL1
 */
CameraMode sCamSetNormal1Modes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetNormal1ModeNormalData), sSetNormal1ModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal1ModeTargetData), sSetNormal1ModeTargetData }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal1ModeFollowTargetData), sSetNormal1ModeFollowTargetData },                       // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetNormal0ModeTalkData), sSetNormal0ModeTalkData },                       // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetNormal1ModeBattleData), sSetNormal1ModeBattleData },                       // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal1ModeClimbData), sSetNormal1ModeClimbData },                       // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeFirstPersonData), sSetNormal0ModeFirstPersonData },                       // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowData), sSetNormal0ModeBowArrowData },                       // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowZData), sSetNormal0ModeBowArrowZData },                       // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(sSetNormal1ModeHookshotData), sSetNormal1ModeHookshotData },                       // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBoomerangData), sSetNormal0ModeBoomerangData },                       // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeSlingshotData), sSetNormal0ModeSlingshotData },                       // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal1ModeClimbZData), sSetNormal1ModeClimbZData },                       // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal1ModeJumpData), sSetNormal1ModeJumpData },                       // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal1ModeHangData), sSetNormal1ModeHangData },                       // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal1ModeHangZData), sSetNormal1ModeHangZData },                       // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal1ModeFreeFallData), sSetNormal1ModeFreeFallData },                       // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(sSetNormal1ModeChargeData), sSetNormal1ModeChargeData },                       // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetNormal1ModeStillData), sSetNormal1ModeStillData },                       // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModePushPullData), sSetNormal0ModePushPullData },                       // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowBoomerangData), sSetNormal0ModeFollowBoomerangData },                       // CAM_MODE_FOLLOWBOOMERANG
};

/**
 * Camera Setting: DUNGEON0
 */
CameraMode sCamSetDungeon0Modes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetDungeon0ModeNormalData), sSetDungeon0ModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetDungeon0ModeTargetData), sSetDungeon0ModeTargetData }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetDungeon0ModeFollowTargetData), sSetDungeon0ModeFollowTargetData }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetNormal0ModeTalkData), sSetNormal0ModeTalkData }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetDungeon0ModeBattleData), sSetDungeon0ModeBattleData }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetDungeon0ModeClimbData), sSetDungeon0ModeClimbData }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeFirstPersonData), sSetNormal0ModeFirstPersonData }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowData), sSetNormal0ModeBowArrowData }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowZData), sSetNormal0ModeBowArrowZData }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(sSetNormal1ModeHookshotData), sSetNormal1ModeHookshotData }, // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBoomerangData), sSetNormal0ModeBoomerangData }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeSlingshotData), sSetNormal0ModeSlingshotData }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetDungeon0ModeClimbZData), sSetDungeon0ModeClimbZData }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetDungeon0ModeJumpData), sSetDungeon0ModeJumpData }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetDungeon0ModeHangData), sSetDungeon0ModeHangData }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetDungeon0ModeHangZData), sSetDungeon0ModeHangZData }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetDungeon0ModeFreeFallData), sSetDungeon0ModeFreeFallData }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(sSetDungeon0ModeChargeData), sSetDungeon0ModeChargeData }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetDungeon0ModeStillData), sSetDungeon0ModeStillData }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModePushPullData), sSetNormal0ModePushPullData }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowBoomerangData), sSetNormal0ModeFollowBoomerangData }, // CAM_MODE_FOLLOWBOOMERANG
};

/**
 * Camera Setting: DUNGEON1
 */
CameraMode sCamSetDungeon1Modes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetDungeon1ModeNormalData), sSetDungeon1ModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetDungeon0ModeTargetData), sSetDungeon0ModeTargetData }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal1ModeFollowTargetData), sSetNormal1ModeFollowTargetData }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetDungeon1ModeTalkData), sSetDungeon1ModeTalkData }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetDungeon0ModeBattleData), sSetDungeon0ModeBattleData }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetDungeon1ModeClimbData), sSetDungeon1ModeClimbData }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeFirstPersonData), sSetNormal0ModeFirstPersonData }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowData), sSetNormal0ModeBowArrowData }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowZData), sSetNormal0ModeBowArrowZData }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(sSetNormal1ModeHookshotData), sSetNormal1ModeHookshotData }, // CAM_MODE_HOOKSHOT,
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBoomerangData), sSetNormal0ModeBoomerangData }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeSlingshotData), sSetNormal0ModeSlingshotData }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetDungeon1ModeClimbZData), sSetDungeon1ModeClimbZData }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetDungeon1ModeJumpData), sSetDungeon1ModeJumpData }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetDungeon1ModeHangData), sSetDungeon1ModeHangData }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetDungeon1ModeHangZData), sSetDungeon1ModeHangZData }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetDungeon1ModeFreeFallData), sSetDungeon1ModeFreeFallData }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(sSetDungeon1ModeChargeData), sSetDungeon1ModeChargeData }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetDungeon1ModeStillData), sSetDungeon1ModeStillData }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetDungeon1ModePushPullData), sSetDungeon1ModePushPullData }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowBoomerangData), sSetNormal0ModeFollowBoomerangData }, // CAM_MODE_FOLLOWBOOMERANG
};

/**
 * Camera Setting: NORMAL3
 */
CameraMode sCamSetNormal3Modes[] = {
    { CAM_FUNC_JUMP3, ARRAY_COUNT(sSetNormal3ModeNormalData), sSetNormal3ModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal3ModeTargetData), sSetNormal3ModeTargetData },                       // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowTargetData), sSetNormal0ModeFollowTargetData },                       // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetNormal3ModeTalkData), sSetNormal3ModeTalkData },                       // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetNormal0ModeBattleData), sSetNormal0ModeBattleData },                       // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbData), sSetNormal0ModeClimbData },                       // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeFirstPersonData), sSetNormal0ModeFirstPersonData },                       // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowData), sSetNormal0ModeBowArrowData },                       // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowZData), sSetNormal0ModeBowArrowZData },                       // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(sSetNormal0ModeHookshotData), sSetNormal0ModeHookshotData },                       // CAM_MODE_HOOKSHOT
    { CAM_FUNC_JUMP3, ARRAY_COUNT(sSetNormal3ModeBoomerangData), sSetNormal3ModeBoomerangData }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_NONE, 0, NULL },                                                    // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbZData), sSetNormal0ModeClimbZData },                       // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData },                       // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangData), sSetNormal0ModeHangData },                       // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangZData), sSetNormal0ModeHangZData },                       // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData },                       // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(sSetNormal0ModeChargeData), sSetNormal0ModeChargeData },                       // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetNormal0ModeStillData), sSetNormal0ModeStillData },                       // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModePushPullData), sSetNormal0ModePushPullData },                       // CAM_MODE_PUSHPULL
};

/**
 * Camera Setting: HORSE
 */
CameraMode sCamSetHorseModes[] = {
    { CAM_FUNC_NORM3, ARRAY_COUNT(sSetHorseModeNormalData), sSetHorseModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_NORM3, ARRAY_COUNT(sSetHorseModeTargetData), sSetHorseModeTargetData }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetHorseModeFollowTargetData), sSetHorseModeFollowTargetData },                       // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetHorseModeTalkData), sSetHorseModeTalkData },                       // CAM_MODE_TALK
    { CAM_FUNC_NONE, 0, NULL },                                                    // CAM_MODE_BATTLE
    { CAM_FUNC_NONE, 0, NULL },                                                    // CAM_MODE_CLIMB
    { CAM_FUNC_NONE, 0, NULL },                                                    // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetHorseModeBowArrowData), sSetHorseModeBowArrowData },                       // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowZData), sSetNormal0ModeBowArrowZData },                       // CAM_MODE_BOWARROWZ
};

/**
 * Camera Setting: BOSS_GOHMA
 */
CameraMode sCamSetBossGohmaModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetBossGohmaModeNormalData), sSetBossGohmaModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModeTargetData), sSetNormal0ModeTargetData }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowTargetData), sSetNormal0ModeFollowTargetData }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetNormal0ModeTalkData), sSetNormal0ModeTalkData }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetBossGohmaModeBattleData), sSetBossGohmaModeBattleData }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbData), sSetNormal0ModeClimbData }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeFirstPersonData), sSetNormal0ModeFirstPersonData }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowData), sSetNormal0ModeBowArrowData }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowZData), sSetNormal0ModeBowArrowZData }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(sSetNormal0ModeHookshotData), sSetNormal0ModeHookshotData }, // CAM_MODE_HOOKSHOT,
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBoomerangData), sSetNormal0ModeBoomerangData }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeSlingshotData), sSetNormal0ModeSlingshotData }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbZData), sSetNormal0ModeClimbZData }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangData), sSetNormal0ModeHangData }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangZData), sSetNormal0ModeHangZData }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(sSetDungeon0ModeChargeData), sSetDungeon0ModeChargeData }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetNormal0ModeStillData), sSetNormal0ModeStillData }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModePushPullData), sSetNormal0ModePushPullData }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowBoomerangData), sSetNormal0ModeFollowBoomerangData }, // CAM_MODE_FOLLOWBOOMERANG
};

/**
 * Camera Setting: BOSS_DODONGO
 */
CameraMode sCamSetBossDodongoModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetBossDodongoModeNormalData), sSetBossDodongoModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModeTargetData), sSetNormal0ModeTargetData }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowTargetData), sSetNormal0ModeFollowTargetData }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetNormal0ModeTalkData), sSetNormal0ModeTalkData }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetBossDodongoModeBattleData), sSetBossDodongoModeBattleData }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbData), sSetNormal0ModeClimbData }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeFirstPersonData), sSetNormal0ModeFirstPersonData }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowData), sSetNormal0ModeBowArrowData }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowZData), sSetNormal0ModeBowArrowZData }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(sSetNormal0ModeHookshotData), sSetNormal0ModeHookshotData }, // CAM_MODE_HOOKSHOT,
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBoomerangData), sSetNormal0ModeBoomerangData }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeSlingshotData), sSetNormal0ModeSlingshotData }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbZData), sSetNormal0ModeClimbZData }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangData), sSetNormal0ModeHangData }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangZData), sSetNormal0ModeHangZData }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(sSetNormal0ModeChargeData), sSetNormal0ModeChargeData }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetNormal0ModeStillData), sSetNormal0ModeStillData }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModePushPullData), sSetNormal0ModePushPullData }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowBoomerangData), sSetNormal0ModeFollowBoomerangData }, // CAM_MODE_FOLLOWBOOMERANG
};

/**
 * Camera Setting: BOSS_BARINADE
 */
CameraMode sCamSetBossBarinadeModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetBossBarinadeModeNormalData), sSetBossBarinadeModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModeTargetData), sSetNormal0ModeTargetData }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowTargetData), sSetNormal0ModeFollowTargetData }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetNormal0ModeTalkData), sSetNormal0ModeTalkData }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetBossBarinadeModeBattleData), sSetBossBarinadeModeBattleData }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbData), sSetNormal0ModeClimbData }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeFirstPersonData), sSetNormal0ModeFirstPersonData }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowData), sSetNormal0ModeBowArrowData }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowZData), sSetNormal0ModeBowArrowZData }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(sSetNormal0ModeHookshotData), sSetNormal0ModeHookshotData }, // CAM_MODE_HOOKSHOT,
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBoomerangData), sSetNormal0ModeBoomerangData }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeSlingshotData), sSetNormal0ModeSlingshotData }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbZData), sSetNormal0ModeClimbZData }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangData), sSetNormal0ModeHangData }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangZData), sSetNormal0ModeHangZData }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(sSetNormal0ModeChargeData), sSetNormal0ModeChargeData }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetNormal0ModeStillData), sSetNormal0ModeStillData }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModePushPullData), sSetNormal0ModePushPullData }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowBoomerangData), sSetNormal0ModeFollowBoomerangData }, // CAM_MODE_FOLLOWBOOMERANG
};

/**
 * Camera Setting: BOSS_PHANTOM_GANON
 */
CameraMode sCamSetBossPhantomGanonModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetBossPhantomGanonModeNormalData), sSetBossPhantomGanonModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModeTargetData), sSetNormal0ModeTargetData }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowTargetData), sSetNormal0ModeFollowTargetData }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetNormal0ModeTalkData), sSetNormal0ModeTalkData }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetBossPhantomGanonModeBattleData), sSetBossPhantomGanonModeBattleData }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbData), sSetNormal0ModeClimbData }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeFirstPersonData), sSetNormal0ModeFirstPersonData }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowData), sSetNormal0ModeBowArrowData }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowZData), sSetNormal0ModeBowArrowZData }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(sSetNormal0ModeHookshotData), sSetNormal0ModeHookshotData }, // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBoomerangData), sSetNormal0ModeBoomerangData }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeSlingshotData), sSetNormal0ModeSlingshotData }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbZData), sSetNormal0ModeClimbZData }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangData), sSetNormal0ModeHangData }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangZData), sSetNormal0ModeHangZData }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(sSetNormal0ModeChargeData), sSetNormal0ModeChargeData }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetNormal0ModeStillData), sSetNormal0ModeStillData }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModePushPullData), sSetNormal0ModePushPullData }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowBoomerangData), sSetNormal0ModeFollowBoomerangData }, // CAM_MODE_FOLLOWBOOMERANG
};

/**
 * Camera Setting: BOSS_VOLVAGIA
 */
CameraMode sCamSetBossVolvagiaModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetBossVolvagiaModeNormalData), sSetBossVolvagiaModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModeTargetData), sSetNormal0ModeTargetData }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowTargetData), sSetNormal0ModeFollowTargetData }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetNormal0ModeTalkData), sSetNormal0ModeTalkData }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetBossVolvagiaModeBattleData), sSetBossVolvagiaModeBattleData }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbData), sSetNormal0ModeClimbData }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeFirstPersonData), sSetNormal0ModeFirstPersonData }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowData), sSetNormal0ModeBowArrowData }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowZData), sSetNormal0ModeBowArrowZData }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(sSetNormal0ModeHookshotData), sSetNormal0ModeHookshotData }, // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBoomerangData), sSetNormal0ModeBoomerangData }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeSlingshotData), sSetNormal0ModeSlingshotData }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbZData), sSetNormal0ModeClimbZData }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangData), sSetNormal0ModeHangData }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangZData), sSetNormal0ModeHangZData }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(sSetNormal0ModeChargeData), sSetNormal0ModeChargeData }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetNormal0ModeStillData), sSetNormal0ModeStillData }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModePushPullData), sSetNormal0ModePushPullData }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowBoomerangData), sSetNormal0ModeFollowBoomerangData }, // CAM_MODE_FOLLOWBOOMERANG
};

/**
 * Camera Setting: BOSS_BONGO
 */
CameraMode sCamSetBossBongoModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetBossBongoModeNormalData), sSetBossBongoModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModeTargetData), sSetNormal0ModeTargetData }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowTargetData), sSetNormal0ModeFollowTargetData }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetNormal0ModeTalkData), sSetNormal0ModeTalkData }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetBossBongoModeBattleData), sSetBossBongoModeBattleData }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbData), sSetNormal0ModeClimbData }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeFirstPersonData), sSetNormal0ModeFirstPersonData }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowData), sSetNormal0ModeBowArrowData }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowZData), sSetNormal0ModeBowArrowZData }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(sSetNormal0ModeHookshotData), sSetNormal0ModeHookshotData }, // CAM_MODE_HOOKSHOT,
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBoomerangData), sSetNormal0ModeBoomerangData }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeSlingshotData), sSetNormal0ModeSlingshotData }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbZData), sSetNormal0ModeClimbZData }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetBossBongoModeJumpData), sSetBossBongoModeJumpData }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangData), sSetNormal0ModeHangData }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangZData), sSetNormal0ModeHangZData }, // CAM_MODE_HANGZ
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetBossBongoModeJumpData), sSetBossBongoModeJumpData }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(sSetNormal0ModeChargeData), sSetNormal0ModeChargeData }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetNormal0ModeStillData), sSetNormal0ModeStillData }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModePushPullData), sSetNormal0ModePushPullData }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowBoomerangData), sSetNormal0ModeFollowBoomerangData }, // CAM_MODE_FOLLOWBOOMERANG
};

/**
 * Camera Setting: BOSS_MORPHA
 */
CameraMode sCamSetBossMorphaModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetBossMorphaModeNormalData), sSetBossMorphaModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModeTargetData), sSetNormal0ModeTargetData }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowTargetData), sSetNormal0ModeFollowTargetData }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetNormal0ModeTalkData), sSetNormal0ModeTalkData }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetBossMorphaModeBattleData), sSetBossMorphaModeBattleData }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbData), sSetNormal0ModeClimbData }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeFirstPersonData), sSetNormal0ModeFirstPersonData }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowData), sSetNormal0ModeBowArrowData }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowZData), sSetNormal0ModeBowArrowZData }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(sSetNormal0ModeHookshotData), sSetNormal0ModeHookshotData }, // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBoomerangData), sSetNormal0ModeBoomerangData }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeSlingshotData), sSetNormal0ModeSlingshotData }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbZData), sSetNormal0ModeClimbZData }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangData), sSetNormal0ModeHangData }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangZData), sSetNormal0ModeHangZData }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_FREEFAL
    { CAM_FUNC_BATT4, ARRAY_COUNT(sSetNormal0ModeChargeData), sSetNormal0ModeChargeData }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetNormal0ModeStillData), sSetNormal0ModeStillData }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModePushPullData), sSetNormal0ModePushPullData }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowBoomerangData), sSetNormal0ModeFollowBoomerangData }, // CAM_MODE_FOLLOWBOOMERANG
};

/**
 * Camera Setting: BOSS_TWINROVA_PLATFORM
 */
CameraMode sCamSetBossTwinrovaPlatformModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetBossTwinrovaPlatformModeNormalData), sSetBossTwinrovaPlatformModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModeTargetData), sSetNormal0ModeTargetData }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowTargetData), sSetNormal0ModeFollowTargetData }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetNormal0ModeTalkData), sSetNormal0ModeTalkData }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetBossTwinrovaModeBattleData), sSetBossTwinrovaModeBattleData }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbData), sSetNormal0ModeClimbData }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeFirstPersonData), sSetNormal0ModeFirstPersonData }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowData), sSetNormal0ModeBowArrowData }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowZData), sSetNormal0ModeBowArrowZData }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(sSetNormal0ModeHookshotData), sSetNormal0ModeHookshotData }, // CAM_MODE_HOOKSHOT,
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBoomerangData), sSetNormal0ModeBoomerangData }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeSlingshotData), sSetNormal0ModeSlingshotData }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbZData), sSetNormal0ModeClimbZData }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangData), sSetNormal0ModeHangData }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangZData), sSetNormal0ModeHangZData }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_FREEFAL
    { CAM_FUNC_BATT4, ARRAY_COUNT(sSetNormal0ModeChargeData), sSetNormal0ModeChargeData }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetNormal0ModeStillData), sSetNormal0ModeStillData }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModePushPullData), sSetNormal0ModePushPullData }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowBoomerangData), sSetNormal0ModeFollowBoomerangData }, // CAM_MODE_FOLLOWBOOMERANG
};

/**
 * Camera Setting: BOSS_TWINROVA_FLOOR
 */
CameraMode sCamSetBossTwinrovaFloorModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetBossTwinrovaFloorModeNormalData), sSetBossTwinrovaFloorModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModeTargetData), sSetNormal0ModeTargetData }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowTargetData), sSetNormal0ModeFollowTargetData }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetNormal0ModeTalkData), sSetNormal0ModeTalkData }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetBossTwinrovaModeBattleData), sSetBossTwinrovaModeBattleData }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbData), sSetNormal0ModeClimbData }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeFirstPersonData), sSetNormal0ModeFirstPersonData }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowData), sSetNormal0ModeBowArrowData }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowZData), sSetNormal0ModeBowArrowZData }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(sSetNormal0ModeHookshotData), sSetNormal0ModeHookshotData }, // CAM_MODE_HOOKSHOT,
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBoomerangData), sSetNormal0ModeBoomerangData }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeSlingshotData), sSetNormal0ModeSlingshotData }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbZData), sSetNormal0ModeClimbZData }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangData), sSetNormal0ModeHangData }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangZData), sSetNormal0ModeHangZData }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_FREEFAL
    { CAM_FUNC_BATT4, ARRAY_COUNT(sSetNormal0ModeChargeData), sSetNormal0ModeChargeData }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetNormal0ModeStillData), sSetNormal0ModeStillData }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModePushPullData), sSetNormal0ModePushPullData }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowBoomerangData), sSetNormal0ModeFollowBoomerangData }, // CAM_MODE_FOLLOWBOOMERANG
};

/**
 * Camera Setting: BOSS_GANONDORF
 */
CameraMode sCamSetBossGanondorfModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetBossGanondorfModeNormalData), sSetBossGanondorfModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModeTargetData), sSetNormal0ModeTargetData }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowTargetData), sSetNormal0ModeFollowTargetData }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetNormal0ModeTalkData), sSetNormal0ModeTalkData }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetBossPhantomGanonModeBattleData), sSetBossPhantomGanonModeBattleData }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbData), sSetNormal0ModeClimbData }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeFirstPersonData), sSetNormal0ModeFirstPersonData }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowData), sSetNormal0ModeBowArrowData }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowZData), sSetNormal0ModeBowArrowZData }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(sSetNormal0ModeHookshotData), sSetNormal0ModeHookshotData }, // CAM_MODE_HOOKSHOT,
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBoomerangData), sSetNormal0ModeBoomerangData }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeSlingshotData), sSetNormal0ModeSlingshotData }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbZData), sSetNormal0ModeClimbZData }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangData), sSetNormal0ModeHangData }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangZData), sSetNormal0ModeHangZData }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_FREEFAL
    { CAM_FUNC_BATT4, ARRAY_COUNT(sSetBossGanondorfModeChargeData), sSetBossGanondorfModeChargeData }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetNormal0ModeStillData), sSetNormal0ModeStillData }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModePushPullData), sSetNormal0ModePushPullData }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowBoomerangData), sSetNormal0ModeFollowBoomerangData }, // CAM_MODE_FOLLOWBOOMERANG
};

/**
 * Camera Setting: BOSS_GANON
 */
CameraMode sCamSetBossGanonModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetBossGanonModeNormalData), sSetBossGanonModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModeTargetData), sSetNormal0ModeTargetData }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowTargetData), sSetNormal0ModeFollowTargetData }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetNormal0ModeTalkData), sSetNormal0ModeTalkData }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetBossGanonModeBattleData), sSetBossGanonModeBattleData }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbData), sSetNormal0ModeClimbData }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeFirstPersonData), sSetNormal0ModeFirstPersonData }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowData), sSetNormal0ModeBowArrowData }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowZData), sSetNormal0ModeBowArrowZData }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(sSetNormal0ModeHookshotData), sSetNormal0ModeHookshotData }, // CAM_MODE_HOOKSHOT,
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBoomerangData), sSetNormal0ModeBoomerangData }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeSlingshotData), sSetNormal0ModeSlingshotData }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbZData), sSetNormal0ModeClimbZData }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangData), sSetNormal0ModeHangData }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangZData), sSetNormal0ModeHangZData }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_FREEFAL
    { CAM_FUNC_BATT4, ARRAY_COUNT(sSetNormal0ModeChargeData), sSetNormal0ModeChargeData }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetNormal0ModeStillData), sSetNormal0ModeStillData }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModePushPullData), sSetNormal0ModePushPullData }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowBoomerangData), sSetNormal0ModeFollowBoomerangData }, // CAM_MODE_FOLLOWBOOMERANG
};

/**
 * Camera Setting: TOWER_CLIMB
 */
CameraMode sCamSetTowerClimbModes[] = {
    { CAM_FUNC_NORM2, ARRAY_COUNT(sSetTowerClimbModeNormalData), sSetTowerClimbModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModeTargetData), sSetNormal0ModeTargetData }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowTargetData), sSetNormal0ModeFollowTargetData }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetNormal0ModeTalkData), sSetNormal0ModeTalkData }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetNormal0ModeBattleData), sSetNormal0ModeBattleData }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbData), sSetNormal0ModeClimbData }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeFirstPersonData), sSetNormal0ModeFirstPersonData }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowData), sSetNormal0ModeBowArrowData }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowZData), sSetNormal0ModeBowArrowZData }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(sSetNormal0ModeHookshotData), sSetNormal0ModeHookshotData }, // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBoomerangData), sSetNormal0ModeBoomerangData }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeSlingshotData), sSetNormal0ModeSlingshotData }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbZData), sSetNormal0ModeClimbZData }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_NORM2, ARRAY_COUNT(sSetTowerClimbModeJumpData), sSetTowerClimbModeJumpData }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangData), sSetNormal0ModeHangData }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangZData), sSetNormal0ModeHangZData }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(sSetNormal0ModeChargeData), sSetNormal0ModeChargeData }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetNormal0ModeStillData), sSetNormal0ModeStillData }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModePushPullData), sSetNormal0ModePushPullData }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowBoomerangData), sSetNormal0ModeFollowBoomerangData }, // CAM_MODE_FOLLOWBOOMERANG
};

/**
 * Camera Setting: TOWER_UNUSED
 */
CameraMode sCamSetTowerUnusedModes[] = {
    { CAM_FUNC_NORM2, ARRAY_COUNT(sSetTowerUnusedModeNormalData), sSetTowerUnusedModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModeTargetData), sSetNormal0ModeTargetData }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowTargetData), sSetNormal0ModeFollowTargetData }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetNormal0ModeTalkData), sSetNormal0ModeTalkData }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetNormal0ModeBattleData), sSetNormal0ModeBattleData }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbData), sSetNormal0ModeClimbData }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeFirstPersonData), sSetNormal0ModeFirstPersonData }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowData), sSetNormal0ModeBowArrowData }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowZData), sSetNormal0ModeBowArrowZData }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(sSetNormal0ModeHookshotData), sSetNormal0ModeHookshotData }, // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBoomerangData), sSetNormal0ModeBoomerangData }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeSlingshotData), sSetNormal0ModeSlingshotData }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbZData), sSetNormal0ModeClimbZData }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_NORM2, ARRAY_COUNT(sSetTowerUnusedModeJumpData), sSetTowerUnusedModeJumpData }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangData), sSetNormal0ModeHangData }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangZData), sSetNormal0ModeHangZData }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(sSetNormal0ModeChargeData), sSetNormal0ModeChargeData }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetNormal0ModeStillData), sSetNormal0ModeStillData }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModePushPullData), sSetNormal0ModePushPullData }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowBoomerangData), sSetNormal0ModeFollowBoomerangData }, // CAM_MODE_FOLLOWBOOMERANG
};

/**
 * Camera Setting: MARKET_BALCONY
 */
CameraMode sCamSetMarketBalconyModes[] = {
    { CAM_FUNC_FIXD1, ARRAY_COUNT(sSetMarketBalconyModeNormalData), sSetMarketBalconyModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_NONE, 0, NULL },                                                    // CAM_MODE_TARGET
    { CAM_FUNC_FIXD1, ARRAY_COUNT(sSetMarketBalconyModeFollowTargetData), sSetMarketBalconyModeFollowTargetData },                       // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_FIXD1, ARRAY_COUNT(sSetMarketBalconyModeTalkData), sSetMarketBalconyModeTalkData },                       // CAM_MODE_TALK
};

/**
 * Camera Setting: CHU_BOWLING
 */
CameraMode sCamSetChuBowlingModes[] = {
    { CAM_FUNC_FIXD1, ARRAY_COUNT(sSetChuBowlingModeNormalData), sSetChuBowlingModeNormalData }, // CAM_MODE_NORMAL
};

/**
 * Camera Setting: PIVOT_CRAWLSPACE
 */
CameraMode sCamSetPivotCrawlspaceModes[] = {
    { CAM_FUNC_FIXD2, ARRAY_COUNT(sSetPivotCrawlspaceModeNormalData), sSetPivotCrawlspaceModeNormalData }, // CAM_MODE_NORMAL
};

/**
 * Camera Setting: PIVOT_SHOP_BROWSING
 */
CameraMode sCamSetPivotShopBrowsingModes[] = {
    { CAM_FUNC_DATA4, ARRAY_COUNT(sSetPivotShopBrowsingModeNormalData), sSetPivotShopBrowsingModeNormalData }, // CAM_MODE_NORMAL
};

/**
 * Camera Setting: PIVOT_IN_FRONT
 */
CameraMode sCamSetPivotInFrontModes[] = {
    { CAM_FUNC_FIXD4, ARRAY_COUNT(sSetPivotInFrontAndFromSideModeNormalData), sSetPivotInFrontAndFromSideModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModeTargetData), sSetNormal0ModeTargetData }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowTargetData), sSetNormal0ModeFollowTargetData }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetNormal0ModeTalkData), sSetNormal0ModeTalkData }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetNormal1ModeBattleData), sSetNormal1ModeBattleData }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbData), sSetNormal0ModeClimbData }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeFirstPersonData), sSetNormal0ModeFirstPersonData }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowData), sSetNormal0ModeBowArrowData }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowZData), sSetNormal0ModeBowArrowZData }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(sSetNormal0ModeHookshotData), sSetNormal0ModeHookshotData }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBoomerangData), sSetNormal0ModeBoomerangData }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeSlingshotData), sSetNormal0ModeSlingshotData }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbZData), sSetNormal0ModeClimbZData }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_JUMP
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_HANG
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_HANGZ
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(sSetNormal0ModeChargeData), sSetNormal0ModeChargeData }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetNormal0ModeStillData), sSetNormal0ModeStillData }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModePushPullData), sSetNormal0ModePushPullData }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowBoomerangData), sSetNormal0ModeFollowBoomerangData }, // CAM_MODE_FOLLOWBOOMERANG
};

/**
 * Camera Setting: PREREND_FIXED
 */
CameraMode sCamSetPreRendFixedModes[] = {
    { CAM_FUNC_FIXD3, ARRAY_COUNT(sDataOnlyNullFlags), sDataOnlyNullFlags },                           // CAM_MODE_NORMAL
    { CAM_FUNC_NONE, 0, NULL },                                                        // CAM_MODE_TARGET
    { CAM_FUNC_FIXD3, ARRAY_COUNT(sSetPrerendFixedModeFollowTargetData), sSetPrerendFixedModeFollowTargetData }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_FIXD3, ARRAY_COUNT(sSetPrerendFixedModeFollowTargetData), sSetPrerendFixedModeFollowTargetData }, // CAM_MODE_TALK
};

/**
 * Camera Setting: PREREND_PIVOT
 */
CameraMode sCamSetPreRendPivotModes[] = {
    { CAM_FUNC_UNIQ7, ARRAY_COUNT(sSetPrerendPivotModeNormalData), sSetPrerendPivotModeNormalData },           // CAM_MODE_NORMAL
    { CAM_FUNC_NONE, 0, NULL },                                                          // CAM_MODE_TARGET
    { CAM_FUNC_UNIQ7, ARRAY_COUNT(sSetPrerendPivotModeFollowTargetData), sSetPrerendPivotModeFollowTargetData },           // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP0, ARRAY_COUNT(sSetPrerendPivotModeTalkData), sSetPrerendPivotModeTalkData }, // CAM_MODE_TALK
};

/**
 * Camera Setting: PREREND_SIDE_SCROLL
 */
CameraMode sCamSetPreRendSideScrollModes[] = {
    { CAM_FUNC_SPEC6, ARRAY_COUNT(sDataOnlyNullFlags), sDataOnlyNullFlags }, // CAM_MODE_NORMAL
};

/**
 * Camera Setting: DOOR0
 */
CameraMode sCamSetDoor0Modes[] = {
    { CAM_FUNC_UNIQ3, ARRAY_COUNT(sSetDoor0ModeNormalData), sSetDoor0ModeNormalData }, // CAM_MODE_NORMAL
};

/**
 * Camera Setting: DOORC
 */
CameraMode sCamSetDoorCModes[] = {
    { CAM_FUNC_SPEC9, ARRAY_COUNT(sSetDoorCModeNormalData), sSetDoorCModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_SPEC9, ARRAY_COUNT(sSetDoorCModeTargetData), sSetDoorCModeTargetData }, // CAM_MODE_TARGET
};

/**
 * Camera Setting: CRAWLSPACE
 */
CameraMode sCamSetCrawlspaceModes[] = {
    { CAM_FUNC_SUBJ4, ARRAY_COUNT(sSetCrawlspaceModeNormalData), sSetCrawlspaceModeNormalData }, // CAM_MODE_NORMAL
};

/**
 * Camera Setting: START0
 */
CameraMode sCamSetStart0Modes[] = {
    { CAM_FUNC_UNIQ0, ARRAY_COUNT(sDataOnlyNullFlags), sDataOnlyNullFlags }, // CAM_MODE_NORMAL
};

/**
 * Camera Setting: START1
 */
CameraMode sCamSetStart1Modes[] = {
    { CAM_FUNC_UNIQ0, ARRAY_COUNT(sSetStart1ModeNormalData), sSetStart1ModeNormalData }, // CAM_MODE_NORMAL
};

/**
 * Camera Setting: FREE0
 */
CameraMode sCamSetFree0Modes[] = {
    { CAM_FUNC_UNIQ6, ARRAY_COUNT(sSetFree0ModeNormalData), sSetFree0ModeNormalData }, // CAM_MODE_NORMAL
};

/**
 * Camera Setting: FREE2
 */
CameraMode sCamSetFree1Modes[] = {
    { CAM_FUNC_UNIQ6, ARRAY_COUNT(sSetFree1ModeNormalData), sSetFree1ModeNormalData }, // CAM_MODE_NORMAL
};

/**
 * Camera Setting: PIVOT_CORNER
 */
CameraMode sCamSetPivotCornerModes[] = {
    { CAM_FUNC_FIXD2, ARRAY_COUNT(sSetPivotCornerModeNormalData), sSetPivotCornerModeNormalData }, // CAM_MODE_NORMAL
};

/**
 * Camera Setting: PIVOT_PIVOT_WATER_SURFACE
 */
CameraMode sCamSetPivotDivingModes[] = {
    { CAM_FUNC_UNIQ2, ARRAY_COUNT(sSetPivotWaterSurfaceModeNormalData), sSetPivotWaterSurfaceModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_UNIQ2, ARRAY_COUNT(sSetPivotWaterSurfaceModeTargetData), sSetPivotWaterSurfaceModeTargetData }, // CAM_MODE_TARGET
};

/**
 * Camera Setting: CS_0
 */
CameraMode sCamSetCs0Modes[] = {
    { CAM_FUNC_DEMO1, ARRAY_COUNT(sDataOnlyInterfaceFlags), sDataOnlyInterfaceFlags }, // CAM_MODE_NORMAL
};

/**
 * Camera Setting: CS_TWISTED_HALLWAY
 */
CameraMode sCamSetCsTwistedHallwayModes[] = {
    { CAM_FUNC_DEMO2, ARRAY_COUNT(sDataOnlyInterfaceFlags), sDataOnlyInterfaceFlags }, // CAM_MODE_NORMAL
};

/**
 * Camera Setting: FOREST_BIRDS_EYE
 */
CameraMode sCamSetForestBirdsEyeModes[] = {
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetForestBirdsEyeModeNormalData), sSetForestBirdsEyeModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_NONE, 0, NULL },                                                    // CAM_MODE_TARGET
    { CAM_FUNC_NONE, 0, NULL },                                                    // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_PARA3, ARRAY_COUNT(sSetForestBirdsEyeModeTalkData), sSetForestBirdsEyeModeTalkData },                       // CAM_MODE_TALK
};

/**
 * Camera Setting: SLOW_CHEST_CS
 */
CameraMode sCamSetSlowChestCsModes[] = {
    { CAM_FUNC_DEMO3, ARRAY_COUNT(sSetSlowChestCsModeNormalData), sSetSlowChestCsModeNormalData }, // CAM_MODE_NORMAL
};

/**
 * Camera Setting: ITEM_UNUSED
 */
CameraMode sCamSetItemUnusedModes[] = {
    { CAM_FUNC_DEMO4, ARRAY_COUNT(sSetSlowChestCsModeNormalData), sSetSlowChestCsModeNormalData }, // CAM_MODE_NORMAL
};

/**
 * Camera Setting: CS_3
 */
CameraMode sCamSetCs3Modes[] = {
    { CAM_FUNC_DEMO9, ARRAY_COUNT(sSetCs3ModeNormalData), sSetCs3ModeNormalData }, // CAM_MODE_NORMAL
};

/**
 * Camera Setting: CS_ATTENTION
 */
CameraMode sCamSetCsAttentionModes[] = {
    { CAM_FUNC_DEMO5, ARRAY_COUNT(sDataOnlyInterfaceFlags), sDataOnlyInterfaceFlags }, // CAM_MODE_NORMAL
};

/**
 * Camera Setting: BEAN_GENERIC
 */
CameraMode sCamSetBeanGenericModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetBeanGenericModeNormalData), sSetBeanGenericModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetBeanGenericModeTargetData), sSetBeanGenericModeTargetData }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowTargetData), sSetNormal0ModeFollowTargetData }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetNormal0ModeTalkData), sSetNormal0ModeTalkData }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetNormal1ModeBattleData), sSetNormal1ModeBattleData }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbData), sSetNormal0ModeClimbData }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeFirstPersonData), sSetNormal0ModeFirstPersonData }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowData), sSetNormal0ModeBowArrowData }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowZData), sSetNormal0ModeBowArrowZData }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(sSetNormal0ModeHookshotData), sSetNormal0ModeHookshotData }, // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBoomerangData), sSetNormal0ModeBoomerangData }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeSlingshotData), sSetNormal0ModeSlingshotData }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbZData), sSetNormal0ModeClimbZData }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetBeanGenericModeJumpData), sSetBeanGenericModeJumpData }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetBeanGenericModeHangData), sSetBeanGenericModeHangData }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetBeanGenericModeHangZData), sSetBeanGenericModeHangZData }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(sSetNormal0ModeChargeData), sSetNormal0ModeChargeData }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetBeanGenericModeStillData), sSetBeanGenericModeStillData }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModePushPullData), sSetNormal0ModePushPullData }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowBoomerangData), sSetNormal0ModeFollowBoomerangData }, // CAM_MODE_FOLLOWBOOMERANG
};

/**
 * Camera Setting: BEAN_LOST_WOODS
 */
CameraMode sCamSetBeanLostWoodsModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetBeanLostWoodsModeNormalData), sSetBeanLostWoodsModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetBeanLostWoodsModeTargetData), sSetBeanLostWoodsModeTargetData }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowTargetData), sSetNormal0ModeFollowTargetData }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetNormal0ModeTalkData), sSetNormal0ModeTalkData }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetNormal1ModeBattleData), sSetNormal1ModeBattleData }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbData), sSetNormal0ModeClimbData }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeFirstPersonData), sSetNormal0ModeFirstPersonData }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowData), sSetNormal0ModeBowArrowData }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowZData), sSetNormal0ModeBowArrowZData }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(sSetNormal0ModeHookshotData), sSetNormal0ModeHookshotData }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBoomerangData), sSetNormal0ModeBoomerangData }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeSlingshotData), sSetNormal0ModeSlingshotData }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbZData), sSetNormal0ModeClimbZData }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetBeanLostWoodsModeJumpData), sSetBeanLostWoodsModeJumpData }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetBeanLostWoodsModeHangData), sSetBeanLostWoodsModeHangData }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetBeanLostWoodsModeHangZData), sSetBeanLostWoodsModeHangZData }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(sSetNormal0ModeChargeData), sSetNormal0ModeChargeData }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetBeanLostWoodsModeStillData), sSetBeanLostWoodsModeStillData }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModePushPullData), sSetNormal0ModePushPullData }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowBoomerangData), sSetNormal0ModeFollowBoomerangData }, // CAM_MODE_FOLLOWBOOMERANG
};

/**
 * Camera Setting: SCENE_UNUSED
 */
CameraMode sCamSetSceneUnusedModes[] = {
    { CAM_FUNC_SPEC9, ARRAY_COUNT(sSetSceneUnusedModeNormalData), sSetSceneUnusedModeNormalData }, // CAM_MODE_NORMAL
};

/**
 * Camera Setting: SCENE_TRANSITION
 */
CameraMode sCamSetSceneTransitionModes[] = {
    { CAM_FUNC_UNIQ2, ARRAY_COUNT(sSetSceneTransitionModeNormalData), sSetSceneTransitionModeNormalData }, // CAM_MODE_NORMAL
};

/**
 * Camera Setting: FIRE_PLATFORM
 */
CameraMode sCamSetFirePlatformModes[] = {
    { CAM_FUNC_SPEC7, ARRAY_COUNT(sDataOnlyNullFlags), sDataOnlyNullFlags }, // CAM_MODE_NORMAL
};

/**
 * Camera Setting: FIRE_STAIRCASE
 */
CameraMode sCamSetFireStaircaseModes[] = {
    { CAM_FUNC_SPEC4, ARRAY_COUNT(sDataOnlyInterfaceFlags), sDataOnlyInterfaceFlags }, // CAM_MODE_NORMAL
};

/**
 * Camera Setting: FOREST_UNUSED
 */
CameraMode sCamSetForestUnusedModes[] = {
    { CAM_FUNC_UNIQ5, ARRAY_COUNT(sDataOnlyInterfaceFlags), sDataOnlyInterfaceFlags }, // CAM_MODE_NORMAL
};

/**
 * Camera Setting: FOREST_DEFEAT_POE
 */
CameraMode sCamSetForestDefeatPoeModes[] = {
    { CAM_FUNC_DEMO6, ARRAY_COUNT(sDataOnlyInterfaceFlags), sDataOnlyInterfaceFlags }, // CAM_MODE_NORMAL
};

/**
 * Camera Setting: BIG_OCTO
 */
CameraMode sCamSetBigOctoModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetBigOctoModeNormalData), sSetBigOctoModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetDungeon0ModeTargetData), sSetDungeon0ModeTargetData }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetDungeon0ModeFollowTargetData), sSetDungeon0ModeFollowTargetData }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetNormal0ModeTalkData), sSetNormal0ModeTalkData }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetBigOctoModeBattleData), sSetBigOctoModeBattleData }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetDungeon0ModeClimbData), sSetDungeon0ModeClimbData }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeFirstPersonData), sSetNormal0ModeFirstPersonData }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowData), sSetNormal0ModeBowArrowData }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowZData), sSetNormal0ModeBowArrowZData }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(sSetNormal1ModeHookshotData), sSetNormal1ModeHookshotData }, // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBoomerangData), sSetNormal0ModeBoomerangData }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeSlingshotData), sSetNormal0ModeSlingshotData }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetDungeon0ModeClimbZData), sSetDungeon0ModeClimbZData }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetDungeon0ModeJumpData), sSetDungeon0ModeJumpData }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetDungeon0ModeHangData), sSetDungeon0ModeHangData }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetDungeon0ModeHangZData), sSetDungeon0ModeHangZData }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetDungeon0ModeFreeFallData), sSetDungeon0ModeFreeFallData }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(sSetDungeon0ModeChargeData), sSetDungeon0ModeChargeData }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetBigOctoModeStillData), sSetBigOctoModeStillData }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModePushPullData), sSetNormal0ModePushPullData }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowBoomerangData), sSetNormal0ModeFollowBoomerangData }, // CAM_MODE_FOLLOWBOOMERANG
};

/**
 * Camera Setting: MEADOW_BIRDS_EYE
 */
CameraMode sCamSetMeadowBirdsEyeModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetMeadowBirdsEyeModeNormalData), sSetMeadowBirdsEyeModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetMeadowBirdsEyeModeTargetData), sSetMeadowBirdsEyeModeTargetData }, // CAM_MODE_TARGET
    { 0, 0, NULL },                                          // CAM_MODE_FOLLOWTARGET
    { 0, 0, NULL },                                          // CAM_MODE_TALK
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetMeadowBirdsEyeModeBattleData), sSetMeadowBirdsEyeModeBattleData }, // CAM_MODE_BATTLE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetMeadowBirdsEyeModeClimbData), sSetMeadowBirdsEyeModeClimbData }, // CAM_MODE_CLIMB
};

/**
 * Camera Setting: MEADOW_UNUSED
 */
CameraMode sCamSetMeadowUnusedModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetMeadowUnusedModeNormalData), sSetMeadowUnusedModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetMeadowUnusedModeTargetData), sSetMeadowUnusedModeTargetData }, // CAM_MODE_TARGET
    { 0, 0, NULL },                                          // CAM_MODE_FOLLOWTARGET
    { 0, 0, NULL },                                          // CAM_MODE_TALK
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetMeadowUnusedModeBattleData), sSetMeadowUnusedModeBattleData }, // CAM_MODE_BATTLE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetMeadowUnusedModeClimbData), sSetMeadowUnusedModeClimbData }, // CAM_MODE_CLIMB
};

/**
 * Camera Setting: FIRE_BIRDS_EYE
 */
CameraMode sCamSetFireBirdsEyeModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetFireBirdsEyeModeNormalData), sSetFireBirdsEyeModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetFireBirdsEyeModeTargetData), sSetFireBirdsEyeModeTargetData }, // CAM_MODE_TARGET
    { 0, 0, NULL },                                          // CAM_MODE_FOLLOWTARGET
    { 0, 0, NULL },                                          // CAM_MODE_TALK
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetFireBirdsEyeModeBattleData), sSetFireBirdsEyeModeBattleData }, // CAM_MODE_BATTLE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetFireBirdsEyeModeClimbData), sSetFireBirdsEyeModeClimbData }, // CAM_MODE_CLIMB
};

/**
 * Camera Setting: TURN_AROUND
 */
CameraMode sCamSetTurnAroundModes[] = {
    { CAM_FUNC_KEEP4, ARRAY_COUNT(sSetTurnAroundModeNormalData), sSetTurnAroundModeNormalData }, // CAM_MODE_NORMAL
};

/**
 * Camera Setting: PIVOT_VERTICAL
 */
CameraMode sCamSetPivotVerticalModes[] = {
    { CAM_FUNC_SPEC0, ARRAY_COUNT(sSetPivotVerticalModeNormalData), sSetPivotVerticalModeNormalData }, // CAM_MODE_NORMAL
};

/**
 * Camera Setting: NORMAL2
 */
CameraMode sCamSetNorm2Modes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetNormal2and4ModeNormalData), sSetNormal2and4ModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModeTargetData), sSetNormal0ModeTargetData }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowTargetData), sSetNormal0ModeFollowTargetData }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetNormal0ModeTalkData), sSetNormal0ModeTalkData }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetNormal1ModeBattleData), sSetNormal1ModeBattleData }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbData), sSetNormal0ModeClimbData }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeFirstPersonData), sSetNormal0ModeFirstPersonData }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowData), sSetNormal0ModeBowArrowData }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowZData), sSetNormal0ModeBowArrowZData }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(sSetNormal0ModeHookshotData), sSetNormal0ModeHookshotData }, // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBoomerangData), sSetNormal0ModeBoomerangData }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeSlingshotData), sSetNormal0ModeSlingshotData }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbZData), sSetNormal0ModeClimbZData }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangData), sSetNormal0ModeHangData }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangZData), sSetNormal0ModeHangZData }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(sSetNormal0ModeChargeData), sSetNormal0ModeChargeData }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetNormal0ModeStillData), sSetNormal0ModeStillData }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModePushPullData), sSetNormal0ModePushPullData }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowBoomerangData), sSetNormal0ModeFollowBoomerangData }, // CAM_MODE_FOLLOWBOOMERANG
};

/**
 * Camera Setting: FISHING
 */
CameraMode sCamSetFishingModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetFishingModeNormalData), sSetFishingModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetFishingModeTargetData), sSetFishingModeTargetData }, // CAM_MODE_TARGET
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetFishingModeFollowTargetData), sSetFishingModeFollowTargetData }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetFishingModeTalkData), sSetFishingModeTalkData }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetFishingModeFollowTargetData), sSetFishingModeFollowTargetData }, // CAM_MODE_BATTLE
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetFishingModeFirstPersonData), sSetFishingModeFirstPersonData }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_BOWARROW
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_BOWARROWZ
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_HOOKSHOT
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_BOOMERANG
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_SLINGSHOT
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetFishingModeJumpData), sSetFishingModeJumpData }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetFishingModeHangData), sSetFishingModeHangData }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetFishingModeHangZData), sSetFishingModeHangZData }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetFishingModeFreeFallData), sSetFishingModeFreeFallData }, // CAM_MODE_FREEFALL
};

/**
 * Camera Setting: CS_C
 */
CameraMode sCamSetCsCModes[] = {
    { CAM_FUNC_UNIQ9, ARRAY_COUNT(sSetCsCModeNormalData), sSetCsCModeNormalData }, // CAM_MODE_NORMAL
};

/**
 * Camera Setting: JABU_TENTACLE
 */
CameraMode sCamSetJabuTentacleModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetJabuTentacleModeNormalData), sSetJabuTentacleModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModeTargetData), sSetNormal0ModeTargetData }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowTargetData), sSetNormal0ModeFollowTargetData }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetNormal0ModeTalkData), sSetNormal0ModeTalkData }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetJabuTentacleModeBattleData), sSetJabuTentacleModeBattleData }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbData), sSetNormal0ModeClimbData }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeFirstPersonData), sSetNormal0ModeFirstPersonData }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowData), sSetNormal0ModeBowArrowData }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowZData), sSetNormal0ModeBowArrowZData }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(sSetNormal0ModeHookshotData), sSetNormal0ModeHookshotData }, // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBoomerangData), sSetNormal0ModeBoomerangData }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeSlingshotData), sSetNormal0ModeSlingshotData }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbZData), sSetNormal0ModeClimbZData }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangData), sSetNormal0ModeHangData }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangZData), sSetNormal0ModeHangZData }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(sSetNormal0ModeChargeData), sSetNormal0ModeChargeData }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetNormal0ModeStillData), sSetNormal0ModeStillData }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModePushPullData), sSetNormal0ModePushPullData }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowBoomerangData), sSetNormal0ModeFollowBoomerangData }, // CAM_MODE_FOLLOWBOOMERANG
};

/**
 * Camera Setting: DUNGEON2
 */
CameraMode sCamSetDungeon2Modes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetDungeon2ModeNormalData), sSetDungeon2ModeNormalData },                       // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetDungeon2ModeTargetData), sSetDungeon2ModeTargetData },                       // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetDungeon0ModeFollowTargetData), sSetDungeon0ModeFollowTargetData },                       // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetNormal0ModeTalkData), sSetNormal0ModeTalkData },                       // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetDungeon2ModeBattleData), sSetDungeon2ModeBattleData }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetDungeon2ModeClimbData), sSetDungeon2ModeClimbData },                       // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeFirstPersonData), sSetNormal0ModeFirstPersonData },                       // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowData), sSetNormal0ModeBowArrowData },                       // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowZData), sSetNormal0ModeBowArrowZData },                       // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(sSetNormal1ModeHookshotData), sSetNormal1ModeHookshotData },                       // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBoomerangData), sSetNormal0ModeBoomerangData },                       // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeSlingshotData), sSetNormal0ModeSlingshotData },                       // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetDungeon2ModeClimbZData), sSetDungeon2ModeClimbZData },                       // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetDungeon2ModeJumpData), sSetDungeon2ModeJumpData },                       // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetDungeon2ModeHangData), sSetDungeon2ModeHangData },                       // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetDungeon2ModeHangZData), sSetDungeon2ModeHangZData },                       // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetDungeon2ModeFreeFallData), sSetDungeon2ModeFreeFallData },                       // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(sSetNormal0ModeChargeData), sSetNormal0ModeChargeData },                       // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetDungeon2ModeStillData), sSetDungeon2ModeStillData },                       // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetDungeon2ModePushPullData), sSetDungeon2ModePushPullData },                       // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowBoomerangData), sSetNormal0ModeFollowBoomerangData },                       // CAM_MODE_FOLLOWBOOMERANG
};

/**
 * Camera Setting: DIRECTED_YAW
 */
CameraMode sCamSetDirectedYawModes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetDirectedYawModeNormalData), sSetDirectedYawModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModeTargetData), sSetNormal0ModeTargetData }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetDirectedYawModeFollowTargetData), sSetDirectedYawModeFollowTargetData }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetDirectedYawModeTalkData), sSetDirectedYawModeTalkData }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetNormal0ModeBattleData), sSetNormal0ModeBattleData }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbData), sSetNormal0ModeClimbData }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeFirstPersonData), sSetNormal0ModeFirstPersonData }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowData), sSetNormal0ModeBowArrowData }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowZData), sSetNormal0ModeBowArrowZData }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(sSetNormal0ModeHookshotData), sSetNormal0ModeHookshotData }, // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBoomerangData), sSetNormal0ModeBoomerangData }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeSlingshotData), sSetNormal0ModeSlingshotData }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbZData), sSetNormal0ModeClimbZData }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangData), sSetNormal0ModeHangData }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangZData), sSetNormal0ModeHangZData }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(sSetNormal0ModeChargeData), sSetNormal0ModeChargeData }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetNormal0ModeStillData), sSetNormal0ModeStillData }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModePushPullData), sSetNormal0ModePushPullData }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowBoomerangData), sSetNormal0ModeFollowBoomerangData }, // CAM_MODE_FOLLOWBOOMERANG
};

/**
 * Camera Setting: PIVOT_FROM_SIDE
 */
CameraMode sCamSetPivotFromSideModes[] = {
    { CAM_FUNC_FIXD4, ARRAY_COUNT(sSetPivotInFrontAndFromSideModeNormalData), sSetPivotInFrontAndFromSideModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_TARGET
    { CAM_FUNC_FIXD4, ARRAY_COUNT(sSetPivotInFrontAndFromSideModeNormalData), sSetPivotInFrontAndFromSideModeNormalData }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sSetNormal0ModeTalkData), sSetNormal0ModeTalkData }, // CAM_MODE_TALK
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_BATTLE
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeFirstPersonData), sSetNormal0ModeFirstPersonData }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowData), sSetNormal0ModeBowArrowData }, // CAM_MODE_BOWARROW
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(sSetNormal0ModeHookshotData), sSetNormal0ModeHookshotData }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBoomerangData), sSetNormal0ModeBoomerangData }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeSlingshotData), sSetNormal0ModeSlingshotData }, // CAM_MODE_SLINGSHOT
};

/**
 * Camera Setting: NORMAL4
 */
CameraMode sCamSetNormal4Modes[] = {
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetNormal2and4ModeNormalData), sSetNormal2and4ModeNormalData }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModeTargetData), sSetNormal0ModeTargetData }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowTargetData), sSetNormal0ModeFollowTargetData }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, ARRAY_COUNT(sNormal4ModeTalkData), sNormal4ModeTalkData }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, ARRAY_COUNT(sSetNormal1ModeBattleData), sSetNormal1ModeBattleData }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbData), sSetNormal0ModeClimbData }, // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeFirstPersonData), sSetNormal0ModeFirstPersonData }, // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowData), sSetNormal0ModeBowArrowData }, // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBowArrowZData), sSetNormal0ModeBowArrowZData }, // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, ARRAY_COUNT(sSetNormal0ModeHookshotData), sSetNormal0ModeHookshotData }, // CAM_MODE_HOOKSHOT
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeBoomerangData), sSetNormal0ModeBoomerangData }, // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, ARRAY_COUNT(sSetNormal0ModeSlingshotData), sSetNormal0ModeSlingshotData }, // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, ARRAY_COUNT(sSetNormal0ModeClimbZData), sSetNormal0ModeClimbZData }, // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangData), sSetNormal0ModeHangData }, // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, ARRAY_COUNT(sSetNormal0ModeHangZData), sSetNormal0ModeHangZData }, // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, ARRAY_COUNT(sSetNormal0ModeJumpData), sSetNormal0ModeJumpData }, // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, ARRAY_COUNT(sSetNormal0ModeChargeData), sSetNormal0ModeChargeData }, // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, ARRAY_COUNT(sSetNormal0ModeStillData), sSetNormal0ModeStillData }, // CAM_MODE_STILL
    { CAM_FUNC_PARA1, ARRAY_COUNT(sSetNormal0ModePushPullData), sSetNormal0ModePushPullData }, // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, ARRAY_COUNT(sSetNormal0ModeFollowBoomerangData), sSetNormal0ModeFollowBoomerangData }, // CAM_MODE_FOLLOWBOOMERANG
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
    { { 0x05000001 }, sCamSetFree1Modes },                // CAM_SET_FREE2
    { { 0x85000001 }, sCamSetPivotCornerModes },          // CAM_SET_PIVOT_CORNER
    { { 0x05000003 }, sCamSetPivotDivingModes },          // CAM_SET_PIVOT_PIVOT_WATER_SURFACE
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
    { { 0x05000001 }, sCamSetFirePlatformModes },         // CAM_SET_FIRE_PLATFORM
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
