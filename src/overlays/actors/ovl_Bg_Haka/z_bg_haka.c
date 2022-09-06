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

void func_8087B758(BgHaka* this, Player* player);
void func_8087B7E8(BgHaka* this, PlayState* play);
void func_8087B938(BgHaka* this, PlayState* play);
void func_8087BAAC(BgHaka* this, PlayState* play);
void func_8087BAE4(BgHaka* this, PlayState* play);

const ActorInit Bg_Haka_InitVars = {
    ACTOR_BG_HAKA,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_HAKA,
    sizeof(BgHaka),
    (ActorFunc)BgHaka_Init,
    (ActorFunc)BgHaka_Destroy,
    (ActorFunc)BgHaka_Update,
    (ActorFunc)BgHaka_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(minVelocityY, 0, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgHaka_Init(Actor* thisx, PlayState* play) {
    BgHaka* this = (BgHaka*)thisx;
    s32 pad;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(&this->bg.actor, sInitChain);
    BgActor_Init(&this->bg, DPM_UNK);
    CollisionHeader_GetVirtual(&gGravestoneCol, &colHeader);
    this->bg.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->bg.actor, colHeader);
    this->actionFunc = func_8087B7E8;
}

void BgHaka_Destroy(Actor* thisx, PlayState* play) {
    BgHaka* this = (BgHaka*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->bg.bgId);
}

void func_8087B758(BgHaka* this, Player* player) {
    Vec3f sp1C;

    func_8002DBD0(&this->bg.actor, &sp1C, &player->actor.world.pos);
    if (fabsf(sp1C.x) < 34.6f && sp1C.z > -112.8f && sp1C.z < -36.0f) {
        player->stateFlags2 |= PLAYER_STATE2_9;
    }
}

void func_8087B7E8(BgHaka* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (this->bg.unk_150 != 0.0f) {
        if (play->sceneId == SCENE_SPOT02 && !LINK_IS_ADULT && IS_DAY) {
            this->bg.unk_150 = 0.0f;
            player->stateFlags2 &= ~PLAYER_STATE2_4;
            if (!Play_InCsMode(play)) {
                Message_StartTextbox(play, 0x5073, NULL);
                this->bg.actor.params = 100;
                this->actionFunc = func_8087BAE4;
            }
        } else if (0.0f < this->bg.unk_150 ||
                   (play->sceneId == SCENE_SPOT06 && !LINK_IS_ADULT && !Flags_GetSwitch(play, 0x23))) {
            this->bg.unk_150 = 0.0f;
            player->stateFlags2 &= ~PLAYER_STATE2_4;
        } else {
            this->bg.actor.world.rot.y = this->bg.actor.shape.rot.y + 0x8000;
            this->actionFunc = func_8087B938;
        }
    }
    func_8087B758(this, player);
}

void func_8087B938(BgHaka* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 sp38;

    this->bg.actor.speedXZ += 0.05f;
    this->bg.actor.speedXZ = CLAMP_MAX(this->bg.actor.speedXZ, 1.5f);
    sp38 = Math_StepToF(&this->bg.actor.minVelocityY, 60.0f, this->bg.actor.speedXZ);
    this->bg.actor.world.pos.x =
        Math_SinS(this->bg.actor.world.rot.y) * this->bg.actor.minVelocityY + this->bg.actor.home.pos.x;
    this->bg.actor.world.pos.z =
        Math_CosS(this->bg.actor.world.rot.y) * this->bg.actor.minVelocityY + this->bg.actor.home.pos.z;
    if (sp38 != 0) {
        this->bg.unk_150 = 0.0f;
        player->stateFlags2 &= ~PLAYER_STATE2_4;
        if (this->bg.actor.params == 1) {
            func_80078884(NA_SE_SY_CORRECT_CHIME);
        } else if (!IS_DAY && play->sceneId == SCENE_SPOT02) {
            Actor_Spawn(&play->actorCtx, play, ACTOR_EN_POH, this->bg.actor.home.pos.x, this->bg.actor.home.pos.y,
                        this->bg.actor.home.pos.z, 0, this->bg.actor.shape.rot.y, 0, 1);
        }
        this->actionFunc = func_8087BAAC;
    }
    func_8002F974(&this->bg.actor, NA_SE_EV_ROCK_SLIDE - SFX_FLAG);
}

void func_8087BAAC(BgHaka* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (this->bg.unk_150 != 0.0f) {
        this->bg.unk_150 = 0.0f;
        player->stateFlags2 &= ~PLAYER_STATE2_4;
    }
}

void func_8087BAE4(BgHaka* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 pad;

    if (this->bg.actor.params != 0) {
        this->bg.actor.params -= 1;
    }
    if (this->bg.unk_150 != 0.0f) {
        this->bg.unk_150 = 0.0f;
        player->stateFlags2 &= ~PLAYER_STATE2_4;
    }
    if (this->bg.actor.params == 0) {
        this->actionFunc = func_8087B7E8;
    }
    func_8087B758(this, player);
}

void BgHaka_Update(Actor* thisx, PlayState* play) {
    BgHaka* this = (BgHaka*)thisx;

    this->actionFunc(this, play);
}

void BgHaka_Draw(Actor* thisx, PlayState* play) {
    OPEN_DISPS(play->state.gfxCtx, "../z_bg_haka.c", 401);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_bg_haka.c", 406),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, gGravestoneStoneDL);
    Matrix_Translate(0.0f, 0.0f, thisx->minVelocityY * 10.0f, MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_bg_haka.c", 416),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, gGravestoneEarthDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_haka.c", 421);
}
