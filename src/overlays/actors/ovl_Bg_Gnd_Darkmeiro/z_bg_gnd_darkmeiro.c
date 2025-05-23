/*
 * File: z_bg_gnd_darkmeiro.c
 * Overlay: ovl_Bg_Gnd_Darkmeiro
 * Description: Shadow trial actors (invisible path, clear block, and timer)
 */

#include "z_bg_gnd_darkmeiro.h"
#include "assets/objects/object_demo_kekkai/object_demo_kekkai.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED)

void BgGndDarkmeiro_Init(Actor* thisx, PlayState* play2);
void BgGndDarkmeiro_Destroy(Actor* thisx, PlayState* play2);
void BgGndDarkmeiro_Update(Actor* thisx, PlayState* play2);
void BgGndDarkmeiro_DrawInvisiblePath(Actor* thisx, PlayState* play);
void BgGndDarkmeiro_DrawSwitchBlock(Actor* thisx, PlayState* play);
void BgGndDarkmeiro_DrawStaticBlock(Actor* thisx, PlayState* play);

void BgGndDarkmeiro_Noop(BgGndDarkmeiro* this, PlayState* play);
void BgGndDarkmeiro_UpdateBlockTimer(BgGndDarkmeiro* this, PlayState* play);
void BgGndDarkmeiro_UpdateStaticBlock(BgGndDarkmeiro* this, PlayState* play);
void BgGndDarkmeiro_UpdateSwitchBlock(BgGndDarkmeiro* this, PlayState* play);

ActorProfile Bg_Gnd_Darkmeiro_Profile = {
    /**/ ACTOR_BG_GND_DARKMEIRO,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_DEMO_KEKKAI,
    /**/ sizeof(BgGndDarkmeiro),
    /**/ BgGndDarkmeiro_Init,
    /**/ BgGndDarkmeiro_Destroy,
    /**/ BgGndDarkmeiro_Update,
    /**/ NULL,
};

void BgGndDarkmeiro_ToggleBlock(BgGndDarkmeiro* this, PlayState* play) {
    if (this->actionFlags & 2) {
        if (this->timer1 == 0) {
            DynaPoly_DisableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
            this->actionFlags &= ~2;
        }
    } else if (this->timer1 != 0) {
        DynaPoly_EnableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
        this->actionFlags |= 2;
    }
}

void BgGndDarkmeiro_Init(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    CollisionHeader* colHeader = NULL;
    BgGndDarkmeiro* this = (BgGndDarkmeiro*)thisx;

    this->updateFunc = BgGndDarkmeiro_Noop;
    Actor_SetScale(&this->dyna.actor, 0.1f);
    switch (PARAMS_GET_U(this->dyna.actor.params, 0, 8)) {
        case DARKMEIRO_INVISIBLE_PATH:
            this->dyna.actor.draw = BgGndDarkmeiro_DrawInvisiblePath;
            this->dyna.actor.flags |= ACTOR_FLAG_REACT_TO_LENS;
            break;
        case DARKMEIRO_CLEAR_BLOCK:
            CollisionHeader_GetVirtual(&gClearBlockCol, &colHeader);
            this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
            if (PARAMS_GET_U(this->dyna.actor.params, 8, 6) == 0x3F) {
                this->updateFunc = BgGndDarkmeiro_UpdateStaticBlock;
                this->dyna.actor.draw = BgGndDarkmeiro_DrawStaticBlock;
            } else {
                this->actionFlags = this->timer1 = this->timer2 = 0;
                thisx->draw = BgGndDarkmeiro_DrawSwitchBlock;
                this->updateFunc = BgGndDarkmeiro_UpdateSwitchBlock;
                if (!Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 8, 6))) {
                    DynaPoly_DisableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
                } else {
                    this->timer1 = 64;
                    this->actionFlags |= 2;
                }
            }
            break;
        case DARKMEIRO_BLOCK_TIMER:
            this->actionFlags = this->timer1 = this->timer2 = 0;
            this->updateFunc = BgGndDarkmeiro_UpdateBlockTimer;
            thisx->draw = NULL;
            if (Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 8, 6) + 1)) {
                this->timer1 = 64;
                this->actionFlags |= 4;
            }
            if (Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 8, 6) + 2)) {
                this->timer2 = 64;
                this->actionFlags |= 8;
            }
            if ((this->timer1 != 0) || (this->timer2 != 0)) {
                Flags_SetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 8, 6));
            } else {
                Flags_UnsetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 8, 6));
            }
            break;
    }
}

void BgGndDarkmeiro_Destroy(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    BgGndDarkmeiro* this = (BgGndDarkmeiro*)thisx;

    if (PARAMS_GET_U(this->dyna.actor.params, 0, 8) != 1) {
        return;
    }

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void BgGndDarkmeiro_Noop(BgGndDarkmeiro* this, PlayState* play) {
}

void BgGndDarkmeiro_UpdateBlockTimer(BgGndDarkmeiro* this, PlayState* play) {
    s16 timeLeft;

    if (Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 8, 6) + 1)) {
        if (this->actionFlags & 4) {
            if (this->timer1 > 0) {
                this->timer1--;
            } else {
                Flags_UnsetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 8, 6) + 1);
                this->actionFlags &= ~4;
            }
        } else {
            this->actionFlags |= 4;
            this->timer1 = 304;
            Audio_PlaySfxGeneral(NA_SE_EV_RED_EYE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        }
    }

    if (Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 8, 6) + 2)) {
        if (this->actionFlags & 8) {
            if (this->timer2 > 0) {
                this->timer2--;
            } else {
                Flags_UnsetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 8, 6) + 2);
                this->actionFlags &= ~8;
            }
        } else {
            this->actionFlags |= 8;
            this->timer2 = 304;
            Audio_PlaySfxGeneral(NA_SE_EV_RED_EYE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        }
    }

    timeLeft = CLAMP_MIN(this->timer1, this->timer2);
    if (timeLeft > 0) {
        Actor_PlaySfx_FlaggedTimer(&this->dyna.actor, timeLeft);
    }
    if ((this->timer1 >= 64) || (this->timer2 >= 64)) {
        Flags_SetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 8, 6));
    } else {
        Flags_UnsetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 8, 6));
    }
}

void BgGndDarkmeiro_UpdateStaticBlock(BgGndDarkmeiro* this, PlayState* play) {
}

void BgGndDarkmeiro_UpdateSwitchBlock(BgGndDarkmeiro* this, PlayState* play) {
    if (this->timer1 > 0) {
        this->timer1--;
    }

    if (Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 8, 6))) {
        this->timer1 = 64;
    }

    BgGndDarkmeiro_ToggleBlock(this, play);
}

void BgGndDarkmeiro_Update(Actor* thisx, PlayState* play2) {
    BgGndDarkmeiro* this = (BgGndDarkmeiro*)thisx;
    PlayState* play = play2;

    this->updateFunc(this, play2);
}

void BgGndDarkmeiro_DrawInvisiblePath(Actor* thisx, PlayState* play) {
    Gfx_DrawDListXlu(play, gShadowTrialPathDL);
}

void BgGndDarkmeiro_DrawSwitchBlock(Actor* thisx, PlayState* play) {
    BgGndDarkmeiro* this = (BgGndDarkmeiro*)thisx;
    s16 vanishTimer;

    vanishTimer = this->timer1;
    if (vanishTimer != 0) {
        if (vanishTimer > 64) {
            this->timer2 = (this->timer2 < 120) ? this->timer2 + 8 : 127;
        } else if (vanishTimer > 16) {
            this->timer2 = (Math_CosS((u16)this->timer1 * 0x1000) * 64.0f) + 127.0f;
            if (this->timer2 > 127) {
                this->timer2 = 127;
            }
        } else {
            this->timer2 = vanishTimer * 8;
        }

        OPEN_DISPS(play->state.gfxCtx, "../z_bg_gnd_darkmeiro.c", 378);
        //! @bug Due to a bug in the display list, the transparency data is not used.
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 198, 202, 208, this->timer2);
        CLOSE_DISPS(play->state.gfxCtx, "../z_bg_gnd_darkmeiro.c", 380);

        Gfx_DrawDListXlu(play, gClearBlockDL);
    }
}

void BgGndDarkmeiro_DrawStaticBlock(Actor* thisx, PlayState* play) {
    OPEN_DISPS(play->state.gfxCtx, "../z_bg_gnd_darkmeiro.c", 391);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 198, 202, 208, 255);
    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_gnd_darkmeiro.c", 393);

    Gfx_DrawDListXlu(play, gClearBlockDL);
}
