/*
 * File: z_bg_spot01_idosoko.c
 * Overlay: ovl_Bg_Spot01_Idosoko
 * Description: Stone that blocks the entrance to Bottom of the Well
 */

#include "z_bg_spot01_idosoko.h"
#include "assets/objects/object_spot01_matoya/object_spot01_matoya.h"

#define FLAGS ACTOR_FLAG_4

void BgSpot01Idosoko_Init(Actor* thisx, PlayState* play);
void BgSpot01Idosoko_Destroy(Actor* thisx, PlayState* play);
void BgSpot01Idosoko_Update(Actor* thisx, PlayState* play);
void BgSpot01Idosoko_Draw(Actor* thisx, PlayState* play);

void func_808ABF54(BgSpot01Idosoko* this, PlayState* play);

ActorInit Bg_Spot01_Idosoko_InitVars = {
    /**/ ACTOR_BG_SPOT01_IDOSOKO,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_SPOT01_MATOYA,
    /**/ sizeof(BgSpot01Idosoko),
    /**/ BgSpot01Idosoko_Init,
    /**/ BgSpot01Idosoko_Destroy,
    /**/ BgSpot01Idosoko_Update,
    /**/ BgSpot01Idosoko_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgSpot01Idosoko_SetupAction(BgSpot01Idosoko* this, BgSpot01IdosokoActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void BgSpot01Idosoko_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    BgSpot01Idosoko* this = (BgSpot01Idosoko*)thisx;
    CollisionHeader* colHeader = NULL;
    s32 pad2;

    DynaPolyActor_Init(&this->dyna, DYNA_TRANSFORM_POS);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    CollisionHeader_GetVirtual(&gKakarikoBOTWStoneCol, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
    if (!LINK_IS_ADULT) {
        Actor_Kill(&this->dyna.actor);
    } else {
        BgSpot01Idosoko_SetupAction(this, func_808ABF54);
    }
}

void BgSpot01Idosoko_Destroy(Actor* thisx, PlayState* play) {
    BgSpot01Idosoko* this = (BgSpot01Idosoko*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void func_808ABF54(BgSpot01Idosoko* this, PlayState* play) {
}

void BgSpot01Idosoko_Update(Actor* thisx, PlayState* play) {
    BgSpot01Idosoko* this = (BgSpot01Idosoko*)thisx;

    this->actionFunc(this, play);
}

void BgSpot01Idosoko_Draw(Actor* thisx, PlayState* play) {
    OPEN_DISPS(play->state.gfxCtx, "../z_bg_spot01_idosoko.c", 162);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_bg_spot01_idosoko.c", 166),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, gKakarikoBOTWStoneDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_spot01_idosoko.c", 171);
}
