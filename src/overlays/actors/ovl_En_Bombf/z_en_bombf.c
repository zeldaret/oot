/*
 * File: z_en_bombf.c
 * Overlay: ovl_En_Bombf
 * Description: Bomb Flower
 */

#include "z_en_bombf.h"
#include "overlays/effects/ovl_Effect_Ss_Dead_Sound/z_eff_ss_dead_sound.h"

#define FLAGS 0x00000011

#define THIS ((EnBombf*)thisx)

void EnBombf_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBombf_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBombf_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBombf_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnBombf_Move(EnBombf* this, GlobalContext* globalCtx);
void EnBombf_GrowBomb(EnBombf* this, GlobalContext* globalCtx);
void EnBombf_WaitForRelease(EnBombf* this, GlobalContext* globalCtx);
void EnBombf_Explode(EnBombf* this, GlobalContext* globalCtx);
void EnBombf_SetupGrowBomb(EnBombf* this, s16 params);

const ActorInit En_Bombf_InitVars = {
    ACTOR_EN_BOMBF,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_BOMBF,
    sizeof(EnBombf),
    (ActorFunc)EnBombf_Init,
    (ActorFunc)EnBombf_Destroy,
    (ActorFunc)EnBombf_Update,
    (ActorFunc)EnBombf_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x29, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x02, { 0x00000000, 0x00, 0x00 }, { 0x0003F828, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 9, 18, 10, { 0, 0, 0 } },
};

static ColliderJntSphItemInit sJntSphItemsInit[1] = {
    {
        { 0x00, { 0x00000008, 0x00, 0x08 }, { 0x00000000, 0x00, 0x00 }, 0x19, 0x00, 0x00 },
        { 0, { { 0, 0, 0 }, 0 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_UNK10, 0x39, 0x00, 0x00, 0x00, COLSHAPE_JNTSPH },
    1,
    sJntSphItemsInit,
};

extern Gfx D_06000340[];
extern Gfx D_06000408[];
extern Gfx D_06000530[];

void EnBombf_SetupAction(EnBombf* this, EnBombfActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnBombf_Init(Actor* thisx, GlobalContext* globalCtx) {
    f32 shapeUnk10 = 0.0f;
    s32 pad;
    EnBombf* this = THIS;

    Actor_SetScale(thisx, 0.01f);
    this->unk_200 = 1;
    Collider_InitCylinder(globalCtx, &this->bombCollider);
    Collider_InitJntSph(globalCtx, &this->explosionCollider);
    Collider_SetCylinder(globalCtx, &this->bombCollider, thisx, &sCylinderInit);
    Collider_SetJntSph(globalCtx, &this->explosionCollider, thisx, &sJntSphInit, &this->explosionColliderItems[0]);

    if (thisx->params == BOMBFLOWER_BODY) {
        shapeUnk10 = 1000.0f;
    }

    ActorShape_Init(&thisx->shape, shapeUnk10, ActorShadow_DrawFunc_Circle, 12.0f);
    thisx->posRot2.pos = thisx->posRot.pos;

    if (Actor_FindNearby(globalCtx, thisx, ACTOR_BG_DDAN_KD, ACTORTYPE_BG, 10000.0f) != NULL) {
        thisx->flags |= 0x20;
    }

    thisx->colChkInfo.unk_10 = 10.0f;
    thisx->colChkInfo.unk_12 = 10;
    thisx->unk_1F = 0;

    if (thisx->params == BOMBFLOWER_BODY) {
        this->timer = 140;
        this->flashSpeedScale = 15;
        thisx->gravity = -1.5f;
        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, thisx, ACTORTYPE_EXPLOSIVES);
        thisx->colChkInfo.mass = 200;
        thisx->flags &= ~1;
        EnBombf_SetupAction(this, EnBombf_Move);
    } else {
        thisx->colChkInfo.mass = 0xFF;
        this->bumpOn = true;
        this->flowerBombScale = 1.0f;
        EnBombf_SetupGrowBomb(this, thisx->params);
    }

    thisx->uncullZoneScale += 31000.0f;
    thisx->uncullZoneForward += 31000.0f;
}

void EnBombf_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnBombf* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->bombCollider);
    Collider_DestroyJntSph(globalCtx, &this->explosionCollider);
}

void EnBombf_SetupGrowBomb(EnBombf* this, s16 params) {
    EnBombf_SetupAction(this, EnBombf_GrowBomb);
}

void EnBombf_GrowBomb(EnBombf* this, GlobalContext* globalCtx) {
    EnBombf* bombFlower;
    s32 pad;
    s32 pad1;
    Player* player = PLAYER;
    s32 pad2;

    if (this->flowerBombScale >= 1.0f) {
        if (Actor_HasParent(&this->actor, globalCtx)) {
            bombFlower =
                (EnBombf*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_BOMBF, this->actor.posRot.pos.x,
                                      this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
            if (bombFlower != NULL) {
                func_8002F5C4(&this->actor, bombFlower, globalCtx);
                this->timer = 180;
                this->flowerBombScale = 0.0f;
                Audio_PlayActorSound2(&this->actor, NA_SE_PL_PULL_UP_ROCK);
                this->actor.flags &= ~1;
            } else {
                player->actor.child = NULL;
                player->heldActor = NULL;
                player->interactRangeActor = NULL;
                this->actor.parent = NULL;
                player->stateFlags1 &= ~0x800;
            }
        } else if (this->bombCollider.base.acFlags & 2) {
            this->bombCollider.base.acFlags &= ~2;

            if (this->bombCollider.base.ac->type != ACTORTYPE_BOSS) {
                bombFlower =
                    (EnBombf*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_BOMBF, this->actor.posRot.pos.x,
                                          this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
                if (bombFlower != NULL) {
                    bombFlower->unk_200 = 1;
                    bombFlower->timer = 0;
                    this->timer = 180;
                    this->actor.flags &= ~1;
                    this->flowerBombScale = 0.0f;
                }
            }
        } else {
            if (Player_IsBurningStickInRange(globalCtx, &this->actor.posRot.pos, 30.0f, 50.0f)) {
                bombFlower =
                    (EnBombf*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_BOMBF, this->actor.posRot.pos.x,
                                          this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
                if (bombFlower != NULL) {
                    bombFlower->timer = 100;
                    this->timer = 180;
                    this->actor.flags &= ~1;
                    this->flowerBombScale = 0.0f;
                }
            } else {
                if (!Actor_HasParent(&this->actor, globalCtx)) {
                    func_8002F580(&this->actor, globalCtx);
                } else {
                    player->actor.child = NULL;
                    player->heldActor = NULL;
                    player->interactRangeActor = NULL;
                    this->actor.parent = NULL;
                    player->stateFlags1 &= ~0x800;
                    this->actor.posRot.pos = this->actor.initPosRot.pos;
                }
            }
        }
    } else {
        if (this->timer == 0) {
            this->flowerBombScale += 0.05f;
            if (this->flowerBombScale >= 1.0f) {
                this->actor.flags |= 1;
            }
        }

        if (Actor_HasParent(&this->actor, globalCtx)) {
            player->actor.child = NULL;
            player->heldActor = NULL;
            player->interactRangeActor = NULL;
            this->actor.parent = NULL;
            player->stateFlags1 &= ~0x800;
            this->actor.posRot.pos = this->actor.initPosRot.pos;
        }
    }
}

void EnBombf_Move(EnBombf* this, GlobalContext* globalCtx) {
    if (Actor_HasParent(&this->actor, globalCtx)) {
        // setting flowerBombScale does not do anything in the context of a bomb that link picks up
        // this and the assignment below are probably left overs
        this->flowerBombScale = 0.0f;
        EnBombf_SetupAction(this, EnBombf_WaitForRelease);
        this->actor.room = -1;
        return;
    }

    this->flowerBombScale = 1.0f;

    if (!(this->actor.bgCheckFlags & 1)) {
        Math_SmoothStepToF(&this->actor.speedXZ, 0.0f, 1.0f, 0.025f, 0.0f);
    } else {
        Math_SmoothStepToF(&this->actor.speedXZ, 0.0f, 1.0f, 1.5f, 0.0f);
        if ((this->actor.bgCheckFlags & 2) && (this->actor.velocity.y < -6.0f)) {
            func_8002F850(globalCtx, &this->actor);
            this->actor.velocity.y *= -0.5f;
        } else if (this->timer >= 4) {
            func_8002F580(&this->actor, globalCtx);
        }
    }
}

void EnBombf_WaitForRelease(EnBombf* this, GlobalContext* globalCtx) {
    // if parent is NULL bomb has been released
    if (Actor_HasNoParent(&this->actor, globalCtx)) {
        EnBombf_SetupAction(this, EnBombf_Move);
        EnBombf_Move(this, globalCtx);
    } else {
        this->actor.velocity.y = 0.0f;
    }
}

void EnBombf_Explode(EnBombf* this, GlobalContext* globalCtx) {
    Player* player;

    if (this->explosionCollider.list->dim.modelSphere.radius == 0) {
        this->actor.flags |= 0x20;
        func_800AA000(this->actor.xzDistToLink, 0xFF, 0x14, 0x96);
    }

    this->explosionCollider.list->dim.modelSphere.radius += 8;
    this->explosionCollider.list->dim.worldSphere.radius = this->explosionCollider.list->dim.modelSphere.radius;

    if (this->actor.params == BOMBFLOWER_EXPLOSION) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->explosionCollider.base);
    }

    if (globalCtx->envCtx.unk_8C[1][0] != 0) {
        globalCtx->envCtx.unk_8C[1][0] -= 0x19;
    }

    if (globalCtx->envCtx.unk_8C[1][1] != 0) {
        globalCtx->envCtx.unk_8C[1][1] -= 0x19;
    }

    if (globalCtx->envCtx.unk_8C[1][2] != 0) {
        globalCtx->envCtx.unk_8C[1][2] -= 0x19;
    }

    if (globalCtx->envCtx.unk_8C[0][0] != 0) {
        globalCtx->envCtx.unk_8C[0][0] -= 0x19;
    }

    if (globalCtx->envCtx.unk_8C[0][1] != 0) {
        globalCtx->envCtx.unk_8C[0][1] -= 0x19;
    }

    if (globalCtx->envCtx.unk_8C[0][2] != 0) {
        globalCtx->envCtx.unk_8C[0][2] -= 0x19;
    }

    if (this->timer == 0) {
        player = PLAYER;

        if ((player->stateFlags1 & 0x800) && (player->heldActor == &this->actor)) {
            player->actor.child = NULL;
            player->heldActor = NULL;
            player->interactRangeActor = NULL;
            player->stateFlags1 &= ~0x800;
        }

        Actor_Kill(&this->actor);
    }
}

void EnBombf_Update(Actor* thisx, GlobalContext* globalCtx) {
    Vec3f effVelocity = { 0.0f, 0.0f, 0.0f };
    Vec3f bomb2Accel = { 0.0f, 0.1f, 0.0f };
    Vec3f effAccel = { 0.0f, 0.0f, 0.0f };
    Vec3f effPos;
    Vec3f dustAccel = { 0.0f, 0.6f, 0.0f };
    Color_RGBA8 dustColor = { 255, 255, 255, 255 };
    s32 pad[2];
    EnBombf* this = THIS;

    if ((this->unk_200 != 0) && (this->timer != 0)) {
        this->timer--;
    }

    if ((!this->bumpOn) && (!Actor_HasParent(thisx, globalCtx)) &&
        ((thisx->xzDistToLink >= 20.0f) || (ABS(thisx->yDistToLink) >= 80.0f))) {
        this->bumpOn = true;
    }

    this->actionFunc(this, globalCtx);

    if (thisx->params == BOMBFLOWER_BODY) {
        Actor_MoveForward(thisx);
    }

    if (thisx->gravity != 0.0f) {
        DREG(6) = 1;
        func_8002E4B4(globalCtx, thisx, 5.0f, 10.0f, 0.0f, 0x1F);
        DREG(6) = 0;
    }

    if (thisx->params == BOMBFLOWER_BODY) {

        if ((thisx->velocity.y > 0.0f) && (thisx->bgCheckFlags & 0x10)) {
            thisx->velocity.y = -thisx->velocity.y;
        }

        // rebound bomb off the wall it hits
        if ((thisx->speedXZ != 0.0f) && (thisx->bgCheckFlags & 8)) {

            if (ABS((s16)(thisx->wallPolyRot - thisx->posRot.rot.y)) > 0x4000) {
                if (1) {}
                thisx->posRot.rot.y = ((thisx->wallPolyRot - thisx->posRot.rot.y) + thisx->wallPolyRot) - 0x8000;
            }
            Audio_PlayActorSound2(thisx, NA_SE_EV_BOMB_BOUND);
            Actor_MoveForward(thisx);
            DREG(6) = 1;
            func_8002E4B4(globalCtx, thisx, 5.0f, 10.0f, 0.0f, 0x1F);
            DREG(6) = 0;
            thisx->speedXZ *= 0.7f;
            thisx->bgCheckFlags &= ~8;
        }

        if ((this->bombCollider.base.acFlags & 2) ||
            ((this->bombCollider.base.maskA & 2) && (this->bombCollider.base.oc->type == ACTORTYPE_ENEMY))) {
            this->unk_200 = 1;
            this->timer = 0;
        } else {
            // if a lit stick touches the bomb, set timer to 100
            if ((this->timer > 100) && Player_IsBurningStickInRange(globalCtx, &thisx->posRot.pos, 30.0f, 50.0f)) {
                this->timer = 100;
            }
        }

        if (this->unk_200 != 0) {
            dustAccel.y = 0.2f;
            effPos = thisx->posRot.pos;
            effPos.y += 25.0f;
            if (this->timer < 127) {
                // spawn spark effect on even frames
                if ((globalCtx->gameplayFrames % 2) == 0) {
                    EffectSsGSpk_SpawnFuse(globalCtx, thisx, &effPos, &effVelocity, &effAccel);
                }
                Audio_PlayActorSound2(thisx, NA_SE_IT_BOMB_IGNIT - SFX_FLAG);

                effPos.y += 3.0f;
                func_8002829C(globalCtx, &effPos, &effVelocity, &dustAccel, &dustColor, &dustColor, 50, 5);
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
                effPos = thisx->posRot.pos;

                effPos.y += 10.0f;

                if (Actor_HasParent(thisx, globalCtx)) {
                    effPos.y += 30.0f;
                }

                EffectSsBomb2_SpawnLayered(globalCtx, &effPos, &effVelocity, &bomb2Accel, 100, 19);

                effPos.y = thisx->groundY;
                if (thisx->groundY > -32000.0f) {
                    EffectSsBlast_SpawnWhiteShockwave(globalCtx, &effPos, &effVelocity, &effAccel);
                }

                Audio_PlayActorSound2(thisx, NA_SE_IT_BOMB_EXPLOSION);
                globalCtx->envCtx.unk_8C[1][0] = globalCtx->envCtx.unk_8C[1][1] = globalCtx->envCtx.unk_8C[1][2] = 0xFA;
                globalCtx->envCtx.unk_8C[0][0] = globalCtx->envCtx.unk_8C[0][1] = globalCtx->envCtx.unk_8C[0][2] = 0xFA;
                Camera_AddQuake(&globalCtx->mainCamera, 2, 0xB, 8);
                thisx->params = BOMBFLOWER_EXPLOSION;
                this->timer = 10;
                thisx->flags |= 0x20;
                EnBombf_SetupAction(this, EnBombf_Explode);
            }
        }
    }

    thisx->posRot2.pos = thisx->posRot.pos;
    thisx->posRot2.pos.y += 10.0f;

    if (thisx->params <= BOMBFLOWER_BODY) {

        Collider_CylinderUpdate(thisx, &this->bombCollider);

        if ((this->flowerBombScale >= 1.0f) && (this->bumpOn)) {
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->bombCollider.base);
        }

        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->bombCollider.base);
    }

    if ((thisx->scale.x >= 0.01f) && (thisx->params != BOMBFLOWER_EXPLOSION)) {
        if (thisx->yDistToWater >= 20.0f) {
            EffectSsDeadSound_SpawnStationary(globalCtx, &thisx->projectedPos, NA_SE_IT_BOMB_UNEXPLOSION, true,
                                              DEADSOUND_REPEAT_MODE_OFF, 10);
            Actor_Kill(thisx);
            return;
        }
        if (thisx->bgCheckFlags & 0x40) {
            thisx->bgCheckFlags &= ~0x40;
            Audio_PlayActorSound2(thisx, NA_SE_EV_BOMB_DROP_WATER);
        }
    }
}

Gfx* EnBombf_NewMtxDList(GraphicsContext* gfxCtx, GlobalContext* globalCtx) {
    Gfx* displayList;
    Gfx* displayListHead;

    displayList = Graph_Alloc(gfxCtx, 5 * sizeof(Gfx));
    displayListHead = displayList;
    func_800D1FD4(&globalCtx->mf_11DA0);
    gSPMatrix(displayListHead++, Matrix_NewMtx(gfxCtx, "../z_en_bombf.c", 1021),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPEndDisplayList(displayListHead);
    return displayList;
}

void EnBombf_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnBombf* this = THIS;

    if (1) {}

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_bombf.c", 1034);

    if (thisx->params <= BOMBFLOWER_BODY) {
        func_80093D18(globalCtx->state.gfxCtx);

        if (thisx->params != BOMBFLOWER_BODY) {
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_bombf.c", 1041),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, D_06000340);
            gSPDisplayList(POLY_OPA_DISP++, D_06000530);

            Matrix_Translate(0.0f, 1000.0f, 0.0f, MTXMODE_APPLY);
            Matrix_Scale(this->flowerBombScale, this->flowerBombScale, this->flowerBombScale, MTXMODE_APPLY);
        }

        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 200, 255, 200, 255);
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetEnvColor(POLY_OPA_DISP++, (s16)this->flashIntensity, 20, 10, 0);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_bombf.c", 1054),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPSegment(POLY_OPA_DISP++, 0x08,
                   SEGMENTED_TO_VIRTUAL(EnBombf_NewMtxDList(globalCtx->state.gfxCtx, globalCtx)));
        gSPDisplayList(POLY_OPA_DISP++, D_06000408);
    } else {
        func_800628A4(0, &this->explosionCollider);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_bombf.c", 1063);
}
