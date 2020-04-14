/*
 * File: z_bg_spot17_funen
 * Overlay: ovl_Bg_Spot17_Funen
 * Description: Crater Smoke Cone
 */

#include "z_bg_spot17_funen.h"

#define FLAGS 0x00000030

void BgSpot17Funen_Init(BgSpot17Funen* this, GlobalContext* globalCtx);
void BgSpot17Funen_Destroy(BgSpot17Funen* this, GlobalContext* globalCtx);
void BgSpot17Funen_Update(BgSpot17Funen* this, GlobalContext* globalCtx);
void func_808B746C(BgSpot17Funen* this, GlobalContext* globalCtx);
void func_808B7478(BgSpot17Funen* this, GlobalContext* globalCtx);

void func_808B7478(BgSpot17Funen* this, GlobalContext* globalCtx);
void func_808B746C(BgSpot17Funen* this, GlobalContext* globalCtx);

const ActorInit Bg_Spot17_Funen_InitVars = {
    ACTOR_BG_SPOT17_FUNEN,
    ACTORTYPE_SWITCH,
    FLAGS,
    OBJECT_SPOT17_OBJ,
    sizeof(BgSpot17Funen),
    (ActorFunc)BgSpot17Funen_Init,
    (ActorFunc)BgSpot17Funen_Destroy,
    (ActorFunc)BgSpot17Funen_Update,
    NULL,
};

static InitChainEntry initChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

extern Gfx D_06000B40[];

void BgSpot17Funen_Init(BgSpot17Funen* this, GlobalContext* globalCtx) {
    Actor_ProcessInitChain(&this->actor, initChain);
    osSyncPrintf("spot17 obj. 噴煙 (arg_data 0x%04x)\n", this->actor.params);
}

void BgSpot17Funen_Destroy(BgSpot17Funen* this, GlobalContext* globalCtx) {
}

void BgSpot17Funen_Update(BgSpot17Funen* this, GlobalContext* globalCtx) {
    this->actor.draw = (ActorFunc)func_808B7478;
    this->actor.update = (ActorFunc)func_808B746C;
}

void func_808B746C(BgSpot17Funen* this, GlobalContext* globalCtx) {
}

void func_808B7478(BgSpot17Funen* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_spot17_funen.c", 153);
    func_80093D84(globalCtx->state.gfxCtx);
    Matrix_RotateY((s16)(func_8005A9F4(globalCtx->cameraCtx.activeCameraPtrs[globalCtx->cameraCtx.unk_5C0]) -
                         this->actor.shape.rot.y + 0x8000) *
                       9.58738019108e-05f,
                   MTXMODE_APPLY);

    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_spot17_funen.c", 161),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPSegment(gfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, (0 - globalCtx->gameplayFrames) & 0x7F, 0x20, 0x20, 1, 0,
                                (0 - globalCtx->gameplayFrames) & 0x7F, 0x20, 0x20));
    do {
        gSPDisplayList(gfxCtx->polyXlu.p++, D_06000B40);
    } while (0); // necessary to match

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_spot17_funen.c", 176);
}
