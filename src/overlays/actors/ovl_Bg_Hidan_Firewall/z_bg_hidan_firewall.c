/*
 * File: z_bg_hidan_firewall.c
 * Overlay: ovl_Bg_Hidan_Firewall
 * Description: Proximity Triggered Flame Wall
 */

#include "z_bg_hidan_firewall.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "segmented_address.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "z64play.h"
#include "z64player.h"

#include "assets/objects/object_hidan_objects/object_hidan_objects.h"

#define FLAGS 0

void BgHidanFirewall_Init(Actor* thisx, PlayState* play);
void BgHidanFirewall_Destroy(Actor* thisx, PlayState* play);
void BgHidanFirewall_Update(Actor* thisx, PlayState* play);
void BgHidanFirewall_Draw(Actor* thisx, PlayState* play);

s32 BgHidanFirewall_CheckProximity(BgHidanFirewall* this, PlayState* play);
void BgHidanFirewall_Wait(BgHidanFirewall* this, PlayState* play);
void BgHidanFirewall_Countdown(BgHidanFirewall* this, PlayState* play);
void BgHidanFirewall_Erupt(BgHidanFirewall* this, PlayState* play);
void BgHidanFirewall_Collide(BgHidanFirewall* this, PlayState* play);
void BgHidanFirewall_ColliderFollowPlayer(BgHidanFirewall* this, PlayState* play);

ActorProfile Bg_Hidan_Firewall_Profile = {
    /**/ ACTOR_BG_HIDAN_FIREWALL,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_HIDAN_OBJECTS,
    /**/ sizeof(BgHidanFirewall),
    /**/ BgHidanFirewall_Init,
    /**/ BgHidanFirewall_Destroy,
    /**/ BgHidanFirewall_Update,
    /**/ NULL,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_NONE,
        OC1_ON | OC1_TYPE_PLAYER,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x20000000, 0x01, 0x04 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        ATELEM_ON | ATELEM_SFX_NONE,
        ACELEM_NONE,
        OCELEM_ON,
    },
    { 30, 83, 0, { 0 } },
};

static CollisionCheckInfoInit sColChkInfoInit = { 1, 80, 100, MASS_IMMOVABLE };

void BgHidanFirewall_Init(Actor* thisx, PlayState* play) {
    BgHidanFirewall* this = (BgHidanFirewall*)thisx;

    this->actor.scale.x = this->actor.scale.z = 0.12f;
    this->actor.scale.y = 0.01f;

    this->unk_150 = 0;

    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);

    this->collider.dim.pos.y = this->actor.world.pos.y;

    CollisionCheck_SetInfo(&this->actor.colChkInfo, NULL, &sColChkInfoInit);

    this->actionFunc = BgHidanFirewall_Wait;
}

void BgHidanFirewall_Destroy(Actor* thisx, PlayState* play) {
    BgHidanFirewall* this = (BgHidanFirewall*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

s32 BgHidanFirewall_CheckProximity(BgHidanFirewall* this, PlayState* play) {
    Player* player;
    Vec3f playerRelativePos;

    player = GET_PLAYER(play);
    Actor_WorldToActorCoords(&this->actor, &playerRelativePos, &player->actor.world.pos);

    if (fabsf(playerRelativePos.x) < 100.0f && fabsf(playerRelativePos.z) < 120.0f) {
        return 1;
    }
    return 0;
}

void BgHidanFirewall_Wait(BgHidanFirewall* this, PlayState* play) {
    if (BgHidanFirewall_CheckProximity(this, play) != 0) {
        this->actor.draw = BgHidanFirewall_Draw;
        this->actor.params = 5;
        this->actionFunc = BgHidanFirewall_Countdown;
    }
}

void BgHidanFirewall_Countdown(BgHidanFirewall* this, PlayState* play) {

    if (this->actor.params != 0) {
        this->actor.params--;
    }
    if (this->actor.params == 0) {
        this->actionFunc = BgHidanFirewall_Erupt;
    }
}

void BgHidanFirewall_Erupt(BgHidanFirewall* this, PlayState* play) {
    if (BgHidanFirewall_CheckProximity(this, play) != 0) {
        Math_StepToF(&this->actor.scale.y, 0.1f, 0.01f / 0.4f);
    } else {
        if (Math_StepToF(&this->actor.scale.y, 0.01f, 0.01f) != 0) {
            this->actor.draw = NULL;
            this->actionFunc = BgHidanFirewall_Wait;
        } else {
            this->actor.params = 0;
        }
    }
}

void BgHidanFirewall_Collide(BgHidanFirewall* this, PlayState* play) {
    s16 phi_a3;

    if (Actor_IsFacingPlayer(&this->actor, 0x4000)) {
        phi_a3 = this->actor.shape.rot.y;
    } else {
        phi_a3 = this->actor.shape.rot.y + 0x8000;
    }

    Actor_SetPlayerKnockbackLargeNoDamage(play, &this->actor, 5.0f, phi_a3, 1.0f);
}

void BgHidanFirewall_ColliderFollowPlayer(BgHidanFirewall* this, PlayState* play) {
    Player* player;
    Vec3f playerRelativePos;
    f32 temp_ret;
    f32 sp28;
    f32 phi_f0;

    player = GET_PLAYER(play);

    Actor_WorldToActorCoords(&this->actor, &playerRelativePos, &player->actor.world.pos);
    if (playerRelativePos.x < -70.0f) {
        playerRelativePos.x = -70.0f;
    } else {
        if (70.0f < playerRelativePos.x) {
            phi_f0 = 70.0f;
        } else {
            phi_f0 = playerRelativePos.x;
        }
        playerRelativePos.x = phi_f0;
    }
    if (this->actor.params == 0) {
        if (0.0f < playerRelativePos.z) {
            playerRelativePos.z = -25.0f;
            this->actor.params = -1;
        } else {
            playerRelativePos.z = 25.0f;
            this->actor.params = 1;
        }
    } else {
        playerRelativePos.z = this->actor.params * 25.0f;
    }
    sp28 = Math_SinS(this->actor.shape.rot.y);
    temp_ret = Math_CosS(this->actor.shape.rot.y);
    this->collider.dim.pos.x = this->actor.world.pos.x + playerRelativePos.x * temp_ret + playerRelativePos.z * sp28;
    this->collider.dim.pos.z = this->actor.world.pos.z - playerRelativePos.x * sp28 + playerRelativePos.z * temp_ret;
}

void BgHidanFirewall_Update(Actor* thisx, PlayState* play) {
    BgHidanFirewall* this = (BgHidanFirewall*)thisx;
    s32 pad;

    this->unk_150 = (this->unk_150 + 1) % 8;

    if (this->collider.base.atFlags & AT_HIT) {
        this->collider.base.atFlags &= ~AT_HIT;
        BgHidanFirewall_Collide(this, play);
    }

    this->actionFunc(this, play);
    if (this->actionFunc == BgHidanFirewall_Erupt) {
        BgHidanFirewall_ColliderFollowPlayer(this, play);
        CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
        CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
        Actor_PlaySfx_Flagged(&this->actor, NA_SE_EV_FIRE_PLATE - SFX_FLAG);
    }
}

static void* sFireballTexs[] = {
    gFireTempleFireball0Tex, gFireTempleFireball1Tex, gFireTempleFireball2Tex, gFireTempleFireball3Tex,
    gFireTempleFireball4Tex, gFireTempleFireball5Tex, gFireTempleFireball6Tex, gFireTempleFireball7Tex,
};

void BgHidanFirewall_Draw(Actor* thisx, PlayState* play) {
    BgHidanFirewall* this = (BgHidanFirewall*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_hidan_firewall.c", 448);

    POLY_XLU_DISP = Gfx_SetupDL(POLY_XLU_DISP, SETUPDL_20);

    gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sFireballTexs[this->unk_150]));
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0x01, 255, 255, 0, 150);
    gDPSetEnvColor(POLY_XLU_DISP++, 255, 0, 0, 255);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_hidan_firewall.c", 458);
    gSPDisplayList(POLY_XLU_DISP++, gFireTempleFireballUpperHalfDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_hidan_firewall.c", 463);
}
