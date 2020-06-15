/*
 * File: z_bg_spot01_idosoko.c
 * Overlay: Bg_Spot01_Idosoko
 * Description: Stone that blocks the entrance to Bottom of the Well
 */

#include "z_bg_spot01_idosoko.h"

#define FLAGS 0x00000010

#define THIS ((BgSpot01Idosoko*)thisx)

void BgSpot01Idosoko_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot01Idosoko_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot01Idosoko_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot01Idosoko_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808ABF54(BgSpot01Idosoko* this, GlobalContext* globalCtx);

const ActorInit Bg_Spot01_Idosoko_InitVars = {
    ACTOR_BG_SPOT01_IDOSOKO,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT01_MATOYA,
    sizeof(BgSpot01Idosoko),
    (ActorFunc)BgSpot01Idosoko_Init,
    (ActorFunc)BgSpot01Idosoko_Destroy,
    (ActorFunc)BgSpot01Idosoko_Update,
    (ActorFunc)BgSpot01Idosoko_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

extern UNK_TYPE D_06003C64;

void BgSpot01Idosoko_SetupAction(BgSpot01Idosoko* this, BgSpot01IdosokoActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void BgSpot01Idosoko_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot01Idosoko* this = THIS;
    s32 pad;
    s32 local_c = 0;
    s32 pad2;

    DynaPolyInfo_SetActorMove(thisx, 1);
    Actor_ProcessInitChain(thisx, sInitChain);
    DynaPolyInfo_Alloc(&D_06003C64, &local_c);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, local_c);
    if (LINK_IS_CHILD) {
        Actor_Kill(thisx);
    } else {
        BgSpot01Idosoko_SetupAction(this, func_808ABF54);
    }
}

void BgSpot01Idosoko_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot01Idosoko* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void func_808ABF54(BgSpot01Idosoko* this, GlobalContext* globalCtx) {
}

void BgSpot01Idosoko_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot01Idosoko* this = THIS;

    this->actionFunc(this, globalCtx);
}

extern u32 D_06003B20;

void BgSpot01Idosoko_Draw(Actor* thisx, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_spot01_idosoko.c", 162);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_spot01_idosoko.c", 166),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyOpa.p++, &D_06003B20);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_spot01_idosoko.c", 171);
}
