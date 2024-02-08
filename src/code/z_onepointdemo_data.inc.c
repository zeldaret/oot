#include "global.h"

static CutsceneCameraPoint D_8012013C[14] = {
    { CS_CAM_CONTINUE, 25, 40, 70.79991f, { -1814, 533, -1297 } },
    { CS_CAM_CONTINUE, 20, 40, 70.99991f, { -1805, 434, -1293 } },
    { CS_CAM_CONTINUE, 10, 30, 60.0f, { -1794, 323, -1280 } },
    { CS_CAM_CONTINUE, 5, 25, 60.0f, { -1817, 218, -1270 } },
    { CS_CAM_CONTINUE, 3, 20, 60.0f, { -1836, 168, -1243 } },
    { CS_CAM_CONTINUE, 0, 20, 60.0f, { -1905, 115, -1193 } },
    { CS_CAM_CONTINUE, 0, 30, 55.0f, { -1969, 58, -1212 } },
    { CS_CAM_CONTINUE, 0, 30, 55.0f, { -1969, 31, -1164 } },
    { CS_CAM_CONTINUE, 0, 30, 60.0f, { -1969, 54, -1209 } },
    { CS_CAM_CONTINUE, 0, 30, 60.0f, { -1973, 35, -1206 } },
    { CS_CAM_CONTINUE, 0, 50, 60.0f, { -1974, 12, -1179 } },
    { CS_CAM_CONTINUE, 0, 50, 60.0f, { -1974, 12, -1179 } },
    { CS_CAM_STOP, 0, 50, 60.0f, { -1974, 12, -1179 } },
    { CS_CAM_STOP, 0, 30, 60.0f, { -1974, 12, -1179 } },
};
static CutsceneCameraPoint D_8012021C[14] = {
    { CS_CAM_CONTINUE, 0, 0, 60.0f, { -1751, 604, -1233 } }, { CS_CAM_CONTINUE, 0, 0, 60.0f, { -1752, 516, -1233 } },
    { CS_CAM_CONTINUE, 0, 0, 60.0f, { -1751, 417, -1233 } }, { CS_CAM_CONTINUE, 0, 0, 60.0f, { -1767, 306, -1219 } },
    { CS_CAM_CONTINUE, 0, 0, 60.0f, { -1776, 257, -1205 } }, { CS_CAM_CONTINUE, 0, 0, 60.0f, { -1881, 147, -1149 } },
    { CS_CAM_CONTINUE, 0, 0, 60.0f, { -1969, 72, -1077 } },  { CS_CAM_CONTINUE, 0, 0, 60.0f, { -1969, 7, -1048 } },
    { CS_CAM_CONTINUE, 0, 0, 60.0f, { -1969, 1, -1030 } },   { CS_CAM_CONTINUE, 0, 0, 60.0f, { -1987, 17, -1076 } },
    { CS_CAM_CONTINUE, 0, 0, 60.0f, { -2007, 10, -1004 } },  { CS_CAM_CONTINUE, 0, 0, 60.0f, { -2007, 10, -1004 } },
    { CS_CAM_STOP, 0, 0, 60.0f, { -2007, 10, -1004 } },      { CS_CAM_STOP, 0, 0, 60.0f, { -2007, 10, -1004 } },
};
static s16 D_801202FC = 13;
static s16 D_80120300 = 210;
static s16 D_80120304 = 0;

static CutsceneCameraPoint sCrawlspaceAtPoints[9] = {
    { CS_CAM_CONTINUE, 0, 10, 40.0f, { 0, 4, 0 } },  { CS_CAM_CONTINUE, 0, 10, 40.000004f, { 0, 4, 0 } },
    { CS_CAM_CONTINUE, 0, 10, 50.0f, { 0, 9, 0 } },  { CS_CAM_CONTINUE, 0, 12, 55.0f, { 0, 12, 0 } },
    { CS_CAM_CONTINUE, 0, 15, 61.0f, { 0, 18, 0 } }, { CS_CAM_CONTINUE, 0, 20, 65.0f, { 0, 29, 0 } },
    { CS_CAM_CONTINUE, 0, 40, 60.0f, { 0, 34, 0 } }, { CS_CAM_STOP, 0, 40, 60.0f, { 0, 34, 0 } },
    { CS_CAM_STOP, 0, 10, 60.0f, { 0, 34, 0 } },
};
static CutsceneCameraPoint sCrawlspaceForwardsEyePoints[9] = {
    { CS_CAM_CONTINUE, 0, 0, 60.0f, { 0, 9, 45 } },   { CS_CAM_CONTINUE, 0, 0, 60.0f, { 0, 8, 50 } },
    { CS_CAM_CONTINUE, 0, 0, 60.0f, { 0, 17, 58 } },  { CS_CAM_CONTINUE, 0, 0, 60.0f, { 0, 21, 78 } },
    { CS_CAM_CONTINUE, 0, 0, 60.0f, { 0, 46, 109 } }, { CS_CAM_CONTINUE, 0, 0, 60.0f, { 0, 58, 118 } },
    { CS_CAM_CONTINUE, 0, 0, 60.0f, { 0, 63, 119 } }, { CS_CAM_STOP, 0, 0, 60.0f, { 0, 62, 119 } },
    { CS_CAM_STOP, 0, 0, 60.0f, { 0, 62, 119 } },
};
static s16 sCrawlspaceUnused = 9;
static s16 sCrawlspaceTimer = 90;
static s16 sCrawlspaceActionParam = 1;
static CutsceneCameraPoint sCrawlspaceBackwardsEyePoints[10] = {
    { CS_CAM_CONTINUE, 0, 0, 60.0f, { 0, 9, -45 } },   { CS_CAM_CONTINUE, 0, 0, 60.0f, { 0, 9, -45 } },
    { CS_CAM_CONTINUE, 0, 0, 60.0f, { 0, 8, -50 } },   { CS_CAM_CONTINUE, 0, 0, 60.0f, { 0, 17, -58 } },
    { CS_CAM_CONTINUE, 0, 0, 60.0f, { 0, 21, -78 } },  { CS_CAM_CONTINUE, 0, 0, 60.0f, { 0, 46, -109 } },
    { CS_CAM_CONTINUE, 0, 0, 60.0f, { 0, 58, -118 } }, { CS_CAM_CONTINUE, 0, 0, 60.0f, { 0, 63, -119 } },
    { CS_CAM_STOP, 0, 0, 60.0f, { 0, 62, -119 } },     { CS_CAM_STOP, 0, 0, 60.0f, { 0, 62, -119 } },
};

static CutsceneCameraPoint D_801204D4[14] = {
    { CS_CAM_CONTINUE, -15, 40, 80.600006f, { -60, 332, 183 } },
    { CS_CAM_CONTINUE, -22, 30, 80.600006f, { -60, 332, 183 } },
    { CS_CAM_CONTINUE, -20, 38, 80.600006f, { -118, 344, 41 } },
    { CS_CAM_CONTINUE, -18, 32, 80.600006f, { -80, 251, -8 } },
    { CS_CAM_CONTINUE, -12, 28, 80.600006f, { -64, 259, -28 } },
    { CS_CAM_CONTINUE, -8, 22, 80.600006f, { -79, 200, -342 } },
    { CS_CAM_CONTINUE, -5, 10, 65.80005f, { -110, 140, -549 } },
    { CS_CAM_CONTINUE, -2, 8, 65.2f, { -74, 109, -507 } },
    { CS_CAM_CONTINUE, 0, 10, 65.80002f, { -32, 78, -680 } },
    { CS_CAM_CONTINUE, 0, 20, 85.199936f, { 25, 127, -950 } },
    { CS_CAM_CONTINUE, 0, 30, 85.199936f, { 25, 127, -950 } },
    { CS_CAM_CONTINUE, 0, 40, 85.199936f, { 25, 127, -950 } },
    { CS_CAM_STOP, 6, 30, 85.199936f, { 25, 127, -950 } },
    { CS_CAM_STOP, 0, 30, 85.199936f, { 25, 127, -950 } },
};
static CutsceneCameraPoint D_801205B4[14] = {
    { CS_CAM_CONTINUE, 0, 0, 60.0f, { -225, 785, -242 } },
    { CS_CAM_CONTINUE, -21, 0, 80.600006f, { -245, 784, -242 } },
    { CS_CAM_CONTINUE, -21, 0, 80.600006f, { -288, 485, -379 } },
    { CS_CAM_CONTINUE, -21, 0, 80.600006f, { -250, 244, -442 } },
    { CS_CAM_CONTINUE, -21, 0, 80.600006f, { -163, 21, -415 } },
    { CS_CAM_CONTINUE, -21, 0, 80.600006f, { -98, 86, -520 } },
    { CS_CAM_CONTINUE, -21, 0, 80.600006f, { -86, 31, -816 } },
    { CS_CAM_CONTINUE, -21, 0, 80.600006f, { -74, 18, -931 } },
    { CS_CAM_CONTINUE, 1, 0, 80.600006f, { -91, 80, -1220 } },
    { CS_CAM_CONTINUE, 0, 0, 85.199936f, { 14, 153, -1340 } },
    { CS_CAM_CONTINUE, 0, 0, 85.199936f, { 28, 125, -1340 } },
    { CS_CAM_CONTINUE, 0, 0, 85.199936f, { 48, 124, -1340 } },
    { CS_CAM_STOP, 0, 0, 85.199936f, { 48, 124, -1502 } },
    { CS_CAM_STOP, 0, 0, 85.199936f, { 48, 124, -1262 } },
};
static s16 D_80120694 = 14;
static s16 D_80120698 = 190;
static s16 D_8012069C = 8;

static CutsceneCameraPoint D_801206A0[12] = {
    { CS_CAM_CONTINUE, 6, 20, 80.0f, { -96, 40, 170 } }, { CS_CAM_CONTINUE, 6, 20, 80.0f, { -96, 40, 170 } },
    { CS_CAM_CONTINUE, 6, 20, 70.0f, { -70, 35, 150 } }, { CS_CAM_CONTINUE, 5, 10, 60.0f, { -57, 34, 133 } },
    { CS_CAM_CONTINUE, 4, 25, 65.0f, { -22, 32, 110 } }, { CS_CAM_CONTINUE, 3, 12, 60.0f, { -9, 33, 98 } },
    { CS_CAM_CONTINUE, 3, 5, 65.0f, { -3, 29, 87 } },    { CS_CAM_CONTINUE, 2, 10, 65.0f, { -1, 15, 84 } },
    { CS_CAM_CONTINUE, 1, 200, 65.0f, { 0, 17, 82 } },   { CS_CAM_CONTINUE, 1, 500, 65.0f, { 0, 18, 82 } },
    { CS_CAM_STOP, 8, 50, 65.0f, { 0, 18, 82 } },        { CS_CAM_STOP, 11, 60, 65.0f, { 0, 18, 82 } },
};
static CutsceneCameraPoint D_80120760[12] = {
    { CS_CAM_CONTINUE, 6, 0, 80.0f, { -50, 10, 180 } }, { CS_CAM_CONTINUE, 6, 0, 80.0f, { -50, 20, 180 } },
    { CS_CAM_CONTINUE, 6, 0, 70.0f, { -40, 30, 177 } }, { CS_CAM_CONTINUE, 5, 0, 65.0f, { 0, 35, 172 } },
    { CS_CAM_CONTINUE, 4, 0, 65.0f, { 34, 35, 162 } },  { CS_CAM_CONTINUE, 3, 0, 65.0f, { 61, 32, 147 } },
    { CS_CAM_CONTINUE, 3, 0, 65.0f, { 72, 30, 128 } },  { CS_CAM_CONTINUE, 2, 0, 65.0f, { 74, 20, 125 } },
    { CS_CAM_CONTINUE, 1, 0, 65.0f, { 75, 18, 123 } },  { CS_CAM_CONTINUE, 1, 0, 65.0f, { 75, 10, 123 } },
    { CS_CAM_STOP, 0, 0, 65.0f, { 75, 10, 122 } },      { CS_CAM_STOP, 0, 0, 65.0f, { 75, 10, 122 } },
};
static CutsceneCameraPoint D_80120820[12] = {
    { CS_CAM_CONTINUE, 6, 0, 80.0f, { 85, 5, 170 } },  { CS_CAM_CONTINUE, 6, 0, 80.0f, { 85, 10, 170 } },
    { CS_CAM_CONTINUE, 6, 0, 70.0f, { 80, 20, 167 } }, { CS_CAM_CONTINUE, 5, 0, 65.0f, { 74, 25, 165 } },
    { CS_CAM_CONTINUE, 4, 0, 65.0f, { 63, 30, 162 } }, { CS_CAM_CONTINUE, 3, 0, 65.0f, { 66, 34, 147 } },
    { CS_CAM_CONTINUE, 3, 0, 65.0f, { 72, 34, 128 } }, { CS_CAM_CONTINUE, 2, 0, 65.0f, { 74, 20, 125 } },
    { CS_CAM_CONTINUE, 1, 0, 65.0f, { 75, 18, 123 } }, { CS_CAM_CONTINUE, 1, 0, 65.0f, { 75, 10, 123 } },
    { CS_CAM_STOP, 0, 0, 65.0f, { 75, 10, 122 } },     { CS_CAM_STOP, 0, 0, 65.0f, { 75, 10, 122 } },
};
static s16 D_801208E0 = 12;
static s16 D_801208E4 = 90;
static s16 D_801208E8 = 8;
