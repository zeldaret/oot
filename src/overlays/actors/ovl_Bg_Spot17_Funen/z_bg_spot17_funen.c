/*
 * File: z_bg_spot17_funen
 * Overlay: ovl_Bg_Spot17_Funen
 * Description: Crater Smoke Cone
 */

#include "z_bg_spot17_funen.h"
#include "assets/objects/object_spot17_obj/object_spot17_obj.h"

#define FLAGS (ACTOR_FLAG_4 | ACTOR_FLAG_5)

void BgSpot17Funen_Init(Actor* thisx, PlayState* play);
void BgSpot17Funen_Destroy(Actor* thisx, PlayState* play);
void BgSpot17Funen_Update(Actor* thisx, PlayState* play);
void func_808B746C(Actor* thisx, PlayState* play);
void func_808B7478(Actor* thisx, PlayState* play);

ActorInit Bg_Spot17_Funen_InitVars = {
    /**/ ACTOR_BG_SPOT17_FUNEN,
    /**/ ACTORCAT_SWITCH,
    /**/ FLAGS,
    /**/ OBJECT_SPOT17_OBJ,
    /**/ sizeof(BgSpot17Funen),
    /**/ BgSpot17Funen_Init,
    /**/ BgSpot17Funen_Destroy,
    /**/ BgSpot17Funen_Update,
    /**/ NULL,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgSpot17Funen_Init(Actor* thisx, PlayState* play) {
    BgSpot17Funen* this = (BgSpot17Funen*)thisx;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    osSyncPrintf("spot17 obj. 噴煙 (arg_data 0x%04x)\n", this->actor.params);
}

void BgSpot17Funen_Destroy(Actor* thisx, PlayState* play) {
}

void BgSpot17Funen_Update(Actor* thisx, PlayState* play) {
    BgSpot17Funen* this = (BgSpot17Funen*)thisx;

    this->actor.draw = func_808B7478;
    this->actor.update = func_808B746C;
}

void func_808B746C(Actor* thisx, PlayState* play) {
}

void func_808B7478(Actor* thisx, PlayState* play) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_spot17_funen.c", 153);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    Matrix_RotateY((s16)(Camera_GetCamDirYaw(GET_ACTIVE_CAM(play)) - thisx->shape.rot.y + 0x8000) * 9.58738019108e-05f,
                   MTXMODE_APPLY);

    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_bg_spot17_funen.c", 161),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, (0 - play->gameplayFrames) & 0x7F, 0x20, 0x20,
                                1, 0, (0 - play->gameplayFrames) & 0x7F, 0x20, 0x20));
    gSPDisplayList(POLY_XLU_DISP++, gCraterSmokeConeDL);

    if (1) {}

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_spot17_funen.c", 176);
}
