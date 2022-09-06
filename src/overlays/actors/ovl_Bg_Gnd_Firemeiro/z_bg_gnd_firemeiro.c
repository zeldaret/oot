/*
 * File: z_bg_gnd_firemeiro.c
 * Overlay: ovl_Bg_Gnd_Firemeiro
 * Description: Sinking lava platform (Ganon's Castle)
 */

#include "z_bg_gnd_firemeiro.h"
#include "assets/objects/object_demo_kekkai/object_demo_kekkai.h"

#define FLAGS (ACTOR_FLAG_4 | ACTOR_FLAG_5)

void BgGndFiremeiro_Init(Actor* thisx, PlayState* play);
void BgGndFiremeiro_Destroy(Actor* thisx, PlayState* play2);
void BgGndFiremeiro_Update(Actor* thisx, PlayState* play);
void BgGndFiremeiro_Draw(Actor* thisx, PlayState* play);

void BgGndFiremeiro_Sink(BgGndFiremeiro* this, PlayState* play);
void BgGndFiremeiro_Shake(BgGndFiremeiro* this, PlayState* play);
void BgGndFiremeiro_Rise(BgGndFiremeiro* this, PlayState* play);

const ActorInit Bg_Gnd_Firemeiro_InitVars = {
    ACTOR_BG_GND_FIREMEIRO,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_DEMO_KEKKAI,
    sizeof(BgGndFiremeiro),
    (ActorFunc)BgGndFiremeiro_Init,
    (ActorFunc)BgGndFiremeiro_Destroy,
    (ActorFunc)BgGndFiremeiro_Update,
    (ActorFunc)BgGndFiremeiro_Draw,
};

void BgGndFiremeiro_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    BgGndFiremeiro* this = (BgGndFiremeiro*)thisx;
    CollisionHeader* colHeader = NULL;

    ActorShape_Init(&this->bg.actor.shape, 0.0f, NULL, 0.0f);
    Actor_SetScale(&this->bg.actor, 0.1f);
    this->initPos = this->bg.actor.world.pos;

    if (this->bg.actor.params == 0) {
        BgActor_Init(&this->bg, DPM_UNK);
        CollisionHeader_GetVirtual(&gFireTrialPlatformCol, &colHeader);
        this->bg.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->bg.actor, colHeader);
        this->actionFunc = BgGndFiremeiro_Rise;
    }
}

void BgGndFiremeiro_Destroy(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    BgGndFiremeiro* this = (BgGndFiremeiro*)thisx;

    if (this->bg.actor.params == 0) {
        if (1) {}
        DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->bg.bgId);
    }
}

void BgGndFiremeiro_Sink(BgGndFiremeiro* this, PlayState* play) {
    f32 sunkHeight = this->initPos.y - 150.0f;

    if (BgActor_IsPlayerOnTop(&this->bg)) {
        this->timer = 10;
    }

    if (sunkHeight < this->bg.actor.world.pos.y) {
        this->bg.actor.world.pos.y -= 0.5f;

        if (this->bg.actor.world.pos.y < sunkHeight) {
            this->bg.actor.world.pos.y = sunkHeight;
        }

        func_8002F948(&this->bg.actor, NA_SE_EV_ROLL_STAND_2 - SFX_FLAG);
    }

    if (this->timer > 0) {
        this->timer--;
    } else {
        this->actionFunc = BgGndFiremeiro_Rise;
    }
}

void BgGndFiremeiro_Shake(BgGndFiremeiro* this, PlayState* play) {
    s32 pad;
    f32 randSign;

    if (BgActor_IsPlayerOnTop(&this->bg)) {
        if (this->timer > 0) {
            this->timer--;

            randSign = ((this->timer & 1) ? 2.0f : -2.0f);

            this->bg.actor.world.pos = this->initPos;
            this->bg.actor.world.pos.x += randSign * Math_SinS(this->timer * 0x2FFF);
            this->bg.actor.world.pos.z += randSign * Math_CosS(this->timer * 0x2FFF);
            this->bg.actor.world.pos.y += Math_CosS(this->timer * 0x7FFF);

            if (!(this->timer % 4)) {
                Audio_PlayActorSfx2(&this->bg.actor, NA_SE_EV_BLOCK_SHAKE);
            }
        } else {
            this->timer = 10;
            this->bg.actor.world.pos = this->initPos;
            this->actionFunc = BgGndFiremeiro_Sink;
        }
    } else {
        this->bg.actor.world.pos = this->initPos;
        this->actionFunc = BgGndFiremeiro_Rise;
    }
}

void BgGndFiremeiro_Rise(BgGndFiremeiro* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    Actor* thisx = &this->bg.actor;

    if ((player->currentBoots != PLAYER_BOOTS_HOVER) && BgActor_IsPlayerOnTop(&this->bg)) {
        if (thisx->world.pos.y < this->initPos.y) {
            this->actionFunc = BgGndFiremeiro_Sink;
            this->timer = 20;
        } else {
            this->actionFunc = BgGndFiremeiro_Shake;
            this->timer = 20;
        }
    } else {
        if (thisx->world.pos.y < this->initPos.y) {
            thisx->world.pos.y += 2.0f;
            if (this->initPos.y < thisx->world.pos.y) {
                thisx->world.pos.y = this->initPos.y;
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

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_bg_gnd_firemeiro.c", 282),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, gFireTrialPlatformDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_gnd_firemeiro.c", 285);
}
