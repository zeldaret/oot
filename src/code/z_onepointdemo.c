#include "global.h"
#include "vt.h"
#include "overlays/actors/ovl_En_Sw/z_en_sw.h"

#define PARENT_CAM(cam) ((cam)->globalCtx->cameraPtrs[(cam)->parentCamIdx])
#define CHILD_CAM(cam) ((cam)->globalCtx->cameraPtrs[(cam)->childCamIdx])

static s16 sDisableAttention = false;
static s16 sUnused = -1;
static s32 sPrevFrameDemo1100 = -4096;

#include "z_onepointdemo_data.c"

void OnePointDemo_AddVecSphToVec3f(Vec3f* dst, Vec3f* src, VecSph* vecSph) {
    Vec3f out;
    Vec3f vec;

    OLib_VecSphGeoToVec3f(&vec, vecSph);

    out.x = src->x + vec.x;
    out.y = src->y + vec.y;
    out.z = src->z + vec.z;
    if (dst) {}
    *dst = out;
}

s16 OnePointDemo_Vec3fYaw(Vec3f* vec1, Vec3f* vec2) {
    return DEGF_TO_BINANG(RADF_TO_DEGF(Math_FAtan2F(vec2->x - vec1->x, vec2->z - vec1->z)));
}

void OnePointDemo_Vec3sToVec3f(Vec3f* src, Vec3s* dst) {
    dst->x = src->x;
    dst->y = src->y;
    dst->z = src->z;
}

s32 OnePointDemo_BgCheckLineTest(CollisionContext* colCtx, Vec3f* vec1, Vec3f* vec2) {
    Vec3f posResult;
    s32 bgId;
    CollisionPoly* outPoly = NULL;

    return BgCheck_CameraLineTest1(colCtx, vec1, vec2, &posResult, &outPoly, true, true, true, false, &bgId);
}

f32 OnePointDemo_RaycastFloor(CollisionContext* colCtx, Vec3f* pos) {
    CollisionPoly* outPoly;
    s32 bgId;

    return BgCheck_EntityRaycastFloor3(colCtx, &outPoly, &bgId, pos);
}

void OnePointDemo_SetCsCamPoints(Camera* camera, s16 actionParameters, s16 initTimer, CutsceneCameraPoint* atPoints,
                                 CutsceneCameraPoint* eyePoints) {
    OnePointDemoCamera* onePointCamData = (OnePointDemoCamera*)(&camera->paramData);

    onePointCamData->atPoints = atPoints;
    onePointCamData->eyePoints = eyePoints;
    onePointCamData->actionParameters = actionParameters;
    onePointCamData->initTimer = initTimer;
}

s32 OnePointDemo_SetInfo(GlobalContext* globalCtx, s16 camIdx, s16 demoId, Actor* actor, s16 timer) {
    Camera* demoCam = globalCtx->cameraPtrs[camIdx];
    Camera* childCam = globalCtx->cameraPtrs[demoCam->childCamIdx];
    Camera* mainCam = globalCtx->cameraPtrs[CAM_INDEX_MAIN];
    Player* player = mainCam->player;
    VecSph spD0;
    s32 i;
    Vec3f spC0;
    Vec3f spB4;
    PosRot spA0;
    PosRot sp8C;
    f32 tempRand;
    Unique9OnePointDemo* demoInfo = ONEPOINTDEMO(demoCam);

    switch (demoId) {
        case 0x3FC:
            if (timer < 20) {
                timer = 20;
            }
            D_801208EC[0].atTargetInit = globalCtx->view.lookAt;
            D_801208EC[0].eyeTargetInit = globalCtx->view.eye;
            D_801208EC[0].fovTargetInit = globalCtx->view.fovy;
            D_801208EC[1].atTargetInit = mainCam->at;
            D_801208EC[1].eyeTargetInit = mainCam->eye;
            D_801208EC[1].fovTargetInit = mainCam->fov;
            D_801208EC[1].timerInit = timer - 1;
            demoCam->timer = timer + 1;
            D_801208EC[1].lerpStepScale = 1.0f / (0.5f * timer);

            demoInfo->keyFrames = D_801208EC;
            demoInfo->keyFrameCnt = 3;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x406:
            D_80120964[0].atTargetInit = globalCtx->view.lookAt;
            D_80120964[0].eyeTargetInit = globalCtx->view.eye;
            D_80120964[0].fovTargetInit = globalCtx->view.fovy;
            OLib_Vec3fDiffToVecSphGeo(&spD0, &mainCam->at, &mainCam->eye);
            D_80120964[1].eyeTargetInit.y = BINANG_TO_DEGF(spD0.yaw);
            D_80120964[1].timerInit = timer - 1;

            demoInfo->keyFrames = D_80120964;
            demoInfo->keyFrameCnt = 2;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x1388:
            D_801209B4[0].atTargetInit = D_801209B4[1].atTargetInit = globalCtx->view.lookAt;
            D_801209B4[0].eyeTargetInit = globalCtx->view.eye;
            D_801209B4[0].fovTargetInit = D_801209B4[2].fovTargetInit = globalCtx->view.fovy;
            OLib_Vec3fDiffToVecSphGeo(&spD0, &actor->focus.pos, &mainCam->at);
            spD0.r = mainCam->dist;
            OnePointDemo_AddVecSphToVec3f(&D_801209B4[1].eyeTargetInit, &D_801209B4[1].atTargetInit, &spD0);
            D_801209B4[1].atTargetInit.y += 20.0f;

            demoInfo->keyFrames = D_801209B4;
            demoInfo->keyFrameCnt = 4;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x1392:
            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMO4);
            Gameplay_CameraSetAtEye(globalCtx, camIdx, &mainCam->at, &mainCam->eye);
            demoCam->roll = 0;
            break;
        case 0x251C:
            demoInfo->keyFrames = D_80120A54;
            demoInfo->keyFrameCnt = 3;
            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x8D4:
            D_80120ACC[0].atTargetInit.x = D_80120ACC[2].atTargetInit.x =
                ((mainCam->globalCtx->state.frames & 1) ? -10.0f : 10.0f) + (Rand_ZeroOne() * 8.0f);

            D_80120ACC[0].eyeTargetInit.x = D_80120ACC[2].eyeTargetInit.x =
                ((mainCam->globalCtx->state.frames & 1) ? 20.0f : -20.0f) + (Rand_ZeroOne() * 5.0f);

            demoInfo->keyFrames = D_80120ACC;
            demoInfo->keyFrameCnt = 5;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x8DE:
            demoInfo->keyFrames = D_80120B94;
            demoInfo->keyFrameCnt = 11;

            for (i = 0; i < demoInfo->keyFrameCnt - 3; i++) {
                if (D_80120B94[i].actionFlags != 0x8F) {
                    D_80120B94[i].atTargetInit.x = Rand_ZeroOne() * 5.0f;
                    D_80120B94[i].atTargetInit.z = (Rand_ZeroOne() * 30.0f) + 10.0f;
                    D_80120B94[i].eyeTargetInit.x = (Rand_ZeroOne() * 100.0f) + 20.0f;
                    D_80120B94[i].eyeTargetInit.z = (Rand_ZeroOne() * 80.0f) + 50.0f;
                }
            }

            D_80120B94[camIdx - 1].eyeTargetInit.y =
                ((mainCam->globalCtx->state.frames & 1) ? 3.0f : -3.0f) + Rand_ZeroOne();
            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);

            i = Quake_Add(demoCam, 5);
            Quake_SetSpeed(i, 400);
            Quake_SetQuakeValues(i, 4, 5, 40, 0x3C);
            Quake_SetCountdown(i, 1600);
            break;
        case 0x8E8:
            demoInfo->keyFrames = D_80120D4C;
            demoInfo->keyFrameCnt = 7;

            for (i = 0; i < demoInfo->keyFrameCnt - 3; i++) {
                if (D_80120D4C[i].actionFlags != 0x8F) {
                    D_80120D4C[i].atTargetInit.x = Rand_ZeroOne() * 20.0f;
                    D_80120D4C[i].atTargetInit.z = (Rand_ZeroOne() * 40.0f) + 10.0f;
                    D_80120D4C[i].eyeTargetInit.x = (Rand_ZeroOne() * 40.0f) + 60.0f;
                    D_80120D4C[i].eyeTargetInit.z = (Rand_ZeroOne() * 40.0f) + 80.0f;
                }
            }
            D_80120D4C[camIdx - 1].eyeTargetInit.y =
                ((mainCam->globalCtx->state.frames & 1) ? 3.0f : -3.0f) + Rand_ZeroOne();
            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);

            i = Quake_Add(demoCam, 5);
            Quake_SetSpeed(i, 400);
            Quake_SetQuakeValues(i, 2, 3, 200, 0x32);
            Quake_SetCountdown(i, 9999);
            break;
        case 0x8AC:
            demoInfo->keyFrames = D_80120E64;
            demoInfo->keyFrameCnt = 8;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);

            i = Quake_Add(demoCam, 5);
            Quake_SetSpeed(i, 400);
            Quake_SetQuakeValues(i, 2, 2, 50, 0);
            Quake_SetCountdown(i, 280);
            break;
        case 0x8B6:
            if (player->actor.world.pos.z < 1000.0f) {
                D_80120FA4[0].eyeTargetInit.x = -D_80120FA4[0].eyeTargetInit.x;
                D_80120FA4[2].eyeTargetInit.x = -D_80120FA4[2].eyeTargetInit.x;
            }

            demoInfo->keyFrames = D_80120FA4;
            demoInfo->keyFrameCnt = 6;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x924:
            demoInfo->keyFrames = D_80121094;
            demoInfo->keyFrameCnt = 3;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);

            i = Quake_Add(demoCam, 5);
            Quake_SetSpeed(i, 400);
            Quake_SetQuakeValues(i, 2, 2, 50, 0);
            Quake_SetCountdown(i, 60);
            break;
        case 0x92E:
            demoInfo->keyFrames = D_8012110C;
            demoInfo->keyFrameCnt = 3;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x898: {
            s16 sp82;
            s16 sp80;
            s16 sp7E;
            s16 sp7C;

            func_8002F374(globalCtx, &player->actor, &sp82, &sp7E);
            func_8002F374(globalCtx, actor, &sp80, &sp7C);
            if ((sp82 > 0) && (sp82 < 320) && (sp7E > 0) && (sp7E < 240) && (sp80 > 0) && (sp80 < 320) && (sp7C > 0) &&
                (sp7C < 240) &&
                !OnePointDemo_BgCheckLineTest(&globalCtx->colCtx, &actor->focus.pos, &player->actor.focus.pos)) {
                D_80121184[0].atTargetInit.x = (globalCtx->view.lookAt.x + actor->focus.pos.x) * 0.5f;
                D_80121184[0].atTargetInit.y = (globalCtx->view.lookAt.y + actor->focus.pos.y) * 0.5f;
                D_80121184[0].atTargetInit.z = (globalCtx->view.lookAt.z + actor->focus.pos.z) * 0.5f;
                D_80121184[0].eyeTargetInit = globalCtx->view.eye;
                D_80121184[0].eyeTargetInit.y = player->actor.focus.pos.y + 20.0f;
                D_80121184[0].fovTargetInit = mainCam->fov * 0.75f;

                demoInfo->keyFrames = D_80121184;
                demoInfo->keyFrameCnt = 2;
            } else {
                D_801211D4[0].atTargetInit.x = actor->focus.pos.x;
                D_801211D4[0].atTargetInit.y = actor->focus.pos.y - 5.0f;
                D_801211D4[0].atTargetInit.z = actor->focus.pos.z;
                spC0 = ((EnSw*)actor)->unk_364;
                osSyncPrintf("%s(%d): xyz_t: %s (%f %f %f)\n", "../z_onepointdemo.c", 1671, "&cp", spC0.x, spC0.y,
                             spC0.z);
                D_801211D4[0].eyeTargetInit.x = (actor->focus.pos.x + (120.0f * spC0.x)) - (Rand_ZeroOne() * 20.0f);
                D_801211D4[0].eyeTargetInit.y = actor->focus.pos.y + (120.0f * spC0.y) + 20.0f;
                D_801211D4[0].eyeTargetInit.z = (actor->focus.pos.z + (120.0f * spC0.z)) - (Rand_ZeroOne() * 20.0f);

                demoInfo->keyFrames = D_801211D4;
                demoInfo->keyFrameCnt = 2;
            }
            Gameplay_ChangeCameraStatus(globalCtx, 0, CAM_STAT_UNK3);
            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
        } break;
        case 0x8F2: {
            Actor* rideActor = player->rideActor;

            func_8002DF54(globalCtx, NULL, 8);
            if (rideActor != NULL) {
                rideActor->freezeTimer = 180;
            }

            demoInfo->keyFrames = D_80121224;
            demoInfo->keyFrameCnt = 6;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
        } break;
        case 0x1400:
            func_8002DF54(globalCtx, NULL, 8);

            demoInfo->keyFrames = D_80121314;
            demoInfo->keyFrameCnt = 1;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x119E:
            D_8012133C[0].eyeTargetInit = actor->world.pos;
            D_8012133C[0].eyeTargetInit.y = player->actor.world.pos.y + 40.0f;
            func_8002DF54(globalCtx, NULL, 8);

            demoInfo->keyFrames = D_8012133C;
            demoInfo->keyFrameCnt = 3;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x1194:
            Actor_GetFocus(&spA0, actor);
            spC0 = spA0.pos;
            spC0.y = OnePointDemo_RaycastFloor(&globalCtx->colCtx, &spC0) + 40.0f;
            spD0.r = 150.0f;
            spD0.yaw = spA0.rot.y;
            spD0.pitch = 0x3E8;

            OnePointDemo_AddVecSphToVec3f(&spB4, &spC0, &spD0);
            Gameplay_CameraChangeSetting(globalCtx, camIdx, CAM_SET_FREE2);
            Gameplay_CameraSetAtEye(globalCtx, camIdx, &spC0, &spB4);
            func_8002DF54(globalCtx, NULL, 8);
            demoCam->roll = 0;
            demoCam->fov = 50.0f;
            if (demoCam->childCamIdx != SUBCAM_NONE) {
                OnePointDemo_EndDemo(globalCtx, demoCam->childCamIdx);
            }
            break;
        case 0x8A2:
            OLib_Vec3fDiffToVecSphGeo(&spD0, &player->actor.world.pos, &actor->world.pos);
            D_801213B4[0].eyeTargetInit.y = D_801213B4[1].eyeTargetInit.y = D_801213B4[2].eyeTargetInit.y =
                D_801213B4[2].atTargetInit.y = BINANG_TO_DEGF(spD0.yaw);
            if (Rand_ZeroOne() < 0.0f) {
                D_801213B4[3].eyeTargetInit.x = -D_801213B4[3].eyeTargetInit.x;
            }
            func_8002DF54(globalCtx, NULL, 8);

            demoInfo->keyFrames = D_801213B4;
            demoInfo->keyFrameCnt = 5;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x3F2:
            Gameplay_CameraChangeSetting(globalCtx, camIdx, CAM_SET_FREE2);
            Gameplay_CameraSetAtEye(globalCtx, camIdx, &childCam->at, &childCam->eye);
            Gameplay_CameraSetFov(globalCtx, camIdx, childCam->fov);
            Gameplay_SetCameraRoll(globalCtx, camIdx, childCam->roll);
            break;
        case 0x2581:
            Gameplay_CameraChangeSetting(globalCtx, camIdx, CAM_SET_DEMO3);
            Gameplay_CameraChangeSetting(globalCtx, 0, mainCam->prevSetting);
            OnePointDemo_SetCsCamPoints(demoCam, D_80120430 | 0x1000, D_8012042C, D_80120308, D_80120398);
            break;
        case 0x2582:
            Gameplay_CameraChangeSetting(globalCtx, camIdx, CAM_SET_DEMO3);
            Gameplay_CameraChangeSetting(globalCtx, 0, mainCam->prevSetting);
            OnePointDemo_SetCsCamPoints(demoCam, D_80120430 | 0x1000, D_8012042C, D_80120308, D_80120434);
            break;
        case 0x104F:
            demoInfo->keyFrames = D_8012147C;
            demoInfo->keyFrameCnt = 4;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x1054:
            spC0.x = -1881.0f;
            spC0.y = 766.0f;
            spC0.z = -330.0f;
            spB4.x = -1979.0f;
            spB4.y = 703.0f;
            spB4.z = -269.0f;
            Gameplay_CameraChangeSetting(globalCtx, camIdx, CAM_SET_FREE2);
            Gameplay_CameraSetAtEye(globalCtx, camIdx, &spC0, &spB4);
            demoCam->roll = 6;
            demoCam->fov = 75.0f;
            func_8002DF54(globalCtx, NULL, 8);
            break;
        case 0xBE0:
            func_8002DF54(globalCtx, NULL, 8);
            D_8012151C[0].timerInit = timer - 1;

            demoInfo->keyFrames = D_8012151C;
            demoInfo->keyFrameCnt = 2;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0xBCC:
            D_8012156C[1].timerInit = timer - 1;
            if (mainCam->globalCtx->state.frames & 1) {
                D_8012156C[0].atTargetInit.x = -D_8012156C[0].atTargetInit.x;
                D_8012156C[0].eyeTargetInit.x = -D_8012156C[0].eyeTargetInit.x;
                D_8012156C[1].atTargetInit.x = -D_8012156C[1].atTargetInit.x;
                D_8012156C[1].eyeTargetInit.x = -D_8012156C[1].eyeTargetInit.x;
            }
            tempRand = Rand_ZeroOne() * 15.0f;
            D_8012156C[0].eyeTargetInit.x += tempRand;
            D_8012156C[1].eyeTargetInit.x += tempRand;

            demoInfo->keyFrames = D_8012156C;
            demoInfo->keyFrameCnt = 2;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            func_8002DF54(globalCtx, NULL, 8);
            break;
        case 0xBC2:
            D_801215BC[0].timerInit = timer;

            demoInfo->keyFrames = D_801215BC;
            demoInfo->keyFrameCnt = 1;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0xBFE:
            demoInfo->keyFrames = D_801215E4;
            demoInfo->keyFrameCnt = 10;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);

            i = Quake_Add(demoCam, 3);
            Quake_SetSpeed(i, 22000);
            Quake_SetQuakeValues(i, 2, 0, 200, 0);
            Quake_SetCountdown(i, 10);
            break;
        case 0xC08:
            demoInfo->keyFrames = D_80121774;
            demoInfo->keyFrameCnt = 4;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0xC12:
            func_8002DF54(globalCtx, NULL, 8);

            demoInfo->keyFrames = D_80121814;
            demoInfo->keyFrameCnt = 4;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0xC1C:
            VEC_SET(spB4, 0.0f, -280.0f, -1400.0f);

            Actor_GetFocus(&spA0, actor);
            spC0 = spA0.pos;
            func_800C0808(globalCtx, camIdx, player, CAM_SET_CIRCLE6);
            Gameplay_CameraSetAtEye(globalCtx, camIdx, &spC0, &spB4);
            demoCam->roll = 0;
            demoCam->fov = 70.0f;
            func_8002DF54(globalCtx, NULL, 8);
            break;
        case 0xD34:
        case 0xBF9:
            demoInfo->keyFrames = D_801218B4;
            demoInfo->keyFrameCnt = 2;

            func_8002DF54(globalCtx, NULL, 8);
            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);

            i = Quake_Add(demoCam, 1);
            Quake_SetSpeed(i, 24000);
            Quake_SetQuakeValues(i, 2, 0, 0, 0);
            Quake_SetCountdown(i, 160);
            break;
        case 0xBF4:
            demoInfo->keyFrames = D_80121904;
            demoInfo->keyFrameCnt = 2;

            func_8002DF54(globalCtx, NULL, 8);
            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0xBEA:
            Gameplay_CameraChangeSetting(globalCtx, camIdx, CAM_SET_DEMO3);
            func_8002DF54(globalCtx, &player->actor, 5);
            OnePointDemo_SetCsCamPoints(demoCam, D_80120304 | 0x2000, D_80120300, D_8012013C, D_8012021C);
            func_80078884(0x4802);
            OnePointDemo_Vec3sToVec3f(&mainCam->at, &D_8012013C[D_801202FC - 2].pos);
            OnePointDemo_Vec3sToVec3f(&mainCam->eye, &D_8012021C[D_801202FC - 2].pos);
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

            i = Quake_Add(mainCam, 3);
            Quake_SetSpeed(i, 30000);
            Quake_SetQuakeValues(i, 2, 1, 1, 0);
            Quake_SetCountdown(i, 200);
            break;
        case 0xC30:
            demoInfo->keyFrames = D_80121954[-(timer + 101)];
            demoCam->timer = 100;
            demoCam->unk_14C |= 2;
            demoInfo->keyFrameCnt = 2;

            func_8002DF54(globalCtx, NULL, 8);
            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0xC3A:
            demoInfo->keyFrames = D_80121A44;
            demoInfo->keyFrameCnt = 12;

            func_8002DF54(globalCtx, NULL, 8);
            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            demoCam->unk_14C |= 2;
            break;
        case 0xC44:
            D_80121C24[0].atTargetInit = globalCtx->view.lookAt;
            D_80121C24[0].eyeTargetInit = globalCtx->view.eye;
            D_80121C24[0].fovTargetInit = globalCtx->view.fovy;

            demoInfo->keyFrames = D_80121C24;
            demoInfo->keyFrameCnt = 7;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0xC4E:
            spC0.x = 1890.0f;
            spC0.y = 886.0f;
            spC0.z = -1432.0f;
            spB4.x = 1729.0f;
            spB4.y = 995.0f;
            spB4.z = -1405.0f;
            Gameplay_CameraChangeSetting(globalCtx, camIdx, CAM_SET_FREE2);
            Gameplay_CameraSetAtEye(globalCtx, camIdx, &spC0, &spB4);
            demoCam->roll = 0x50;
            demoCam->fov = 55.0f;
            func_8002DF38(globalCtx, &player->actor, 8);
            break;
        case 0xC62:
            Actor_GetWorld(&spA0, actor);
            spC0 = spA0.pos;
            spD0.pitch = -0x5DC;
            spC0.y += 50.0f;
            spD0.r = 250.0f;
            Actor_GetWorld(&spA0, &player->actor);
            spD0.yaw = OnePointDemo_Vec3fYaw(&spC0, &spA0.pos) - 0x7D0;
            OnePointDemo_AddVecSphToVec3f(&spB4, &spC0, &spD0);
            Gameplay_CameraChangeSetting(globalCtx, camIdx, CAM_SET_FREE2);
            Gameplay_CameraSetAtEye(globalCtx, camIdx, &spC0, &spB4);
            Gameplay_CopyCamera(globalCtx, 0, camIdx);
            demoCam->roll = -1;
            demoCam->fov = 55.0f;
            func_8002DF38(globalCtx, actor, 1);
            break;
        case 0xC58:
            Actor_GetWorld(&spA0, actor);
            spC0 = spA0.pos;
            spD0.pitch = 0;
            spD0.yaw = spA0.rot.y;
            spD0.r = 150.0f;
            OnePointDemo_AddVecSphToVec3f(&spB4, &spC0, &spD0);
            Gameplay_CameraChangeSetting(globalCtx, camIdx, CAM_SET_FREE2);
            Gameplay_CameraSetAtEye(globalCtx, camIdx, &spC0, &spB4);
            demoCam->roll = 0;
            demoCam->fov = 55.0f;
            func_8002DF38(globalCtx, &player->actor, 8);
            break;
        case 0xC6C:
            Actor_GetWorldPosShapeRot(&spA0, actor);
            spC0 = spA0.pos;
            spC0.y += 120.0f;
            spD0.r = 300.0f;
            spD0.yaw = spA0.rot.y;
            spD0.pitch = -0xAF0;
            OnePointDemo_AddVecSphToVec3f(&spB4, &spC0, &spD0);
            Gameplay_CameraChangeSetting(globalCtx, camIdx, CAM_SET_FREE2);
            Gameplay_CameraSetAtEye(globalCtx, camIdx, &spC0, &spB4);
            demoCam->roll = 0;
            demoCam->fov = 60.0f;
            func_8002DF38(globalCtx, actor, 1);
            break;
        case 0xC76:
            Gameplay_CameraChangeSetting(globalCtx, camIdx, CAM_SET_MORI3);
            Camera_ChangeMode(mainCam, CAM_MODE_NORMAL);
            func_8002DF38(globalCtx, actor, 0xC);
            break;
        case 0xC9E:
            spC0.x = 120.0f;
            spC0.y = 265.0f;
            spC0.z = -1570.0f;
            spB4.x = 80.0f;
            spB4.y = 445.0f;
            spB4.z = -1425.0f;
            Gameplay_CameraChangeSetting(globalCtx, camIdx, CAM_SET_FREE2);
            Gameplay_CameraSetAtEye(globalCtx, camIdx, &spC0, &spB4);
            demoCam->roll = 0x1E;
            demoCam->fov = 75.0f;
            func_8002DF38(globalCtx, &player->actor, 8);
            Actor_GetWorldPosShapeRot(&spA0, actor);
            Actor_GetFocus(&sp8C, &player->actor);
            spC0.x = sp8C.pos.x;
            spC0.y = sp8C.pos.y + 70.0f;
            spC0.z = sp8C.pos.z;
            OLib_Vec3fDiffToVecSphGeo(&spD0, &spA0.pos, &sp8C.pos);
            spD0.pitch = 0x5DC;
            spD0.r = 120.0f;
            OnePointDemo_AddVecSphToVec3f(&spB4, &spC0, &spD0);
            Gameplay_CameraSetAtEye(globalCtx, 0, &spC0, &spB4);

            i = Quake_Add(demoCam, 3);
            Quake_SetSpeed(i, 22000);
            Quake_SetQuakeValues(i, 1, 0, 0, 0);
            Quake_SetCountdown(i, 90);
            break;
        case 0x177A:
            Actor_GetWorld(&spA0, actor);
            spC0 = spA0.pos;
            spD0.pitch = 0;
            spC0.y += 70.0f;
            spD0.yaw = spA0.rot.y + 0x7FFF;
            spD0.r = 300.0f;
            OnePointDemo_AddVecSphToVec3f(&spB4, &spC0, &spD0);
            Gameplay_CameraChangeSetting(globalCtx, camIdx, CAM_SET_FREE2);
            Gameplay_CameraSetAtEye(globalCtx, camIdx, &spC0, &spB4);
            demoCam->roll = 0;
            demoCam->fov = 45.0f;
            func_8002DF38(globalCtx, &player->actor, 8);
            break;
        case 0xC94:
            Actor_GetFocus(&spA0, actor);
            spC0 = spA0.pos;
            func_800C0808(globalCtx, camIdx, player, CAM_SET_CIRCLE6);
            Actor_GetWorld(&spA0, &player->actor);
            OLib_Vec3fDiffToVecSphGeo(&spD0, &spC0, &spA0.pos);
            spD0.yaw += 0x3E8;
            spD0.r = 400.0f;
            OnePointDemo_AddVecSphToVec3f(&spB4, &spC0, &spD0);
            spB4.y = spA0.pos.y + 60.0f;
            Gameplay_CameraSetAtEye(globalCtx, camIdx, &spC0, &spB4);
            demoCam->roll = 0;
            demoCam->fov = 75.0f;
            player->actor.shape.rot.y = player->actor.world.rot.y = player->currentYaw = spD0.yaw + 0x7FFF;
            func_8002DF54(globalCtx, NULL, 8);
            break;
        case 0xCA8:
            D_80121D3C[2].timerInit = timer - 5;

            demoInfo->keyFrames = D_80121D3C;
            demoInfo->keyFrameCnt = 3;

            func_8002DF54(globalCtx, NULL, 8);
            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x1771:
            Gameplay_CameraChangeSetting(globalCtx, camIdx, CAM_SET_DEMO3);
            func_8002DF54(globalCtx, NULL, 8);
            Actor_GetWorld(&spA0, actor);
            if (spA0.pos.z > -750.0f) {
                OnePointDemo_SetCsCamPoints(demoCam, D_801208E8, D_801208E4, D_801206A0, D_80120820);
            } else {
                OnePointDemo_SetCsCamPoints(demoCam, D_801208E8, D_801208E4, D_801206A0, D_80120760);
            }

            i = Quake_Add(demoCam, 1);
            Quake_SetSpeed(i, 32000);
            Quake_SetQuakeValues(i, 0, 0, 20, 0);
            Quake_SetCountdown(i, D_801208E4 - 10);
            break;
        case 0xD48:
            Gameplay_CameraChangeSetting(globalCtx, camIdx, CAM_SET_DEMO3);
            func_8002DF38(globalCtx, &player->actor, 8);
            OnePointDemo_SetCsCamPoints(demoCam, D_8012069C | 0x2000, D_80120698, D_801204D4, D_801205B4);
            OnePointDemo_Vec3sToVec3f(&mainCam->eye, &D_801205B4[D_80120694 - 2].pos);
            OnePointDemo_Vec3sToVec3f(&mainCam->at, &D_801204D4[D_80120694 - 2].pos);

            i = Quake_Add(demoCam, 1);
            Quake_SetSpeed(i, 0x4E20);
            Quake_SetQuakeValues(i, 1, 0, 50, 0);
            Quake_SetCountdown(i, D_80120698 - 20);
            break;
        case 0xD3E:
            player->actor.shape.rot.y = player->actor.world.rot.y = player->currentYaw = -0x3FD9;

            demoInfo->keyFrames = D_80121DB4;
            demoInfo->keyFrameCnt = 9;

            func_8002DF54(globalCtx, NULL, 8);
            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0xCEE:
            Gameplay_CameraChangeSetting(globalCtx, camIdx, CAM_SET_HIDAN2);
            func_8002DF54(globalCtx, NULL, 8);
            Gameplay_CopyCamera(globalCtx, camIdx, 0);

            i = Quake_Add(demoCam, 1);
            Quake_SetSpeed(i, 32000);
            Quake_SetQuakeValues(i, 2, 0, 0, 0);
            Quake_SetCountdown(i, timer);
            break;
        case 0xCDA:
            D_80121F1C[0].atTargetInit = globalCtx->view.lookAt;
            D_80121F1C[0].eyeTargetInit = globalCtx->view.eye;
            D_80121F1C[0].fovTargetInit = globalCtx->view.fovy;
            Actor_GetFocus(&spA0, actor);
            player->actor.shape.rot.y = player->actor.world.rot.y = player->currentYaw = spA0.rot.y;

            demoInfo->keyFrames = D_80121F1C;
            demoInfo->keyFrameCnt = 4;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);

            i = Quake_Add(demoCam, 3);
            Quake_SetSpeed(i, 12000);
            Quake_SetQuakeValues(i, 0, 0, 1000, 0);
            Quake_SetCountdown(i, 5);
            break;
        case 0xD0C:
            D_80121FBC[0].atTargetInit = globalCtx->view.lookAt;
            D_80121FBC[0].eyeTargetInit = globalCtx->view.eye;
            D_80121FBC[0].fovTargetInit = globalCtx->view.fovy;

            demoInfo->keyFrames = D_80121FBC;
            demoInfo->keyFrameCnt = 4;

            func_8002DF54(globalCtx, NULL, 8);
            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);

            i = Quake_Add(demoCam, 3);
            Quake_SetSpeed(i, 12000);
            Quake_SetQuakeValues(i, 0, 0, 1000, 0);
            Quake_SetCountdown(i, 5);
            break;
        case 0xD20:
            demoInfo->keyFrames = D_8012205C;
            demoInfo->keyFrameCnt = 3;

            func_8002DF38(globalCtx, &player->actor, 8);
            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0xD16:
            D_801220D4[0].atTargetInit = globalCtx->view.lookAt;
            D_801220D4[0].eyeTargetInit = globalCtx->view.eye;
            D_801220D4[0].fovTargetInit = globalCtx->view.fovy;
            if (actor->world.pos.x > 0.0f) {
                D_801220D4[1].rollTargetInit = -D_801220D4[1].rollTargetInit;
                D_801220D4[2].rollTargetInit = -D_801220D4[2].rollTargetInit;
                D_801220D4[1].atTargetInit.x = -D_801220D4[1].atTargetInit.x;
                D_801220D4[1].atTargetInit.y = 50.0f;
                D_801220D4[1].eyeTargetInit.y = 80.0f;
                D_801220D4[1].eyeTargetInit.x = -D_801220D4[1].eyeTargetInit.x;
            }
            func_8002DF54(globalCtx, NULL, 8);

            demoInfo->keyFrames = D_801220D4;
            demoInfo->keyFrameCnt = 5;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0xD02:
            demoInfo->keyFrames = D_8012219C;
            demoInfo->keyFrameCnt = 7;

            func_8002DF38(globalCtx, &player->actor, 8);
            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0xD52:
            demoInfo->keyFrames = D_801222B4;
            demoInfo->keyFrameCnt = 5;

            func_8002DF54(globalCtx, NULL, 8);
            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);

            i = Quake_Add(demoCam, 1);
            Quake_SetSpeed(i, 32000);
            Quake_SetQuakeValues(i, 4, 0, 0, 0);
            Quake_SetCountdown(i, 20);
            break;
        case 0xD7A:
            demoInfo->keyFrames = D_8012237C;
            demoInfo->keyFrameCnt = 2;

            func_8002DF38(globalCtx, &player->actor, 8);
            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);

            i = Quake_Add(demoCam, 1);
            Quake_SetSpeed(i, 32000);
            Quake_SetQuakeValues(i, 2, 0, 0, 0);
            Quake_SetCountdown(i, 10);
            break;
        case 0xD70:
            demoInfo->keyFrames = D_801223CC;
            demoInfo->keyFrameCnt = 6;

            func_8002DF54(globalCtx, NULL, 8);
            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            player->stateFlags1 |= 0x20000000;
            player->actor.freezeTimer = 90;

            i = Quake_Add(demoCam, 1);
            Quake_SetSpeed(i, 32000);
            Quake_SetQuakeValues(i, 2, 0, 0, 0);
            Quake_SetCountdown(i, 10);
            break;
        case 0xD66:
            demoInfo->keyFrames = D_801224BC;
            demoInfo->keyFrameCnt = 7;

            func_8002DF54(globalCtx, NULL, 8);
            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);

            i = Quake_Add(demoCam, 1);
            Quake_SetSpeed(i, 32000);
            Quake_SetQuakeValues(i, 1, 0, 10, 0);
            Quake_SetCountdown(i, 20);
            break;
        case 0x1004:
            demoInfo->keyFrames = D_801225D4;
            demoInfo->keyFrameCnt = 5;

            player->actor.shape.rot.y = player->actor.world.rot.y = player->currentYaw = 0x3FFC;
            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            func_8002DF54(globalCtx, NULL, 8);
            break;
        case 0x100E:
            demoInfo->keyFrames = D_8012269C;
            demoInfo->keyFrameCnt = 3;

            func_8002DF38(globalCtx, &player->actor, 8);
            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x1018:
            func_8002DF54(globalCtx, NULL, 8);
            D_80122714[1].timerInit = 80;
            demoInfo->keyFrames = D_80122714;
            demoInfo->keyFrameCnt = 4;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x102C:
            demoInfo->keyFrames = D_801227B4;
            demoInfo->keyFrameCnt = 6;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            Camera_ChangeMode(mainCam, CAM_MODE_NORMAL);
            break;
        case 0x1036:
            demoInfo->keyFrames = D_801228A4;
            demoInfo->keyFrameCnt = 5;

            func_8002DF54(globalCtx, NULL, 8);
            Camera_ChangeMode(mainCam, CAM_MODE_NORMAL);
            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x1040:
            demoInfo->keyFrames = D_8012296C;
            demoInfo->keyFrameCnt = 4;

            func_8002DF54(globalCtx, NULL, 8);
            Camera_ChangeMode(mainCam, CAM_MODE_NORMAL);
            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x104A:
            demoInfo->keyFrames = D_80122A0C;
            demoInfo->keyFrameCnt = 2;

            func_8002DF54(globalCtx, NULL, 8);
            Camera_ChangeMode(mainCam, CAM_MODE_NORMAL);
            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x105E:
            demoInfo->keyFrames = D_80122A5C;
            demoInfo->keyFrameCnt = 8;

            func_8002DF38(globalCtx, &player->actor, 8);
            Camera_ChangeMode(mainCam, CAM_MODE_NORMAL);
            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x1068:
            demoInfo->keyFrames = D_80122B9C;
            demoInfo->keyFrameCnt = 3;

            func_8002DF38(globalCtx, &player->actor, 8);
            Camera_ChangeMode(mainCam, CAM_MODE_NORMAL);
            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x1072:
            player->actor.freezeTimer = timer;

            demoInfo->keyFrames = D_80122C14;
            demoInfo->keyFrameCnt = 1;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);

            i = Quake_Add(demoCam, 3);
            Quake_SetSpeed(i, 12000);
            Quake_SetQuakeValues(i, 0, 1, 100, 0);
            Quake_SetCountdown(i, timer - 80);
            break;
        case 0x107C:
            demoInfo->keyFrames = (player->actor.world.pos.z < -15.0f) ? D_80122C3C : D_80122C64;
            demoInfo->keyFrameCnt = 1;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            func_8002DF38(globalCtx, &player->actor, 1);

            i = Quake_Add(demoCam, 3);
            Quake_SetSpeed(i, 12000);
            Quake_SetQuakeValues(i, 0, 1, 10, 0);
            Quake_SetCountdown(i, timer - 10);
            break;
        case 0x107D:
            demoInfo->keyFrames = D_80122C8C;
            demoInfo->keyFrameCnt = 1;

            func_8002DF54(globalCtx, NULL, 8);
            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0xCBC:
            func_8002DF54(globalCtx, NULL, 8);
            D_80122CB4[1].timerInit = timer - 5;

            demoInfo->keyFrames = D_80122CB4;
            demoInfo->keyFrameCnt = 2;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0xCBD:
            func_8002DF54(globalCtx, NULL, 8);
            D_80122D04[1].timerInit = timer - 10;

            demoInfo->keyFrames = D_80122D04;
            demoInfo->keyFrameCnt = 2;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x1F4A:
            demoInfo->keyFrames = D_80122D54;
            demoInfo->keyFrameCnt = 3;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x1F42:
            demoInfo->keyFrames = D_80122DCC;
            demoInfo->keyFrameCnt = 3;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x21FC:
            Actor_GetFocus(&spA0, actor);
            Actor_GetFocus(&sp8C, &player->actor);
            D_80122E44[timer & 1][0].atTargetInit.y = ((spA0.pos.y - sp8C.pos.y) / 10.0f) + 90.0f;
            D_80122E44[timer & 1][5].atTargetInit = mainCam->at;

            demoInfo->keyFrames = D_80122E44[timer & 1];
            demoInfo->keyFrameCnt = 7;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x44C: {
            s32 tempDiff = globalCtx->state.frames - sPrevFrameDemo1100;

            if ((tempDiff > 3600) || (tempDiff < -3600)) {
                demoInfo->keyFrames = D_80123074;
                demoInfo->keyFrameCnt = 5;
            } else {
                if (globalCtx->state.frames & 1) {
                    D_8012313C[0].rollTargetInit = -D_8012313C[0].rollTargetInit;
                    D_8012313C[0].atTargetInit.y = -D_8012313C[0].atTargetInit.y;
                    D_8012313C[0].eyeTargetInit.y = -D_8012313C[0].eyeTargetInit.y;
                    D_8012313C[1].atTargetInit.y = -D_8012313C[1].atTargetInit.y;
                }
                demoInfo->keyFrames = D_8012313C;
                demoInfo->keyFrameCnt = 3;
            }
            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            sPrevFrameDemo1100 = globalCtx->state.frames;

        } break;
        case 0x264E:
            demoCam->timer = -99;
            if (func_800C0CB8(globalCtx)) {
                func_800C0808(globalCtx, camIdx, player, CAM_SET_ITEM2);
                demoCam->data2 = 0xC;
            } else {
                Gameplay_CopyCamera(globalCtx, camIdx, 0);
                Gameplay_CameraChangeSetting(globalCtx, camIdx, CAM_SET_FREE2);
            }
            break;
        case 0x26B4:
            if (func_800C0CB8(globalCtx)) {
                D_801231B4[0].eyeTargetInit.z = D_801231B4[1].eyeTargetInit.z = LINK_IS_CHILD ? 100.0f : 120.0f;

                if (player->stateFlags1 & 0x08000000) {
                    D_801231B4[2].atTargetInit.z = 0.0f;
                }
                Actor_GetWorldPosShapeRot(&spA0, &player->actor);
                OLib_Vec3fDiffToVecSphGeo(&spD0, &spA0.pos, &mainCam->at);
                spD0.yaw -= spA0.rot.y;
                OLib_VecSphGeoToVec3f(&D_801231B4[3].atTargetInit, &spD0);
                OLib_Vec3fDiffToVecSphGeo(&spD0, &spA0.pos, &mainCam->eye);
                spD0.yaw -= spA0.rot.y;
                OLib_VecSphGeoToVec3f(&D_801231B4[3].eyeTargetInit, &spD0);
                D_801231B4[3].fovTargetInit = mainCam->fov;
                D_801231B4[3].timerInit = timer - 50;

                demoInfo->keyFrames = D_801231B4;
                demoInfo->keyFrameCnt = 4;

                func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            } else {
                D_80123254[1].timerInit = timer - 1;
                D_80123254[0].fovTargetInit = mainCam->fov;
                D_80123254[0].atTargetInit = D_80123254[1].atTargetInit = mainCam->at;
                D_80123254[0].eyeTargetInit = D_80123254[1].eyeTargetInit = mainCam->eye;

                demoInfo->keyFrames = D_80123254;
                demoInfo->keyFrameCnt = 2;

                func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            }
            break;
        case 0x3E8:
            D_801232A4[0].atTargetInit = globalCtx->view.lookAt;
            D_801232A4[0].eyeTargetInit = globalCtx->view.eye;
            D_801232A4[0].fovTargetInit = globalCtx->view.fovy;

            demoInfo->keyFrames = D_801232A4;
            demoInfo->keyFrameCnt = 1;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x219B:
            demoInfo->keyFrames = D_801232CC;
            demoInfo->keyFrameCnt = 5;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x219C:
            demoInfo->keyFrames = D_80123394;
            demoInfo->keyFrameCnt = 5;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0xFA0:
            demoInfo->keyFrames = D_8012345C;
            demoInfo->keyFrameCnt = 4;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0xFAA:
            demoInfo->keyFrames = D_801234FC;
            demoInfo->keyFrameCnt = 5;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0xFAB:
            demoInfo->keyFrames = D_801235C4;
            demoInfo->keyFrameCnt = 5;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0xFB4:
            demoInfo->keyFrames = D_8012368C;
            demoInfo->keyFrameCnt = 4;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0xFB5:
            demoInfo->keyFrames = D_8012372C;
            demoInfo->keyFrameCnt = 4;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0xFB6:
            demoCam->timer = D_801237CC[0].timerInit + D_801237CC[3].timerInit + D_801237CC[1].timerInit +
                             D_801237CC[2].timerInit + D_801237CC[4].timerInit;

            demoInfo->keyFrames = D_801237CC;
            demoInfo->keyFrameCnt = 5;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x25E7:
            D_80123894[0].atTargetInit = globalCtx->view.lookAt;
            D_80123894[0].eyeTargetInit = globalCtx->view.eye;
            D_80123894[0].fovTargetInit = globalCtx->view.fovy;
            if (LINK_IS_ADULT) {
                D_80123894[1].atTargetInit.y = 60.0f;
                D_80123894[1].eyeTargetInit.y = 52.0f;
            }

            demoInfo->keyFrames = D_80123894;
            demoInfo->keyFrameCnt = 3;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x25E8:
            D_8012390C[0].atTargetInit = globalCtx->view.lookAt;
            D_8012390C[0].eyeTargetInit = globalCtx->view.eye;
            D_8012390C[0].fovTargetInit = globalCtx->view.fovy;

            demoInfo->keyFrames = D_8012390C;
            demoInfo->keyFrameCnt = 2;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x25E9:
            D_8012395C[0].atTargetInit = globalCtx->view.lookAt;
            D_8012395C[0].eyeTargetInit = globalCtx->view.eye;
            D_8012395C[0].fovTargetInit = globalCtx->view.fovy;

            demoInfo->keyFrames = D_8012395C;
            demoInfo->keyFrameCnt = 3;

            func_800C0808(globalCtx, camIdx, player, CAM_SET_DEMOC);
            break;
        case 0x13F6:
            D_801239D4[1].timerInit = 10;

            demoInfo->keyFrames = D_801239D4;
            demoInfo->keyFrameCnt = 3;

            func_800C0808(globalCtx, camIdx, (Player*)actor, CAM_SET_DEMOC);
            break;
        default:
            osSyncPrintf(VT_COL(RED, WHITE) "onepointdemo camera: demo number not found !! (%d)\n" VT_RST, demoId);
            break;
    }
    return 0;
}

s16 OnePointDemo_SetAsChild(GlobalContext* globalCtx, s16 newCamIdx, s16 parentCamIdx) {
    s16 prevCamIdx = globalCtx->cameraPtrs[parentCamIdx]->childCamIdx;

    globalCtx->cameraPtrs[newCamIdx]->parentCamIdx = parentCamIdx;
    globalCtx->cameraPtrs[parentCamIdx]->childCamIdx = newCamIdx;

    return prevCamIdx;
}

s32 OnePointDemo_RemoveCamera(GlobalContext* globalCtx, s16 camIdx) {
    Camera* camera = globalCtx->cameraPtrs[camIdx];
    s32 nextCamIdx;

    if (camera->thisIdx == CHILD_CAM(camera)->parentCamIdx) {
        CHILD_CAM(camera)->parentCamIdx = camera->parentCamIdx;
    }
    if (camera->thisIdx == PARENT_CAM(camera)->childCamIdx) {
        PARENT_CAM(camera)->childCamIdx = camera->childCamIdx;
    }
    nextCamIdx = (globalCtx->activeCamera == camIdx) ? camera->parentCamIdx : SUBCAM_INVALID;
    camera->parentCamIdx = CAM_INDEX_MAIN;
    camera->childCamIdx = camera->parentCamIdx;
    camera->timer = -1;
    Gameplay_ClearCamera(camera->globalCtx, camera->thisIdx);
    return nextCamIdx;
}

#define vChildCamIdx temp2
#define vDemoStatus temp1
#define vCurCamIdx temp2
#define vNextCamIdx temp1

s16 OnePointDemo_Init(GlobalContext* globalCtx, s16 demoId, s16 timer, Actor* actor, s16 parentCamIdx) {
    s16 temp1;
    s16 temp2;
    s16 demoCamIdx;
    Camera* demoCam;

    if (parentCamIdx == SUBCAM_INVALID) {
        parentCamIdx = globalCtx->activeCamera;
    }
    demoCamIdx = Gameplay_CreateSubCamera(globalCtx);
    if (demoCamIdx == SUBCAM_INVALID) {
        osSyncPrintf(VT_COL(RED, WHITE) "onepoint demo: error: too many cameras ... give up! type=%d\n" VT_RST, demoId);
        return SUBCAM_INVALID;
    }

    // Inserts a demo camera into the demo list

    vChildCamIdx = globalCtx->cameraPtrs[parentCamIdx]->childCamIdx;
    vDemoStatus = CAM_STAT_ACTIVE;
    if (vChildCamIdx >= SUBCAM_FIRST) {
        OnePointDemo_SetAsChild(globalCtx, vChildCamIdx, demoCamIdx);
        vDemoStatus = CAM_STAT_WAIT;
    } else {
        Interface_ChangeAlpha(2);
    }
    OnePointDemo_SetAsChild(globalCtx, demoCamIdx, parentCamIdx);

    demoCam = globalCtx->cameraPtrs[demoCamIdx];

    demoCam->timer = timer;
    demoCam->target = actor;

    demoCam->at = globalCtx->view.lookAt;
    demoCam->eye = globalCtx->view.eye;
    demoCam->fov = globalCtx->view.fovy;

    demoCam->demoId = demoId;

    if (parentCamIdx == CAM_INDEX_MAIN) {
        Gameplay_ChangeCameraStatus(globalCtx, parentCamIdx, CAM_STAT_UNK3);
    } else {
        Gameplay_ChangeCameraStatus(globalCtx, parentCamIdx, CAM_STAT_WAIT);
    }
    OnePointDemo_SetInfo(globalCtx, demoCamIdx, demoId, actor, timer);
    Gameplay_ChangeCameraStatus(globalCtx, demoCamIdx, vDemoStatus);

    // Removes lower priority child demos
    vCurCamIdx = demoCamIdx;
    vNextCamIdx = globalCtx->cameraPtrs[demoCamIdx]->childCamIdx;

    while (vNextCamIdx >= SUBCAM_FIRST) {
        s16 nextDemoId = globalCtx->cameraPtrs[vNextCamIdx]->demoId;
        s16 thisDemoId = globalCtx->cameraPtrs[demoCamIdx]->demoId;

        if ((nextDemoId / 100) < (thisDemoId / 100)) {
            osSyncPrintf(VT_COL(YELLOW, BLACK) "onepointdemo camera[%d]: killed 'coz low priority (%d < %d)\n" VT_RST,
                         vNextCamIdx, nextDemoId, thisDemoId);
            if (globalCtx->cameraPtrs[vNextCamIdx]->demoId != 0x1392) {
                if ((vNextCamIdx = OnePointDemo_RemoveCamera(globalCtx, vNextCamIdx)) != SUBCAM_INVALID) {
                    Gameplay_ChangeCameraStatus(globalCtx, vNextCamIdx, CAM_STAT_ACTIVE);
                }
            } else {
                vCurCamIdx = vNextCamIdx;
                OnePointDemo_EndDemo(globalCtx, vNextCamIdx);
            }
        } else {
            vCurCamIdx = vNextCamIdx;
        }
        vNextCamIdx = globalCtx->cameraPtrs[vCurCamIdx]->childCamIdx;
    }
    return demoCamIdx;
}

// Ends the onepointdemo in camIdx by setting its timer to 0. For attention demos, it is set to 5 instead.
s16 OnePointDemo_EndDemo(GlobalContext* globalCtx, s16 camIdx) {
    if (camIdx == SUBCAM_INVALID) {
        camIdx = globalCtx->activeCamera;
    }
    if (globalCtx->cameraPtrs[camIdx] != NULL) {
        osSyncPrintf("onepointdemo camera[%d]: delete timer=%d next=%d\n", camIdx, globalCtx->cameraPtrs[camIdx]->timer,
                     globalCtx->cameraPtrs[camIdx]->parentCamIdx);
        if (globalCtx->cameraPtrs[camIdx]->demoId == 0x1392) {
            globalCtx->cameraPtrs[camIdx]->timer = 5;
        } else {
            globalCtx->cameraPtrs[camIdx]->timer = 0;
        }
    }
    return camIdx;
}

#define vTargetCat temp1
#define vParentCamIdx temp1
#define vLastHigherCat temp2
#define vDemoCamIdx temp2

// Adds an attention demo to the demo list. Lower category actors have their demos play first.
s32 OnePointDemo_Attention(GlobalContext* globalCtx, Actor* actor) {
    Camera* sp3C;
    s32 temp1;
    s32 temp2;
    s32 timer;

    if (sDisableAttention) {
        osSyncPrintf(VT_COL(YELLOW, BLACK) "actor attention demo camera: canceled by other camera\n" VT_RST);
        return SUBCAM_INVALID;
    }
    sUnused = -1;

    sp3C = globalCtx->cameraPtrs[CAM_INDEX_MAIN];
    if (sp3C->mode == CAM_MODE_BOOMFOLLLOW) {
        osSyncPrintf(VT_COL(YELLOW, BLACK) "actor attention demo camera: change mode BOOKEEPON -> NORMAL\n" VT_RST);
        Camera_ChangeMode(sp3C, CAM_MODE_NORMAL);
    }

    // Finds the camera of the first actor attention demo with a lower category actor, or the first non-attention demo after at least one attention demo.

    vLastHigherCat = ACTORCAT_UNDEFINED;
    while (sp3C->childCamIdx != SUBCAM_NONE) {
        sp3C = globalCtx->cameraPtrs[sp3C->childCamIdx];
        if (sp3C == NULL) {
            break;
        } else if (sp3C->setting != CAM_SET_DEMO4) {
            if (vLastHigherCat == ACTORCAT_UNDEFINED) {
                continue;
            } else {
                break;
            }
        } else {
            vTargetCat = sp3C->target->category;
            if (actor->category > vTargetCat) {
                break;
            }
            vLastHigherCat = vTargetCat;
        }
    }
    // Actorcat is only undefined if the actor is in a higher category than all other attention demos. In this case, it goes on the bottom of the demo stack. Otherwise, it goes in the index found in the loop.
    vParentCamIdx = (vLastHigherCat == ACTORCAT_UNDEFINED) ? CAM_INDEX_MAIN : sp3C->thisIdx;

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
            osSyncPrintf(VT_COL(YELLOW, BLACK) "actor attention demo camera: %d: unkown part of actor %d\n" VT_RST,
                         globalCtx->state.frames, actor->category);
            timer = 30;
            break;
    }
    osSyncPrintf(VT_FGCOL(CYAN) "%06u:" VT_RST " actor attention demo camera: request %d ", globalCtx->state.frames,
                 actor->category);

    // If the previous attention demo has the same category, skip this actor.
    if (actor->category == vLastHigherCat) {
        osSyncPrintf("→ " VT_FGCOL(PURPLE) "×" VT_RST " (%d)\n", actor->id);
        return SUBCAM_INVALID;
    }
    osSyncPrintf("→ " VT_FGCOL(BLUE) "○" VT_RST " (%d)\n", actor->id);
    vDemoCamIdx = OnePointDemo_Init(globalCtx, 0x1392, timer, actor, vParentCamIdx);
    if (vDemoCamIdx == SUBCAM_INVALID) {
        osSyncPrintf(VT_COL(RED, WHITE) "actor attention demo: give up! \n" VT_RST, actor->id);
        return SUBCAM_INVALID;
    } else {
        s32* data = (s32*)&globalCtx->cameraPtrs[vDemoCamIdx]->data1;

        *data = NA_SE_SY_CORRECT_CHIME;
        return vDemoCamIdx;
    }
}

// Adds an attention demo to the list with the specified sound effect
s32 OnePointDemo_AttentionSetSfx(GlobalContext* globalCtx, Actor* actor, s32 sfxId) {
    s32 demoCamIdx = OnePointDemo_Attention(globalCtx, actor);

    if (demoCamIdx != SUBCAM_INVALID) {
        s32* data = (s32*)&globalCtx->cameraPtrs[demoCamIdx]->data1;

        *data = sfxId;
    }
    return demoCamIdx;
}

// unused
void OnePointDemo_EnableAttention() {
    sDisableAttention = false;
}

// unused
void OnePointDemo_DisableAttention() {
    sDisableAttention = true;
}

s32 OnePointDemo_CheckForCategory(GlobalContext* globalCtx, s32 category) {
    Camera* sp3C = globalCtx->cameraPtrs[CAM_INDEX_MAIN];

    while (sp3C->childCamIdx != SUBCAM_NONE) {
        sp3C = globalCtx->cameraPtrs[sp3C->childCamIdx];
        if ((sp3C == NULL) || (sp3C->setting != CAM_SET_DEMO4)) {
            break;
        } else if (category == sp3C->target->category) {
            return true;
        }
    }
    return false;
}

// unused, also empty.
void OnePointDemo_Noop(GlobalContext* globalCtx, UNK_TYPE arg1) {
}
