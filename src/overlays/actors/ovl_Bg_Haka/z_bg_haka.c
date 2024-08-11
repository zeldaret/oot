/*
 * File: z_bg_haka.c
 * Overlay: ovl_Bg_Haka
 * Description: Gravestone
 */

#include "z_bg_haka.h"
#include "assets/objects/object_haka/object_haka.h"

#define FLAGS 0

void BgHaka_Init(Actor* thisx, PlayState* play);
void BgHaka_Destroy(Actor* thisx, PlayState* play);
void BgHaka_Update(Actor* thisx, PlayState* play);
void BgHaka_Draw(Actor* thisx, PlayState* play);

void BgHaka_CheckPlayerOnDirtPatch(BgHaka* this, Player* player);
void BgHaka_IdleClosed(BgHaka* this, PlayState* play);
void BgHaka_Pull(BgHaka* this, PlayState* play);
void BgHaka_IdleOpened(BgHaka* this, PlayState* play);
void BgHaka_IdleLockedClosed(BgHaka* this, PlayState* play);

ActorProfile Bg_Haka_Profile = {
    /**/ ACTOR_BG_HAKA,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_HAKA,
    /**/ sizeof(BgHaka),
    /**/ BgHaka_Init,
    /**/ BgHaka_Destroy,
    /**/ BgHaka_Update,
    /**/ BgHaka_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(minVelocityY, 0, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgHaka_Init(Actor* thisx, PlayState* play) {
    BgHaka* this = (BgHaka*)thisx;
    s32 pad;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyActor_Init(&this->dyna, 0);
    CollisionHeader_GetVirtual(&gGravestoneCol, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
    this->actionFunc = BgHaka_IdleClosed;
}

void BgHaka_Destroy(Actor* thisx, PlayState* play) {
    BgHaka* this = (BgHaka*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void BgHaka_CheckPlayerOnDirtPatch(BgHaka* this, Player* player) {
    Vec3f playerRelativePos;

    Actor_WorldToActorCoords(&this->dyna.actor, &playerRelativePos, &player->actor.world.pos);
    if (fabsf(playerRelativePos.x) < 34.6f && playerRelativePos.z > -112.8f && playerRelativePos.z < -36.0f) {
        player->stateFlags2 |= PLAYER_STATE2_FORCE_SAND_FLOOR_SOUND;
    }
}

void BgHaka_IdleClosed(BgHaka* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (this->dyna.unk_150 != 0.0f) {
        if (play->sceneId == SCENE_GRAVEYARD && !LINK_IS_ADULT && IS_DAY) {
            this->dyna.unk_150 = 0.0f;
            player->stateFlags2 &= ~PLAYER_STATE2_4;
            if (!Play_InCsMode(play)) {
                Message_StartTextbox(play, 0x5073, NULL);
                this->dyna.actor.params = 100; // Used as a cooldown for displaying Graveyard Boy's warning
                this->actionFunc = BgHaka_IdleLockedClosed;
            }
        } else if (0.0f < this->dyna.unk_150 ||
                   (play->sceneId == SCENE_LAKE_HYLIA && !LINK_IS_ADULT && !Flags_GetSwitch(play, 0x23))) {
            this->dyna.unk_150 = 0.0f;
            player->stateFlags2 &= ~PLAYER_STATE2_4;
        } else {
            this->dyna.actor.world.rot.y = this->dyna.actor.shape.rot.y + 0x8000;
            this->actionFunc = BgHaka_Pull;
        }
    }
    BgHaka_CheckPlayerOnDirtPatch(this, player);
}

void BgHaka_Pull(BgHaka* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 reachedMaxPullDist;

    this->dyna.actor.speed += 0.05f;
    this->dyna.actor.speed = CLAMP_MAX(this->dyna.actor.speed, 1.5f);
    // minVelocityY is used to keep track of the distance pulled from home
    reachedMaxPullDist = Math_StepToF(&this->dyna.actor.minVelocityY, 60.0f, this->dyna.actor.speed);
    this->dyna.actor.world.pos.x =
        Math_SinS(this->dyna.actor.world.rot.y) * this->dyna.actor.minVelocityY + this->dyna.actor.home.pos.x;
    this->dyna.actor.world.pos.z =
        Math_CosS(this->dyna.actor.world.rot.y) * this->dyna.actor.minVelocityY + this->dyna.actor.home.pos.z;
    if (reachedMaxPullDist) {
        this->dyna.unk_150 = 0.0f;
        player->stateFlags2 &= ~PLAYER_STATE2_4;
        if (this->dyna.actor.params == 1) {
            Sfx_PlaySfxCentered(NA_SE_SY_CORRECT_CHIME);
        } else if (!IS_DAY && play->sceneId == SCENE_GRAVEYARD) {
            Actor_Spawn(&play->actorCtx, play, ACTOR_EN_POH, this->dyna.actor.home.pos.x, this->dyna.actor.home.pos.y,
                        this->dyna.actor.home.pos.z, 0, this->dyna.actor.shape.rot.y, 0, 1);
        }
        this->actionFunc = BgHaka_IdleOpened;
    }
    func_8002F974(&this->dyna.actor, NA_SE_EV_ROCK_SLIDE - SFX_FLAG);
}

void BgHaka_IdleOpened(BgHaka* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (this->dyna.unk_150 != 0.0f) {
        this->dyna.unk_150 = 0.0f;
        player->stateFlags2 &= ~PLAYER_STATE2_4;
    }
}

void BgHaka_IdleLockedClosed(BgHaka* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 pad;

    if (this->dyna.actor.params != 0) {
        this->dyna.actor.params--;
    }
    if (this->dyna.unk_150 != 0.0f) {
        this->dyna.unk_150 = 0.0f;
        player->stateFlags2 &= ~PLAYER_STATE2_4;
    }
    if (this->dyna.actor.params == 0) {
        this->actionFunc = BgHaka_IdleClosed;
    }
    BgHaka_CheckPlayerOnDirtPatch(this, player);
}

void BgHaka_Update(Actor* thisx, PlayState* play) {
    BgHaka* this = (BgHaka*)thisx;

    this->actionFunc(this, play);
}

void BgHaka_Draw(Actor* thisx, PlayState* play) {
    OPEN_DISPS(play->state.gfxCtx, "../z_bg_haka.c", 401);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    gSPMatrix(POLY_OPA_DISP++, MATRIX_NEW(play->state.gfxCtx, "../z_bg_haka.c", 406),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, gGravestoneStoneDL);
    Matrix_Translate(0.0f, 0.0f, thisx->minVelocityY * 10.0f, MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, MATRIX_NEW(play->state.gfxCtx, "../z_bg_haka.c", 416),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, gGravestoneEarthDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_haka.c", 421);
}
