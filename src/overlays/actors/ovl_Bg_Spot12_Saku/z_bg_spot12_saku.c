/*
 * File: z_bg_spot12_saku.c
 * Overlay: ovl_Bg_Spot12_Saku
 * Description: Gerudo Training Ground entrance shutter (Gerudo Fortress)
 */

#include "z_bg_spot12_saku.h"

#include "ichain.h"
#include "one_point_cutscene.h"
#include "printf.h"
#include "sfx.h"
#include "stack_pad.h"
#include "translation.h"
#include "z_lib.h"
#include "play_state.h"

#include "assets/objects/object_spot12_obj/object_spot12_obj.h"

#define FLAGS 0

void BgSpot12Saku_Init(Actor* thisx, PlayState* play);
void BgSpot12Saku_Destroy(Actor* thisx, PlayState* play);
void BgSpot12Saku_Update(Actor* thisx, PlayState* play);
void BgSpot12Saku_Draw(Actor* thisx, PlayState* play);

void BgSpot12Saku_SetupWaitForSwitchFlag(BgSpot12Saku* this);
void BgSpot12Saku_WaitForSwitchFlag(BgSpot12Saku* this, PlayState* play);
void BgSpot12Saku_SetupOpen(BgSpot12Saku* this);
void BgSpot12Saku_Open(BgSpot12Saku* this, PlayState* play);
void BgSpot12Saku_SetupOpened(BgSpot12Saku* this);
void BgSpot12Saku_Opened(BgSpot12Saku* this, PlayState* play);

ActorProfile Bg_Spot12_Saku_Profile = {
    /**/ ACTOR_BG_SPOT12_SAKU,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_SPOT12_OBJ,
    /**/ sizeof(BgSpot12Saku),
    /**/ BgSpot12Saku_Init,
    /**/ BgSpot12Saku_Destroy,
    /**/ BgSpot12Saku_Update,
    /**/ BgSpot12Saku_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 1200, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1000, ICHAIN_STOP),
};

void BgSpot12Saku_InitDynaPoly(BgSpot12Saku* this, PlayState* play, CollisionHeader* collision, s32 transformFlags) {
    STACK_PAD(s32);
    CollisionHeader* colHeader = NULL;

    DynaPolyActor_Init(&this->dyna, transformFlags);
    CollisionHeader_GetVirtual(collision, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);

#if DEBUG_FEATURES
    if (this->dyna.bgId == BG_ACTOR_MAX) {
        STACK_PAD(s32);

        PRINTF(T("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n",
                 "Warning : move BG registration failed (%s %d)(name %d)(arg_data 0x%04x)\n"),
               "../z_bg_spot12_saku.c", 140, this->dyna.actor.id, this->dyna.actor.params);
    }
#endif
}

void BgSpot12Saku_Init(Actor* thisx, PlayState* play) {
    BgSpot12Saku* this = (BgSpot12Saku*)thisx;

    BgSpot12Saku_InitDynaPoly(this, play, &gGerudoFortressGTGShutterCol, 0);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    if (Flags_GetSwitch(play, BGSPOT12SAKU_GET_SWITCH_FLAG(&this->dyna.actor))) {
        BgSpot12Saku_SetupOpened(this);
    } else {
        BgSpot12Saku_SetupWaitForSwitchFlag(this);
    }
}

void BgSpot12Saku_Destroy(Actor* thisx, PlayState* play) {
    BgSpot12Saku* this = (BgSpot12Saku*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void BgSpot12Saku_SetupWaitForSwitchFlag(BgSpot12Saku* this) {
    this->actionFunc = BgSpot12Saku_WaitForSwitchFlag;
    this->dyna.actor.scale.x = 0.1f;
    this->dyna.actor.world.pos.x = this->dyna.actor.home.pos.x;
    this->dyna.actor.world.pos.z = this->dyna.actor.home.pos.z;
}

void BgSpot12Saku_WaitForSwitchFlag(BgSpot12Saku* this, PlayState* play) {
    if (Flags_GetSwitch(play, BGSPOT12SAKU_GET_SWITCH_FLAG(&this->dyna.actor))) {
        BgSpot12Saku_SetupOpen(this);
        this->timer = 20;
        OnePointCutscene_Init(play, 4170, -99, &this->dyna.actor, CAM_ID_MAIN);
    }
}

void BgSpot12Saku_SetupOpen(BgSpot12Saku* this) {
    // The caller only sets the timer after this function returns, so the timer is always 0 here and the shutter
    // starts opening on the next frame. The timer then counts down without anything else reading it
    if (this->timer == 0) {
        this->actionFunc = BgSpot12Saku_Open;
    }
}

void BgSpot12Saku_Open(BgSpot12Saku* this, PlayState* play) {
    f32 scaleStepRemaining = Math_SmoothStepToF(&this->dyna.actor.scale.x, 0.001f / 0.14f, 0.16f, 0.0022f, 0.001f);
    f32 slideOffset = ((0.1f - this->dyna.actor.scale.x) * 840.0f);

    // The model is 840 units wide on either side of its origin. Shifting the actor sideways by the width lost to the
    // shrinking X scale keeps one edge in place, so the shutter appears to retract toward that edge
    this->dyna.actor.world.pos.x =
        this->dyna.actor.home.pos.x - (Math_SinS(this->dyna.actor.shape.rot.y + 0x4000) * slideOffset);
    this->dyna.actor.world.pos.z =
        this->dyna.actor.home.pos.z - (Math_CosS(this->dyna.actor.shape.rot.y + 0x4000) * slideOffset);
    if (fabsf(scaleStepRemaining) < 0.0001f) {
        BgSpot12Saku_SetupOpened(this);
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_BRIDGE_OPEN_STOP);
    } else {
        Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_METALGATE_OPEN - SFX_FLAG);
    }
}

void BgSpot12Saku_SetupOpened(BgSpot12Saku* this) {
    this->actionFunc = BgSpot12Saku_Opened;
    this->dyna.actor.scale.x = 0.001f / 0.14f;
    // 78 is the sideways offset BgSpot12Saku_Open reaches at this scale: (0.1 - 0.001 / 0.14) * 840
    this->dyna.actor.world.pos.x =
        this->dyna.actor.home.pos.x - (Math_SinS(this->dyna.actor.shape.rot.y + 0x4000) * 78.0f);
    this->dyna.actor.world.pos.z =
        this->dyna.actor.home.pos.z - (Math_CosS(this->dyna.actor.shape.rot.y + 0x4000) * 78.0f);
}

void BgSpot12Saku_Opened(BgSpot12Saku* this, PlayState* play) {
}

void BgSpot12Saku_Update(Actor* thisx, PlayState* play) {
    BgSpot12Saku* this = (BgSpot12Saku*)thisx;

    if (this->timer > 0) {
        this->timer--;
    }
    this->actionFunc(this, play);
}

void BgSpot12Saku_Draw(Actor* thisx, PlayState* play) {
    Gfx_DrawDListOpa(play, gGerudoFortressGTGShutterDL);
}
