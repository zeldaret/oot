/*
 * File: z_bg_ganon_otyka.c
 * Overlay: ovl_Bg_Ganon_Otyka
 * Description: Falling Platform (Ganondorf Fight)
 */

#include "z_bg_ganon_otyuka.h"
#include "../ovl_Boss_Ganon/z_boss_ganon.h"
#include "vt.h"

#define FLAGS 0x00000030

#define THIS ((BgGanonOtyuka*)thisx)

void BgGanonOtyuka_Init(Actor* thisx, GlobalContext* globalCtx);
void BgGanonOtyuka_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgGanonOtyuka_Update(Actor* thisx, GlobalContext* globalCtx);
void BgGanonOtyuka_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80875A0C(BgGanonOtyuka* this, GlobalContext* globalCtx);
void func_80875C88(BgGanonOtyuka* this, GlobalContext* globalCtx);
void func_808760DC(Actor* thisx, GlobalContext* globalCtx);

const ActorInit Bg_Ganon_Otyuka_InitVars = {
    ACTOR_BG_GANON_OTYUKA,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GANON,
    sizeof(BgGanonOtyuka),
    (ActorFunc)BgGanonOtyuka_Init,
    (ActorFunc)BgGanonOtyuka_Destroy,
    (ActorFunc)BgGanonOtyuka_Update,
    (ActorFunc)BgGanonOtyuka_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

u8 D_80876A64[] = { 0x01, 0x02, 0x04, 0x08 };

Vec3f D_80876A68[] = {
    { 120.0f, 0.0f, 0.0f },
    { -120.0f, 0.0f, 0.0f },
    { 0.0f, 0.0f, 120.0f },
    { 0.0f, 0.0f, -120.0f },
};

UNK_TYPE D_80876A98[] = {
    0x3C3C0000,
};

UNK_TYPE D_80876A9C[] = {
    0x32140000,
};

Vec3f D_80876AA0[] = {
    { 60.0f, 0.0f, 0.0f },
    { -60.0f, 0.0f, 0.0f },
    { 0.0f, 0.0f, 60.0f },
    { 0.0f, 0.0f, -60.0f },
};

f32 D_80876AD0[] = { M_PI / 2, -M_PI / 2, 0.0f, M_PI };

#include "z_bg_ganon_otyuka_gfx.c"

static CamData gCameraDataList[] = { { 0, 0, 0 } };

static UNK_TYPE gSurfaceTypeList[] = {
    0x00000000,
    0x000007C0,
    0x00000000,
    0x000007C2,
};

static CollisionPoly gPolyList[] = {
    { { 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02 }, { 32767, 0, 0 }, -60 },
    { { 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x03 }, { 32767, 0, 0 }, -60 },
    { { 0x00, 0x00, 0x00, 0x03, 0x00, 0x02, 0x00, 0x04 }, { 0, 0, -32767 }, -60 },
    { { 0x00, 0x00, 0x00, 0x03, 0x00, 0x04, 0x00, 0x05 }, { 0, 0, -32767 }, -60 },
    { { 0x00, 0x00, 0x00, 0x05, 0x00, 0x04, 0x00, 0x06 }, { -32767, 0, 0 }, -60 },
    { { 0x00, 0x00, 0x00, 0x05, 0x00, 0x06, 0x00, 0x07 }, { -32767, 0, 0 }, -60 },
    { { 0x00, 0x00, 0x00, 0x07, 0x00, 0x06, 0x00, 0x01 }, { 0, 0, 32767 }, -60 },
    { { 0x00, 0x00, 0x00, 0x07, 0x00, 0x01, 0x00, 0x00 }, { 0, 0, 32767 }, -60 },
    { { 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x05 }, { 0, 32767, 0 }, 0 },
    { { 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x07 }, { 0, 32767, 0 }, 0 },
};

static Vec3s gVtxList[] = {
    { 60, 0, 60 },     { 60, -60, 60 }, { 60, -60, -60 }, { 60, 0, -60 },
    { -60, -60, -60 }, { -60, 0, -60 }, { -60, -60, 60 }, { -60, 0, 60 },
};

static CollisionHeader gColHeader = {
    { -60, -60, -60 }, { 60, 0, 60 },    ARRAY_COUNT(gVtxList), gVtxList, ARRAY_COUNT(gPolyList),
    gPolyList,         gSurfaceTypeList, gCameraDataList,       0,        NULL,
};

void BgGanonOtyuka_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgGanonOtyuka* this = THIS;
    s32 pad;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(thisx, &sInitChain);
    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    DynaPolyInfo_Alloc(&gColHeader, &colHeader);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, colHeader);

    if (thisx->params != 0x23) {
        thisx->draw = NULL;
        this->actionFunc = func_80875A0C;
    } else {
        thisx->update = func_808760DC;
    }
}

void BgGanonOtyuka_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgGanonOtyuka* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);

    osSyncPrintf(VT_FGCOL(GREEN));
    osSyncPrintf("WHY !!!!!!!!!!!!!!!!\n");
    osSyncPrintf(VT_RST);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ganon_Otyuka/func_80875A0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ganon_Otyuka/func_80875C88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ganon_Otyuka/func_808760DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ganon_Otyuka/BgGanonOtyuka_Update.s")

#ifdef NON_MATCHING
void BgGanonOtyuka_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgGanonOtyuka* this = THIS;
    Camera* camera = Gameplay_GetCamera(globalCtx, 0);
    f32 spBC = -30.0f;
    Actor* boss;
    Actor* prop;
    Gfx* phi_s2;
    Gfx* phi_s1;
    s16 i;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_ganon_otyuka.c", 702);
    boss = globalCtx->actorCtx.actorList[ACTORTYPE_BOSS].first;
    if (boss != NULL) {
        while (boss->next != NULL) {
            if ((boss->id == ACTOR_BOSS_GANON) && (boss->params == 0)) {
                BossGanon* ganon = (BossGanon*)boss;

                if (ganon->unk_198 != 0) {
                    spBC = -2000.0f;
                }

                break;
            } else {
                boss = boss->next;
            }
        }
    }
    func_80093D18(globalCtx->state.gfxCtx);
    gSPDisplayList(POLY_OPA_DISP++, D_80877328);
    prop = globalCtx->actorCtx.actorList[ACTORTYPE_PROP].first;
    if (prop != NULL) {
        while (prop->next != NULL) {
            if ((prop->id == ACTOR_BG_GANON_OTYUKA) && (prop->projectedPos.z > spBC)) {
                BgGanonOtyuka* otyuka = (BgGanonOtyuka*)prop;

                phi_s2 = D_80877408;
                if (camera->eye.y > prop->posRot.pos.y) {
                    phi_s2 = D_808773B0;
                }
                Matrix_Translate(prop->posRot.pos.x, prop->posRot.pos.y, prop->posRot.pos.z, MTXMODE_NEW);
                phi_s1 = NULL;
                if (otyuka->unk_16A != 0) {
                    Matrix_RotateX((prop->shape.rot.x / 32768.0f) * M_PI, MTXMODE_APPLY);
                    Matrix_RotateZ((prop->shape.rot.z / 32768.0f) * M_PI, MTXMODE_APPLY);
                    phi_s1 = D_808773B0;
                    if (camera->eye.y > prop->posRot.pos.y) {
                        phi_s1 = D_80877408;
                    }
                }
                gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_ganon_otyuka.c", 766),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_OPA_DISP++, phi_s2);

                if (phi_s1 != NULL) {
                    gSPDisplayList(POLY_OPA_DISP++, phi_s1);
                }

                for (i = 0; i < ARRAY_COUNT(D_80876A64); i++) {
                    if ((D_80876A64[i] & otyuka->unk_16C) != 0) {
                        Matrix_Push();
                        Matrix_Translate(D_80876AA0[i].x, 0.0f, D_80876AA0[i].z, MTXMODE_APPLY);
                        Matrix_RotateY(D_80876AD0[i], MTXMODE_APPLY);
                        gSPMatrix(POLY_OPA_DISP++,
                                  Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_ganon_otyuka.c", 785),
                                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                        gSPDisplayList(POLY_OPA_DISP++, D_80877460);
                        Matrix_Pull();
                    }
                }
            } else {
                prop = prop->next;
            }
        }
    }
    func_80093D84(globalCtx->state.gfxCtx);
    prop = globalCtx->actorCtx.actorList[ACTORTYPE_PROP].first;
    if (prop != NULL) {
        BgGanonOtyuka* otyuka = (BgGanonOtyuka*)prop;

        while (prop->next != NULL) {
            if ((prop->id == ACTOR_BG_GANON_OTYUKA) && (prop->projectedPos.z > -30.0f) && (otyuka->unk_16E != 0)) {
                gSPSegment(POLY_XLU_DISP++, 0x08,
                           Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, otyuka->unk_16D * 4, 0, 32, 64, 1,
                                            otyuka->unk_16D * 4, 0, 32, 64));
                gDPPipeSync(POLY_XLU_DISP++);
                gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, otyuka->primR, otyuka->primG, otyuka->primB, 0);
                gDPSetEnvColor(POLY_XLU_DISP++, otyuka->envR, otyuka->envG, otyuka->envB, 128);
                Matrix_Translate(prop->posRot.pos.x, 0.0f, prop->posRot.pos.z, MTXMODE_NEW);

                for (i = 0; i < ARRAY_COUNT(D_80876A64); i++) {
                    if ((D_80876A64[i] & otyuka->unk_16B) != 0) {
                        Matrix_Push();
                        Matrix_Translate(D_80876AA0[i].x, 0.0f, D_80876AA0[i].z, MTXMODE_APPLY);
                        Matrix_RotateY(D_80876AD0[i], MTXMODE_APPLY);
                        Matrix_Scale(0.3f, otyuka->yScale * 0.3f, 0.3f, MTXMODE_APPLY);
                        gSPMatrix(POLY_XLU_DISP++,
                                  Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_ganon_otyuka.c", 847),
                                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                        gSPDisplayList(POLY_OPA_DISP++, D_80877CF8);
                        Matrix_Pull();
                    }
                }
                break;
            } else {
                prop = prop->next;
            }
        }
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_ganon_otyuka.c", 857);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ganon_Otyuka/BgGanonOtyuka_Draw.s")
#endif
