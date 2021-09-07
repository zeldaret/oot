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

CameraModeValue D_8011A3A0[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011A3C8[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011A3F4[] = {
    /* CAM_FUNC_KEEP1 */
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

CameraModeValue D_8011A428[] = {
    /* CAM_FUNC_KEEP3 */
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

CameraModeValue D_8011A458[] = {
    /* CAM_FUNC_BATT1 */
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

CameraModeValue D_8011A488[] = {
    /* CAM_FUNC_JUMP2 */
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

CameraModeValue D_8011A4AC[] = {
    /* CAM_FUNC_SUBJ3 */
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

CameraModeValue D_8011A4D0[] = {
    /* CAM_FUNC_SUBJ3 */
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

CameraModeValue D_8011A4F4[] = {
    /* CAM_FUNC_SUBJ3 */
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

CameraModeValue D_8011A518[] = {
    /* CAM_FUNC_SPEC5 */
    { -20, CAM_DATA_Y_OFFSET },          // yOffset
    { 80, CAM_DATA_EYE_DIST },           // eyeDist
    { 250, CAM_DATA_EYE_DIST_NEXT },     // minDistForRot
    { 45, CAM_DATA_PITCH_TARGET },       // timerInit
    { 60, CAM_DATA_FOV },                // pitch
    { 40, CAM_DATA_AT_LERP_STEP_SCALE }, // fovTarget
    { 6, CAM_DATA_UNK_22 },              // atMaxLERPScale
    { 0x2000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011A538[] = {
    /* CAM_FUNC_SUBJ3 */
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

CameraModeValue D_8011A55C[] = {
    /* CAM_FUNC_SUBJ3 */
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

CameraModeValue D_8011A580[] = {
    /* CAM_FUNC_JUMP2 */
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

CameraModeValue D_8011A5A4[] = {
    /* CAM_FUNC_JUMP1 */
    { -20, CAM_DATA_Y_OFFSET },              // atYOffset
    { 200, CAM_DATA_EYE_DIST },              // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 12, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateRateTarget
    { 35, CAM_DATA_MAX_YAW_UPDATE },         // maxYawUpdate
    { 60, CAM_DATA_FOV },                    // unk_14
    { 40, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011A5C4[] = {
    /* CAM_FUNC_UNIQ1 */
    { -80, CAM_DATA_Y_OFFSET },          // yOffset
    { 200, CAM_DATA_EYE_DIST },          // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 40, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 60, CAM_DATA_FOV },                // fovTarget
    { 10, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011A5E0[] = {
    /* CAM_FUNC_UNIQ1 */
    { -120, CAM_DATA_Y_OFFSET },         // yOffset
    { 300, CAM_DATA_EYE_DIST },          // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 70, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 45, CAM_DATA_FOV },                // fovTarget
    { 10, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x2000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011A5FC[] = {
    /* CAM_FUNC_JUMP1 */
    { -20, CAM_DATA_Y_OFFSET },              // atYOffset
    { 200, CAM_DATA_EYE_DIST },              // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 15, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateRateTarget
    { 80, CAM_DATA_MAX_YAW_UPDATE },         // maxYawUpdate
    { 60, CAM_DATA_FOV },                    // unk_14
    { 20, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011A61C[] = {
    /* CAM_FUNC_BATT4 */
    { -20, CAM_DATA_Y_OFFSET },             // yOffset
    { 300, CAM_DATA_EYE_DIST },             // rTarget
    { 50, CAM_DATA_PITCH_TARGET },          // pitchTarget
    { 2, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // lerpUpdateRate
    { 80, CAM_DATA_FOV },                   // fovTarget
    { 20, CAM_DATA_AT_LERP_STEP_SCALE },    // atLERPTarget
    { 0xF000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011A638[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011A660[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011A68C[] = {
    /* CAM_FUNC_KEEP1 */
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

CameraModeValue sSetNorm1ModeNormVals[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue sSetNorm1ModeParaVals[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011A714[] = {
    /* CAM_FUNC_KEEP1 */
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

CameraModeValue D_8011A748[] = {
    /* CAM_FUNC_BATT1  */
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

CameraModeValue D_8011A778[] = {
    /* CAM_FUNC_SPEC5 */
    { -20, CAM_DATA_Y_OFFSET },          // yOffset
    { 80, CAM_DATA_EYE_DIST },           // eyeDist
    { 250, CAM_DATA_EYE_DIST_NEXT },     // minDistForRot
    { 6, CAM_DATA_UNK_22 },              // timerInit
    { 45, CAM_DATA_PITCH_TARGET },       // pitch
    { 60, CAM_DATA_FOV },                // fovTarget
    { 40, CAM_DATA_AT_LERP_STEP_SCALE }, // atMaxLERPScale
    { 0x2000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011A798[] = {
    /* CAM_FUNC_JUMP1 */
    { 0, CAM_DATA_Y_OFFSET },                // atYOffset
    { 250, CAM_DATA_EYE_DIST },              // distMin
    { 400, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 15, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateRateTarget
    { 50, CAM_DATA_MAX_YAW_UPDATE },         // maxYawUpdate
    { 60, CAM_DATA_FOV },                    // unk_14
    { 30, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011A7B8[] = {
    /* CAM_FUNC_JUMP1 */
    { 0, CAM_DATA_Y_OFFSET },                // atYOffset
    { 200, CAM_DATA_EYE_DIST },              // distMin
    { 400, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 30, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateRateTarget
    { 80, CAM_DATA_MAX_YAW_UPDATE },         // maxYawUpdate
    { 60, CAM_DATA_FOV },                    // unk_14
    { 20, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011A7D8[] = {
    /* CAM_FUNC_JUMP2 */
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

CameraModeValue D_8011A7FC[] = {
    /* CAM_FUNC_JUMP2 */
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

CameraModeValue D_8011A820[] = {
    /* CAM_FUNC_BATT4 */
    { 0, CAM_DATA_Y_OFFSET },               // yOffset
    { 300, CAM_DATA_EYE_DIST },             // rTarget
    { 50, CAM_DATA_PITCH_TARGET },          // pitchTarget
    { 2, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // lerpUpdateRate
    { 80, CAM_DATA_FOV },                   // fovTarget
    { 20, CAM_DATA_AT_LERP_STEP_SCALE },    // atLERPTarget
    { 0xF000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011A83C[] = {
    /* CAM_FUNC_UNIQ1 */
    { -80, CAM_DATA_Y_OFFSET },          // yOffset
    { 200, CAM_DATA_EYE_DIST },          // distMin
    { 400, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 40, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 60, CAM_DATA_FOV },                // fovTarget
    { 10, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011A858[] = {
    /* CAM_FUNC_UNIQ1 */
    { -120, CAM_DATA_Y_OFFSET },         // yOffset
    { 400, CAM_DATA_EYE_DIST },          // distMin
    { 400, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 70, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 45, CAM_DATA_FOV },                // fovTarget
    { 10, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x2000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011A874[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011A89C[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011A8C4[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011A8F0[] = {
    /* CAM_FUNC_KEEP1 */
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

CameraModeValue D_8011A924[] = {
    /* CAM_FUNC_BATT1 */
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

CameraModeValue D_8011A954[] = {
    /* CAM_FUNC_JUMP1 */
    { -10, CAM_DATA_Y_OFFSET },              // atYOffset
    { 150, CAM_DATA_EYE_DIST },              // distMin
    { 250, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 10, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateRateTarget
    { 50, CAM_DATA_MAX_YAW_UPDATE },         // maxYawUpdate
    { 60, CAM_DATA_FOV },                    // unk_14
    { 40, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011A974[] = {
    /* CAM_FUNC_JUMP1 */
    { -10, CAM_DATA_Y_OFFSET },              // atYOffset
    { 150, CAM_DATA_EYE_DIST },              // distMin
    { 250, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 10, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateRateTarget
    { 80, CAM_DATA_MAX_YAW_UPDATE },         // maxYawUpdate
    { 60, CAM_DATA_FOV },                    // unk_14
    { 20, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011A994[] = {
    /* CAM_FUNC_JUMP2 */
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

CameraModeValue D_8011A9B8[] = {
    /* CAM_FUNC_JUMP2 */
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

CameraModeValue D_8011A9DC[] = {
    /* CAM_FUNC_BATT4 */
    { -10, CAM_DATA_Y_OFFSET },             // yOffset
    { 300, CAM_DATA_EYE_DIST },             // rTarget
    { 50, CAM_DATA_PITCH_TARGET },          // pitchTarget
    { 2, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // lerpUpdateRate
    { 80, CAM_DATA_FOV },                   // fovTarget
    { 20, CAM_DATA_AT_LERP_STEP_SCALE },    // atLERPTarget
    { 0xF000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011A9F8[] = {
    /* CAM_FUNC_UNIQ1 */
    { -80, CAM_DATA_Y_OFFSET },          // yOffset
    { 150, CAM_DATA_EYE_DIST },          // distMin
    { 250, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 40, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 60, CAM_DATA_FOV },                // fovTarget
    { 10, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011AA14[] = {
    /* CAM_FUNC_UNIQ1 */
    { -120, CAM_DATA_Y_OFFSET },         // yOffset
    { 250, CAM_DATA_EYE_DIST },          // distMin
    { 250, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 70, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 45, CAM_DATA_FOV },                // fovTarget
    { 10, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x2000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011AA30[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011AA58[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011AA80[] = {
    /* CAM_FUNC_KEEP3 */
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

CameraModeValue D_8011AAB0[] = {
    /* CAM_FUNC_JUMP1 */
    { -40, CAM_DATA_Y_OFFSET },              // atYOffset
    { 150, CAM_DATA_EYE_DIST },              // distMin
    { 150, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 10, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateRateTarget
    { 50, CAM_DATA_MAX_YAW_UPDATE },         // maxYawUpdate
    { 60, CAM_DATA_FOV },                    // unk_14
    { 40, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011AAD0[] = {
    /* CAM_FUNC_JUMP1 */
    { -40, CAM_DATA_Y_OFFSET },              // atYOffset
    { 150, CAM_DATA_EYE_DIST },              // distMin
    { 180, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 12, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateRateTarget
    { 80, CAM_DATA_MAX_YAW_UPDATE },         // maxYawUpdate
    { 60, CAM_DATA_FOV },                    // unk_14
    { 20, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011AAF0[] = {
    /* CAM_FUNC_JUMP2 */
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

CameraModeValue D_8011AB14[] = {
    /* CAM_FUNC_JUMP2 */
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

CameraModeValue D_8011AB38[] = {
    /* CAM_FUNC_BATT4 */
    { -40, CAM_DATA_Y_OFFSET },             // yOffset
    { 200, CAM_DATA_EYE_DIST },             // rTarget
    { 50, CAM_DATA_PITCH_TARGET },          // pitchTarget
    { 2, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // lerpUpdateRate
    { 80, CAM_DATA_FOV },                   // fovTarget
    { 20, CAM_DATA_AT_LERP_STEP_SCALE },    // atLERPTarget
    { 0xF000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011AB54[] = {
    /* CAM_FUNC_UNIQ1 */
    { -80, CAM_DATA_Y_OFFSET },          // yOffset */
    { 150, CAM_DATA_EYE_DIST },          // distMin */
    { 150, CAM_DATA_EYE_DIST_NEXT },     // distMax */
    { 40, CAM_DATA_PITCH_TARGET },       // pitchTarget */
    { 60, CAM_DATA_FOV },                // fovTarget */
    { 10, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax */
    { 0x0000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011AB70[] = {
    /* CAM_FUNC_UNIQ1 */
    { -120, CAM_DATA_Y_OFFSET },         // yOffset
    { 150, CAM_DATA_EYE_DIST },          // distMin
    { 150, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 70, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 45, CAM_DATA_FOV },                // fovTarget
    { 10, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x2000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011AB8C[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011ABB4[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue sSetNorm3ModeNormVals[] = {
    /* CAM_FUNC_JUMP3 */
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

CameraModeValue D_8011AC08[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011AC34[] = {
    /* CAM_FUNC_KEEP3 */
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

CameraModeValue sSetNorm3ModeBoomVals[] = {
    /* CAM_FUNC_JUMP3 */
    /* mode is BOOMERANG, but these values are for when the eye
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

CameraModeValue sSetHrse0ModeNormVals[] = {
    /* CAM_FUNC_NORM3 */
    { -50, CAM_DATA_Y_OFFSET },              // yOffset */
    { 220, CAM_DATA_EYE_DIST },              // distMin */
    { 250, CAM_DATA_EYE_DIST_NEXT },         // distMax */
    { 10, CAM_DATA_PITCH_TARGET },           // pitchTarget */
    { 16, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateSpeed */
    { 20, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // unk_10 */
    { 60, CAM_DATA_FOV },                    // fovTarget */
    { 100, CAM_DATA_AT_LERP_STEP_SCALE },    // maxAtLERPScale */
    { 0x0600, CAM_DATA_FLAGS },
};

CameraModeValue sSetHrse0ModeParaVals[] = {
    /* CAM_FUNC_NORM3 */
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

CameraModeValue D_8011ACD4[] = {
    /* CAM_FUNC_SUBJ3 */
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

CameraModeValue D_8011ACF8[] = {
    /* CAM_FUNC_KEEP1 */
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

CameraModeValue D_8011AD2C[] = {
    /* CAM_FUNC_KEEP3 */
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

CameraModeValue D_8011AD5C[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011AD84[] = {
    /* CAM_FUNC_BATT1 */
    { -30, CAM_DATA_Y_OFFSET },          // yOffset (PCT) */
    { 150, CAM_DATA_EYE_DIST },          // distance */
    { 10, CAM_DATA_SWING_YAW_INIT },     // swingYawInitial */
    { 40, CAM_DATA_SWING_YAW_FINAL },    // swingYawFinal */
    { -10, CAM_DATA_SWING_PITCH_INIT },  // swingPitchInitial */
    { 0, CAM_DATA_SWING_PITCH_FINAL },   // swingPitchFinal */
    { 25, CAM_DATA_SWING_PITCH_ADJ },    // swingPitchAdj (PCT) */
    { 60, CAM_DATA_FOV },                // fov */
    { 40, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleOnGround (PCT) */
    { 0x2002, CAM_DATA_FLAGS },
    { -50, CAM_DATA_GROUND_Y_OFFSET },      // yOffsetOffGround (PCT) */
    { 20, CAM_DATA_GROUND_AT_LERP_STEP_SCALE }, // atLERPScaleOffGround (PCT) */
};

CameraModeValue D_8011ADB4[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011ADDC[] = {
    /* CAM_FUNC_BATT1 */
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

CameraModeValue D_8011AE0C[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011AE34[] = {
    /* CAM_FUNC_BATT1 */
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

CameraModeValue D_8011AE64[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011AE8C[] = {
    /* CAM_FUNC_BATT1 */
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

CameraModeValue D_8011AEBC[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011AEE4[] = {
    /* CAM_FUNC_BATT1 */
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

CameraModeValue D_8011AF14[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011AF3C[] = {
    /* CAM_FUNC_BATT1 */
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

CameraModeValue D_8011AF6C[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011AF94[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011AFBC[] = {
    /* CAM_FUNC_BATT1 */
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

CameraModeValue D_8011AFEC[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B014[] = {
    /* CAM_FUNC_BATT1 */
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

CameraModeValue D_8011B044[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B06C[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B094[] = {
    /* CAM_FUNC_BATT4 */
    { -40, CAM_DATA_Y_OFFSET },             // yOffset
    { 250, CAM_DATA_EYE_DIST },             // rTarget
    { 0, CAM_DATA_PITCH_TARGET },           // pitchTarget
    { 2, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // lerpUpdateRate
    { 80, CAM_DATA_FOV },                   // fovTarget
    { 20, CAM_DATA_AT_LERP_STEP_SCALE },    // atLERPTarget
    { 0xF000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011B0B0[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B0D8[] = {
    /* CAM_FUNC_BATT1 */
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
/*start here */
CameraModeValue D_8011B108[] = {
    /* CAM_FUNC_NORM2 */
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

CameraModeValue D_8011B12C[] = {
    /* CAM_FUNC_NORM2 */
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

CameraModeValue D_8011B150[] = {
    /* CAM_FUNC_NORM2 */
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

CameraModeValue D_8011B174[] = {
    /* CAM_FUNC_NORM2 */
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

CameraModeValue sSetFixd0ModeNormVals[] = {
    /* CAM_FUNC_FIXD1 */
    { -40, CAM_DATA_Y_OFFSET },               // yOffset
    { 100, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // lerpStep
    { 60, CAM_DATA_FOV },                     // fov
    { 0x0000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011B1A8[] = {
    /* CAM_FUNC_FIXD1 */
    { -40, CAM_DATA_Y_OFFSET },               // yOffset
    { 100, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // lerpStep
    { 60, CAM_DATA_FOV },                     // fov
    { 0x2000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011B1B8[] = {
    /* CAM_FUNC_FIXD1 */
    { -40, CAM_DATA_Y_OFFSET },               // yOffset
    { 100, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // lerpStep
    { 60, CAM_DATA_FOV },                     // fov
    { 0x3500, CAM_DATA_FLAGS },
};

CameraModeValue D_8011B1C8[] = {
    /* CAM_FUNC_FIXD1 */
    { -40, CAM_DATA_Y_OFFSET },              // yOffset
    { 25, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // lerpStep
    { 60, CAM_DATA_FOV },                    // fov
    { 0x0000, CAM_DATA_FLAGS },
};

CameraModeValue sSetCirc0ModeNormVals[] = {
    /* CAM_FUNC_FIXD2 */
    { -40, CAM_DATA_Y_OFFSET },              // yOffset
    { 50, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // eyeStepScale
    { 80, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // posStepScale
    { 60, CAM_DATA_FOV },                    // fov
    { 0x0001, CAM_DATA_FLAGS },
};

CameraModeValue sSetCirc2ModeNormVals[] = {
    /* CAM_FUNC_DATA4 */
    { -40, CAM_DATA_Y_OFFSET }, // yOffset
    { 60, CAM_DATA_FOV },       // fov
    { 0x3F00, CAM_DATA_FLAGS },
};

CameraModeValue D_8011B1F8[] = {
    /* CAM_FUNC_FIXD4 */
    { -40, CAM_DATA_Y_OFFSET },              // yOffset
    { 50, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // speedToEyePos
    { 80, CAM_DATA_XZ_UPDATE_RATE_TARGET },  // followSpeed
    { 60, CAM_DATA_FOV },                    // fov
    { 0x0004, CAM_DATA_FLAGS },
};

CameraModeValue D_8011B20C[] = {
    /* CAM_FUNC_UNIQ0
       CAM_FUNC_FIXD3
       CAM_FUNC_SPEC6
       CAM_FUNC_SPEC7 */
    { 0x0000, CAM_DATA_FLAGS },
};

CameraModeValue sSetPR0ModeKeepTalkVals[] = {
    /* CAM_FUNC_FIXD3 */
    { 0x2000, CAM_DATA_FLAGS },
};

CameraModeValue sSetPR1ModeNormVals[] = {
    /* CAM_FUNC_UNIQ7 */
    { 60, CAM_DATA_FOV }, // fov
    { 0x0000, CAM_DATA_FLAGS },
};

CameraModeValue sSetPR1ModeKeepVals[] = {
    /* CAM_FUNC_UNIQ7 */
    { 60, CAM_DATA_FOV }, // fov
    { 0x2000, CAM_DATA_FLAGS },
};

CameraModeValue sSetPreRend1ModeTalkVals[] = {
    /* CAM_FUNC_KEEP0 */
    { 30, CAM_DATA_FOV_SCALE },
    { 0, CAM_DATA_YAW_SCALE },
    { 4, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // timerInit
    { 0x3500, CAM_DATA_FLAGS },
};

CameraModeValue sSetDoor0ModeNormVals[] = {
    /* CAM_FUNC_UNIQ3 */
    { -40, CAM_DATA_Y_OFFSET }, // yOffset
    { 60, CAM_DATA_FOV },       // fov
    { 0x3200, CAM_DATA_FLAGS },
};

CameraModeValue sSetDoorCModeNormVals[] = {
    /* CAM_FUNC_SPEC9 */
    { -5, CAM_DATA_Y_OFFSET }, // yOffset
    { 60, CAM_DATA_FOV },      // unk_04 (unused)
    { 0x3202, CAM_DATA_FLAGS },
};

CameraModeValue sSetDoorCModeParaVals[] = {
    /* CAM_FUNC_SPEC9 */
    { -5, CAM_DATA_Y_OFFSET }, // yOffset
    { 60, CAM_DATA_FOV },      // unk_04 (unused)
    { 0x320A, CAM_DATA_FLAGS },
};

CameraModeValue sSetRail3ModeNormVals[] = {
    /* CAM_FUNC_SUBJ4
       Camera_Subj4 only reads one setting which is used for flags. */
    { 0, CAM_DATA_Y_OFFSET },                // flags
    { 2, CAM_DATA_EYE_DIST },                // unused
    { 30, CAM_DATA_EYE_DIST_NEXT },          // unused
    { 10, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unused
    { 45, CAM_DATA_FOV },                    // unused
    { 0x3200, CAM_DATA_FLAGS },              // unused
};

CameraModeValue D_8011B270[] = {
    /* CAM_FUNC_UNIQ0 */
    { 0x0001, CAM_DATA_FLAGS },
};

CameraModeValue sSetFree0ModeNormVals[] = {
    /* CAM_FUNC_UNIQ6 */
    { 0xFF00, CAM_DATA_FLAGS },
};

CameraModeValue sSetFree1ModeNormVals[] = {
    /* CAM_FUNC_UNIQ6  */
    { 0xFF01, CAM_DATA_FLAGS },
};

CameraModeValue sSetCirc4ModeNormVals[] = {
    /* CAM_FUNC_FIXD2 */
    { -40, CAM_DATA_Y_OFFSET },               // yOffset
    { 100, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // eyeStepScale
    { 80, CAM_DATA_XZ_UPDATE_RATE_TARGET },   // posStepScale
    { 60, CAM_DATA_FOV },                     // fov
    { 0x0000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011B290[] = {
    /* CAM_FUNC_UNIQ2 */
    { -40, CAM_DATA_Y_OFFSET }, // yOffset
    { 60, CAM_DATA_EYE_DIST },  // distTarget
    { 60, CAM_DATA_FOV },       // fovTarget
    { 0x0002, CAM_DATA_FLAGS },
};

CameraModeValue D_8011B2A0[] = {
    /* CAM_FUNC_UNIQ2 */
    { -30, CAM_DATA_Y_OFFSET }, // yOffset
    { 45, CAM_DATA_EYE_DIST },  // distTarget
    { 100, CAM_DATA_FOV },      // fovTarget
    { 0x2001, CAM_DATA_FLAGS },
};

CameraModeValue D_8011B2B0[] = {
    /* CAM_FUNC_DEMO1
       CAM_FUNC_DEMO4 (Not actually used in Camera_Demo4)
       CAM_FUNC_DEMO6
       CAM_FUNC_SPEC4 */
    { 0x3200, CAM_DATA_FLAGS },
};

CameraModeValue sSetMori1ModeNormVals[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011B2E0[] = {
    /* CAM_FUNC_PARA3 */
    { 0x3501, CAM_DATA_FLAGS },
};

CameraModeValue D_8011B2E4[] = {
    /* CAM_FUNC_DEMO3
      CAM_FUNC_DEMO4 (not actually used in Camera_Demo4) */
    { 60, CAM_DATA_FOV },                // fov
    { 30, CAM_DATA_AT_LERP_STEP_SCALE }, // unk_04
    { 0x3200, CAM_DATA_FLAGS },
};

CameraModeValue sSetDemo3ModeNormVals[] = {
    /* CAM_FUNC_DEMO9 */
    { 0x3212, CAM_DATA_FLAGS },
};

CameraModeValue D_8011B2F4[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B31C[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011B348[] = {
    /* CAM_FUNC_JUMP1 */
    { -50, CAM_DATA_Y_OFFSET },              // atYOffset
    { 300, CAM_DATA_EYE_DIST },              // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 12, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateRateTarget
    { 35, CAM_DATA_MAX_YAW_UPDATE },         // maxYawUpdate
    { 60, CAM_DATA_FOV },                    // unk_14
    { 40, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011B368[] = {
    /* CAM_FUNC_UNIQ1 */
    { -80, CAM_DATA_Y_OFFSET },          // yOffset
    { 300, CAM_DATA_EYE_DIST },          // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 60, CAM_DATA_PITCH_TARGET },       // fovTarget
    { 70, CAM_DATA_FOV },                // pitchTarget
    { 30, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011B384[] = {
    /* CAM_FUNC_UNIQ1 */
    { -120, CAM_DATA_Y_OFFSET },         // yOffset
    { 300, CAM_DATA_EYE_DIST },          // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 70, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 50, CAM_DATA_FOV },                // fovTarget
    { 30, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x2000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011B3A0[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B3C8[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B3F0[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011B41C[] = {
    /* CAM_FUNC_JUMP1 */
    { -50, CAM_DATA_Y_OFFSET },              // atYOffset
    { 150, CAM_DATA_EYE_DIST },              // distMin
    { 250, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 12, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateRateTarget
    { 35, CAM_DATA_MAX_YAW_UPDATE },         // maxYawUpdate
    { 60, CAM_DATA_FOV },                    // unk_14
    { 40, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011B43C[] = {
    /* CAM_FUNC_UNIQ1 */
    { -80, CAM_DATA_Y_OFFSET },          // yOffset
    { 200, CAM_DATA_EYE_DIST },          // distMin
    { 200, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 40, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 60, CAM_DATA_FOV },                // fovTarget
    { 30, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011B458[] = {
    /* CAM_FUNC_UNIQ1 */
    { -120, CAM_DATA_Y_OFFSET },         // yOffset
    { 200, CAM_DATA_EYE_DIST },          // distMin
    { 200, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 60, CAM_DATA_PITCH_TARGET },       // pitchtarget
    { 50, CAM_DATA_FOV },                // fovTarget
    { 30, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x2000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011B474[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue sSetScn0ModeNormVals[] = {
    /* CAM_FUNC_SPEC9 */
    { -30, CAM_DATA_Y_OFFSET }, // yOffset
    { 60, CAM_DATA_FOV },       // unk_04 (unused)
    { 0x10A, CAM_DATA_FLAGS },
};

CameraModeValue D_8011B4A8[] = {
    /* CAM_FUNC_UNIQ2 */
    { -20, CAM_DATA_Y_OFFSET }, // yOffset
    { 150, CAM_DATA_EYE_DIST }, // distTarget
    { 60, CAM_DATA_FOV },       // fovTarget
    { 0x0210, CAM_DATA_FLAGS },
};

CameraModeValue D_8011B4B8[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B4E0[] = {
    /* CAM_FUNC_BATT1 */
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

CameraModeValue D_8011B510[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B538[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B560[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011B58C[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011B5B8[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B5E0[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B608[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011B634[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011B660[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B688[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B6B0[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011B6DC[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011B708[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B730[] = {
    /* CAM_FUNC_KEEP4 */
    { -30, CAM_DATA_Y_OFFSET },                                              // unk_00
    { 120, CAM_DATA_EYE_DIST },                                              // unk_04
    { -10, CAM_DATA_PITCH_TARGET },                                          // unk_08
    { 170, CAM_DATA_YAW_TARGET },                                            // unk_0C
    { 0, CAM_DATA_AT_OFFSET_Z },                                             // unk_10
    { 60, CAM_DATA_FOV },                                                    // unk_18
    { 0x2502, CAM_DATA_FLAGS },     { 25, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // unk_14
    { 6, CAM_DATA_UNK_22 },                                                  // unk_1E
};

CameraModeValue sSetCirc6ModeNormVals[] = {
    /* CAM_FUNC_SPEC0 */
    { 20, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // lerpATScale
    { 0x3200, CAM_DATA_FLAGS },
};

CameraModeValue D_8011B75C[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B784[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B7AC[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011B7D8[] = {
    /* CAM_FUNC_BATT1 */
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

CameraModeValue D_8011B808[] = {
    /* CAM_FUNC_KEEP3 */
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

CameraModeValue D_8011B838[] = {
    /* CAM_FUNC_SUBJ3 */
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

CameraModeValue D_8011B85C[] = {
    /* CAM_FUNC_JUMP1 */
    { -20, CAM_DATA_Y_OFFSET },              // atYOffset
    { 200, CAM_DATA_EYE_DIST },              // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 12, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateRateTarget
    { 35, CAM_DATA_MAX_YAW_UPDATE },         // maxYawUpdate
    { 60, CAM_DATA_FOV },                    // unk_14
    { 40, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0F00, CAM_DATA_FLAGS },
};

CameraModeValue D_8011B87C[] = {
    /* CAM_FUNC_JUMP1 */
    { -20, CAM_DATA_Y_OFFSET },              // atYOffset
    { 200, CAM_DATA_EYE_DIST },              // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 15, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateRateTarget
    { 80, CAM_DATA_MAX_YAW_UPDATE },         // maxYawUpdate
    { 60, CAM_DATA_FOV },                    // unk_14
    { 20, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0F00, CAM_DATA_FLAGS },
};

CameraModeValue D_8011B89C[] = {
    /* CAM_FUNC_UNIQ1 */
    { -80, CAM_DATA_Y_OFFSET },          // yOffset
    { 200, CAM_DATA_EYE_DIST },          // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 40, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 60, CAM_DATA_FOV },                // fovTarget
    { 10, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x0F00, CAM_DATA_FLAGS },
};

CameraModeValue D_8011B8B8[] = {
    /* CAM_FUNC_UNIQ1 */
    { -120, CAM_DATA_Y_OFFSET },         // yOffset
    { 300, CAM_DATA_EYE_DIST },          // distMin
    { 300, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 70, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 45, CAM_DATA_FOV },                // fovTarget
    { 10, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x2F00, CAM_DATA_FLAGS },
};

CameraModeValue sSetDemoCModeNormVals[] = {
    /* CAM_FUNC_UNIQ9 */
    { 0x3F00, CAM_DATA_FLAGS }, /* flags */
};

CameraModeValue D_8011B8D8[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B900[] = {
    /* CAM_FUNC_BATT1 */
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

CameraModeValue D_8011B930[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B958[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue sSetDung2ModeBattVals[] = {
    /* CAM_FUNC_BATT1 */
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

CameraModeValue D_8011B9B4[] = {
    /* CAM_FUNC_JUMP1 */
    { -20, CAM_DATA_Y_OFFSET },              // atYOffset
    { 350, CAM_DATA_EYE_DIST },              // distMin
    { 350, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 10, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateRateTarget
    { 50, CAM_DATA_MAX_YAW_UPDATE },         // maxYawUpdate
    { 60, CAM_DATA_FOV },                    // unk_14
    { 40, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011B9D4[] = {
    /* CAM_FUNC_JUMP1 */
    { -20, CAM_DATA_Y_OFFSET },              // atYOffset
    { 350, CAM_DATA_EYE_DIST },              // distMin
    { 350, CAM_DATA_EYE_DIST_NEXT },         // distMax
    { 15, CAM_DATA_YAW_UPDATE_RATE_TARGET }, // yawUpdateRateTarget
    { 80, CAM_DATA_MAX_YAW_UPDATE },         // maxYawUpdate
    { 60, CAM_DATA_FOV },                    // unk_14
    { 20, CAM_DATA_AT_LERP_STEP_SCALE },     // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011B9F4[] = {
    /* CAM_FUNC_JUMP2 */
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

CameraModeValue D_8011BA18[] = {
    /* CAM_FUNC_JUMP2 */
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

CameraModeValue D_8011BA3C[] = {
    /* CAM_FUNC_UNIQ1 */
    { -50, CAM_DATA_Y_OFFSET },          // yOffset
    { 350, CAM_DATA_EYE_DIST },          // distMin
    { 350, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 40, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 60, CAM_DATA_FOV },                // fovTarget
    { 10, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x0000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011BA58[] = {
    /* CAM_FUNC_UNIQ1 */
    { -100, CAM_DATA_Y_OFFSET },         // yOffset
    { 350, CAM_DATA_EYE_DIST },          // distMin
    { 350, CAM_DATA_EYE_DIST_NEXT },     // distMax
    { 70, CAM_DATA_PITCH_TARGET },       // pitchTarget
    { 45, CAM_DATA_FOV },                // fovTarget
    { 10, CAM_DATA_AT_LERP_STEP_SCALE }, // atLERPScaleMax
    { 0x2000, CAM_DATA_FLAGS },
};

CameraModeValue D_8011BA74[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011BA9C[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011BAC8[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011BAF0[] = {
    /* CAM_FUNC_KEEP1 */
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

CameraModeValue D_8011BB24[] = {
    /* CAM_FUNC_KEEP3 */
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

CameraModeValue D_8011BB54[] = {
    /* CAM_FUNC_KEEP3 */
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
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
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
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A778), D_8011A778 },                       // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C },                       // CAM_MODE_BOOMFOLLLOW
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
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A778), D_8011A778 }, // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
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
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A778), D_8011A778 }, // CAM_MODE_FOOKSHOT,
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
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
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
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 },                       // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_FOOKSHOT,
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
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
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
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_FOOKSHOT,
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
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
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
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_FOOKSHOT,
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
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
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
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
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
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
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
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_FOOKSHOT,
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
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
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
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
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
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_FOOKSHOT,
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
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
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
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_FOOKSHOT,
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
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
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
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_FOOKSHOT,
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
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
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
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_FOOKSHOT,
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
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
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
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
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
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
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
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
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
    { CAM_FUNC_SPEC9, ARRAY_COUNT(sSetDoorCModeParaVals), sSetDoorCModeParaVals }, // CAM_MODE_TARGET
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
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
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
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
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
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A778), D_8011A778 }, // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
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
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
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
    { CAM_FUNC_NONE, 0, NULL },                              // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
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
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A778), D_8011A778 },                       // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C },                       // CAM_MODE_BOOMFOLLLOW
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
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
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
    { CAM_FUNC_SPEC5, ARRAY_COUNT(D_8011A518), D_8011A518 }, // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_KEEP1, ARRAY_COUNT(D_8011A68C), D_8011A68C }, // CAM_MODE_BOOMFOLLLOW
};

CameraSetting sCameraSettings[] = {
    { { 0x00000000 }, NULL },                   // CAM_SET_NONE
    { { 0x051FFFFF }, sCamSetNorm0Modes },      // CAM_SET_NORMAL0
    { { 0x051FFFFF }, sCamSetNorm1Modes },      // CAM_SET_NORMAL1
    { { 0x051FFFFF }, sCamSetDungeon0Modes },   // CAM_SET_DUNGEON0
    { { 0x051FFFFF }, sCamSetDungeon1Modes },   // CAM_SET_DUNGEON1
    { { 0x050FF7FF }, sCamSetNorm3Modes },      // CAM_SET_NORMAL3
    { { 0x8500018F }, sCamSetHorse0Modes },     // CAM_SET_HORSE0
    { { 0x051FFFFF }, sCamSetBossGomaModes },   // CAM_SET_BOSS_GOMA
    { { 0x051FFFFF }, sCamSetBossDodoModes },   // CAM_SET_BOSS_DODO
    { { 0x051FFFFF }, sCamSetBossBariModes },   // CAM_SET_BOSS_BARI
    { { 0x051FFFFF }, sCamSetBossFGanonModes }, // CAM_SET_BOSS_FGANON
    { { 0x051FFFFF }, sCamSetBossBalModes },    // CAM_SET_BOSS_BAL
    { { 0x051FFFFF }, sCamSetBossShadesModes }, // CAM_SET_BOSS_SHADES
    { { 0x051FFFFF }, sCamSetBossMofaModes },   // CAM_SET_BOSS_MOFA
    { { 0x051FFFFF }, sCamSetBossTwin0Modes },  // CAM_SET_TWIN0
    { { 0x051FFFFF }, sCamSetBossTwin1Modes },  // CAM_SET_TWIN1
    { { 0x051FFFFF }, sCamSetBossGanon1Modes }, // CAM_SET_BOSS_GANON1
    { { 0x051FFFFF }, sCamSetBossGanon2Modes }, // CAM_SET_BOSS_GANON2
    { { 0x851FFFFF }, sCamSetTower0Modes },     // CAM_SET_TOWER0
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
    { { 0xC5000001 }, sCamSetRail3Modes },      // CAM_SET_RAIL3
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
