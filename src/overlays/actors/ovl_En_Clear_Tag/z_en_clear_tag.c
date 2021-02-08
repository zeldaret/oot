#include "z_en_clear_tag.h"

#define FLAGS 0x00000035

#define THIS ((EnClearTag*)thisx)

void EnClearTag_Init(Actor* thisx, GlobalContext* globalCtx);
void EnClearTag_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnClearTag_Update(Actor* thisx, GlobalContext* globalCtx);
void EnClearTag_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnClearTag_UpdateParticles(GlobalContext* globalCtx);
void EnClearTag_DrawParticles(GlobalContext* globalCtx);

void EnClearTag_CreateDebrisParticle(GlobalContext* globalCtx, Vec3f* position, Vec3f* velocity, Vec3f* acceleration,
                                     f32 scale, f32 floorHeight);
void EnClearTag_CreateFireParticle(GlobalContext* globalCtx, Vec3f* pos, f32 scale);
void EnClearTag_CreateSmokeParticle(GlobalContext* globalCtx, Vec3f* position, f32 scale);
void EnClearTag_CreateFlashParticle(GlobalContext* globalCtx, Vec3f* position, f32 scale, f32 floorHeight,
                                    Vec3f* floorTangent);

void ClearTag_CalculateFloorTangent(EnClearTag* this);

const ActorInit En_Clear_Tag_InitVars = {
    ACTOR_EN_CLEAR_TAG,
    ACTORCAT_BOSS,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnClearTag),
    (ActorFunc)EnClearTag_Init,
    (ActorFunc)EnClearTag_Destroy,
    (ActorFunc)EnClearTag_Update,
    (ActorFunc)EnClearTag_Draw,
};
u8 isParticlesInitialized = 0;
Vec3f zeroVector = {
    0.0f,
    0.0f,
    0.0f,
};
static ColliderCylinderInit arwingCollider = {
    {
        COLTYPE_HIT3,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x00, 0x04 },
        { 0xFFDFFFFF, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL,
        BUMP_ON,
        OCELEM_ON,
    },
    { 15, 30, 10, { 0, 0, 0 } },
};
static ColliderCylinderInit laserCollider = {
    {
        COLTYPE_METAL,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x00, 0x04 },
        { 0xFFDFFFFF, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL,
        BUMP_ON,
        OCELEM_ON,
    },
    { 15, 30, 10, { 0, 0, 0 } },
};
u32 D_809D5C98 = 0; // unused
u32 D_809D5C9C = 0; // unused
EnClearTagEffect clearTagParticlesBuffer[100];

#include "../../../../assets/overlays/ovl_En_Clear_Tag/ovl_En_Clear_Tag.c"

/**
 * Creates a debris particle.
 * Debris particles are spawned when the Arwing dies. It spawns fire particles.
 */
void EnClearTag_CreateDebrisParticle(GlobalContext* globalCtx, Vec3f* position, Vec3f* velocity, Vec3f* acceleration,
                                     f32 scale, f32 floorHeight) {
    s16 i;
    s16 seed;
    EnClearTagEffect* effect;
    GlobalContext* globalCtx2;

    globalCtx2 = globalCtx;
    effect = (EnClearTagEffect*)globalCtx2->bossEffects;

    for (i = 0; i < 100; i++, effect++) {
        if (effect->type == CLEAR_TAG_PARTICLE_AVAILABLE) {
            effect->type = CLEAR_TAG_PARTICLE_DEBRIS;

            effect->position = *position;
            effect->velocity = *velocity;
            effect->acceleration = *acceleration;

            effect->scale = scale;

            effect->rotationX = Rand_ZeroFloat(M_PI * 2);
            effect->rotationY = Rand_ZeroFloat(M_PI * 2);
            effect->timer = effect->bounces = 0;
            effect->floorHeight = floorHeight;

            seed = (s32)Rand_ZeroFloat(10.0f);
            effect->seed = seed;

            return;
        }
    }
}

/**
 * Creates a fire particle.
 * Fire particles are spawned by debris particles. It spawns smoke particles
 */
void EnClearTag_CreateFireParticle(GlobalContext* globalCtx, Vec3f* pos, f32 scale) {
    s16 i;
    s16 seed;
    EnClearTagEffect* effect;
    GlobalContext* globalCtx2;

    globalCtx2 = globalCtx;
    effect = (EnClearTagEffect*)globalCtx2->bossEffects;

    for (i = 0; i < 100; i++, effect++) {
        if (effect->type == CLEAR_TAG_PARTICLE_AVAILABLE) {
            seed = (s32)Rand_ZeroFloat(100.0f);
            effect->seed = seed;
            effect->type = CLEAR_TAG_PARTICLE_FIRE;

            effect->position = *pos;
            effect->velocity = zeroVector;
            effect->acceleration = zeroVector;
            effect->acceleration.y = 0.15f;

            effect->scale = scale;

            effect->primColor.a = 200.0f;

            return;
        }
    }
}

/**
 * Creates a fire particle.
 * Smoke particles are spawned by fire particles. Smoke particles are spawned by fire particles.
 */
void EnClearTag_CreateSmokeParticle(GlobalContext* globalCtx, Vec3f* position, f32 scale) {
    s16 i;
    s16 seed;
    EnClearTagEffect* effect;
    GlobalContext* globalCtx2;

    globalCtx2 = globalCtx;
    effect = (EnClearTagEffect*)globalCtx2->bossEffects;

    for (i = 0; i < 100; i++, effect++) {
        if (effect->type == CLEAR_TAG_PARTICLE_AVAILABLE) {
            seed = (s32)Rand_ZeroFloat(100.0f);
            effect->seed = seed;
            effect->type = CLEAR_TAG_PARTICLE_SMOKE;

            effect->position = *position;
            effect->velocity = zeroVector;
            effect->acceleration = zeroVector;

            effect->scale = scale;
            effect->maxScale = scale + scale;

            effect->primColor.r = 200.0f;
            effect->primColor.g = 20.0f;
            effect->primColor.b = 0.0f;
            effect->primColor.a = 255.0f;
            effect->envColor.r = 255.0f;
            effect->envColor.g = 215.0f;
            effect->envColor.b = 255.0f;

            return;
        }
    }
}

/**
 * Creates a flash particle.
 * Flash particles are spawned when the Arwing dies.
 * Flash particles two components: 1) a bilboard flash, and 2) a light effect on the ground.
 */
void EnClearTag_CreateFlashParticle(GlobalContext* globalCtx, Vec3f* position, f32 scale, f32 floorHeight,
                                    Vec3f* floorTangent) {
    s16 i;
    EnClearTagEffect* effect;
    GlobalContext* globalCtx2;

    globalCtx2 = globalCtx;
    effect = (EnClearTagEffect*)globalCtx2->bossEffects;

    for (i = 0; i < 100; i++, effect++) {
        if (effect->type == CLEAR_TAG_PARTICLE_AVAILABLE) {
            effect->type = CLEAR_TAG_PARTICLE_FLASH;

            effect->position = *position;
            effect->velocity = zeroVector;
            effect->acceleration = zeroVector;

            effect->scale = 0.0f;
            effect->maxScale = scale + scale;

            effect->floorHeight = floorHeight;
            effect->floorTangent = *floorTangent;

            effect->primColor.a = 180.0f;

            return;
        }
    }
}

/**
 * EnClear_Tag destructor.
 * This just destroys the collider.
 */
void EnClearTag_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnClearTag* this = THIS;
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

/**
 * EnClear_Tag constructor.
 * This allocates a collider, initializes particles, and sets up ClearTag instance data.
 */
void EnClearTag_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnClearTag* this = THIS;
    s32 defaultCutsceneTimer = 100;
    s16 j, i;

    Collider_InitCylinder(globalCtx, &this->collider);

    if (this->actor.params == CLEAR_TAG_LASER) {
        this->state = CLEAR_TAG_STATE_LASER;
        this->work[0] = 70;
        this->actor.speedXZ = 35.0f;
        func_8002D908(&this->actor);
        for (j = 0; j <= 0; j++) {
            func_8002D7EC(&this->actor);
        }
        this->actor.scale.x = 0.4f;
        this->actor.scale.y = 0.4f;
        this->actor.scale.z = 2.0f;
        this->actor.speedXZ = 70.0f;
        this->actor.shape.rot.x = -this->actor.shape.rot.x;

        func_8002D908(&this->actor);
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &laserCollider);
        Audio_PlayActorSound2(&this->actor, NA_SE_IT_SWORD_REFLECT_MG);
        return;
    }

    this->actor.flags |= 1;
    this->actor.targetMode = 5;
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &arwingCollider);
    this->actor.colChkInfo.health = 3;

    if (this->actor.params == CLEAR_TAG_CUTSCENE_ARWING) {
        this->work[0] = 70;
        this->work[1] = 250;
        this->state = CLEAR_TAG_STATE_DEMO;
        this->actor.world.rot.x = 0x4000;
        this->demoMode = CLEAR_TAG_DEMOMODE_SETUP;
        this->cutsceneTimer = defaultCutsceneTimer;
        this->work[2] = 20;
    }

    if (!isParticlesInitialized) {
        isParticlesInitialized = 1;
        globalCtx->bossEffects = &clearTagParticlesBuffer[0];
        for (i = 0; i < 100; i++) {
            clearTagParticlesBuffer[i].type = CLEAR_TAG_PARTICLE_AVAILABLE;
        }
        this->drawMode = CLEAR_TAG_DRAWMODE_ALL;
    }
}

/**
 * Calculate a floor tangent.
 * This is used for the Ground Flash display lists and Arwing Shadow display lists to snap onto the floor.
 */
void ClearTag_CalculateFloorTangent(EnClearTag* this) {
    f32 x;
    f32 y;
    f32 z;

    if (this->actor.floorPoly != NULL) {
        x = COLPOLY_GET_NORMAL(this->actor.floorPoly->normal.x);
        y = COLPOLY_GET_NORMAL(this->actor.floorPoly->normal.y);
        z = COLPOLY_GET_NORMAL(this->actor.floorPoly->normal.z);

        this->floorTangent.x = -Math_FAtan2F(-z * y, 1.0f);
        this->floorTangent.z = Math_FAtan2F(-x * y, 1.0f);
    }
}

/**
 * EnClear_Tag update function.
 *
 * ClearTag has three variants:
 * CLEAR_TAG_CUTSCENE_ARWING which is the regular arwing and plays a cutscene on spawn.
 * CLEAR_TAG_ARWING which is a regular arwing.
 * CLEAR_TAG_LASER which are the lasers fired by the arwing.
 *
 * This function controls the Arwing flying. A target position is set and the arwing flies toward it based on
 * calculated directions from the current position.
 * This function fires Arwing lasers when the state is CLEAR_TAG_STATE_TARGET_LOCKED.
 * This function controls the cutscene that plays when the Arwing has params for
 * cutscene. The cutscene stops playing when the Arwing is a specified distance from the starting point.
 *
 * work[0] for Arwing in locked on mode is a timeout when the arwing reverts back to flying mode.
 * work[0] for Arwing in fly mode is a timeout for when you can enter locked on mode.
 * work[0] for lasers is a demo timer.
 * work[1] for Arwing is a timeout for when it will enter locked on mode.
 * work[2] for Arwing is a demo timer.
 */
void EnClearTag_Update(Actor* thisx, GlobalContext* globalCtx) {
    u8 hasAtHit = 0;
    s16 i;
    s16 xRotationTarget;
    s16 rotationScale;
    EnClearTag* this = THIS;
    GlobalContext* globalCtx2 = globalCtx;
    Player* player = PLAYER;
    f32 vectorToTargetX;
    f32 vectorToTargetY;
    f32 vectorToTargetZ;
    s16 zWorldRotationTarget;
    s16 demoTimer;
    f32 loseTargetLockDistance;
    s32 pad;
    s16 yWorldRotationTarget;
    s16 xWorldRotationTarget;
    f32 targetCircleX;
    f32 targetCircleZ;
    f32 demoCameraCircleX;
    f32 demoCameraCircleZ;
    s16 isArwingAlive;
    Vec3f demoCameraAtTarget;
    Vec3f demoCameraEyeTarget;
    Vec3f debrisParticleLocation;
    Vec3f debrisParticleVelocity;
    Vec3f debrisParticleAcceleration;

    this->timer++;

    if (this->drawMode != CLEAR_TAG_DRAWMODE_PARTICLE) {
        for (i = 0; i < 3; i++) {
            if (this->work[i] != 0) {
                this->work[i]--;
            }
        }

        if (this->cutsceneTimer != 0) {
            this->cutsceneTimer--;
        }

        switch (this->state) {
            case CLEAR_TAG_STATE_DEMO:
            case CLEAR_TAG_STATE_TARGET_LOCKED:
            case CLEAR_TAG_STATE_FLYING:
                if (this->collider.base.acFlags & 2 &&
                    (this->collider.base.acFlags &= ~2, this->crashingTimer = 20,
                     func_8003426C(&this->actor, 0x4000, 255, 0, 5), this->acceleration.x = Rand_CenteredFloat(15.0f),
                     this->acceleration.y = Rand_CenteredFloat(15.0f), this->acceleration.z = Rand_CenteredFloat(15.0f),
                     Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_THUNDER_GND), this->actor.colChkInfo.health--,
                     (s8)this->actor.colChkInfo.health <= 0)) {
                    this->state = CLEAR_TAG_STATE_CRASHING;
                    this->actor.velocity.y = 0.0f;
                } else {
                    Actor_SetScale(&this->actor, 0.2f);
                    this->actor.speedXZ = 7.0f;

                    if (this->work[0] == 0) {
                        if (this->work[1] == 0) {
                            this->state = CLEAR_TAG_STATE_TARGET_LOCKED;
                            this->work[0] = 300;
                        } else {
                            this->state = CLEAR_TAG_STATE_FLYING;
                            this->work[0] = ((s16)Rand_ZeroFloat(50.0f)) + 20;

                            if (this->actor.params == CLEAR_TAG_ARWING) {
                                targetCircleX = Math_SinS(player->actor.shape.rot.y) * 400.0f;
                                targetCircleZ = Math_CosS(player->actor.shape.rot.y) * 400.0f;

                                this->targetPosition.x =
                                    Rand_CenteredFloat(700.0f) + (player->actor.world.pos.x + targetCircleX);
                                this->targetPosition.y = Rand_ZeroFloat(200.0f) + player->actor.world.pos.y + 150.0f;
                                this->targetPosition.z =
                                    Rand_CenteredFloat(700.0f) + (player->actor.world.pos.z + targetCircleZ);
                            } else {
                                this->targetPosition.x = Rand_CenteredFloat(700.0f);
                                this->targetPosition.y = Rand_ZeroFloat(200.0f) + 150.0f;
                                this->targetPosition.z = Rand_CenteredFloat(700.0f);
                            }
                        }

                        this->targetDirection.z = 0.0f;
                        this->targetDirection.y = 0.0f;
                        this->targetDirection.x = 0.0f;
                    }

                    rotationScale = 10;
                    xRotationTarget = 2048;
                    loseTargetLockDistance = 100.0f;
                    if (this->state == CLEAR_TAG_STATE_TARGET_LOCKED) {
                        this->targetPosition.x = player->actor.world.pos.x;
                        this->targetPosition.y = player->actor.world.pos.y + 40.0f;
                        this->targetPosition.z = player->actor.world.pos.z;
                        rotationScale = 7;
                        xRotationTarget = 4096;
                        loseTargetLockDistance = 150.0f;
                    } else if (this->state == CLEAR_TAG_STATE_DEMO) {
                        this->roll += 0.5f;

                        if (this->roll > M_PI * 2) {
                            this->roll -= M_PI * 2;
                        }

                        this->targetPosition.x = 0.0f;
                        this->targetPosition.y = 300.0f;
                        this->targetPosition.z = 0.0f;
                        loseTargetLockDistance = 100.0f;
                    }

                    if (this->state != CLEAR_TAG_STATE_DEMO) {
                        Math_ApproachZeroF(&this->roll, 0.1f, 0.2f);
                    }

                    vectorToTargetX = this->targetPosition.x - this->actor.world.pos.x;
                    vectorToTargetY = this->targetPosition.y - this->actor.world.pos.y;
                    vectorToTargetZ = this->targetPosition.z - this->actor.world.pos.z;

                    if (sqrtf(SQ(vectorToTargetX) + SQ(vectorToTargetY) + SQ(vectorToTargetZ)) <
                        loseTargetLockDistance) {
                        this->work[0] = 0;
                        if (this->state == CLEAR_TAG_STATE_TARGET_LOCKED) {
                            this->work[1] = ((s16)Rand_ZeroFloat(100.0f)) + 100;
                        }
                        this->state = CLEAR_TAG_STATE_FLYING;
                    }

                    yWorldRotationTarget = (s32)(Math_FAtan2F(vectorToTargetX, vectorToTargetZ) * 10430.378f);
                    xWorldRotationTarget = (s32)(
                        Math_FAtan2F(vectorToTargetY, sqrtf(SQ(vectorToTargetX) + SQ(vectorToTargetZ))) * 10430.378f);

                    if (xWorldRotationTarget < 0) {
                        if (this->actor.world.pos.y < this->actor.floorHeight + 20.0f) {
                            xWorldRotationTarget = 0;
                        }
                    }

                    Math_ApproachS(&this->actor.world.rot.x, xWorldRotationTarget, rotationScale,
                                   this->targetDirection.x);
                    zWorldRotationTarget = Math_SmoothStepToS(&thisx->world.rot.y, yWorldRotationTarget, rotationScale,
                                                              this->targetDirection.y, 0);
                    Math_ApproachF(&this->targetDirection.x, xRotationTarget, 1.0f, 256.0f);
                    this->targetDirection.y = this->targetDirection.x;

                    if (ABS(zWorldRotationTarget) < 4096) {
                        Math_ApproachS(&thisx->world.rot.z, 0, 15, this->targetDirection.z);
                        Math_ApproachF(&this->targetDirection.z, 1280.0f, 1.0f, 256.0f);

                        if (!(this->timer & 3) && (Rand_ZeroOne() < 0.75f) &&
                            (this->state == CLEAR_TAG_STATE_TARGET_LOCKED)) {
                            this->shouldShootLaser = 1;
                        }
                    } else {
                        zWorldRotationTarget = zWorldRotationTarget > 0 ? -9472 : 9472;
                        Math_ApproachS(&this->actor.world.rot.z, zWorldRotationTarget, rotationScale,
                                       this->targetDirection.z);
                        Math_ApproachF(&this->targetDirection.z, 4096.0f, 1.0f, 512.0f);
                    }

                    this->actor.shape.rot = this->actor.world.rot;
                    this->actor.shape.rot.x = -this->actor.shape.rot.x;

                    func_8002D908(&this->actor);
                    this->actor.velocity.x += this->acceleration.x;
                    this->actor.velocity.y += this->acceleration.y;
                    this->actor.velocity.z += this->acceleration.z;
                    Math_ApproachZeroF(&this->acceleration.x, 1.0f, 1.0f);
                    Math_ApproachZeroF(&this->acceleration.y, 1.0f, 1.0f);
                    Math_ApproachZeroF(&this->acceleration.z, 1.0f, 1.0f);

                    if (this->shouldShootLaser) {
                        this->shouldShootLaser = 0;
                        Actor_Spawn(&globalCtx2->actorCtx, globalCtx2, ACTOR_EN_CLEAR_TAG, this->actor.world.pos.x,
                                    this->actor.world.pos.y, this->actor.world.pos.z, this->actor.world.rot.x,
                                    this->actor.world.rot.y, this->actor.world.rot.z, CLEAR_TAG_STATE_LASER);
                    }
                }

            case CLEAR_TAG_STATE_CRASHING:
                if (this->crashingTimer != 0) {
                    this->crashingTimer--;
                }

                func_8002D7EC(&this->actor);
                Actor_SetFocus(&this->actor, 0.0f);
                this->collider.dim.radius = 20;
                this->collider.dim.height = 15;
                this->collider.dim.yShift = -5;
                Collider_UpdateCylinder(&this->actor, &this->collider);
                CollisionCheck_SetAC(globalCtx2, &globalCtx2->colChkCtx, &this->collider.base);
                CollisionCheck_SetAT(globalCtx2, &globalCtx2->colChkCtx, &this->collider.base);

                if (this->work[2] == 0) {
                    Actor_UpdateBgCheckInfo(globalCtx2, &this->actor, 50.0f, 30.0f, 100.0f, 5);
                    ClearTag_CalculateFloorTangent(this);
                }

                if (this->state == CLEAR_TAG_STATE_CRASHING) {
                    EnClearTag_CreateFireParticle(globalCtx2, &this->actor.world.pos, 1.0f);

                    this->roll -= 0.5f;
                    this->actor.velocity.y -= 0.2f;
                    this->actor.shape.rot.x += 16;

                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_BREATH - SFX_FLAG);

                    if (this->actor.bgCheckFlags & 9) {
                        this->shouldExplode = 1;

                        if (this->drawMode != CLEAR_TAG_DRAWMODE_MODEL) {
                            this->drawMode = CLEAR_TAG_DRAWMODE_PARTICLE;
                            this->deathTimer = 70;
                            this->actor.flags &= ~1;
                        } else {
                            Actor_Kill(&this->actor);
                        }
                    }
                }
                break;

            case CLEAR_TAG_STATE_LASER:
                func_8002D7EC(&this->actor);

                if (this->collider.base.atFlags & AT_HIT) {
                    hasAtHit = 1;
                }

                this->collider.dim.radius = 23;
                this->collider.dim.height = 25;
                this->collider.dim.yShift = -10;
                Collider_UpdateCylinder(&this->actor, &this->collider);
                CollisionCheck_SetAT(globalCtx2, &globalCtx2->colChkCtx, &this->collider.base);
                Actor_UpdateBgCheckInfo(globalCtx2, &this->actor, 50.0f, 80.0f, 100.0f, 5);

                if (this->actor.bgCheckFlags & 9 || hasAtHit || this->work[0] == 0) {
                    Actor_Kill(&this->actor);
                    if (this->work[0] != 0) {
                        Audio_PlaySoundAtPosition(globalCtx2, &this->actor.world.pos, 20, NA_SE_EN_FANTOM_THUNDER_GND);
                    }
                }
                break;
        }

        if (this->state < CLEAR_TAG_STATE_LASER) {
            osSyncPrintf("DEMO_MODE %d\n", this->demoMode);
            osSyncPrintf("CAMERA_NO %d\n", this->cameraNumber);

            if (this->demoMode != CLEAR_TAG_DEMOMODE_NONE) {
                switch (this->demoMode) {
                    case CLEAR_TAG_DEMOMODE_SETUP:
                        this->demoMode = CLEAR_TAG_DEMOMODE_PLAY;
                        func_80064520(globalCtx2, &globalCtx2->csCtx);
                        this->cameraNumber = Gameplay_CreateSubCamera(globalCtx2);
                        Gameplay_ChangeCameraStatus(globalCtx2, 0, 1);
                        Gameplay_ChangeCameraStatus(globalCtx2, this->cameraNumber, 7);
                    case CLEAR_TAG_DEMOMODE_PLAY:
                        demoTimer = this->timer << 7;
                        demoCameraCircleX = Math_SinS(demoTimer) * 200.0f;
                        demoCameraCircleZ = Math_CosS(demoTimer) * 200.0f;
                        demoCameraAtTarget.x = this->actor.world.pos.x + demoCameraCircleX;
                        demoCameraAtTarget.y = 200.0f;
                        demoCameraAtTarget.z = this->actor.world.pos.z + demoCameraCircleZ;
                        demoCameraEyeTarget = this->actor.world.pos;
                        break;
                }

                if (this->cameraNumber != 0) {
                    Math_ApproachF(&this->demoCameraAt.x, demoCameraAtTarget.x, 0.1f, 500.0f);
                    Math_ApproachF(&this->demoCameraAt.y, demoCameraAtTarget.y, 0.1f, 500.0f);
                    Math_ApproachF(&this->demoCameraAt.z, demoCameraAtTarget.z, 0.1f, 500.0f);
                    Math_ApproachF(&this->demoCameraEye.x, demoCameraEyeTarget.x, 0.2f, 500.0f);
                    Math_ApproachF(&this->demoCameraEye.y, demoCameraEyeTarget.y, 0.2f, 500.0f);
                    Math_ApproachF(&this->demoCameraEye.z, demoCameraEyeTarget.z, 0.2f, 500.0f);
                    Gameplay_CameraSetAtEye(globalCtx2, this->cameraNumber, &this->demoCameraEye, &this->demoCameraAt);
                }

                if (this->cutsceneTimer == 1) {
                    func_800C08AC(globalCtx2, this->cameraNumber, 0);
                    this->demoMode = this->cameraNumber = 0;
                    func_80064534(globalCtx2, &globalCtx2->csCtx);
                }
            }
        }
    }

    if (this->shouldExplode) {
        this->shouldExplode = 0;
        Audio_PlaySoundAtPosition(globalCtx2, &this->actor.world.pos, 40, NA_SE_IT_BOMB_EXPLOSION);
        debrisParticleLocation.x = this->actor.world.pos.x;
        debrisParticleLocation.y = (this->actor.world.pos.y + 40.0f) - 30.0f;
        debrisParticleLocation.z = this->actor.world.pos.z;
        EnClearTag_CreateFlashParticle(globalCtx2, &debrisParticleLocation, 6.0f, this->actor.floorHeight,
                                       &this->floorTangent);
        debrisParticleLocation.y = (this->actor.world.pos.y + 30.0f) - 50.0f;
        EnClearTag_CreateSmokeParticle(globalCtx2, &debrisParticleLocation, 3.0f);
        debrisParticleLocation.y = this->actor.world.pos.y;

        for (i = 0; i < 15; i++) {
            debrisParticleVelocity.x = sinf(i * 1.65f) * i * 0.3f;
            debrisParticleVelocity.z = cosf(i * 1.65f) * i * 0.3f;
            debrisParticleVelocity.y = Rand_ZeroFloat(6.0f) + 5.0f;
            debrisParticleVelocity.x += Rand_CenteredFloat(0.5f);
            debrisParticleVelocity.z += Rand_CenteredFloat(0.5f);

            debrisParticleAcceleration.x = 0.0f;
            debrisParticleAcceleration.z = 0.0f;
            debrisParticleAcceleration.y = -1.0f;

            EnClearTag_CreateDebrisParticle(globalCtx2, &debrisParticleLocation, &debrisParticleVelocity,
                                            &debrisParticleAcceleration, Rand_ZeroFloat(0.15f) + 0.075f,
                                            this->actor.floorHeight);
        }
    }

    if (this->drawMode != CLEAR_TAG_DRAWMODE_MODEL) {
        if (this->drawMode == CLEAR_TAG_DRAWMODE_PARTICLE) {
            if (this->deathTimer == 0) {
                isArwingAlive = 0;
            } else {
                this->deathTimer--;
                isArwingAlive = this->deathTimer;
            }

            if (!isArwingAlive) {
                Actor_Kill(thisx);
            }
        }
        EnClearTag_UpdateParticles(globalCtx2);
    }
}

/**
 * EnClear_Tag draw function.
 */
void EnClearTag_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnClearTag* this = THIS;
    GlobalContext* globalCtx2 = globalCtx;

    OPEN_DISPS(globalCtx2->state.gfxCtx, "../z_en_clear_tag.c", 983);
    if (this->drawMode != CLEAR_TAG_DRAWMODE_PARTICLE) {
        func_80093D84(globalCtx2->state.gfxCtx);

        if (this->state >= CLEAR_TAG_STATE_LASER) {
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0, 255, 0, 255);

            Matrix_Translate(25.0f, 0.0f, 0.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx2->state.gfxCtx, "../z_en_clear_tag.c", 1004),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, laserDl);

            Matrix_Translate(-50.0f, 0.0f, 0.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx2->state.gfxCtx, "../z_en_clear_tag.c", 1011),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, laserDl);
        } else {
            func_80093D18(globalCtx2->state.gfxCtx);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);
            if (this->crashingTimer != 0) {
                f32 xRotation;
                f32 yRotation;
                f32 scaledCrashingTimer;
                scaledCrashingTimer = this->crashingTimer * 0.05f;
                xRotation = Math_SinS(this->timer * 12288) * scaledCrashingTimer;
                yRotation = Math_SinS(this->timer * 14080) * scaledCrashingTimer;
                Matrix_RotateX(xRotation, MTXMODE_APPLY);
                Matrix_RotateY(yRotation, MTXMODE_APPLY);
            }
            Matrix_RotateZ(this->roll, MTXMODE_APPLY);
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx2->state.gfxCtx, "../z_en_clear_tag.c", 1030),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, arwingDl);

            Matrix_Translate(0.0f, 0.0f, -60.0f, MTXMODE_APPLY);
            func_800D1FD4(&globalCtx2->mf_11DA0);
            Matrix_Scale(2.5f, 1.3f, 0.0f, MTXMODE_APPLY);
            if ((this->timer & 1) != 0) {
                Matrix_Scale(1.15f, 1.15f, 1.15f, MTXMODE_APPLY);
            }
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 200, 155);
            gDPPipeSync(POLY_XLU_DISP++);
            gDPSetEnvColor(POLY_XLU_DISP++, 255, 50, 0, 0);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx2->state.gfxCtx, "../z_en_clear_tag.c", 1067),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, arwingBackfireDl);

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0, 0, 0, 130);
            Matrix_Translate(this->actor.world.pos.x, this->actor.floorHeight, this->actor.world.pos.z, MTXMODE_NEW);
            Matrix_RotateX(this->floorTangent.x, MTXMODE_APPLY);
            Matrix_RotateZ(this->floorTangent.z, MTXMODE_APPLY);
            Matrix_Scale(this->actor.scale.x + 0.35f, 0.0f, this->actor.scale.z + 0.35f, MTXMODE_APPLY);
            Matrix_RotateY((this->actor.shape.rot.y / 32768.0f) * M_PI, MTXMODE_APPLY);
            Matrix_RotateX((this->actor.shape.rot.x / 32768.0f) * M_PI, MTXMODE_APPLY);
            Matrix_RotateZ((this->actor.shape.rot.z / 32768.0f) * M_PI, MTXMODE_APPLY);
            if (this->crashingTimer != 0) {
                f32 xRotation;
                f32 yRotation;
                f32 scaledCrashingTimer;
                scaledCrashingTimer = this->crashingTimer * 0.05f;
                xRotation = Math_SinS(this->timer * 12288) * scaledCrashingTimer;
                yRotation = Math_SinS(this->timer * 14080) * scaledCrashingTimer;
                Matrix_RotateX(xRotation, MTXMODE_APPLY);
                Matrix_RotateY(yRotation, MTXMODE_APPLY);
            }
            Matrix_RotateZ(this->roll, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx2->state.gfxCtx, "../z_en_clear_tag.c", 1104),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, arwingShadowDl);
        }
    }

    if (this->drawMode != CLEAR_TAG_DRAWMODE_MODEL) {
        EnClearTag_DrawParticles(globalCtx);
    }

    CLOSE_DISPS(globalCtx2->state.gfxCtx, "../z_en_clear_tag.c", 1119);
}

/**
 * Updates the Arwing particles.
 */
void EnClearTag_UpdateParticles(GlobalContext* globalCtx) {
    GlobalContext* globalCtx2;
    s16 i;
    f32 originalYPosition;
    Vec3f sphereCenter;
    EnClearTagEffect* effect;
    s32 pad;

    globalCtx2 = globalCtx;
    effect = (EnClearTagEffect*)globalCtx2->bossEffects;

    for (i = 0; i < 100; i++, effect++) {
        if (effect->type != CLEAR_TAG_PARTICLE_AVAILABLE) {
            effect->seed++;

            effect->position.x += effect->velocity.x;
            originalYPosition = effect->position.y;
            effect->position.y += effect->velocity.y;
            effect->position.z += effect->velocity.z;
            effect->velocity.x += effect->acceleration.x;
            effect->velocity.y += effect->acceleration.y;
            effect->velocity.z += effect->acceleration.z;

            if (effect->type == CLEAR_TAG_PARTICLE_DEBRIS) {
                if (effect->velocity.y < -5.0f) {
                    effect->velocity.y = -5.0f;
                }
                if (effect->velocity.y < 0.0f) {
                    sphereCenter = effect->position;
                    sphereCenter.y += 5.0f;

                    if (BgCheck_SphVsFirstPoly(&globalCtx2->colCtx, &sphereCenter, 11.0f)) {
                        effect->position.y = originalYPosition;
                        if (effect->bounces <= 0) {
                            effect->bounces++;
                            effect->velocity.y *= -0.5f;
                            effect->timer = ((s16)Rand_ZeroFloat(20)) + 25;
                        } else {
                            effect->velocity.y = 0.0f;
                            effect->acceleration.y = 0.0f;
                            effect->velocity.z = 0.0f;
                            effect->velocity.x = 0.0f;
                        }
                    }
                }

                if (effect->acceleration.y != 0.0f) {
                    effect->rotationX += 0.5f;
                    effect->rotationY += 0.35f;
                }

                if (effect->timer == 1) {
                    effect->type = CLEAR_TAG_PARTICLE_AVAILABLE;
                }

                if (effect->seed >= 3) {
                    effect->seed = 0;
                    EnClearTag_CreateFireParticle(globalCtx2, &effect->position, effect->scale * 8.0f);
                }
            } else if (effect->type == CLEAR_TAG_PARTICLE_FIRE) {
                Math_ApproachZeroF(&effect->primColor.a, 1.0f, 15.0f);
                if (effect->primColor.a <= 0.0f) {
                    effect->type = CLEAR_TAG_PARTICLE_AVAILABLE;
                }
            } else if (effect->type == CLEAR_TAG_PARTICLE_SMOKE) {
                Math_ApproachZeroF(&effect->primColor.r, 1.0f, 20.0f);
                Math_ApproachZeroF(&effect->primColor.g, 1.0f, 2.0f);
                Math_ApproachZeroF(&effect->envColor.r, 1.0f, 25.5f);
                Math_ApproachZeroF(&effect->envColor.g, 1.0f, 21.5f);
                Math_ApproachZeroF(&effect->envColor.b, 1.0f, 25.5f);
                Math_ApproachF(&effect->scale, effect->maxScale, 0.05f, 0.1f);

                if (effect->primColor.r == 0.0f) {
                    Math_ApproachZeroF(&effect->primColor.a, 1.0f, 3.0f);
                    if (effect->primColor.a <= 0.0f) {
                        effect->type = CLEAR_TAG_PARTICLE_AVAILABLE;
                    }
                }
            } else if (effect->type == CLEAR_TAG_PARTICLE_FLASH) {
                Math_ApproachF(&effect->scale, effect->maxScale, 1.0f, 3.0f);
                Math_ApproachZeroF(&effect->primColor.a, 1.0f, 10.0f);
                if (effect->primColor.a <= 0.0f) {
                    effect->type = CLEAR_TAG_PARTICLE_AVAILABLE;
                }
            }

            if (effect->timer != 0) {
                effect->timer--;
            }
        }
    }
}

/**
 * Draws the Arwing particles.
 */
void EnClearTag_DrawParticles(GlobalContext* globalCtx) {
    GlobalContext* globalCtx2;
    GraphicsContext* gfxCtx;
    u8 isMaterialApplied;
    s16 i;
    EnClearTagEffect* effect;
    EnClearTagEffect* firstEffect;

    globalCtx2 = globalCtx;
    gfxCtx = globalCtx2->state.gfxCtx;

    firstEffect = effect = (EnClearTagEffect*)globalCtx2->bossEffects;
    isMaterialApplied = 0;

    OPEN_DISPS(gfxCtx, "../z_en_clear_tag.c", 1288);
    func_80093D18(globalCtx2->state.gfxCtx);
    func_80093D84(globalCtx2->state.gfxCtx);

    for (i = 0; i < 100; i++, effect++) {
        if (effect->type == CLEAR_TAG_PARTICLE_DEBRIS) {
            if (!isMaterialApplied) {
                isMaterialApplied++;
                gSPDisplayList(POLY_OPA_DISP++, particleDebrisMaterialDl);
            }

            Matrix_Translate(effect->position.x, effect->position.y, effect->position.z, MTXMODE_NEW);
            Matrix_Scale(effect->scale, effect->scale, effect->scale, MTXMODE_APPLY);
            Matrix_RotateY(effect->rotationX, MTXMODE_APPLY);
            Matrix_RotateX(effect->rotationY, MTXMODE_APPLY);
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_clear_tag.c", 1307),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, particleDebrisDl);
        }
    }

    effect = firstEffect;
    isMaterialApplied = 0;
    for (i = 0; i < 100; i++, effect++) {
        if (effect->type == CLEAR_TAG_PARTICLE_FLASH) {
            if (!isMaterialApplied) {
                gDPPipeSync(POLY_XLU_DISP++);
                gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 200, 0);
                isMaterialApplied++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 200, (s8)effect->primColor.a);
            Matrix_Translate(effect->position.x, effect->floorHeight, effect->position.z, MTXMODE_NEW);
            Matrix_RotateX(effect->floorTangent.x, MTXMODE_APPLY);
            Matrix_RotateZ(effect->floorTangent.z, MTXMODE_APPLY);
            Matrix_Scale(effect->scale + effect->scale, 1.0f, effect->scale + effect->scale, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_clear_tag.c", 1342),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, particleFlashGroundDl);
        }
    }

    effect = firstEffect;
    isMaterialApplied = 0;
    for (i = 0; i < 100; i++, effect++) {
        if (effect->type == CLEAR_TAG_PARTICLE_SMOKE) {
            if (!isMaterialApplied) {
                gSPDisplayList(POLY_XLU_DISP++, particleFireMaterialDl);
                isMaterialApplied++;
            }

            gDPPipeSync(POLY_XLU_DISP++);
            gDPSetEnvColor(POLY_XLU_DISP++, (s8)effect->envColor.r, (s8)effect->envColor.g, (s8)effect->envColor.b,
                           128);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, (s8)effect->primColor.r, (s8)effect->primColor.g,
                            (s8)effect->primColor.b, (s8)effect->primColor.a);
            gSPSegment(POLY_XLU_DISP++, 8,
                       Gfx_TwoTexScroll(globalCtx2->state.gfxCtx, 0, 0, effect->seed * -5, 32, 64, 1, 0, 0, 32, 32));
            Matrix_Translate(effect->position.x, effect->position.y, effect->position.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx2->mf_11DA0);
            Matrix_Scale(effect->scale, effect->scale, 1.0f, MTXMODE_APPLY);
            Matrix_Translate(0.0f, 20.0f, 0.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_clear_tag.c", 1392),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, particleFireDl);
        }
    }

    effect = firstEffect;
    isMaterialApplied = 0;
    for (i = 0; i < 100; i++, effect++) {
        if (effect->type == CLEAR_TAG_PARTICLE_FIRE) {
            if (!isMaterialApplied) {
                gSPDisplayList(POLY_XLU_DISP++, particleFireMaterialDl);
                gDPSetEnvColor(POLY_XLU_DISP++, 255, 215, 255, 128);
                isMaterialApplied++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 200, 20, 0, (s8)effect->primColor.a);
            gSPSegment(
                POLY_XLU_DISP++, 8,
                Gfx_TwoTexScroll(globalCtx2->state.gfxCtx, 0, 0, (effect->seed * -15) & 0xFF, 32, 64, 1, 0, 0, 32, 32));
            Matrix_Translate(effect->position.x, effect->position.y, effect->position.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(effect->scale, effect->scale, 1.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_clear_tag.c", 1439),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, particleFireDl);
        }
    }

    effect = firstEffect;
    isMaterialApplied = 0;
    for (i = 0; i < 100; i++, effect++) {
        if (effect->type == CLEAR_TAG_PARTICLE_FLASH) {
            if (!isMaterialApplied) {
                gDPPipeSync(POLY_XLU_DISP++);
                gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 200, 0);
                isMaterialApplied++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 200, (s8)effect->primColor.a);
            Matrix_Translate(effect->position.x, effect->position.y, effect->position.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx2->mf_11DA0);
            Matrix_Scale(effect->scale, effect->scale, 1.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_clear_tag.c", 1470),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, particleFlashDl);
        }
    }

    CLOSE_DISPS(gfxCtx, "../z_en_clear_tag.c", 1477);
}
