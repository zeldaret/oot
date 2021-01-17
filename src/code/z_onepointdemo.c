#include "global.h"
#include "vt.h"

void func_8007C680(Vec3f *vec1, Vec3f *vec2, VecSph *vecSph) {
    Vec3f sp24;
    Vec3f sp18;

    OLib_VecSphGeoToVec3f(&sp18, vecSph);
    
    sp24.x = vec2->x + sp18.x;
    sp24.y = vec2->y + sp18.y;
    sp24.z = vec2->z + sp18.z;
    if(vec1){}
    *vec1 = sp24;
}

s16 func_8007C704(Vec3f *vec1, Vec3f *vec2) {
    return DEGF_TO_BINANG(RADF_TO_DEGF(Math_FAtan2F(vec2->x - vec1->x, vec2->z - vec1->z)));
}

void func_8007C76C(Vec3f* src, Vec3s* dst) {
    dst->x = src->x;
    dst->y = src->y;
    dst->z = src->z;
}

void func_8007C7A8(CollisionContext *colCtx, Vec3f *vec1, Vec3f *vec2) {
    Vec3f sp3C;
    s32 sp38;
    CollisionPoly* sp34 = NULL;

    BgCheck_CameraLineTest1(colCtx, vec1, vec2, &sp3C, &sp34, 1, 1, 1, 0, &sp38);
}

void func_8007C7F8(CollisionContext* colCtx, Vec3f* pos) {
    CollisionPoly* poly;
    s32 bgId;

    BgCheck_EntityRaycastFloor3(colCtx, &poly, &bgId, pos);
}

void func_8007C820(OnePointDemoCamera* onePointCamera, s16 actionParameters, s16 initTimer,
                   CutsceneCameraPoint* atPoints, CutsceneCameraPoint* eyePoints) {
    onePointCamera->atPoints = atPoints;
    onePointCamera->eyePoints = eyePoints;
    onePointCamera->actionParameters = actionParameters;
    onePointCamera->initTimer = initTimer;
}

void func_8007C850(GlobalContext* globalCtx, s16 arg1, s16 arg2, Actor* actor, s16 timer);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_onepointdemo/func_8007C850.s")

s16 func_8007FFE0(GlobalContext *globalCtx, s16 arg1, s16 arg2) {
    s16 temp_ret = globalCtx->cameraPtrs[arg2]->childCamIdx;

    globalCtx->cameraPtrs[arg1]->parentCamIdx = arg2;
    globalCtx->cameraPtrs[arg2]->childCamIdx = arg1;
    
    return temp_ret;
}

s32 func_80080024(GlobalContext *globalCtx, s16 arg1) {
    Camera *temp_v0  = globalCtx->cameraPtrs[arg1];
    s32 phi_v1;

    if (temp_v0->thisIdx == temp_v0->globalCtx->cameraPtrs[temp_v0->childCamIdx]->parentCamIdx) {
        temp_v0->globalCtx->cameraPtrs[temp_v0->childCamIdx]->parentCamIdx = temp_v0->parentCamIdx;
    }
    if (temp_v0->thisIdx == temp_v0->globalCtx->cameraPtrs[temp_v0->parentCamIdx]->childCamIdx) {
        temp_v0->globalCtx->cameraPtrs[temp_v0->parentCamIdx]->childCamIdx = temp_v0->childCamIdx;
    }
    phi_v1 = (globalCtx->activeCamera == arg1) ? temp_v0->parentCamIdx : -1;
    temp_v0->parentCamIdx = 0;
    temp_v0->childCamIdx = temp_v0->parentCamIdx;
    temp_v0->timer = -1;
    Gameplay_ClearCamera(temp_v0->globalCtx, temp_v0->thisIdx);
    return phi_v1;
}

#ifdef NON_MATCHING
s16 func_800800F8(GlobalContext *globalCtx, s16 csID, s16 timer, Actor *actor, s16 camIdx) {
    Camera *temp_v1;
    s16 sp42;
    s16 temp_a2;
    s16 temp_a3;
    s16 phi_s0_2;
    s16 phi_s0;
    s16 phi_s2;
    Camera* tempC;

    if (camIdx == -1) {
        camIdx = globalCtx->activeCamera;
    }
    sp42 = Gameplay_CreateSubCamera(globalCtx);
    if (sp42 == -1) {
        osSyncPrintf("\x1b[41;37monepoint demo: error: too many cameras ... give up! type=%d\n\x1b[m", csID);
        return -1;
    }
    phi_s0 = 7;
    phi_s2 = globalCtx->cameraPtrs[camIdx]->childCamIdx;
    if (phi_s2 > 0) {
        func_8007FFE0(globalCtx, phi_s2, sp42);
        phi_s0 = 1;
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
    Gameplay_ChangeCameraStatus(globalCtx, sp42, phi_s0);

    phi_s0_2 = globalCtx->cameraPtrs[sp42]->childCamIdx;
    phi_s2 = sp42;
    while (phi_s0_2 > 0) {
        temp_a2 = globalCtx->cameraPtrs[phi_s0_2]->unk_168;
        temp_a3 = globalCtx->cameraPtrs[sp42]->unk_168;
        if ((temp_a2 / 0x64) < (temp_a3 / 0x64)) {
            osSyncPrintf("\x1b[43;30monepointdemo camera[%d]: killed 'coz low priority (%d < %d)\n\x1b[m", phi_s0_2, temp_a2, temp_a3);
            if (globalCtx->cameraPtrs[phi_s0_2]->unk_168 != 0x1392) {
                phi_s0_2 = func_80080024(globalCtx, phi_s0_2);
                if (phi_s0_2 != -1) {
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
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_onepointdemo/func_800800F8.s")
#endif

s16 func_800803F0(GlobalContext *globalCtx, s16 camId) {
    if (camId == -1) {
        camId = globalCtx->activeCamera;
    }
    if (globalCtx->cameraPtrs[camId] != NULL) {
        osSyncPrintf("onepointdemo camera[%d]: delete timer=%d next=%d\n", camId, globalCtx->cameraPtrs[camId]->timer, globalCtx->cameraPtrs[camId]->parentCamIdx);
        if (globalCtx->cameraPtrs[camId]->unk_168 == 0x1392) {
            globalCtx->cameraPtrs[camId]->timer = 5;
        } else {
            globalCtx->cameraPtrs[camId]->timer = 0;
        }
    }
    return camId;
}

s32 func_80080480(GlobalContext *globalCtx, Actor *actor) {
    Camera *sp3C;
    s32 phi_v0_2;
    s32 phi_a3_2;
    s32 phi_v1;

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
    while(sp3C->childCamIdx != 0) {
        sp3C = globalCtx->cameraPtrs[sp3C->childCamIdx];
        if(sp3C == NULL) {
            break;
        }
        if(sp3C->setting != 0x2B) {
            if(phi_a3_2 == -1) {
                continue;
            } else {
                break;
            }
        } else {
            phi_v0_2 = sp3C->target->type;
            if(phi_v0_2 < actor->type) {
                break;
            }
            phi_a3_2 = phi_v0_2;
        }
    }
    
    phi_v0_2 = (phi_a3_2 == -1) ? 0 : sp3C->thisIdx;

    switch (actor->type) {
        case ACTORTYPE_SWITCH:
        case ACTORTYPE_BG:
        case ACTORTYPE_PLAYER:
        case ACTORTYPE_PROP:
        case ACTORTYPE_DOOR:
            phi_v1 = 30;
            break;
        case ACTORTYPE_NPC:
        case ACTORTYPE_ITEMACTION:
        case ACTORTYPE_CHEST:
            phi_v1 = 100;
            break;
        default:
        case ACTORTYPE_EXPLOSIVES:
        case ACTORTYPE_ENEMY:
        case ACTORTYPE_MISC:
        case ACTORTYPE_BOSS:
            osSyncPrintf(VT_COL(YELLOW, BLACK) "actor attention demo camera: %d: unkown part of actor %d\n" VT_RST, globalCtx->state.frames, actor->type);
            phi_v1 = 30;
            break;
    }
    osSyncPrintf(VT_FGCOL(CYAN) "%06u:" VT_RST " actor attention demo camera: request %d ", globalCtx->state.frames, actor->type);
    if (phi_a3_2 == actor->type) {
        osSyncPrintf( "→ " VT_FGCOL(PURPLE) "×" VT_RST " (%d)\n", actor->id);
        return -1;
    }
    osSyncPrintf( "→ " VT_FGCOL(BLUE) "○" VT_RST " (%d)\n", actor->id);
    phi_a3_2 = func_800800F8(globalCtx, 0x1392, phi_v1, actor, phi_v0_2);
    if (phi_a3_2 == -1) {
        osSyncPrintf(VT_COL(RED, WHITE) "actor attention demo: give up! \n" VT_RST, actor->id);
        return -1;
    } else {
        s32* temp = (s32*) &globalCtx->cameraPtrs[phi_a3_2]->data1;
        
        *temp =  0x4802;
        return phi_a3_2;
    }
}

s32 func_800806BC(GlobalContext *globalCtx, Actor *actor, s32 sfxId) {
    s32 temp_v0 = func_80080480(globalCtx, actor);

    if (temp_v0 != -1) {
        s32* temp = (s32*) &globalCtx->cameraPtrs[temp_v0]->data1;
        
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

s32 func_80080728(GlobalContext *globalCtx, s32 actorType) {
    Camera* sp3C = globalCtx->cameraPtrs[0];

    while(sp3C->childCamIdx != 0) {
        sp3C = globalCtx->cameraPtrs[sp3C->childCamIdx];
        if((sp3C == NULL) || (sp3C->setting != 0x2B)) {
            break;
        } else if (actorType == sp3C->target->type) {
            return 1;
        }
    }
    return 0;
}

void func_80080788(GlobalContext* globalCtx, UNK_TYPE arg1) {
}
