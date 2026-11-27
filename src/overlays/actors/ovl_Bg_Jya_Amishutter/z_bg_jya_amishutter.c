/*
 * File: z_bg_jya_amishutter.c
 * Overlay: Bg_Jya_Amishutter
 * Description: Circular metal grate. Lifts up when you get close to it. (Spirit Temple)
 */

#include "z_bg_jya_amishutter.h"

#include "ichain.h"
#include "printf.h"
#include "sfx.h"
#include "stack_pad.h"
#include "translation.h"
#include "z_lib.h"
#include "play_state.h"

#include "assets/objects/object_jya_obj/object_jya_obj.h"

#define FLAGS 0

void BgJyaAmishutter_Init(Actor* thisx, PlayState* play);
void BgJyaAmishutter_Destroy(Actor* thisx, PlayState* play);
void BgJyaAmishutter_Update(Actor* thisx, PlayState* play);
void BgJyaAmishutter_Draw(Actor* thisx, PlayState* play);

void BgJyaAmishutter_SetupWaitForPlayerNear(BgJyaAmishutter* this);
void BgJyaAmishutter_WaitForPlayerNear(BgJyaAmishutter* this);
void BgJyaAmishutter_SetupRaise(BgJyaAmishutter* this);
void BgJyaAmishutter_Raise(BgJyaAmishutter* this);
void BgJyaAmishutter_SetupWaitForPlayerFar(BgJyaAmishutter* this);
void BgJyaAmishutter_WaitForPlayerFar(BgJyaAmishutter* this);
void BgJyaAmishutter_SetupLower(BgJyaAmishutter* this);
void BgJyaAmishutter_Lower(BgJyaAmishutter* this);

ActorProfile Bg_Jya_Amishutter_Profile = {
    /**/ ACTOR_BG_JYA_AMISHUTTER,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_JYA_OBJ,
    /**/ sizeof(BgJyaAmishutter),
    /**/ BgJyaAmishutter_Init,
    /**/ BgJyaAmishutter_Destroy,
    /**/ BgJyaAmishutter_Update,
    /**/ BgJyaAmishutter_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 200, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1000, ICHAIN_STOP),
};

void BgJyaAmishutter_InitDynaPoly(BgJyaAmishutter* this, PlayState* play, CollisionHeader* collision,
                                  s32 transformFlags) {
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
               "../z_bg_jya_amishutter.c", 129, this->dyna.actor.id, this->dyna.actor.params);
    }
#endif
}

void BgJyaAmishutter_Init(Actor* thisx, PlayState* play) {
    BgJyaAmishutter* this = (BgJyaAmishutter*)thisx;

    BgJyaAmishutter_InitDynaPoly(this, play, &gAmishutterCol, 0);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    BgJyaAmishutter_SetupWaitForPlayerNear(this);
}

void BgJyaAmishutter_Destroy(Actor* thisx, PlayState* play) {
    BgJyaAmishutter* this = (BgJyaAmishutter*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void BgJyaAmishutter_SetupWaitForPlayerNear(BgJyaAmishutter* this) {
    this->actionFunc = BgJyaAmishutter_WaitForPlayerNear;
}

void BgJyaAmishutter_WaitForPlayerNear(BgJyaAmishutter* this) {
    if ((this->dyna.actor.xzDistToPlayer < 60.0f) && (fabsf(this->dyna.actor.yDistToPlayer) < 30.0f)) {
        BgJyaAmishutter_SetupRaise(this);
    }
}

void BgJyaAmishutter_SetupRaise(BgJyaAmishutter* this) {
    this->actionFunc = BgJyaAmishutter_Raise;
}

void BgJyaAmishutter_Raise(BgJyaAmishutter* this) {
    if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y + 100.0f, 3.0f)) {
        BgJyaAmishutter_SetupWaitForPlayerFar(this);
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_METALDOOR_STOP);
    } else {
        Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_METALDOOR_SLIDE - SFX_FLAG);
    }
}

void BgJyaAmishutter_SetupWaitForPlayerFar(BgJyaAmishutter* this) {
    this->actionFunc = BgJyaAmishutter_WaitForPlayerFar;
}

void BgJyaAmishutter_WaitForPlayerFar(BgJyaAmishutter* this) {
    // Unlike the check that raises the grate, this only considers horizontal distance, and the range is much larger.
    // The grate stays raised regardless of the player's height until they are well away from it.
    if (this->dyna.actor.xzDistToPlayer > 300.0f) {
        BgJyaAmishutter_SetupLower(this);
    }
}

void BgJyaAmishutter_SetupLower(BgJyaAmishutter* this) {
    this->actionFunc = BgJyaAmishutter_Lower;
}

void BgJyaAmishutter_Lower(BgJyaAmishutter* this) {
    // The player's position is not checked while lowering. The grate always returns fully to its home position
    // before it can be raised again.
    if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y, 3.0f)) {
        BgJyaAmishutter_SetupWaitForPlayerNear(this);
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_METALDOOR_STOP);
    } else {
        Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_METALDOOR_SLIDE - SFX_FLAG);
    }
}

void BgJyaAmishutter_Update(Actor* thisx, PlayState* play) {
    BgJyaAmishutter* this = (BgJyaAmishutter*)thisx;

    this->actionFunc(this);
}

void BgJyaAmishutter_Draw(Actor* thisx, PlayState* play) {
    Gfx_DrawDListOpa(play, gAmishutterDL);
}
