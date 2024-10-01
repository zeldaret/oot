#include "global.h"
#include "quake.h"
#include "terminal.h"
#include "versions.h"
#include "overlays/actors/ovl_En_Sw/z_en_sw.h"

static s16 sDisableAttention = false;
static s16 sUnused = -1;
static s32 sPrevFrameCs1100 = -4096;

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

Vec3f OnePointCutscene_AddVecGeoToVec3f(Vec3f* a, VecGeo* geo) {
    Vec3f sum;
    Vec3f b = OLib_VecGeoToVec3f(geo);

    sum.x = a->x + b.x;
    sum.y = a->y + b.y;
    sum.z = a->z + b.z;

    return sum;
}

/**
 * @see Math_Vec3f_Yaw
 */
s16 OnePointCutscene_Vec3fYaw(Vec3f* origin, Vec3f* point) {
    return CAM_DEG_TO_BINANG(RAD_TO_DEG(Math_FAtan2F(point->x - origin->x, point->z - origin->z)));
}

void OnePointCutscene_Vec3sToVec3f(Vec3f* src, Vec3s* dst) {
    dst->x = src->x;
    dst->y = src->y;
    dst->z = src->z;
}

s32 OnePointCutscene_BgCheckLineTest(CollisionContext* colCtx, Vec3f* vec1, Vec3f* vec2) {
    Vec3f posResult;
    s32 bgId;
    CollisionPoly* outPoly = NULL;

    return BgCheck_CameraLineTest1(colCtx, vec1, vec2, &posResult, &outPoly, true, true, true, false, &bgId);
}

f32 OnePointCutscene_RaycastDown(CollisionContext* colCtx, Vec3f* pos) {
    CollisionPoly* outPoly;
    s32 bgId;

    return BgCheck_EntityRaycastDown3(colCtx, &outPoly, &bgId, pos);
}

void OnePointCutscene_SetCsCamPoints(Camera* camera, s16 actionParameters, s16 initTimer, CutsceneCameraPoint* atPoints,
                                     CutsceneCameraPoint* eyePoints) {
    OnePointCamData* onePointCamData = &camera->paramData.demo9.onePointCamData;

    onePointCamData->atPoints = atPoints;
    onePointCamData->eyePoints = eyePoints;
    onePointCamData->actionParameters = actionParameters;
    onePointCamData->initTimer = initTimer;
}

s32 OnePointCutscene_SetInfo(PlayState* play, s16 subCamId, s16 csId, Actor* actor, s16 timer) {
    Camera* subCam = play->cameraPtrs[subCamId];
    Camera* childCam = play->cameraPtrs[subCam->childCamId];
    Camera* mainCam = play->cameraPtrs[CAM_ID_MAIN];
    Player* player = mainCam->player;
    VecGeo spD0;
    s32 i;
    Vec3f spC0;
    Vec3f spB4;
    PosRot spA0;
    PosRot sp8C;
    f32 tempRand;
    OnePointCsInfo* csInfo = &subCam->paramData.uniq9.csInfo;

    switch (csId) {
        case 1020: { // smoothly return to main camera from current view
            static OnePointCsFull D_801208EC[3] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_8),
                    0x0101,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, 0.0f, 0.0f },
                    { 0.0f, 0.0f, 0.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, -10.0f, 0.0f },
                    { 0.0f, 0.0f, 150.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_18, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            if (timer < 20) {
                timer = 20;
            }
            D_801208EC[0].atTargetInit = play->view.at;
            D_801208EC[0].eyeTargetInit = play->view.eye;
            D_801208EC[0].fovTargetInit = play->view.fovy;
            D_801208EC[1].atTargetInit = mainCam->at;
            D_801208EC[1].eyeTargetInit = mainCam->eye;
            D_801208EC[1].fovTargetInit = mainCam->fov;
            D_801208EC[1].timerInit = timer - 1;
            subCam->timer = timer + 1;
            D_801208EC[1].lerpStepScale = 1.0f / (0.5f * timer);

            csInfo->keyFrames = D_801208EC;
            csInfo->keyFrameCount = ARRAY_COUNT(D_801208EC);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 1030: {
            static OnePointCsFull D_80120964[2] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, 0.0f, 0.0f },
                    { 0.0f, 0.0f, 0.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0xA121,
                    1,
                    0,
                    75.0f,
                    0.6f,
                    { 0.0f, -10.0f, 0.0f },
                    { 0.0f, 0.0f, 150.0f },
                },
            };

            D_80120964[0].atTargetInit = play->view.at;
            D_80120964[0].eyeTargetInit = play->view.eye;
            D_80120964[0].fovTargetInit = play->view.fovy;
            spD0 = OLib_Vec3fDiffToVecGeo(&mainCam->at, &mainCam->eye);
            D_80120964[1].eyeTargetInit.y = CAM_BINANG_TO_DEG(spD0.yaw);
            D_80120964[1].timerInit = timer - 1;

            csInfo->keyFrames = D_80120964;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80120964);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 5000: {
            static OnePointCsFull D_801209B4[4] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_8),
                    0x0101,
                    1,
                    0,
                    60.0f,
                    0.9f,
                    { 0.0f, 0.0f, 0.0f },
                    { 0.0f, 0.0f, 0.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_4, false, true),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0x0100,
                    29,
                    0,
                    45.0f,
                    0.1f,
                    { 0.0f, -10.0f, 0.0f },
                    { 0.0f, 0.0f, 150.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_3, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    10,
                    0,
                    60.0f,
                    0.2f,
                    { 0.0f, -10.0f, 0.0f },
                    { 0.0f, 0.0f, 150.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_18, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            D_801209B4[0].atTargetInit = D_801209B4[1].atTargetInit = play->view.at;
            D_801209B4[0].eyeTargetInit = play->view.eye;
            D_801209B4[0].fovTargetInit = D_801209B4[2].fovTargetInit = play->view.fovy;
            spD0 = OLib_Vec3fDiffToVecGeo(&actor->focus.pos, &mainCam->at);
            spD0.r = mainCam->dist;
            D_801209B4[1].eyeTargetInit = OnePointCutscene_AddVecGeoToVec3f(&D_801209B4[1].atTargetInit, &spD0);
            D_801209B4[1].atTargetInit.y += 20.0f;

            csInfo->keyFrames = D_801209B4;
            csInfo->keyFrameCount = ARRAY_COUNT(D_801209B4);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 5010: // attention cutscene
            // Setup keyFrames in `Camera_Demo5`
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_ATTENTION);
            Play_SetCameraAtEye(play, subCamId, &mainCam->at, &mainCam->eye);
            subCam->roll = 0;
            break;

        case 9500: {
            static OnePointCsFull D_80120A54[3] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x2525,
                    1,
                    0,
                    75.0f,
                    0.1f,
                    { 0.0f, 20.0f, -10.0f },
                    { 0.0f, 10.0f, -40.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    9,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_11, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0022,
                    5000,
                    0,
                    75.0f,
                    0.005f,
                    { 0.0f, 0.0f, -10.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_80120A54;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80120A54);
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 2260: {
            static OnePointCsFull D_80120ACC[5] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0442,
                    10,
                    0,
                    40.0f,
                    1.0f,
                    { -10.0f, 45.0f, 20.0f },
                    { 20.0f, 30.0f, 160.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_21, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    40.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0x0442,
                    10,
                    0,
                    40.0f,
                    1.0f,
                    { -10.0f, 45.0f, 20.0f },
                    { 20.0f, 30.0f, 160.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_21, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    40.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_17, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            D_80120ACC[0].atTargetInit.x = D_80120ACC[2].atTargetInit.x =
                ((mainCam->play->state.frames & 1) ? -10.0f : 10.0f) + (Rand_ZeroOne() * 8.0f);

            D_80120ACC[0].eyeTargetInit.x = D_80120ACC[2].eyeTargetInit.x =
                ((mainCam->play->state.frames & 1) ? 20.0f : -20.0f) + (Rand_ZeroOne() * 5.0f);

            csInfo->keyFrames = D_80120ACC;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80120ACC);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 2270: {
            static OnePointCsFull D_80120B94[11] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0x2142,
                    1,
                    0,
                    40.0f,
                    1.0f,
                    { 20.0f, 40.0f, 20.0f },
                    { -20.0f, 0.0f, -30.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_4, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0404,
                    19,
                    5,
                    70.0f,
                    0.01f,
                    { 0.0f, 30.0f, 20.0f },
                    { 120.0f, 60.0f, 120.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_4, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0404,
                    20,
                    0,
                    60.0f,
                    0.01f,
                    { 0.0f, 20.0f, 20.0f },
                    { 120.0f, 60.0f, 120.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_4, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0404,
                    40,
                    -10,
                    50.0f,
                    0.02f,
                    { 0.0f, 30.0f, 20.0f },
                    { 120.0f, 60.0f, 120.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4141,
                    1,
                    0,
                    40.0f,
                    1.0f,
                    { 0.0f, -10.0f, 20.0f },
                    { 0.0f, 20.0f, 50.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_4, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0404,
                    19,
                    0,
                    70.0f,
                    0.01f,
                    { 0.0f, 30.0f, 20.0f },
                    { 120.0f, 60.0f, 120.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_4, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0404,
                    40,
                    10,
                    50.0f,
                    0.01f,
                    { 0.0f, 20.0f, 20.0f },
                    { 120.0f, 60.0f, 120.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_4, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0404,
                    70,
                    0,
                    60.0f,
                    0.01f,
                    { 0.0f, 30.0f, 20.0f },
                    { 120.0f, 60.0f, 120.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4141,
                    1,
                    0,
                    50.0f,
                    1.0f,
                    { 0.0f, -10.0f, 0.0f },
                    { 80.0f, 20.0f, 60.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_13, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4141,
                    150,
                    0,
                    50.0f,
                    1.0f,
                    { 0.0f, 5.0f, 0.0f },
                    { 0.0f, 4.0f, 120.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_24, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    50.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_80120B94;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80120B94);

            for (i = 0; i < csInfo->keyFrameCount - 3; i++) {
                if (D_80120B94[i].actionFlags != ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true)) {
                    D_80120B94[i].atTargetInit.x = Rand_ZeroOne() * 5.0f;
                    D_80120B94[i].atTargetInit.z = (Rand_ZeroOne() * 30.0f) + 10.0f;
                    D_80120B94[i].eyeTargetInit.x = (Rand_ZeroOne() * 100.0f) + 20.0f;
                    D_80120B94[i].eyeTargetInit.z = (Rand_ZeroOne() * 80.0f) + 50.0f;
                }
            }

            D_80120B94[subCamId - 1].eyeTargetInit.y =
                ((mainCam->play->state.frames & 1) ? 3.0f : -3.0f) + Rand_ZeroOne();
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);

            i = Quake_Request(subCam, QUAKE_TYPE_5);
            Quake_SetSpeed(i, 400);
            Quake_SetPerturbations(i, 4, 5, 40, 0x3C);
            Quake_SetDuration(i, 1600);
            break;
        }

        case 2280: {
            static OnePointCsFull D_80120D4C[7] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0x2142,
                    1,
                    0,
                    40.0f,
                    1.0f,
                    { 20.0f, 40.0f, 20.0f },
                    { -20.0f, 0.0f, -30.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_4, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0404,
                    19,
                    5,
                    70.0f,
                    0.01f,
                    { 0.0f, 30.0f, 20.0f },
                    { 120.0f, 60.0f, 120.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_4, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0404,
                    20,
                    0,
                    60.0f,
                    0.01f,
                    { 0.0f, 20.0f, 20.0f },
                    { 120.0f, 60.0f, 120.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_4, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0404,
                    40,
                    -10,
                    50.0f,
                    0.02f,
                    { 0.0f, 30.0f, 20.0f },
                    { 120.0f, 60.0f, 120.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4141,
                    1,
                    0,
                    50.0f,
                    1.0f,
                    { 0.0f, -10.0f, 0.0f },
                    { 80.0f, 20.0f, 60.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_13, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4141,
                    150,
                    0,
                    50.0f,
                    1.0f,
                    { 0.0f, 5.0f, 0.0f },
                    { 0.0f, 4.0f, 120.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_24, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    50.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_80120D4C;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80120D4C);

            for (i = 0; i < csInfo->keyFrameCount - 3; i++) {
                if (D_80120D4C[i].actionFlags != ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true)) {
                    D_80120D4C[i].atTargetInit.x = Rand_ZeroOne() * 20.0f;
                    D_80120D4C[i].atTargetInit.z = (Rand_ZeroOne() * 40.0f) + 10.0f;
                    D_80120D4C[i].eyeTargetInit.x = (Rand_ZeroOne() * 40.0f) + 60.0f;
                    D_80120D4C[i].eyeTargetInit.z = (Rand_ZeroOne() * 40.0f) + 80.0f;
                }
            }
            D_80120D4C[subCamId - 1].eyeTargetInit.y =
                ((mainCam->play->state.frames & 1) ? 3.0f : -3.0f) + Rand_ZeroOne();
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);

            i = Quake_Request(subCam, QUAKE_TYPE_5);
            Quake_SetSpeed(i, 400);
            Quake_SetPerturbations(i, 2, 3, 200, 0x32);
            Quake_SetDuration(i, 9999);
            break;
        }

        case 2220: {
            static OnePointCsFull D_80120E64[8] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, true, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0x2142,
                    20,
                    0,
                    50.0f,
                    1.0f,
                    { -25.0f, 20.0f, 0.0f },
                    { 0.0f, 0.0f, 5.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, true, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    80,
                    0,
                    50.0f,
                    1.0f,
                    { -25.0f, 20.0f, 0.0f },
                    { 0.0f, 0.0f, 5.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_11, true, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4242,
                    8,
                    0,
                    60.0f,
                    0.1f,
                    { -25.0f, 20.0f, 0.0f },
                    { 0.0f, 0.0f, 5.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_11, true, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4242,
                    15,
                    4,
                    55.0f,
                    0.05f,
                    { -50.0f, 20.0f, 20.0f },
                    { 0.0f, 0.0f, 5.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_11, true, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4242,
                    15,
                    -4,
                    50.0f,
                    0.05f,
                    { 0.0f, 20.0f, 0.0f },
                    { 0.0f, 0.0f, 5.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_11, true, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4242,
                    15,
                    0,
                    50.0f,
                    0.1f,
                    { -25.0f, 20.0f, 0.0f },
                    { 0.0f, 0.0f, 5.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, true, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    40,
                    0,
                    50.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_18, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_80120E64;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80120E64);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);

            i = Quake_Request(subCam, QUAKE_TYPE_5);
            Quake_SetSpeed(i, 400);
            Quake_SetPerturbations(i, 2, 2, 50, 0);
            Quake_SetDuration(i, 280);
            break;
        }

        case 2230: {
            static OnePointCsFull D_80120FA4[6] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0x2143,
                    30,
                    0,
                    70.0f,
                    0.4f,
                    { 0.0f, 40.0f, 50.0f },
                    { 30.0f, 10.0f, -50.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_21, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    50.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x2222,
                    10,
                    0,
                    42.0f,
                    1.0f,
                    { 0.0f, 40.0f, 0.0f },
                    { 0.0f, 85.0f, 45.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_16, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    50.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x2121,
                    10,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, 10.0f, 0.0f },
                    { 30.0f, 10.0f, -80.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_18, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            if (player->actor.world.pos.z < 1000.0f) {
                D_80120FA4[0].eyeTargetInit.x = -D_80120FA4[0].eyeTargetInit.x;
                D_80120FA4[2].eyeTargetInit.x = -D_80120FA4[2].eyeTargetInit.x;
            }

            csInfo->keyFrames = D_80120FA4;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80120FA4);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 2340: {
            static OnePointCsFull D_80121094[3] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_8),
                    0x2101,
                    20,
                    0,
                    50.0f,
                    1.0f,
                    { 3840.0f, 10.0f, 950.0f },
                    { 0.0f, 0.0f, 5.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0x2101,
                    50,
                    0,
                    55.0f,
                    1.0f,
                    { 4000.0f, 50.0f, 1000.0f },
                    { 0.0f, 0.0f, 5.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_18, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_80121094;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80121094);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);

            i = Quake_Request(subCam, QUAKE_TYPE_5);
            Quake_SetSpeed(i, 400);
            Quake_SetPerturbations(i, 2, 2, 50, 0);
            Quake_SetDuration(i, 60);
            break;
        }

        case 2350: {
            static OnePointCsFull D_8012110C[3] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, true, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_5),
                    0x2142,
                    1,
                    0,
                    50.0f,
                    1.0f,
                    { -25.0f, 20.0f, 0.0f },
                    { 0.0f, 0.0f, 5.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, true, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x2121,
                    10,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, 10.0f, 0.0f },
                    { 0.0f, 10.0f, -80.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_18, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_8012110C;
            csInfo->keyFrameCount = ARRAY_COUNT(D_8012110C);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 2200: {
            static OnePointCsFull D_80121184[2] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_3, false, true),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0x0101,
                    40,
                    0,
                    -1.0f,
                    0.1f,
                    { 0.0f, 10.0f, 0.0f },
                    { 0.0f, 0.0f, 0.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_18, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };
            static OnePointCsFull D_801211D4[2] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_8),
                    0x0101,
                    50,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, 10.0f, 0.0f },
                    { -10.0f, 85.0f, 0.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_17, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };
            s16 sp82;
            s16 sp80;
            s16 sp7E;
            s16 sp7C;

            Actor_GetScreenPos(play, &player->actor, &sp82, &sp7E);
            Actor_GetScreenPos(play, actor, &sp80, &sp7C);
            if ((sp82 > 0) && (sp82 < 320) && (sp7E > 0) && (sp7E < 240) && (sp80 > 0) && (sp80 < 320) && (sp7C > 0) &&
                (sp7C < 240) &&
                !OnePointCutscene_BgCheckLineTest(&play->colCtx, &actor->focus.pos, &player->actor.focus.pos)) {
                D_80121184[0].atTargetInit.x = (play->view.at.x + actor->focus.pos.x) * 0.5f;
                D_80121184[0].atTargetInit.y = (play->view.at.y + actor->focus.pos.y) * 0.5f;
                D_80121184[0].atTargetInit.z = (play->view.at.z + actor->focus.pos.z) * 0.5f;
                D_80121184[0].eyeTargetInit = play->view.eye;
                D_80121184[0].eyeTargetInit.y = player->actor.focus.pos.y + 20.0f;
                D_80121184[0].fovTargetInit = mainCam->fov * 0.75f;

                csInfo->keyFrames = D_80121184;
                csInfo->keyFrameCount = ARRAY_COUNT(D_80121184);
            } else {
                D_801211D4[0].atTargetInit.x = actor->focus.pos.x;
                D_801211D4[0].atTargetInit.y = actor->focus.pos.y - 5.0f;
                D_801211D4[0].atTargetInit.z = actor->focus.pos.z;
                spC0 = ((EnSw*)actor)->unk_364;
                PRINTF("%s(%d): xyz_t: %s (%f %f %f)\n", "../z_onepointdemo.c", 1671, "&cp", spC0.x, spC0.y, spC0.z);
                D_801211D4[0].eyeTargetInit.x = (actor->focus.pos.x + (120.0f * spC0.x)) - (Rand_ZeroOne() * 20.0f);
                D_801211D4[0].eyeTargetInit.y = actor->focus.pos.y + (120.0f * spC0.y) + 20.0f;
                D_801211D4[0].eyeTargetInit.z = (actor->focus.pos.z + (120.0f * spC0.z)) - (Rand_ZeroOne() * 20.0f);

                csInfo->keyFrames = D_801211D4;
                csInfo->keyFrameCount = ARRAY_COUNT(D_801211D4);
            }
            Play_ChangeCameraStatus(play, CAM_ID_MAIN, CAM_STAT_UNK3);
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 2290: {
            static OnePointCsFull D_80121224[6] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0x4141,
                    2,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, 5.0f, 10.0f },
                    { 0.0f, 0.0f, 45.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4141,
                    18,
                    0,
                    45.0f,
                    1.0f,
                    { 0.0f, 5.0f, 10.0f },
                    { 0.0f, -10.0f, 50.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_4, false, true),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_52),
                    0x4104,
                    80,
                    0,
                    70.0f,
                    0.05f,
                    { 0.0f, 0.0f, 60.0f },
                    { 0.0f, 250.0f, -50.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0x0000,
                    20,
                    0,
                    70.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0421,
                    60,
                    0,
                    50.0f,
                    1.0f,
                    { 0.0f, -30.0f, 20.0f },
                    { 10.0f, 5.0f, -50.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_17, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };
            Actor* rideActor = player->rideActor;

            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            if (rideActor != NULL) {
                rideActor->freezeTimer = 180;
            }

            csInfo->keyFrames = D_80121224;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80121224);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 5120: {
            static OnePointCsFull D_80121314[1] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_8),
                    0x4141,
                    1000,
                    0,
                    75.0f,
                    0.6f,
                    { 0.0f, 0.0f, 10.0f },
                    { 0.0f, 0.0f, 100.0f },
                },
            };

            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);

            csInfo->keyFrames = D_80121314;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80121314);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 4510: {
            static OnePointCsFull D_8012133C[3] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0x0141,
                    40,
                    0,
                    75.0f,
                    1.0f,
                    { 0.0f, 60.0f, 0.0f },
                    { 0.0f, 0.0f, 100.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_3, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x2121,
                    20,
                    0,
                    60.0f,
                    0.2f,
                    { 0.0f, -10.0f, -10.0f },
                    { 0.0f, 10.0f, -100.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_17, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            D_8012133C[0].eyeTargetInit = actor->world.pos;
            D_8012133C[0].eyeTargetInit.y = player->actor.world.pos.y + 40.0f;
            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);

            csInfo->keyFrames = D_8012133C;
            csInfo->keyFrameCount = ARRAY_COUNT(D_8012133C);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 4500:
            spA0 = Actor_GetFocus(actor);
            spC0 = spA0.pos;
            spC0.y = OnePointCutscene_RaycastDown(&play->colCtx, &spC0) + 40.0f;
            spD0.r = 150.0f;
            spD0.yaw = spA0.rot.y;
            spD0.pitch = 0x3E8;

            spB4 = OnePointCutscene_AddVecGeoToVec3f(&spC0, &spD0);
            Play_RequestCameraSetting(play, subCamId, CAM_SET_FREE2);
            Play_SetCameraAtEye(play, subCamId, &spC0, &spB4);
            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            subCam->roll = 0;
            subCam->fov = 50.0f;
            if (subCam->childCamId != CAM_ID_MAIN) {
                OnePointCutscene_EndCutscene(play, subCam->childCamId);
            }
            break;

        case 2210: {
            static OnePointCsFull D_801213B4[5] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_8),
                    0xC2C2,
                    40,
                    0,
                    70.0f,
                    1.0f,
                    { 80.0f, 0.0f, 20.0f },
                    { 20.0f, 0.0f, 80.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_11, false, true),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0xC2C2,
                    120,
                    0,
                    70.0f,
                    0.1f,
                    { 80.0f, 0.0f, 20.0f },
                    { 20.0f, 0.0f, 80.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_83),
                    0xC2C2,
                    30,
                    0,
                    50.0f,
                    1.0f,
                    { 60.0f, 0.0f, 20.0f },
                    { 60.0f, 0.0f, 60.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_4, false, true),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_69),
                    0x4222,
                    30,
                    0,
                    60.0f,
                    0.1f,
                    { 0.0f, 50.0f, 0.0f },
                    { 5.0f, 30.0f, 220.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_18, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    75.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            spD0 = OLib_Vec3fDiffToVecGeo(&player->actor.world.pos, &actor->world.pos);
            D_801213B4[0].eyeTargetInit.y = D_801213B4[1].eyeTargetInit.y = D_801213B4[2].eyeTargetInit.y =
                D_801213B4[2].atTargetInit.y = CAM_BINANG_TO_DEG(spD0.yaw);
            if (Rand_ZeroOne() < 0.0f) {
                D_801213B4[3].eyeTargetInit.x = -D_801213B4[3].eyeTargetInit.x;
            }
            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);

            csInfo->keyFrames = D_801213B4;
            csInfo->keyFrameCount = ARRAY_COUNT(D_801213B4);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 1010:
            Play_RequestCameraSetting(play, subCamId, CAM_SET_FREE2);
            Play_SetCameraAtEye(play, subCamId, &childCam->at, &childCam->eye);
            Play_SetCameraFov(play, subCamId, childCam->fov);
            Play_SetCameraRoll(play, subCamId, childCam->roll);
            break;

        case 9601: // Leaving a crawlspace forwards
            Play_RequestCameraSetting(play, subCamId, CAM_SET_CS_3);
            Play_RequestCameraSetting(play, CAM_ID_MAIN, mainCam->prevSetting);
            OnePointCutscene_SetCsCamPoints(subCam, sCrawlspaceActionParam | 0x1000, sCrawlspaceTimer,
                                            sCrawlspaceAtPoints, sCrawlspaceForwardsEyePoints);
            break;

        case 9602: // Leaving a crawlspace backwards
            Play_RequestCameraSetting(play, subCamId, CAM_SET_CS_3);
            Play_RequestCameraSetting(play, CAM_ID_MAIN, mainCam->prevSetting);
            OnePointCutscene_SetCsCamPoints(subCam, sCrawlspaceActionParam | 0x1000, sCrawlspaceTimer,
                                            sCrawlspaceAtPoints, sCrawlspaceBackwardsEyePoints);
            break;

        case 4175: {
            static OnePointCsFull D_8012147C[4] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0x0101,
                    40,
                    0,
                    45.0f,
                    1.0f,
                    { 820.0f, 1600.0f, -400.0f },
                    { 777.0f, 1577.0f, -577.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0x0142,
                    1,
                    0,
                    50.0f,
                    1.0f,
                    { -50.0f, 80.0f, 0.0f },
                    { 900.0f, 1575.0f, 850.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_3, false, true),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_8),
                    0x0142,
                    89,
                    -4,
                    80.0f,
                    0.07f,
                    { -50.0f, 70.0f, 0.0f },
                    { 975.0f, 1575.0f, 770.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_17, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_8012147C;
            csInfo->keyFrameCount = ARRAY_COUNT(D_8012147C);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 4180:
            spC0.x = -1881.0f;
            spC0.y = 766.0f;
            spC0.z = -330.0f;
            spB4.x = -1979.0f;
            spB4.y = 703.0f;
            spB4.z = -269.0f;
            Play_RequestCameraSetting(play, subCamId, CAM_SET_FREE2);
            Play_SetCameraAtEye(play, subCamId, &spC0, &spB4);
            subCam->roll = 6;
            subCam->fov = 75.0f;
            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            break;

        case 3040: {
            static OnePointCsFull D_8012151C[2] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0x0101,
                    29,
                    0,
                    60.0f,
                    1.0f,
                    { -700.0f, 875.0f, -100.0f },
                    { -550.0f, 920.0f, -150.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_18, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            D_8012151C[0].timerInit = timer - 1;

            csInfo->keyFrames = D_8012151C;
            csInfo->keyFrameCount = ARRAY_COUNT(D_8012151C);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 3020: {
            static OnePointCsFull D_8012156C[2] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_77),
                    0x4242,
                    1,
                    0,
                    65.0f,
                    1.0f,
                    { 60.0f, 30.0f, 0.0f },
                    { 50.0f, 20.0f, 150.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4242,
                    -1,
                    0,
                    65.0f,
                    1.0f,
                    { -50.0f, 60.0f, 0.0f },
                    { -60.0f, 40.0f, 150.0f },
                },
            };

            D_8012156C[1].timerInit = timer - 1;
            if (mainCam->play->state.frames & 1) {
                D_8012156C[0].atTargetInit.x = -D_8012156C[0].atTargetInit.x;
                D_8012156C[0].eyeTargetInit.x = -D_8012156C[0].eyeTargetInit.x;
                D_8012156C[1].atTargetInit.x = -D_8012156C[1].atTargetInit.x;
                D_8012156C[1].eyeTargetInit.x = -D_8012156C[1].eyeTargetInit.x;
            }
            tempRand = Rand_ZeroOne() * 15.0f;
            D_8012156C[0].eyeTargetInit.x += tempRand;
            D_8012156C[1].eyeTargetInit.x += tempRand;

            csInfo->keyFrames = D_8012156C;
            csInfo->keyFrameCount = ARRAY_COUNT(D_8012156C);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            break;
        }

        case 3010: {
            static OnePointCsFull D_801215BC[1] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    5,
                    0,
                    65.0f,
                    1.0f,
                    { -1185.0f, 655.0f, 1185.0f },
                    { -1255.0f, 735.0f, 1255.0f },
                },
            };

            D_801215BC[0].timerInit = timer;

            csInfo->keyFrames = D_801215BC;
            csInfo->keyFrameCount = ARRAY_COUNT(D_801215BC);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 3070: {
            static OnePointCsFull D_801215E4[10] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_8),
                    0x4141,
                    20,
                    0,
                    30.0f,
                    1.0f,
                    { 0.0f, 120.0f, 0.0f },
                    { -10.0f, 140.0f, -90.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0x0101,
                    1,
                    4,
                    75.0f,
                    1.0f,
                    { -1360.0f, -940.0f, -3343.0f },
                    { -1060.0f, -980.0f, -3325.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_11, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4141,
                    129,
                    0,
                    75.0f,
                    0.5f,
                    { 0.0f, 50.0f, 0.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_3, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0303,
                    30,
                    0,
                    70.0f,
                    0.05f,
                    { 0.0f, 80.0f, 0.0f },
                    { -10.0f, 120.0f, 10.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_9),
                    0x0101,
                    40,
                    -5,
                    70.0f,
                    1.0f,
                    { -973.0f, -924.0f, -3263.0f },
                    { -1190.0f, -1010.0f, -3365.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0x0101,
                    1,
                    0,
                    75.0f,
                    1.0f,
                    { -1355.0f, -700.0f, -3340.0f },
                    { -1040.0f, -940.0f, -3345.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_2, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    60,
                    0,
                    45.0f,
                    0.8f,
                    { -1370.0f, -875.0f, -3345.0f },
                    { -1230.0f, -885.0f, -3345.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    10,
                    0,
                    70.0f,
                    1.0f,
                    { -1370.0f, -875.0f, -3345.0f },
                    { -1210.0f, -900.0f, -3420.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    20,
                    0,
                    70.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_17, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_801215E4;
            csInfo->keyFrameCount = ARRAY_COUNT(D_801215E4);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);

            i = Quake_Request(subCam, QUAKE_TYPE_3);
            Quake_SetSpeed(i, 22000);
            Quake_SetPerturbations(i, 2, 0, 200, 0);
            Quake_SetDuration(i, 10);
            break;
        }

        case 3080: {
            static OnePointCsFull D_80121774[4] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_8),
                    0x0101,
                    1,
                    -2,
                    75.0f,
                    1.0f,
                    { -1340.0f, -860.0f, -3345.0f },
                    { -1415.0f, -940.0f, -3520.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0x0142,
                    39,
                    2,
                    70.0f,
                    1.0f,
                    { 0.0f, -20.0f, 10.0f },
                    { -1140.0f, -1010.0f, -3560.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_5),
                    0x0121,
                    20,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, -20.0f, 20.0f },
                    { -1220.0f, -1005.0f, -3660.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_18, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_80121774;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80121774);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 3090: {
            static OnePointCsFull D_80121814[4] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_76),
                    0x0101,
                    5,
                    0,
                    40.0f,
                    1.0f,
                    { -1400.0f, -540.0f, -3327.0f },
                    { -1254.0f, -20.0f, -3357.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    70,
                    0,
                    75.0f,
                    0.75f,
                    { -1327.0f, 100.0f, -3342.0f },
                    { -1320.0f, 350.0f, -3540.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x2121,
                    10,
                    0,
                    60.0f,
                    0.75f,
                    { 0.0f, 10.0f, 0.0f },
                    { 0.0f, 20.0f, -150.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_18, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);

            csInfo->keyFrames = D_80121814;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80121814);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 3100:
            VEC_SET(spB4, 0.0f, -280.0f, -1400.0f);

            spA0 = Actor_GetFocus(actor);
            spC0 = spA0.pos;
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_PIVOT_VERTICAL);
            Play_SetCameraAtEye(play, subCamId, &spC0, &spB4);
            subCam->roll = 0;
            subCam->fov = 70.0f;
            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            break;

        case 3380:
        case 3065: {
            static OnePointCsFull D_801218B4[2] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    60,
                    0,
                    65.0f,
                    1.0f,
                    { 0.0f, 350.0f, -1520.0f },
                    { 0.0f, 715.0f, -885.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_3, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    100,
                    0,
                    70.0f,
                    0.02f,
                    { 0.0f, 75.0f, -1335.0f },
                    { 0.0f, 20.0f, -1190.0f },
                },
            };

            csInfo->keyFrames = D_801218B4;
            csInfo->keyFrameCount = ARRAY_COUNT(D_801218B4);

            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);

            i = Quake_Request(subCam, QUAKE_TYPE_1);
            Quake_SetSpeed(i, 24000);
            Quake_SetPerturbations(i, 2, 0, 0, 0);
            Quake_SetDuration(i, 160);
            break;
        }

        case 3060: {
            static OnePointCsFull D_80121904[2] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    50,
                    10,
                    65.0f,
                    1.0f,
                    { 165.0f, 85.0f, -920.0f },
                    { 65.0f, -30.0f, -720.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_17, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    -1,
                    -1.0f,
                    -1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_80121904;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80121904);

            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 3050: {
            Play_RequestCameraSetting(play, subCamId, CAM_SET_CS_3);
            Player_SetCsActionWithHaltedActors(play, &player->actor, PLAYER_CSACTION_5);
            OnePointCutscene_SetCsCamPoints(subCam, D_80120304 | 0x2000, D_80120300, D_8012013C, D_8012021C);
#if OOT_VERSION >= PAL_1_0
            Sfx_PlaySfxCentered(NA_SE_SY_CORRECT_CHIME);
#endif
            OnePointCutscene_Vec3sToVec3f(&mainCam->at, &D_8012013C[D_801202FC - 2].pos);
            OnePointCutscene_Vec3sToVec3f(&mainCam->eye, &D_8012021C[D_801202FC - 2].pos);
            D_8012013C[D_801202FC - 3].pos.x +=
                (D_8012013C[D_801202FC - 2].pos.x - D_8012013C[D_801202FC - 3].pos.x) / 2;
            D_8012013C[D_801202FC - 3].pos.y +=
                (D_8012013C[D_801202FC - 2].pos.y - D_8012013C[D_801202FC - 3].pos.y) / 2;
            D_8012013C[D_801202FC - 3].pos.z +=
                (D_8012013C[D_801202FC - 2].pos.z - D_8012013C[D_801202FC - 3].pos.z) / 2;
            D_8012021C[D_801202FC - 3].pos.x +=
                (D_8012021C[D_801202FC - 2].pos.x - D_8012021C[D_801202FC - 3].pos.x) / 2;
            D_8012021C[D_801202FC - 3].pos.y +=
                (D_8012021C[D_801202FC - 2].pos.y - D_8012021C[D_801202FC - 3].pos.y) / 2;
            D_8012021C[D_801202FC - 3].pos.z +=
                (D_8012021C[D_801202FC - 2].pos.z - D_8012021C[D_801202FC - 3].pos.z) / 2;

#if OOT_VERSION < PAL_1_0
            i = Quake_Request(subCam, QUAKE_TYPE_1);
            Quake_SetSpeed(i, 30000);
            Quake_SetPerturbations(i, 3, 1, 1, 0);
            Quake_SetDuration(i, D_80120300);

            i = Quake_Request(mainCam, QUAKE_TYPE_3);
            Quake_SetSpeed(i, 30000);
            Quake_SetPerturbations(i, 3, 1, 1, 0);
            Quake_SetDuration(i, D_80120300 + 50);
#else
            i = Quake_Request(mainCam, QUAKE_TYPE_3);
            Quake_SetSpeed(i, 30000);
            Quake_SetPerturbations(i, 2, 1, 1, 0);
            Quake_SetDuration(i, 200);
#endif
            break;
        }

        case 3120: {
            static OnePointCsFull D_80121954[3][2] = {
                {
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                        ONEPOINT_CS_INIT_FIELD_NONE,
                        0x0101,
                        20,
                        5,
                        60.0f,
                        1.0f,
                        { -700.0f, 940.0f, 300.0f },
                        { -765.0f, 1000.0f, 335.0f },
                    },
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_3, false, false),
                        ONEPOINT_CS_INIT_FIELD_NONE,
                        0x0101,
                        80,
                        -10,
                        70.0f,
                        0.1f,
                        { -540.0f, 875.0f, 245.0f },
                        { -585.0f, 900.0f, 335.0f },
                    },
                },
                {
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                        ONEPOINT_CS_INIT_FIELD_NONE,
                        0x0101,
                        40,
                        -30,
                        70.0f,
                        1.0f,
                        { -80.0f, 115.0f, -180.0f },
                        { -5.0f, 240.0f, -190.0f },
                    },
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_11, false, false),
                        ONEPOINT_CS_INIT_FIELD_NONE,
                        0x0101,
                        60,
                        20,
                        70.0f,
                        0.1f,
                        { -100.0f, 350.0f, -175.0f },
                        { -5.0f, 240.0f, -190.0f },
                    },
                },
                {
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_3, false, false),
                        ONEPOINT_CS_INIT_FIELD_NONE,
                        0x0101,
                        80,
                        5,
                        70.0f,
                        0.2f,
                        { 960.0f, 900.0f, 260.0f },
                        { 970.0f, 950.0f, 250.0f },
                    },
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                        ONEPOINT_CS_INIT_FIELD_NONE,
                        0x0101,
                        20,
                        5,
                        70.0f,
                        1.0f,
                        { 960.0f, 900.0f, 260.0f },
                        { 970.0f, 950.0f, 250.0f },
                    },
                },
            };

            csInfo->keyFrames = D_80121954[-(timer + 101)];
            subCam->timer = 100;
            subCam->stateFlags |= CAM_STATE_CHECK_WATER;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80121954[0]);

            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 3130: {
            static OnePointCsFull D_80121A44[12] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, true, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_5),
                    0x2121,
                    10,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, -5.0f, 0.0f },
                    { 0.0f, 0.0f, -80.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_2, true, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0x4242,
                    30,
                    0,
                    50.0f,
                    1.0f,
                    { 0.0f, 45.0f, 0.0f },
                    { 0.0f, 45.0f, 50.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_21, true, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, true, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_5),
                    0x2222,
                    40,
                    5,
                    50.0f,
                    1.0f,
                    { 0.0f, 50.0f, 0.0f },
                    { 0.0f, 50.0f, 50.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, true, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0x4242,
                    40,
                    5,
                    60.0f,
                    1.0f,
                    { 30.0f, 30.0f, 15.0f },
                    { 70.0f, 30.0f, -40.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_21, true, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, true, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4242,
                    30,
                    -5,
                    50.0f,
                    1.0f,
                    { 20.0f, 30.0f, -5.0f },
                    { 0.0f, 70.0f, 70.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_16, true, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, true, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0x2242,
                    40,
                    0,
                    45.0f,
                    1.0f,
                    { 0.0f, 30.0f, 30.0f },
                    { 25.0f, 60.0f, -60.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_11, true, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0x22C2,
                    140,
                    0,
                    60.0f,
                    0.04f,
                    { 0.0f, 0.0f, 30.0f },
                    { 25.0f, 60.0f, -60.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_9, true, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x2222,
                    20,
                    0,
                    60.0f,
                    0.8f,
                    { 0.0f, 50.0f, 0.0f },
                    { 0.0f, 60.0f, -60.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_18, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_80121A44;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80121A44);

            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            subCam->stateFlags |= CAM_STATE_CHECK_WATER;
            break;
        }

        case 3140: {
            static OnePointCsFull D_80121C24[7] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_5),
                    0x0101,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, 0.0f, 0.0f },
                    { 0.0f, 0.0f, 0.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_3, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    89,
                    0,
                    50.0f,
                    0.4f,
                    { 125.0f, 320.0f, -1500.0f },
                    { 125.0f, 500.0f, -1150.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_8),
                    0x0101,
                    40,
                    4,
                    55.0f,
                    1.0f,
                    { 0.0f, 375.0f, -1440.0f },
                    { 5.0f, 365.0f, -1315.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    40,
                    -4,
                    55.0f,
                    1.0f,
                    { 250.0f, 375.0f, -1440.0f },
                    { 235.0f, 365.0f, -1315.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    100,
                    0,
                    95.0f,
                    1.0f,
                    { 125.0f, 345.0f, -1500.0f },
                    { 125.0f, 255.0f, -1350.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_2, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    100,
                    0,
                    60.0f,
                    1.0f,
                    { 125.0f, 325.0f, -1500.0f },
                    { 125.0f, 480.0f, -1000.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_17, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            D_80121C24[0].atTargetInit = play->view.at;
            D_80121C24[0].eyeTargetInit = play->view.eye;
            D_80121C24[0].fovTargetInit = play->view.fovy;

            csInfo->keyFrames = D_80121C24;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80121C24);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 3150:
            spC0.x = 1890.0f;
            spC0.y = 886.0f;
            spC0.z = -1432.0f;
            spB4.x = 1729.0f;
            spB4.y = 995.0f;
            spB4.z = -1405.0f;
            Play_RequestCameraSetting(play, subCamId, CAM_SET_FREE2);
            Play_SetCameraAtEye(play, subCamId, &spC0, &spB4);
            subCam->roll = 0x50;
            subCam->fov = 55.0f;
            Player_SetCsAction(play, &player->actor, PLAYER_CSACTION_8);
            break;

        case 3170:
            spA0 = Actor_GetWorld(actor);
            spC0 = spA0.pos;
            spD0.pitch = -0x5DC;
            spC0.y += 50.0f;
            spD0.r = 250.0f;
            spA0 = Actor_GetWorld(&player->actor);
            spD0.yaw = OnePointCutscene_Vec3fYaw(&spC0, &spA0.pos) - 0x7D0;
            spB4 = OnePointCutscene_AddVecGeoToVec3f(&spC0, &spD0);
            Play_RequestCameraSetting(play, subCamId, CAM_SET_FREE2);
            Play_SetCameraAtEye(play, subCamId, &spC0, &spB4);
            Play_CopyCamera(play, CAM_ID_MAIN, subCamId);
            subCam->roll = -1;
            subCam->fov = 55.0f;
            Player_SetCsAction(play, actor, PLAYER_CSACTION_1);
            break;

        case 3160:
            spA0 = Actor_GetWorld(actor);
            spC0 = spA0.pos;
            spD0.pitch = 0;
            spD0.yaw = spA0.rot.y;
            spD0.r = 150.0f;
            spB4 = OnePointCutscene_AddVecGeoToVec3f(&spC0, &spD0);
            Play_RequestCameraSetting(play, subCamId, CAM_SET_FREE2);
            Play_SetCameraAtEye(play, subCamId, &spC0, &spB4);
            subCam->roll = 0;
            subCam->fov = 55.0f;
            Player_SetCsAction(play, &player->actor, PLAYER_CSACTION_8);
            break;

        case 3180:
            spA0 = Actor_GetWorldPosShapeRot(actor);
            spC0 = spA0.pos;
            spC0.y += 120.0f;
            spD0.r = 300.0f;
            spD0.yaw = spA0.rot.y;
            spD0.pitch = -0xAF0;
            spB4 = OnePointCutscene_AddVecGeoToVec3f(&spC0, &spD0);
            Play_RequestCameraSetting(play, subCamId, CAM_SET_FREE2);
            Play_SetCameraAtEye(play, subCamId, &spC0, &spB4);
            subCam->roll = 0;
            subCam->fov = 60.0f;
            Player_SetCsAction(play, actor, PLAYER_CSACTION_1);
            break;

        case 3190:
            Play_RequestCameraSetting(play, subCamId, CAM_SET_FOREST_DEFEAT_POE);
            Camera_RequestMode(mainCam, CAM_MODE_NORMAL);
            Player_SetCsAction(play, actor, PLAYER_CSACTION_12);
            break;

        case 3230:
            spC0.x = 120.0f;
            spC0.y = 265.0f;
            spC0.z = -1570.0f;
            spB4.x = 80.0f;
            spB4.y = 445.0f;
            spB4.z = -1425.0f;
            Play_RequestCameraSetting(play, subCamId, CAM_SET_FREE2);
            Play_SetCameraAtEye(play, subCamId, &spC0, &spB4);
            subCam->roll = 0x1E;
            subCam->fov = 75.0f;
            Player_SetCsAction(play, &player->actor, PLAYER_CSACTION_8);
            spA0 = Actor_GetWorldPosShapeRot(actor);
            sp8C = Actor_GetFocus(&player->actor);
            spC0.x = sp8C.pos.x;
            spC0.y = sp8C.pos.y + 70.0f;
            spC0.z = sp8C.pos.z;
            spD0 = OLib_Vec3fDiffToVecGeo(&spA0.pos, &sp8C.pos);
            spD0.pitch = 0x5DC;
            spD0.r = 120.0f;
            spB4 = OnePointCutscene_AddVecGeoToVec3f(&spC0, &spD0);
            Play_SetCameraAtEye(play, CAM_ID_MAIN, &spC0, &spB4);

            i = Quake_Request(subCam, QUAKE_TYPE_3);
            Quake_SetSpeed(i, 22000);
            Quake_SetPerturbations(i, 1, 0, 0, 0);
            Quake_SetDuration(i, 90);
            break;

        case 6010:
            spA0 = Actor_GetWorld(actor);
            spC0 = spA0.pos;
            spD0.pitch = 0;
            spC0.y += 70.0f;
            spD0.yaw = spA0.rot.y + 0x7FFF;
            spD0.r = 300.0f;
            spB4 = OnePointCutscene_AddVecGeoToVec3f(&spC0, &spD0);
            Play_RequestCameraSetting(play, subCamId, CAM_SET_FREE2);
            Play_SetCameraAtEye(play, subCamId, &spC0, &spB4);
            subCam->roll = 0;
            subCam->fov = 45.0f;
            Player_SetCsAction(play, &player->actor, PLAYER_CSACTION_8);
            break;

        case 3220:
            spA0 = Actor_GetFocus(actor);
            spC0 = spA0.pos;
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_PIVOT_VERTICAL);
            spA0 = Actor_GetWorld(&player->actor);
            spD0 = OLib_Vec3fDiffToVecGeo(&spC0, &spA0.pos);
            spD0.yaw += 0x3E8;
            spD0.r = 400.0f;
            spB4 = OnePointCutscene_AddVecGeoToVec3f(&spC0, &spD0);
            spB4.y = spA0.pos.y + 60.0f;
            Play_SetCameraAtEye(play, subCamId, &spC0, &spB4);
            subCam->roll = 0;
            subCam->fov = 75.0f;
            player->actor.shape.rot.y = player->actor.world.rot.y = player->yaw = spD0.yaw + 0x7FFF;
            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            break;

        case 3240: {
            static OnePointCsFull D_80121D3C[3] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { 1023.0f, 738.0f, -2628.0f },
                    { 993.0f, 770.0f, -2740.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_2, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    4,
                    0,
                    50.0f,
                    1.0f,
                    { 1255.0f, 350.0f, -1870.0f },
                    { 1240.0f, 575.0f, -2100.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    -1,
                    0,
                    75.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            D_80121D3C[2].timerInit = timer - 5;

            csInfo->keyFrames = D_80121D3C;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80121D3C);

            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 6001:
            Play_RequestCameraSetting(play, subCamId, CAM_SET_CS_3);
            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            spA0 = Actor_GetWorld(actor);
            if (spA0.pos.z > -750.0f) {
                OnePointCutscene_SetCsCamPoints(subCam, D_801208E8, D_801208E4, D_801206A0, D_80120820);
            } else {
                OnePointCutscene_SetCsCamPoints(subCam, D_801208E8, D_801208E4, D_801206A0, D_80120760);
            }

            i = Quake_Request(subCam, QUAKE_TYPE_1);
            Quake_SetSpeed(i, 32000);
            Quake_SetPerturbations(i, 0, 0, 20, 0);
            Quake_SetDuration(i, D_801208E4 - 10);
            break;

        case 3400:
            Play_RequestCameraSetting(play, subCamId, CAM_SET_CS_3);
            Player_SetCsAction(play, &player->actor, PLAYER_CSACTION_8);
            OnePointCutscene_SetCsCamPoints(subCam, D_8012069C | 0x2000, D_80120698, D_801204D4, D_801205B4);
            OnePointCutscene_Vec3sToVec3f(&mainCam->eye, &D_801205B4[D_80120694 - 2].pos);
            OnePointCutscene_Vec3sToVec3f(&mainCam->at, &D_801204D4[D_80120694 - 2].pos);

            i = Quake_Request(subCam, QUAKE_TYPE_1);
            Quake_SetSpeed(i, 0x4E20);
            Quake_SetPerturbations(i, 1, 0, 50, 0);
            Quake_SetDuration(i, D_80120698 - 20);
            break;

        case 3390: {
            static OnePointCsFull D_80121DB4[9] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    40,
                    0,
                    70.0f,
                    1.0f,
                    { 4290.0f, -1332.0f, -1900.0f },
                    { 4155.0f, -1360.0f, -1840.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_2, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    60,
                    0,
                    70.0f,
                    1.0f,
                    { 4215.0f, -975.0f, -2095.0f },
                    { 4070.0f, -1000.0f, -2025.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    5,
                    0,
                    70.0f,
                    1.0f,
                    { 4215.0f, -975.0f, -2095.0f },
                    { 4070.0f, -1000.0f, -2025.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    80,
                    8,
                    75.0f,
                    1.0f,
                    { 4010.0f, -1152.0f, -1728.0f },
                    { 3997.0f, -1194.0f, -1629.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_57),
                    0x2121,
                    1,
                    8,
                    75.0f,
                    1.0f,
                    { 20.0f, 20.0f, 0.0f },
                    { 50.0f, 30.0f, 200.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_4, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x2121,
                    99,
                    2,
                    70.0f,
                    0.02f,
                    { -20.0f, 0.0f, 20.0f },
                    { 300.0f, 50.0f, -500.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_9, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_56),
                    0x2121,
                    149,
                    -20,
                    70.0f,
                    0.1f,
                    { 100.0f, 50.0f, -100.0f },
                    { 5000.0f, 1055.0f, -2250.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x2121,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, -20.0f, 0.0f },
                    { 0.0f, 20.0f, -150.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_18, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    -1,
                    -1.0f,
                    -1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            player->actor.shape.rot.y = player->actor.world.rot.y = player->yaw = -0x3FD9;

            csInfo->keyFrames = D_80121DB4;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80121DB4);

            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 3310:
            Play_RequestCameraSetting(play, subCamId, CAM_SET_FIRE_STAIRCASE);
            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            Play_CopyCamera(play, subCamId, CAM_ID_MAIN);

            i = Quake_Request(subCam, QUAKE_TYPE_1);
            Quake_SetSpeed(i, 32000);
            Quake_SetPerturbations(i, 2, 0, 0, 0);
            Quake_SetDuration(i, timer);
            break;

        case 3290: {
            static OnePointCsFull D_80121F1C[4] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_8),
                    0x0101,
                    10,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, 0.0f, 0.0f },
                    { 0.0f, 0.0f, 0.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x2121,
                    10,
                    0,
                    50.0f,
                    0.5f,
                    { 0.0f, 0.0f, 0.0f },
                    { 0.0f, 0.0f, 150.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_2),
                    0x2121,
                    23,
                    0,
                    50.0f,
                    0.5f,
                    { 0.0f, 0.0f, 0.0f },
                    { 0.0f, 0.0f, 150.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_17, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    -1,
                    -1.0f,
                    -1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            D_80121F1C[0].atTargetInit = play->view.at;
            D_80121F1C[0].eyeTargetInit = play->view.eye;
            D_80121F1C[0].fovTargetInit = play->view.fovy;
            spA0 = Actor_GetFocus(actor);
            player->actor.shape.rot.y = player->actor.world.rot.y = player->yaw = spA0.rot.y;

            csInfo->keyFrames = D_80121F1C;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80121F1C);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);

            i = Quake_Request(subCam, QUAKE_TYPE_3);
            Quake_SetSpeed(i, 12000);
            Quake_SetPerturbations(i, 0, 0, 1000, 0);
            Quake_SetDuration(i, 5);
            break;
        }

        case 3340: {
            static OnePointCsFull D_80121FBC[4] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    5,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, 0.0f, 0.0f },
                    { 0.0f, 0.0f, 0.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    10,
                    0,
                    30.0f,
                    1.0f,
                    { -2130.0f, 2885.0f, -1055.0f },
                    { -2085.0f, 2875.0f, -1145.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    30,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_18, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    -1,
                    -1.0f,
                    -1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            D_80121FBC[0].atTargetInit = play->view.at;
            D_80121FBC[0].eyeTargetInit = play->view.eye;
            D_80121FBC[0].fovTargetInit = play->view.fovy;

            csInfo->keyFrames = D_80121FBC;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80121FBC);

            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);

            i = Quake_Request(subCam, QUAKE_TYPE_3);
            Quake_SetSpeed(i, 12000);
            Quake_SetPerturbations(i, 0, 0, 1000, 0);
            Quake_SetDuration(i, 5);
            break;
        }

        case 3360: {
            static OnePointCsFull D_8012205C[3] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x42C2,
                    1,
                    0,
                    50.0f,
                    1.0f,
                    { 0.0f, 220.0f, 0.0f },
                    { 0.0f, 220.0f, 240.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0080,
                    29,
                    0,
                    50.0f,
                    1.0f,
                    { 0.0f, 220.0f, 0.0f },
                    { 0.0f, 220.0f, 240.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0x21A1,
                    10,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, -10.0f, 0.0f },
                    { 0.0f, 10.0f, -200.0f },
                },
            };

            csInfo->keyFrames = D_8012205C;
            csInfo->keyFrameCount = ARRAY_COUNT(D_8012205C);

            Player_SetCsAction(play, &player->actor, PLAYER_CSACTION_8);
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 3350: {
            static OnePointCsFull D_801220D4[5] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0x0101,
                    5,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, 0.0f, 0.0f },
                    { 0.0f, 0.0f, 0.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4141,
                    10,
                    5,
                    55.0f,
                    0.75f,
                    { 400.0f, -50.0f, 800.0f },
                    { 600.0f, -60.0f, 800.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4141,
                    15,
                    10,
                    40.0f,
                    0.75f,
                    { 0.0f, 0.0f, 0.0f },
                    { 0.0f, 10.0f, 200.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    25,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_17, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    -1,
                    -1.0f,
                    -1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            D_801220D4[0].atTargetInit = play->view.at;
            D_801220D4[0].eyeTargetInit = play->view.eye;
            D_801220D4[0].fovTargetInit = play->view.fovy;
            if (actor->world.pos.x > 0.0f) {
                D_801220D4[1].rollTargetInit = -D_801220D4[1].rollTargetInit;
                D_801220D4[2].rollTargetInit = -D_801220D4[2].rollTargetInit;
                D_801220D4[1].atTargetInit.x = -D_801220D4[1].atTargetInit.x;
                D_801220D4[1].atTargetInit.y = 50.0f;
                D_801220D4[1].eyeTargetInit.y = 80.0f;
                D_801220D4[1].eyeTargetInit.x = -D_801220D4[1].eyeTargetInit.x;
            }
            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);

            csInfo->keyFrames = D_801220D4;
            csInfo->keyFrameCount = ARRAY_COUNT(D_801220D4);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 3330: {
            static OnePointCsFull D_8012219C[7] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x2121,
                    5,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, -5.0f, 0.0f },
                    { 0.0f, 0.0f, -80.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_2, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4242,
                    15,
                    0,
                    40.0f,
                    0.4f,
                    { 0.0f, 60.0f, -20.0f },
                    { 0.0f, 60.0f, 100.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    20,
                    0,
                    40.0f,
                    1.0f,
                    { 0.0f, 60.0f, -20.0f },
                    { 0.0f, 60.0f, 100.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4242,
                    20,
                    0,
                    60.0f,
                    1.0f,
                    { 20.0f, 60.0f, 20.0f },
                    { 40.0f, 60.0f, -80.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_16, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    90,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_17, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    -1,
                    -1.0f,
                    -1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_8012219C;
            csInfo->keyFrameCount = ARRAY_COUNT(D_8012219C);

            Player_SetCsAction(play, &player->actor, PLAYER_CSACTION_8);
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 3410: {
            static OnePointCsFull D_801222B4[5] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    20,
                    10,
                    45.0f,
                    1.0f,
                    { -1200.0f, 730.0f, -860.0f },
                    { -1100.0f, 500.0f, -1025.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_11, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    20,
                    10,
                    45.0f,
                    0.1f,
                    { -880.0f, 480.0f, -860.0f },
                    { -1100.0f, 500.0f, -1025.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_11, false, false),
                    ONEPOINT_CS_INIT_FIELD_ACTORCAT(ACTORCAT_BG),
                    0x0101,
                    20,
                    10,
                    45.0f,
                    0.1f,
                    { -880.0f, 500.0f, -860.0f },
                    { -1100.0f, 500.0f, -1025.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_11, false, false),
                    ONEPOINT_CS_INIT_FIELD_ACTORCAT(ACTORCAT_DOOR),
                    0x0101,
                    5,
                    10,
                    45.0f,
                    0.1f,
                    { -880.0f, 500.0f, -860.0f },
                    { -1100.0f, 500.0f, -1025.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_18, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    -1,
                    -1.0f,
                    -1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_801222B4;
            csInfo->keyFrameCount = ARRAY_COUNT(D_801222B4);

            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);

            i = Quake_Request(subCam, QUAKE_TYPE_1);
            Quake_SetSpeed(i, 32000);
            Quake_SetPerturbations(i, 4, 0, 0, 0);
            Quake_SetDuration(i, 20);
            break;
        }

        case 3450: {
            static OnePointCsFull D_8012237C[2] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    20,
                    -2,
                    65.0f,
                    1.0f,
                    { -625.0f, 185.0f, -685.0f },
                    { -692.0f, 226.0f, -515.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_17, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    -1,
                    -1.0f,
                    -1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_8012237C;
            csInfo->keyFrameCount = ARRAY_COUNT(D_8012237C);

            Player_SetCsAction(play, &player->actor, PLAYER_CSACTION_8);
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);

            i = Quake_Request(subCam, QUAKE_TYPE_1);
            Quake_SetSpeed(i, 32000);
            Quake_SetPerturbations(i, 2, 0, 0, 0);
            Quake_SetDuration(i, 10);
            break;
        }

        case 3440: {
            static OnePointCsFull D_801223CC[6] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    20,
                    0,
                    55.0f,
                    1.0f,
                    { 60.0f, 1130.0f, -1430.0f },
                    { 60.0f, 1130.0f, -1190.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    18,
                    -13,
                    68.0f,
                    1.0f,
                    { 60.0f, 1130.0f, -1445.0f },
                    { 180.0f, 1170.0f, -1240.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    16,
                    18,
                    75.0f,
                    1.0f,
                    { 42.0f, 1040.0f, -1400.0f },
                    { -20.0f, 940.0f, -1280.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    4,
                    0,
                    60.0f,
                    1.0f,
                    { 60.0f, 1100.0f, -1465.0f },
                    { 60.0f, 1100.0f, -1180.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_2, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    32,
                    0,
                    70.0f,
                    1.0f,
                    { 60.0f, 1100.0f, -1030.0f },
                    { 60.0f, 1150.0f, -740.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_18, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    -1,
                    -1.0f,
                    -1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_801223CC;
            csInfo->keyFrameCount = ARRAY_COUNT(D_801223CC);

            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            player->stateFlags1 |= PLAYER_STATE1_29;
            player->actor.freezeTimer = 90;

            i = Quake_Request(subCam, QUAKE_TYPE_1);
            Quake_SetSpeed(i, 32000);
            Quake_SetPerturbations(i, 2, 0, 0, 0);
            Quake_SetDuration(i, 10);
            break;
        }

        case 3430: {
            static OnePointCsFull D_801224BC[7] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    5,
                    0,
                    70.0f,
                    1.0f,
                    { 60.0f, 1800.0f, -920.0f },
                    { 60.0f, 1860.0f, -800.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_3, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    20,
                    0,
                    70.0f,
                    0.1f,
                    { 60.0f, 1720.0f, -920.0f },
                    { 60.0f, 1780.0f, -800.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_16, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0142,
                    1,
                    0,
                    75.0f,
                    1.0f,
                    { 0.0f, 70.0f, 0.0f },
                    { 60.0f, 990.0f, -690.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_3, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0142,
                    119,
                    0,
                    75.0f,
                    0.05f,
                    { 0.0f, 70.0f, 0.0f },
                    { 60.0f, 990.0f, -690.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_3, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4242,
                    20,
                    0,
                    60.0f,
                    0.1f,
                    { 0.0f, 70.0f, 0.0f },
                    { 0.0f, 100.0f, 200.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_18, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    -1,
                    -1.0f,
                    -1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_801224BC;
            csInfo->keyFrameCount = ARRAY_COUNT(D_801224BC);

            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);

            i = Quake_Request(subCam, QUAKE_TYPE_1);
            Quake_SetSpeed(i, 32000);
            Quake_SetPerturbations(i, 1, 0, 10, 0);
            Quake_SetDuration(i, 20);
            break;
        }

        case 4100: {
            static OnePointCsFull D_801225D4[5] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_8),
                    0x0101,
                    1,
                    0,
                    50.0f,
                    1.0f,
                    { 4100.0f, 1200.0f, -1400.0f },
                    { 3900.0f, 1100.0f, -1400.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_59),
                    0x0101,
                    60,
                    4,
                    50.0f,
                    0.94f,
                    { 4100.0f, 965.0f, -1385.0f },
                    { 3790.0f, 825.0f, -1325.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_3, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    90,
                    -5,
                    130.0f,
                    0.02f,
                    { 4100.0f, 975.0f, -1375.0f },
                    { 3735.0f, 715.0f, -1325.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_8),
                    0x2323,
                    2,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, 60.0f, 0.0f },
                    { -10.0f, 15.0f, -200.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_18, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_801225D4;
            csInfo->keyFrameCount = ARRAY_COUNT(D_801225D4);

            player->actor.shape.rot.y = player->actor.world.rot.y = player->yaw = 0x3FFC;
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            break;
        }

        case 4110: {
            static OnePointCsFull D_8012269C[3] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    20,
                    2,
                    45.0f,
                    1.0f,
                    { 975.0f, 225.0f, -1195.0f },
                    { 918.0f, 228.0f, -1228.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_16, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_17, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    -1,
                    -1.0f,
                    -1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_8012269C;
            csInfo->keyFrameCount = ARRAY_COUNT(D_8012269C);

            Player_SetCsAction(play, &player->actor, PLAYER_CSACTION_8);
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 4120: {
            static OnePointCsFull D_80122714[4] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    20,
                    0,
                    45.0f,
                    1.0f,
                    { -915.0f, -2185.0f, 6335.0f },
                    { -915.0f, -2290.0f, 6165.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_2, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    -1,
                    0,
                    80.0f,
                    0.8f,
                    { -920.0f, -2270.0f, 6140.0f },
                    { -920.0f, -2280.0f, 6070.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_2, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    20,
                    0,
                    80.0f,
                    0.9f,
                    { -920.0f, -2300.0f, 6140.0f },
                    { -920.0f, -2300.0f, 6070.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_17, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    -1,
                    -1.0f,
                    -1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            D_80122714[1].timerInit = 80;
            csInfo->keyFrames = D_80122714;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80122714);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 4140: {
            static OnePointCsFull D_801227B4[6] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    30,
                    0,
                    60.0f,
                    1.0f,
                    { 1400.0f, 100.0f, -170.0f },
                    { 1250.0f, 100.0f, -170.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_3, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4242,
                    130,
                    0,
                    60.0f,
                    0.2f,
                    { 0.0f, -5.0f, 0.0f },
                    { -150.0f, -5.0f, 0.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_16, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_2, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0303,
                    69,
                    0,
                    85.0f,
                    1.0f,
                    { -40.0f, 0.0f, 0.0f },
                    { -40.0f, 0.0f, 0.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_2, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0303,
                    20,
                    0,
                    60.0f,
                    1.0f,
                    { 10.0f, 0.0f, 0.0f },
                    { 10.0f, 0.0f, 0.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_17, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    -1,
                    -1.0f,
                    -1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_801227B4;
            csInfo->keyFrameCount = ARRAY_COUNT(D_801227B4);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            Camera_RequestMode(mainCam, CAM_MODE_NORMAL);
            break;
        }

        case 4150: {
            static OnePointCsFull D_801228A4[5] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0x0101,
                    20,
                    5,
                    30.0f,
                    1.0f,
                    { 800.0f, -40.0f, 2170.0f },
                    { 512.0f, 142.0f, 2020.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_2, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    20,
                    -2,
                    70.0f,
                    0.8f,
                    { 800.0f, -40.0f, 2170.0f },
                    { 512.0f, 142.0f, 2020.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_8),
                    0x0101,
                    90,
                    2,
                    62.0f,
                    1.0f,
                    { 1140.0f, 125.0f, 1920.0f },
                    { 1255.0f, 150.0f, 1785.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x2121,
                    10,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, 10.0f, 0.0f },
                    { 30.0f, 10.0f, -80.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_18, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_801228A4;
            csInfo->keyFrameCount = ARRAY_COUNT(D_801228A4);

            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            Camera_RequestMode(mainCam, CAM_MODE_NORMAL);
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 4160: {
            static OnePointCsFull D_8012296C[4] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    20,
                    -10,
                    70.0f,
                    1.0f,
                    { -930.0f, 765.0f, -3075.0f },
                    { -700.0f, 700.0f, -3075.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_3, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    80,
                    -10,
                    70.0f,
                    0.05f,
                    { -930.0f, 205.0f, -3075.0f },
                    { -700.0f, 140.0f, -3075.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    120,
                    0,
                    70.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_17, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_8012296C;
            csInfo->keyFrameCount = ARRAY_COUNT(D_8012296C);

            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            Camera_RequestMode(mainCam, CAM_MODE_NORMAL);
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 4170: {
            static OnePointCsFull D_80122A0C[2] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    60,
                    4,
                    50.0f,
                    1.0f,
                    { 0.0f, 400.0f, -1000.0f },
                    { -200.0f, 500.0f, -850.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_18, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    50.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_80122A0C;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80122A0C);

            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            Camera_RequestMode(mainCam, CAM_MODE_NORMAL);
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 4190: {
            static OnePointCsFull D_80122A5C[8] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    1,
                    -15,
                    70.0f,
                    1.0f,
                    { 230.0f, 3675.0f, -4230.0f },
                    { -45.0f, 3650.0f, -4415.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_21, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -120.0f, 2187.0f, -3286.0f },
                    { -110.0f, 2162.0f, -3262.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_21, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    55,
                    0,
                    60.0f,
                    1.0f,
                    { -38.0f, 1467.0f, -1102.0f },
                    { 64.0f, 1423.0f, -1188.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    1,
                    -15,
                    70.0f,
                    1.0f,
                    { 230.0f, 3675.0f, -4230.0f },
                    { -20.0f, 3650.0f, -4400.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_16, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_17, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_80122A5C;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80122A5C);

            Player_SetCsAction(play, &player->actor, PLAYER_CSACTION_8);
            Camera_RequestMode(mainCam, CAM_MODE_NORMAL);
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 4200: {
            static OnePointCsFull D_80122B9C[3] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    60,
                    0,
                    65.0f,
                    1.0f,
                    { 1095.0f, 2890.0f, -2980.0f },
                    { 1166.0f, 2695.0f, -2710.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    60,
                    15,
                    65.0f,
                    1.0f,
                    { 566.0f, 4654.0f, -4550.0f },
                    { 606.0f, 5160.0f, -4740.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_17, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_80122B9C;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80122B9C);

            Player_SetCsAction(play, &player->actor, PLAYER_CSACTION_8);
            Camera_RequestMode(mainCam, CAM_MODE_NORMAL);
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 4210: {
            static OnePointCsFull D_80122C14[1] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    999,
                    0,
                    85.0f,
                    1.0f,
                    { -15.0f, 185.0f, 160.0f },
                    { -15.0f, 210.0f, 250.0f },
                },
            };

            player->actor.freezeTimer = timer;

            csInfo->keyFrames = D_80122C14;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80122C14);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);

            i = Quake_Request(subCam, QUAKE_TYPE_3);
            Quake_SetSpeed(i, 12000);
            Quake_SetPerturbations(i, 0, 1, 100, 0);
            Quake_SetDuration(i, timer - 80);
            break;
        }

        case 4220: {
            static OnePointCsFull D_80122C3C[1] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    999,
                    -2,
                    70.0f,
                    1.0f,
                    { -62.0f, 60.0f, -315.0f },
                    { -115.0f, 30.0f, -445.0f },
                },
            };
            static OnePointCsFull D_80122C64[1] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    999,
                    3,
                    70.0f,
                    1.0f,
                    { -40.0f, 80.0f, 375.0f },
                    { -85.0f, 45.0f, 485.0f },
                },
            };

            csInfo->keyFrames = (player->actor.world.pos.z < -15.0f) ? D_80122C3C : D_80122C64;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80122C3C);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            Player_SetCsAction(play, &player->actor, PLAYER_CSACTION_1);

            i = Quake_Request(subCam, QUAKE_TYPE_3);
            Quake_SetSpeed(i, 12000);
            Quake_SetPerturbations(i, 0, 1, 10, 0);
            Quake_SetDuration(i, timer - 10);
            break;
        }

        case 4221: {
            static OnePointCsFull D_80122C8C[1] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    999,
                    5,
                    60.0f,
                    1.0f,
                    { -70.0f, 140.0f, 25.0f },
                    { 10.0f, 180.0f, 195.0f },
                },
            };

            csInfo->keyFrames = D_80122C8C;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80122C8C);

            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 3260: {
            static OnePointCsFull D_80122CB4[2] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4242,
                    5,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, 0.0f, 1000.0f },
                    { 0.0f, 0.0f, 1100.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_2, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4242,
                    -1,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, 0.0f, -100.0f },
                    { 0.0f, 0.0f, 0.0f },
                },
            };

            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            D_80122CB4[1].timerInit = timer - 5;

            csInfo->keyFrames = D_80122CB4;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80122CB4);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 3261: {
            static OnePointCsFull D_80122D04[2] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4242,
                    10,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, 0.0f, -100.0f },
                    { 0.0f, 0.0f, 0.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_2, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4242,
                    -1,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, 0.0f, 1000.0f },
                    { 0.0f, 0.0f, 1100.0f },
                },
            };

            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            D_80122D04[1].timerInit = timer - 10;

            csInfo->keyFrames = D_80122D04;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80122D04);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 8010: {
            static OnePointCsFull D_80122D54[3] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    1,
                    -4,
                    50.0f,
                    1.0f,
                    { 230.0f, 65.0f, 300.0f },
                    { 50.0f, 50.0f, 225.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_16, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_17, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    -1,
                    -1.0f,
                    -1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_80122D54;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80122D54);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 8002: {
            static OnePointCsFull D_80122DCC[3] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    1,
                    0,
                    50.0f,
                    1.0f,
                    { 0.0f, 5.0f, -145.0f },
                    { 0.0f, 55.0f, 55.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_16, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_17, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    -1,
                    -1.0f,
                    -1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_80122DCC;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80122DCC);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 8700: {
            static OnePointCsFull D_80122E44[2][7] = {
                {
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_3, false, true),
                        ONEPOINT_CS_INIT_FIELD_NONE,
                        0x2222,
                        10,
                        5,
                        90.0f,
                        0.2f,
                        { 50.0f, 100.0f, 140.0f },
                        { -30.0f, 10.0f, -20.0f },
                    },
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                        ONEPOINT_CS_INIT_FIELD_NONE,
                        0x0000,
                        20,
                        0,
                        90.0f,
                        1.0f,
                        { -1.0f, -1.0f, -1.0f },
                        { -1.0f, -1.0f, -1.0f },
                    },
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_3, false, false),
                        ONEPOINT_CS_INIT_FIELD_NONE,
                        0x4343,
                        30,
                        -5,
                        50.0f,
                        0.2f,
                        { -10.0f, 80.0f, 10.0f },
                        { 20.0f, 20.0f, 120.0f },
                    },
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_16, false, false),
                        ONEPOINT_CS_INIT_FIELD_NONE,
                        0x0000,
                        1,
                        -5,
                        60.0f,
                        1.0f,
                        { -1.0f, -1.0f, -1.0f },
                        { -1.0f, -1.0f, -1.0f },
                    },
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_11, false, false),
                        ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                        0x4343,
                        160,
                        10,
                        80.0f,
                        0.005f,
                        { -50.0f, 60.0f, 0.0f },
                        { -100.0f, 20.0f, 50.0f },
                    },
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_2, false, false),
                        ONEPOINT_CS_INIT_FIELD_NONE,
                        0x0501,
                        50,
                        0,
                        60.0f,
                        1.0f,
                        { 0.0f, -10.0f, 0.0f },
                        { 0.0f, 10.0f, 80.0f },
                    },
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_19, false, false),
                        ONEPOINT_CS_INIT_FIELD_NONE,
                        0x0000,
                        1,
                        -1,
                        -1.0f,
                        -1.0f,
                        { -1.0f, -1.0f, -1.0f },
                        { -1.0f, -1.0f, -1.0f },
                    },
                },
                {
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_3, false, true),
                        ONEPOINT_CS_INIT_FIELD_NONE,
                        0x2222,
                        10,
                        -5,
                        90.0f,
                        0.2f,
                        { -50.0f, 100.0f, 140.0f },
                        { 30.0f, 10.0f, -20.0f },
                    },
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                        ONEPOINT_CS_INIT_FIELD_NONE,
                        0x0000,
                        20,
                        0,
                        90.0f,
                        1.0f,
                        { -1.0f, -1.0f, -1.0f },
                        { -1.0f, -1.0f, -1.0f },
                    },
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_3, false, false),
                        ONEPOINT_CS_INIT_FIELD_NONE,
                        0x4343,
                        30,
                        5,
                        50.0f,
                        0.2f,
                        { 10.0f, 80.0f, 10.0f },
                        { -20.0f, 20.0f, 120.0f },
                    },
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_16, false, false),
                        ONEPOINT_CS_INIT_FIELD_NONE,
                        0x0000,
                        1,
                        5,
                        60.0f,
                        1.0f,
                        { -1.0f, -1.0f, -1.0f },
                        { -1.0f, -1.0f, -1.0f },
                    },
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_11, false, false),
                        ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                        0x4343,
                        160,
                        -10,
                        80.0f,
                        0.005f,
                        { 50.0f, 60.0f, 0.0f },
                        { 100.0f, 20.0f, 50.0f },
                    },
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_2, false, false),
                        ONEPOINT_CS_INIT_FIELD_NONE,
                        0x0501,
                        50,
                        0,
                        60.0f,
                        1.0f,
                        { 0.0f, -10.0f, 0.0f },
                        { 0.0f, 10.0f, 80.0f },
                    },
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_19, false, false),
                        ONEPOINT_CS_INIT_FIELD_NONE,
                        0x0000,
                        1,
                        -1,
                        -1.0f,
                        -1.0f,
                        { -1.0f, -1.0f, -1.0f },
                        { -1.0f, -1.0f, -1.0f },
                    },
                },
            };

            spA0 = Actor_GetFocus(actor);
            sp8C = Actor_GetFocus(&player->actor);
            D_80122E44[timer & 1][0].atTargetInit.y = ((spA0.pos.y - sp8C.pos.y) / 10.0f) + 90.0f;
            D_80122E44[timer & 1][5].atTargetInit = mainCam->at;

            csInfo->keyFrames = D_80122E44[timer & 1];
            csInfo->keyFrameCount = ARRAY_COUNT(D_80122E44[0]);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 1100: {
            s32 tempDiff = play->state.frames - sPrevFrameCs1100;

            if ((tempDiff > 3600) || (tempDiff < -3600)) {
                static OnePointCsFull D_80123074[5] = {
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                        ONEPOINT_CS_INIT_FIELD_NONE,
                        0xA2A2,
                        2,
                        8,
                        70.0f,
                        1.0f,
                        { -27.0f, -96.0f, 25.0f },
                        { 37.0f, -5.0f, 100.0f },
                    },
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, true),
                        ONEPOINT_CS_INIT_FIELD_NONE,
                        0xA2A2,
                        38,
                        4,
                        60.0f,
                        1.0f,
                        { 64.0f, -109.0f, 55.0f },
                        { 37.0f, 150.0f, 155.0f },
                    },
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                        ONEPOINT_CS_INIT_FIELD_NONE,
                        0xA2A2,
                        2,
                        8,
                        70.0f,
                        1.0f,
                        { 45.0f, 123.0f, 45.0f },
                        { 70.0f, 5.0f, 125.0f },
                    },
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, true),
                        ONEPOINT_CS_INIT_FIELD_NONE,
                        0xA2A2,
                        58,
                        4,
                        60.0f,
                        0.9f,
                        { 82.0f, 95.0f, 55.0f },
                        { 25.0f, -175.0f, 180.0f },
                    },
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_18, false, true),
                        ONEPOINT_CS_INIT_FIELD_NONE,
                        0x0000,
                        1,
                        0,
                        60.0f,
                        1.0f,
                        { -1.0f, -1.0f, -1.0f },
                        { -1.0f, -1.0f, -1.0f },
                    },
                };

                csInfo->keyFrames = D_80123074;
                csInfo->keyFrameCount = ARRAY_COUNT(D_80123074);
            } else {
                static OnePointCsFull D_8012313C[3] = {
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                        ONEPOINT_CS_INIT_FIELD_NONE,
                        0xA2A2,
                        20,
                        8,
                        70.0f,
                        1.0f,
                        { 65.0f, -150.0f, 50.0f },
                        { 30.0f, 10.0f, 90.0f },
                    },
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, true),
                        ONEPOINT_CS_INIT_FIELD_NONE,
                        0xA2A2,
                        100,
                        0,
                        60.0f,
                        1.0f,
                        { 70.0f, -160.0f, 50.0f },
                        { 25.0f, 180.0f, 180.0f },
                    },
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_18, false, true),
                        ONEPOINT_CS_INIT_FIELD_NONE,
                        0x0000,
                        1,
                        0,
                        60.0f,
                        1.0f,
                        { -1.0f, -1.0f, -1.0f },
                        { -1.0f, -1.0f, -1.0f },
                    },
                };

                if (play->state.frames & 1) {
                    D_8012313C[0].rollTargetInit = -D_8012313C[0].rollTargetInit;
                    D_8012313C[0].atTargetInit.y = -D_8012313C[0].atTargetInit.y;
                    D_8012313C[0].eyeTargetInit.y = -D_8012313C[0].eyeTargetInit.y;
                    D_8012313C[1].atTargetInit.y = -D_8012313C[1].atTargetInit.y;
                }
                csInfo->keyFrames = D_8012313C;
                csInfo->keyFrameCount = ARRAY_COUNT(D_8012313C);
            }
            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            sPrevFrameCs1100 = play->state.frames;

            break;
        }

        case 9806:
            subCam->timer = -99;
            if (Play_CamIsNotFixed(play)) {
                Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_TURN_AROUND);
                subCam->data2 = 0xC;
            } else {
                Play_CopyCamera(play, subCamId, CAM_ID_MAIN);
                Play_RequestCameraSetting(play, subCamId, CAM_SET_FREE2);
            }
            break;

        case 9908:
            if (Play_CamIsNotFixed(play)) {
                static OnePointCsFull D_801231B4[4] = {
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                        ONEPOINT_CS_INIT_FIELD_HUD_VISIBILITY(HUD_VISIBILITY_A_HEARTS_MAGIC_FORCE),
                        0x4343,
                        1,
                        0,
                        50.0f,
                        1.0f,
                        { 0.0f, 20.0f, 0.0f },
                        { 0.0f, 5.0f, -1.0f },
                    },
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, true),
                        ONEPOINT_CS_INIT_FIELD_HUD_VISIBILITY(HUD_VISIBILITY_A_HEARTS_MAGIC_FORCE),
                        0x4343,
                        48,
                        0,
                        50.0f,
                        0.75f,
                        { 0.0f, 80.0f, 0.0f },
                        { 0.0f, 15.0f, -1.0f },
                    },
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                        ONEPOINT_CS_INIT_FIELD_HUD_VISIBILITY(HUD_VISIBILITY_A_HEARTS_MAGIC_FORCE),
                        0x4343,
                        1,
                        5,
                        45.0f,
                        1.0f,
                        { 0.0f, 0.0f, 30.0f },
                        { 30.0f, 120.0f, 60.0f },
                    },
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, true),
                        ONEPOINT_CS_INIT_FIELD_HUD_VISIBILITY(HUD_VISIBILITY_A_HEARTS_MAGIC_FORCE),
                        0x4343,
                        -1,
                        0,
                        -1.0f,
                        1.0f,
                        { -1.0f, -1.0f, -1.0f },
                        { -1.0f, -1.0f, -1.0f },
                    },
                };

                D_801231B4[0].eyeTargetInit.z = D_801231B4[1].eyeTargetInit.z = !LINK_IS_ADULT ? 100.0f : 120.0f;

                if (player->stateFlags1 & PLAYER_STATE1_27) {
                    D_801231B4[2].atTargetInit.z = 0.0f;
                }
                spA0 = Actor_GetWorldPosShapeRot(&player->actor);
                spD0 = OLib_Vec3fDiffToVecGeo(&spA0.pos, &mainCam->at);
                spD0.yaw -= spA0.rot.y;
                D_801231B4[3].atTargetInit = OLib_VecGeoToVec3f(&spD0);
                spD0 = OLib_Vec3fDiffToVecGeo(&spA0.pos, &mainCam->eye);
                spD0.yaw -= spA0.rot.y;
                D_801231B4[3].eyeTargetInit = OLib_VecGeoToVec3f(&spD0);
                D_801231B4[3].fovTargetInit = mainCam->fov;
                D_801231B4[3].timerInit = timer - 50;

                csInfo->keyFrames = D_801231B4;
                csInfo->keyFrameCount = ARRAY_COUNT(D_801231B4);

                Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            } else {
                static OnePointCsFull D_80123254[2] = {
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                        ONEPOINT_CS_INIT_FIELD_NONE,
                        0x0101,
                        1,
                        0,
                        60.0f,
                        1.0f,
                        { 0.0f, 0.0f, 0.0f },
                        { 0.0f, 0.0f, 0.0f },
                    },
                    {
                        ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_3, false, false),
                        ONEPOINT_CS_INIT_FIELD_HUD_VISIBILITY(HUD_VISIBILITY_A_HEARTS_MAGIC_FORCE),
                        0x0101,
                        49,
                        0,
                        50.0f,
                        0.05f,
                        { 0.0f, 0.0f, 0.0f },
                        { 0.0f, 0.0f, 0.0f },
                    },
                };

                D_80123254[1].timerInit = timer - 1;
                D_80123254[0].fovTargetInit = mainCam->fov;
                D_80123254[0].atTargetInit = D_80123254[1].atTargetInit = mainCam->at;
                D_80123254[0].eyeTargetInit = D_80123254[1].eyeTargetInit = mainCam->eye;

                csInfo->keyFrames = D_80123254;
                csInfo->keyFrameCount = ARRAY_COUNT(D_80123254);

                Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            }
            break;

        case 1000: {
            static OnePointCsFull D_801232A4[1] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_69),
                    0x0101,
                    9999,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, 0.0f, 0.0f },
                    { 0.0f, 0.0f, 0.0f },
                },
            };

            D_801232A4[0].atTargetInit = play->view.at;
            D_801232A4[0].eyeTargetInit = play->view.eye;
            D_801232A4[0].fovTargetInit = play->view.fovy;

            csInfo->keyFrames = D_801232A4;
            csInfo->keyFrameCount = ARRAY_COUNT(D_801232A4);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 8603: {
            static OnePointCsFull D_801232CC[5] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    45,
                    -3,
                    65.0f,
                    1.0f,
                    { -52.0f, 84.0f, -846.0f },
                    { -159.0f, 33.0f, -729.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_16, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    10,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x2121,
                    15,
                    0,
                    60.0f,
                    1.0f,
                    { 10.0f, -5.0f, 0.0f },
                    { 0.0f, 0.0f, -150.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_18, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_801232CC;
            csInfo->keyFrameCount = ARRAY_COUNT(D_801232CC);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 8604: {
            static OnePointCsFull D_80123394[5] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    45,
                    3,
                    65.0f,
                    1.0f,
                    { -16.0f, 87.0f, -829.0f },
                    { 98.0f, 24.0f, -714.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_16, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    10,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x2121,
                    15,
                    0,
                    60.0f,
                    1.0f,
                    { 10.0f, -5.0f, 0.0f },
                    { 0.0f, 0.0f, -150.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_18, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_80123394;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80123394);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 4000: {
            static OnePointCsFull D_8012345C[4] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0x4242,
                    40,
                    0,
                    40.0f,
                    1.0f,
                    { 0.0f, 50.0f, -40.0f },
                    { 0.0f, 60.0f, -160.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_4, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_77),
                    0x4242,
                    40,
                    0,
                    60.0f,
                    0.3f,
                    { 0.0f, 90.0f, -40.0f },
                    { 0.0f, 60.0f, -160.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_4, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0x2121,
                    10,
                    0,
                    60.0f,
                    0.2f,
                    { 0.0f, -10.0f, 10.0f },
                    { 0.0f, 10.0f, -80.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_18, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_8012345C;
            csInfo->keyFrameCount = ARRAY_COUNT(D_8012345C);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 4010: {
            static OnePointCsFull D_801234FC[5] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_1, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_5),
                    0x0441,
                    10,
                    0,
                    70.0f,
                    1.0f,
                    { 0.0f, -10.0f, 20.0f },
                    { 0.0f, 0.0f, 120.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_3, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4141,
                    30,
                    0,
                    50.0f,
                    0.1f,
                    { 0.0f, -10.0f, 20.0f },
                    { 0.0f, 10.0f, 80.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_16, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_2, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x2121,
                    10,
                    0,
                    60.0f,
                    0.9f,
                    { 0.0f, -10.0f, 0.0f },
                    { 0.0f, 10.0f, -80.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_18, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_801234FC;
            csInfo->keyFrameCount = ARRAY_COUNT(D_801234FC);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 4011: {
            static OnePointCsFull D_801235C4[5] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_PLAYER_CS(PLAYER_CSACTION_1),
                    0x4141,
                    1,
                    0,
                    50.0f,
                    1.0f,
                    { 0.0f, -10.0f, 20.0f },
                    { 0.0f, 10.0f, 60.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_3, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0441,
                    39,
                    0,
                    70.0f,
                    0.1f,
                    { 0.0f, -10.0f, 20.0f },
                    { 0.0f, 0.0f, 100.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_16, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_2, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x2121,
                    15,
                    0,
                    60.0f,
                    0.9f,
                    { 0.0f, -10.0f, 0.0f },
                    { 0.0f, 10.0f, -80.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_18, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            csInfo->keyFrames = D_801235C4;
            csInfo->keyFrameCount = ARRAY_COUNT(D_801235C4);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 4020: {
            static OnePointCsFull D_8012368C[4] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    10,
                    0,
                    60.0f,
                    1.0f,
                    { -1110.0f, -180.0f, -840.0f },
                    { -985.0f, -220.0f, -840.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_2, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    70,
                    -45,
                    75.0f,
                    1.0f,
                    { -1060.0f, -160.0f, -840.0f },
                    { -1005.0f, -230.0f, -840.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    10,
                    -45,
                    75.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    180,
                    9,
                    80.0f,
                    1.0f,
                    { -1205.0f, -175.0f, -840.0f },
                    { -1305.0f, -230.0f, -828.0f },
                },
            };

            csInfo->keyFrames = D_8012368C;
            csInfo->keyFrameCount = ARRAY_COUNT(D_8012368C);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 4021: {
            static OnePointCsFull D_8012372C[4] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0142,
                    10,
                    0,
                    70.0f,
                    1.0f,
                    { 0.0f, 80.0f, 0.0f },
                    { -1650.0f, 200.0f, -2920.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_2, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0142,
                    110,
                    -2,
                    50.0f,
                    0.5f,
                    { 0.0f, 150.0f, 0.0f },
                    { -1320.0f, 170.0f, -2900.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_11, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4242,
                    100,
                    2,
                    70.0f,
                    0.1f,
                    { 0.0f, 150.0f, 50.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_3, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4242,
                    60,
                    2,
                    45.0f,
                    0.01f,
                    { 0.0f, 150.0f, 50.0f },
                    { 0.0f, 200.0f, -80.0f },
                },
            };

            csInfo->keyFrames = D_8012372C;
            csInfo->keyFrameCount = ARRAY_COUNT(D_8012372C);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 4022: {
            static OnePointCsFull D_801237CC[5] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, true),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4242,
                    20,
                    0,
                    50.0f,
                    1.0f,
                    { 0.0f, 50.0f, -10.0f },
                    { 0.0f, 0.0f, 100.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_10, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    80,
                    0,
                    75.0f,
                    1.0f,
                    { 2900.0f, 1300.0f, 530.0f },
                    { 2800.0f, 1190.0f, 540.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    10,
                    0,
                    75.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_2, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    55,
                    0,
                    75.0f,
                    1.0f,
                    { 2900.0f, 1300.0f, 530.0f },
                    { 1500.0f, 1415.0f, 650.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    100,
                    -45,
                    75.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            subCam->timer = D_801237CC[0].timerInit + D_801237CC[3].timerInit + D_801237CC[1].timerInit +
                            D_801237CC[2].timerInit + D_801237CC[4].timerInit;

            csInfo->keyFrames = D_801237CC;
            csInfo->keyFrameCount = ARRAY_COUNT(D_801237CC);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 9703: {
            static OnePointCsFull D_80123894[3] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    60,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, 0.0f, 0.0f },
                    { 0.0f, 0.0f, 0.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4242,
                    30,
                    0,
                    50.0f,
                    1.0f,
                    { 0.0f, 28.0f, 0.0f },
                    { 0.0f, 20.0f, 40.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_13, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    120,
                    0,
                    180.0f,
                    0.4f,
                    { 0.0f, -5.0f, 0.0f },
                    { 0.0f, 2.0f, 40.0f },
                },
            };

            D_80123894[0].atTargetInit = play->view.at;
            D_80123894[0].eyeTargetInit = play->view.eye;
            D_80123894[0].fovTargetInit = play->view.fovy;
            if (LINK_IS_ADULT) {
                D_80123894[1].atTargetInit.y = 60.0f;
                D_80123894[1].eyeTargetInit.y = 52.0f;
            }

            csInfo->keyFrames = D_80123894;
            csInfo->keyFrameCount = ARRAY_COUNT(D_80123894);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 9704: {
            static OnePointCsFull D_8012390C[2] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    30,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, 0.0f, 0.0f },
                    { 0.0f, 0.0f, 0.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4242,
                    180,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, 78.0f, 0.0f },
                    { 0.0f, 78.0f, 200.0f },
                },
            };

            D_8012390C[0].atTargetInit = play->view.at;
            D_8012390C[0].eyeTargetInit = play->view.eye;
            D_8012390C[0].fovTargetInit = play->view.fovy;

            csInfo->keyFrames = D_8012390C;
            csInfo->keyFrameCount = ARRAY_COUNT(D_8012390C);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 9705: {
            static OnePointCsFull D_8012395C[3] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0101,
                    60,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, 0.0f, 0.0f },
                    { 0.0f, 0.0f, 0.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4242,
                    30,
                    0,
                    50.0f,
                    1.0f,
                    { 0.0f, 28.0f, 0.0f },
                    { 0.0f, 20.0f, -45.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_13, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    120,
                    0,
                    180.0f,
                    0.4f,
                    { 0.0f, -5.0f, 0.0f },
                    { 0.0f, 2.0f, 45.0f },
                },
            };

            D_8012395C[0].atTargetInit = play->view.at;
            D_8012395C[0].eyeTargetInit = play->view.eye;
            D_8012395C[0].fovTargetInit = play->view.fovy;

            csInfo->keyFrames = D_8012395C;
            csInfo->keyFrameCount = ARRAY_COUNT(D_8012395C);

            Play_InitCameraDataUsingPlayer(play, subCamId, player, CAM_SET_CS_C);
            break;
        }

        case 5110: {
            static OnePointCsFull D_801239D4[3] = {
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_15, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4242,
                    5,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, 20.0f, 0.0f },
                    { 0.0f, 40.0f, -120.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_9, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x4242,
                    0,
                    0,
                    60.0f,
                    1.0f,
                    { 0.0f, 20.0f, 0.0f },
                    { 0.0f, 0.0f, 0.0f },
                },
                {
                    ONEPOINT_CS_ACTION(ONEPOINT_CS_ACTION_ID_18, false, false),
                    ONEPOINT_CS_INIT_FIELD_NONE,
                    0x0000,
                    1,
                    0,
                    60.0f,
                    1.0f,
                    { -1.0f, -1.0f, -1.0f },
                    { -1.0f, -1.0f, -1.0f },
                },
            };

            D_801239D4[1].timerInit = 10;

            csInfo->keyFrames = D_801239D4;
            csInfo->keyFrameCount = ARRAY_COUNT(D_801239D4);

            Play_InitCameraDataUsingPlayer(play, subCamId, (Player*)actor, CAM_SET_CS_C);
            break;
        }

        default:
            PRINTF(VT_COL(RED, WHITE) "onepointdemo camera: demo number not found !! (%d)\n" VT_RST, csId);
            break;
    }
    return 0;
}

s16 OnePointCutscene_SetAsChild(PlayState* play, s16 newCamId, s16 parentCamId) {
    s16 prevCamId = play->cameraPtrs[parentCamId]->childCamId;

    play->cameraPtrs[newCamId]->parentCamId = parentCamId;
    play->cameraPtrs[parentCamId]->childCamId = newCamId;

    return prevCamId;
}

/**
 * Removes a cutscene camera from the list. Returns the parent cam if the removed camera is active, otherwise returns
 * CAM_ID_NONE
 */
s32 OnePointCutscene_RemoveCamera(PlayState* play, s16 subCamId) {
    Camera* subCam = play->cameraPtrs[subCamId];
    s32 nextCamId;

    if (subCam->camId == CHILD_CAM(subCam)->parentCamId) {
        CHILD_CAM(subCam)->parentCamId = subCam->parentCamId;
    }
    if (subCam->camId == PARENT_CAM(subCam)->childCamId) {
        PARENT_CAM(subCam)->childCamId = subCam->childCamId;
    }
    nextCamId = (play->activeCamId == subCamId) ? subCam->parentCamId : CAM_ID_NONE;
    subCam->parentCamId = CAM_ID_MAIN;
    subCam->childCamId = subCam->parentCamId;
    subCam->timer = -1;
    Play_ClearCamera(subCam->play, subCam->camId);
    return nextCamId;
}

#define vChildCamId temp2
#define vSubCamStatus temp1
#define vCurCamId temp2
#define vNextCamId temp3
#define vParentCamId temp1

/**
 * Creates a cutscene subcamera with the specified ID, duration, and targeted actor. The camera is placed into the
 * cutscene queue in front of the specified camera, then all lower priority demos in front of it are removed from the
 * queue.
 */
s16 OnePointCutscene_Init(PlayState* play, s16 csId, s16 timer, Actor* actor, s16 parentCamId) {
    Camera* subCam;
    s16 subCamId;
    s16 temp1;
    s16 temp2;
    s16 temp3;

    if (parentCamId == CAM_ID_NONE) {
        parentCamId = play->activeCamId;
    }
    subCamId = Play_CreateSubCamera(play);
    if (subCamId == CAM_ID_NONE) {
        PRINTF(VT_COL(RED, WHITE) "onepoint demo: error: too many cameras ... give up! type=%d\n" VT_RST, csId);
        return CAM_ID_NONE;
    }

    // Inserts the cutscene camera into the cutscene queue in front of parentCam

    vChildCamId = play->cameraPtrs[parentCamId]->childCamId;
    vSubCamStatus = CAM_STAT_ACTIVE;
    if (vChildCamId >= CAM_ID_SUB_FIRST) {
        OnePointCutscene_SetAsChild(play, vChildCamId, subCamId);
        vSubCamStatus = CAM_STAT_WAIT;
    } else {
        Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_NOTHING_ALT);
    }
    OnePointCutscene_SetAsChild(play, subCamId, parentCamId);

    subCam = play->cameraPtrs[subCamId];

    subCam->timer = timer;
    subCam->target = actor;

    subCam->at = play->view.at;
    subCam->eye = play->view.eye;
    subCam->fov = play->view.fovy;

    subCam->csId = csId;

    if (parentCamId == CAM_ID_MAIN) {
        Play_ChangeCameraStatus(play, parentCamId, CAM_STAT_UNK3);
    } else {
        Play_ChangeCameraStatus(play, parentCamId, CAM_STAT_WAIT);
    }
    OnePointCutscene_SetInfo(play, subCamId, csId, actor, timer);
    Play_ChangeCameraStatus(play, subCamId, vSubCamStatus);

    // Removes all lower priority cutscenes in front of this cutscene from the queue.
    vCurCamId = subCamId;
    vNextCamId = play->cameraPtrs[subCamId]->childCamId;

    while (vNextCamId >= CAM_ID_SUB_FIRST) {
        if ((play->cameraPtrs[vNextCamId]->csId / 100) < (play->cameraPtrs[subCamId]->csId / 100)) {
            PRINTF(VT_COL(YELLOW, BLACK) "onepointdemo camera[%d]: killed 'coz low priority (%d < %d)\n" VT_RST,
                   vNextCamId, play->cameraPtrs[vNextCamId]->csId, play->cameraPtrs[subCamId]->csId);
            if (play->cameraPtrs[vNextCamId]->csId != 5010) {
                if ((vParentCamId = OnePointCutscene_RemoveCamera(play, vNextCamId)) != CAM_ID_NONE) {
                    Play_ChangeCameraStatus(play, vParentCamId, CAM_STAT_ACTIVE);
                }
            } else {
                vCurCamId = vNextCamId;
                OnePointCutscene_EndCutscene(play, vNextCamId);
            }
        } else {
            vCurCamId = vNextCamId;
        }
        vNextCamId = play->cameraPtrs[vCurCamId]->childCamId;
    }
    return subCamId;
}

/**
 *  Ends the cutscene in subCamId by setting its timer to 0. For attention cutscenes, it is set to 5 instead.
 */
s16 OnePointCutscene_EndCutscene(PlayState* play, s16 subCamId) {
    if (subCamId == CAM_ID_NONE) {
        subCamId = play->activeCamId;
    }
    if (play->cameraPtrs[subCamId] != NULL) {
        PRINTF("onepointdemo camera[%d]: delete timer=%d next=%d\n", subCamId, play->cameraPtrs[subCamId]->timer,
               play->cameraPtrs[subCamId]->parentCamId);
        if (play->cameraPtrs[subCamId]->csId == 5010) {
            play->cameraPtrs[subCamId]->timer = 5;
        } else {
            play->cameraPtrs[subCamId]->timer = 0;
        }
    }
    return subCamId;
}

#define vTargetCat temp1
#define vParentCamId temp1
#define vLastHigherCat temp2
#define vSubCamId temp2

/**
 *  Adds an attention cutscene to the cutscene queue.
 */
s32 OnePointCutscene_Attention(PlayState* play, Actor* actor) {
    Camera* parentCam;
    s32 temp1;
    s32 temp2;
    s32 timer;

#if OOT_DEBUG
    if (sDisableAttention) {
        PRINTF(VT_COL(YELLOW, BLACK) "actor attention demo camera: canceled by other camera\n" VT_RST);
        return CAM_ID_NONE;
    }
#endif

    sUnused = -1;

    parentCam = play->cameraPtrs[CAM_ID_MAIN];
    if (parentCam->mode == CAM_MODE_FOLLOW_BOOMERANG) {
        PRINTF(VT_COL(YELLOW, BLACK) "actor attention demo camera: change mode BOOKEEPON -> NORMAL\n" VT_RST);
        Camera_RequestMode(parentCam, CAM_MODE_NORMAL);
    }

    // Finds the camera of the first actor attention demo with a lower category actor, or the first non-attention demo
    // after at least one attention demo.

    vLastHigherCat = -1;
    while (parentCam->childCamId != CAM_ID_MAIN) {
        parentCam = play->cameraPtrs[parentCam->childCamId];
        if (parentCam == NULL) {
            break;
        } else if (parentCam->setting != CAM_SET_CS_ATTENTION) {
            if (vLastHigherCat == -1) {
                continue;
            } else {
                break;
            }
        } else {
            vTargetCat = parentCam->target->category;
            if (actor->category > vTargetCat) {
                break;
            }
            vLastHigherCat = vTargetCat;
        }
    }
    // Actorcat is only undefined if the actor is in a higher category than all other attention cutscenes. In this case,
    // it goes in the first position of the list. Otherwise, it goes in the index found in the loop.
    vParentCamId = (vLastHigherCat == -1) ? CAM_ID_MAIN : parentCam->camId;

    switch (actor->category) {
        case ACTORCAT_SWITCH:
        case ACTORCAT_BG:
        case ACTORCAT_PLAYER:
        case ACTORCAT_PROP:
        case ACTORCAT_DOOR:
            timer = 30;
            break;
        case ACTORCAT_NPC:
        case ACTORCAT_ITEMACTION:
        case ACTORCAT_CHEST:
            timer = 100;
            break;
        case ACTORCAT_EXPLOSIVE:
        case ACTORCAT_ENEMY:
        case ACTORCAT_MISC:
        case ACTORCAT_BOSS:
        default:
            PRINTF(VT_COL(YELLOW, BLACK) "actor attention demo camera: %d: unkown part of actor %d\n" VT_RST,
                   play->state.frames, actor->category);
            timer = 30;
            break;
    }
    PRINTF(VT_FGCOL(CYAN) "%06u:" VT_RST " actor attention demo camera: request %d ", play->state.frames,
           actor->category);

    // If the previous attention cutscene has an actor in the same category, skip this actor.
    if (actor->category == vLastHigherCat) {
        PRINTF("→ " VT_FGCOL(MAGENTA) "×" VT_RST " (%d)\n", actor->id);
        return CAM_ID_NONE;
    }
    PRINTF("→ " VT_FGCOL(BLUE) "○" VT_RST " (%d)\n", actor->id);
    vSubCamId = OnePointCutscene_Init(play, 5010, timer, actor, vParentCamId);
    if (vSubCamId == CAM_ID_NONE) {
        PRINTF(VT_COL(RED, WHITE) "actor attention demo: give up! \n" VT_RST, actor->id);
        return CAM_ID_NONE;
    } else {
        s32* data = (s32*)&play->cameraPtrs[vSubCamId]->data1;

        *data = NA_SE_SY_CORRECT_CHIME;
        return vSubCamId;
    }
}

/**
 *  Adds an attention cutscene to the cutscene queue with the specified sound effect
 */
s32 OnePointCutscene_AttentionSetSfx(PlayState* play, Actor* actor, s32 sfxId) {
    s32 subCamId = OnePointCutscene_Attention(play, actor);

    if (subCamId != CAM_ID_NONE) {
        s32* data = (s32*)&play->cameraPtrs[subCamId]->data1;

        *data = sfxId;
    }
    return subCamId;
}

// unused
void OnePointCutscene_EnableAttention(void) {
    sDisableAttention = false;
}

// unused
void OnePointCutscene_DisableAttention(void) {
    sDisableAttention = true;
}

s32 OnePointCutscene_CheckForCategory(PlayState* play, s32 actorCategory) {
    Camera* parentCam = play->cameraPtrs[CAM_ID_MAIN];

    while (parentCam->childCamId != CAM_ID_MAIN) {
        parentCam = play->cameraPtrs[parentCam->childCamId];
        if ((parentCam == NULL) || (parentCam->setting != CAM_SET_CS_ATTENTION)) {
            break;
        } else if (actorCategory == parentCam->target->category) {
            return true;
        }
    }
    return false;
}

// unused, also empty.
void OnePointCutscene_Noop(PlayState* play, s32 arg1) {
}
