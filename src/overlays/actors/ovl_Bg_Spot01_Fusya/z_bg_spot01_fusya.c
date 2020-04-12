/*
 * File: z_bg_spot01_fusya.c
 * Overlay: Bg_Spot01_Fusya
 * Description: Windmill Sails
 */

#include "z_bg_spot01_fusya.h"

#define FLAGS 0x00000010

void BgSpot01Fusya_Init(BgSpot01Fusya* this, GlobalContext* globalCtx);
void BgSpot01Fusya_Destroy(BgSpot01Fusya* this, GlobalContext* globalCtx);
void BgSpot01Fusya_Update(BgSpot01Fusya* this, GlobalContext* globalCtx);
void BgSpot01Fusya_Draw(BgSpot01Fusya* this, GlobalContext* globalCtx);

void func_808AAA50(BgSpot01Fusya* this, GlobalContext* globalCtx);

const ActorInit Bg_Spot01_Fusya_InitVars = {
    ACTOR_BG_SPOT01_FUSYA,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT01_OBJECTS,
    sizeof(BgSpot01Fusya),
    (ActorFunc)BgSpot01Fusya_Init,
    (ActorFunc)BgSpot01Fusya_Destroy,
    (ActorFunc)BgSpot01Fusya_Update,
    (ActorFunc)BgSpot01Fusya_Draw,
};

static InitChainEntry initChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F4, 12800, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F8, 1300, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_FC, 1300, ICHAIN_STOP),
};

extern u32 D_06000100;

void BgSpot01Fusya_SetupAction(BgSpot01Fusya* this, ActorFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void BgSpot01Fusya_Init(BgSpot01Fusya* this, GlobalContext* globalCtx) {
    Actor_ProcessInitChain(&this->actor, initChain);
    this->unk_154 = 100.0f;
    this->unk_158 = 100.0f;
    this->unk_15C = 0.5f;
    if (gSaveContext.scene_setup_index < 4) {
        gSaveContext.event_chk_inf[6] &= 0xFFDF;
    }
    BgSpot01Fusya_SetupAction(this, func_808AAA50);
}

void BgSpot01Fusya_Destroy(BgSpot01Fusya* this, GlobalContext* globalCtx) {
}

void func_808AAA50(BgSpot01Fusya* this, GlobalContext* globalCtx) {
    f32 temp;
    Actor* thisx = &this->actor;
    if (gSaveContext.event_chk_inf[6] & 0x20) {
        this->unk_158 = 1800.0f;
    }
    thisx->shape.rot.z += this->unk_154;
    temp = ((this->unk_154 - 100.0f) / 1700.0f) + 1.0f;
    func_800F436C(&thisx->unk_E4, 0x2085, temp);
    Math_SmoothScaleMaxF(&this->unk_154, this->unk_158, this->unk_15C, 100.0f);
}

void BgSpot01Fusya_Update(BgSpot01Fusya* this, GlobalContext* globalCtx) {
    this->actionFunc(this, globalCtx);
}

void BgSpot01Fusya_Draw(BgSpot01Fusya* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_spot01_fusya.c", 210);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_spot01_fusya.c", 214),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyOpa.p++, &D_06000100);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_spot01_fusya.c", 219);
}
