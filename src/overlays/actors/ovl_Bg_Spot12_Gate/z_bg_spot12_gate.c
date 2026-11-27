/*
 * File: z_bg_spot12_gate.c
 * Overlay: ovl_Bg_Spot12_Gate
 * Description: Haunted Wasteland Gate
 */

#include "z_bg_spot12_gate.h"

#include "ichain.h"
#include "one_point_cutscene.h"
#include "printf.h"
#include "quake.h"
#include "sfx.h"
#include "stack_pad.h"
#include "translation.h"
#include "z_lib.h"
#include "play_state.h"

#include "assets/objects/object_spot12_obj/object_spot12_obj.h"

#define FLAGS 0

void BgSpot12Gate_Init(Actor* thisx, PlayState* play);
void BgSpot12Gate_Destroy(Actor* thisx, PlayState* play);
void BgSpot12Gate_Update(Actor* thisx, PlayState* play);
void BgSpot12Gate_Draw(Actor* thisx, PlayState* play);

void BgSpot12Gate_SetupWaitForSwitch(BgSpot12Gate* this);
void BgSpot12Gate_WaitForSwitch(BgSpot12Gate* this, PlayState* play);
void BgSpot12Gate_SetupWaitForCutscene(BgSpot12Gate* this);
void BgSpot12Gate_WaitForCutscene(BgSpot12Gate* this, PlayState* play);
void BgSpot12Gate_SetupOpen(BgSpot12Gate* this);
void BgSpot12Gate_Open(BgSpot12Gate* this, PlayState* play);
void BgSpot12Gate_SetupOpened(BgSpot12Gate* this);
void BgSpot12Gate_Opened(BgSpot12Gate* this, PlayState* play);

ActorProfile Bg_Spot12_Gate_Profile = {
    /**/ ACTOR_BG_SPOT12_GATE,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_SPOT12_OBJ,
    /**/ sizeof(BgSpot12Gate),
    /**/ BgSpot12Gate_Init,
    /**/ BgSpot12Gate_Destroy,
    /**/ BgSpot12Gate_Update,
    /**/ BgSpot12Gate_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 2500, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1200, ICHAIN_STOP),
};

void BgSpot12Gate_InitDynaPoly(BgSpot12Gate* this, PlayState* play, CollisionHeader* collision, s32 flags) {
    STACK_PAD(s32);
    CollisionHeader* colHeader = NULL;

    DynaPolyActor_Init(&this->dyna, flags);
    CollisionHeader_GetVirtual(collision, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);

#if DEBUG_FEATURES
    if (this->dyna.bgId == BG_ACTOR_MAX) {
        STACK_PAD(s32);

        PRINTF(T("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n",
                 "Warning : move BG registration failed (%s %d)(name %d)(arg_data 0x%04x)\n"),
               "../z_bg_spot12_gate.c", 145, this->dyna.actor.id, this->dyna.actor.params);
    }
#endif
}

void BgSpot12Gate_Init(Actor* thisx, PlayState* play) {
    BgSpot12Gate* this = (BgSpot12Gate*)thisx;

    BgSpot12Gate_InitDynaPoly(this, play, &gGerudoFortressWastelandGateCol, 0);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);

    if (Flags_GetSwitch(play, BGSPOT12GATE_GET_SWITCH_FLAG(&this->dyna.actor))) {
        BgSpot12Gate_SetupOpened(this);
    } else {
        BgSpot12Gate_SetupWaitForSwitch(this);
    }
}

void BgSpot12Gate_Destroy(Actor* thisx, PlayState* play) {
    BgSpot12Gate* this = (BgSpot12Gate*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void BgSpot12Gate_SetupWaitForSwitchFlag(BgSpot12Gate* this) {
    this->actionFunc = BgSpot12Gate_WaitForSwitchFlag;
    this->dyna.actor.world.pos.y = this->dyna.actor.home.pos.y;
}

void BgSpot12Gate_WaitForSwitch(BgSpot12Gate* this, PlayState* play) {
    if (Flags_GetSwitch(play, BGSPOT12GATE_GET_SWITCH_FLAG(&this->dyna.actor))) {
        BgSpot12Gate_SetupWaitForCutscene(this);
        OnePointCutscene_Init(play, 4160, -99, &this->dyna.actor, CAM_ID_MAIN);
    }
}

void BgSpot12Gate_SetupWaitForCutscene(BgSpot12Gate* this) {
    this->actionFunc = BgSpot12Gate_WaitForCutscene;
    this->timer = 40;
}

void BgSpot12Gate_WaitForCutscene(BgSpot12Gate* this, PlayState* play) {
    if (this->timer <= 0) {
        BgSpot12Gate_SetupOpen(this);
    }
}

void BgSpot12Gate_SetupOpen(BgSpot12Gate* this) {
    this->actionFunc = BgSpot12Gate_Open;
}

void BgSpot12Gate_Open(BgSpot12Gate* this, PlayState* play) {
    STACK_PAD(s32);

    Math_StepToF(&this->dyna.actor.velocity.y, 1.6f, 0.03f);
    if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y + 200.0f,
                     this->dyna.actor.velocity.y)) {
        BgSpot12Gate_SetupOpened(this);

        {
            s32 quakeIndex = Quake_Request(GET_ACTIVE_CAM(play), QUAKE_TYPE_3);

            Quake_SetSpeed(quakeIndex, -0x3CB0);
            Quake_SetPerturbations(quakeIndex, 3, 0, 0, 0);
            Quake_SetDuration(quakeIndex, 12);
        }

        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_BRIDGE_OPEN_STOP);
    } else {
        Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_METALGATE_OPEN - SFX_FLAG);
    }
}

void BgSpot12Gate_SetupOpened(BgSpot12Gate* this) {
    this->actionFunc = BgSpot12Gate_Opened;
    this->dyna.actor.world.pos.y = this->dyna.actor.home.pos.y + 200.0f;
}

void BgSpot12Gate_Opened(BgSpot12Gate* this, PlayState* play) {
}

void BgSpot12Gate_Update(Actor* thisx, PlayState* play) {
    BgSpot12Gate* this = (BgSpot12Gate*)thisx;

    if (this->timer > 0) {
        this->timer--;
    }
    this->actionFunc(this, play);
}

void BgSpot12Gate_Draw(Actor* thisx, PlayState* play) {
    Gfx_DrawDListOpa(play, gGerudoFortressWastelandGateDL);
}
