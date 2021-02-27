#include "global.h"
#include "vt.h"
#include "overlays/actors/ovl_En_Sw/z_en_sw.h"

#define PARENT_CAM(cam) ((cam)->globalCtx->cameraPtrs[(cam)->parentCamIdx])
#define CHILD_CAM(cam) ((cam)->globalCtx->cameraPtrs[(cam)->childCamIdx])

void func_8007C680(Vec3f* vec1, Vec3f* vec2, VecSph* vecSph) {
    Vec3f sp24;
    Vec3f sp18;

    OLib_VecSphGeoToVec3f(&sp18, vecSph);

    sp24.x = vec2->x + sp18.x;
    sp24.y = vec2->y + sp18.y;
    sp24.z = vec2->z + sp18.z;
    if (vec1) {}
    *vec1 = sp24;
}

s16 func_8007C704(Vec3f* vec1, Vec3f* vec2) {
    return DEGF_TO_BINANG(RADF_TO_DEGF(Math_FAtan2F(vec2->x - vec1->x, vec2->z - vec1->z)));
}

void func_8007C76C(Vec3f* src, Vec3s* dst) {
    dst->x = src->x;
    dst->y = src->y;
    dst->z = src->z;
}

s32 func_8007C7A8(CollisionContext* colCtx, Vec3f* vec1, Vec3f* vec2) {
    Vec3f sp3C;
    s32 sp38;
    CollisionPoly* sp34 = NULL;

    return BgCheck_CameraLineTest1(colCtx, vec1, vec2, &sp3C, &sp34, 1, 1, 1, 0, &sp38);
}

f32 func_8007C7F8(CollisionContext* colCtx, Vec3f* pos) {
    CollisionPoly* poly;
    s32 bgId;

    return BgCheck_EntityRaycastFloor3(colCtx, &poly, &bgId, pos);
}

void func_8007C820(OnePointDemoCamera* onePointCamera, s16 actionParameters, s16 initTimer,
                   CutsceneCameraPoint* atPoints, CutsceneCameraPoint* eyePoints) {
    onePointCamera->atPoints = atPoints;
    onePointCamera->eyePoints = eyePoints;
    onePointCamera->actionParameters = actionParameters;
    onePointCamera->initTimer = initTimer;
}

#ifdef NON_MATCHING
s32 func_8007C850(GlobalContext* globalCtx, s16 arg1, s16 arg2, Actor* actor, s16 timer) {
    s32 i;
    Camera* temp_s0 = globalCtx->cameraPtrs[globalCtx->cameraPtrs[arg1]->childCamIdx];
    Camera* spDC = globalCtx->cameraPtrs[0];
    Player* player = spDC->player;
    VecSph spD0;
    f32 tempRand;
    Vec3f spC0;
    Vec3f spB4;
    PosRot spA0;
    PosRot sp8C;
    Camera* tempCam = globalCtx->cameraPtrs[arg1];
    Unique9OnePointDemo* sp84 = tempCam;
    s16 sp82;
    s16 sp80;
    s16 sp7E;
    s16 sp7C;
    s32 tempDiff;
    Actor* tempActor;

    switch (arg2) {
        case 0x3FC:
            if (timer < 20) {
                timer = 20;
            }
            D_801208EC[0].atTargetInit = globalCtx->view.lookAt;
            D_801208EC[0].eyeTargetInit = globalCtx->view.eye;
            D_801208EC[0].fovTargetInit = globalCtx->view.fovy;
            D_801208EC[1].atTargetInit = spDC->at;
            D_801208EC[1].eyeTargetInit = spDC->eye;
            D_801208EC[1].fovTargetInit = spDC->fov;
            D_801208EC[1].timerInit = timer - 1;
            tempCam->timer = timer + 1;
            D_801208EC[1].lerpStepScale = 1.0f / (0.5f * timer);

            ONEPOINTDEMO(tempCam)->keyFrames = D_801208EC;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 3;

            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 0x406:
            D_80120964[0].atTargetInit = globalCtx->view.lookAt;
            D_80120964[0].eyeTargetInit = globalCtx->view.eye;
            D_80120964[0].fovTargetInit = globalCtx->view.fovy;
            OLib_Vec3fDiffToVecSphGeo(&spD0, &spDC->at, &spDC->eye);
            D_80120964[1].eyeTargetInit.y = spD0.yaw * 0.00549325f;
            D_80120964[1].timerInit = timer - 1;

            ONEPOINTDEMO(tempCam)->keyFrames = D_80120964;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 2;

            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 0x1388:
            D_801209B4[0].atTargetInit = D_801209B4[1].atTargetInit = globalCtx->view.lookAt;
            D_801209B4[0].eyeTargetInit = globalCtx->view.eye;
            D_801209B4[0].fovTargetInit = D_801209B4[2].fovTargetInit = globalCtx->view.fovy;
            OLib_Vec3fDiffToVecSphGeo(&spD0, &actor->focus, &spDC->at);
            spD0.r = spDC->dist;
            func_8007C680(&D_801209B4[1].eyeTargetInit, &D_801209B4[1].atTargetInit, &spD0);
            D_801209B4[1].atTargetInit.y += 20.0f;
            ONEPOINTDEMO(tempCam)->keyFrames = D_801209B4;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 4;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 0x1392:
            func_800C0808(globalCtx, arg1, player, 0x2B);
            Gameplay_CameraSetAtEye(globalCtx, arg1, &spDC->at, &spDC->eye);
            tempCam->roll = 0;
            break;
        case 0x251C:
            ONEPOINTDEMO(tempCam)->keyFrames = D_80120A54;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 3;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 0x8D4:
            D_80120ACC[0].atTargetInit.x = D_80120ACC[2].atTargetInit.x = ((spDC->globalCtx->state.frames & 1) ? -10.0f : 10.0f) + (Rand_ZeroOne() * 8.0f);

            D_80120ACC[0].eyeTargetInit.x = D_80120ACC[2].eyeTargetInit.x = ((spDC->globalCtx->state.frames & 1) ? 20.0f : -20.0f) + (Rand_ZeroOne() * 5.0f);

            ONEPOINTDEMO(tempCam)->keyFrames = D_80120ACC;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 5;

            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 0x8DE:
            
            ONEPOINTDEMO(tempCam)->keyFrames = D_80120B94;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 11;
            
            i = 0;
            do {
                if (D_80120B94[i].actionFlags != 0x8F) {
                    D_80120B94[i].atTargetInit.x = Rand_ZeroOne() * 5.0f;
                    D_80120B94[i].atTargetInit.z = (Rand_ZeroOne() * 30.0f) + 10.0f;
                    D_80120B94[i].eyeTargetInit.x = (Rand_ZeroOne() * 100.0f) + 20.0f;
                    D_80120B94[i].eyeTargetInit.z = (Rand_ZeroOne() * 80.0f) + 50.0f;
                }
                i++;
            } while(i < sp84->keyFrameCnt - 3);
            

            D_80120B94[arg1 - 1].eyeTargetInit.y = ((spDC->globalCtx->state.frames & 1) ? 3.0f : -3.0f) + Rand_ZeroOne();
            func_800C0808(globalCtx, arg1, player, 0x3C);
            i = Quake_Add(tempCam, 5);
            Quake_SetSpeed(i, 0x190);
            Quake_SetQuakeValues(i, 4, 5, 0x28, 0x3C);
            Quake_SetCountdown(i, 0x640);
            break;
        case 0x8E8:
            // sp84 = tempCam;
            // sp84->keyFrames = D_80120D4C;
            // sp84->keyFrameCnt = 7;

            // ONEPOINTDEMO(tempCam)->keyFrames = D_80120D4C;
            // ONEPOINTDEMO(tempCam)->keyFrameCnt = 7;

            // for(i = 0; (i < sp84->keyFrameCnt - 3); i++) {
            //     if (D_80120D4C[i].actionFlags != 0x8F) {
            //         D_80120D4C[i].atTargetInit.x = Rand_ZeroOne() * 20.0f;
            //         D_80120D4C[i].atTargetInit.z = (Rand_ZeroOne() * 40.0f) + 10.0f;
            //         D_80120D4C[i].eyeTargetInit.x = (Rand_ZeroOne() * 40.0f) + 60.0f;
            //         D_80120D4C[i].eyeTargetInit.z = (Rand_ZeroOne() * 40.0f) + 80.0f;
            //     }
            // }
            
            ONEPOINTDEMO(tempCam)->keyFrames = D_80120D4C;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 7;

            i = 0;
            do {
                if (D_80120D4C[i].actionFlags != 0x8F) {
                    D_80120D4C[i].atTargetInit.x = Rand_ZeroOne() * 20.0f;
                    D_80120D4C[i].atTargetInit.z = (Rand_ZeroOne() * 40.0f) + 10.0f;
                    D_80120D4C[i].eyeTargetInit.x = (Rand_ZeroOne() * 40.0f) + 60.0f;
                    D_80120D4C[i].eyeTargetInit.z = (Rand_ZeroOne() * 40.0f) + 80.0f;
                }
                i++;
            } while(i < sp84->keyFrameCnt - 3);

            D_80120D4C[arg1 - 1].eyeTargetInit.y = ((spDC->globalCtx->state.frames & 1) ? 3.0f : -3.0f) + Rand_ZeroOne();
            func_800C0808(globalCtx, arg1, player, 0x3C);
            i = Quake_Add(tempCam, 5);
            Quake_SetSpeed(i, 0x190);
            Quake_SetQuakeValues(i, 2, 3, 0xC8, 0x32);
            Quake_SetCountdown(i, 0x270F);
            break;
        case 0x8AC:
            ONEPOINTDEMO(tempCam)->keyFrames = D_80120E64;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 8;

            func_800C0808(globalCtx, arg1, player, 0x3C);
            i = Quake_Add(tempCam, 5);
            Quake_SetSpeed(i, 0x190);
            Quake_SetQuakeValues(i, 2, 2, 0x32, 0);
            Quake_SetCountdown(i, 0x118);
            break;
        case 0x8B6:
            if (player->actor.world.pos.z < 1000.0f) {
                D_80120FA4[0].eyeTargetInit.x = -D_80120FA4[0].eyeTargetInit.x;
                D_80120FA4[2].eyeTargetInit.x = -D_80120FA4[2].eyeTargetInit.x;
            }
            ONEPOINTDEMO(tempCam)->keyFrames = D_80120FA4;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 6;

            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 0x924:
            ONEPOINTDEMO(tempCam)->keyFrames = D_80121094;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 3;

            func_800C0808(globalCtx, arg1, player, 0x3C);
            i = Quake_Add(tempCam, 5);
            Quake_SetSpeed(i, 0x190);
            Quake_SetQuakeValues(i, 2, 2, 0x32, 0);
            Quake_SetCountdown(i, 0x3C);
            break;
        case 0x92E:
            ONEPOINTDEMO(tempCam)->keyFrames = D_8012110C;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 3;

            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 0x898:
            func_8002F374(globalCtx, player, &sp82, &sp7E);
            func_8002F374(globalCtx, actor, &sp80, &sp7C);
            if ((sp82 > 0) && (sp82 < 0x140) && (sp7E > 0) && (sp7E < 0xF0) && (sp80 > 0) && (sp80 < 0x140) &&
                (sp7C > 0) && (sp7C < 0xF0) &&
                !func_8007C7A8(&globalCtx->colCtx, &actor->focus, &player->actor.focus)) {
                D_80121184[0].atTargetInit.x = (globalCtx->view.lookAt.x + actor->focus.pos.x) * 0.5f;
                D_80121184[0].atTargetInit.y = (globalCtx->view.lookAt.y + actor->focus.pos.y) * 0.5f;
                D_80121184[0].atTargetInit.z = (globalCtx->view.lookAt.z + actor->focus.pos.z) * 0.5f;
                D_80121184[0].eyeTargetInit = globalCtx->view.eye;
                D_80121184[0].eyeTargetInit.y = player->actor.focus.pos.y + 20.0f;
                D_80121184[0].fovTargetInit = spDC->fov * 0.75f;

                ONEPOINTDEMO(tempCam)->keyFrames = D_80121184;
                ONEPOINTDEMO(tempCam)->keyFrameCnt = 2;
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

                ONEPOINTDEMO(tempCam)->keyFrames = D_801211D4;
                ONEPOINTDEMO(tempCam)->keyFrameCnt = 2;
            }
            Gameplay_ChangeCameraStatus(globalCtx, 0, 3);
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 0x8F2:
            tempActor = player->rideActor;
            func_8002DF54(globalCtx, NULL, 8);
            if (tempActor != NULL) {
                tempActor->freezeTimer = 180;
            }

            ONEPOINTDEMO(tempCam)->keyFrames = D_80121224;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 6;

            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 0x1400:
            func_8002DF54(globalCtx, NULL, 8);
            ONEPOINTDEMO(tempCam)->keyFrames = D_80121314;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 1;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 0x119E:
            D_8012133C[0].eyeTargetInit = actor->world.pos;
            D_8012133C[0].eyeTargetInit.y = player->actor.world.pos.y + 40.0f;
            func_8002DF54(globalCtx, NULL, 8);
            ONEPOINTDEMO(tempCam)->keyFrames = D_8012133C;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 3;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 0x1194:
            Actor_GetFocus(&spA0, actor);
            spC0 = spA0.pos;
            spC0.y = func_8007C7F8(&globalCtx->colCtx, &spC0) + 40.0f;
            spD0.r = 150.0f;
            spD0.yaw = spA0.rot.y;
            spD0.pitch = 0x3E8;
            
            func_8007C680(&spB4, &spC0, &spD0);
            Gameplay_CameraChangeSetting(globalCtx, arg1, 0x22);
            Gameplay_CameraSetAtEye(globalCtx, arg1, &spC0, &spB4);
            func_8002DF54(globalCtx, NULL, 8);
            tempCam->roll = 0;
            tempCam->fov = 50.0f;
            if (tempCam->childCamIdx != 0) {
                func_800803F0(globalCtx, tempCam->childCamIdx);
            }
            break;
        case 0x8A2:
            OLib_Vec3fDiffToVecSphGeo(&spD0, &player->actor.world, &actor->world);
            D_801213B4[0].eyeTargetInit.y = D_801213B4[1].eyeTargetInit.y = D_801213B4[2].eyeTargetInit.y =
                D_801213B4[2].atTargetInit.y = spD0.yaw * 0.00549325f;
            if (Rand_ZeroOne() < 0.0f) {
                D_801213B4[3].eyeTargetInit.x = -D_801213B4[3].eyeTargetInit.x;
            }
            func_8002DF54(globalCtx, NULL, 8);
            ONEPOINTDEMO(tempCam)->keyFrames = D_801213B4;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 5;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 0x3F2:
            Gameplay_CameraChangeSetting(globalCtx, arg1, 0x22);
            Gameplay_CameraSetAtEye(globalCtx, arg1, &temp_s0->at, &temp_s0->eye);
            Gameplay_CameraSetFov(globalCtx, arg1, temp_s0->fov);
            Gameplay_SetCameraRoll(globalCtx, arg1, temp_s0->roll);
            break;
        case 0x2581:
            Gameplay_CameraChangeSetting(globalCtx, arg1, 0x2A);
            Gameplay_CameraChangeSetting(globalCtx, 0, spDC->prevSetting);
            func_8007C820(tempCam, D_80120430 | 0x1000, D_8012042C, D_80120308, D_80120398);
            break;
        case 0x2582:
            Gameplay_CameraChangeSetting(globalCtx, arg1, 0x2A);
            Gameplay_CameraChangeSetting(globalCtx, 0, spDC->prevSetting);
            func_8007C820(tempCam, D_80120430 | 0x1000, D_8012042C, D_80120308, D_80120434);
            break;
        case 75 + 0x1004:
            ONEPOINTDEMO(tempCam)->keyFrames = D_8012147C;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 4;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 80 + 0x1004:
            spC0.x = -1881.0f;
            spC0.y = 766.0f;
            spC0.z = -330.0f;
            spB4.x = -1979.0f;
            spB4.y = 703.0f;
            spB4.z = -269.0f;
            Gameplay_CameraChangeSetting(globalCtx, arg1, 0x22);
            Gameplay_CameraSetAtEye(globalCtx, arg1, &spC0, &spB4);
            tempCam->roll = 6;
            tempCam->fov = 75.0f;
            func_8002DF54(globalCtx, NULL, 8);
            break;
        case 30 + 0xBC2:
            func_8002DF54(globalCtx, NULL, 8);
            D_8012151C[0].timerInit = timer - 1;
            ONEPOINTDEMO(tempCam)->keyFrames = D_8012151C;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 2;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 10 + 0xBC2:
            D_8012156C[1].timerInit = timer - 1;
            if (spDC->globalCtx->state.frames & 1) {
                D_8012156C[0].atTargetInit.x = -D_8012156C[0].atTargetInit.x;
                D_8012156C[0].eyeTargetInit.x = -D_8012156C[0].eyeTargetInit.x;
                D_8012156C[1].atTargetInit.x = -D_8012156C[1].atTargetInit.x;
                D_8012156C[1].eyeTargetInit.x = -D_8012156C[1].eyeTargetInit.x;
            }
            tempRand = Rand_ZeroOne() * 15.0f;
            D_8012156C[0].eyeTargetInit.x += tempRand;
            D_8012156C[1].eyeTargetInit.x += tempRand;
            ONEPOINTDEMO(tempCam)->keyFrames = D_8012156C;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 2;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            func_8002DF54(globalCtx, NULL, 8);
            break;
        case 0 + 0xBC2:
            D_801215BC[0].timerInit = timer;
            ONEPOINTDEMO(tempCam)->keyFrames = D_801215BC;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 1;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 60 + 0xBC2:
            ONEPOINTDEMO(tempCam)->keyFrames = D_801215E4;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 10;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            i = Quake_Add(tempCam, 3);
            Quake_SetSpeed(i, 0x55F0);
            Quake_SetQuakeValues(i, 2, 0, 0xC8, 0);
            Quake_SetCountdown(i, 0xA);
            break;
        case 70 + 0xBC2:
            ONEPOINTDEMO(tempCam)->keyFrames = D_80121774;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 4;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 80 + 0xBC2:
            func_8002DF54(globalCtx, NULL, 8);
            ONEPOINTDEMO(tempCam)->keyFrames = D_80121814;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 4;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 90 + 0xBC2:
            VEC_SET(spB4, 0.0f, -280.0f, -1400.0f);
            
            Actor_GetFocus(&spA0, actor);
            spC0 = spA0.pos;
            func_800C0808(globalCtx, arg1, player, 0x39);
            Gameplay_CameraSetAtEye(globalCtx, arg1, &spC0, &spB4);
            tempCam->roll = 0;
            tempCam->fov = 70.0f;
            func_8002DF54(globalCtx, NULL, 8);
            break;
        case 90 + 0xCDA:
        case 55 + 0xBC2:
            ONEPOINTDEMO(tempCam)->keyFrames = D_801218B4;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 2;
            func_8002DF54(globalCtx, NULL, 8);
            func_800C0808(globalCtx, arg1, player, 0x3C);
            i = Quake_Add(tempCam, 1);
            Quake_SetSpeed(i, 0x5DC0);
            Quake_SetQuakeValues(i, 2, 0, 0, 0);
            Quake_SetCountdown(i, 0xA0);
            break;
        case 50 + 0xBC2:
            ONEPOINTDEMO(tempCam)->keyFrames = D_80121904;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 2;
            func_8002DF54(globalCtx, NULL, 8);
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 40 + 0xBC2:
            Gameplay_CameraChangeSetting(globalCtx, arg1, 0x2A);
            func_8002DF54(globalCtx, player, 5);
            func_8007C820(tempCam, D_80120304 | 0x2000, D_80120300, D_8012013C, D_8012021C);
            func_80078884(0x4802);
            func_8007C76C(&spDC->at, &D_8012013C[D_801202FC - 2].pos);
            func_8007C76C(&spDC->eye, &D_8012021C[D_801202FC - 2].pos);
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

            i = Quake_Add(spDC, 3);
            Quake_SetSpeed(i, 0x7530);
            Quake_SetQuakeValues(i, 2, 1, 1, 0);
            Quake_SetCountdown(i, 0xC8);
            break;
        case 110 + 0xBC2:
            ONEPOINTDEMO(tempCam)->keyFrames = D_80121954[-(timer + 101)];
            tempCam->timer = 100;
            tempCam->unk_14C |= 2;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 2;
            func_8002DF54(globalCtx, NULL, 8);
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 120 + 0xBC2:
            ONEPOINTDEMO(tempCam)->keyFrames = D_80121A44;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 12;
            func_8002DF54(globalCtx, NULL, 8);
            func_800C0808(globalCtx, arg1, player, 0x3C);
            tempCam->unk_14C |= 2;
            break;
        case 130 + 0xBC2:
            D_80121C24[0].atTargetInit = globalCtx->view.lookAt;
            D_80121C24[0].eyeTargetInit = globalCtx->view.eye;
            D_80121C24[0].fovTargetInit = globalCtx->view.fovy;

            ONEPOINTDEMO(tempCam)->keyFrames = D_80121C24;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 7;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 140 + 0xBC2:
            spC0.x = 1890.0f;
            spC0.y = 886.0f;
            spC0.z = -1432.0f;
            spB4.x = 1729.0f;
            spB4.y = 995.0f;
            spB4.z = -1405.0f;
            Gameplay_CameraChangeSetting(globalCtx, arg1, 0x22);
            Gameplay_CameraSetAtEye(globalCtx, arg1, &spC0, &spB4);
            tempCam->roll = 0x50;
            tempCam->fov = 55.0f;
            func_8002DF38(globalCtx, player, 8);
            break;
        case 160 + 0xBC2:
            // actor = actor;
            Actor_GetWorld(&spA0, actor);
            spC0 = spA0.pos;
            spD0.pitch = -0x5DC;
            spC0.y += 50.0f;
            spD0.r = 250.0f;
            Actor_GetWorld(&spA0, player);
            spD0.yaw = func_8007C704(&spC0, &spA0) - 0x7D0;
            func_8007C680(&spB4, &spC0, &spD0);
            Gameplay_CameraChangeSetting(globalCtx, arg1, 0x22);
            Gameplay_CameraSetAtEye(globalCtx, arg1, &spC0, &spB4);
            Gameplay_CopyCamera(globalCtx, 0, arg1);
            tempCam->roll = -1;
            tempCam->fov = 55.0f;
            func_8002DF38(globalCtx, actor, 1);
            break;
        case 150 + 0xBC2:
            Actor_GetWorld(&spA0, actor);
            spC0 = spA0.pos;
            spD0.pitch = 0;
            spD0.yaw = spA0.rot.y;
            spD0.r = 150.0f;
            func_8007C680(&spB4, &spC0, &spD0);
            Gameplay_CameraChangeSetting(globalCtx, arg1, 0x22);
            Gameplay_CameraSetAtEye(globalCtx, arg1, &spC0, &spB4);
            tempCam->roll = 0;
            tempCam->fov = 55.0f;
            func_8002DF38(globalCtx, player, 8);
            break;
        case 170 + 0xBC2:
            // actor = actor;
            Actor_GetWorldPosShapeRot(&spA0, actor);
            spC0 = spA0.pos;
            spC0.y += 120.0f;
            spD0.r = 300.0f;
            spD0.yaw = spA0.rot.y;
            spD0.pitch = -0xAF0;
            func_8007C680(&spB4, &spC0, &spD0);
            Gameplay_CameraChangeSetting(globalCtx, arg1, 0x22);
            Gameplay_CameraSetAtEye(globalCtx, arg1, &spC0, &spB4);
            tempCam->roll = 0;
            tempCam->fov = 60.0f;
            func_8002DF38(globalCtx, actor, 1);
            break;
        case 180 + 0xBC2:
            // actor = actor;
            Gameplay_CameraChangeSetting(globalCtx, arg1, 0x33);
            Camera_ChangeMode(spDC, 0);
            func_8002DF38(globalCtx, actor, 0xC);
            break;
        case 10 + 0xC94:
            // actor = actor;
            spC0.x = 120.0f;
            spC0.y = 265.0f;
            spC0.z = -1570.0f;
            spB4.x = 80.0f;
            spB4.y = 445.0f;
            spB4.z = -1425.0f;
            Gameplay_CameraChangeSetting(globalCtx, arg1, 0x22);
            Gameplay_CameraSetAtEye(globalCtx, arg1, &spC0, &spB4);
            tempCam->roll = 0x1E;
            tempCam->fov = 75.0f;
            func_8002DF38(globalCtx, player, 8);
            Actor_GetWorldPosShapeRot(&spA0, actor);
            Actor_GetFocus(&sp8C, player);
            spC0.x = sp8C.pos.x;
            spC0.y = sp8C.pos.y + 70.0f;
            spC0.z = sp8C.pos.z;
            OLib_Vec3fDiffToVecSphGeo(&spD0, &spA0.pos, &sp8C.pos);
            spD0.pitch = 0x5DC;
            spD0.r = 120.0f;
            func_8007C680(&spB4, &spC0, &spD0);
            Gameplay_CameraSetAtEye(globalCtx, 0, &spC0, &spB4);
            i = Quake_Add(tempCam, 3);
            Quake_SetSpeed(i, 0x55F0);
            Quake_SetQuakeValues(i, 1, 0, 0, 0);
            Quake_SetCountdown(i, 0x5A);
            break;
        case 0x177A:
            Actor_GetWorld(&spA0, actor);
            spC0 = spA0.pos;
            spD0.pitch = 0;
            spC0.y += 70.0f;
            spD0.yaw = spA0.rot.y + 0x7FFF;
            spD0.r = 300.0f;
            func_8007C680(&spB4, &spC0, &spD0);
            Gameplay_CameraChangeSetting(globalCtx, arg1, 0x22);
            Gameplay_CameraSetAtEye(globalCtx, arg1, &spC0, &spB4);
            tempCam->roll = 0;
            tempCam->fov = 45.0f;
            func_8002DF38(globalCtx, player, 8);
            break;
        case 0 + 0xC94:
            Actor_GetFocus(&spA0, actor);
            spC0 = spA0.pos;
            func_800C0808(globalCtx, arg1, player, 0x39);
            Actor_GetWorld(&spA0, player);
            OLib_Vec3fDiffToVecSphGeo(&spD0, &spC0, &spA0);
            spD0.yaw += 0x3E8;
            spD0.r = 400.0f;
            func_8007C680(&spB4, &spC0, &spD0);
            spB4.y = spA0.pos.y + 60.0f;
            Gameplay_CameraSetAtEye(globalCtx, arg1, &spC0, &spB4);
            tempCam->roll = 0;
            tempCam->fov = 75.0f;
            player->actor.shape.rot.y = player->actor.world.rot.y = player->currentYaw = spD0.yaw + 0x7FFF;
            func_8002DF54(globalCtx, NULL, 8);
            break;
        case 20 + 0xC94:
            D_80121D3C[2].timerInit = timer - 5;
            ONEPOINTDEMO(tempCam)->keyFrames = D_80121D3C;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 3;
            func_8002DF54(globalCtx, NULL, 8);
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 0x1771:
            // actor = actor;
            Gameplay_CameraChangeSetting(globalCtx, arg1, 0x2A);
            func_8002DF54(globalCtx, NULL, 8);
            Actor_GetWorld(&spA0, actor);
            if (spA0.pos.z > -750.0f) {
                func_8007C820(tempCam, D_801208E8, D_801208E4, D_801206A0, D_80120820);
            } else {
                func_8007C820(tempCam, D_801208E8, D_801208E4, D_801206A0, D_80120760);
            }
            i = Quake_Add(tempCam, 1);
            Quake_SetSpeed(i, 0x7D00);
            Quake_SetQuakeValues(i, 0, 0, 0x14, 0);
            Quake_SetCountdown(i, D_801208E4 - 10);
            break;
        case 110 + 0xCDA:
            Gameplay_CameraChangeSetting(globalCtx, arg1, 0x2A);
            func_8002DF38(globalCtx, player, 8);
            func_8007C820(tempCam, D_8012069C | 0x2000, D_80120698, D_801204D4, D_801205B4);
            func_8007C76C(&spDC->eye, &D_801205B4[D_80120694 - 2].pos);
            func_8007C76C(&spDC->at, &D_801204D4[D_80120694 - 2].pos);
            i = Quake_Add(tempCam, 1);
            Quake_SetSpeed(i, 0x4E20);
            Quake_SetQuakeValues(i, 1, 0, 0x32, 0);
            Quake_SetCountdown(i, D_80120698 - 20);
            break;
        case 100 + 0xCDA:
            player->actor.shape.rot.y = player->actor.world.rot.y = player->currentYaw = -0x3FD9;

            ONEPOINTDEMO(tempCam)->keyFrames = D_80121DB4;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 9;
            func_8002DF54(globalCtx, NULL, 8);
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 20 + 0xCDA:
            Gameplay_CameraChangeSetting(globalCtx, arg1, 0x31);
            func_8002DF54(globalCtx, NULL, 8);
            Gameplay_CopyCamera(globalCtx, arg1, 0);
            i = Quake_Add(tempCam, 1);
            Quake_SetSpeed(i, 0x7D00);
            Quake_SetQuakeValues(i, 2, 0, 0, 0);
            Quake_SetCountdown(i, timer);
            break;
        case 0 + 0xCDA:
            D_80121F1C[0].atTargetInit = globalCtx->view.lookAt;
            D_80121F1C[0].eyeTargetInit = globalCtx->view.eye;
            D_80121F1C[0].fovTargetInit = globalCtx->view.fovy;
            Actor_GetFocus(&spA0, actor);
            player->actor.shape.rot.y = player->actor.world.rot.y = player->currentYaw = spA0.rot.y;
            ONEPOINTDEMO(tempCam)->keyFrames = D_80121F1C;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 4;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            i = Quake_Add(tempCam, 3);
            Quake_SetSpeed(i, 0x2EE0);
            Quake_SetQuakeValues(i, 0, 0, 0x3E8, 0);
            Quake_SetCountdown(i, 5);
            break;
        case 50 + 0xCDA:
            D_80121FBC[0].atTargetInit = globalCtx->view.lookAt;
            D_80121FBC[0].eyeTargetInit = globalCtx->view.eye;
            D_80121FBC[0].fovTargetInit = globalCtx->view.fovy;
            ONEPOINTDEMO(tempCam)->keyFrames = D_80121FBC;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 4;
            func_8002DF54(globalCtx, NULL, 8);
            func_800C0808(globalCtx, arg1, player, 0x3C);
            i = Quake_Add(tempCam, 3);
            Quake_SetSpeed(i, 0x2EE0);
            Quake_SetQuakeValues(i, 0, 0, 0x3E8, 0);
            Quake_SetCountdown(i, 5);
            break;
        case 70 + 0xCDA:
            ONEPOINTDEMO(tempCam)->keyFrames = D_8012205C;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 3;
            func_8002DF38(globalCtx, player, 8);
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 60 + 0xCDA:
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
            ONEPOINTDEMO(tempCam)->keyFrames = D_801220D4;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 5;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 40 + 0xCDA:
            ONEPOINTDEMO(tempCam)->keyFrames = D_8012219C;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 7;
            func_8002DF38(globalCtx, player, 8);
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 120 + 0xCDA:
            ONEPOINTDEMO(tempCam)->keyFrames = D_801222B4;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 5;
            func_8002DF54(globalCtx, NULL, 8);
            func_800C0808(globalCtx, arg1, player, 0x3C);
            i = Quake_Add(tempCam, 1);
            Quake_SetSpeed(i, 0x7D00);
            Quake_SetQuakeValues(i, 4, 0, 0, 0);
            Quake_SetCountdown(i, 0x14);
            break;
        case 160 + 0xCDA:
            ONEPOINTDEMO(tempCam)->keyFrames = D_8012237C;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 2;
            func_8002DF38(globalCtx, player, 8);
            func_800C0808(globalCtx, arg1, player, 0x3C);
            i = Quake_Add(tempCam, 1);
            Quake_SetSpeed(i, 0x7D00);
            Quake_SetQuakeValues(i, 2, 0, 0, 0);
            Quake_SetCountdown(i, 0xA);
            break;
        case 150 + 0xCDA:
            ONEPOINTDEMO(tempCam)->keyFrames = D_801223CC;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 6;
            func_8002DF54(globalCtx, NULL, 8);
            func_800C0808(globalCtx, arg1, player, 0x3C);
            player->stateFlags1 |= 0x20000000;
            player->actor.freezeTimer = 90;
            i = Quake_Add(tempCam, 1);
            Quake_SetSpeed(i, 0x7D00);
            Quake_SetQuakeValues(i, 2, 0, 0, 0);
            Quake_SetCountdown(i, 0xA);
            break;
        case 140 + 0xCDA:
            ONEPOINTDEMO(tempCam)->keyFrames = D_801224BC;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 7;
            func_8002DF54(globalCtx, NULL, 8);
            func_800C0808(globalCtx, arg1, player, 0x3C);
            i = Quake_Add(tempCam, 1);
            Quake_SetSpeed(i, 0x7D00);
            Quake_SetQuakeValues(i, 1, 0, 0xA, 0);
            Quake_SetCountdown(i, 0x14);
            break;
        case 0 + 0x1004:
            ONEPOINTDEMO(tempCam)->keyFrames = D_801225D4;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 5;
            player->actor.shape.rot.y = player->actor.world.rot.y = player->currentYaw = 0x3FFC;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            func_8002DF54(globalCtx, NULL, 8);
            break;
        case 10 + 0x1004:
            ONEPOINTDEMO(tempCam)->keyFrames = D_8012269C;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 3;
            func_8002DF38(globalCtx, player, 8);
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 20 + 0x1004:
            func_8002DF54(globalCtx, NULL, 8);
            D_80122714[1].timerInit = 0x50;
            ONEPOINTDEMO(tempCam)->keyFrames = D_80122714;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 4;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 40 + 0x1004:
            ONEPOINTDEMO(tempCam)->keyFrames = D_801227B4;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 6;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            Camera_ChangeMode(spDC, 0);
            break;
        case 50 + 0x1004:
            ONEPOINTDEMO(tempCam)->keyFrames = D_801228A4;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 5;
            func_8002DF54(globalCtx, NULL, 8);
            Camera_ChangeMode(spDC, 0);
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 60 + 0x1004:
            ONEPOINTDEMO(tempCam)->keyFrames = D_8012296C;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 4;
            func_8002DF54(globalCtx, NULL, 8);
            Camera_ChangeMode(spDC, 0);
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 70 + 0x1004:
            ONEPOINTDEMO(tempCam)->keyFrames = D_80122A0C;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 2;
            func_8002DF54(globalCtx, NULL, 8);
            Camera_ChangeMode(spDC, 0);
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 90 + 0x1004:
            ONEPOINTDEMO(tempCam)->keyFrames = D_80122A5C;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 8;
            func_8002DF38(globalCtx, player, 8);
            Camera_ChangeMode(spDC, 0);
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 100 + 0x1004:
            ONEPOINTDEMO(tempCam)->keyFrames = D_80122B9C;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 3;
            func_8002DF38(globalCtx, player, 8);
            Camera_ChangeMode(spDC, 0);
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 110 + 0x1004:
            player->actor.freezeTimer = timer;
            ONEPOINTDEMO(tempCam)->keyFrames = D_80122C14;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 1;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            i = Quake_Add(tempCam, 3);
            Quake_SetSpeed(i, 0x2EE0);
            Quake_SetQuakeValues(i, 0, 1, 0x64, 0);
            Quake_SetCountdown(i, timer - 0x50);
            break;
        case 120 + 0x1004:
            if (player->actor.world.pos.z < -15.0f) {
                ONEPOINTDEMO(tempCam)->keyFrames = D_80122C3C;
            } else {
                ONEPOINTDEMO(tempCam)->keyFrames = D_80122C64;
            }
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 1;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            func_8002DF38(globalCtx, player, 1);
            i = Quake_Add(tempCam, 3);
            Quake_SetSpeed(i, 0x2EE0);
            Quake_SetQuakeValues(i, 0, 1, 0xA, 0);
            Quake_SetCountdown(i, timer - 0xA);
            break;
        case 121 + 0x1004:
            ONEPOINTDEMO(tempCam)->keyFrames = D_80122C8C;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 1;
            func_8002DF54(globalCtx, NULL, 8);
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 40 + 0xC94:
            func_8002DF54(globalCtx, NULL, 8);
            D_80122CB4[1].timerInit = timer - 5;
            ONEPOINTDEMO(tempCam)->keyFrames = D_80122CB4;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 2;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 41 + 0xC94:
            func_8002DF54(globalCtx, NULL, 8);
            D_80122D04[1].timerInit = timer - 10;
            ONEPOINTDEMO(tempCam)->keyFrames = D_80122D04;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 2;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 0x1F4A:
            ONEPOINTDEMO(tempCam)->keyFrames = D_80122D54;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 3;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 0x1F42:
            ONEPOINTDEMO(tempCam)->keyFrames = D_80122DCC;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 3;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 0x21FC:
            Actor_GetFocus(&spA0, actor);
            Actor_GetFocus(&sp8C, player);
            D_80122E44[timer & 1][0].atTargetInit.y = ((spA0.pos.y - sp8C.pos.y) / 10.0f) + 90.0f;
            D_80122E44[timer & 1][5].atTargetInit = spDC->at;
            ONEPOINTDEMO(tempCam)->keyFrames = D_80122E44[timer & 1];
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 7;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 0x44C:
            tempDiff = globalCtx->state.frames - D_80120138;
            if (((tempDiff) > 3600) || (tempDiff < -3600)) {
                ONEPOINTDEMO(tempCam)->keyFrames = D_80123074;
                ONEPOINTDEMO(tempCam)->keyFrameCnt = 5;
            } else {
                if (globalCtx->state.frames & 1) {
                    D_8012313C[0].rollTargetInit = -D_8012313C[0].rollTargetInit;
                    D_8012313C[0].atTargetInit.y = -D_8012313C[0].atTargetInit.y;
                    D_8012313C[0].eyeTargetInit.y = -D_8012313C[0].eyeTargetInit.y;
                    D_8012313C[1].atTargetInit.y = -D_8012313C[1].atTargetInit.y;
                }
                ONEPOINTDEMO(tempCam)->keyFrames = D_8012313C;
                ONEPOINTDEMO(tempCam)->keyFrameCnt = 3;
            }
            func_800C0808(globalCtx, arg1, player, 0x3C);
            D_80120138 = globalCtx->state.frames;
            break;
        case 0x264E:
            tempCam->timer = -99;
            if (func_800C0CB8(globalCtx) != 0) {
                func_800C0808(globalCtx, arg1, player, 0x38);
                tempCam->data2 = 0xC;
            } else {
                Gameplay_CopyCamera(globalCtx, arg1, 0);
                Gameplay_CameraChangeSetting(globalCtx, arg1, 0x22);
            }
            break;
        case 0x26B4:
            if (func_800C0CB8(globalCtx) != 0) {
                D_801231B4[0].eyeTargetInit.z = D_801231B4[1].eyeTargetInit.z = LINK_IS_CHILD ? 100.0f : 120.0f;

                if (player->stateFlags1 & 0x08000000) {
                    D_801231B4[2].atTargetInit.z = 0.0f;
                }
                Actor_GetWorldPosShapeRot(&spA0, player);
                OLib_Vec3fDiffToVecSphGeo(&spD0, &spA0, &spDC->at);
                spD0.yaw -= spA0.rot.y;
                OLib_VecSphGeoToVec3f(&D_801231B4[3].atTargetInit, &spD0);
                OLib_Vec3fDiffToVecSphGeo(&spD0, &spA0, &spDC->eye);
                spD0.yaw -= spA0.rot.y;
                OLib_VecSphGeoToVec3f(&D_801231B4[3].eyeTargetInit, &spD0);
                D_801231B4[3].fovTargetInit = spDC->fov;
                D_801231B4[3].timerInit = timer - 50;
                ONEPOINTDEMO(tempCam)->keyFrames = D_801231B4;
                ONEPOINTDEMO(tempCam)->keyFrameCnt = 4;
                func_800C0808(globalCtx, arg1, player, 0x3C);
            } else {
                D_80123254[1].timerInit = timer - 1;
                D_80123254[0].fovTargetInit = spDC->fov;
                D_80123254[0].atTargetInit = D_80123254[1].atTargetInit = spDC->at;
                D_80123254[0].eyeTargetInit = D_80123254[1].eyeTargetInit = spDC->eye;
                ONEPOINTDEMO(tempCam)->keyFrames = D_80123254;
                ONEPOINTDEMO(tempCam)->keyFrameCnt = 2;
                func_800C0808(globalCtx, arg1, player, 0x3C);
            }
            break;
        case 0x3E8:
            D_801232A4[0].atTargetInit = globalCtx->view.lookAt;
            D_801232A4[0].eyeTargetInit = globalCtx->view.eye;
            D_801232A4[0].fovTargetInit = globalCtx->view.fovy;
            ONEPOINTDEMO(tempCam)->keyFrames = D_801232A4;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 1;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 0x219B:
            ONEPOINTDEMO(tempCam)->keyFrames = D_801232CC;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 5;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 0x219C:
            ONEPOINTDEMO(tempCam)->keyFrames = D_80123394;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 5;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 0 + 0xFA0:
            ONEPOINTDEMO(tempCam)->keyFrames = D_8012345C;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 4;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 10 + 0xFA0:
            ONEPOINTDEMO(tempCam)->keyFrames = D_801234FC;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 5;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 11 + 0xFA0:
            ONEPOINTDEMO(tempCam)->keyFrames = D_801235C4;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 5;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 20 + 0xFA0:
            ONEPOINTDEMO(tempCam)->keyFrames = D_8012368C;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 4;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 21 + 0xFA0:
            ONEPOINTDEMO(tempCam)->keyFrames = D_8012372C;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 4;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 22 + 0xFA0:
            tempCam->timer = D_801237CC[0].timerInit + D_801237CC[3].timerInit + D_801237CC[1].timerInit +
                          D_801237CC[2].timerInit + D_801237CC[4].timerInit;
            ONEPOINTDEMO(tempCam)->keyFrames = D_801237CC;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 5;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 0x25E7:
            D_80123894[0].atTargetInit = globalCtx->view.lookAt;
            D_80123894[0].eyeTargetInit = globalCtx->view.eye;
            D_80123894[0].fovTargetInit = globalCtx->view.fovy;
            if (LINK_IS_ADULT) {
                D_80123894[1].atTargetInit.y = 60.0f;
                D_80123894[1].eyeTargetInit.y = 52.0f;
            }
            ONEPOINTDEMO(tempCam)->keyFrames = D_80123894;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 3;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 0x25E8:
            D_8012390C[0].atTargetInit = globalCtx->view.lookAt;
            D_8012390C[0].eyeTargetInit = globalCtx->view.eye;
            D_8012390C[0].fovTargetInit = globalCtx->view.fovy;
            ONEPOINTDEMO(tempCam)->keyFrames = D_8012390C;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 2;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 0x25E9:
            D_8012395C[0].atTargetInit = globalCtx->view.lookAt;
            D_8012395C[0].eyeTargetInit = globalCtx->view.eye;
            D_8012395C[0].fovTargetInit = globalCtx->view.fovy;
            ONEPOINTDEMO(tempCam)->keyFrames = D_8012395C;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 3;
            func_800C0808(globalCtx, arg1, player, 0x3C);
            break;
        case 0x13F6:
            D_801239D4[1].timerInit = 10;
            ONEPOINTDEMO(tempCam)->keyFrames = D_801239D4;
            ONEPOINTDEMO(tempCam)->keyFrameCnt = 3;
            func_800C0808(globalCtx, arg1, actor, 0x3C);
            break;
        default:
            osSyncPrintf(VT_COL(RED, WHITE) "onepointdemo camera: demo number not found !! (%d)\n" VT_RST, arg2);
            break;
    }
    return 0;
}
#else
s32 func_8007C850(GlobalContext* globalCtx, s16 arg1, s16 arg2, Actor* actor, s16 timer);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_onepointdemo/func_8007C850.s")
#endif

s16 func_8007FFE0(GlobalContext* globalCtx, s16 camIdx1, s16 camIdx2) {
    s16 temp_ret = globalCtx->cameraPtrs[camIdx2]->childCamIdx;

    globalCtx->cameraPtrs[camIdx1]->parentCamIdx = camIdx2;
    globalCtx->cameraPtrs[camIdx2]->childCamIdx = camIdx1;

    return temp_ret;
}

s32 func_80080024(GlobalContext* globalCtx, s16 camIdx) {
    Camera* camera = globalCtx->cameraPtrs[camIdx];
    s32 phi_v1;

    if (camera->thisIdx == CHILD_CAM(camera)->parentCamIdx) {
        CHILD_CAM(camera)->parentCamIdx = camera->parentCamIdx;
    }
    if (camera->thisIdx == PARENT_CAM(camera)->childCamIdx) {
        PARENT_CAM(camera)->childCamIdx = camera->childCamIdx;
    }
    phi_v1 = (globalCtx->activeCamera == camIdx) ? camera->parentCamIdx : -1;
    camera->parentCamIdx = 0;
    camera->childCamIdx = camera->parentCamIdx;
    camera->timer = -1;
    Gameplay_ClearCamera(camera->globalCtx, camera->thisIdx);
    return phi_v1;
}

s16 func_800800F8(GlobalContext* globalCtx, s16 csID, s16 timer, Actor* actor, s16 camIdx) {
    s16 temp_a2;
    s16 temp_a3;
    s16 sp42;
    s16 phi_s0_2;
    s16 phi_s2;
    Camera* tempC;

    if (camIdx == -1) {
        camIdx = globalCtx->activeCamera;
    }
    sp42 = Gameplay_CreateSubCamera(globalCtx);
    if (sp42 == -1) {
        osSyncPrintf(VT_COL(RED, WHITE) "onepoint demo: error: too many cameras ... give up! type=%d\n" VT_RST, csID);
        return -1;
    }
    phi_s0_2 = 7;
    phi_s2 = globalCtx->cameraPtrs[camIdx]->childCamIdx;
    if (phi_s2 > 0) {
        func_8007FFE0(globalCtx, phi_s2, sp42);
        phi_s0_2 = 1;
    } else {
        Interface_ChangeAlpha(2);
    }
    func_8007FFE0(globalCtx, sp42, camIdx);

    tempC = globalCtx->cameraPtrs[sp42];

    tempC->timer = timer;
    tempC->target = actor;

    tempC->at = globalCtx->view.lookAt;
    tempC->eye = globalCtx->view.eye;
    tempC->fov = globalCtx->view.fovy;

    tempC->unk_168 = csID;

    if (camIdx == 0) {
        Gameplay_ChangeCameraStatus(globalCtx, camIdx, 3);
    } else {
        Gameplay_ChangeCameraStatus(globalCtx, camIdx, 1);
    }
    func_8007C850(globalCtx, sp42, csID, actor, timer);
    Gameplay_ChangeCameraStatus(globalCtx, sp42, phi_s0_2);

    phi_s0_2 = globalCtx->cameraPtrs[sp42]->childCamIdx;

    phi_s2 = sp42;
    while (phi_s0_2 > 0) {
        temp_a2 = globalCtx->cameraPtrs[phi_s0_2]->unk_168;
        temp_a3 = globalCtx->cameraPtrs[sp42]->unk_168;
        if ((temp_a2 / 100) < (temp_a3 / 100)) {
            osSyncPrintf(VT_COL(YELLOW, BLACK) "onepointdemo camera[%d]: killed 'coz low priority (%d < %d)\n" VT_RST,
                         phi_s0_2, temp_a2, temp_a3);
            if (globalCtx->cameraPtrs[phi_s0_2]->unk_168 != 0x1392) {
                if ((phi_s0_2 = func_80080024(globalCtx, phi_s0_2)) != -1) {
                    Gameplay_ChangeCameraStatus(globalCtx, phi_s0_2, 7);
                }
            } else {
                phi_s2 = phi_s0_2;
                func_800803F0(globalCtx, phi_s0_2);
            }
        } else {
            phi_s2 = phi_s0_2;
        }
        phi_s0_2 = globalCtx->cameraPtrs[phi_s2]->childCamIdx;
    }
    return sp42;
}

s16 func_800803F0(GlobalContext* globalCtx, s16 camIdx) {
    if (camIdx == -1) {
        camIdx = globalCtx->activeCamera;
    }
    if (globalCtx->cameraPtrs[camIdx] != NULL) {
        osSyncPrintf("onepointdemo camera[%d]: delete timer=%d next=%d\n", camIdx, globalCtx->cameraPtrs[camIdx]->timer,
                     globalCtx->cameraPtrs[camIdx]->parentCamIdx);
        if (globalCtx->cameraPtrs[camIdx]->unk_168 == 0x1392) {
            globalCtx->cameraPtrs[camIdx]->timer = 5;
        } else {
            globalCtx->cameraPtrs[camIdx]->timer = 0;
        }
    }
    return camIdx;
}

s32 func_80080480(GlobalContext* globalCtx, Actor* actor) {
    Camera* sp3C;
    s32 camIdx;
    s32 phi_a3_2;
    s32 timer;

    if (D_80120130 != 0) {
        osSyncPrintf(VT_COL(YELLOW, BLACK) "actor attention demo camera: canceled by other camera\n" VT_RST);
        return -1;
    }
    D_80120134 = -1;
    sp3C = globalCtx->cameraPtrs[0];
    if (sp3C->mode == 0x14) {
        osSyncPrintf(VT_COL(YELLOW, BLACK) "actor attention demo camera: change mode BOOKEEPON -> NORMAL\n" VT_RST);
        Camera_ChangeMode(sp3C, 0);
    }
    phi_a3_2 = -1;
    while (sp3C->childCamIdx != 0) {
        sp3C = globalCtx->cameraPtrs[sp3C->childCamIdx];
        if (sp3C == NULL) {
            break;
        }
        if (sp3C->setting != 0x2B) {
            if (phi_a3_2 == -1) {
                continue;
            } else {
                break;
            }
        } else {
            camIdx = sp3C->target->category;
            if (camIdx < actor->category) {
                break;
            }
            phi_a3_2 = camIdx;
        }
    }

    camIdx = (phi_a3_2 == -1) ? 0 : sp3C->thisIdx;

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
        default:
        case ACTORCAT_EXPLOSIVE:
        case ACTORCAT_ENEMY:
        case ACTORCAT_MISC:
        case ACTORCAT_BOSS:
            osSyncPrintf(VT_COL(YELLOW, BLACK) "actor attention demo camera: %d: unkown part of actor %d\n" VT_RST,
                         globalCtx->state.frames, actor->category);
            timer = 30;
            break;
    }
    osSyncPrintf(VT_FGCOL(CYAN) "%06u:" VT_RST " actor attention demo camera: request %d ", globalCtx->state.frames,
                 actor->category);
    if (phi_a3_2 == actor->category) {
        osSyncPrintf("→ " VT_FGCOL(PURPLE) "×" VT_RST " (%d)\n", actor->id);
        return -1;
    }
    osSyncPrintf("→ " VT_FGCOL(BLUE) "○" VT_RST " (%d)\n", actor->id);
    phi_a3_2 = func_800800F8(globalCtx, 0x1392, timer, actor, camIdx);
    if (phi_a3_2 == -1) {
        osSyncPrintf(VT_COL(RED, WHITE) "actor attention demo: give up! \n" VT_RST, actor->id);
        return -1;
    } else {
        s32* temp = (s32*)&globalCtx->cameraPtrs[phi_a3_2]->data1;

        *temp = NA_SE_SY_CORRECT_CHIME;
        return phi_a3_2;
    }
}

s32 func_800806BC(GlobalContext* globalCtx, Actor* actor, s32 sfxId) {
    s32 temp_v0 = func_80080480(globalCtx, actor);

    if (temp_v0 != -1) {
        s32* temp = (s32*)&globalCtx->cameraPtrs[temp_v0]->data1;

        *temp = sfxId;
    }
    return temp_v0;
}

void func_8008070C() {
    D_80120130 = 0;
}

void func_80080718() {
    D_80120130 = 1;
}

s32 func_80080728(GlobalContext* globalCtx, s32 actorCategory) {
    Camera* sp3C = globalCtx->cameraPtrs[0];

    while (sp3C->childCamIdx != 0) {
        sp3C = globalCtx->cameraPtrs[sp3C->childCamIdx];
        if ((sp3C == NULL) || (sp3C->setting != 0x2B)) {
            break;
        } else if (actorCategory == sp3C->target->category) {
            return 1;
        }
    }
    return 0;
}

void func_80080788(GlobalContext* globalCtx, UNK_TYPE arg1) {
}
