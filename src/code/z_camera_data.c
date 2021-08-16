#include <ultra64.h>
#include <global.h>

typedef struct {
    s16 val;
    s16 param;
} /**
   * Set: NORMAL0    Mode: FOLLOWTARGET    Func: KEEP1
   */
CameraModeValue;

typedef struct {
    s16 funcIdx;
    s16 valueCnt;
    /**
     * Set: NORMAL0    Mode: FOLLOWTARGET    Func: KEEP1
     */
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

/************************************************
 *         GENERAL NORMAL0 CAMERA DATA          *
 *                                              *
 ************************************************/

/**
 * Set: NORMAL0    Mode: NORMAL    Func: NORM1
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
 * Set: NORMAL0        Mode: TARGET    Func: PARA1
 * Set: BOSS_GOMA      Mode: TARGET    Func: PARA1
 * Set: BOSS_DODO      Mode: TARGET    Func: PARA1
 * Set: BOSS_BARI      Mode: TARGET    Func: PARA1
 * Set: BOSS_FGANON    Mode: TARGET    Func: PARA1
 * Set: BOSS_BAL       Mode: TARGET    Func: PARA1
 * Set: BOSS_SHADES    Mode: TARGET    Func: PARA1
 * Set: BOSS_MOFA      Mode: TARGET    Func: PARA1
 * Set: TWIN0          Mode: TARGET    Func: PARA1
 * Set: TWIN1          Mode: TARGET    Func: PARA1
 * Set: BOSS_GANON1    Mode: TARGET    Func: PARA1
 * Set: BOSS_GANON2    Mode: TARGET    Func: PARA1
 * Set: TOWER0         Mode: TARGET    Func: PARA1
 * Set: TOWER1         Mode: TARGET    Func: PARA1
 * Set: CIRCLE3        Mode: TARGET    Func: PARA1
 * Set: NORMAL2        Mode: TARGET    Func: PARA1
 * Set: UO_FIBER       Mode: TARGET    Func: PARA1
 * Set: TEPPEN         Mode: TARGET    Func: PARA1
 * Set: NORMAL4        Mode: TARGET    Func: PARA1
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
 * Set: NORMAL0        Mode: FOLLOWTARGET    Func: KEEP1
 * Set: NORMAL3        Mode: FOLLOWTARGET    Func: KEEP1
 * Set: BOSS_GOMA      Mode: FOLLOWTARGET    Func: KEEP1
 * Set: BOSS_DODO      Mode: FOLLOWTARGET    Func: KEEP1
 * Set: BOSS_BARI      Mode: FOLLOWTARGET    Func: KEEP1
 * Set: BOSS_FGANON    Mode: FOLLOWTARGET    Func: KEEP1
 * Set: BOSS_BAL       Mode: FOLLOWTARGET    Func: KEEP1
 * Set: BOSS_SHADES    Mode: FOLLOWTARGET    Func: KEEP1
 * Set: BOSS_MOFA      Mode: FOLLOWTARGET    Func: KEEP1
 * Set: TWIN0          Mode: FOLLOWTARGET    Func: KEEP1
 * Set: TWIN1          Mode: FOLLOWTARGET    Func: KEEP1
 * Set: BOSS_GANON1    Mode: FOLLOWTARGET    Func: KEEP1
 * Set: BOSS_GANON2    Mode: FOLLOWTARGET    Func: KEEP1
 * Set: TOWER0         Mode: FOLLOWTARGET    Func: KEEP1
 * Set: TOWER1         Mode: FOLLOWTARGET    Func: KEEP1
 * Set: CIRCLE3        Mode: FOLLOWTARGET    Func: KEEP1
 * Set: UFOBEAN        Mode: FOLLOWTARGET    Func: KEEP1
 * Set: LIFTBEAN       Mode: FOLLOWTARGET    Func: KEEP1
 * Set: NORMAL2        Mode: FOLLOWTARGET    Func: KEEP1
 * Set: UO_FIBER       Mode: FOLLOWTARGET    Func: KEEP1
 * Set: NORMAL4        Mode: FOLLOWTARGET    Func: KEEP1
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
 * Set: NORMAL0        Mode: TALK    Func: KEEP3
 * Set: NORMAL1        Mode: TALK    Func: KEEP3
 * Set: DUNGEON0       Mode: TALK    Func: KEEP3
 * Set: BOSS_GOMA      Mode: TALK    Func: KEEP3
 * Set: BOSS_DODO      Mode: TALK    Func: KEEP3
 * Set: BOSS_BARI      Mode: TALK    Func: KEEP3
 * Set: BOSS_FGANON    Mode: TALK    Func: KEEP3
 * Set: BOSS_BAL       Mode: TALK    Func: KEEP3
 * Set: BOSS_SHADES    Mode: TALK    Func: KEEP3
 * Set: BOSS_MOFA      Mode: TALK    Func: KEEP3
 * Set: TWIN0          Mode: TALK    Func: KEEP3
 * Set: TWIN1          Mode: TALK    Func: KEEP3
 * Set: BOSS_GANON1    Mode: TALK    Func: KEEP3
 * Set: BOSS_GANON2    Mode: TALK    Func: KEEP3
 * Set: TOWER0         Mode: TALK    Func: KEEP3
 * Set: TOWER1         Mode: TALK    Func: KEEP3
 * Set: CIRCLE3        Mode: TALK    Func: KEEP3
 * Set: UFOBEAN        Mode: TALK    Func: KEEP3
 * Set: LIFTBEAN       Mode: TALK    Func: KEEP3
 * Set: TAKO           Mode: TALK    Func: KEEP3
 * Set: NORMAL2        Mode: TALK    Func: KEEP3
 * Set: UO_FIBER       Mode: TALK    Func: KEEP3
 * Set: DUNGEON2       Mode: TALK    Func: KEEP3
 * Set: CIRCLE7        Mode: TALK    Func: KEEP3
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
 * Set: NORMAL0    Mode: BATTLE    Func: BATT1
 * Set: NORMAL3    Mode: BATTLE    Func: BATT1
 * Set: TOWER0     Mode: BATTLE    Func: BATT1
 * Set: TOWER1     Mode: BATTLE    Func: BATT1
 * Set: TEPPEN     Mode: BATTLE    Func: BATT1
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
 * Set: NORMAL0        Mode: CLIMB    Func: JUMP2
 * Set: NORMAL3        Mode: CLIMB    Func: JUMP2
 * Set: BOSS_GOMA      Mode: CLIMB    Func: JUMP2
 * Set: BOSS_DODO      Mode: CLIMB    Func: JUMP2
 * Set: BOSS_BARI      Mode: CLIMB    Func: JUMP2
 * Set: BOSS_FGANON    Mode: CLIMB    Func: JUMP2
 * Set: BOSS_BAL       Mode: CLIMB    Func: JUMP2
 * Set: BOSS_SHADES    Mode: CLIMB    Func: JUMP2
 * Set: BOSS_MOFA      Mode: CLIMB    Func: JUMP2
 * Set: TWIN0          Mode: CLIMB    Func: JUMP2
 * Set: TWIN1          Mode: CLIMB    Func: JUMP2
 * Set: BOSS_GANON1    Mode: CLIMB    Func: JUMP2
 * Set: BOSS_GANON2    Mode: CLIMB    Func: JUMP2
 * Set: TOWER0         Mode: CLIMB    Func: JUMP2
 * Set: TOWER1         Mode: CLIMB    Func: JUMP2
 * Set: CIRCLE3        Mode: CLIMB    Func: JUMP2
 * Set: UFOBEAN        Mode: CLIMB    Func: JUMP2
 * Set: LIFTBEAN       Mode: CLIMB    Func: JUMP2
 * Set: NORMAL2        Mode: CLIMB    Func: JUMP2
 * Set: UO_FIBER       Mode: CLIMB    Func: JUMP2
 * Set: TEPPEN         Mode: CLIMB    Func: JUMP2
 * Set: NORMAL4        Mode: CLIMB    Func: JUMP2
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
 * Set: NORMAL0        Mode: FIRSTPERSON    Func: SUBJ3
 * Set: NORMAL1        Mode: FIRSTPERSON    Func: SUBJ3
 * Set: DUNGEON0       Mode: FIRSTPERSON    Func: SUBJ3
 * Set: DUNGEON1       Mode: FIRSTPERSON    Func: SUBJ3
 * Set: NORMAL3        Mode: FIRSTPERSON    Func: SUBJ3
 * Set: BOSS_GOMA      Mode: FIRSTPERSON    Func: SUBJ3
 * Set: BOSS_DODO      Mode: FIRSTPERSON    Func: SUBJ3
 * Set: BOSS_BARI      Mode: FIRSTPERSON    Func: SUBJ3
 * Set: BOSS_FGANON    Mode: FIRSTPERSON    Func: SUBJ3
 * Set: BOSS_BAL       Mode: FIRSTPERSON    Func: SUBJ3
 * Set: BOSS_SHADES    Mode: FIRSTPERSON    Func: SUBJ3
 * Set: BOSS_MOFA      Mode: FIRSTPERSON    Func: SUBJ3
 * Set: TWIN0          Mode: FIRSTPERSON    Func: SUBJ3
 * Set: TWIN1          Mode: FIRSTPERSON    Func: SUBJ3
 * Set: BOSS_GANON1    Mode: FIRSTPERSON    Func: SUBJ3
 * Set: BOSS_GANON2    Mode: FIRSTPERSON    Func: SUBJ3
 * Set: TOWER0         Mode: FIRSTPERSON    Func: SUBJ3
 * Set: TOWER1         Mode: FIRSTPERSON    Func: SUBJ3
 * Set: CIRCLE3        Mode: FIRSTPERSON    Func: SUBJ3
 * Set: UFOBEAN        Mode: FIRSTPERSON    Func: SUBJ3
 * Set: LIFTBEAN       Mode: FIRSTPERSON    Func: SUBJ3
 * Set: TAKO           Mode: FIRSTPERSON    Func: SUBJ3
 * Set: NORMAL2        Mode: FIRSTPERSON    Func: SUBJ3
 * Set: UO_FIBER       Mode: FIRSTPERSON    Func: SUBJ3
 * Set: DUNGEON2       Mode: FIRSTPERSON    Func: SUBJ3
 * Set: TEPPEN         Mode: FIRSTPERSON    Func: SUBJ3
 * Set: CIRCLE7        Mode: FIRSTPERSON    Func: SUBJ3
 * Set: NORMAL4        Mode: FIRSTPERSON    Func: SUBJ3
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
 * Set: NORMAL0        Mode: BOWARROW    Func: SUBJ3
 * Set: NORMAL1        Mode: BOWARROW    Func: SUBJ3
 * Set: DUNGEON0       Mode: BOWARROW    Func: SUBJ3
 * Set: DUNGEON1       Mode: BOWARROW    Func: SUBJ3
 * Set: NORMAL3        Mode: BOWARROW    Func: SUBJ3
 * Set: BOSS_GOMA      Mode: BOWARROW    Func: SUBJ3
 * Set: BOSS_DODO      Mode: BOWARROW    Func: SUBJ3
 * Set: BOSS_BARI      Mode: BOWARROW    Func: SUBJ3
 * Set: BOSS_FGANON    Mode: BOWARROW    Func: SUBJ3
 * Set: BOSS_BAL       Mode: BOWARROW    Func: SUBJ3
 * Set: BOSS_SHADES    Mode: BOWARROW    Func: SUBJ3
 * Set: BOSS_MOFA      Mode: BOWARROW    Func: SUBJ3
 * Set: TWIN0          Mode: BOWARROW    Func: SUBJ3
 * Set: TWIN1          Mode: BOWARROW    Func: SUBJ3
 * Set: BOSS_GANON1    Mode: BOWARROW    Func: SUBJ3
 * Set: BOSS_GANON2    Mode: BOWARROW    Func: SUBJ3
 * Set: TOWER0         Mode: BOWARROW    Func: SUBJ3
 * Set: TOWER1         Mode: BOWARROW    Func: SUBJ3
 * Set: CIRCLE3        Mode: BOWARROW    Func: SUBJ3
 * Set: UFOBEAN        Mode: BOWARROW    Func: SUBJ3
 * Set: LIFTBEAN       Mode: BOWARROW    Func: SUBJ3
 * Set: TAKO           Mode: BOWARROW    Func: SUBJ3
 * Set: NORMAL2        Mode: BOWARROW    Func: SUBJ3
 * Set: UO_FIBER       Mode: BOWARROW    Func: SUBJ3
 * Set: DUNGEON2       Mode: BOWARROW    Func: SUBJ3
 * Set: TEPPEN         Mode: BOWARROW    Func: SUBJ3
 * Set: CIRCLE7        Mode: BOWARROW    Func: SUBJ3
 * Set: NORMAL4        Mode: BOWARROW    Func: SUBJ3
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
 * Set: NORMAL0        Mode: BOWARROWZ    Func: SUBJ3
 * Set: NORMAL1        Mode: BOWARROWZ    Func: SUBJ3
 * Set: DUNGEON0       Mode: BOWARROWZ    Func: SUBJ3
 * Set: DUNGEON1       Mode: BOWARROWZ    Func: SUBJ3
 * Set: NORMAL3        Mode: BOWARROWZ    Func: SUBJ3
 * Set: HORSE0         Mode: BOWARROWZ    Func: SUBJ3
 * Set: BOSS_GOMA      Mode: BOWARROWZ    Func: SUBJ3
 * Set: BOSS_DODO      Mode: BOWARROWZ    Func: SUBJ3
 * Set: BOSS_BARI      Mode: BOWARROWZ    Func: SUBJ3
 * Set: BOSS_FGANON    Mode: BOWARROWZ    Func: SUBJ3
 * Set: BOSS_BAL       Mode: BOWARROWZ    Func: SUBJ3
 * Set: BOSS_SHADES    Mode: BOWARROWZ    Func: SUBJ3
 * Set: BOSS_MOFA      Mode: BOWARROWZ    Func: SUBJ3
 * Set: TWIN0          Mode: BOWARROWZ    Func: SUBJ3
 * Set: TWIN1          Mode: BOWARROWZ    Func: SUBJ3
 * Set: BOSS_GANON1    Mode: BOWARROWZ    Func: SUBJ3
 * Set: BOSS_GANON2    Mode: BOWARROWZ    Func: SUBJ3
 * Set: TOWER0         Mode: BOWARROWZ    Func: SUBJ3
 * Set: TOWER1         Mode: BOWARROWZ    Func: SUBJ3
 * Set: CIRCLE3        Mode: BOWARROWZ    Func: SUBJ3
 * Set: UFOBEAN        Mode: BOWARROWZ    Func: SUBJ3
 * Set: LIFTBEAN       Mode: BOWARROWZ    Func: SUBJ3
 * Set: TAKO           Mode: BOWARROWZ    Func: SUBJ3
 * Set: NORMAL2        Mode: BOWARROWZ    Func: SUBJ3
 * Set: UO_FIBER       Mode: BOWARROWZ    Func: SUBJ3
 * Set: DUNGEON2       Mode: BOWARROWZ    Func: SUBJ3
 * Set: TEPPEN         Mode: BOWARROWZ    Func: SUBJ3
 * Set: NORMAL4        Mode: BOWARROWZ    Func: SUBJ3
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
 * Set: NORMAL0        Mode: HOOKSHOT    Func: SPEC5
 * Set: NORMAL3        Mode: HOOKSHOT    Func: SPEC5
 * Set: BOSS_GOMA      Mode: HOOKSHOT    Func: SPEC5
 * Set: BOSS_DODO      Mode: HOOKSHOT    Func: SPEC5
 * Set: BOSS_BARI      Mode: HOOKSHOT    Func: SPEC5
 * Set: BOSS_FGANON    Mode: HOOKSHOT    Func: SPEC5
 * Set: BOSS_BAL       Mode: HOOKSHOT    Func: SPEC5
 * Set: BOSS_SHADES    Mode: HOOKSHOT    Func: SPEC5
 * Set: BOSS_MOFA      Mode: HOOKSHOT    Func: SPEC5
 * Set: TWIN0          Mode: HOOKSHOT    Func: SPEC5
 * Set: TWIN1          Mode: HOOKSHOT    Func: SPEC5
 * Set: BOSS_GANON1    Mode: HOOKSHOT    Func: SPEC5
 * Set: BOSS_GANON2    Mode: HOOKSHOT    Func: SPEC5
 * Set: TOWER0         Mode: HOOKSHOT    Func: SPEC5
 * Set: TOWER1         Mode: HOOKSHOT    Func: SPEC5
 * Set: CIRCLE3        Mode: HOOKSHOT    Func: SPEC5
 * Set: UFOBEAN        Mode: HOOKSHOT    Func: SPEC5
 * Set: LIFTBEAN       Mode: HOOKSHOT    Func: SPEC5
 * Set: NORMAL2        Mode: HOOKSHOT    Func: SPEC5
 * Set: UO_FIBER       Mode: HOOKSHOT    Func: SPEC5
 * Set: TEPPEN         Mode: HOOKSHOT    Func: SPEC5
 * Set: CIRCLE7        Mode: HOOKSHOT    Func: SPEC5
 * Set: NORMAL4        Mode: HOOKSHOT    Func: SPEC5
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
 * Set: NORMAL0        Mode: BOOMERANG    Func: SUBJ3
 * Set: NORMAL1        Mode: BOOMERANG    Func: SUBJ3
 * Set: DUNGEON0       Mode: BOOMERANG    Func: SUBJ3
 * Set: DUNGEON1       Mode: BOOMERANG    Func: SUBJ3
 * Set: BOSS_GOMA      Mode: BOOMERANG    Func: SUBJ3
 * Set: BOSS_DODO      Mode: BOOMERANG    Func: SUBJ3
 * Set: BOSS_BARI      Mode: BOOMERANG    Func: SUBJ3
 * Set: BOSS_FGANON    Mode: BOOMERANG    Func: SUBJ3
 * Set: BOSS_BAL       Mode: BOOMERANG    Func: SUBJ3
 * Set: BOSS_SHADES    Mode: BOOMERANG    Func: SUBJ3
 * Set: BOSS_MOFA      Mode: BOOMERANG    Func: SUBJ3
 * Set: TWIN0          Mode: BOOMERANG    Func: SUBJ3
 * Set: TWIN1          Mode: BOOMERANG    Func: SUBJ3
 * Set: BOSS_GANON1    Mode: BOOMERANG    Func: SUBJ3
 * Set: BOSS_GANON2    Mode: BOOMERANG    Func: SUBJ3
 * Set: TOWER0         Mode: BOOMERANG    Func: SUBJ3
 * Set: TOWER1         Mode: BOOMERANG    Func: SUBJ3
 * Set: CIRCLE3        Mode: BOOMERANG    Func: SUBJ3
 * Set: UFOBEAN        Mode: BOOMERANG    Func: SUBJ3
 * Set: LIFTBEAN       Mode: BOOMERANG    Func: SUBJ3
 * Set: TAKO           Mode: BOOMERANG    Func: SUBJ3
 * Set: NORMAL2        Mode: BOOMERANG    Func: SUBJ3
 * Set: UO_FIBER       Mode: BOOMERANG    Func: SUBJ3
 * Set: DUNGEON2       Mode: BOOMERANG    Func: SUBJ3
 * Set: TEPPEN         Mode: BOOMERANG    Func: SUBJ3
 * Set: CIRCLE7        Mode: BOOMERANG    Func: SUBJ3
 * Set: NORMAL4        Mode: BOOMERANG    Func: SUBJ3
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
 * Set: NORMAL0        Mode: SLINGSHOT    Func: SUBJ3
 * Set: NORMAL1        Mode: SLINGSHOT    Func: SUBJ3
 * Set: DUNGEON0       Mode: SLINGSHOT    Func: SUBJ3
 * Set: DUNGEON1       Mode: SLINGSHOT    Func: SUBJ3
 * Set: BOSS_GOMA      Mode: SLINGSHOT    Func: SUBJ3
 * Set: BOSS_DODO      Mode: SLINGSHOT    Func: SUBJ3
 * Set: BOSS_BARI      Mode: SLINGSHOT    Func: SUBJ3
 * Set: BOSS_FGANON    Mode: SLINGSHOT    Func: SUBJ3
 * Set: BOSS_BAL       Mode: SLINGSHOT    Func: SUBJ3
 * Set: BOSS_SHADES    Mode: SLINGSHOT    Func: SUBJ3
 * Set: BOSS_MOFA      Mode: SLINGSHOT    Func: SUBJ3
 * Set: TWIN0          Mode: SLINGSHOT    Func: SUBJ3
 * Set: TWIN1          Mode: SLINGSHOT    Func: SUBJ3
 * Set: BOSS_GANON1    Mode: SLINGSHOT    Func: SUBJ3
 * Set: BOSS_GANON2    Mode: SLINGSHOT    Func: SUBJ3
 * Set: TOWER0         Mode: SLINGSHOT    Func: SUBJ3
 * Set: TOWER1         Mode: SLINGSHOT    Func: SUBJ3
 * Set: CIRCLE3        Mode: SLINGSHOT    Func: SUBJ3
 * Set: UFOBEAN        Mode: SLINGSHOT    Func: SUBJ3
 * Set: LIFTBEAN       Mode: SLINGSHOT    Func: SUBJ3
 * Set: TAKO           Mode: SLINGSHOT    Func: SUBJ3
 * Set: NORMAL2        Mode: SLINGSHOT    Func: SUBJ3
 * Set: UO_FIBER       Mode: SLINGSHOT    Func: SUBJ3
 * Set: DUNGEON2       Mode: SLINGSHOT    Func: SUBJ3
 * Set: TEPPEN         Mode: SLINGSHOT    Func: SUBJ3
 * Set: CIRCLE7        Mode: SLINGSHOT    Func: SUBJ3
 * Set: NORMAL4        Mode: SLINGSHOT    Func: SUBJ3
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
 * Set: NORMAL0        Mode: CLIMBZ    Func: JUMP2
 * Set: NORMAL3        Mode: CLIMBZ    Func: JUMP2
 * Set: BOSS_GOMA      Mode: CLIMBZ    Func: JUMP2
 * Set: BOSS_DODO      Mode: CLIMBZ    Func: JUMP2
 * Set: BOSS_BARI      Mode: CLIMBZ    Func: JUMP2
 * Set: BOSS_FGANON    Mode: CLIMBZ    Func: JUMP2
 * Set: BOSS_BAL       Mode: CLIMBZ    Func: JUMP2
 * Set: BOSS_SHADES    Mode: CLIMBZ    Func: JUMP2
 * Set: BOSS_MOFA      Mode: CLIMBZ    Func: JUMP2
 * Set: TWIN0          Mode: CLIMBZ    Func: JUMP2
 * Set: TWIN1          Mode: CLIMBZ    Func: JUMP2
 * Set: BOSS_GANON1    Mode: CLIMBZ    Func: JUMP2
 * Set: BOSS_GANON2    Mode: CLIMBZ    Func: JUMP2
 * Set: TOWER0         Mode: CLIMBZ    Func: JUMP2
 * Set: TOWER1         Mode: CLIMBZ    Func: JUMP2
 * Set: CIRCLE3        Mode: CLIMBZ    Func: JUMP2
 * Set: UFOBEAN        Mode: CLIMBZ    Func: JUMP2
 * Set: LIFTBEAN       Mode: CLIMBZ    Func: JUMP2
 * Set: NORMAL2        Mode: CLIMBZ    Func: JUMP2
 * Set: UO_FIBER       Mode: CLIMBZ    Func: JUMP2
 * Set: TEPPEN         Mode: CLIMBZ    Func: JUMP2
 * Set: NORMAL4        Mode: CLIMBZ    Func: JUMP2
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
 * Set: NORMAL0     Mode: JUMP        Func: JUMP1
 * Set: NORMAL3     Mode: JUMP        Func: JUMP1
 * Set: NORMAL3     Mode: FREEFALL    Func: JUMP1
 * Set: GOMA        Mode: JUMP        Func: JUMP1
 * Set: GOMA        Mode: FREEFALL    Func: JUMP1
 * Set: DODO        Mode: JUMP        Func: JUMP1
 * Set: DODO        Mode: FREEFALL    Func: JUMP1
 * Set: BARI        Mode: JUMP        Func: JUMP1
 * Set: BARI        Mode: FREEFALL    Func: JUMP1
 * Set: FGANON      Mode: JUMP        Func: JUMP1
 * Set: FGANON      Mode: FREEFALL    Func: JUMP1
 * Set: BAL         Mode: JUMP        Func: JUMP1
 * Set: BAL         Mode: FREEFALL    Func: JUMP1
 * Set: MOFA        Mode: JUMP        Func: JUMP1
 * Set: MOFA        Mode: FREEFALL    Func: JUMP1
 * Set: TWIN0       Mode: JUMP        Func: JUMP1
 * Set: TWIN0       Mode: FREEFALL    Func: JUMP1
 * Set: TWIN1       Mode: JUMP        Func: JUMP1
 * Set: TWIN1       Mode: FREEFALL    Func: JUMP1
 * Set: GANON1      Mode: JUMP        Func: JUMP1
 * Set: GANON1      Mode: FREEFALL    Func: JUMP1
 * Set: GANON2      Mode: JUMP        Func: JUMP1
 * Set: GANON2      Mode: FREEFALL    Func: JUMP1
 * Set: TOWER0      Mode: FREEFALL    Func: JUMP1
 * Set: TOWER1      Mode: FREEFALL    Func: JUMP1
 * Set: UFOBEAN     Mode: FREEFALL    Func: JUMP1
 * Set: LIFTBEAN    Mode: FREEFALL    Func: JUMP1
 * Set: NORMAL2     Mode: JUMP        Func: JUMP1
 * Set: NORMAL2     Mode: FREEFALL    Func: JUMP1
 * Set: UOFIBER     Mode: JUMP        Func: JUMP1
 * Set: UOFIBER     Mode: FREEFALL    Func: JUMP1
 * Set: TEPPEN      Mode: JUMP        Func: JUMP1
 * Set: TEPPEN      Mode: FREEFALL    Func: JUMP1
 * Set: NORMAL4     Mode: JUMP        Func: JUMP1
 * Set: NORMAL4     Mode: FREEFALL    Func: JUMP1
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
 * Set: NORMAL0    Mode: HANG    Func: UNIQ1
 * Set: NORMAL3    Mode: HANG    Func: UNIQ1
 * Set: GOMA       Mode: HANG    Func: UNIQ1
 * Set: DODO       Mode: HANG    Func: UNIQ1
 * Set: BARI       Mode: HANG    Func: UNIQ1
 * Set: FGANON     Mode: HANG    Func: UNIQ1
 * Set: BAL        Mode: HANG    Func: UNIQ1
 * Set: SHADES     Mode: HANG    Func: UNIQ1
 * Set: MOFA       Mode: HANG    Func: UNIQ1
 * Set: TWIN0      Mode: HANG    Func: UNIQ1
 * Set: TWIN1      Mode: HANG    Func: UNIQ1
 * Set: GANON1     Mode: HANG    Func: UNIQ1
 * Set: GANON2     Mode: HANG    Func: UNIQ1
 * Set: TOWER0     Mode: HANG    Func: UNIQ1
 * Set: TOWER1     Mode: HANG    Func: UNIQ1
 * Set: NORMAL2    Mode: HANG    Func: UNIQ1
 * Set: UOFIBER    Mode: HANG    Func: UNIQ1
 * Set: TEPPEN     Mode: HANG    Func: UNIQ1
 * Set: NORMAL4    Mode: HANG    Func: UNIQ1
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
 * Set: NORMAL0    Mode: HANGZ    Func: UNIQ1
 * Set: NORMAL3    Mode: HANGZ    Func: UNIQ1
 * Set: GOMA       Mode: HANGZ    Func: UNIQ1
 * Set: DODO       Mode: HANGZ    Func: UNIQ1
 * Set: BARI       Mode: HANGZ    Func: UNIQ1
 * Set: FGANON     Mode: HANGZ    Func: UNIQ1
 * Set: BAL        Mode: HANGZ    Func: UNIQ1
 * Set: SHADES     Mode: HANGZ    Func: UNIQ1
 * Set: MOFA       Mode: HANGZ    Func: UNIQ1
 * Set: TWIN0      Mode: HANGZ    Func: UNIQ1
 * Set: TWIN1      Mode: HANGZ    Func: UNIQ1
 * Set: GANON1     Mode: HANGZ    Func: UNIQ1
 * Set: GANON2     Mode: HANGZ    Func: UNIQ1
 * Set: TOWER0     Mode: HANGZ    Func: UNIQ1
 * Set: TOWER1     Mode: HANGZ    Func: UNIQ1
 * Set: NORMAL2    Mode: HANGZ    Func: UNIQ1
 * Set: UOFIBER    Mode: HANGZ    Func: UNIQ1
 * Set: TEPPEN     Mode: HANGZ    Func: UNIQ1
 * Set: NORMAL4    Mode: HANGZ    Func: UNIQ1
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
 * Set: NORMAL0    Mode: FREEFALL    Func: JUMP1
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
 * Set: NORMAL0     Mode: CHARGE    Func: BATT4
 * Set: NORMAL3     Mode: CHARGE    Func: BATT4
 * Set: DODO        Mode: CHARGE    Func: BATT4
 * Set: BARI        Mode: CHARGE    Func: BATT4
 * Set: FGANON      Mode: CHARGE    Func: BATT4
 * Set: BAL         Mode: CHARGE    Func: BATT4
 * Set: SHADES      Mode: CHARGE    Func: BATT4
 * Set: MOFA        Mode: CHARGE    Func: BATT4
 * Set: TWIN0       Mode: CHARGE    Func: BATT4
 * Set: TWIN1       Mode: CHARGE    Func: BATT4
 * Set: GANON2      Mode: CHARGE    Func: BATT4
 * Set: TOWER0      Mode: CHARGE    Func: BATT4
 * Set: TOWER1      Mode: CHARGE    Func: BATT4
 * Set: CIRCLE3     Mode: CHARGE    Func: BATT4
 * Set: UFOBEAN     Mode: CHARGE    Func: BATT4
 * Set: LIFTBEAN    Mode: CHARGE    Func: BATT4
 * Set: NORMAL2     Mode: CHARGE    Func: BATT4
 * Set: UOFIBER     Mode: CHARGE    Func: BATT4
 * Set: DUNGEON2    Mode: CHARGE    Func: BATT4
 * Set: TEPPEN      Mode: CHARGE    Func: BATT4
 * Set: NORMAL4     Mode: CHARGE    Func: BATT4
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
 * Set: NORMAL0    Mode: STILL    Func: NORM1
 * Set: NORMAL3    Mode: STILL    Func: NORM1
 * Set: GOMA       Mode: STILL    Func: NORM1
 * Set: DODO       Mode: STILL    Func: NORM1
 * Set: BARI       Mode: STILL    Func: NORM1
 * Set: FGANON     Mode: STILL    Func: NORM1
 * Set: BAL        Mode: STILL    Func: NORM1
 * Set: SHADES     Mode: STILL    Func: NORM1
 * Set: MOFA       Mode: STILL    Func: NORM1
 * Set: TWIN0      Mode: STILL    Func: NORM1
 * Set: TWIN1      Mode: STILL    Func: NORM1
 * Set: GANON1     Mode: STILL    Func: NORM1
 * Set: GANON2     Mode: STILL    Func: NORM1
 * Set: TOWER0     Mode: STILL    Func: NORM1
 * Set: TOWER1     Mode: STILL    Func: NORM1
 * Set: CIRCLE3    Mode: STILL    Func: NORM1
 * Set: NORMAL2    Mode: STILL    Func: NORM1
 * Set: UOFIBER    Mode: STILL    Func: NORM1
 * Set: TEPPEN     Mode: STILL    Func: NORM1
 * Set: NORMAL4    Mode: STILL    Func: NORM1
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
 * Set: NORMAL0     Mode: PUSHPULL    Func: PARA1
 * Set: NORMAL1     Mode: PUSHPULL    Func: PARA1
 * Set: DUNGEON0    Mode: PUSHPULL    Func: PARA1
 * Set: NORMAL3     Mode: PUSHPULL    Func: PARA1
 * Set: GOMA        Mode: PUSHPULL    Func: PARA1
 * Set: DODO        Mode: PUSHPULL    Func: PARA1
 * Set: BARI        Mode: PUSHPULL    Func: PARA1
 * Set: FGANON      Mode: PUSHPULL    Func: PARA1
 * Set: BAL         Mode: PUSHPULL    Func: PARA1
 * Set: SHADES      Mode: PUSHPULL    Func: PARA1
 * Set: MOFA        Mode: PUSHPULL    Func: PARA1
 * Set: TWIN0       Mode: PUSHPULL    Func: PARA1
 * Set: TWIN1       Mode: PUSHPULL    Func: PARA1
 * Set: GANON1      Mode: PUSHPULL    Func: PARA1
 * Set: GANON2      Mode: PUSHPULL    Func: PARA1
 * Set: TOWER0      Mode: PUSHPULL    Func: PARA1
 * Set: TOWER1      Mode: PUSHPULL    Func: PARA1
 * Set: CIRCLE3     Mode: PUSHPULL    Func: PARA1
 * Set: UFOBEAN     Mode: PUSHPULL    Func: PARA1
 * Set: LIFTBEAN    Mode: PUSHPULL    Func: PARA1
 * Set: TAKO        Mode: PUSHPULL    Func: PARA1
 * Set: NORMAL2     Mode: PUSHPULL    Func: PARA1
 * Set: UOFIBER     Mode: PUSHPULL    Func: PARA1
 * Set: TEPPEN      Mode: PUSHPULL    Func: PARA1
 * Set: NORMAL4     Mode: PUSHPULL    Func: PARA1
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
 * Set: NORMAL0     Mode: BOOMFOLLLOW    Func: KEEP1
 * Set: NORMAL1     Mode: BOOMFOLLLOW    Func: KEEP1
 * Set: DUNGEON0    Mode: BOOMFOLLLOW    Func: KEEP1
 * Set: DUNGEON1    Mode: BOOMFOLLLOW    Func: KEEP1
 * Set: NORMAL3     Mode: BOOMFOLLLOW    Func: KEEP1
 * Set: GOMA        Mode: BOOMFOLLLOW    Func: KEEP1
 * Set: DODO        Mode: BOOMFOLLLOW    Func: KEEP1
 * Set: BARI        Mode: BOOMFOLLLOW    Func: KEEP1
 * Set: FGANON      Mode: BOOMFOLLLOW    Func: KEEP1
 * Set: BAL         Mode: BOOMFOLLLOW    Func: KEEP1
 * Set: SHADES      Mode: BOOMFOLLLOW    Func: KEEP1
 * Set: MOFA        Mode: BOOMFOLLLOW    Func: KEEP1
 * Set: TWIN0       Mode: BOOMFOLLLOW    Func: KEEP1
 * Set: TWIN1       Mode: BOOMFOLLLOW    Func: KEEP1
 * Set: GANON1      Mode: BOOMFOLLLOW    Func: KEEP1
 * Set: GANON2      Mode: BOOMFOLLLOW    Func: KEEP1
 * Set: TOWER0      Mode: BOOMFOLLLOW    Func: KEEP1
 * Set: TOWER1      Mode: BOOMFOLLLOW    Func: KEEP1
 * Set: CIRCLE3     Mode: BOOMFOLLLOW    Func: KEEP1
 * Set: UFOBEAN     Mode: BOOMFOLLLOW    Func: KEEP1
 * Set: LIFTBEAN    Mode: BOOMFOLLLOW    Func: KEEP1
 * Set: TAKO        Mode: BOOMFOLLLOW    Func: KEEP1
 * Set: NORMAL2     Mode: BOOMFOLLLOW    Func: KEEP1
 * Set: UOFIBER     Mode: BOOMFOLLLOW    Func: KEEP1
 * Set: DUNGEON2    Mode: BOOMFOLLLOW    Func: KEEP1
 * Set: TEPPEN      Mode: BOOMFOLLLOW    Func: KEEP1
 * Set: NORMAL4     Mode: BOOMFOLLLOW    Func: KEEP1
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

/************************************************
 *         CUSTOM NORMAL1 CAMERA DATA           *
 *                                              *
 ************************************************/

/**
 * Set: NORMAL1    Mode: NORMAL    Func: NORM1
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
 * Set: NORMAL1    Mode: TARGET    Func: PARA1
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
 * Set: NORMAL1     Mode: FOLLOWTARGET    Func: KEEP1
 * Set: DUNGEON1    Mode: FOLLOWTARGET    Func: KEEP1
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
 * Set: NORMAL1     Mode: BATTLE    Func: BATT1
 * Set: CIRCLE3     Mode: BATTLE    Func: BATT1
 * Set: UFOBEAN     Mode: BATTLE    Func: BATT1
 * Set: LIFTBEAN    Mode: BATTLE    Func: BATT1
 * Set: NORMAL2     Mode: BATTLE    Func: BATT1
 * Set: NORMAL4     Mode: BATTLE    Func: BATT1
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
 * Set: NORMAL1     Mode: HOOKSHOT    Func: SPEC5
 * Set: DUNGEON0    Mode: HOOKSHOT    Func: SPEC5
 * Set: DUNGEON1    Mode: HOOKSHOT    Func: SPEC5
 * Set: TAKO        Mode: HOOKSHOT    Func: SPEC5
 * Set: DUNGEON2    Mode: HOOKSHOT    Func: SPEC5
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
 * Set: NORMAL1    Mode: JUMP    Func: JUMP1
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
 * Set: NORMAL1    Mode: FREEFALL    Func: JUMP1
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
 * Set: NORMAL1    Mode: CLIMB    Func: JUMP2
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
 * Set: NORMAL1    Mode: CLIMBZ    Func: JUMP2
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
 * Set: NORMAL1    Mode: CHARGE    Func: BATT4
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
 * Set: NORMAL1    Mode: HANG    Func: UNIQ1
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
 * Set: NORMAL1    Mode: HANGZ    Func: UNIQ1
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
 * Set: NORMAL1    Mode: STILL    Func: NORM1
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

/************************************************
 *        CUSTOM DUNGEON0 CAMERA DATA           *
 *                                              *
 ************************************************/

/**
 * Set: DUNGEON0    Mode: NORMAL    Func: NORM1
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
 * Set: DUNGEON0    Mode: TARGET    Func: PARA1
 * Set: DUNGEON1    Mode: TARGET    Func: PARA1
 * Set: TAKO        Mode: TARGET    Func: PARA1
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
 * Set: DUNGEON0    Mode: FOLLOWTARGET    Func: KEEP1
 * Set: TAKO        Mode: FOLLOWTARGET    Func: KEEP1
 * Set: DUNGEON2    Mode: FOLLOWTARGET    Func: KEEP1
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
 * Set: DUNGEON0    Mode: BATTLE    Func: BATT1
 * Set: DUNGEON1    Mode: BATTLE    Func: BATT1
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
 * Set: DUNGEON0    Mode: JUMP    Func: JUMP1
 * Set: TAKO        Mode: JUMP    Func: JUMP1
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
 * Set: DUNGEON0    Mode: FREEFALL    Func: JUMP1
 * Set: TAKO        Mode: FREEFALL    Func: JUMP1
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
 * Set: DUNGEON0    Mode: CLIMB    Func: JUMP2
 * Set: TAKO        Mode: CLIMB    Func: JUMP2
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
 * Set: DUNGEON0    Mode: CLIMBZ    Func: JUMP2
 * Set: TAKO        Mode: CLIMBZ    Func: JUMP2
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
 * Set: DUNGEON0    Mode: CHARGE    Func: BATT4
 * Set: BOSSGOMA    Mode: CHARGE    Func: BATT4
 * Set: TAKO        Mode: CHARGE    Func: BATT4
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
 * Set: DUNGEON0    Mode: HANG    Func: UNIQ1
 * Set: TAKO        Mode: HANG    Func: UNIQ1
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
 * Set: DUNGEON0    Mode: HANGZ    Func: UNIQ1
 * Set: TAKO        Mode: HANGZ    Func: UNIQ1
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
 * Set: DUNGEON0    Mode: STILL    Func: NORM1
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

/************************************************
 *        CUSTOM DUNGEON1 CAMERA DATA           *
 *                                              *
 ************************************************/

/**
 * Set: DUNGEON1    Mode: NORMAL    Func: NORM1
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
 * Set: DUNGEON1    Mode: TALK    Func: KEEP3
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
 * Set: DUNGEON1    Mode: JUMP    Func: JUMP1
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
 * Set: DUNGEON1    Mode: FREEFALL    Func: JUMP1
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
 * Set: DUNGEON1    Mode: CLIMB    Func: JUMP2
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
 * Set: DUNGEON1    Mode: CLIMBZ    Func: JUMP2
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
 * Set: DUNGEON1    Mode: CHARGE    Func: BATT4
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
 * Set: DUNGEON1    Mode: HANG    Func: UNIQ1
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
 * Set: DUNGEON1    Mode: HANGZ    Func: UNIQ1
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
 * Set: DUNGEON1    Mode: STILL    Func: NORM1
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
 * Set: DUNGEON1    Mode: PUSHPULL    Func: PARA1
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

/************************************************
 *         CUSTOM NORMAL3 CAMERA DATA           *
 *                                              *
 ************************************************/

/**
 * Set: NORMAL3    Mode: NORMAL    Func: JUMP3
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
 * Set: NORMAL3    Mode: TARGET    Func: PARA1
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
 * Set: NORMAL3    Mode: TALK    Func: KEEP3
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
 * Set: NORMAL3    Mode: BOOMERANG    Func: JUMP3
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

/************************************************
 *          CUSTOM HORSE0 CAMERA DATA           *
 *                                              *
 ************************************************/

/**
 * Set: HORSE0    Mode: NORMAL    Func: NORM3
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
 * Set: HORSE0    Mode: TARGET    Func: NORM3
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
 * Set: HORSE0    Mode: BOWARROW    Func: SUBJ3
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
 * Set: HORSE0    Mode: FOLLOWTARGET    Func: KEEP1
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
 * Set: HORSE0    Mode: TALK    Func: KEEP3
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

/************************************************
 *           CUSTOM GOMA CAMERA DATA            *
 *                                              *
 ************************************************/

/**
 * Set: GOMA    Mode: NORMAL    Func: NORM1
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
 * Set: GOMA    Mode: BATTLE    Func: BATT1
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

/************************************************
 *           CUSTOM DODO CAMERA DATA            *
 *                                              *
 ************************************************/

/**
 * Set: DODO    Mode: NORMAL    Func: NORM1
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
 * Set: DODO    Mode: BATTLE    Func: BATT1
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

/************************************************
 *           CUSTOM BARI CAMERA DATA            *
 *                                              *
 ************************************************/

/**
 * Set: BARI    Mode: NORMAL    Func: NORM1
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
 * Set: BARI    Mode: BATTLE    Func: BATT1
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

/************************************************
 *          CUSTOM FGANON CAMERA DATA           *
 *                                              *
 ************************************************/

/**
 * Set: FGANON    Mode: NORMAL    Func: NORM1
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
 * Set: FGANON    Mode: BATTLE    Func: BATT1
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

/************************************************
 *           CUSTOM BAL CAMERA DATA             *
 *                                              *
 ************************************************/

/**
 * Set: BAL    Mode: NORMAL    Func: NORM1
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
 * Set: BAL    Mode: BATTLE    Func: BATT1
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

/************************************************
 *          CUSTOM SHADES CAMERA DATA           *
 *                                              *
 ************************************************/

/**
 * Set: SHADES    Mode: NORMAL    Func: NORM1
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
 * Set: SHADES    Mode: BATTLE    Func: BATT1
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
 * Set: SHADES    Mode: JUMP        Func: NORM1
 * Set: SHADES    Mode: FREEFALL    Func: NORM1
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

/************************************************
 *           CUSTOM MOFA CAMERA DATA            *
 *                                              *
 ************************************************/

/**
 * Set: MOFA    Mode: NORMAL    Func: NORM1
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
 * Set: MOFA    Mode: BATTLE    Func: BATT1
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

/************************************************
 *           CUSTOM TWIN CAMERA DATA            *
 *                                              *
 ************************************************/

/**
 * Set: TWIN0    Mode: NORMAL    Func: NORM1
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
 * Set: TWIN0    Mode: BATTLE    Func: BATT1
 * Set: TWIN1    Mode: BATTLE    Func: BATT1
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
 * Set: TWIN1    Mode: NORMAL    Func: NORM1
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

/************************************************
 *        CUSTOM BOSSGANON1 CAMERA DATA         *
 *                                              *
 ************************************************/

/**
 * Set: BOSSGANON1    Mode: NORMAL    Func: NORM1
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
 * Set: BOSSGANON1    Mode: CHARGE    Func: BATT4
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

/************************************************
 *        CUSTOM BOSSGANON2 CAMERA DATA         *
 *                                              *
 ************************************************/

/**
 * Set: BOSSGANON2    Mode: NORMAL    Func: NORM1
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
 * Set: BOSSGANON2    Mode: BATTLE    Func: BATT1
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

/************************************************
 *          CUSTOM TOWER0 CAMERA DATA           *
 *                                              *
 ************************************************/

/**
 * Set: TOWER0    Mode: NORMAL    Func: NORM2
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
 * Set: TOWER0    Mode: JUMP    Func: NORM2
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

/************************************************
 *          CUSTOM TOWER1 CAMERA DATA           *
 *                                              *
 ************************************************/

/**
 * Set: TOWER1    Mode: NORMAL    Func: NORM2
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
 * Set: TOWER1    Mode: JUMP    Func: NORM2
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

/************************************************
 *          CUSTOM FIXED0 CAMERA DATA           *
 *                                              *
 ************************************************/

/**
 * Set: FIXED0    Mode: NORMAL    Func: FIXD1
 */
CameraModeValue sSetFixd0ModeNormVals[] = {
    { -40, 0 },    // yOffset
    { 100, 4 },    // lerpStep
    { 60, 7 },     // fov
    { 0x0000, 9 }, // flags
};

/**
 * Set: FIXED0    Mode: FOLLOWTARGET    Func: FIXD1
 */
CameraModeValue D_8011B1A8[] = {
    { -40, 0 },    // yOffset
    { 100, 4 },    // lerpStep
    { 60, 7 },     // fov
    { 0x2000, 9 }, // flags
};

/**
 * Set: FIXED0    Mode: TALK    Func: FIXD1
 */
CameraModeValue D_8011B1B8[] = {
    { -40, 0 },    // yOffset
    { 100, 4 },    // lerpStep
    { 60, 7 },     // fov
    { 0x3500, 9 }, // flags
};

/************************************************
 *          CUSTOM FIXED1 CAMERA DATA           *
 *                                              *
 ************************************************/

/**
 * Set: FIXED1    Mode: NORMAL    Func: FIXD1
 */
CameraModeValue D_8011B1C8[] = {
    { -40, 0 },    // yOffset
    { 25, 4 },     // lerpStep
    { 60, 7 },     // fov
    { 0x0000, 9 }, // flags
};

/************************************************
 *         CUSTOM CIRCLE0 CAMERA DATA           *
 *                                              *
 ************************************************/

/**
 * Set: CIRCLE0    Mode: NORMAL    Func: FIXD2
 */
CameraModeValue sSetCirc0ModeNormVals[] = {
    { -40, 0 },    // yOffset
    { 50, 4 },     // eyeStepScale
    { 80, 5 },     // posStepScale
    { 60, 7 },     // fov
    { 0x0001, 9 }, // flags
};

/************************************************
 *         CUSTOM CIRCLE2 CAMERA DATA           *
 *                                              *
 ************************************************/

/**
 * Set: CIRCLE2    Mode: NORMAL    Func: DATA4
 */
CameraModeValue sSetCirc2ModeNormVals[] = {
    { -40, 0 },    // yOffset
    { 60, 7 },     // fov
    { 0x3F00, 9 }, // flags
};

/************************************************
 *                                              *
 *                                              *
 ************************************************

/**
 * Set: CIRCLE3    Mode: NORMAL          Func: FIXD4
 * Set: CIRCLE7    Mode: NORMAL          Func: FIXD4
 * Set: CIRCLE7    Mode: FOLLOWTARGET    Func: FIXD4
 */
CameraModeValue D_8011B1F8[] = {
    { -40, 0 },    // yOffset
    { 50, 4 },     // speedToEyePos
    { 80, 5 },     // followSpeed
    { 60, 7 },     // fov
    { 0x0004, 9 }, // flags
};

/************************************************
 *                                              *
 *                                              *
 ************************************************

/**
 * Set: PREREND0    Mode: NORMAL    Func: FIXD3
 * Set: PREREND3    Mode: NORMAL    Func: SPEC6
 * Set: START0      Mode: NORMAL    Func: UNIQ0
 * Set: HIDAN1      Mode: NORMAL    Func: SPEC7
 */
CameraModeValue D_8011B20C[] = {
    { 0x0000, 9 }, // flags
};

/************************************************
 *        CUSTOM PREREND0 CAMERA DATA           *
 *                                              *
 ************************************************/

/**
 * Set: PREREND0    Mode: FOLLOWTARGET    Func: FIXD3
 * Set: PREREND0    Mode: TALK            Func: FIXD3
 */
CameraModeValue sSetPR0ModeKeepTalkVals[] = {
    { 0x2000, 9 }, // flags
};

/************************************************
 *        CUSTOM PREREND1 CAMERA DATA           *
 *                                              *
 ************************************************/

/**
 * Set: PREREND1    Mode: NORMAL    Func: UNIQ7
 */
CameraModeValue sSetPR1ModeNormVals[] = {
    { 60, 7 },     // fov
    { 0x0000, 9 }, // flags
};

/**
 * Set: PREREND1    Mode: FOLLOWTARGET    Func: UNIQ7
 */
CameraModeValue sSetPR1ModeKeepVals[] = {
    { 60, 7 },     // fov
    { 0x2000, 9 }, // flags
};

/**
 * Set: PREREND1    Mode: TALK    Func: KEEP0
 */
CameraModeValue sSetPreRend1ModeTalkVals[] = {
    { 30, 24 },    // fovScale
    { 0, 25 },     // yawScale
    { 4, 4 },      // timerInit
    { 0x3500, 9 }, // flags
};

/************************************************
 *          CUSTOM DOOR0 CAMERA DATA            *
 *                                              *
 ************************************************/

/**
 * Set: DOOR0    Mode: NORMAL    Func: UNIQ3
 */
CameraModeValue sSetDoor0ModeNormVals[] = {
    { -40, 0 },    // yOffset
    { 60, 7 },     // fov
    { 0x3200, 9 }, // flags
};

/************************************************
 *          CUSTOM DOORC CAMERA DATA            *
 *                                              *
 ************************************************/

/**
 * Set: DOORC    Mode: NORMAL    Func: SPEC9
 */
CameraModeValue sSetDoorCModeNormVals[] = {
    { -5, 0 },     // yOffset
    { 60, 7 },     // unk_04 (unused)
    { 0x3202, 9 }, // flags
};

/**
 * Set: DOORC    Mode: TARGET    Func: SPEC9
 */
CameraModeValue sSetDoorCModeTargetVals[] = {
    { -5, 0 },     // yOffset
    { 60, 7 },     // unk_04 (unused)
    { 0x320A, 9 }, // flags
};

/************************************************
 *          CUSTOM RAIL3 CAMERA DATA            *
 *                                              *
 ************************************************/

/**
 * Set: RAIL3    Mode: NORMAL    Func: SUBJ4 (Camera_Subj4 only reads one setting which is used for flags)
 */
CameraModeValue sSetRail3ModeNormVals[] = {
    { 0x0000, 0 }, // flags
    { 2, 1 },      // unused
    { 30, 2 },     // unused
    { 10, 4 },     // unused
    { 45, 7 },     // unused
    { 0x3200, 9 }, // unused
};

/************************************************
 *         CUSTOM START1 CAMERA DATA            *
 *                                              *
 ************************************************/

/**
 * Set: START1    Mode: NORMAL    Func: UNIQ0
 */
CameraModeValue D_8011B270[] = {
    { 0x0001, 9 }, // flags
};

/************************************************
 *          CUSTOM FREE0 CAMERA DATA            *
 *                                              *
 ************************************************/

/**
 * Set: FREE0    Mode: NORMAL    Func: UNIQ6
 */
CameraModeValue sSetFree0ModeNormVals[] = {
    { 0xFF00, 9 }, // flags
};

/************************************************
 *          CUSTOM FREE1 CAMERA DATA            *
 *                                              *
 ************************************************/

/**
 * Set: FREE1    Mode: NORMAL    Func: UNIQ6
 */
CameraModeValue sSetFree1ModeNormVals[] = {
    { 0xFF01, 9 }, // flags
};

/************************************************
 *         CUSTOM CIRCLE4 CAMERA DATA           *
 *                                              *
 ************************************************/

/**
 * Set: CIRCLE4    Mode: NORMAL    Func: FIXD2
 */
CameraModeValue sSetCirc4ModeNormVals[] = {
    { -40, 0 },    // yOffset
    { 100, 4 },    // eyeStepScale
    { 80, 5 },     // posStepScale
    { 60, 7 },     // fov
    { 0x0000, 9 }, // flags
};

/************************************************
 *         CUSTOM CIRCLE5 CAMERA DATA           *
 *                                              *
 ************************************************/

/**
 * Set: CIRCLE5    Mode: NORMAL    Func: UNIQ2
 */
CameraModeValue D_8011B290[] = {
    { -40, 0 },    // yOffset
    { 60, 1 },     // distTarget
    { 60, 7 },     // fovTarget
    { 0x0002, 9 }, // flags
};

/**
 * Set: CIRCLE5    Mode: TARGET    Func: UNIQ2
 */
CameraModeValue D_8011B2A0[] = {
    { -30, 0 },    // yOffset
    { 45, 1 },     // distTarget
    { 100, 7 },    // fovTarget
    { 0x2001, 9 }, // flags
};

/************************************************
 *                                              *
 *                                              *
 ************************************************/

/**
 * Set: DEMO0     Mode: NORMAL    Func: DEMO1
 * Set: DEMO1     Mode: NORMAL    Func: DEMO2
 * Set: DEMO4     Mode: NORMAL    Func: DEMO5 (Not actually used in Camera_Demo4?)
 * Set: HIDAN2    Mode: NORMAL    Func: SPEC4
 * Set: MORI2     Mode: NORMAL    Func: UNIQ5
 * Set: MORI3     Mode: NORMAL    Func: DEMO6
 */
CameraModeValue D_8011B2B0[] = {
    { 0x3200, 9 }, // flags
};

/************************************************
 *          CUSTOM MORE1 CAMERA DATA            *
 *                                              *
 ************************************************/

/**
 * Set: MORI1    Mode: NORMAL    Func: PARA1
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
 * Set: MORI1    Mode: TALK    Func: PARA3
 */
CameraModeValue sSetMori1ModeTalkVals[] = {
    { 0x3501, 9 }, // flags
};

/************************************************
 *          CUSTOM ITEM CAMERA DATA             *
 *                                              *
 ************************************************/

/**
 * Set: ITEM0    Mode: NORMAL    Func: DEMO3
 * Set: ITEM1    Mode: NORMAL    Func: DEMO4 (not actually used in Camera_Demo4)
 */
CameraModeValue D_8011B2E4[] = {
    { 60, 7 },     // fov
    { 30, 8 },     // unk_04
    { 0x3200, 9 }, // flags
};

/************************************************
 *          CUSTOM DEMO3 CAMERA DATA            *
 *                                              *
 ************************************************/

/**
 * Set: DEMO3    Mode: NORMAL    Func: DEMO9
 */
CameraModeValue sSetDemo3ModeNormVals[] = {
    { 0x3212, 9 }, // flags
};


/************************************************
 *         CUSTOM UFOBEAN CAMERA DATA           *
 *                                              *
 ************************************************/

/**
 * Set: UFOBEAN    Mode: NORMAL    Func: NORM1
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
 * Set: UFOBEAN    Mode: TARGET    Func: PARA1
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
 * Set: UFOBEAN    Mode: JUMP    Func: JUMP1
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
 * Set: UFOBEAN    Mode: HANG    Func: UNIQ1
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
 * Set: UFOBEAN    Mode: HANGZ    Func: UNIQ1
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
 * Set: UFOBEAN    Mode: STILL    Func: NORM1
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

/************************************************
 *        CUSTOM LIFTBEAN CAMERA DATA           *
 *                                              *
 ************************************************/

/**
 * Set: LIFTBEAN    Mode: NORMAL    Func: NORM1
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
 * Set: LIFTBEAN    Mode: TARGET    Func: PARA1
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
 * Set: LIFTBEAN    Mode: JUMP    Func: JUMP1
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
 * Set: LIFTBEAN    Mode: HANG    Func: UNIQ1
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
 * Set: LIFTBEAN    Mode: HANGZ    Func: UNIQ1
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
 * Set: LIFTBEAN    Mode: STILL    Func: NORM1
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

/************************************************
 *         CUSTOM SCENE0 CAMERA DATA            *
 *                                              *
 ************************************************/

/**
 * Set: SCENE0    Mode: NORMAL    Func: SPEC9
 */
CameraModeValue sSetScn0ModeNormVals[] = {
    { -30, 0 },    // yOffset
    { 60, 7 },     // unk_04 (unused)
    { 0x010A, 9 }, // flags
};

/************************************************
 *         CUSTOM SCENE1 CAMERA DATA            *
 *                                              *
 ************************************************/

/**
 * Set: SCENE1    Mode: NORMAL    Func: UNIQ2
 */
CameraModeValue sSetScn1ModeNormVals[] = {
    { -20, 0 },    // yOffset
    { 150, 1 },    // distTarget
    { 60, 7 },     // fovTarget
    { 0x0210, 9 }, // flags
};

/************************************************
 *           CUSTOM TAKO CAMERA DATA            *
 *                                              *
 ************************************************/

/**
 * Set: TAKO    Mode: NORMAL    Func: NORM1
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
 * Set: TAKO    Mode: BATTLE    Func: BATT1
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
 * Set: TAKO    Mode: STILL    Func: NORM1
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

/************************************************
 *          CUSTOM SPOT05A CAMERA DATA          *
 *                                              *
 ************************************************/

/**
 * Set: SPOT05A    Mode: NORMAL    Func: NORM1
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
 * Set: SPOT05A    Mode: TARGET    Func: PARA1
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
 * Set: SPOT05A    Mode: BATTLE    Func: PARA1
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
 * Set: SPOT05A    Mode: CLIMB    Func: NORM1
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

/************************************************
 *          CUSTOM SPOT05B CAMERA DATA          *
 *                                              *
 ************************************************/

/**
 * Set: SPOT05B    Mode: NORMAL    Func: NORM1
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
 * Set: SPOT05B    Mode: TARGET    Func: PARA1
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
 * Set: SPOT05B    Mode: BATTLE    Func: PARA1
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
 * Set: SPOT05B    Mode: CLIMB    Func: NORM1
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

/************************************************
 *          CUSTOM HIDAN3 CAMERA DATA           *
 *                                              *
 ************************************************/

/**
 * Set: HIDAN3    Mode: NORMAL    Func: NORM1
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
 * Set: HIDAN3    Mode: TARGET    Func: PARA1
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
 * Set: HIDAN3    Mode: BATTLE    Func: PARA1
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
 * Set: HIDAN3    Mode: CLIMB    Func: NORM1
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

/************************************************
 *           CUSTOM ITEM2 CAMERA DATA           *
 *                                              *
 ************************************************/

/**
 * Set: ITEM2    Mode: NORMAL    Func: KEEP4
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

/************************************************
 *          CUSTOM CIRCLE6 CAMERA DATA          *
 *                                              *
 ************************************************/

/**
 * Set: CIRCLE6    Mode: NORMAL    Func: SPEC0
 */
CameraModeValue sSetCirc6ModeNormVals[] = {
    { 20, 4 },     // lerpATScale
    { 0x3200, 9 }, // flags
};

/************************************************
 *           CUSTOM NORMAL CAMERA DATA          *
 *                                              *
 ************************************************/

/**
 * Set: NORMAL2    Mode: NORMAL    Func: NORM1
 * Set: NORMAL4    Mode: NORMAL    Func: NORM1 
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

/************************************************
 *          CUSTOM FISHING CAMERA DATA          *
 *                                              *
 ************************************************/

/**
 * Set: FISHING    Mode: NORMAL    Func: NORM1
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
 * Set: FISHING    Mode: TARGET    Func: PARA1
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
 * Set: FISHING    Mode: FOLLOWTARGET    Func: BATT1
 * Set: FISHING    Mode: BATTLE          Func: BATT1
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
 * Set: FISHING    Mode: TALK    Func: KEEP3
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
 * Set: FISHING    Mode: FIRSTPERSON    Func: SUBJ3
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
 * Set: FISHING    Mode: JUMP    Func: JUMP1
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
 * Set: FISHING    Mode: FREEFALL    Func: JUMP1
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
 * Set: FISHING    Mode: HANG    Func: UNIQ1
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
 * Set: FISHING    Mode: HANGZ    Func: UNIQ1
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

/************************************************
 *           CUSTOM DEMOC CAMERA DATA           *
 *                                              *
 ************************************************/

/**
 * Set: DEMOC    Mode: NORMAL    Func: UNIQ9
 */
CameraModeValue sSetDemoCModeNormVals[] = {
    { 0x3F00, 9 }, /* flags */
};

/************************************************
 *          CUSTOM UOFIBER CAMERA DATA          *
 *                                              *
 ************************************************/

/**
 * Set: UOFIBER    Mode: NORMAL    Func: NORM1
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
 * Set: UOFIBER    Mode: BATTLE    Func: BATT1
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

/************************************************
 *         CUSTOM DUNGEON2 CAMERA DATA          *
 *                                              *
 ************************************************/

/**
 * Set: DUNGEON2    Mode: NORMAL    Func: NORM1
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
 * Set: DUNGEON2    Mode: TARGET    Func: PARA1
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
 * Set: DUNGEON2    Mode: BATTLE    Func: BATT1
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
 * Set: DUNGEON2    Mode: JUMP    Func: JUMP1
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
 * Set: DUNGEON2    Mode: FREEFALL    Func: JUMP1
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
 * Set: DUNGEON2    Mode: CLIMB    Func: JUMP2
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
 * Set: DUNGEON2    Mode: CLIMBZ    Func: JUMP2
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
 * Set: DUNGEON2    Mode: HANG    Func: UNIQ1
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
 * Set: DUNGEON2    Mode: HANGZ    Func: UNIQ1
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
 * Set: DUNGEON2    Mode: STILL    Func: NORM1
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
 * Set: DUNGEON2    Mode: PUSHPULL    Func: PARA1
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

/************************************************
 *          CUSTOM TEPPEN CAMERA DATA           *
 *                                              *
 ************************************************/

/**
 * Set: TEPPEN    Mode: NORMAL    Func: NORM1
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
 * Set: TEPPEN    Mode: FOLLOWTARGET    Func: KEEP1
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
 * Set: TEPPEN    Mode: TALK    Func: KEEP3
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

/************************************************
 *          CUSTOM NORMAL4 CAMERA DATA          *
 *                                              *
 ************************************************/

/**
 * Set: NORMAL4    Mode: TALK    Func: KEEP3
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

/************************************************
 *             CAMERA MODES TO DATA             *
 *                                              *
 ************************************************/

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
DBCamera D_8015BD80;
CollisionPoly* playerFloorPoly;
