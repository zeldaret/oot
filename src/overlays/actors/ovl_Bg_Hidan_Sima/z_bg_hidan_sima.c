/*
 * File: z_bg_hidan_sima.c
 * Overlay: ovl_Bg_Hidan_Sima
 * Description: Stone platform (Fire Temple)
 */

#include "z_bg_hidan_sima.h"

#include "array_count.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "rumble.h"
#include "segmented_address.h"
#include "sfx.h"
#include "stack_pad.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "play_state.h"
#include "player.h"

#include "assets/objects/object_hidan_objects/object_hidan_objects.h"

#define FLAGS 0

void BgHidanSima_Init(Actor* thisx, PlayState* play);
void BgHidanSima_Destroy(Actor* thisx, PlayState* play);
void BgHidanSima_Update(Actor* thisx, PlayState* play);
void BgHidanSima_Draw(Actor* thisx, PlayState* play);

void BgHidanSima_SinkingPlatform_Idle(BgHidanSima* this, PlayState* play);
void BgHidanSima_SinkingPlatform_WarningShake(BgHidanSima* this, PlayState* play);
void BgHidanSima_SinkingPlatform_Sink(BgHidanSima* this, PlayState* play);
void BgHidanSima_MovingPlatform_Idle(BgHidanSima* this, PlayState* play);
void BgHidanSima_MovingPlatform_Move(BgHidanSima* this, PlayState* play);
void BgHidanSima_SetFireHitbox(BgHidanSima* this);

ActorProfile Bg_Hidan_Sima_Profile = {
    /**/ ACTOR_BG_HIDAN_SIMA,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_HIDAN_OBJECTS,
    /**/ sizeof(BgHidanSima),
    /**/ BgHidanSima_Init,
    /**/ BgHidanSima_Destroy,
    /**/ BgHidanSima_Update,
    /**/ BgHidanSima_Draw,
};

static ColliderJntSphElementInit sJntSphElementsInit[] = {
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x20000000, HIT_SPECIAL_EFFECT_FIRE, 0x04 },
            { 0x00000000, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_ON | ATELEM_SFX_NONE,
            ACELEM_NONE,
            OCELEM_NONE,
        },
        { 1, { { 0, 40, 100 }, 22 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x20000000, HIT_SPECIAL_EFFECT_FIRE, 0x04 },
            { 0x00000000, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_ON | ATELEM_SFX_NONE,
            ACELEM_NONE,
            OCELEM_NONE,
        },
        { 1, { { 0, 40, 145 }, 30 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    {
        COL_MATERIAL_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_NONE,
        OC1_NONE,
        OC2_TYPE_2,
        COLSHAPE_JNTSPH,
    },
    ARRAY_COUNT(sJntSphElementsInit),
    sJntSphElementsInit,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

static void* sFireballsTexs[] = {
    gFireTempleFireball0Tex, gFireTempleFireball1Tex, gFireTempleFireball2Tex, gFireTempleFireball3Tex,
    gFireTempleFireball4Tex, gFireTempleFireball5Tex, gFireTempleFireball6Tex, gFireTempleFireball7Tex,
};

void BgHidanSima_Init(Actor* thisx, PlayState* play) {
    BgHidanSima* this = (BgHidanSima*)thisx;
    STACK_PAD(s32);
    CollisionHeader* colHeader = NULL;
    s32 i;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyActor_Init(&this->dyna, DYNA_TRANSFORM_POS);
    if (this->dyna.actor.params == BG_HIDAN_SIMA_SINKING) {
        CollisionHeader_GetVirtual(&gFireTempleStonePlatform1Col, &colHeader);
    } else /* BG_HIDAN_SIMA_MOVING */ {
        CollisionHeader_GetVirtual(&gFireTempleStonePlatform2Col, &colHeader);
    }
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
    Collider_InitJntSph(play, &this->collider);
    Collider_SetJntSph(play, &this->collider, &this->dyna.actor, &sJntSphInit, this->colliderElements);
    for (i = 0; i < ARRAY_COUNT(sJntSphElementsInit); i++) {
        this->collider.elements[i].dim.worldSphere.radius = this->collider.elements[i].dim.modelSphere.radius;
    }
    if (this->dyna.actor.params == BG_HIDAN_SIMA_SINKING) {
        this->actionFunc = BgHidanSima_SinkingPlatform_Idle;
    } else /* BG_HIDAN_SIMA_MOVING */ {
        this->actionFunc = BgHidanSima_MovingPlatform_Idle;
    }
}

void BgHidanSima_Destroy(Actor* thisx, PlayState* play) {
    BgHidanSima* this = (BgHidanSima*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
    Collider_DestroyJntSph(play, &this->collider);
}

void BgHidanSima_SinkingPlatform_Idle(BgHidanSima* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y, 3.4f);
    if (DynaPolyActor_IsPlayerOnTop(&this->dyna) && !(player->stateFlags1 & (PLAYER_STATE1_13 | PLAYER_STATE1_14))) {
        this->timer = 20;
        this->dyna.actor.world.rot.y = Camera_GetCamDirYaw(GET_ACTIVE_CAM(play)) + 0x4000;

        // If the player gets on top of the platform before it has returned to its home position, skip the shaking
        // animation
        if (this->dyna.actor.home.pos.y <= this->dyna.actor.world.pos.y) {
            this->actionFunc = BgHidanSima_SinkingPlatform_WarningShake;
        } else {
            this->actionFunc = BgHidanSima_SinkingPlatform_Sink;
        }
    }
}

void BgHidanSima_SinkingPlatform_WarningShake(BgHidanSima* this, PlayState* play) {
    if (this->timer != 0) {
        this->timer--;
    }
    if (this->timer != 0) {
        this->dyna.actor.world.pos.x =
            Math_SinS(this->dyna.actor.world.rot.y + (this->timer * 0x4000)) * 5.0f + this->dyna.actor.home.pos.x;
        this->dyna.actor.world.pos.z =
            Math_CosS(this->dyna.actor.world.rot.y + (this->timer * 0x4000)) * 5.0f + this->dyna.actor.home.pos.z;
    } else {
        this->actionFunc = BgHidanSima_SinkingPlatform_Sink;
        this->dyna.actor.world.pos.x = this->dyna.actor.home.pos.x;
        this->dyna.actor.world.pos.z = this->dyna.actor.home.pos.z;
    }
    if (!(this->timer % 4)) {
        Rumble_Request(this->dyna.actor.xyzDistToPlayerSq, 180, 10, 100);
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_BLOCK_SHAKE);
    }
}

void BgHidanSima_SinkingPlatform_Sink(BgHidanSima* this, PlayState* play) {
    if (DynaPolyActor_IsPlayerOnTop(&this->dyna)) {
        // The platform keeps sinking for a bit after the player gets off it.
        this->timer = 20;
    } else if (this->timer != 0) {
        this->timer--;
    }
    Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y - 100.0f, 1.7f);
    if (this->timer == 0) {
        this->actionFunc = BgHidanSima_SinkingPlatform_Idle;
    }
}

void BgHidanSima_MovingPlatform_Idle(BgHidanSima* this, PlayState* play) {
    // Wait a bit before turning around.
    if (this->timer != 0) {
        this->timer--;
    }
    if (this->timer == 0) {
        this->dyna.actor.world.rot.y += 0x8000;
        this->timer = 60;
        this->actionFunc = BgHidanSima_MovingPlatform_Move;
    }
}

void BgHidanSima_MovingPlatform_Move(BgHidanSima* this, PlayState* play) {
    f32 distanceFromHome;

    // The platform moves forward for 60 frames.
    if (this->timer != 0) {
        this->timer--;
    }
    // The sine function is used to calculate how far the platform should move relative to its home position.
    // First, the actor's world rotation is compared against its home rotation in order do determine which direction it
    // has to move in. Then the timer state, ranging from 59 to 0, is converted into an angle between -90 and 90
    // degrees. The value returned by the sine wave function is incremented by 1 to obtain a range between 0.0 and 2.0.
    // Finally, this value is multiplied by 200 units (or -200 units when returning home) to get the platform's current
    // displacement position relative to its home position.
    if (this->dyna.actor.world.rot.y != this->dyna.actor.home.rot.y) {
        distanceFromHome = (sinf(((60 - this->timer) * 0.01667 - 0.5) * M_PI) + 1) * 200;
    } else {
        distanceFromHome = (sinf((this->timer * 0.01667 - 0.5) * M_PI) + 1) * -200;
    }
    this->dyna.actor.world.pos.x =
        Math_SinS(this->dyna.actor.world.rot.y) * distanceFromHome + this->dyna.actor.home.pos.x;
    this->dyna.actor.world.pos.z =
        Math_CosS(this->dyna.actor.world.rot.y) * distanceFromHome + this->dyna.actor.home.pos.z;
    if (this->timer == 0) {
        this->timer = 20;
        this->actionFunc = BgHidanSima_MovingPlatform_Idle;
    }
    Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_FIRE_PILLAR - SFX_FLAG);
}

void BgHidanSima_UpdateFireCollider(BgHidanSima* this) {
    ColliderJntSphElement* elem;
    s32 i;
    f32 cos = Math_CosS(this->dyna.actor.world.rot.y + 0x8000);
    f32 sin = Math_SinS(this->dyna.actor.world.rot.y + 0x8000);

    for (i = 0; i < 2; i++) {
        elem = &this->collider.elements[i];
        elem->dim.worldSphere.center.x = this->dyna.actor.world.pos.x + sin * elem->dim.modelSphere.center.z;
        elem->dim.worldSphere.center.y = (s16)this->dyna.actor.world.pos.y + elem->dim.modelSphere.center.y;
        elem->dim.worldSphere.center.z = this->dyna.actor.world.pos.z + cos * elem->dim.modelSphere.center.z;
    }
}

void BgHidanSima_Update(Actor* thisx, PlayState* play) {
    BgHidanSima* this = (BgHidanSima*)thisx;
    STACK_PAD(s32);

    this->actionFunc(this, play);
    // For BG_HIDAN_SIMA_MOVING, sway it up and down a bit.
    if (this->dyna.actor.params != BG_HIDAN_SIMA_SINKING) {
        s32 temp = (this->dyna.actor.world.rot.y == this->dyna.actor.shape.rot.y) ? this->timer : (this->timer + 80);

        // Advance the sway by 20 frames second when the platform moves
        if (this->actionFunc == BgHidanSima_MovingPlatform_Move) {
            temp += 20;
        }
        this->dyna.actor.world.pos.y = this->dyna.actor.home.pos.y - ((1.0f - cosf(temp * (M_PI / 20))) * 5.0f);
        if (this->actionFunc == BgHidanSima_MovingPlatform_Move) {
            BgHidanSima_SetFireHitbox(this);
            CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
        }
    }
}

Gfx* BgHidanSima_DrawFire(PlayState* play, BgHidanSima* this, Gfx* gfx) {
    MtxF mtxF;
    s32 s3;
    s32 v0;
    s32 phi_s5;
    f32 cos;
    f32 sin;
    STACK_PADS(s32, 2);

    Matrix_MtxFCopy(&mtxF, &gIdentityMtxF);
    cos = Math_CosS(this->dyna.actor.world.rot.y + 0x8000);
    sin = Math_SinS(this->dyna.actor.world.rot.y + 0x8000);

    phi_s5 = (60 - this->timer) >> 1;
    phi_s5 = CLAMP_MAX(phi_s5, 3);

    v0 = 3 - (this->timer >> 1);
    v0 = CLAMP_MIN(v0, 0);

    mtxF.xw = this->dyna.actor.world.pos.x + ((79 - ((this->timer % 6) * 4)) + v0 * 25) * sin;
    mtxF.zw = this->dyna.actor.world.pos.z + ((79 - ((this->timer % 6) * 4)) + v0 * 25) * cos;
    mtxF.yw = this->dyna.actor.world.pos.y + 40.0f;
    mtxF.zz = v0 * 0.4f + 1.0f;
    mtxF.yy = v0 * 0.4f + 1.0f;
    mtxF.xx = v0 * 0.4f + 1.0f;

    for (s3 = v0; s3 < phi_s5; s3++) {
        mtxF.xw += 25.0f * sin;
        mtxF.zw += 25.0f * cos;
        mtxF.xx += 0.4f;
        mtxF.yy += 0.4f;
        mtxF.zz += 0.4f;

        gSPSegment(gfx++, 0x09, SEGMENTED_TO_VIRTUAL(sFireballsTexs[(this->timer + s3) % 7]));
        gSPMatrix(gfx++,
                  Matrix_MtxFToMtx(MATRIX_CHECK_FLOATS(&mtxF, "../z_bg_hidan_sima.c", 611),
                                   GRAPH_ALLOC(play->state.gfxCtx, sizeof(Mtx))),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfx++, gFireTempleFireballDL);
    }
    mtxF.xw = this->dyna.actor.world.pos.x + (phi_s5 * 25 + 80) * sin;
    mtxF.zw = this->dyna.actor.world.pos.z + (phi_s5 * 25 + 80) * cos;
    gSPSegment(gfx++, 0x09, SEGMENTED_TO_VIRTUAL(sFireballsTexs[(this->timer + s3) % 7]));
    gSPMatrix(gfx++,
              Matrix_MtxFToMtx(MATRIX_CHECK_FLOATS(&mtxF, "../z_bg_hidan_sima.c", 624),
                               GRAPH_ALLOC(play->state.gfxCtx, sizeof(Mtx))),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfx++, gFireTempleFireballDL);
    return gfx;
}

void BgHidanSima_Draw(Actor* thisx, PlayState* play) {
    BgHidanSima* this = (BgHidanSima*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_hidan_sima.c", 641);
    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_bg_hidan_sima.c", 645);
    if (this->dyna.actor.params == BG_HIDAN_SIMA_SINKING) {
        gSPDisplayList(POLY_OPA_DISP++, gFireTempleStonePlatform1DL);
    } else /* BG_HIDAN_SIMA_MOVING */ {
        gSPDisplayList(POLY_OPA_DISP++, gFireTempleStonePlatform2DL);
        if (this->actionFunc == BgHidanSima_MovingPlatform_Move) {
            POLY_XLU_DISP = Gfx_SetupDL(POLY_XLU_DISP, SETUPDL_20);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 1, 255, 255, 0, 150);
            gDPSetEnvColor(POLY_XLU_DISP++, 255, 0, 0, 255);
            POLY_XLU_DISP = BgHidanSima_DrawFire(play, this, POLY_XLU_DISP);
        }
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_hidan_sima.c", 668);
}
