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
    ACTORCAT_BG,
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

extern CollisionHeader D_06003C64;

void BgSpot01Idosoko_SetupAction(BgSpot01Idosoko* this, BgSpot01IdosokoActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void BgSpot01Idosoko_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot01Idosoko* this = THIS;
    s32 pad;
    CollisionHeader* colHeader = NULL;
    s32 pad2;

    DynaPolyActor_Init(thisx, DPM_PLAYER);
    Actor_ProcessInitChain(thisx, sInitChain);
    CollisionHeader_GetVirtual(&D_06003C64, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, thisx, colHeader);
    if (LINK_IS_CHILD) {
        Actor_Kill(thisx);
    } else {
        BgSpot01Idosoko_SetupAction(this, func_808ABF54);
    }
}

void BgSpot01Idosoko_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot01Idosoko* this = THIS;

    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
}

void func_808ABF54(BgSpot01Idosoko* this, GlobalContext* globalCtx) {
}

void BgSpot01Idosoko_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot01Idosoko* this = THIS;

    this->actionFunc(this, globalCtx);
}

extern u32 D_06003B20;

void BgSpot01Idosoko_Draw(Actor* thisx, GlobalContext* globalCtx) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot01_idosoko.c", 162);

    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_spot01_idosoko.c", 166),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, &D_06003B20);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot01_idosoko.c", 171);
}
