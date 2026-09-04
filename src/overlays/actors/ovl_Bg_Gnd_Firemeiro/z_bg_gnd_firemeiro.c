/*
 * File: z_bg_gnd_firemeiro.c
 * Overlay: ovl_Bg_Gnd_Firemeiro
 * Description: Sinking lava platform (Ganon's Castle)
 */

#include "z_bg_gnd_firemeiro.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "play_state.h"
#include "player.h"

#include "assets/objects/object_demo_kekkai/object_demo_kekkai.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED)

void BgGndFiremeiro_Init(Actor* thisx, PlayState* play2);
void BgGndFiremeiro_Destroy(Actor* thisx, PlayState* play2);
void BgGndFiremeiro_Update(Actor* thisx, PlayState* play);
void BgGndFiremeiro_Draw(Actor* thisx, PlayState* play);

void BgGndFiremeiro_RiseWaitAtTop(BgGndFiremeiro* this, PlayState* play);

ActorProfile Bg_Gnd_Firemeiro_Profile = {
    /**/ ACTOR_BG_GND_FIREMEIRO,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_DEMO_KEKKAI,
    /**/ sizeof(BgGndFiremeiro),
    /**/ BgGndFiremeiro_Init,
    /**/ BgGndFiremeiro_Destroy,
    /**/ BgGndFiremeiro_Update,
    /**/ BgGndFiremeiro_Draw,
};

void BgGndFiremeiro_Init(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    BgGndFiremeiro* this = (BgGndFiremeiro*)thisx;
    CollisionHeader* colHeader = NULL;

    ActorShape_Init(&this->dyna.actor.shape, 0.0f, NULL, 0.0f);
    Actor_SetScale(&this->dyna.actor, 0.1f);
    this->homePos = this->dyna.actor.world.pos;
    if (this->dyna.actor.params == 0) {
        DynaPolyActor_Init(&this->dyna, 0);
        CollisionHeader_GetVirtual(&gFireTrialPlatformCol, &colHeader);
        this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
        this->actionFunc = BgGndFiremeiro_RiseWaitAtTop;
    }
}

void BgGndFiremeiro_Destroy(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    BgGndFiremeiro* this = (BgGndFiremeiro*)thisx;

    if (this->dyna.actor.params != 0) {
        return;
    }
    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void BgGndFIremeiro_Sink(BgGndFiremeiro* this, PlayState* play) {
    f32 sinkTarget = this->homePos.y - 150.0f;

    if (DynaPolyActor_IsPlayerOnTop(&this->dyna) != 0) {
        this->timer = 10;
    }
    if (sinkTarget < this->dyna.actor.world.pos.y) {
        this->dyna.actor.world.pos.y -= 0.5f;
        // I was not able to get this to be true in fire trial.
        if (this->dyna.actor.world.pos.y < sinkTarget) {
            this->dyna.actor.world.pos.y = sinkTarget;
        }
        Actor_PlaySfx_FlaggedCentered2(&this->dyna.actor, NA_SE_EV_ROLL_STAND_2 - SFX_FLAG);
    }
    if (this->timer > 0) {
        this->timer--;
    } else {
        this->actionFunc = BgGndFiremeiro_RiseWaitAtTop;
    }
}

void BgGndFiremeiro_Shake(BgGndFiremeiro* this, PlayState* play) {
    s32 pad;
    f32 shakeOffset;

    if (DynaPolyActor_IsPlayerOnTop(&this->dyna) != 0) {
        if (this->timer > 0) {
            this->timer--;
            if ((this->timer % 2) != 0) {
                shakeOffset = 2.0f;
            } else {
                shakeOffset = -2.0f;
            }
            this->dyna.actor.world.pos = this->homePos;
            this->dyna.actor.world.pos.x += shakeOffset * Math_SinS(this->timer * 0x2FFF);
            this->dyna.actor.world.pos.z += shakeOffset * Math_CosS(this->timer * 0x2FFF);
            this->dyna.actor.world.pos.y += Math_CosS(this->timer * 0x7FFF);
            if (!(this->timer % 4)) {
                Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_BLOCK_SHAKE);
            }
        } else {
            this->timer = 10;
            this->dyna.actor.world.pos = this->homePos;
            this->actionFunc = BgGndFIremeiro_Sink;
        }
    } else {
        this->dyna.actor.world.pos = this->homePos;
        this->actionFunc = BgGndFiremeiro_RiseWaitAtTop;
    }
}

void BgGndFiremeiro_RiseWaitAtTop(BgGndFiremeiro* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    Actor* thisx = &this->dyna.actor;

    if ((player->currentBoots != 2) && (DynaPolyActor_IsPlayerOnTop(&this->dyna) != 0)) {
        if (thisx->world.pos.y < this->homePos.y) {
            this->actionFunc = BgGndFIremeiro_Sink;
            this->timer = 20;
        } else {
            this->actionFunc = BgGndFiremeiro_Shake;
            this->timer = 20;
        }
    } else {
        if (thisx->world.pos.y < this->homePos.y) {
            thisx->world.pos.y += 2.0f;
            if (this->homePos.y < thisx->world.pos.y) {
                thisx->world.pos.y = this->homePos.y;
            }
        }
    }
}

void BgGndFiremeiro_Update(Actor* thisx, PlayState* play) {
    BgGndFiremeiro* this = (BgGndFiremeiro*)thisx;

    this->actionFunc(this, play);
}

void BgGndFiremeiro_Draw(Actor* thisx, PlayState* play) {
    OPEN_DISPS(play->state.gfxCtx, "../z_bg_gnd_firemeiro.c", 280);

    Gfx_SetupDL_37Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_bg_gnd_firemeiro.c", 282);
    gSPDisplayList(POLY_OPA_DISP++, gFireTrialPlatformDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_gnd_firemeiro.c", 285);
}
