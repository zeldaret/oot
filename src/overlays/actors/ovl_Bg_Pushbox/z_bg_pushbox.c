/*
 * File: z_bg_pushbox.c
 * Overlay: ovl_Bg_Pushbox
 * Description: Unused (and non functional) pushable block
 */

#include "z_bg_pushbox.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "z64play.h"

#include "assets/objects/object_pu_box/object_pu_box.h"

#define FLAGS 0

void BgPushbox_Init(Actor* thisx, PlayState* play);
void BgPushbox_Destroy(Actor* thisx, PlayState* play);
void BgPushbox_Update(Actor* thisx, PlayState* play);
void BgPushbox_Draw(Actor* thisx, PlayState* play);

void BgPushbox_UpdateImpl(BgPushbox* this, PlayState* play);

ActorProfile Bg_Pushbox_Profile = {
    /**/ ACTOR_BG_PUSHBOX,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    //! @bug fixing this actor would involve using OBJECT_PU_BOX
    /**/ OBJECT_GAMEPLAY_DANGEON_KEEP,
    /**/ sizeof(BgPushbox),
    /**/ BgPushbox_Init,
    /**/ BgPushbox_Destroy,
    /**/ BgPushbox_Update,
    /**/ BgPushbox_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32_DIV1000(gravity, -2000, ICHAIN_STOP),
};

void BgPushbox_SetupAction(BgPushbox* this, BgPushboxActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void BgPushbox_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    BgPushbox* this = (BgPushbox*)thisx;
    CollisionHeader* colHeader = NULL;
    s32 pad2;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyActor_Init(&this->dyna, 0);
    CollisionHeader_GetVirtual(&gBlockSmallCol, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
    ActorShape_Init(&this->dyna.actor.shape, 0.0f, NULL, 0.0f);
    BgPushbox_SetupAction(this, BgPushbox_UpdateImpl);
}

void BgPushbox_Destroy(Actor* thisx, PlayState* play) {
    BgPushbox* this = (BgPushbox*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void BgPushbox_UpdateImpl(BgPushbox* this, PlayState* play) {
    this->dyna.actor.speed += this->dyna.unk_150 * 0.2f;
    this->dyna.actor.speed = CLAMP(this->dyna.actor.speed, -1.0f, 1.0f);
    Math_StepToF(&this->dyna.actor.speed, 0.0f, 0.2f);
    this->dyna.actor.world.rot.y = this->dyna.unk_158;
    Actor_MoveXZGravity(&this->dyna.actor);
    Actor_UpdateBgCheckInfo(play, &this->dyna.actor, 20.0f, 40.0f, 40.0f,
                            UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 |
                                UPDBGCHECKINFO_FLAG_4);
}

void BgPushbox_Update(Actor* thisx, PlayState* play) {
    BgPushbox* this = (BgPushbox*)thisx;

    this->actionFunc(this, play);
    func_8002DF90(&this->dyna);
}

void BgPushbox_Draw(Actor* thisx, PlayState* play) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_pushbox.c", 263);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_bg_pushbox.c", 269);
    gSPDisplayList(POLY_OPA_DISP++, gBlockSmallDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_pushbox.c", 272);
}
