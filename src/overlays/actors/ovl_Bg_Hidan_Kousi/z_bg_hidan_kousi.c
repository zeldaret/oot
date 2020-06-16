/*
 * File: z_bg_hidan_kousi.c
 * Overlay: ovl_Bg_Hidan_Kousi
 * Description:
 */

#include "z_bg_hidan_kousi.h"

#define FLAGS 0x00000010

#define THIS ((BgHidanKousi*)thisx)

void BgHidanKousi_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHidanKousi_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHidanKousi_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHidanKousi_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80889ACC(BgHidanKousi* this);
void func_80889B5C(BgHidanKousi* this, GlobalContext* globalCtx);
void func_80889BC0(BgHidanKousi* this, GlobalContext* globalCtx);
void func_80889C18(BgHidanKousi* this, GlobalContext* globalCtx);
void func_80889C90(BgHidanKousi* this, GlobalContext* globalCtx);
void func_80889D28(BgHidanKousi* this, GlobalContext* globalCtx);

f32 D_80889E40[] = { 120.0f, 150.0f, 150.0f };

const ActorInit Bg_Hidan_Kousi_InitVars = {
    ACTOR_BG_HIDAN_KOUSI,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_HIDAN_OBJECTS,
    sizeof(BgHidanKousi),
    (ActorFunc)BgHidanKousi_Init,
    (ActorFunc)BgHidanKousi_Destroy,
    (ActorFunc)BgHidanKousi_Update,
    (ActorFunc)BgHidanKousi_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

UNK_PTR D_80889E70[] = {
    0x0600E2CC,
    0x0600E380,
    0x0600E430,
};

s16 D_80889E7C[] = {
    0x4000,
    0xC000,
    0xC000,
    0x0000,
};

Gfx* D_80889E84[] = {
    0x0600C798,
    0x0600BFA8,
    0x0600BB58,
};

void BgHidanKousi_SetupAction(BgHidanKousi* this, BgHidanKousiActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void BgHidanKousi_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanKousi* this = THIS;
    s32 pad;
    u32 localC = 0;

    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    Actor_SetHeight(thisx, 50.0f);
    osSyncPrintf("◯◯◯炎の神殿オブジェクト【格子(arg_data : %0x)】出現 (%d %d)\n", thisx->params, thisx->params & 0xFF,
                 ((s32)thisx->params >> 8) & 0xFF);

    Actor_ProcessInitChain(thisx, sInitChain);
    if (((thisx->params & 0xFF) < 0) || ((thisx->params & 0xFF) >= 3)) {
        osSyncPrintf("arg_data おかしい 【格子】\n");
    }

    DynaPolyInfo_Alloc(D_80889E70[thisx->params & 0xFF], &localC);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, localC);
    thisx->posRot.rot.y = D_80889E7C[this->dyna.actor.params & 0xFF] + thisx->shape.rot.y;
    if (Flags_GetSwitch(globalCtx, (thisx->params >> 8) & 0xFF)) {
        func_80889ACC(this);
        BgHidanKousi_SetupAction(this, func_80889D28);
    } else {
        BgHidanKousi_SetupAction(this, func_80889B5C);
    }
}

void BgHidanKousi_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanKousi* this = THIS;
    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void func_80889ACC(BgHidanKousi* this) {
    s32 pad[2];
    Vec3s* rot = &this->dyna.actor.posRot.rot;
    f32 temp1 = D_80889E40[this->dyna.actor.params & 0xFF] * Math_Sins(rot->y);
    f32 temp2 = D_80889E40[this->dyna.actor.params & 0xFF] * Math_Coss(rot->y);
    Vec3f* initPos = &this->dyna.actor.initPosRot.pos;

    this->dyna.actor.posRot.pos.x = initPos->x + temp1;
    this->dyna.actor.posRot.pos.z = initPos->z + temp2;
}

void func_80889B5C(BgHidanKousi* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, (this->dyna.actor.params >> 8) & 0xFF)) {
        BgHidanKousi_SetupAction(this, func_80889BC0);
        func_80080480(globalCtx, this);
        this->unk_168 = 0xC8;
    }
}

void func_80889BC0(BgHidanKousi* this, GlobalContext* globalCtx) {
    this->unk_168 -= 1;
    if (this->dyna.actor.type == func_8005B198() || (this->unk_168 <= 0)) {
        BgHidanKousi_SetupAction(this, func_80889C18);
    }
}

void func_80889C18(BgHidanKousi* this, GlobalContext* globalCtx) {
    this->dyna.actor.speedXZ += 0.2f;
    if (this->dyna.actor.speedXZ > 2.0f) {
        this->dyna.actor.speedXZ = 2.0f;
        BgHidanKousi_SetupAction(this, func_80889C90);
    }
    Actor_MoveForward(&this->dyna.actor);
    func_8002F974(&this->dyna.actor, 0x2036);
}

void func_80889C90(BgHidanKousi* this, GlobalContext* globalCtx) {
    func_8002D7EC(&this->dyna.actor);
    if (D_80889E40[this->dyna.actor.params & 0xFF] <
        Math_Vec3f_DistXYZ(&this->dyna.actor.initPosRot.pos, &this->dyna.actor.posRot.pos)) {
        func_80889ACC(this);
        BgHidanKousi_SetupAction(this, func_80889D28);
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_METALDOOR_STOP);
    } else {
        func_8002F974(&this->dyna.actor, 0x2036);
    }
}

void func_80889D28(BgHidanKousi* this, GlobalContext* globalCtx) {
}

void BgHidanKousi_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanKousi* this = THIS;

    this->actionFunc(this, globalCtx);
}

void BgHidanKousi_Draw(Actor* thisx, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_hidan_kousi.c", 350);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_hidan_kousi.c", 354),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyOpa.p++, D_80889E84[thisx->params & 0xFF]);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_hidan_kousi.c", 359);
}
