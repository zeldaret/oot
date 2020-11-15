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

UNK_TYPE D_80876A68[] = {
    0x42F00000, 0x00000000, 0x00000000, 0xC2F00000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x42F00000, 0x00000000, 0x00000000, 0xC2F00000,
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
    Camera* camera;
    f32 spBC;
    Gfx* spA8;
    Gfx* temp_s0;
    Gfx* temp_s0_3;
    Gfx* temp_s1;
    Gfx* temp_s1_2;
    Gfx* temp_v0_2;
    Gfx* temp_v0_3;
    Gfx* temp_v1;
    Gfx* temp_v1_2;
    Gfx* temp_v1_3;
    Gfx* temp_v1_4;
    Gfx* temp_v1_5;
    Gfx* temp_v1_6;
    GraphicsContext* gfxCtx;
    GraphicsContext* temp_s3;
    s16 temp_s0_2;
    s16 temp_s0_4;
    u8 temp_a2;
    Actor* boss;
    Actor* prop;
    Actor* temp_s4_4;
    Actor* temp_s4_5;
    void* temp_s4_6;
    Gfx* phi_s2;
    Gfx* phi_s1;
    s16 phi_s0;
    BgGanonOtyuka* phi_s4_3;
    s16 phi_s0_2;

    camera = Gameplay_GetCamera(globalCtx, 0);
    spBC = -30.0f;
    gfxCtx = globalCtx->state.gfxCtx;
    OPEN_DISPS(gfxCtx, "../z_bg_ganon_otyuka.c", 702);
    boss = globalCtx->actorCtx.actorList[ACTORTYPE_BOSS].first;
    if (boss != NULL) {
        while (boss != NULL) {
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
    loop_8:
        if ((prop->id == ACTOR_BG_GANON_OTYUKA) && (prop->projectedPos.z > spBC)) {
            BgGanonOtyuka* otyuka = (BgGanonOtyuka*)prop;

            phi_s2 = D_80877408;
            if (camera->eye.y > prop->posRot.pos.y) {
                phi_s2 = D_808773B0;
            }
            Matrix_Translate(prop->posRot.pos.x, prop->posRot.pos.y, prop->posRot.pos.z, MTXMODE_NEW);
            phi_s1 = NULL;
            if (otyuka->unk_16A != 0) {
                Matrix_RotateX((prop->shape.rot.x / 32768.0f) * 3.1415927f, MTXMODE_APPLY);
                Matrix_RotateZ((prop->shape.rot.z / 32768.0f) * 3.1415927f, MTXMODE_APPLY);
                phi_s1 = D_808773B0;
                if (camera->eye.y > prop->posRot.pos.y) {
                    phi_s1 = D_80877408;
                }
            }
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_ganon_otyuka.c", 766),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, phi_s2);

            phi_s0 = 0;
            if (phi_s1 != NULL) {
                gSPDisplayList(POLY_OPA_DISP++, phi_s1);
                phi_s0 = 0;
            }
        loop_17:
            if ((D_80876A64[phi_s0] & otyuka->unk_16C) != 0) {
                Matrix_Push();
                Matrix_Translate(D_80876AA0[phi_s0].x, 0.0f, D_80876AA0[phi_s0].z, MTXMODE_APPLY);
                Matrix_RotateY(D_80876AD0[phi_s0], MTXMODE_APPLY);
                gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_ganon_otyuka.c", 785),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_OPA_DISP++, D_80877460);
                Matrix_Pull();
            }
            temp_s0_2 = phi_s0 + 1;
            phi_s0 = temp_s0_2;
            if ((s32)temp_s0_2 < 4) {
                goto loop_17;
            }
        }
        prop = prop->next;
        if (temp_s4_4 != NULL) {
            goto loop_8;
        }
    }
    func_80093D84(globalCtx->state.gfxCtx);
    temp_s4_5 = globalCtx->actorCtx.actorList[ACTORTYPE_PROP].first;
    if (temp_s4_5 != 0) {
        phi_s4_3 = temp_s4_5;
    loop_23:
        if ((temp_s4_5->id == ACTOR_BG_GANON_OTYUKA) && (temp_s4_5->projectedPos.z > -30.0f) &&
            (phi_s4_3->unk_16E != 0)) {
            gSPSegment(POLY_XLU_DISP++, 0x08,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, temp_a2, 0, 32, 64, 1, temp_a2, 0, 32, 64));
            gDPPipeSync(POLY_XLU_DISP++);
            temp_a2 = phi_s4_3->unk_16D * 4;
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, phi_s4_3->unk_174, phi_s4_3->unk_178, phi_s4_3->unk_17C, 0);
            gDPSetEnvColor(POLY_XLU_DISP++, phi_s4_3->unk_180, phi_s4_3->unk_184, phi_s4_3->unk_188, 128);
            Matrix_Translate(temp_s4_5->posRot.pos.x, 0.0f, temp_s4_5->posRot.pos.z, MTXMODE_NEW);
            phi_s0_2 = (u16)0;
        loop_27:
            if ((D_80876A64[phi_s0_2] & phi_s4_3->unk_16B) != 0) {
                Matrix_Push();
                Matrix_Translate(D_80876AA0[phi_s0_2].x, 0.0f, D_80876AA0[phi_s0_2].z, MTXMODE_APPLY);
                Matrix_RotateY(D_80876AD0[phi_s0_2], MTXMODE_APPLY);
                Matrix_Scale(0.3f, phi_s4_3->unk_170 * 0.3f, 0.3f, MTXMODE_APPLY);
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_ganon_otyuka.c", 847),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_OPA_DISP++, D_80877CF8);
                Matrix_Pull();
            }
            temp_s0_4 = phi_s0_2 + 1;
            phi_s0_2 = temp_s0_4;
            if ((s32)temp_s0_4 < 4) {
                goto loop_27;
            }
        }
        temp_s4_6 = temp_s4_5->next;
        phi_s4_3 = temp_s4_6;
        if (temp_s4_6 != NULL) {
            goto loop_23;
        }
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_ganon_otyuka.c", 857);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ganon_Otyuka/BgGanonOtyuka_Draw.s")
#endif
