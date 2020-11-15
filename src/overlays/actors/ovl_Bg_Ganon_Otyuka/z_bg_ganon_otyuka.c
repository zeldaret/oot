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

static Vec3f D_80876AA0[] = {
    { 60.0f, 0.0f, 0.0f },
    { -60.0f, 0.0f, 0.0f },
    { 0.0f, 0.0f, 60.0f },
    { 0.0f, 0.0f, -60.0f },
};

static f32 D_80876AD0[] = { M_PI / 2, -M_PI / 2, 0.0f, M_PI };

#include "z_bg_ganon_otyuka_gfx.c"

static CamData sCameraDataList[] = { { 0, 0, 0 } };

static UNK_TYPE sSurfaceTypeList[] = {
    0x00000000,
    0x000007C0,
    0x00000000,
    0x000007C2,
};

static CollisionPoly sPolyList[] = {
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

static Vec3s sVtxList[] = {
    { 60, 0, 60 },     { 60, -60, 60 }, { 60, -60, -60 }, { 60, 0, -60 },
    { -60, -60, -60 }, { -60, 0, -60 }, { -60, -60, 60 }, { -60, 0, 60 },
};

static CollisionHeader sColHeader = {
    { -60, -60, -60 }, { 60, 0, 60 },    ARRAY_COUNT(sVtxList), sVtxList, ARRAY_COUNT(sPolyList),
    sPolyList,         sSurfaceTypeList, sCameraDataList,       0,        NULL,
};

void BgGanonOtyuka_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgGanonOtyuka* this = THIS;
    s32 pad;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(thisx, sInitChain);
    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    DynaPolyInfo_Alloc(&sColHeader, &colHeader);
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

#ifdef NON_MATCHING
void func_80875A0C(BgGanonOtyuka* this, GlobalContext* globalCtx) {
    Vec3f sp4C;
    Actor* prop;
    BgGanonOtyuka* platform;
    s16 i;
    f32 dx;
    f32 dy;
    f32 dz;

    if (this->unk_16A != 0 || (globalCtx->actorCtx.unk_02 != 0) && (this->dyna.actor.xyzDistFromLinkSq < 4900.0f)) {
        osSyncPrintf("OTC O 1\n");

        for (i = 0; i < ARRAY_COUNT(D_80876A68); i++) {
            prop = globalCtx->actorCtx.actorList[ACTORTYPE_PROP].first;
            while (prop != NULL) {
                if ((prop == &this->dyna.actor) || (prop->id != ACTOR_BG_GANON_OTYUKA)) {
                    prop = prop->next;
                    continue;
                }

                platform = (BgGanonOtyuka*)prop;

                dx = platform->dyna.actor.posRot.pos.x - this->dyna.actor.posRot.pos.x;
                dz = platform->dyna.actor.posRot.pos.z - this->dyna.actor.posRot.pos.z;
                dy = platform->dyna.actor.posRot.pos.y - this->dyna.actor.posRot.pos.y;
                if ((fabsf(dx + D_80876A68[i].x) < 10.0f) && (fabsf(dy) < 10.0f) &&
                    (fabsf(dz + D_80876A68[i].z) < 10.0f)) {
                    platform->unk_16C |= D_80876A64[i];
                }

                prop = prop->next;
            }
        }

        osSyncPrintf("OTC O 2\n");

        for (i = 0; i < ARRAY_COUNT(D_80876A68); i++) {
            sp4C.x = D_80876A68[i].x + this->dyna.actor.posRot.pos.x;
            sp4C.y = this->dyna.actor.posRot.pos.y;
            sp4C.z = D_80876A68[i].z + this->dyna.actor.posRot.pos.z;
            if (func_8003E30C(&globalCtx->colCtx, &sp4C, 50.0f)) {
                this->unk_16B |= D_80876A64[i];
            }
        }

        osSyncPrintf("OTC O 3\n");
        this->actionFunc = func_80875C88;
        this->unk_16A = 1;
        this->unk_168 = 20;
        this->unk_16E = 1;
        this->unk_16D = 0;
        this->primR = 255.0f;
        this->primG = 255.0f;
        this->primB = 255.0f;
        this->envR = 255.0f;
        this->envG = 255.0f;
        this->envB = 0.0f;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ganon_Otyuka/func_80875A0C.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ganon_Otyuka/func_80875C88.s")

void func_808760DC(Actor* thisx, GlobalContext* globalCtx) {
}

void BgGanonOtyuka_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgGanonOtyuka* this = THIS;

    this->actionFunc(this, globalCtx);
    this->unk_16D++;
    DECR(this->unk_168);
}

void BgGanonOtyuka_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgGanonOtyuka* this = THIS;
    s16 i;
    Gfx* phi_s2;
    Gfx* phi_s1;
    Camera* camera = Gameplay_GetCamera(globalCtx, 0);
    Actor* actor;
    BgGanonOtyuka* platform;
    BossGanon* ganondorf;
    f32 spBC = -30.0f;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_ganon_otyuka.c", 702);

    actor = globalCtx->actorCtx.actorList[ACTORTYPE_BOSS].first;
    while (actor != NULL) {
        if ((actor->id == ACTOR_BOSS_GANON)) {
            ganondorf = (BossGanon*)actor;

            if (ganondorf->actor.params == 0) {
                if (ganondorf->unk_198 != 0) {
                    spBC = -2000.0f;
                }

                break;
            }
        }

        actor = actor->next;
    }

    func_80093D18(globalCtx->state.gfxCtx);
    gSPDisplayList(POLY_OPA_DISP++, D_80877328);

    actor = globalCtx->actorCtx.actorList[ACTORTYPE_PROP].first;
    while (actor != NULL) {
        if (actor->id == ACTOR_BG_GANON_OTYUKA) {
            platform = (BgGanonOtyuka*)actor;

            if (platform->dyna.actor.projectedPos.z > spBC) {
                if (camera->eye.y > platform->dyna.actor.posRot.pos.y) {
                    phi_s2 = D_808773B0;
                } else {
                    phi_s2 = D_80877408;
                }
                Matrix_Translate(platform->dyna.actor.posRot.pos.x, platform->dyna.actor.posRot.pos.y,
                                 platform->dyna.actor.posRot.pos.z, MTXMODE_NEW);
                phi_s1 = NULL;
                if (platform->unk_16A != 0) {
                    Matrix_RotateX(((f32)platform->dyna.actor.shape.rot.x / 0x8000) * M_PI, MTXMODE_APPLY);
                    Matrix_RotateZ(((f32)platform->dyna.actor.shape.rot.z / 0x8000) * M_PI, MTXMODE_APPLY);
                    if (camera->eye.y > platform->dyna.actor.posRot.pos.y) {
                        phi_s1 = D_80877408;
                    } else {
                        phi_s1 = D_808773B0;
                    }
                }
                gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_ganon_otyuka.c", 766),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_OPA_DISP++, phi_s2);

                if (phi_s1 != NULL) {
                    gSPDisplayList(POLY_OPA_DISP++, phi_s1);
                }

                for (i = 0; i < ARRAY_COUNT(D_80876A64); i++) {
                    if ((D_80876A64[i] & platform->unk_16C) != 0) {
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
            }
        }

        actor = actor->next;
    }

    func_80093D84(globalCtx->state.gfxCtx);
    actor = globalCtx->actorCtx.actorList[ACTORTYPE_PROP].first;
    while (actor != NULL) {
        if (actor->id == ACTOR_BG_GANON_OTYUKA) {
            platform = (BgGanonOtyuka*)actor;

            if ((platform->dyna.actor.projectedPos.z > -30.0f) && (platform->unk_16E != 0)) {
                gSPSegment(POLY_XLU_DISP++, 0x08,
                           Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, platform->unk_16D * 4, 0, 32, 64, 1,
                                            platform->unk_16D * 4, 0, 32, 64));
                gDPPipeSync(POLY_XLU_DISP++);
                gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, platform->primR, platform->primG, platform->primB, 0);
                gDPSetEnvColor(POLY_XLU_DISP++, platform->envR, platform->envG, platform->envB, 128);
                Matrix_Translate(platform->dyna.actor.posRot.pos.x, 0.0f, platform->dyna.actor.posRot.pos.z,
                                 MTXMODE_NEW);

                for (i = 0; i < ARRAY_COUNT(D_80876A64); i++) {
                    if ((D_80876A64[i] & platform->unk_16B) != 0) {
                        Matrix_Push();
                        Matrix_Translate(D_80876AA0[i].x, 0.0f, D_80876AA0[i].z, MTXMODE_APPLY);
                        Matrix_RotateY(D_80876AD0[i], MTXMODE_APPLY);
                        Matrix_Scale(0.3f, platform->yScale * 0.3f, 0.3f, MTXMODE_APPLY);
                        gSPMatrix(POLY_XLU_DISP++,
                                  Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_ganon_otyuka.c", 847),
                                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                        gSPDisplayList(POLY_XLU_DISP++, D_80877CF8);
                        Matrix_Pull();
                    }
                }
            }
        }

        actor = actor->next;
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_ganon_otyuka.c", 857);
}
