/*
 * File: z_bg_spot01_idomizu.c
 * Overlay: ovl_Bg_Spot01_Idomizu
 * Description: Kakariko Village Well Water
 */

#include "z_bg_spot01_idomizu.h"

#define FLAGS 0x00000020

#define THIS ((BgSpot01Idomizu*)thisx)

void BgSpot01Idomizu_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot01Idomizu_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot01Idomizu_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot01Idomizu_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808ABB84(BgSpot01Idomizu* this, GlobalContext* globalCtx);

const ActorInit Bg_Spot01_Idomizu_InitVars = {
    ACTOR_BG_SPOT01_IDOMIZU,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT01_OBJECTS,
    sizeof(BgSpot01Idomizu),
    (ActorFunc)BgSpot01Idomizu_Init,
    (ActorFunc)BgSpot01Idomizu_Destroy,
    (ActorFunc)BgSpot01Idomizu_Update,
    (ActorFunc)BgSpot01Idomizu_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

extern Gfx D_060007D0[];

void BgSpot01Idomizu_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot01Idomizu* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    if (gSaveContext.eventChkInf[6] & 0x80 || LINK_AGE_IN_YEARS == YEARS_ADULT) {
        this->waterHeight = -550.0f;
    } else {
        this->waterHeight = 52.0f;
    }
    this->actionFunc = func_808ABB84;
    this->actor.posRot.pos.y = this->waterHeight;
}

void BgSpot01Idomizu_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void func_808ABB84(BgSpot01Idomizu* this, GlobalContext* globalCtx) {
    if (gSaveContext.eventChkInf[6] & 0x80) {
        this->waterHeight = -550.0f;
    }
    globalCtx->colCtx.stat.colHeader->waterBoxes[0].unk_02 = this->actor.posRot.pos.y;
    if (this->waterHeight < this->actor.posRot.pos.y) {
        Audio_PlaySoundGeneral(NA_SE_EV_WATER_LEVEL_DOWN - SFX_FLAG, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                               &D_801333E8);
    }
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, this->waterHeight, 1.0f, 2.0f);
}

void BgSpot01Idomizu_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot01Idomizu* this = THIS;

    this->actionFunc(this, globalCtx);
}

void BgSpot01Idomizu_Draw(Actor* thisx, GlobalContext* globalCtx) {
    u32 frames;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_spot01_idomizu.c", 228);
    func_80093D84(globalCtx->state.gfxCtx);

    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_spot01_idomizu.c", 232),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    frames = globalCtx->state.frames;
    gSPSegment(gfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - frames % 128, frames & 0x7F, 32, 32, 1,
                                frames % 128, frames & 0x7F, 32, 32));

    gSPDisplayList(gfxCtx->polyXlu.p++, D_060007D0);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_spot01_idomizu.c", 244);
}
