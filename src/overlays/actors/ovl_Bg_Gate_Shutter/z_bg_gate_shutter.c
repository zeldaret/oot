/*
 * File: z_bg_gate_shutter.c
 * Overlay: Bg_Gate_Shutter
 * Description: Death Mountain Trail Gate
 */

#include "z_bg_gate_shutter.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "printf.h"
#include "sfx.h"
#include "stack_pad.h"
#include "sys_matrix.h"
#include "terminal.h"
#include "translation.h"
#include "z_lib.h"
#include "play_state.h"
#include "save.h"

#include "assets/objects/object_spot01_matoyab/object_spot01_matoyab.h"

#define FLAGS 0

void BgGateShutter_Init(Actor* thisx, PlayState* play);
void BgGateShutter_Destroy(Actor* thisx, PlayState* play);
void BgGateShutter_Update(Actor* thisx, PlayState* play);
void BgGateShutter_Draw(Actor* thisx, PlayState* play);

void BgGateShutter_WaitForGuard(BgGateShutter* this, PlayState* play);
void BgGateShutter_Open(BgGateShutter* this, PlayState* play);
void BgGateShutter_Cooldown(BgGateShutter* this, PlayState* play);
void BgGateShutter_Close(BgGateShutter* this, PlayState* play);

ActorProfile Bg_Gate_Shutter_Profile = {
    /**/ ACTOR_BG_GATE_SHUTTER,
    /**/ ACTORCAT_ITEMACTION,
    /**/ FLAGS,
    /**/ OBJECT_SPOT01_MATOYAB,
    /**/ sizeof(BgGateShutter),
    /**/ BgGateShutter_Init,
    /**/ BgGateShutter_Destroy,
    /**/ BgGateShutter_Update,
    /**/ BgGateShutter_Draw,
};

void BgGateShutter_Init(Actor* thisx, PlayState* play) {
    BgGateShutter* this = (BgGateShutter*)thisx;
    STACK_PADS(s32, 2);
    CollisionHeader* colHeader = NULL;

    DynaPolyActor_Init(&this->dyna, 0);
    CollisionHeader_GetVirtual(&gKakarikoGuardGateCol, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, thisx, colHeader);
    this->homePos.x = thisx->world.pos.x;
    this->homePos.y = thisx->world.pos.y;
    this->homePos.z = thisx->world.pos.z;
    if ((GET_INFTABLE(INFTABLE_76) || GET_EVENTCHKINF(EVENTCHKINF_OBTAINED_MASTER_SWORD)) &&
        (play->sceneId == SCENE_KAKARIKO_VILLAGE)) {
        thisx->world.pos.x = -89.0f;
        thisx->world.pos.z = -1375.0f;
    }
    thisx->scale.x = 1.0f;
    thisx->scale.y = 1.0f;
    thisx->scale.z = 1.0f;
    PRINTF("\n\n");
    PRINTF(VT_FGCOL(GREEN) T(" ☆☆☆☆☆ 柵でたなぁ ☆☆☆☆☆ \n", " ☆☆☆☆☆ There's a fence ☆☆☆☆☆ \n") VT_RST);
    this->actionFunc = BgGateShutter_WaitForGuard;
}

void BgGateShutter_Destroy(Actor* thisx, PlayState* play) {
    BgGateShutter* this = (BgGateShutter*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void BgGateShutter_WaitForGuard(BgGateShutter* this, PlayState* play) {
    if (this->openingState == GATE_SHUTTER_REQUEST_OPEN && !GET_INFTABLE(INFTABLE_76)) {
        this->timer = 2;
        this->actionFunc = BgGateShutter_Open;
    } else if (this->openingState == GATE_SHUTTER_REQUEST_REOPEN) {
        this->timer = 2;
        this->actionFunc = BgGateShutter_Open;
    } else if (this->openingState < GATE_SHUTTER_REQUEST_NONE) {
        this->timer = 2;
        this->actionFunc = BgGateShutter_Close;
    }
}

void BgGateShutter_Open(BgGateShutter* this, PlayState* play) {
    Actor* thisx = &this->dyna.actor;

    if (this->timer == 0) {
        Actor_PlaySfx(thisx, NA_SE_EV_METALGATE_OPEN - SFX_FLAG);
        thisx->world.pos.x -= 2.0f;
        Math_ApproachF(&thisx->world.pos.z, -1375.0f, 0.8f, 0.3f);
        if (thisx->world.pos.x < -89.0f) {
            Actor_PlaySfx(thisx, NA_SE_EV_BRIDGE_OPEN_STOP);
            this->timer = 30;
            this->actionFunc = BgGateShutter_Cooldown;
        }
    }
}

void BgGateShutter_Cooldown(BgGateShutter* this, PlayState* play) {
    if (this->timer == 0) {
        this->openingState = GATE_SHUTTER_REQUEST_NONE;
        this->actionFunc = BgGateShutter_WaitForGuard;
    }
}

void BgGateShutter_Close(BgGateShutter* this, PlayState* play) {
    Actor* thisx = &this->dyna.actor;

    if (this->timer == 0) {
        Actor_PlaySfx(thisx, NA_SE_EV_METALGATE_OPEN - SFX_FLAG);
        thisx->world.pos.x += 2.0f;
        Math_ApproachF(&thisx->world.pos.z, -1350.0f, 0.8f, 0.3f);
        if (thisx->world.pos.x > 90.0f) {
            thisx->world.pos.x = 91.0f;
            Actor_PlaySfx(thisx, NA_SE_EV_BRIDGE_OPEN_STOP);
            this->timer = 30;
            this->actionFunc = BgGateShutter_Cooldown;
        }
    }
}

void BgGateShutter_Update(Actor* thisx, PlayState* play) {
    BgGateShutter* this = (BgGateShutter*)thisx;

    if (this->timer != 0) {
        this->timer--;
    }
    this->actionFunc(this, play);
}

void BgGateShutter_Draw(Actor* thisx, PlayState* play) {
    OPEN_DISPS(play->state.gfxCtx, "../z_bg_gate_shutter.c", 323);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);

    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_bg_gate_shutter.c", 328);
    gSPDisplayList(POLY_OPA_DISP++, gKakarikoGuardGateDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_gate_shutter.c", 333);
}
