#include <ultra64.h>
#include <global.h>

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

CameraModeValue D_8011A3C8[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011A3F4[] = {
    /* CAM_FUNC_KEEP1 */
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

CameraModeValue D_8011A428[] = {
    /* CAM_FUNC_KEEP3 */
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

CameraModeValue D_8011A458[] = {
    /* CAM_FUNC_BATT1 */
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

CameraModeValue D_8011A488[] = {
    /* CAM_FUNC_JUMP2 */
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

CameraModeValue D_8011A4AC[] = {
    /* CAM_FUNC_SUBJ3 */
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

CameraModeValue D_8011A4D0[] = {
    /* CAM_FUNC_SUBJ3 */
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

CameraModeValue D_8011A4F4[] = {
    /* CAM_FUNC_SUBJ3 */
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

CameraModeValue D_8011A518[] = {
    /* CAM_FUNC_SPEC5 */
    { -20, 0 },    // yOffset
    { 80, 1 },     // eyeDist
    { 250, 2 },    // minDistForRot
    { 45, 3 },     // timerInit
    { 60, 7 },     // pitch
    { 40, 8 },     // fovTarget
    { 6, 22 },     // atMaxLERPScale
    { 0x2000, 9 }, // flags
};

CameraModeValue D_8011A538[] = {
    /* CAM_FUNC_SUBJ3 */
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

CameraModeValue D_8011A55C[] = {
    /* CAM_FUNC_SUBJ3 */
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

CameraModeValue D_8011A580[] = {
    /* CAM_FUNC_JUMP2 */
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

CameraModeValue D_8011A5A4[] = {
    /* CAM_FUNC_JUMP1 */
    { -20, 0 },    // atYOffset
    { 200, 1 },    // distMin
    { 300, 2 },    // distMax
    { 12, 4 },     // yawUpdateRateTarget
    { 35, 6 },     // maxYawUpdate
    { 60, 7 },     // unk_14
    { 40, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

CameraModeValue D_8011A5C4[] = {
    /* CAM_FUNC_UNIQ1 */
    { -80, 0 },    // yOffset
    { 200, 1 },    // distMin
    { 300, 2 },    // distMax
    { 40, 3 },     // pitchTarget
    { 60, 7 },     // fovTarget
    { 10, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

CameraModeValue D_8011A5E0[] = {
    /* CAM_FUNC_UNIQ1 */
    { -120, 0 },   // yOffset
    { 300, 1 },    // distMin
    { 300, 2 },    // distMax
    { 70, 3 },     // pitchTarget
    { 45, 7 },     // fovTarget
    { 10, 8 },     // atLERPScaleMax
    { 0x2000, 9 }, // flags
};

CameraModeValue D_8011A5FC[] = {
    /* CAM_FUNC_JUMP1 */
    { -20, 0 },    // atYOffset
    { 200, 1 },    // distMin
    { 300, 2 },    // distMax
    { 15, 4 },     // yawUpdateRateTarget
    { 80, 6 },     // maxYawUpdate
    { 60, 7 },     // unk_14
    { 20, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

CameraModeValue D_8011A61C[] = {
    /* CAM_FUNC_BATT4 */
    { -20, 0 },    // yOffset
    { 300, 1 },    // rTarget
    { 50, 3 },     // pitchTarget
    { 2, 4 },      // lerpUpdateRate
    { 80, 7 },     // fovTarget
    { 20, 8 },     // atLERPTarget
    { 0xF000, 9 }, // flags
};

CameraModeValue D_8011A638[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011A660[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011A68C[] = {
    /* CAM_FUNC_KEEP1 */
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

CameraModeValue sSetNorm1ModeNormVals[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue sSetNorm1ModeParaVals[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011A714[] = {
    /* CAM_FUNC_KEEP1 */
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

CameraModeValue D_8011A748[] = {
    /* CAM_FUNC_BATT1  */
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

CameraModeValue D_8011A778[] = {
    /* CAM_FUNC_SPEC5 */
    { -20, 0 },    // yOffset
    { 80, 1 },     // eyeDist
    { 250, 2 },    // minDistForRot
    { 6, 22 },     // timerInit
    { 45, 3 },     // pitch
    { 60, 7 },     // fovTarget
    { 40, 8 },     // atMaxLERPScale
    { 0x2000, 9 }, // flags
};

CameraModeValue D_8011A798[] = {
    /* CAM_FUNC_JUMP1 */
    { 0, 0 },      // atYOffset
    { 250, 1 },    // distMin
    { 400, 2 },    // distMax
    { 15, 4 },     // yawUpdateRateTarget
    { 50, 6 },     // maxYawUpdate
    { 60, 7 },     // unk_14
    { 30, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

CameraModeValue D_8011A7B8[] = {
    /* CAM_FUNC_JUMP1 */
    { 0, 0 },      // atYOffset
    { 200, 1 },    // distMin
    { 400, 2 },    // distMax
    { 30, 4 },     // yawUpdateRateTarget
    { 80, 6 },     // maxYawUpdate
    { 60, 7 },     // unk_14
    { 20, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

CameraModeValue D_8011A7D8[] = {
    /* CAM_FUNC_JUMP2 */
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

CameraModeValue D_8011A7FC[] = {
    /* CAM_FUNC_JUMP2 */
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

CameraModeValue D_8011A820[] = {
    /* CAM_FUNC_BATT4 */
    { 0, 0 },      // yOffset
    { 300, 1 },    // rTarget
    { 50, 3 },     // pitchTarget
    { 2, 4 },      // lerpUpdateRate
    { 80, 7 },     // fovTarget
    { 20, 8 },     // atLERPTarget
    { 0xF000, 9 }, // flags
};

CameraModeValue D_8011A83C[] = {
    /* CAM_FUNC_UNIQ1 */
    { -80, 0 },    // yOffset
    { 200, 1 },    // distMin
    { 400, 2 },    // distMax
    { 40, 3 },     // pitchTarget
    { 60, 7 },     // fovTarget
    { 10, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

CameraModeValue D_8011A858[] = {
    /* CAM_FUNC_UNIQ1 */
    { -120, 0 },   // yOffset
    { 400, 1 },    // distMin
    { 400, 2 },    // distMax
    { 70, 3 },     // pitchTarget
    { 45, 7 },     // fovTarget
    { 10, 8 },     // atLERPScaleMax
    { 0x2000, 9 }, // flags
};

CameraModeValue D_8011A874[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011A89C[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011A8C4[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011A8F0[] = {
    /* CAM_FUNC_KEEP1 */
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

CameraModeValue D_8011A924[] = {
    /* CAM_FUNC_BATT1 */
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

CameraModeValue D_8011A954[] = {
    /* CAM_FUNC_JUMP1 */
    { -10, 0 },    // atYOffset
    { 150, 1 },    // distMin
    { 250, 2 },    // distMax
    { 10, 4 },     // yawUpdateRateTarget
    { 50, 6 },     // maxYawUpdate
    { 60, 7 },     // unk_14
    { 40, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

CameraModeValue D_8011A974[] = {
    /* CAM_FUNC_JUMP1 */
    { -10, 0 },    // atYOffset
    { 150, 1 },    // distMin
    { 250, 2 },    // distMax
    { 10, 4 },     // yawUpdateRateTarget
    { 80, 6 },     // maxYawUpdate
    { 60, 7 },     // unk_14
    { 20, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

CameraModeValue D_8011A994[] = {
    /* CAM_FUNC_JUMP2 */
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

CameraModeValue D_8011A9B8[] = {
    /* CAM_FUNC_JUMP2 */
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

CameraModeValue D_8011A9DC[] = {
    /* CAM_FUNC_BATT4 */
    { -10, 0 },    // yOffset
    { 300, 1 },    // rTarget
    { 50, 3 },     // pitchTarget
    { 2, 4 },      // lerpUpdateRate
    { 80, 7 },     // fovTarget
    { 20, 8 },     // atLERPTarget
    { 0xF000, 9 }, // flags
};

CameraModeValue D_8011A9F8[] = {
    /* CAM_FUNC_UNIQ1 */
    { -80, 0 },    // yOffset
    { 150, 1 },    // distMin
    { 250, 2 },    // distMax
    { 40, 3 },     // pitchTarget
    { 60, 7 },     // fovTarget
    { 10, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

CameraModeValue D_8011AA14[] = {
    /* CAM_FUNC_UNIQ1 */
    { -120, 0 },   // yOffset */
    { 250, 1 },    // distMin */
    { 250, 2 },    // distMax */
    { 70, 3 },     // pitchTarget */
    { 45, 7 },     // fovTarget */
    { 10, 8 },     // atLERPScaleMax */
    { 0x2000, 9 }, // flags */
};

CameraModeValue D_8011AA30[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011AA58[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011AA80[] = {
    /* CAM_FUNC_KEEP3 */
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

CameraModeValue D_8011AAB0[] = {
    /* CAM_FUNC_JUMP1 */
    { -40, 0 },    // atYOffset
    { 150, 1 },    // distMin
    { 150, 2 },    // distMax
    { 10, 4 },     // yawUpdateRateTarget
    { 50, 6 },     // maxYawUpdate
    { 60, 7 },     // unk_14
    { 40, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

CameraModeValue D_8011AAD0[] = {
    /* CAM_FUNC_JUMP1 */
    { -40, 0 },    // atYOffset
    { 150, 1 },    // distMin
    { 180, 2 },    // distMax
    { 12, 4 },     // yawUpdateRateTarget
    { 80, 6 },     // maxYawUpdate
    { 60, 7 },     // unk_14
    { 20, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

CameraModeValue D_8011AAF0[] = {
    /* CAM_FUNC_JUMP2 */
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

CameraModeValue D_8011AB38[] = {
    /* CAM_FUNC_BATT4 */
    { -40, 0 },    // yOffset
    { 200, 1 },    // rTarget
    { 50, 3 },     // pitchTarget
    { 2, 4 },      // lerpUpdateRate
    { 80, 7 },     // fovTarget
    { 20, 8 },     // atLERPTarget
    { 0xF000, 9 }, // flags
};

CameraModeValue D_8011AB54[] = {
    /* CAM_FUNC_UNIQ1 */
    { -80, 0 },    // yOffset */
    { 150, 1 },    // distMin */
    { 150, 2 },    // distMax */
    { 40, 3 },     // pitchTarget */
    { 60, 7 },     // fovTarget */
    { 10, 8 },     // atLERPScaleMax */
    { 0x0000, 9 }, // flags */
};

CameraModeValue D_8011AB70[] = {
    /* CAM_FUNC_UNIQ1 */
    { -120, 0 },   // yOffset
    { 150, 1 },    // distMin
    { 150, 2 },    // distMax
    { 70, 3 },     // pitchTarget
    { 45, 7 },     // fovTarget
    { 10, 8 },     // atLERPScaleMax
    { 0x2000, 9 }, // flags
};

CameraModeValue D_8011AB8C[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011ABB4[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011AC08[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011AC34[] = {
    /* CAM_FUNC_KEEP3 */
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

CameraModeValue sSetNorm3ModeBoomVals[] = {
    /* CAM_FUNC_JUMP3 */
    /* mode is BOOMERANG, but these values are for when the eye
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

CameraModeValue sSetHrse0ModeNormVals[] = {
    /* CAM_FUNC_NORM3 */
    { -50, 0 },    // yOffset */
    { 220, 1 },    // distMin */
    { 250, 2 },    // distMax */
    { 10, 3 },     // pitchTarget */
    { 16, 4 },     // yawUpdateSpeed */
    { 20, 5 },     // unk_10 */
    { 60, 7 },     // fovTarget */
    { 100, 8 },    // maxAtLERPScale */
    { 0x0600, 9 }, // flags */
};

CameraModeValue sSetHrse0ModeParaVals[] = {
    /* CAM_FUNC_NORM3 */
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

CameraModeValue D_8011ACD4[] = {
    /* CAM_FUNC_SUBJ3 */
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

CameraModeValue D_8011ACF8[] = {
    /* CAM_FUNC_KEEP1 */
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

CameraModeValue D_8011AD2C[] = {
    /* CAM_FUNC_KEEP3 */
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

CameraModeValue D_8011AD5C[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011AD84[] = {
    /* CAM_FUNC_BATT1 */
    { -30, 0 },    // yOffset (PCT) */
    { 150, 1 },    // distance */
    { 10, 13 },    // swingYawInitial */
    { 40, 14 },    // swingYawFinal */
    { -10, 15 },   // swingPitchInitial */
    { 0, 16 },     // swingPitchFinal */
    { 25, 17 },    // swingPitchAdj (PCT) */
    { 60, 7 },     // fov */
    { 40, 8 },     // atLERPScaleOnGround (PCT) */
    { 0x2002, 9 }, // flags */
    { -50, 11 },   // yOffsetOffGround (PCT) */
    { 20, 12 },    // atLERPScaleOffGround (PCT) */
};

CameraModeValue D_8011ADB4[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011ADDC[] = {
    /* CAM_FUNC_BATT1 */
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

CameraModeValue D_8011AE0C[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011AE34[] = {
    /* CAM_FUNC_BATT1 */
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

CameraModeValue D_8011AE64[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011AEBC[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011AEE4[] = {
    /* CAM_FUNC_BATT1 */
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

CameraModeValue D_8011AF14[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011AF3C[] = {
    /* CAM_FUNC_BATT1 */
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

CameraModeValue D_8011AF6C[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011AF94[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011AFBC[] = {
    /* CAM_FUNC_BATT1 */
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

CameraModeValue D_8011AFEC[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B014[] = {
    /* CAM_FUNC_BATT1 */
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

CameraModeValue D_8011B044[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B06C[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B094[] = {
    /* CAM_FUNC_BATT4 */
    { -40, 0 },    // yOffset
    { 250, 1 },    // rTarget
    { 0, 3 },      // pitchTarget
    { 2, 4 },      // lerpUpdateRate
    { 80, 7 },     // fovTarget
    { 20, 8 },     // atLERPTarget
    { 0xF000, 9 }, // flags
};

CameraModeValue D_8011B0B0[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B0D8[] = {
    /* CAM_FUNC_BATT1 */
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
/*start here */
CameraModeValue D_8011B108[] = {
    /* CAM_FUNC_NORM2 */
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

CameraModeValue D_8011B12C[] = {
    /* CAM_FUNC_NORM2 */
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

CameraModeValue D_8011B150[] = {
    /* CAM_FUNC_NORM2 */
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

CameraModeValue D_8011B174[] = {
    /* CAM_FUNC_NORM2 */
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

CameraModeValue sSetFixd0ModeNormVals[] = {
    /* CAM_FUNC_FIXD1 */
    { -40, 0 },    // yOffset
    { 100, 4 },    // lerpStep
    { 60, 7 },     // fov
    { 0x0000, 9 }, // flags
};

CameraModeValue D_8011B1A8[] = {
    /* CAM_FUNC_FIXD1 */
    { -40, 0 },    // yOffset
    { 100, 4 },    // lerpStep
    { 60, 7 },     // fov
    { 0x2000, 9 }, // flags
};

CameraModeValue D_8011B1B8[] = {
    /* CAM_FUNC_FIXD1 */
    { -40, 0 },    // yOffset
    { 100, 4 },    // lerpStep
    { 60, 7 },     // fov
    { 0x3500, 9 }, // flags
};

CameraModeValue D_8011B1C8[] = {
    /* CAM_FUNC_FIXD1 */
    { -40, 0 },    // yOffset
    { 25, 4 },     // lerpStep
    { 60, 7 },     // fov
    { 0x0000, 9 }, // flags
};

CameraModeValue sSetCirc0ModeNormVals[] = {
    /* CAM_FUNC_FIXD2 */
    { -40, 0 },    // yOffset
    { 50, 4 },     // eyeStepScale
    { 80, 5 },     // posStepScale
    { 60, 7 },     // fov
    { 0x0001, 9 }, // flags
};

CameraModeValue sSetCirc2ModeNormVals[] = {
    /* CAM_FUNC_DATA4 */
    { -40, 0 },    // yOffset
    { 60, 7 },     // fov
    { 0x3F00, 9 }, // flags
};

CameraModeValue D_8011B1F8[] = {
    /* CAM_FUNC_FIXD4 */
    { -40, 0 },    // yOffset
    { 50, 4 },     // speedToEyePos
    { 80, 5 },     // followSpeed
    { 60, 7 },     // fov
    { 0x0004, 9 }, // flags
};

CameraModeValue D_8011B20C[] = {
    /* CAM_FUNC_UNIQ0
       CAM_FUNC_FIXD3
       CAM_FUNC_SPEC6
       CAM_FUNC_SPEC7 */
    { 0x0000, 9 }, // flags
};

CameraModeValue sSetPR0ModeKeepTalkVals[] = {
    /* CAM_FUNC_FIXD3 */
    { 0x2000, 9 }, // flags
};

CameraModeValue sSetPR1ModeNormVals[] = {
    /* CAM_FUNC_UNIQ7 */
    { 60, 7 },     // fov
    { 0x0000, 9 }, // flags
};

CameraModeValue sSetPR1ModeKeepVals[] = {
    /* CAM_FUNC_UNIQ7 */
    { 60, 7 },     // fov
    { 0x2000, 9 }, // flags
};

CameraModeValue sSetPreRend1ModeTalkVals[] = {
    /* CAM_FUNC_KEEP0 */
    { 30, 24 },    // fovScale
    { 0, 25 },     // yawScale
    { 4, 4 },      // timerInit
    { 0x3500, 9 }, // flags
};

CameraModeValue sSetDoor0ModeNormVals[] = {
    /* CAM_FUNC_UNIQ3 */
    { -40, 0 },    // yOffset
    { 60, 7 },     // fov
    { 0x3200, 9 }, // flags
};

CameraModeValue sSetDoorCModeNormVals[] = {
    /* CAM_FUNC_SPEC9 */
    { -5, 0 },     // yOffset
    { 60, 7 },     // unk_04 (unused)
    { 0x3202, 9 }, // flags
};

CameraModeValue sSetDoorCModeParaVals[] = {
    /* CAM_FUNC_SPEC9 */
    { -5, 0 },     // yOffset
    { 60, 7 },     // unk_04 (unused)
    { 0x320A, 9 }, // flags
};

CameraModeValue sSetRail3ModeNormVals[] = {
    /* CAM_FUNC_SUBJ4
       Camera_Subj4 only reads one setting which is used for flags. */
    { 0, 0 },      // flags
    { 2, 1 },      // unused
    { 30, 2 },     // unused
    { 10, 4 },     // unused
    { 45, 7 },     // unused
    { 0x3200, 9 }, // unused
};

CameraModeValue D_8011B270[] = {
    /* CAM_FUNC_UNIQ0 */
    { 0x0001, 9 }, // flags
};

CameraModeValue sSetFree0ModeNormVals[] = {
    /* CAM_FUNC_UNIQ6 */
    { 0xFF00, 9 }, // flags
};

CameraModeValue sSetFree1ModeNormVals[] = {
    /* CAM_FUNC_UNIQ6  */
    { 0xFF01, 9 }, // flags
};

CameraModeValue sSetCirc4ModeNormVals[] = {
    /* CAM_FUNC_FIXD2 */
    { -40, 0 },    // yOffset
    { 100, 4 },    // eyeStepScale
    { 80, 5 },     // posStepScale
    { 60, 7 },     // fov
    { 0x0000, 9 }, // flags
};

CameraModeValue D_8011B290[] = {
    /* CAM_FUNC_UNIQ2 */
    { -40, 0 },    // yOffset
    { 60, 1 },     // distTarget
    { 60, 7 },     // fovTarget
    { 0x0002, 9 }, // flags
};

CameraModeValue D_8011B2A0[] = {
    /* CAM_FUNC_UNIQ2 */
    { -30, 0 },    // yOffset
    { 45, 1 },     // distTarget
    { 100, 7 },    // fovTarget
    { 0x2001, 9 }, // flags
};

CameraModeValue D_8011B2B0[] = {
    /* CAM_FUNC_DEMO1
       CAM_FUNC_DEMO4 (Not actually used in Camera_Demo4)
       CAM_FUNC_DEMO6
       CAM_FUNC_SPEC4 */
    { 0x3200, 9 }, // flags
};

CameraModeValue sSetMori1ModeNormVals[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011B2E0[] = {
    /* CAM_FUNC_PARA3 */
    { 0x3501, 9 }, // flags
};

CameraModeValue D_8011B2E4[] = {
    /* CAM_FUNC_DEMO3
      CAM_FUNC_DEMO4 (not actually used in Camera_Demo4) */
    { 60, 7 },     // fov
    { 30, 8 },     // unk_04
    { 0x3200, 9 }, // flags
};

CameraModeValue sSetDemo3ModeNormVals[] = {
    /* CAM_FUNC_DEMO9 */
    { 0x3212, 9 }, // flags
};

CameraModeValue D_8011B2F4[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B31C[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011B348[] = {
    /* CAM_FUNC_JUMP1 */
    { -50, 0 },    // atYOffset
    { 300, 1 },    // distMin
    { 300, 2 },    // distMax
    { 12, 4 },     // yawUpdateRateTarget
    { 35, 6 },     // maxYawUpdate
    { 60, 7 },     // unk_14
    { 40, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

CameraModeValue D_8011B368[] = {
    /* CAM_FUNC_UNIQ1 */
    { -80, 0 },    // yOffset
    { 300, 1 },    // distMin
    { 300, 2 },    // distMax
    { 60, 3 },     // fovTarget
    { 70, 7 },     // pitchTarget
    { 30, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

CameraModeValue D_8011B384[] = {
    /* CAM_FUNC_UNIQ1 */
    { -120, 0 },   // yOffset
    { 300, 1 },    // distMin
    { 300, 2 },    // distMax
    { 70, 3 },     // pitchTarget
    { 50, 7 },     // fovTarget
    { 30, 8 },     // atLERPScaleMax
    { 0x2000, 9 }, // flags
};

CameraModeValue D_8011B3A0[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B3C8[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B3F0[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011B41C[] = {
    /* CAM_FUNC_JUMP1 */
    { -50, 0 },    // atYOffset
    { 150, 1 },    // distMin
    { 250, 2 },    // distMax
    { 12, 4 },     // yawUpdateRateTarget
    { 35, 6 },     // maxYawUpdate
    { 60, 7 },     // unk_14
    { 40, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

CameraModeValue D_8011B43C[] = {
    /* CAM_FUNC_UNIQ1 */
    { -80, 0 },    // yOffset
    { 200, 1 },    // distMin
    { 200, 2 },    // distMax
    { 40, 3 },     // pitchTarget
    { 60, 7 },     // fovTarget
    { 30, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

CameraModeValue D_8011B458[] = {
    /* CAM_FUNC_UNIQ1 */
    { -120, 0 },   // yOffset
    { 200, 1 },    // distMin
    { 200, 2 },    // distMax
    { 60, 3 },     // pitchtarget
    { 50, 7 },     // fovTarget
    { 30, 8 },     // atLERPScaleMax
    { 0x2000, 9 }, // flags
};

CameraModeValue D_8011B474[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue sSetScn0ModeNormVals[] = {
    /* CAM_FUNC_SPEC9 */
    { -30, 0 },   // yOffset
    { 60, 7 },    // unk_04 (unused)
    { 0x10A, 9 }, // flags
};

CameraModeValue D_8011B4A8[] = {
    /* CAM_FUNC_UNIQ2 */
    { -20, 0 },    // yOffset
    { 150, 1 },    // distTarget
    { 60, 7 },     // fovTarget
    { 0x0210, 9 }, // flags
};

CameraModeValue D_8011B4B8[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B4E0[] = {
    /* CAM_FUNC_BATT1 */
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

CameraModeValue D_8011B510[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B538[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B560[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011B58C[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011B5B8[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B5E0[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B608[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011B634[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011B660[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B688[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B6B0[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011B6DC[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011B708[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B730[] = {
    /* CAM_FUNC_KEEP4 */
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

CameraModeValue sSetCirc6ModeNormVals[] = {
    /* CAM_FUNC_SPEC0 */
    { 20, 4 },     // lerpATScale
    { 0x3200, 9 }, // flags
};

CameraModeValue D_8011B75C[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B784[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B7AC[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011B7D8[] = {
    /* CAM_FUNC_BATT1 */
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

CameraModeValue D_8011B808[] = {
    /* CAM_FUNC_KEEP3 */
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

CameraModeValue D_8011B838[] = {
    /* CAM_FUNC_SUBJ3 */
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

CameraModeValue D_8011B85C[] = {
    /* CAM_FUNC_JUMP1 */
    { -20, 0 },    // atYOffset
    { 200, 1 },    // distMin
    { 300, 2 },    // distMax
    { 12, 4 },     // yawUpdateRateTarget
    { 35, 6 },     // maxYawUpdate
    { 60, 7 },     // unk_14
    { 40, 8 },     // atLERPScaleMax
    { 0x0F00, 9 }, // flags
};

CameraModeValue D_8011B87C[] = {
    /* CAM_FUNC_JUMP1 */
    { -20, 0 },    // atYOffset
    { 200, 1 },    // distMin
    { 300, 2 },    // distMax
    { 15, 4 },     // yawUpdateRateTarget
    { 80, 6 },     // maxYawUpdate
    { 60, 7 },     // unk_14
    { 20, 8 },     // atLERPScaleMax
    { 0x0F00, 9 }, // flags
};

CameraModeValue D_8011B89C[] = {
    /* CAM_FUNC_UNIQ1 */
    { -80, 0 },    // yOffset
    { 200, 1 },    // distMin
    { 300, 2 },    // distMax
    { 40, 3 },     // pitchTarget
    { 60, 7 },     // fovTarget
    { 10, 8 },     // atLERPScaleMax
    { 0x0F00, 9 }, // flags
};

CameraModeValue D_8011B8B8[] = {
    /* CAM_FUNC_UNIQ1 */
    { -120, 0 },   // yOffset
    { 300, 1 },    // distMin
    { 300, 2 },    // distMax
    { 70, 3 },     // pitchTarget
    { 45, 7 },     // fovTarget
    { 10, 8 },     // atLERPScaleMax
    { 0x2F00, 9 }, // flags
};

CameraModeValue sSetDemoCModeNormVals[] = {
    /* CAM_FUNC_UNIQ9 */
    { 0x3F00, 9 }, /* flags */
};

CameraModeValue D_8011B8D8[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B900[] = {
    /* CAM_FUNC_BATT1 */
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

CameraModeValue D_8011B930[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011B958[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue sSetDung2ModeBattVals[] = {
    /* CAM_FUNC_BATT1 */
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

CameraModeValue D_8011B9B4[] = {
    /* CAM_FUNC_JUMP1 */
    { -20, 0 },    // atYOffset
    { 350, 1 },    // distMin
    { 350, 2 },    // distMax
    { 10, 4 },     // yawUpdateRateTarget
    { 50, 6 },     // maxYawUpdate
    { 60, 7 },     // unk_14
    { 40, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

CameraModeValue D_8011B9D4[] = {
    /* CAM_FUNC_JUMP1 */
    { -20, 0 },    // atYOffset
    { 350, 1 },    // distMin
    { 350, 2 },    // distMax
    { 15, 4 },     // yawUpdateRateTarget
    { 80, 6 },     // maxYawUpdate
    { 60, 7 },     // unk_14
    { 20, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

CameraModeValue D_8011B9F4[] = {
    /* CAM_FUNC_JUMP2 */
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

CameraModeValue D_8011BA18[] = {
    /* CAM_FUNC_JUMP2 */
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

CameraModeValue D_8011BA3C[] = {
    /* CAM_FUNC_UNIQ1 */
    { -50, 0 },    // yOffset
    { 350, 1 },    // distMin
    { 350, 2 },    // distMax
    { 40, 3 },     // pitchTarget
    { 60, 7 },     // fovTarget
    { 10, 8 },     // atLERPScaleMax
    { 0x0000, 9 }, // flags
};

CameraModeValue D_8011BA58[] = {
    /* CAM_FUNC_UNIQ1 */
    { -100, 0 },   // yOffset
    { 350, 1 },    // distMin
    { 350, 2 },    // distMax
    { 70, 3 },     // pitchTarget
    { 45, 7 },     // fovTarget
    { 10, 8 },     // atLERPScaleMax
    { 0x2000, 9 }, // flags
};

CameraModeValue D_8011BA74[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011BA9C[] = {
    /* CAM_FUNC_PARA1 */
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

CameraModeValue D_8011BAC8[] = {
    /* CAM_FUNC_NORM1 */
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

CameraModeValue D_8011BAF0[] = {
    /* CAM_FUNC_KEEP1 */
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

CameraModeValue D_8011BB24[] = {
    /* CAM_FUNC_KEEP3 */
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

CameraModeValue D_8011BB54[] = {
    /* CAM_FUNC_KEEP3 */
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
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_SPEC5, 8, D_8011A778 },             // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_SPEC5, 8, D_8011A778 },  // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_SPEC5, 8, D_8011A778 },  // CAM_MODE_FOOKSHOT,
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
    { CAM_FUNC_SPEC5, 8, D_8011A518 },             // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_FOOKSHOT,
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
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_FOOKSHOT,
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
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_FOOKSHOT,
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
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_FOOKSHOT,
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
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_FOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },  // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A580 },  // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 },  // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 },  // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_FREEFAL
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
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_FOOKSHOT,
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },  // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A580 },  // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 },  // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 },  // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_FREEFAL
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
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_FOOKSHOT,
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },  // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A580 },  // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 },  // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 },  // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_FREEFAL
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
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_FOOKSHOT,
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },  // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A580 },  // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 },  // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 },  // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_FREEFAL
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
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_FOOKSHOT,
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },  // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011A580 },  // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011A5C4 },  // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011A5E0 },  // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011A5A4 },  // CAM_MODE_FREEFAL
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
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_BOWARROWZ
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
    { CAM_FUNC_SPEC9, 3, sSetDoorCModeNormVals }, // CAM_MODE_NORMAL
    { CAM_FUNC_SPEC9, 3, sSetDoorCModeParaVals }, // CAM_MODE_TARGET
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
    { CAM_FUNC_PARA3, 1, D_8011B2E0 },             // CAM_MODE_TALK
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
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_BOWARROWZ
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
    { CAM_FUNC_UNIQ2, 4, D_8011B4A8 }, // CAM_MODE_NORMAL
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
    { CAM_FUNC_SPEC5, 8, D_8011A778 },  // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_NORM1, 10, D_8011B784 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011B7AC }, // CAM_MODE_TARGET
    { CAM_FUNC_BATT1, 12, D_8011B7D8 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011B808 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011B7D8 }, // CAM_MODE_BATTLE
    { CAM_FUNC_NONE, 0, NULL },         // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011B838 },  // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_NONE, 0, NULL },         // CAM_MODE_BOWARROW
    { CAM_FUNC_NONE, 0, NULL },         // CAM_MODE_BOWARROWZ
    { CAM_FUNC_NONE, 0, NULL },         // CAM_MODE_FOOKSHOT
    { CAM_FUNC_NONE, 0, NULL },         // CAM_MODE_BOOMERANG
    { CAM_FUNC_NONE, 0, NULL },         // CAM_MODE_SLINGSHOT
    { CAM_FUNC_NONE, 0, NULL },         // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011B85C },  // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011B89C },  // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011B8B8 },  // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011B87C },  // CAM_MODE_FREEFALL
};

CameraMode sCamSetDemoCModes[] = {
    { CAM_FUNC_UNIQ9, 1, sSetDemoCModeNormVals }, // CAM_MODE_NORMAL
};

CameraMode sCamSetUOFiberModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011B8D8 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011A428 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011B900 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 },  // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },  // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },  // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },  // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_FOOKSHOT
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

CameraMode sCamSetDungeon2Modes[] = {
    { CAM_FUNC_NORM1, 10, D_8011B930 },            // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011B958 },            // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A8F0 },            // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011A428 },            // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, sSetDung2ModeBattVals }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011B9F4 },             // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },             // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },             // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },             // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A778 },             // CAM_MODE_FOOKSHOT
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },             // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },             // CAM_MODE_SLINGSHOT
    { CAM_FUNC_JUMP2, 9, D_8011BA18 },             // CAM_MODE_CLIMBZ
    { CAM_FUNC_JUMP1, 8, D_8011B9B4 },             // CAM_MODE_JUMP
    { CAM_FUNC_UNIQ1, 7, D_8011BA3C },             // CAM_MODE_HANG
    { CAM_FUNC_UNIQ1, 7, D_8011BA58 },             // CAM_MODE_HANGZ
    { CAM_FUNC_JUMP1, 8, D_8011B9D4 },             // CAM_MODE_FREEFALL
    { CAM_FUNC_BATT4, 7, D_8011A61C },             // CAM_MODE_CHARGE
    { CAM_FUNC_NORM1, 10, D_8011BA74 },            // CAM_MODE_STILL
    { CAM_FUNC_PARA1, 11, D_8011BA9C },            // CAM_MODE_PUSHPULL
    { CAM_FUNC_KEEP1, 13, D_8011A68C },            // CAM_MODE_BOOMFOLLLOW
};

CameraMode sCamSetTeppenModes[] = {
    { CAM_FUNC_NORM1, 10, D_8011BAC8 }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011BAF0 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011BB24 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011A458 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 },  // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },  // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },  // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },  // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_FOOKSHOT
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
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A538 },  // CAM_MODE_BOOMERANG
    { CAM_FUNC_SUBJ3, 9, D_8011A55C },  // CAM_MODE_SLINGSHOT
};

CameraMode sCamSetNorm4Modes[] = {
    { CAM_FUNC_NORM1, 10, D_8011B75C }, // CAM_MODE_NORMAL
    { CAM_FUNC_PARA1, 11, D_8011A3C8 }, // CAM_MODE_TARGET
    { CAM_FUNC_KEEP1, 13, D_8011A3F4 }, // CAM_MODE_FOLLOWTARGET
    { CAM_FUNC_KEEP3, 12, D_8011BB54 }, // CAM_MODE_TALK
    { CAM_FUNC_BATT1, 12, D_8011A748 }, // CAM_MODE_BATTLE
    { CAM_FUNC_JUMP2, 9, D_8011A488 },  // CAM_MODE_CLIMB
    { CAM_FUNC_SUBJ3, 9, D_8011A4AC },  // CAM_MODE_FIRSTPERSON
    { CAM_FUNC_SUBJ3, 9, D_8011A4D0 },  // CAM_MODE_BOWARROW
    { CAM_FUNC_SUBJ3, 9, D_8011A4F4 },  // CAM_MODE_BOWARROWZ
    { CAM_FUNC_SPEC5, 8, D_8011A518 },  // CAM_MODE_FOOKSHOT
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
