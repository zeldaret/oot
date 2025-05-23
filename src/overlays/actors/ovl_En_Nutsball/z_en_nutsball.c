/*
 * File: z_en_nutsball.c
 * Overlay: ovl_En_Nutsball
 * Description: Projectile fired by deku scrubs
 */

#include "z_en_nutsball.h"
#include "overlays/effects/ovl_Effect_Ss_Hahen/z_eff_ss_hahen.h"
#include "assets/objects/object_dekunuts/object_dekunuts.h"
#include "assets/objects/object_hintnuts/object_hintnuts.h"
#include "assets/objects/object_shopnuts/object_shopnuts.h"
#include "assets/objects/object_dns/object_dns.h"
#include "assets/objects/object_dnk/object_dnk.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void EnNutsball_Init(Actor* thisx, PlayState* play);
void EnNutsball_Destroy(Actor* thisx, PlayState* play);
void EnNutsball_Update(Actor* thisx, PlayState* play);
void EnNutsball_Draw(Actor* thisx, PlayState* play);

void func_80ABBB34(EnNutsball* this, PlayState* play);
void func_80ABBBA8(EnNutsball* this, PlayState* play);

ActorProfile En_Nutsball_Profile = {
    /**/ ACTOR_EN_NUTSBALL,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(EnNutsball),
    /**/ EnNutsball_Init,
    /**/ EnNutsball_Destroy,
    /**/ EnNutsball_Update,
    /**/ NULL,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0xFFCFFFFF, 0x00, 0x08 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        ATELEM_ON | ATELEM_SFX_WOOD,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 13, 13, 0, { 0 } },
};

static s16 sObjectIds[] = {
    OBJECT_DEKUNUTS, OBJECT_HINTNUTS, OBJECT_SHOPNUTS, OBJECT_DNS, OBJECT_DNK,
};

static Gfx* sDLists[] = {
    gDekuNutsDekuNutDL, gHintNutsNutDL, gBusinessScrubDekuNutDL, gDntJijiNutDL, gDntStageNutDL,
};

void EnNutsball_Init(Actor* thisx, PlayState* play) {
    EnNutsball* this = (EnNutsball*)thisx;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 400.0f, ActorShadow_DrawCircle, 13.0f);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    this->requiredObjectSlot = Object_GetSlot(&play->objectCtx, sObjectIds[NUTSBALL_GET_TYPE(&this->actor)]);

    if (this->requiredObjectSlot < 0) {
        Actor_Kill(&this->actor);
    } else {
        this->actionFunc = func_80ABBB34;
    }
}

void EnNutsball_Destroy(Actor* thisx, PlayState* play) {
    EnNutsball* this = (EnNutsball*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

void func_80ABBB34(EnNutsball* this, PlayState* play) {
    if (Object_IsLoaded(&play->objectCtx, this->requiredObjectSlot)) {
        this->actor.objectSlot = this->requiredObjectSlot;
        this->actor.draw = EnNutsball_Draw;
        this->actor.shape.rot.y = 0;
        this->timer = 30;
        this->actionFunc = func_80ABBBA8;
        this->actor.speed = 10.0f;
    }
}

void func_80ABBBA8(EnNutsball* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    Vec3s sp4C;
    Vec3f sp40;

    this->timer--;

    if (this->timer == 0) {
        this->actor.gravity = -1.0f;
    }

    this->actor.home.rot.z += 0x2AA8;

    if ((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) || (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) ||
        (this->collider.base.atFlags & AT_HIT) || (this->collider.base.acFlags & AC_HIT) ||
        (this->collider.base.ocFlags1 & OC1_HIT)) {
        // Checking if the player is using a shield that reflects projectiles
        // And if so, reflects the projectile on impact
        if ((player->currentShield == PLAYER_SHIELD_DEKU) ||
            ((player->currentShield == PLAYER_SHIELD_HYLIAN) && LINK_IS_ADULT)) {
            if ((this->collider.base.atFlags & AT_HIT) && (this->collider.base.atFlags & AT_TYPE_ENEMY) &&
                (this->collider.base.atFlags & AT_BOUNCED)) {
                this->collider.base.atFlags &= ~AT_TYPE_ENEMY & ~AT_BOUNCED & ~AT_HIT;
                this->collider.base.atFlags |= AT_TYPE_PLAYER;

                this->collider.elem.atDmgInfo.dmgFlags = DMG_DEKU_STICK;
                Matrix_MtxFToYXZRotS(&player->shieldMf, &sp4C, 0);
                this->actor.world.rot.y = sp4C.y + 0x8000;
                this->timer = 30;
                return;
            }
        }

        sp40.x = this->actor.world.pos.x;
        sp40.y = this->actor.world.pos.y + 4;
        sp40.z = this->actor.world.pos.z;

        EffectSsHahen_SpawnBurst(play, &sp40, 6.0f, 0, 7, 3, 15, HAHEN_OBJECT_DEFAULT, 10, NULL);
        SfxSource_PlaySfxAtFixedWorldPos(play, &this->actor.world.pos, 20, NA_SE_EN_OCTAROCK_ROCK);
        Actor_Kill(&this->actor);
    } else {
        if (this->timer == -300) {
            Actor_Kill(&this->actor);
        }
    }
}

void EnNutsball_Update(Actor* thisx, PlayState* play) {
    EnNutsball* this = (EnNutsball*)thisx;
    Player* player = GET_PLAYER(play);
    s32 pad;

    if (!(player->stateFlags1 & (PLAYER_STATE1_TALKING | PLAYER_STATE1_DEAD | PLAYER_STATE1_28 | PLAYER_STATE1_29)) ||
        (this->actionFunc == func_80ABBB34)) {
        this->actionFunc(this, play);

        Actor_MoveXZGravity(&this->actor);
        Actor_UpdateBgCheckInfo(play, &this->actor, 10, sCylinderInit.dim.radius, sCylinderInit.dim.height,
                                UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
        Collider_UpdateCylinder(&this->actor, &this->collider);

        this->actor.flags |= ACTOR_FLAG_SFX_FOR_PLAYER_BODY_HIT;

        CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
        CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    }
}

void EnNutsball_Draw(Actor* thisx, PlayState* play) {
    EnNutsball* this = (EnNutsball*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_nutsball.c", 327);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    Matrix_Mult(&play->billboardMtxF, MTXMODE_APPLY);
    Matrix_RotateZ(this->actor.home.rot.z * 9.58738e-05f, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_en_nutsball.c", 333);
    gSPDisplayList(POLY_OPA_DISP++, sDLists[NUTSBALL_GET_TYPE(&this->actor)]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_nutsball.c", 337);
}
