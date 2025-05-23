/*
 * File: z_en_bombf.c
 * Overlay: ovl_En_Bombf
 * Description: Bomb Flower
 */

#include "z_en_bombf.h"
#include "assets/objects/object_bombf/object_bombf.h"
#include "overlays/effects/ovl_Effect_Ss_Dead_Sound/z_eff_ss_dead_sound.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_UPDATE_CULLING_DISABLED)

void EnBombf_Init(Actor* thisx, PlayState* play);
void EnBombf_Destroy(Actor* thisx, PlayState* play);
void EnBombf_Update(Actor* thisx, PlayState* play);
void EnBombf_Draw(Actor* thisx, PlayState* play);

void EnBombf_Move(EnBombf* this, PlayState* play);
void EnBombf_GrowBomb(EnBombf* this, PlayState* play);
void EnBombf_WaitForRelease(EnBombf* this, PlayState* play);
void EnBombf_Explode(EnBombf* this, PlayState* play);
void EnBombf_SetupGrowBomb(EnBombf* this, s16 params);

ActorProfile En_Bombf_Profile = {
    /**/ ACTOR_EN_BOMBF,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_BOMBF,
    /**/ sizeof(EnBombf),
    /**/ EnBombf_Init,
    /**/ EnBombf_Destroy,
    /**/ EnBombf_Update,
    /**/ EnBombf_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER | AC_TYPE_OTHER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK2,
        { 0x00000000, 0x00, 0x00 },
        { 0x0003F828, 0x00, 0x00 },
        ATELEM_NONE,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 9, 18, 10, { 0, 0, 0 } },
};

static ColliderJntSphElementInit sJntSphElementsInit[1] = {
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000008, 0x00, 0x08 },
            { 0x00000000, 0x00, 0x00 },
            ATELEM_ON | ATELEM_SFX_NONE,
            ACELEM_NONE,
            OCELEM_NONE,
        },
        { 0, { { 0, 0, 0 }, 0 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    {
        COL_MATERIAL_NONE,
        AT_ON | AT_TYPE_ALL,
        AC_NONE,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_JNTSPH,
    },
    1,
    sJntSphElementsInit,
};

void EnBombf_SetupAction(EnBombf* this, EnBombfActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnBombf_Init(Actor* thisx, PlayState* play) {
    f32 shapeUnk10 = 0.0f;
    s32 pad;
    EnBombf* this = (EnBombf*)thisx;

    Actor_SetScale(thisx, 0.01f);
    this->isFuseEnabled = true;
    Collider_InitCylinder(play, &this->bombCollider);
    Collider_InitJntSph(play, &this->explosionCollider);
    Collider_SetCylinder(play, &this->bombCollider, thisx, &sCylinderInit);
    Collider_SetJntSph(play, &this->explosionCollider, thisx, &sJntSphInit, &this->explosionColliderItems[0]);

    if (thisx->params == BOMBFLOWER_BODY) {
        shapeUnk10 = 1000.0f;
    }

    ActorShape_Init(&thisx->shape, shapeUnk10, ActorShadow_DrawCircle, 12.0f);
    thisx->focus.pos = thisx->world.pos;

    if (Actor_FindNearby(play, thisx, ACTOR_BG_DDAN_KD, ACTORCAT_BG, 10000.0f) != NULL) {
        thisx->flags |= ACTOR_FLAG_DRAW_CULLING_DISABLED;
    }

    thisx->colChkInfo.cylRadius = 10.0f;
    thisx->colChkInfo.cylHeight = 10;
    thisx->attentionRangeType = ATTENTION_RANGE_0;

    if (thisx->params == BOMBFLOWER_BODY) {
        this->timer = 140;
        this->flashSpeedScale = 15;
        thisx->gravity = -1.5f;
        Actor_ChangeCategory(play, &play->actorCtx, thisx, ACTORCAT_EXPLOSIVE);
        thisx->colChkInfo.mass = 200;
        thisx->flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
        EnBombf_SetupAction(this, EnBombf_Move);
    } else {
        thisx->colChkInfo.mass = MASS_IMMOVABLE;
        this->colliderSetOC = true;
        this->flowerBombScale = 1.0f;
        EnBombf_SetupGrowBomb(this, thisx->params);
    }

    thisx->cullingVolumeScale += 31000.0f;
    thisx->cullingVolumeDistance += 31000.0f;
}

void EnBombf_Destroy(Actor* thisx, PlayState* play) {
    EnBombf* this = (EnBombf*)thisx;

    Collider_DestroyCylinder(play, &this->bombCollider);
    Collider_DestroyJntSph(play, &this->explosionCollider);
}

void EnBombf_SetupGrowBomb(EnBombf* this, s16 params) {
    EnBombf_SetupAction(this, EnBombf_GrowBomb);
}

void EnBombf_GrowBomb(EnBombf* this, PlayState* play) {
    EnBombf* bombFlower;
    s32 pad;
    s32 pad1;
    Player* player = GET_PLAYER(play);
    s32 pad2;

    if (this->flowerBombScale >= 1.0f) {
        if (Actor_HasParent(&this->actor, play)) {
            bombFlower = (EnBombf*)Actor_Spawn(&play->actorCtx, play, ACTOR_EN_BOMBF, this->actor.world.pos.x,
                                               this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, 0);
            if (bombFlower != NULL) {
                func_8002F5C4(&this->actor, &bombFlower->actor, play);
                this->timer = 180;
                this->flowerBombScale = 0.0f;
                Actor_PlaySfx(&this->actor, NA_SE_PL_PULL_UP_ROCK);
                this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
            } else {
                player->actor.child = NULL;
                player->heldActor = NULL;
                player->interactRangeActor = NULL;
                this->actor.parent = NULL;
                player->stateFlags1 &= ~PLAYER_STATE1_CARRYING_ACTOR;
            }
        } else if (this->bombCollider.base.acFlags & AC_HIT) {
            this->bombCollider.base.acFlags &= ~AC_HIT;

            if (this->bombCollider.base.ac->category != ACTORCAT_BOSS) {
                bombFlower = (EnBombf*)Actor_Spawn(&play->actorCtx, play, ACTOR_EN_BOMBF, this->actor.world.pos.x,
                                                   this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, 0);
                if (bombFlower != NULL) {
                    bombFlower->isFuseEnabled = true;
                    bombFlower->timer = 0;
                    this->timer = 180;
                    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
                    this->flowerBombScale = 0.0f;
                }
            }
        } else {
            if (Player_IsBurningStickInRange(play, &this->actor.world.pos, 30.0f, 50.0f)) {
                bombFlower = (EnBombf*)Actor_Spawn(&play->actorCtx, play, ACTOR_EN_BOMBF, this->actor.world.pos.x,
                                                   this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, 0);
                if (bombFlower != NULL) {
                    bombFlower->timer = 100;
                    this->timer = 180;
                    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
                    this->flowerBombScale = 0.0f;
                }
            } else {
                if (!Actor_HasParent(&this->actor, play)) {
                    Actor_OfferCarry(&this->actor, play);
                } else {
                    player->actor.child = NULL;
                    player->heldActor = NULL;
                    player->interactRangeActor = NULL;
                    this->actor.parent = NULL;
                    player->stateFlags1 &= ~PLAYER_STATE1_CARRYING_ACTOR;
                    this->actor.world.pos = this->actor.home.pos;
                }
            }
        }
    } else {
        if (this->timer == 0) {
            this->flowerBombScale += 0.05f;
            if (this->flowerBombScale >= 1.0f) {
                this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
            }
        }

        if (Actor_HasParent(&this->actor, play)) {
            player->actor.child = NULL;
            player->heldActor = NULL;
            player->interactRangeActor = NULL;
            this->actor.parent = NULL;
            player->stateFlags1 &= ~PLAYER_STATE1_CARRYING_ACTOR;
            this->actor.world.pos = this->actor.home.pos;
        }
    }
}

void EnBombf_Move(EnBombf* this, PlayState* play) {
    if (Actor_HasParent(&this->actor, play)) {
        // setting flowerBombScale does not do anything in the context of a bomb that link picks up
        // this and the assignment below are probably left overs
        this->flowerBombScale = 0.0f;
        EnBombf_SetupAction(this, EnBombf_WaitForRelease);
        this->actor.room = -1;
        return;
    }

    this->flowerBombScale = 1.0f;

    if (!(this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
        Math_SmoothStepToF(&this->actor.speed, 0.0f, 1.0f, 0.025f, 0.0f);
    } else {
        Math_SmoothStepToF(&this->actor.speed, 0.0f, 1.0f, 1.5f, 0.0f);
        if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) && (this->actor.velocity.y < -6.0f)) {
            Actor_PlaySfx_SurfaceBomb(play, &this->actor);
            this->actor.velocity.y *= -0.5f;
        } else if (this->timer >= 4) {
            Actor_OfferCarry(&this->actor, play);
        }
    }
}

void EnBombf_WaitForRelease(EnBombf* this, PlayState* play) {
    // if parent is NULL bomb has been released
    if (Actor_HasNoParent(&this->actor, play)) {
        EnBombf_SetupAction(this, EnBombf_Move);
        EnBombf_Move(this, play);
    } else {
        this->actor.velocity.y = 0.0f;
    }
}

void EnBombf_Explode(EnBombf* this, PlayState* play) {
    Player* player;

    if (this->explosionCollider.elements[0].dim.modelSphere.radius == 0) {
        this->actor.flags |= ACTOR_FLAG_DRAW_CULLING_DISABLED;
        Rumble_Request(this->actor.xzDistToPlayer, 255, 20, 150);
    }

    this->explosionCollider.elements[0].dim.modelSphere.radius += 8;
    this->explosionCollider.elements[0].dim.worldSphere.radius =
        this->explosionCollider.elements[0].dim.modelSphere.radius;

    if (this->actor.params == BOMBFLOWER_EXPLOSION) {
        CollisionCheck_SetAT(play, &play->colChkCtx, &this->explosionCollider.base);
    }

    if (play->envCtx.adjLight1Color[0] != 0) {
        play->envCtx.adjLight1Color[0] -= 25;
    }

    if (play->envCtx.adjLight1Color[1] != 0) {
        play->envCtx.adjLight1Color[1] -= 25;
    }

    if (play->envCtx.adjLight1Color[2] != 0) {
        play->envCtx.adjLight1Color[2] -= 25;
    }

    if (play->envCtx.adjAmbientColor[0] != 0) {
        play->envCtx.adjAmbientColor[0] -= 25;
    }

    if (play->envCtx.adjAmbientColor[1] != 0) {
        play->envCtx.adjAmbientColor[1] -= 25;
    }

    if (play->envCtx.adjAmbientColor[2] != 0) {
        play->envCtx.adjAmbientColor[2] -= 25;
    }

    if (this->timer == 0) {
        player = GET_PLAYER(play);

        if ((player->stateFlags1 & PLAYER_STATE1_CARRYING_ACTOR) && (player->heldActor == &this->actor)) {
            player->actor.child = NULL;
            player->heldActor = NULL;
            player->interactRangeActor = NULL;
            player->stateFlags1 &= ~PLAYER_STATE1_CARRYING_ACTOR;
        }

        Actor_Kill(&this->actor);
    }
}

void EnBombf_Update(Actor* thisx, PlayState* play) {
    Vec3f effVelocity = { 0.0f, 0.0f, 0.0f };
    Vec3f bomb2Accel = { 0.0f, 0.1f, 0.0f };
    Vec3f effAccel = { 0.0f, 0.0f, 0.0f };
    Vec3f effPos;
    Vec3f dustAccel = { 0.0f, 0.6f, 0.0f };
    Color_RGBA8 dustColor = { 255, 255, 255, 255 };
    s32 pad[2];
    EnBombf* this = (EnBombf*)thisx;

    if (this->isFuseEnabled && (this->timer != 0)) {
        this->timer--;
    }

    if (!this->colliderSetOC && !Actor_HasParent(thisx, play) &&
        ((thisx->xzDistToPlayer >= 20.0f) || (ABS(thisx->yDistToPlayer) >= 80.0f))) {
        this->colliderSetOC = true;
    }

    this->actionFunc(this, play);

    if (thisx->params == BOMBFLOWER_BODY) {
        Actor_MoveXZGravity(thisx);
    }

    if (thisx->gravity != 0.0f) {
        DREG(6) = 1;
        Actor_UpdateBgCheckInfo(play, thisx, 5.0f, 10.0f, 0.0f,
                                UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_1 | UPDBGCHECKINFO_FLAG_2 |
                                    UPDBGCHECKINFO_FLAG_3 | UPDBGCHECKINFO_FLAG_4);
        DREG(6) = 0;
    }

    if (thisx->params == BOMBFLOWER_BODY) {

        if ((thisx->velocity.y > 0.0f) && (thisx->bgCheckFlags & BGCHECKFLAG_CEILING)) {
            thisx->velocity.y = -thisx->velocity.y;
        }

        // rebound bomb off the wall it hits
        if ((thisx->speed != 0.0f) && (thisx->bgCheckFlags & BGCHECKFLAG_WALL)) {

            if (ABS((s16)(thisx->wallYaw - thisx->world.rot.y)) > 0x4000) {
                if (1) {}
                thisx->world.rot.y = ((thisx->wallYaw - thisx->world.rot.y) + thisx->wallYaw) - 0x8000;
            }
            Actor_PlaySfx(thisx, NA_SE_EV_BOMB_BOUND);
            Actor_MoveXZGravity(thisx);
            DREG(6) = 1;
            Actor_UpdateBgCheckInfo(play, thisx, 5.0f, 10.0f, 0.0f,
                                    UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_1 | UPDBGCHECKINFO_FLAG_2 |
                                        UPDBGCHECKINFO_FLAG_3 | UPDBGCHECKINFO_FLAG_4);
            DREG(6) = 0;
            thisx->speed *= 0.7f;
            thisx->bgCheckFlags &= ~BGCHECKFLAG_WALL;
        }

        if ((this->bombCollider.base.acFlags & AC_HIT) || ((this->bombCollider.base.ocFlags1 & OC1_HIT) &&
                                                           (this->bombCollider.base.oc->category == ACTORCAT_ENEMY))) {
            this->isFuseEnabled = true;
            this->timer = 0;
        } else {
            // if a lit stick touches the bomb, set timer to 100
            if ((this->timer > 100) && Player_IsBurningStickInRange(play, &thisx->world.pos, 30.0f, 50.0f)) {
                this->timer = 100;
            }
        }

        if (this->isFuseEnabled) {
            dustAccel.y = 0.2f;
            effPos = thisx->world.pos;
            effPos.y += 25.0f;
            if (this->timer < 127) {
                // spawn spark effect on even frames
                if ((play->gameplayFrames % 2) == 0) {
                    EffectSsGSpk_SpawnFuse(play, thisx, &effPos, &effVelocity, &effAccel);
                }
                Actor_PlaySfx(thisx, NA_SE_IT_BOMB_IGNIT - SFX_FLAG);

                effPos.y += 3.0f;
                func_8002829C(play, &effPos, &effVelocity, &dustAccel, &dustColor, &dustColor, 50, 5);
            }

            // double bomb flash speed and adjust red color at certain times during the countdown
            if ((this->timer == 3) || (this->timer == 30) || (this->timer == 50) || (this->timer == 70)) {
                this->flashSpeedScale >>= 1;
            }

            if ((this->timer < 100) && ((this->timer & (this->flashSpeedScale + 1)) != 0)) {
                Math_SmoothStepToF(&this->flashIntensity, 150.0f, 1.0f, 150.0f / this->flashSpeedScale, 0.0f);
            } else {
                Math_SmoothStepToF(&this->flashIntensity, 0.0f, 1.0f, 150.0f / this->flashSpeedScale, 0.0f);
            }

            if (this->timer < 3) {
                Actor_SetScale(thisx, thisx->scale.x + 0.002f);
            }

            if (this->timer == 0) {
                effPos = thisx->world.pos;

                effPos.y += 10.0f;

                if (Actor_HasParent(thisx, play)) {
                    effPos.y += 30.0f;
                }

                EffectSsBomb2_SpawnLayered(play, &effPos, &effVelocity, &bomb2Accel, 100, 19);

                effPos.y = thisx->floorHeight;
                if (thisx->floorHeight > BGCHECK_Y_MIN) {
                    EffectSsBlast_SpawnWhiteShockwave(play, &effPos, &effVelocity, &effAccel);
                }

                Actor_PlaySfx(thisx, NA_SE_IT_BOMB_EXPLOSION);
                play->envCtx.adjLight1Color[0] = play->envCtx.adjLight1Color[1] = play->envCtx.adjLight1Color[2] = 250;
                play->envCtx.adjAmbientColor[0] = play->envCtx.adjAmbientColor[1] = play->envCtx.adjAmbientColor[2] =
                    250;
                Camera_RequestQuake(&play->mainCamera, 2, 11, 8);
                thisx->params = BOMBFLOWER_EXPLOSION;
                this->timer = 10;
                thisx->flags |= ACTOR_FLAG_DRAW_CULLING_DISABLED;
                EnBombf_SetupAction(this, EnBombf_Explode);
            }
        }
    }

    thisx->focus.pos = thisx->world.pos;
    thisx->focus.pos.y += 10.0f;

    if (thisx->params <= BOMBFLOWER_BODY) {

        Collider_UpdateCylinder(thisx, &this->bombCollider);

        if ((this->flowerBombScale >= 1.0f) && this->colliderSetOC) {
            CollisionCheck_SetOC(play, &play->colChkCtx, &this->bombCollider.base);
        }

        CollisionCheck_SetAC(play, &play->colChkCtx, &this->bombCollider.base);
    }

    if ((thisx->scale.x >= 0.01f) && (thisx->params != BOMBFLOWER_EXPLOSION)) {
        if (thisx->depthInWater >= 20.0f) {
            EffectSsDeadSound_SpawnStationary(play, &thisx->projectedPos, NA_SE_IT_BOMB_UNEXPLOSION, true,
                                              DEADSOUND_REPEAT_MODE_OFF, 10);
            Actor_Kill(thisx);
            return;
        }
        if (thisx->bgCheckFlags & BGCHECKFLAG_WATER_TOUCH) {
            thisx->bgCheckFlags &= ~BGCHECKFLAG_WATER_TOUCH;
            Actor_PlaySfx(thisx, NA_SE_EV_BOMB_DROP_WATER);
        }
    }
}

Gfx* EnBombf_NewMtxDList(GraphicsContext* gfxCtx, PlayState* play) {
    Gfx* displayList;
    Gfx* displayListHead;

    displayList = GRAPH_ALLOC(gfxCtx, 5 * sizeof(Gfx));
    displayListHead = displayList;
    Matrix_ReplaceRotation(&play->billboardMtxF);
    MATRIX_FINALIZE_AND_LOAD(displayListHead++, gfxCtx, "../z_en_bombf.c", 1021);
    gSPEndDisplayList(displayListHead++);
    return displayList;
}

void EnBombf_Draw(Actor* thisx, PlayState* play) {
    s32 pad;
    EnBombf* this = (EnBombf*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_bombf.c", 1034);

    if (thisx->params <= BOMBFLOWER_BODY) {
        Gfx_SetupDL_25Opa(play->state.gfxCtx);

        if (thisx->params != BOMBFLOWER_BODY) {
            MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_en_bombf.c", 1041);
            gSPDisplayList(POLY_OPA_DISP++, gBombFlowerLeavesDL);
            gSPDisplayList(POLY_OPA_DISP++, gBombFlowerBaseLeavesDL);

            Matrix_Translate(0.0f, 1000.0f, 0.0f, MTXMODE_APPLY);
            Matrix_Scale(this->flowerBombScale, this->flowerBombScale, this->flowerBombScale, MTXMODE_APPLY);
        }

        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 200, 255, 200, 255);
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetEnvColor(POLY_OPA_DISP++, (s16)this->flashIntensity, 20, 10, 0);
        MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_en_bombf.c", 1054);
        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(EnBombf_NewMtxDList(play->state.gfxCtx, play)));
        gSPDisplayList(POLY_OPA_DISP++, gBombFlowerBombAndSparkDL);
    } else {
        Collider_UpdateSpheres(0, &this->explosionCollider);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_bombf.c", 1063);
}
