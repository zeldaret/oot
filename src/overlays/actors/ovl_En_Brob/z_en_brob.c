/*
 * File: z_en_brob.c
 * Overlay: ovl_En_Brob
 * Description: Flobbery Muscle Block (Jabu-Jabu's Belly)
 */

#include "z_en_brob.h"

#include "libc64/qrand.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z64effect.h"
#include "z64play.h"

#include "assets/objects/object_brob/object_brob.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE)

void EnBrob_Init(Actor* thisx, PlayState* play);
void EnBrob_Destroy(Actor* thisx, PlayState* play);
void EnBrob_Update(Actor* thisx, PlayState* play2);
void EnBrob_Draw(Actor* thisx, PlayState* play);

void EnBrob_SetupIdle(EnBrob* this, PlayState* play);
void EnBrob_Idle(EnBrob* this, PlayState* play);
void EnBrob_MoveUp(EnBrob* this, PlayState* play);
void EnBrob_Wobble(EnBrob* this, PlayState* play);
void EnBrob_Stunned(EnBrob* this, PlayState* play);
void EnBrob_MoveDown(EnBrob* this, PlayState* play);
void EnBrob_Shock(EnBrob* this, PlayState* play);

ActorProfile En_Brob_Profile = {
    /**/ ACTOR_EN_BROB,
    /**/ ACTORCAT_ENEMY,
    /**/ FLAGS,
    /**/ OBJECT_BROB,
    /**/ sizeof(EnBrob),
    /**/ EnBrob_Init,
    /**/ EnBrob_Destroy,
    /**/ EnBrob_Update,
    /**/ EnBrob_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_HIT0,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK1,
        { 0xFFCFFFFF, 0x03, 0x08 },
        { 0xFFCFFFFF, 0x01, 0x00 },
        ATELEM_ON | ATELEM_SFX_NONE,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 8000, 11000, -5000, { 0, 0, 0 } },
};

static CollisionCheckInfoInit sColChkInfoInit = { 0, 60, 120, MASS_IMMOVABLE };

void EnBrob_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    EnBrob* this = (EnBrob*)thisx;
    CollisionHeader* colHeader = NULL;

    SkelAnime_InitFlex(play, &this->skelAnime, &gBrobSkel, &gBrobMoveUpAnim, this->jointTable, this->morphTable, 10);
    DynaPolyActor_Init(&this->dyna, 0);
    CollisionHeader_GetVirtual(&gBrobCol, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, thisx, colHeader);
    Collider_InitCylinder(play, &this->colliders[0]);
    Collider_SetCylinder(play, &this->colliders[0], &this->dyna.actor, &sCylinderInit);
    Collider_InitCylinder(play, &this->colliders[1]);
    Collider_SetCylinder(play, &this->colliders[1], &this->dyna.actor, &sCylinderInit);
    CollisionCheck_SetInfo(&thisx->colChkInfo, NULL, &sColChkInfoInit);
    if (PARAMS_GET_U(thisx->params, 8, 8) == 0) {
        Actor_SetScale(&this->dyna.actor, 0.01f);
        thisx->params &= 0xFF;
        if (thisx->params != 0xFF) {
            thisx->scale.y *= PARAMS_GET_U(thisx->params, 0, 8) * (1.0f / 30.0f);
        }
    } else {
        Actor_SetScale(&this->dyna.actor, 0.005f);
        thisx->params &= 0xFF;
        if (thisx->params != 0xFF) {
            thisx->scale.y *= PARAMS_GET_U(thisx->params, 0, 8) * (2.0f / 30.0f);
        }
    }

    this->colliders[0].dim.radius *= thisx->scale.x;
    this->colliders[0].dim.height = thisx->scale.y * 12000.0f;
    this->colliders[0].dim.yShift = 0;
    this->colliders[1].dim.radius *= thisx->scale.x;
    this->colliders[1].dim.height *= thisx->scale.y;
    this->colliders[1].dim.yShift *= thisx->scale.y;
    this->actionFunc = NULL;
    thisx->flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    EnBrob_SetupIdle(this, play);
}

void EnBrob_Destroy(Actor* thisx, PlayState* play) {
    EnBrob* this = (EnBrob*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
    Collider_DestroyCylinder(play, &this->colliders[0]);
    Collider_DestroyCylinder(play, &this->colliders[1]);
}

void EnBrob_SetupIdle(EnBrob* this, PlayState* play) {
    DynaPoly_EnableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
    this->timer = this->actionFunc == EnBrob_Stunned ? 200 : 0;
    this->modelOffsetY = 0;
    this->actionFunc = EnBrob_Idle;
}

void EnBrob_SetupMoveUp(EnBrob* this, PlayState* play) {
    Animation_PlayOnce(&this->skelAnime, &gBrobMoveUpAnim);
    DynaPoly_DisableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
    this->modelOffsetY = 1000;
    this->actionFunc = EnBrob_MoveUp;
}

void EnBrob_SetupWobble(EnBrob* this) {
    Animation_MorphToLoop(&this->skelAnime, &gBrobWobbleAnim, -5.0f);
    this->modelOffsetY = 8000;
    this->timer = 1200;
    this->actionFunc = EnBrob_Wobble;
}

void EnBrob_SetupStunned(EnBrob* this) {
    Animation_MorphToPlayOnce(&this->skelAnime, &gBrobStunnedAnim, -5.0f);
    this->modelOffsetY -= 125.0f;
    Actor_SetColorFilter(&this->dyna.actor, COLORFILTER_COLORFLAG_BLUE, 255, COLORFILTER_BUFFLAG_OPA, 80);
    Actor_PlaySfx(&this->dyna.actor, NA_SE_EN_GOMA_JR_FREEZE);
    this->actionFunc = EnBrob_Stunned;
}

void EnBrob_SetupMoveDown(EnBrob* this) {
    Animation_Change(&this->skelAnime, &gBrobMoveUpAnim, -1.0f, Animation_GetLastFrame(&gBrobMoveUpAnim), 0.0f,
                     ANIMMODE_ONCE, -5.0f);
    this->modelOffsetY = 8250;
    this->actionFunc = EnBrob_MoveDown;
}

void EnBrob_SetupShock(EnBrob* this) {
    Animation_MorphToLoop(&this->skelAnime, &gBrobShockAnim, -5.0f);
    this->timer = 10;
    this->actionFunc = EnBrob_Shock;
}

void EnBrob_Idle(EnBrob* this, PlayState* play) {
    if (this->timer != 0) {
        this->timer--;
    }
    if (this->timer == 0) {
        if (DynaPolyActor_IsPlayerOnTop(&this->dyna)) {
            Actor_SetPlayerKnockbackLargeNoDamage(play, &this->dyna.actor, 5.0f, this->dyna.actor.yawTowardsPlayer,
                                                  1.0f);
            EnBrob_SetupMoveUp(this, play);
        } else if (this->dyna.actor.xzDistToPlayer < 300.0f) {
            EnBrob_SetupMoveUp(this, play);
        }
    } else if (this->timer >= 81) {
        this->dyna.actor.colorFilterTimer = 80;
    }
}

void EnBrob_MoveUp(EnBrob* this, PlayState* play) {
    f32 curFrame;

    if (SkelAnime_Update(&this->skelAnime)) {
        EnBrob_SetupWobble(this);
    } else {
        curFrame = this->skelAnime.curFrame;
        if (curFrame < 8.0f) {
            this->modelOffsetY += 1000.0f;
        } else if (curFrame < 12.0f) {
            this->modelOffsetY += 250.0f;
        } else {
            this->modelOffsetY -= 250.0f;
        }
    }
}

void EnBrob_Wobble(EnBrob* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (Animation_OnFrame(&this->skelAnime, 6.0f) || Animation_OnFrame(&this->skelAnime, 15.0f)) {
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EN_BROB_WAVE);
    }
    if (this->timer != 0) {
        this->timer--;
    }
    if ((this->timer == 0) && (this->dyna.actor.xzDistToPlayer > 500.0f)) {
        EnBrob_SetupMoveDown(this);
    }
}

void EnBrob_Stunned(EnBrob* this, PlayState* play) {
    if (SkelAnime_Update(&this->skelAnime)) {
        EnBrob_SetupIdle(this, play);
    } else if (this->skelAnime.curFrame < 8.0f) {
        this->modelOffsetY -= 1250.0f;
    }
    this->dyna.actor.colorFilterTimer = 80;
}

void EnBrob_MoveDown(EnBrob* this, PlayState* play) {
    f32 curFrame;

    if (SkelAnime_Update(&this->skelAnime)) {
        EnBrob_SetupIdle(this, play);
    } else {
        curFrame = this->skelAnime.curFrame;
        if (curFrame < 8.0f) {
            this->modelOffsetY -= 1000.0f;
        } else if (curFrame < 12.0f) {
            this->modelOffsetY -= 250.0f;
        } else {
            this->modelOffsetY += 250.0f;
        }
    }
}

void EnBrob_Shock(EnBrob* this, PlayState* play) {
    Vec3f pos;
    f32 dist1;
    f32 dist2;
    s32 i;

    SkelAnime_Update(&this->skelAnime);
    if (Animation_OnFrame(&this->skelAnime, 0) && (this->timer != 0)) {
        this->timer--;
    }

    dist1 = play->gameplayFrames % 2 ? 0.0f : this->dyna.actor.scale.x * 5500.0f;
    dist2 = this->dyna.actor.scale.x * 5500.0f;

    for (i = 0; i < 4; i++) {
        static Color_RGBA8 primColor = { 255, 255, 255, 255 };
        static Color_RGBA8 envColor = { 200, 255, 255, 255 };

        if (i % 2) {
            pos.x = this->dyna.actor.world.pos.x + dist1;
            pos.z = this->dyna.actor.world.pos.z + dist2;
        } else {
            pos.x = this->dyna.actor.world.pos.x + dist2;
            pos.z = this->dyna.actor.world.pos.z + dist1;
            dist1 = -dist1;
            dist2 = -dist2;
        }
        pos.y = (((Rand_ZeroOne() * 15000.0f) + 1000.0f) * this->dyna.actor.scale.y) + this->dyna.actor.world.pos.y;
        EffectSsLightning_Spawn(play, &pos, &primColor, &envColor, this->dyna.actor.scale.y * 8000.0f,
                                Rand_ZeroOne() * 65536.0f, 4, 1);
    }

    if (this->timer == 0) {
        EnBrob_SetupWobble(this);
    }
}

void EnBrob_Update(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    EnBrob* this = (EnBrob*)thisx;
    s32 i;
    s32 acHits[2];

    acHits[0] = (this->colliders[0].base.acFlags & AC_HIT) != 0;
    acHits[1] = (this->colliders[1].base.acFlags & AC_HIT) != 0;
    if ((acHits[0] && (this->colliders[0].elem.acHitElem->atDmgInfo.dmgFlags & DMG_BOOMERANG)) ||
        (acHits[1] && (this->colliders[1].elem.acHitElem->atDmgInfo.dmgFlags & DMG_BOOMERANG))) {

        for (i = 0; i < 2; i++) {
            this->colliders[i].base.atFlags &= ~(AT_HIT | AT_BOUNCED);
            this->colliders[i].base.acFlags &= ~AC_HIT;
        }

        EnBrob_SetupStunned(this);
    } else if ((this->colliders[0].base.atFlags & AT_HIT) || (this->colliders[1].base.atFlags & AT_HIT) ||
               (acHits[0] && (this->colliders[0].elem.acHitElem->atDmgInfo.dmgFlags & DMG_SLASH_KOKIRI)) ||
               (acHits[1] && (this->colliders[1].elem.acHitElem->atDmgInfo.dmgFlags & DMG_SLASH_KOKIRI))) {

        if (this->actionFunc == EnBrob_MoveUp && !(this->colliders[0].base.atFlags & AT_BOUNCED) &&
            !(this->colliders[1].base.atFlags & AT_BOUNCED)) {
            Actor_SetPlayerKnockbackLargeNoDamage(play, &this->dyna.actor, 5.0f, this->dyna.actor.yawTowardsPlayer,
                                                  1.0f);
        } else if (this->actionFunc != EnBrob_MoveUp) {
            EnBrob_SetupShock(this);
        }

        for (i = 0; i < 2; i++) {
            this->colliders[i].base.atFlags &= ~(AT_HIT | AT_BOUNCED);
            this->colliders[i].base.acFlags &= ~AC_HIT;
        }
    }

    this->actionFunc(this, play);

    if (this->actionFunc != EnBrob_Idle && this->actionFunc != EnBrob_MoveDown) {
        if (this->actionFunc != EnBrob_Stunned) {
            CollisionCheck_SetAT(play, &play->colChkCtx, &this->colliders[0].base);
            CollisionCheck_SetAT(play, &play->colChkCtx, &this->colliders[1].base);
            if (this->actionFunc != EnBrob_MoveUp) {
                CollisionCheck_SetAC(play, &play->colChkCtx, &this->colliders[0].base);
                CollisionCheck_SetAC(play, &play->colChkCtx, &this->colliders[1].base);
            }
        }
        CollisionCheck_SetOC(play, &play->colChkCtx, &this->colliders[0].base);
        CollisionCheck_SetOC(play, &play->colChkCtx, &this->colliders[1].base);
    }
}

void EnBrob_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnBrob* this = (EnBrob*)thisx;
    MtxF mtx;

    Matrix_Get(&mtx);
    if (limbIndex == 3) {
        this->colliders[0].dim.pos.x = mtx.xw;
        this->colliders[0].dim.pos.y = mtx.yw;
        this->colliders[0].dim.pos.z = mtx.zw;
    } else if (limbIndex == 8) {
        this->colliders[1].dim.pos.x = mtx.xw;
        this->colliders[1].dim.pos.y = (mtx.yw + 7.0f);
        this->colliders[1].dim.pos.z = mtx.zw;
    }
}

void EnBrob_Draw(Actor* thisx, PlayState* play) {
    EnBrob* this = (EnBrob*)thisx;

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    Matrix_Translate(0.0f, this->modelOffsetY, 0.0f, MTXMODE_APPLY);
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount, NULL,
                          EnBrob_PostLimbDraw, this);
}
