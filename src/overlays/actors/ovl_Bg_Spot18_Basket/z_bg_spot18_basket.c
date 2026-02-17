/*
 * File: z_bg_spot18_basket.c
 * Overlay: ovl_Bg_Spot18_Basket
 * Description: Goron Vase
 */

#include "z_bg_spot18_basket.h"

#include "libc64/qrand.h"
#include "array_count.h"
#include "ichain.h"
#include "one_point_cutscene.h"
#include "printf.h"
#include "sfx.h"
#include "sys_math3d.h"
#include "terminal.h"
#include "translation.h"
#include "z_en_item00.h"
#include "z_lib.h"
#include "audio.h"
#include "effect.h"
#include "play_state.h"

#include "assets/objects/object_spot18_obj/object_spot18_obj.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void BgSpot18Basket_Init(Actor* thisx, PlayState* play);
void BgSpot18Basket_Destroy(Actor* thisx, PlayState* play);
void BgSpot18Basket_Update(Actor* thisx, PlayState* play);
void BgSpot18Basket_Draw(Actor* thisx, PlayState* play);

void BgSpot18Basket_Spinning(BgSpot18Basket* this, PlayState* play);
void BgSpot18Basket_SetupInactive(BgSpot18Basket* this);
void BgSpot18Basket_SetupActivation(BgSpot18Basket* this);
void BgSpot18Basket_SetupSpinning(BgSpot18Basket* this);
void BgSpot18Basket_SetupExplosionCs(BgSpot18Basket* this);
void BgSpot18Basket_SetupStopping(BgSpot18Basket* this);
void BgSpot18Basket_SetupGivingPrize(BgSpot18Basket* this);
void BgSpot18Basket_Inactive(BgSpot18Basket* this, PlayState* play);
void BgSpot18Basket_Activation(BgSpot18Basket* this, PlayState* play);
void BgSpot18Basket_ExplosionCs(BgSpot18Basket* this, PlayState* play);
void BgSpot18Basket_Stopping(BgSpot18Basket* this, PlayState* play);
void BgSpot18Basket_GivingPrize(BgSpot18Basket* this, PlayState* play);

ActorProfile Bg_Spot18_Basket_Profile = {
    /**/ ACTOR_BG_SPOT18_BASKET,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_SPOT18_OBJ,
    /**/ sizeof(BgSpot18Basket),
    /**/ BgSpot18Basket_Init,
    /**/ BgSpot18Basket_Destroy,
    /**/ BgSpot18Basket_Update,
    /**/ BgSpot18Basket_Draw,
};

static ColliderJntSphElementInit sJntSphElementsInit[] = {
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
            { 0x00000000, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_NONE,
            ACELEM_NONE,
            OCELEM_ON,
        },
        { 0, { { 0, 2040, 0 }, 54 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
            { 0x00000008, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_NONE,
            ACELEM_ON,
            OCELEM_NONE,
        },
        { 1, { { 0, 1400, 0 }, 13 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_PLAYER,
        OC2_TYPE_2,
        COLSHAPE_JNTSPH,
    },
    ARRAY_COUNT(sJntSphElementsInit),
    sJntSphElementsInit,
};

static s16 sGoronVaseStoppedRotY[] = { 0x8000, 0x2AAA, 0xD555, 0x0000 };

void BgSpot18Basket_InitColliderJntSph(Actor* thisx, PlayState* play) {
    BgSpot18Basket* this = (BgSpot18Basket*)thisx;

    Collider_InitJntSph(play, &this->colliderJntSph);
    Collider_SetJntSph(play, &this->colliderJntSph, &this->dyna.actor, &sJntSphInit, this->colliderJntSphElements);
    this->dyna.actor.colChkInfo.mass = MASS_IMMOVABLE;
}

void BgSpot18Basket_SpawnDustClouds(BgSpot18Basket* this, PlayState* play, f32 spawnRate) {
    static s16 spawnPos = 0;
    Vec3f acceleration;
    Vec3f velocity;
    Vec3f position;
    f32 cosValue;
    s32 i;
    f32 randomValue;
    f32 sinValue;

    for (i = 0; i != 2; i++) {
        if (spawnRate < Rand_ZeroOne()) {
            continue;
        }

        spawnPos += 0x7530;

        sinValue = Math_SinS(spawnPos);
        cosValue = Math_CosS(spawnPos);

        randomValue = (Rand_ZeroOne() * 35.0f) + 35.0f;

        position.x = (randomValue * sinValue) + this->dyna.actor.world.pos.x;
        position.y = this->dyna.actor.world.pos.y + 10.0f;
        position.z = (randomValue * cosValue) + this->dyna.actor.world.pos.z;

        velocity.x = sinValue;
        velocity.y = 0.0f;
        velocity.z = cosValue;

        acceleration.x = 0.0f;
        acceleration.y = 0.5f;
        acceleration.z = 0.0f;

        EffectSsDust_SpawnBrownFogShaded2(play, &position, &velocity, &acceleration, ((Rand_ZeroOne() * 16) + 80),
                                          ((Rand_ZeroOne() * 30) + 80));
    }
}

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1000, ICHAIN_STOP),
};

void BgSpot18Basket_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    BgSpot18Basket* this = (BgSpot18Basket*)thisx;
    CollisionHeader* colHeader = NULL;

    DynaPolyActor_Init(&this->dyna, DYNA_TRANSFORM_POS | DYNA_TRANSFORM_ROT_Y);
    BgSpot18Basket_InitColliderJntSph(&this->dyna.actor, play);
    CollisionHeader_GetVirtual(&gGoronCityVaseCol, &colHeader);

    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    ActorShape_Init(&this->dyna.actor.shape, 0.0f, ActorShadow_DrawCircle, 15.0f);
    this->dyna.actor.home.pos.y += 0.01f;
    this->dyna.actor.world.pos.y = this->dyna.actor.home.pos.y;

    if (Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 8, 6))) {
        BgSpot18Basket_SetupSpinning(this);
        return;
    }

    BgSpot18Basket_SetupInactive(this);
    Actor_SpawnAsChild(&play->actorCtx, &this->dyna.actor, play, ACTOR_BG_SPOT18_FUTA, this->dyna.actor.world.pos.x,
                       this->dyna.actor.world.pos.y, this->dyna.actor.world.pos.z, this->dyna.actor.shape.rot.x,
                       this->dyna.actor.shape.rot.y + 0x1555, this->dyna.actor.shape.rot.z, -1);

    if (this->dyna.actor.child == NULL) {
        PRINTF_COLOR_RED();
        PRINTF(T("Ｅｒｒｏｒ : 変化壷蓋発生失敗(%s %d)\n", "Error : Failed to spawn the change pot cover (%s %d)\n"),
               "../z_bg_spot18_basket.c", 351);
        PRINTF_RST();
        Actor_Kill(&this->dyna.actor);
    }
}

void BgSpot18Basket_Destroy(Actor* thisx, PlayState* play) {
    BgSpot18Basket* this = (BgSpot18Basket*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
    Collider_DestroyJntSph(play, &this->colliderJntSph);
}

void BgSpot18Basket_SetupInactive(BgSpot18Basket* this) {
    this->actionFunc = BgSpot18Basket_Inactive;
}

void BgSpot18Basket_Inactive(BgSpot18Basket* this, PlayState* play) {
    if (Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 8, 6))) {
        OnePointCutscene_Init(play, 4220, 80, &this->dyna.actor, CAM_ID_MAIN);
        BgSpot18Basket_SetupActivation(this);
    }
}

void BgSpot18Basket_SetupActivation(BgSpot18Basket* this) {
    this->actionFunc = BgSpot18Basket_Activation;
    this->timer = 0;
}

void BgSpot18Basket_Activation(BgSpot18Basket* this, PlayState* play) {
    if (this->timer > 20) {
        BgSpot18Basket_SetupSpinning(this);
        this->dyna.actor.child->parent = NULL;
        this->dyna.actor.child = NULL;
    }
}

void BgSpot18Basket_SetupSpinning(BgSpot18Basket* this) {
    this->actionFunc = BgSpot18Basket_Spinning;
    this->spinRate = this->circleRate = 0;
}

void BgSpot18Basket_Spinning(BgSpot18Basket* this, PlayState* play) {
    f32 positionDiff;
    Actor* colliderBaseAc;

    Math_StepToS(&this->spinRate, 0x1F4, 0x1E);

    this->dyna.actor.shape.rot.y += this->spinRate;

    Math_StepToF(&this->circleRadius, 50.0f, 1.5f);
    Math_StepToS(&this->circleRate, 400, 15);

    this->circleMoveAngle += this->circleRate;

    this->dyna.actor.world.pos.x =
        (Math_SinS(this->circleMoveAngle) * this->circleRadius) + this->dyna.actor.home.pos.x;
    this->dyna.actor.world.pos.z =
        (Math_CosS(this->circleMoveAngle) * this->circleRadius) + this->dyna.actor.home.pos.z;

    if (this->colliderJntSph.base.acFlags & AC_HIT) {
        colliderBaseAc = this->colliderJntSph.base.ac;

        if (colliderBaseAc != NULL) {
            positionDiff = colliderBaseAc->world.pos.y - this->dyna.actor.world.pos.y;

            if (positionDiff > 120.0f && positionDiff < 200.0f) {
                if (Math3D_Dist2DSq(colliderBaseAc->world.pos.z, this->colliderJntSph.base.ac->world.pos.x,
                                    this->dyna.actor.world.pos.z, this->dyna.actor.world.pos.x) < SQ(32.0f)) {
                    OnePointCutscene_Init(play, 4210, 240, &this->dyna.actor, CAM_ID_MAIN);
                    BgSpot18Basket_SetupExplosionCs(this);
                    DynaPoly_DisableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
                }
            }
        }
    }
    Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_ELEVATOR_MOVE - SFX_FLAG);
}

void BgSpot18Basket_SetupExplosionCs(BgSpot18Basket* this) {
    this->actionFunc = BgSpot18Basket_ExplosionCs;
    this->timer = 0;
    this->pivotAltitude = 0;
}

void BgSpot18Basket_ExplosionCs(BgSpot18Basket* this, PlayState* play) {
    if (this->timer > 120) {
        Math_StepToS(&this->spinRate, 0x3E8, 0x32);
    } else {
        Math_StepToS(&this->spinRate, 0xBB8, 0x64);
    }

    this->dyna.actor.shape.rot.y += this->spinRate;

    if (this->timer < 70) {
        Math_StepToF(&this->circleRadius, 100.0f, 2.0f);
    } else {
        Math_StepToF(&this->circleRadius, 0.0f, 2.0f);
    }

    Math_StepToS(&this->circleRate, 1000, 20);

    this->circleMoveAngle += this->circleRate;

    this->dyna.actor.world.pos.x =
        (Math_SinS(this->circleMoveAngle) * this->circleRadius) + this->dyna.actor.home.pos.x;
    this->dyna.actor.world.pos.z =
        (Math_CosS(this->circleMoveAngle) * this->circleRadius) + this->dyna.actor.home.pos.z;

    this->pivotAzimuth += 0xBB8;

    Math_StepToS(&this->pivotAltitude, 0x5DC, 0x1E);

    this->dyna.actor.shape.rot.x = Math_CosS(this->pivotAzimuth) * this->pivotAltitude;
    this->dyna.actor.shape.rot.z = -Math_SinS(this->pivotAzimuth) * this->pivotAltitude;

    if (this->timer > 140) {
        BgSpot18Basket_SetupStopping(this);
    }

    if (this->timer < 80) {
        BgSpot18Basket_SpawnDustClouds(this, play, 1.0f);
    } else {
        BgSpot18Basket_SpawnDustClouds(this, play, 0.8f);
    }

    {
        f32 freqScale = (this->spinRate - 0x1F4) * 0.0006f;
        f32 clampedFreqScale = CLAMP(freqScale, 0.0f, 1.5f);

        func_800F436C(&this->dyna.actor.projectedPos, NA_SE_EV_WALL_MOVE_SP - SFX_FLAG, clampedFreqScale);
    }
}

void BgSpot18Basket_SetupStopping(BgSpot18Basket* this) {
    s16 shapeRotY;

    shapeRotY = this->dyna.actor.shape.rot.y;
    this->actionFunc = BgSpot18Basket_Stopping;

    if ((shapeRotY < -0x2E93) || (shapeRotY >= 0x7C19)) {
        this->prize = 2;
    } else if (shapeRotY < 0x26C2) {
        this->prize = 1;
    } else {
        this->prize = 0;
    }

    this->timer = 0;
}

void BgSpot18Basket_Stopping(BgSpot18Basket* this, PlayState* play) {
    s32 pad;
    s32 tempAltitude;
    s16 stoppedRotY;

    this->pivotAzimuth += 0xBB8;

    if (this->timer >= 13) {
        tempAltitude = Math_StepToS(&this->pivotAltitude, 0, 55);
    } else {
        tempAltitude = 0;
    }

    this->dyna.actor.shape.rot.x = Math_CosS(this->pivotAzimuth) * this->pivotAltitude;
    this->dyna.actor.shape.rot.z = -Math_SinS(this->pivotAzimuth) * this->pivotAltitude;

    Math_StepToS(&this->spinRate, 0x1F4, 0xA);
    this->dyna.actor.shape.rot.y += this->spinRate;

    if (tempAltitude != 0) {
        stoppedRotY = sGoronVaseStoppedRotY[this->prize];

        if ((s16)(this->dyna.actor.shape.rot.y - stoppedRotY) >= 0) {
            this->dyna.actor.shape.rot.y = stoppedRotY;

            BgSpot18Basket_SetupGivingPrize(this);
            DynaPoly_EnableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
        }
    }

    if (this->timer < 30) {
        BgSpot18Basket_SpawnDustClouds(this, play, 0.5f);
    } else {
        BgSpot18Basket_SpawnDustClouds(this, play, 0.3f);
    }

    {
        f32 freqScale = (this->spinRate - 0x1F4) * 0.0006f;
        f32 clampedFreqScale = CLAMP(freqScale, 0.0f, 1.5f);

        func_800F436C(&this->dyna.actor.projectedPos, NA_SE_EV_WALL_MOVE_SP - SFX_FLAG, clampedFreqScale);
    }
}

void BgSpot18Basket_SetupGivingPrize(BgSpot18Basket* this) {
    this->actionFunc = BgSpot18Basket_GivingPrize;
    this->timer = 0;
}

static s16 sGoronVaseCollectibleRotY[] = { -0x0FA0, 0x0320, 0x0FA0 };

void BgSpot18Basket_GivingPrize(BgSpot18Basket* this, PlayState* play) {
    s32 i;
    Actor* actor = &this->dyna.actor;
    Vec3f spawnPos;
    EnItem00* collectible;

    if (this->timer == 1) {
        spawnPos.x = actor->world.pos.x;
        spawnPos.y = actor->world.pos.y + 170.0f;
        spawnPos.z = actor->world.pos.z;

        if (this->prize == 0) {
            for (i = 0; i < ARRAY_COUNT(sGoronVaseCollectibleRotY); i++) {
                collectible = Item_DropCollectible(play, &spawnPos, ITEM00_BOMBS_A);
                if (collectible != NULL) {
                    collectible->actor.velocity.y = 11.0f;
                    collectible->actor.world.rot.y = sGoronVaseCollectibleRotY[i];
                }
            }
        } else if (this->prize == 1) {
            for (i = 0; i < ARRAY_COUNT(sGoronVaseCollectibleRotY); i++) {
                collectible = Item_DropCollectible(play, &spawnPos, ITEM00_RUPEE_GREEN);
                if (collectible != NULL) {
                    collectible->actor.velocity.y = 11.0f;
                    collectible->actor.world.rot.y = sGoronVaseCollectibleRotY[i];
                }
            }
        } else if (this->prize == 2) {
            if ((this->isHeartPieceGiven) || Flags_GetCollectible(play, PARAMS_GET_U(actor->params, 0, 6))) {
                collectible = Item_DropCollectible(play, &spawnPos, ITEM00_RUPEE_PURPLE);
                if (collectible != NULL) {
                    collectible->actor.velocity.y = 11.0f;
                    collectible->actor.world.rot.y = sGoronVaseCollectibleRotY[1];
                }
            } else {
                collectible = Item_DropCollectible(play, &spawnPos,
                                                   (PARAMS_GET_U(actor->params, 0, 6) << 8) | ITEM00_HEART_PIECE);
                if (collectible != NULL) {
                    collectible->actor.velocity.y = 11.0f;
                    collectible->actor.world.rot.y = sGoronVaseCollectibleRotY[1];
                    this->isHeartPieceGiven = true;
                }
            }

            collectible = Item_DropCollectible(play, &spawnPos, ITEM00_RUPEE_RED);
            if (collectible != NULL) {
                collectible->actor.velocity.y = 11.0f;
                collectible->actor.world.rot.y = sGoronVaseCollectibleRotY[0];
            }

            collectible = Item_DropCollectible(play, &spawnPos, ITEM00_RUPEE_BLUE);
            if (collectible != NULL) {
                collectible->actor.velocity.y = 11.0f;
                collectible->actor.world.rot.y = sGoronVaseCollectibleRotY[2];
            }
        }
    } else if (this->timer == 2) {
        if (this->prize == 2) {
            Sfx_PlaySfxCentered(NA_SE_SY_CORRECT_CHIME);
        } else {
            Sfx_PlaySfxCentered(NA_SE_SY_TRE_BOX_APPEAR);
        }
    } else if (this->timer == 200) {
        BgSpot18Basket_SetupSpinning(this);
    }
}

void BgSpot18Basket_Update(Actor* thisx, PlayState* play) {
    s32 pad;
    BgSpot18Basket* this = (BgSpot18Basket*)thisx;
    s32 bgId;

    this->timer++;
    this->actionFunc(this, play);
    this->dyna.actor.floorHeight = BgCheck_EntityRaycastDown4(&play->colCtx, &this->dyna.actor.floorPoly, &bgId,
                                                              &this->dyna.actor, &this->dyna.actor.world.pos);
    if (this->actionFunc != BgSpot18Basket_Inactive) {
        CollisionCheck_SetOC(play, &play->colChkCtx, &this->colliderJntSph.base);
        if (this->actionFunc != BgSpot18Basket_Activation) {
            this->colliderJntSph.base.acFlags &= ~AC_HIT;
            CollisionCheck_SetAC(play, &play->colChkCtx, &this->colliderJntSph.base);
        }
    }
}

void BgSpot18Basket_Draw(Actor* thisx, PlayState* play) {
    BgSpot18Basket* this = (BgSpot18Basket*)thisx;

    Collider_UpdateSpheres(0, &this->colliderJntSph);
    Collider_UpdateSpheres(1, &this->colliderJntSph);
    Gfx_DrawDListOpa(play, gGoronCityVaseDL);
}
