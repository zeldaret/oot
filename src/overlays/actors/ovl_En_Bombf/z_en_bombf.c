/*
 * File: z_en_bombf.c
 * Overlay: ovl_En_Bombf
 * Description: Bomb Flower
 */

#include "z_en_bombf.h"

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

    Actor_SetScale(&this->actor, 0.01f);
    this->unk_200 = 1;
    Collider_InitCylinder(globalCtx, &this->bombCollider);
    Collider_InitJntSph(globalCtx, &this->jntSphList);
    Collider_SetCylinder(globalCtx, &this->bombCollider, &this->actor, &sCylinderInit);
    Collider_SetJntSph(globalCtx, &this->jntSphList, &this->actor, &sJntSphInit, &this->explosionCollider[0]);

    if (this->actor.params == 0) {
        shapeUnk10 = 1000.0f;
    }

    ActorShape_Init(&this->actor.shape, shapeUnk10, ActorShadow_DrawFunc_Circle, 12.0f);
    this->actor.posRot2.pos = this->actor.posRot.pos;

    if (Actor_FindNearby(globalCtx, &this->actor, ACTOR_BG_DDAN_KD, ACTORTYPE_BG, 10000.0f) != 0) {
        this->actor.flags |= 0x20;
    }

    this->actor.colChkInfo.unk_10 = 10.0f;
    this->actor.colChkInfo.unk_12 = 10;
    this->actor.unk_1F = 0;

    if (this->actor.params == 0) {
        this->timer = 140;
        this->flashSpeedScale = 15;
        this->actor.gravity = -1.5f;
        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_EXPLOSIVES);
        this->actor.colChkInfo.mass = 200;
        this->actor.flags &= ~1;
        EnBombf_SetupAction(this, EnBombf_Move);
    } else {
        this->actor.colChkInfo.mass = 0xFF;
        this->bumpOn = true;
        this->flowerBombScale = 1.0f;
        EnBombf_SetupGrowBomb(this, thisx->params);
    }

    this->actor.uncullZoneScale += 31000.0f;
    this->actor.uncullZoneForward += 31000.0f;
}

void EnBombf_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnBombf* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->bombCollider);
    Collider_DestroyJntSph(globalCtx, &this->jntSphList);
}

void EnBombf_SetupGrowBomb(EnBombf* this, s16 params) {
    EnBombf_SetupAction(this, EnBombf_GrowBomb);
}

void EnBombf_GrowBomb(EnBombf* this, GlobalContext* globalCtx) {
    EnBombf* bomb;
    s32 pad;
    s32 pad1;
    Player* player = PLAYER;
    s32 pad2;

    if (this->flowerBombScale >= 1.0f) {
        if (func_8002F410(&this->actor, globalCtx)) {
            bomb = (EnBombf*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_BOMBF, this->actor.posRot.pos.x,
                                         this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
            if (bomb != NULL) {
                func_8002F5C4(&this->actor, bomb, globalCtx);
                this->timer = 180;
                this->flowerBombScale = 0.0f;
                Audio_PlayActorSound2(&this->actor, NA_SE_PL_PULL_UP_ROCK);
                this->actor.flags &= ~1;
            } else {
                player->actor.attachedB = NULL;
                player->heldActor = NULL;
                player->interactRangeActor = NULL;
                this->actor.attachedA = NULL;
                player->stateFlags1 &= ~0x800;
            }
        } else if ((this->bombCollider.base.acFlags & 2)) {
            this->bombCollider.base.acFlags &= ~2;

            if (this->bombCollider.base.ac->type != ACTORTYPE_BOSS) {
                bomb = (EnBombf*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_BOMBF, this->actor.posRot.pos.x,
                                             this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
                if (bomb != NULL) {
                    bomb->unk_200 = 1;
                    bomb->timer = 0;
                    this->timer = 180;
                    this->actor.flags &= ~1;
                    this->flowerBombScale = 0.0f;
                }
            }
        } else {
            if (func_8008EF5C(globalCtx, &this->actor.posRot.pos, 30.0f, 50.0f)) {
                bomb = (EnBombf*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_BOMBF, this->actor.posRot.pos.x,
                                             this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
                if (bomb != NULL) {
                    bomb->timer = 100;
                    this->timer = 180;
                    this->actor.flags &= ~1;
                    this->flowerBombScale = 0.0f;
                }
            } else {
                if (!func_8002F410(&this->actor, globalCtx)) {
                    func_8002F580(&this->actor, globalCtx);
                } else {
                    player->actor.attachedB = NULL;
                    player->heldActor = NULL;
                    player->interactRangeActor = NULL;
                    this->actor.attachedA = NULL;
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

        if (func_8002F410(&this->actor, globalCtx)) {
            player->actor.attachedB = NULL;
            player->heldActor = NULL;
            player->interactRangeActor = NULL;
            this->actor.attachedA = NULL;
            player->stateFlags1 &= ~0x800;
            this->actor.posRot.pos = this->actor.initPosRot.pos;
        }
    }
}

void EnBombf_Move(EnBombf* this, GlobalContext* globalCtx) {
    if (func_8002F410(&this->actor, globalCtx)) {
        this->flowerBombScale = 0.0f; // this doesnt do anything 
        EnBombf_SetupAction(this, EnBombf_WaitForRelease);
        this->actor.room = -1;
        return;
    }

    this->flowerBombScale = 1.0f; // this doesnt do anything 

    if (!(this->actor.bgCheckFlags & 1)) {
        Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 0.025f, 0.0f);
    } else {
        Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 1.5f, 0.0f);
        if ((this->actor.bgCheckFlags & 2) && (this->actor.velocity.y < -6.0f)) {
            func_8002F850(globalCtx, &this->actor);
            this->actor.velocity.y *= -0.5f;
        } else if (this->timer >= 4) {
            func_8002F580(&this->actor, globalCtx);
        }
    }
}

void EnBombf_WaitForRelease(EnBombf* this, GlobalContext* globalCtx) {
    // if attachedA is NULL bomb has been released
    if (func_8002F5A0(&this->actor, globalCtx)) {
        EnBombf_SetupAction(this, EnBombf_Move);
        EnBombf_Move(this, globalCtx);
    } else {
        this->actor.velocity.y = 0.0f;
    }
}

void EnBombf_Explode(EnBombf* this, GlobalContext* globalCtx) {
    Player* player;

    if (this->jntSphList.list->dim.modelSphere.radius == 0) {
        this->actor.flags |= 0x20;
        func_800AA000(this->actor.xzDistFromLink, 0xFF, 0x14, 0x96);
    }

    this->jntSphList.list->dim.modelSphere.radius += 8;
    this->jntSphList.list->dim.worldSphere.radius = this->jntSphList.list->dim.modelSphere.radius;

    if (this->actor.params == 1) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->jntSphList.base);
    }

    if (globalCtx->envCtx.unk_8C[3] != 0) {
        globalCtx->envCtx.unk_8C[3] -= 0x19;
    }

    if (globalCtx->envCtx.unk_8C[4] != 0) {
        globalCtx->envCtx.unk_8C[4] -= 0x19;
    }

    if (globalCtx->envCtx.unk_8C[5] != 0) {
        globalCtx->envCtx.unk_8C[5] -= 0x19;
    }

    if (globalCtx->envCtx.unk_8C[0] != 0) {
        globalCtx->envCtx.unk_8C[0] -= 0x19;
    }

    if (globalCtx->envCtx.unk_8C[1] != 0) {
        globalCtx->envCtx.unk_8C[1] -= 0x19;
    }

    if (globalCtx->envCtx.unk_8C[2] != 0) {
        globalCtx->envCtx.unk_8C[2] -= 0x19;
    }

    if (this->timer == 0) {
        player = PLAYER;

        if ((player->stateFlags1 & 0x800) && (player->heldActor == &this->actor)) {
            player->actor.attachedB = NULL;
            player->heldActor = NULL;
            player->interactRangeActor = NULL;
            player->stateFlags1 &= ~0x800;
        }

        Actor_Kill(&this->actor);
    }
}

#ifdef NON_MATCHING
// stack issues. exact problems are commented in the function
void EnBombf_Update(Actor* thisx, GlobalContext* globalCtx) {
    Vec3f effVelocity = { 0.0f, 0.0f, 0.0f };
    Vec3f bomb2Accel = { 0.0f, 0.1f, 0.0f };
    Vec3f effAccel = { 0.0f, 0.0f, 0.0f };
    Vec3f effPos;
    Vec3f dustAccel = { 0.0f, 0.6f, 0.0f };
    Color_RGBA8_n dustColor = { 255, 255, 255, 255 };
    EnBombf* this = THIS;
    s32 pad1;
    s32 pad2;

    if ((this->unk_200 != 0) && (this->timer != 0)) {
        this->timer--;
    }

    // activate bump collider if link is 20 or more units away from the bomb in the xz plane
    // or if the height difference between link and the bomb is 80 or more units
    if ((!this->bumpOn) && (!func_8002F410(&this->actor, globalCtx)) &&
        ((this->actor.xzDistFromLink >= 20.0f) || (ABS(this->actor.yDistFromLink) >= 80.0f))) {
        this->bumpOn = true;
    }

    this->actionFunc(this, globalCtx);

    if (this->actor.params == 0) {
        Actor_MoveForward(&this->actor);
    }

    if (this->actor.gravity != 0.0f) {
        DREG(6) = 1;
        func_8002E4B4(globalCtx, &this->actor, 5.0f, 10.0f, 0.0f, 0x1F);
        DREG(6) = 0;
    }

    if (this->actor.params == 0) {

        if ((this->actor.velocity.y > 0.0f) && (this->actor.bgCheckFlags & 0x10)) {
            this->actor.velocity.y = -this->actor.velocity.y;
        }

        // rebound bomb off the wall it hits
        if ((this->actor.speedXZ != 0.0f) && (this->actor.bgCheckFlags & 8)) {

            if (ABS((s16)(this->actor.wallPolyRot - this->actor.posRot.rot.y)) > 0x4000) {
                this->actor.posRot.rot.y =
                    ((this->actor.wallPolyRot - this->actor.posRot.rot.y) + this->actor.wallPolyRot) - 0x8000;
            }
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_BOMB_BOUND);
            Actor_MoveForward(&this->actor);
            DREG(6) = 1;
            func_8002E4B4(globalCtx, &this->actor, 5.0f, 10.0f, 0.0f, 0x1F);
            DREG(6) = 0;
            this->actor.speedXZ *= 0.7f;
            this->actor.bgCheckFlags &= ~8;
        }

        if ((this->bombCollider.base.acFlags & 2) ||
            ((this->bombCollider.base.maskA & 2) && (this->bombCollider.base.oc->type == 5))) {
            this->unk_200 = 1;
            this->timer = 0;
        } else {
            // if a lit stick touches the bomb, set timer to 100
            if ((this->timer > 100) && (func_8008EF5C(globalCtx, &this->actor.posRot.pos, 30.0f, 50.0f))) {
                this->timer = 100;
            }
        }

        if (this->unk_200 != 0) {
            dustAccel.y = 0.2f;
            effPos = this->actor.posRot.pos; // pointer to position supposed to go to sp3C, goes to 38
            effPos.y += 25.0f;
            if (this->timer < 127) {
                // spawn spark effect on even frames
                if ((globalCtx->gameplayFrames % 2) == 0) {
                    func_80029184(globalCtx, this, &effPos, &effVelocity, &effAccel);
                }
                Audio_PlayActorSound2(&this->actor, NA_SE_IT_BOMB_IGNIT - SFX_FLAG);

                effPos.y += 3.0f;
                func_8002829C(globalCtx, &effPos, &effVelocity, &dustAccel, &dustColor, &dustColor, 50, 5);
                if (1) {}
                
            }
            
            // double bomb flash speed and adjust red color accordingly
            if ((this->timer == 3) || (this->timer == 30) || (this->timer == 50) || (this->timer == 70)) {
                this->flashSpeedScale >>= 1;
            }

            if ((this->timer < 100) && ((this->timer & (this->flashSpeedScale + 1)) != 0)) {
                Math_SmoothScaleMaxMinF(&this->flashIntensity, 150.0f, 1.0f, 150.0f / this->flashSpeedScale, 0.0f);
            } else {
                Math_SmoothScaleMaxMinF(&this->flashIntensity, 0.0f, 1.0f, 150.0f / this->flashSpeedScale, 0.0f);
            }

            if (this->timer < 3) {
                Actor_SetScale(&this->actor, this->actor.scale.x + 0.002f);
            }

            if (this->timer == 0) {
                effPos =
                    this->actor.posRot.pos; // same position copy from earlier, gets loaded from sp38 instead of sp3C

                effPos.y += 10.0f;

                // globalCtx+0x10000 gets stored to sp3C here instead of sp38
                if (func_8002F410(&this->actor, globalCtx)) {
                    effPos.y += 30.0f;
                }

                func_80028E84(globalCtx, &effPos, &effVelocity, &bomb2Accel, 0x64, 0x13);

                effPos.y = this->actor.groundY;
                if (this->actor.groundY > -32000.0f) {
                    func_80029024(globalCtx, &effPos, &effVelocity, &effAccel);
                }

                Audio_PlayActorSound2(&this->actor, NA_SE_IT_BOMB_EXPLOSION);
                globalCtx->envCtx.unk_8C[3] = globalCtx->envCtx.unk_8C[4] = globalCtx->envCtx.unk_8C[5] = 0xFA;
                globalCtx->envCtx.unk_8C[0] = globalCtx->envCtx.unk_8C[1] = globalCtx->envCtx.unk_8C[2] = 0xFA;
                func_8005AA1C(&globalCtx->cameras[0], 2, 0xB, 8);
                this->actor.params = 1;
                this->timer = 10;
                this->actor.flags |= 0x20;
                EnBombf_SetupAction(this, EnBombf_Explode);
            }
        }
    }

    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actor.posRot2.pos.y += 10.0f;

    if (this->actor.params <= 0) {

        Collider_CylinderUpdate(&this->actor, &this->bombCollider); // bombCollider goes to sp38 instead of sp3C

        if ((this->flowerBombScale >= 1.0f) && (this->bumpOn)) {
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx,
                                 &this->bombCollider.base); // bombCollider loads from sp38 instead of sp3C
        }

        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx,
                             &this->bombCollider.base); // bombCollider loads from sp38 instead of sp3C
    }

    if ((this->actor.scale.x >= 0.01f) && (this->actor.params != 1)) {
        if (this->actor.waterY >= 20.0f) {
            func_8002A9F4(globalCtx, &this->actor.projectedPos, NA_SE_IT_BOMB_UNEXPLOSION, 1, 1, 0xA);
            Actor_Kill(&this->actor);
            return;
        }
        if (this->actor.bgCheckFlags & 0x40) {
            this->actor.bgCheckFlags &= ~0x40;
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_BOMB_DROP_WATER);
        }
    }
}
#else
Vec3f D_809C82C0 = { 0.0f, 0.0f, 0.0f };
Vec3f D_809C82CC = { 0.0f, 0.1f, 0.0f };
Vec3f D_809C82D8 = { 0.0f, 0.0f, 0.0f };
Vec3f D_809C82E4 = { 0.0f, 0.6f, 0.0f };
Color_RGBA8_n D_809C82F0 = { 255, 255, 255, 255 };
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bombf/EnBombf_Update.s")
#endif

Gfx* EnBombf_NewDlist(GraphicsContext* gfxCtx, GlobalContext* globalCtx) {
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
    GraphicsContext* gfxCtx;
    Gfx* disRefs[4];

    if (1) {}
    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(&disRefs, globalCtx->state.gfxCtx, "../z_en_bombf.c", 1034);

    if (this->actor.params <= 0) {
        func_80093D18(globalCtx->state.gfxCtx);

        if (this->actor.params != 0) {
            gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_bombf.c", 1041),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(gfxCtx->polyOpa.p++, D_06000340);
            gSPDisplayList(gfxCtx->polyOpa.p++, D_06000530);

            Matrix_Translate(0.0f, 1000.0f, 0.0f, MTXMODE_APPLY);
            Matrix_Scale(this->flowerBombScale, this->flowerBombScale, this->flowerBombScale, MTXMODE_APPLY);
        }

        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 200, 255, 200, 255);
        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetEnvColor(gfxCtx->polyOpa.p++, (s16)this->flashIntensity, 20, 10, 0);
        gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_bombf.c", 1054),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(EnBombf_NewDlist(globalCtx->state.gfxCtx, globalCtx)));
        gSPDisplayList(gfxCtx->polyOpa.p++, D_06000408);
    } else {
        func_800628A4(0, &this->jntSphList);
    }

    Graph_CloseDisps(&disRefs, globalCtx->state.gfxCtx, "../z_en_bombf.c", 1063);
}
