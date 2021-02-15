#include "z_en_clear_tag.h"

#define FLAGS 0x00000035

#define THIS ((EnClearTag*)thisx)

void EnClearTag_Init(Actor* thisx, GlobalContext* globalCtx);
void EnClearTag_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnClearTag_Update(Actor* thisx, GlobalContext* globalCtx);
void EnClearTag_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnClearTag_UpdateEffects(GlobalContext* globalCtx);
void EnClearTag_DrawEffects(GlobalContext* globalCtx);

void EnClearTag_CreateDebrisEffect(GlobalContext* globalCtx, Vec3f* position, Vec3f* velocity, Vec3f* acceleration,
                                   f32 scale, f32 floorHeight);
void EnClearTag_CreateFireEffect(GlobalContext* globalCtx, Vec3f* pos, f32 scale);
void EnClearTag_CreateSmokeEffect(GlobalContext* globalCtx, Vec3f* position, f32 scale);
void EnClearTag_CreateFlashEffect(GlobalContext* globalCtx, Vec3f* position, f32 scale, f32 floorHeight,
                                  Vec3f* floorTangent);

void EnClearTag_CalculateFloorTangent(EnClearTag* this);

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

static u8 sIsEffectsInitialized = 0;

static Vec3f sZeroVector = { 0.0f, 0.0f, 0.0f };

static ColliderCylinderInit sArwingCylinderInit = {
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

static ColliderCylinderInit sLaserCylinderInit = {
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

static u32 D_809D5C98 = 0; // unused
static u32 D_809D5C9C = 0; // unused

static EnClearTagEffect sClearTagEffects[CLEAR_TAG_EFFECT_MAX_COUNT];

#include "../../../../assets/overlays/ovl_En_Clear_Tag/ovl_En_Clear_Tag.c"

/**
 * Creates a debris effect.
 * Debris effects are spawned when the Arwing dies. It spawns fire effects.
 */
void EnClearTag_CreateDebrisEffect(GlobalContext* globalCtx, Vec3f* position, Vec3f* velocity, Vec3f* acceleration,
                                   f32 scale, f32 floorHeight) {
    s16 i;
    s16 seed;
    EnClearTagEffect* effect;
    GlobalContext* globalCtx2;

    globalCtx2 = globalCtx;
    effect = (EnClearTagEffect*)globalCtx2->specialEffects;

    // Look for an available effect to allocate a Debris effect to.
    for (i = 0; i < CLEAR_TAG_EFFECT_MAX_COUNT; i++, effect++) {
        if (effect->type == CLEAR_TAG_EFFECT_AVAILABLE) {
            effect->type = CLEAR_TAG_EFFECT_DEBRIS;

            effect->position = *position;
            effect->velocity = *velocity;
            effect->acceleration = *acceleration;

            effect->scale = scale;

            // Set the debris effects to spawn in a circle.
            effect->rotationY = Rand_ZeroFloat(M_PI * 2);
            effect->rotationX = Rand_ZeroFloat(M_PI * 2);

            effect->timer = effect->bounces = 0;

            effect->floorHeight = floorHeight;

            seed = (s32)Rand_ZeroFloat(10.0f);
            effect->seed = seed;

            return;
        }
    }
}

/**
 * Creates a fire effect.
 * Fire effects are spawned by debris effects. Fire effects spawn smoke effects
 */
void EnClearTag_CreateFireEffect(GlobalContext* globalCtx, Vec3f* pos, f32 scale) {
    s16 i;
    s16 seed;
    EnClearTagEffect* effect;
    GlobalContext* globalCtx2;

    globalCtx2 = globalCtx;
    effect = (EnClearTagEffect*)globalCtx2->specialEffects;

    // Look for an available effect to allocate a fire effect to.
    for (i = 0; i < CLEAR_TAG_EFFECT_MAX_COUNT; i++, effect++) {
        if (effect->type == CLEAR_TAG_EFFECT_AVAILABLE) {
            seed = (s32)Rand_ZeroFloat(100.0f);
            effect->seed = seed;
            effect->type = CLEAR_TAG_EFFECT_FIRE;

            effect->position = *pos;
            effect->velocity = sZeroVector;
            effect->acceleration = sZeroVector;
            effect->acceleration.y = 0.15f;

            effect->scale = scale;

            effect->primColor.a = 200.0f;

            return;
        }
    }
}

/**
 * Creates a smoke effect.
 * Smoke effects are spawned by fire effects.
 */
void EnClearTag_CreateSmokeEffect(GlobalContext* globalCtx, Vec3f* position, f32 scale) {
    s16 i;
    s16 seed;
    EnClearTagEffect* effect;
    GlobalContext* globalCtx2;

    globalCtx2 = globalCtx;
    effect = (EnClearTagEffect*)globalCtx2->specialEffects;

    // Look for an available effect to allocate a smoke effect to.
    for (i = 0; i < CLEAR_TAG_EFFECT_MAX_COUNT; i++, effect++) {
        if (effect->type == CLEAR_TAG_EFFECT_AVAILABLE) {
            seed = (s32)Rand_ZeroFloat(100.0f);
            effect->seed = seed;
            effect->type = CLEAR_TAG_EFFECT_SMOKE;

            effect->position = *position;
            effect->velocity = sZeroVector;
            effect->acceleration = sZeroVector;

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
 * Creates a flash effect.
 * Flash effects are spawned when the Arwing dies.
 * Flash effects two components: 1) a billboard flash, and 2) a light effect on the ground.
 */
void EnClearTag_CreateFlashEffect(GlobalContext* globalCtx, Vec3f* position, f32 scale, f32 floorHeight,
                                  Vec3f* floorTangent) {
    s16 i;
    EnClearTagEffect* effect;
    GlobalContext* globalCtx2;

    globalCtx2 = globalCtx;
    effect = (EnClearTagEffect*)globalCtx2->specialEffects;

    // Look for an available effect to allocate a flash effect to.
    for (i = 0; i < CLEAR_TAG_EFFECT_MAX_COUNT; i++, effect++) {
        if (effect->type == CLEAR_TAG_EFFECT_AVAILABLE) {
            effect->type = CLEAR_TAG_EFFECT_FLASH;

            effect->position = *position;
            effect->velocity = sZeroVector;
            effect->acceleration = sZeroVector;

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
 * This allocates a collider, initializes effects, and sets up ClearTag instance data.
 */
void EnClearTag_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnClearTag* this = THIS;
    s32 defaultCutsceneTimer = 100;
    s16 j, i;

    Collider_InitCylinder(globalCtx, &this->collider);

    // Initialize the Arwing laser.
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
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sLaserCylinderInit);
        Audio_PlayActorSound2(&this->actor, NA_SE_IT_SWORD_REFLECT_MG);
        return;
    }

    // Initialize the Arwing.
    this->actor.flags |= 1;
    this->actor.targetMode = 5;
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sArwingCylinderInit);
    this->actor.colChkInfo.health = 3;

    // Update the Arwing to play the intro cutscene.
    if (this->actor.params == CLEAR_TAG_CUTSCENE_ARWING) {
        this->work[0] = 70;
        this->work[1] = 250;
        this->state = CLEAR_TAG_STATE_DEMO;
        this->actor.world.rot.x = 0x4000;
        this->cutsceneMode = CLEAR_TAG_DEMOMODE_SETUP;
        this->cutsceneTimer = defaultCutsceneTimer;
        this->work[2] = 20;
    }

    // Initialize all effects to available if effects have not been initialized.
    if (!sIsEffectsInitialized) {
        sIsEffectsInitialized = 1;
        globalCtx->specialEffects = &sClearTagEffects[0];
        for (i = 0; i < CLEAR_TAG_EFFECT_MAX_COUNT; i++) {
            sClearTagEffects[i].type = CLEAR_TAG_EFFECT_AVAILABLE;
        }
        this->drawMode = CLEAR_TAG_DRAWMODE_ALL;
    }
}

/**
 * Calculate a floor tangent.
 * This is used for the ground flash display lists and Arwing shadow display lists to snap onto the floor.
 */
void EnClearTag_CalculateFloorTangent(EnClearTag* this) {
    f32 x;
    f32 y;
    f32 z;

    // If there is a floor poly below the Arwing, calculate the floor tangent.
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
 * CLEAR_TAG_CUTSCENE_ARWING which is the regular Arwing and plays a cutscene on spawn.
 * CLEAR_TAG_ARWING which is a regular Arwing.
 * CLEAR_TAG_LASER which are the lasers fired by the Arwing.
 *
 * This function controls the Arwing flying. A target position is set and the Arwing flies toward it based on
 * calculated directions from the current position.
 * This function fires Arwing lasers when the state is CLEAR_TAG_STATE_TARGET_LOCKED.
 * This function controls the cutscene that plays when the Arwing has params for
 * cutscene. The cutscene stops playing when the Arwing is a specified distance from the starting point.
 *
 * work[0] for Arwing in locked on mode is a timeout when the Arwing reverts back to flying mode.
 * work[0] for Arwing in fly mode is a timeout for when you can enter locked on mode.
 * work[0] for lasers is a cutscene timer.
 * work[1] for Arwing is a timeout for when it will enter locked on mode.
 * work[2] for Arwing is a cutscene timer.
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
    s16 cutsceneTimer;
    f32 loseTargetLockDistance;
    s32 pad;
    s16 yWorldRotationTarget;
    s16 xWorldRotationTarget;
    f32 targetCircleX;
    f32 targetCircleZ;
    f32 cutsceneCameraCircleX;
    f32 cutsceneCameraCircleZ;
    s16 isArwingAlive;
    Vec3f cutsceneCameraAtTarget;
    Vec3f cutsceneCameraEyeTarget;
    Vec3f crashEffectLocation;
    Vec3f crashEffectVelocity;
    Vec3f debrisEffectAcceleration;

    this->timer++;

    if (this->drawMode != CLEAR_TAG_DRAWMODE_EFFECT) {
        // Decrement the "work" timers.
        for (i = 0; i < 3; i++) {
            if (this->work[i] != 0) {
                this->work[i]--;
            }
        }

        // Decrement the cutscene timer.
        if (this->cutsceneTimer != 0) {
            this->cutsceneTimer--;
        }

        switch (this->state) {
            case CLEAR_TAG_STATE_DEMO:
            case CLEAR_TAG_STATE_TARGET_LOCKED:
            case CLEAR_TAG_STATE_FLYING:
                // Check if the Arwing should crash.
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

                    // Update the state based on the work timer.
                    if (this->work[0] == 0) {
                        if (this->work[1] == 0) {
                            this->state = CLEAR_TAG_STATE_TARGET_LOCKED;
                            this->work[0] = 300;
                        } else {
                            this->state = CLEAR_TAG_STATE_FLYING;
                            this->work[0] = ((s16)Rand_ZeroFloat(50.0f)) + 20;

                            if (this->actor.params == CLEAR_TAG_ARWING) {
                                // Set the Arwing to fly in a circle around the player.
                                targetCircleX = Math_SinS(player->actor.shape.rot.y) * 400.0f;
                                targetCircleZ = Math_CosS(player->actor.shape.rot.y) * 400.0f;
                                this->targetPosition.x =
                                    Rand_CenteredFloat(700.0f) + (player->actor.world.pos.x + targetCircleX);
                                this->targetPosition.y = Rand_ZeroFloat(200.0f) + player->actor.world.pos.y + 150.0f;
                                this->targetPosition.z =
                                    Rand_CenteredFloat(700.0f) + (player->actor.world.pos.z + targetCircleZ);
                            } else {
                                // Set the Arwing to fly to a random position.
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
                        // Set the Arwing to fly towards the player.
                        this->targetPosition.x = player->actor.world.pos.x;
                        this->targetPosition.y = player->actor.world.pos.y + 40.0f;
                        this->targetPosition.z = player->actor.world.pos.z;
                        rotationScale = 7;
                        xRotationTarget = 4096;
                        loseTargetLockDistance = 150.0f;
                    } else if (this->state == CLEAR_TAG_STATE_DEMO) {
                        // Move the Arwing for the intro cutscene.

                        // Do a Barrel Roll!
                        this->roll += 0.5f;
                        if (this->roll > M_PI * 2) {
                            this->roll -= M_PI * 2;
                        }

                        // Set the Arwing to fly to a hardcoded position.
                        this->targetPosition.x = 0.0f;
                        this->targetPosition.y = 300.0f;
                        this->targetPosition.z = 0.0f;
                        loseTargetLockDistance = 100.0f;
                    }

                    // If the Arwing is not in cutscene mode update the roll to zero.
                    if (this->state != CLEAR_TAG_STATE_DEMO) {
                        Math_ApproachZeroF(&this->roll, 0.1f, 0.2f);
                    }

                    // Calculate a vector towards the targetted position.
                    vectorToTargetX = this->targetPosition.x - this->actor.world.pos.x;
                    vectorToTargetY = this->targetPosition.y - this->actor.world.pos.y;
                    vectorToTargetZ = this->targetPosition.z - this->actor.world.pos.z;

                    // If the Arwing is within a certain distance to the target position, it will be updated to flymode
                    if (sqrtf(SQ(vectorToTargetX) + SQ(vectorToTargetY) + SQ(vectorToTargetZ)) <
                        loseTargetLockDistance) {
                        this->work[0] = 0;
                        if (this->state == CLEAR_TAG_STATE_TARGET_LOCKED) {
                            this->work[1] = ((s16)Rand_ZeroFloat(100.0f)) + 100;
                        }
                        this->state = CLEAR_TAG_STATE_FLYING;
                    }

                    // Calculate the direction for the Arwing to fly and the rotation for the Arwing
                    // based on the Arwing's direction, and current rotation.
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

                        // Check if the Arwing should fire it's laser.
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

                    // Update the Arwing's velocity.
                    func_8002D908(&this->actor);
                    this->actor.velocity.x += this->acceleration.x;
                    this->actor.velocity.y += this->acceleration.y;
                    this->actor.velocity.z += this->acceleration.z;
                    Math_ApproachZeroF(&this->acceleration.x, 1.0f, 1.0f);
                    Math_ApproachZeroF(&this->acceleration.y, 1.0f, 1.0f);
                    Math_ApproachZeroF(&this->acceleration.z, 1.0f, 1.0f);

                    // Fire the Arwing laser.
                    if (this->shouldShootLaser) {
                        this->shouldShootLaser = 0;
                        Actor_Spawn(&globalCtx2->actorCtx, globalCtx2, ACTOR_EN_CLEAR_TAG, this->actor.world.pos.x,
                                    this->actor.world.pos.y, this->actor.world.pos.z, this->actor.world.rot.x,
                                    this->actor.world.rot.y, this->actor.world.rot.z, CLEAR_TAG_STATE_LASER);
                    }
                }

            case CLEAR_TAG_STATE_CRASHING:
                // Decrement the crashing timer.
                if (this->crashingTimer != 0) {
                    this->crashingTimer--;
                }

                // Update Arwing collider to better match a ground collision.
                func_8002D7EC(&this->actor);
                Actor_SetFocus(&this->actor, 0.0f);
                this->collider.dim.radius = 20;
                this->collider.dim.height = 15;
                this->collider.dim.yShift = -5;
                Collider_UpdateCylinder(&this->actor, &this->collider);
                CollisionCheck_SetAC(globalCtx2, &globalCtx2->colChkCtx, &this->collider.base);
                CollisionCheck_SetAT(globalCtx2, &globalCtx2->colChkCtx, &this->collider.base);

                // Recalculate the floor tangent.
                if (this->work[2] == 0) {
                    Actor_UpdateBgCheckInfo(globalCtx2, &this->actor, 50.0f, 30.0f, 100.0f, 5);
                    EnClearTag_CalculateFloorTangent(this);
                }

                if (this->state == CLEAR_TAG_STATE_CRASHING) {
                    // Create fire effects while the Arwing crashes.
                    EnClearTag_CreateFireEffect(globalCtx2, &this->actor.world.pos, 1.0f);

                    // Moves the Arwing while crashing.
                    this->roll -= 0.5f;
                    this->actor.velocity.y -= 0.2f;
                    this->actor.shape.rot.x += 16;

                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_BREATH - SFX_FLAG);

                    // Check if the Arwing has hit the ground.
                    if (this->actor.bgCheckFlags & 9) {
                        this->shouldExplode = 1;

                        if (this->drawMode != CLEAR_TAG_DRAWMODE_MODEL) {
                            this->drawMode = CLEAR_TAG_DRAWMODE_EFFECT;
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

                // Check if the laser has hit a target.
                if (this->collider.base.atFlags & AT_HIT) {
                    hasAtHit = 1;
                }

                // Set laser collider properties.
                this->collider.dim.radius = 23;
                this->collider.dim.height = 25;
                this->collider.dim.yShift = -10;
                Collider_UpdateCylinder(&this->actor, &this->collider);
                CollisionCheck_SetAT(globalCtx2, &globalCtx2->colChkCtx, &this->collider.base);
                Actor_UpdateBgCheckInfo(globalCtx2, &this->actor, 50.0f, 80.0f, 100.0f, 5);

                // Check if the laser has hit a target, timed out, or hit the ground.
                if (this->actor.bgCheckFlags & 9 || hasAtHit || this->work[0] == 0) {
                    // Kill the laser.
                    Actor_Kill(&this->actor);
                    // Player laser sound effect if the laser did not time out.
                    if (this->work[0] != 0) {
                        Audio_PlaySoundAtPosition(globalCtx2, &this->actor.world.pos, 20, NA_SE_EN_FANTOM_THUNDER_GND);
                    }
                }
                break;
        }

        if (this->state < CLEAR_TAG_STATE_LASER) {
            // Play the Arwing cutscene.
            osSyncPrintf("DEMO_MODE %d\n", this->cutsceneMode);
            osSyncPrintf("CAMERA_NO %d\n", this->cameraId);

            if (this->cutsceneMode != CLEAR_TAG_DEMOMODE_NONE) {
                switch (this->cutsceneMode) {
                    case CLEAR_TAG_DEMOMODE_SETUP:
                        // Initializes Arwing cutscene camera data.
                        this->cutsceneMode = CLEAR_TAG_DEMOMODE_PLAY;
                        func_80064520(globalCtx2, &globalCtx2->csCtx);
                        this->cameraId = Gameplay_CreateSubCamera(globalCtx2);
                        Gameplay_ChangeCameraStatus(globalCtx2, 0, 1);
                        Gameplay_ChangeCameraStatus(globalCtx2, this->cameraId, 7);
                    case CLEAR_TAG_DEMOMODE_PLAY:
                        // Update the Arwing cutscene camera to spin around in a circle.
                        cutsceneTimer = this->timer << 7;
                        cutsceneCameraCircleX = Math_SinS(cutsceneTimer) * 200.0f;
                        cutsceneCameraCircleZ = Math_CosS(cutsceneTimer) * 200.0f;
                        cutsceneCameraAtTarget.x = this->actor.world.pos.x + cutsceneCameraCircleX;
                        cutsceneCameraAtTarget.y = 200.0f;
                        cutsceneCameraAtTarget.z = this->actor.world.pos.z + cutsceneCameraCircleZ;
                        cutsceneCameraEyeTarget = this->actor.world.pos;
                        break;
                }

                // Make the Arwing cutscene camera approach the target.
                if (this->cameraId != 0) {
                    Math_ApproachF(&this->cutsceneCameraAt.x, cutsceneCameraAtTarget.x, 0.1f, 500.0f);
                    Math_ApproachF(&this->cutsceneCameraAt.y, cutsceneCameraAtTarget.y, 0.1f, 500.0f);
                    Math_ApproachF(&this->cutsceneCameraAt.z, cutsceneCameraAtTarget.z, 0.1f, 500.0f);
                    Math_ApproachF(&this->cutsceneCameraEye.x, cutsceneCameraEyeTarget.x, 0.2f, 500.0f);
                    Math_ApproachF(&this->cutsceneCameraEye.y, cutsceneCameraEyeTarget.y, 0.2f, 500.0f);
                    Math_ApproachF(&this->cutsceneCameraEye.z, cutsceneCameraEyeTarget.z, 0.2f, 500.0f);
                    Gameplay_CameraSetAtEye(globalCtx2, this->cameraId, &this->cutsceneCameraEye,
                                            &this->cutsceneCameraAt);
                }

                // Cutscene has finished.
                if (this->cutsceneTimer == 1) {
                    func_800C08AC(globalCtx2, this->cameraId, 0);
                    this->cutsceneMode = this->cameraId = 0;
                    func_80064534(globalCtx2, &globalCtx2->csCtx);
                }
            }
        }
    }

    // Explode the Arwing
    if (this->shouldExplode) {
        this->shouldExplode = 0;
        Audio_PlaySoundAtPosition(globalCtx2, &this->actor.world.pos, 40, NA_SE_IT_BOMB_EXPLOSION);

        // Spawn flash effect.
        crashEffectLocation.x = this->actor.world.pos.x;
        crashEffectLocation.y = (this->actor.world.pos.y + 40.0f) - 30.0f;
        crashEffectLocation.z = this->actor.world.pos.z;
        EnClearTag_CreateFlashEffect(globalCtx2, &crashEffectLocation, 6.0f, this->actor.floorHeight,
                                     &this->floorTangent);

        // Spawn smoke effect.
        crashEffectLocation.y = (this->actor.world.pos.y + 30.0f) - 50.0f;
        EnClearTag_CreateSmokeEffect(globalCtx2, &crashEffectLocation, 3.0f);
        crashEffectLocation.y = this->actor.world.pos.y;

        // Spawn debris effects.
        for (i = 0; i < 15; i++) {
            crashEffectVelocity.x = sinf(i * 1.65f) * i * 0.3f;
            crashEffectVelocity.z = cosf(i * 1.65f) * i * 0.3f;
            crashEffectVelocity.y = Rand_ZeroFloat(6.0f) + 5.0f;
            crashEffectVelocity.x += Rand_CenteredFloat(0.5f);
            crashEffectVelocity.z += Rand_CenteredFloat(0.5f);

            debrisEffectAcceleration.x = 0.0f;
            debrisEffectAcceleration.z = 0.0f;
            debrisEffectAcceleration.y = -1.0f;

            EnClearTag_CreateDebrisEffect(globalCtx2, &crashEffectLocation, &crashEffectVelocity,
                                          &debrisEffectAcceleration, Rand_ZeroFloat(0.15f) + 0.075f,
                                          this->actor.floorHeight);
        }
    }

    if (this->drawMode != CLEAR_TAG_DRAWMODE_MODEL) {
        // Check if the Arwing should be removed.
        if (this->drawMode == CLEAR_TAG_DRAWMODE_EFFECT) {
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

        EnClearTag_UpdateEffects(globalCtx2);
    }
}

/**
 * EnClear_Tag draw function.
 * Laser clear tag type will draw two lasers.
 * Arwing clear tage types will draw the Arwing, the backfire, and a shadow.
 */
void EnClearTag_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnClearTag* this = THIS;
    GlobalContext* globalCtx2 = globalCtx;

    OPEN_DISPS(globalCtx2->state.gfxCtx, "../z_en_clear_tag.c", 983);
    if (this->drawMode != CLEAR_TAG_DRAWMODE_EFFECT) {
        func_80093D84(globalCtx2->state.gfxCtx);

        if (this->state >= CLEAR_TAG_STATE_LASER) {
            // Draw Arwing lasers.
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0, 255, 0, 255);

            Matrix_Translate(25.0f, 0.0f, 0.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx2->state.gfxCtx, "../z_en_clear_tag.c", 1004),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, laserDL);

            Matrix_Translate(-50.0f, 0.0f, 0.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx2->state.gfxCtx, "../z_en_clear_tag.c", 1011),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, laserDL);
        } else {
            // Draw the Arwing itself.
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
            gSPDisplayList(POLY_OPA_DISP++, ArwingDL);

            // Draw the Arwing Backfire
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
            gSPDisplayList(POLY_XLU_DISP++, ArwingBackfireDL);

            // Draw the Arwing shadow.
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
            gSPDisplayList(POLY_XLU_DISP++, ArwingShadowDL);
        }
    }

    if (this->drawMode != CLEAR_TAG_DRAWMODE_MODEL) {
        EnClearTag_DrawEffects(globalCtx);
    }

    CLOSE_DISPS(globalCtx2->state.gfxCtx, "../z_en_clear_tag.c", 1119);
}

/**
 * Updates the Arwing effects.
 * Performs effect physics.
 * Moves and bounces debris effects.
 * Fades most effects out of view. When effects are completely faded away they are removed.
 */
void EnClearTag_UpdateEffects(GlobalContext* globalCtx) {
    GlobalContext* globalCtx2;
    s16 i;
    f32 originalYPosition;
    Vec3f sphereCenter;
    EnClearTagEffect* effect;
    s32 pad;

    globalCtx2 = globalCtx;
    effect = (EnClearTagEffect*)globalCtx2->specialEffects;

    for (i = 0; i < CLEAR_TAG_EFFECT_MAX_COUNT; i++, effect++) {
        if (effect->type != CLEAR_TAG_EFFECT_AVAILABLE) {
            effect->seed++;

            // Perform effect physics.
            effect->position.x += effect->velocity.x;
            originalYPosition = effect->position.y;
            effect->position.y += effect->velocity.y;
            effect->position.z += effect->velocity.z;
            effect->velocity.x += effect->acceleration.x;
            effect->velocity.y += effect->acceleration.y;
            effect->velocity.z += effect->acceleration.z;

            if (effect->type == CLEAR_TAG_EFFECT_DEBRIS) {
                // Clamp the velocity to -5.0
                if (effect->velocity.y < -5.0f) {
                    effect->velocity.y = -5.0f;
                }

                // While the effect is falling check if it has hit the ground.
                if (effect->velocity.y < 0.0f) {
                    sphereCenter = effect->position;
                    sphereCenter.y += 5.0f;

                    // Check if the debris has hit the ground.
                    if (BgCheck_SphVsFirstPoly(&globalCtx2->colCtx, &sphereCenter, 11.0f)) {
                        effect->position.y = originalYPosition;

                        // Bounce the debris effect.
                        if (effect->bounces <= 0) {
                            effect->bounces++;
                            effect->velocity.y *= -0.5f;
                            effect->timer = ((s16)Rand_ZeroFloat(20)) + 25;
                        } else {
                            // The Debris effect is done bounding. Set it's velocity and acceleration to 0.
                            effect->velocity.y = 0.0f;
                            effect->acceleration.y = 0.0f;
                            effect->velocity.z = 0.0f;
                            effect->velocity.x = 0.0f;
                        }
                    }
                }

                // Rotate the debris effect.
                if (effect->acceleration.y != 0.0f) {
                    effect->rotationY += 0.5f;
                    effect->rotationX += 0.35f;
                }

                // If the timer is completed, unload the debris effect.
                if (effect->timer == 1) {
                    effect->type = CLEAR_TAG_EFFECT_AVAILABLE;
                }

                // Spawn a fire effect every 3 frames.
                if (effect->seed >= 3) {
                    effect->seed = 0;
                    EnClearTag_CreateFireEffect(globalCtx2, &effect->position, effect->scale * 8.0f);
                }
            } else if (effect->type == CLEAR_TAG_EFFECT_FIRE) {
                // Fade the fire effect.
                Math_ApproachZeroF(&effect->primColor.a, 1.0f, 15.0f);
                // If the fire effect is fully faded, unload it.
                if (effect->primColor.a <= 0.0f) {
                    effect->type = CLEAR_TAG_EFFECT_AVAILABLE;
                }
            } else if (effect->type == CLEAR_TAG_EFFECT_SMOKE) {
                // Fade the smoke effects.
                Math_ApproachZeroF(&effect->primColor.r, 1.0f, 20.0f);
                Math_ApproachZeroF(&effect->primColor.g, 1.0f, 2.0f);
                Math_ApproachZeroF(&effect->envColor.r, 1.0f, 25.5f);
                Math_ApproachZeroF(&effect->envColor.g, 1.0f, 21.5f);
                Math_ApproachZeroF(&effect->envColor.b, 1.0f, 25.5f);

                // Smooth scale the smoke effects.
                Math_ApproachF(&effect->scale, effect->maxScale, 0.05f, 0.1f);

                if (effect->primColor.r == 0.0f) {
                    // Fade the smoke effects.
                    Math_ApproachZeroF(&effect->primColor.a, 1.0f, 3.0f);

                    // If the smoke effect has fully faded, unload it.
                    if (effect->primColor.a <= 0.0f) {
                        effect->type = CLEAR_TAG_EFFECT_AVAILABLE;
                    }
                }
            } else if (effect->type == CLEAR_TAG_EFFECT_FLASH) {
                // Smooth scale the flash effects.
                Math_ApproachF(&effect->scale, effect->maxScale, 1.0f, 3.0f);
                // Fade the flash effects.
                Math_ApproachZeroF(&effect->primColor.a, 1.0f, 10.0f);

                // If the flash effect has fully faded, unload it.
                if (effect->primColor.a <= 0.0f) {
                    effect->type = CLEAR_TAG_EFFECT_AVAILABLE;
                }
            }

            // Decrement effect timer.
            if (effect->timer != 0) {
                effect->timer--;
            }
        }
    }
}

/**
 * Draws the Arwing effects.
 * Each effect type is drawn before the next. The function will apply a material that applies to all effects of that
 * type while drawing the first effect of that type.
 */
void EnClearTag_DrawEffects(GlobalContext* globalCtx) {
    GlobalContext* globalCtx2;
    GraphicsContext* gfxCtx;
    u8 isMaterialApplied;
    s16 i;
    EnClearTagEffect* effect;
    EnClearTagEffect* firstEffect;

    globalCtx2 = globalCtx;
    gfxCtx = globalCtx2->state.gfxCtx;

    firstEffect = effect = (EnClearTagEffect*)globalCtx2->specialEffects;
    isMaterialApplied = 0;

    OPEN_DISPS(gfxCtx, "../z_en_clear_tag.c", 1288);
    func_80093D18(globalCtx2->state.gfxCtx);
    func_80093D84(globalCtx2->state.gfxCtx);

    // Draw all Debris effects.
    for (i = 0; i < CLEAR_TAG_EFFECT_MAX_COUNT; i++, effect++) {
        if (effect->type == CLEAR_TAG_EFFECT_DEBRIS) {
            // Apply the debris effect material if it has not already been applied.
            if (!isMaterialApplied) {
                isMaterialApplied++;
                gSPDisplayList(POLY_OPA_DISP++, effectDebrisMaterialDL);
            }

            // Draw the debris effect.
            Matrix_Translate(effect->position.x, effect->position.y, effect->position.z, MTXMODE_NEW);
            Matrix_Scale(effect->scale, effect->scale, effect->scale, MTXMODE_APPLY);
            Matrix_RotateY(effect->rotationY, MTXMODE_APPLY);
            Matrix_RotateX(effect->rotationX, MTXMODE_APPLY);
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_clear_tag.c", 1307),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, effectDebrisDL);
        }
    }

    // Draw all ground flash effects.
    effect = firstEffect;
    isMaterialApplied = 0;
    for (i = 0; i < CLEAR_TAG_EFFECT_MAX_COUNT; i++, effect++) {
        if (effect->type == CLEAR_TAG_EFFECT_FLASH) {
            // Apply the flash ground effect material if it has not already been applied.
            if (!isMaterialApplied) {
                gDPPipeSync(POLY_XLU_DISP++);
                gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 200, 0);
                isMaterialApplied++;
            }

            // Draw the ground flash effect.
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 200, (s8)effect->primColor.a);
            Matrix_Translate(effect->position.x, effect->floorHeight, effect->position.z, MTXMODE_NEW);
            Matrix_RotateX(effect->floorTangent.x, MTXMODE_APPLY);
            Matrix_RotateZ(effect->floorTangent.z, MTXMODE_APPLY);
            Matrix_Scale(effect->scale + effect->scale, 1.0f, effect->scale + effect->scale, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_clear_tag.c", 1342),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, effectFlashGroundDL);
        }
    }

    // Draw all smoke effects.
    effect = firstEffect;
    isMaterialApplied = 0;
    for (i = 0; i < CLEAR_TAG_EFFECT_MAX_COUNT; i++, effect++) {
        if (effect->type == CLEAR_TAG_EFFECT_SMOKE) {
            // Apply the smoke effect material if it has not already been applied.
            if (!isMaterialApplied) {
                gSPDisplayList(POLY_XLU_DISP++, effectFireMaterialDL);
                isMaterialApplied++;
            }

            // Draw the smoke effect.
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
            gSPDisplayList(POLY_XLU_DISP++, effectFireDL);
        }
    }

    // Draw all fire effects.
    effect = firstEffect;
    isMaterialApplied = 0;
    for (i = 0; i < CLEAR_TAG_EFFECT_MAX_COUNT; i++, effect++) {
        if (effect->type == CLEAR_TAG_EFFECT_FIRE) {
            // Apply the fire effect material if it has not already been applied.
            if (!isMaterialApplied) {
                gSPDisplayList(POLY_XLU_DISP++, effectFireMaterialDL);
                gDPSetEnvColor(POLY_XLU_DISP++, 255, 215, 255, 128);
                isMaterialApplied++;
            }

            // Draw the fire effect.
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 200, 20, 0, (s8)effect->primColor.a);
            gSPSegment(
                POLY_XLU_DISP++, 8,
                Gfx_TwoTexScroll(globalCtx2->state.gfxCtx, 0, 0, (effect->seed * -15) & 0xFF, 32, 64, 1, 0, 0, 32, 32));
            Matrix_Translate(effect->position.x, effect->position.y, effect->position.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(effect->scale, effect->scale, 1.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_clear_tag.c", 1439),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, effectFireDL);
        }
    }

    // Draw all flash billboard effects.
    effect = firstEffect;
    isMaterialApplied = 0;
    for (i = 0; i < CLEAR_TAG_EFFECT_MAX_COUNT; i++, effect++) {
        if (effect->type == CLEAR_TAG_EFFECT_FLASH) {
            // Apply the flash billboard effect material if it has not already been applied.
            if (!isMaterialApplied) {
                gDPPipeSync(POLY_XLU_DISP++);
                gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 200, 0);
                isMaterialApplied++;
            }

            // Draw the flash billboard effect.
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 200, (s8)effect->primColor.a);
            Matrix_Translate(effect->position.x, effect->position.y, effect->position.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx2->mf_11DA0);
            Matrix_Scale(effect->scale, effect->scale, 1.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_clear_tag.c", 1470),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, effectFlashDL);
        }
    }

    CLOSE_DISPS(gfxCtx, "../z_en_clear_tag.c", 1477);
}
