#include "z_en_fz.h"
#include "assets/objects/object_fz/object_fz.h"

#define FLAGS (ACTOR_FLAG_0 | ACTOR_FLAG_2 | ACTOR_FLAG_4 | ACTOR_FLAG_10)

void EnFz_Init(Actor* thisx, PlayState* play);
void EnFz_Destroy(Actor* thisx, PlayState* play);
void EnFz_Update(Actor* thisx, PlayState* play);
void EnFz_Draw(Actor* thisx, PlayState* play);

void EnFz_UpdateTargetPos(EnFz* this, PlayState* play);

// Stationary Freezard
void EnFz_SetupBlowSmokeStationary(EnFz* this);
void EnFz_BlowSmokeStationary(EnFz* this, PlayState* play);

// Moving Freezard that can vanish and reappear
void EnFz_Wait(EnFz* this, PlayState* play);
void EnFz_SetupAppear(EnFz* this);
void EnFz_Appear(EnFz* this, PlayState* play);
void EnFz_SetupAimForMove(EnFz* this);
void EnFz_AimForMove(EnFz* this, PlayState* play);
void EnFz_SetupMoveTowardsPlayer(EnFz* this);
void EnFz_MoveTowardsPlayer(EnFz* this, PlayState* play);
void EnFz_SetupAimForFreeze(EnFz* this);
void EnFz_AimForFreeze(EnFz* this, PlayState* play);
void EnFz_SetupBlowSmoke(EnFz* this, PlayState* play);
void EnFz_BlowSmoke(EnFz* this, PlayState* play);
void EnFz_SetupDisappear(EnFz* this);
void EnFz_Disappear(EnFz* this, PlayState* play);
void EnFz_SetupWait(EnFz* this);

// Killed with fire source
void EnFz_SetupMelt(EnFz* this);
void EnFz_Melt(EnFz* this, PlayState* play);

// Death
void EnFz_SetupDespawn(EnFz* this, PlayState* play);
void EnFz_Despawn(EnFz* this, PlayState* play);

// Ice Smoke Effects
void EnFz_SpawnIceSmokeNoFreeze(EnFz* this, Vec3f* pos, Vec3f* velocity, Vec3f* accel, f32 xyScale);
void EnFz_SpawnIceSmokeFreeze(EnFz* this, Vec3f* pos, Vec3f* velocity, Vec3f* accel, f32 xyScale, f32 xyScaleTarget,
                              s16 primAlpha, u8 isTimerMod8);
void EnFz_UpdateIceSmoke(EnFz* this, PlayState* play);
void EnFz_DrawEffects(EnFz* this, PlayState* play);

ActorInit En_Fz_InitVars = {
    ACTOR_EN_FZ,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_FZ,
    sizeof(EnFz),
    (ActorFunc)EnFz_Init,
    (ActorFunc)EnFz_Destroy,
    (ActorFunc)EnFz_Update,
    (ActorFunc)EnFz_Draw,
};

static ColliderCylinderInitType1 sCylinderInit1 = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x00, 0x00 },
        { 0xFFCE0FDB, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL,
        BUMP_ON | BUMP_HOOKABLE,
        OCELEM_ON,
    },
    { 30, 80, 0, { 0, 0, 0 } },
};

static ColliderCylinderInitType1 sCylinderInit2 = {
    {
        COLTYPE_METAL,
        AT_NONE,
        AC_ON | AC_HARD | AC_TYPE_PLAYER,
        OC1_NONE,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x00, 0x00 },
        { 0x0001F024, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_NONE,
    },
    { 35, 80, 0, { 0, 0, 0 } },
};

static ColliderCylinderInitType1 sCylinderInit3 = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_NONE,
        OC1_NONE,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x20000000, 0x02, 0x08 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL,
        BUMP_NONE,
        OCELEM_NONE,
    },
    { 20, 30, -15, { 0, 0, 0 } },
};

static DamageTable sDamageTable = {
    /* Deku nut      */ DMG_ENTRY(0, 0x0),
    /* Deku stick    */ DMG_ENTRY(0, 0xF),
    /* Slingshot     */ DMG_ENTRY(0, 0xF),
    /* Explosive     */ DMG_ENTRY(2, 0xF),
    /* Boomerang     */ DMG_ENTRY(0, 0xF),
    /* Normal arrow  */ DMG_ENTRY(0, 0xF),
    /* Hammer swing  */ DMG_ENTRY(2, 0xF),
    /* Hookshot      */ DMG_ENTRY(2, 0xF),
    /* Kokiri sword  */ DMG_ENTRY(0, 0xF),
    /* Master sword  */ DMG_ENTRY(2, 0xF),
    /* Giant's Knife */ DMG_ENTRY(4, 0xF),
    /* Fire arrow    */ DMG_ENTRY(4, 0x2),
    /* Ice arrow     */ DMG_ENTRY(0, 0xF),
    /* Light arrow   */ DMG_ENTRY(0, 0xF),
    /* Unk arrow 1   */ DMG_ENTRY(0, 0xF),
    /* Unk arrow 2   */ DMG_ENTRY(0, 0xF),
    /* Unk arrow 3   */ DMG_ENTRY(0, 0xF),
    /* Fire magic    */ DMG_ENTRY(4, 0x2),
    /* Ice magic     */ DMG_ENTRY(0, 0x0),
    /* Light magic   */ DMG_ENTRY(0, 0x0),
    /* Shield        */ DMG_ENTRY(0, 0x0),
    /* Mirror Ray    */ DMG_ENTRY(0, 0x0),
    /* Kokiri spin   */ DMG_ENTRY(0, 0xF),
    /* Giant spin    */ DMG_ENTRY(4, 0xF),
    /* Master spin   */ DMG_ENTRY(2, 0xF),
    /* Kokiri jump   */ DMG_ENTRY(0, 0xF),
    /* Giant jump    */ DMG_ENTRY(8, 0xF),
    /* Master jump   */ DMG_ENTRY(4, 0xF),
    /* Unknown 1     */ DMG_ENTRY(0, 0x0),
    /* Unblockable   */ DMG_ENTRY(0, 0x0),
    /* Hammer jump   */ DMG_ENTRY(0, 0x0),
    /* Unknown 2     */ DMG_ENTRY(0, 0x0),
};

static InitChainEntry sInitChain[] = {
    ICHAIN_S8(naviEnemyId, NAVI_ENEMY_FREEZARD, ICHAIN_CONTINUE),
    ICHAIN_U8(targetMode, 2, ICHAIN_CONTINUE),
    ICHAIN_F32(targetArrowOffset, 30, ICHAIN_STOP),
};

void EnFz_Init(Actor* thisx, PlayState* play) {
    EnFz* this = (EnFz*)thisx;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    this->actor.colChkInfo.damageTable = &sDamageTable;
    this->actor.colChkInfo.health = 6;

    Collider_InitCylinder(play, &this->collider1);
    Collider_SetCylinderType1(play, &this->collider1, &this->actor, &sCylinderInit1);

    Collider_InitCylinder(play, &this->collider2);
    Collider_SetCylinderType1(play, &this->collider2, &this->actor, &sCylinderInit2);

    Collider_InitCylinder(play, &this->collider3);
    Collider_SetCylinderType1(play, &this->collider3, &this->actor, &sCylinderInit3);

    Actor_SetScale(&this->actor, 0.008f);
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    this->actor.flags &= ~ACTOR_FLAG_0;
    this->unusedTimer1 = 0;
    this->unusedCounter = 0;
    this->updateBgInfo = true;
    this->isMoving = false;
    this->isFreezing = false;
    this->isActive = true;
    this->isDespawning = false;
    this->actor.speedXZ = 0.0f;
    this->actor.gravity = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->posOrigin.y = this->actor.world.pos.y;
    this->iceSmokeFreezingSpawnHeight = this->actor.world.pos.y;
    this->posOrigin.x = this->actor.world.pos.x;
    this->posOrigin.z = this->actor.world.pos.z;
    this->unusedFloat = 135.0f;

    if (this->actor.params < 0) {
        this->envAlpha = 0;
        this->actor.scale.y = 0.0f;
        EnFz_SetupWait(this);
    } else {
        this->envAlpha = 255;
        EnFz_SetupBlowSmokeStationary(this);
    }

    EnFz_UpdateTargetPos(this, play);
}

void EnFz_Destroy(Actor* thisx, PlayState* play) {
    EnFz* this = (EnFz*)thisx;

    Collider_DestroyCylinder(play, &this->collider1);
    Collider_DestroyCylinder(play, &this->collider2);
    Collider_DestroyCylinder(play, &this->collider3);
}

void EnFz_UpdateTargetPos(EnFz* this, PlayState* play) {
    Vec3f pos;
    Vec3f hitPos;
    Vec3f vec1;
    s32 bgId;
    CollisionPoly* hitPoly;

    pos.x = this->actor.world.pos.x;
    pos.y = this->actor.world.pos.y + 20.0f;
    pos.z = this->actor.world.pos.z;

    Matrix_Translate(pos.x, pos.y, pos.z, MTXMODE_NEW);
    Matrix_RotateZYX(this->actor.shape.rot.x, this->actor.shape.rot.y, this->actor.shape.rot.z, MTXMODE_APPLY);
    vec1.x = vec1.y = 0.0f;
    vec1.z = 220.0f;
    Matrix_MultVec3f(&vec1, &this->wallHitPos);

    if (BgCheck_EntityLineTest1(&play->colCtx, &pos, &this->wallHitPos, &hitPos, &hitPoly, true, false, false, true,
                                &bgId)) {
        Math_Vec3f_Copy(&this->wallHitPos, &hitPos);
    }

    pos.x = this->actor.world.pos.x - this->wallHitPos.x;
    pos.z = this->actor.world.pos.z - this->wallHitPos.z;

    this->distToTargetSq = SQ(pos.x) + SQ(pos.z);
}

s32 EnFz_ReachedTarget(EnFz* this, Vec3f* vec) {
    if (this->distToTargetSq <= (SQ(this->actor.world.pos.x - vec->x) + SQ(this->actor.world.pos.z - vec->z))) {
        return true;
    } else {
        return false;
    }
}

void EnFz_Damaged(EnFz* this, PlayState* play, Vec3f* vec, s32 numEffects, f32 unkFloat) {
    s32 i;
    Vec3f pos;
    Vec3f vel;
    Vec3f accel;
    Color_RGBA8 primColor;
    Color_RGBA8 envColor;
    f32 scale;
    s32 life;

    primColor.r = 155;
    primColor.g = 255;
    primColor.b = 255;
    primColor.a = 255;
    envColor.r = 200;
    envColor.g = 200;
    envColor.b = 200;
    accel.x = accel.z = 0.0f;
    accel.y = -1.0f;

    for (i = 0; i < numEffects; i++) {
        scale = Rand_CenteredFloat(0.3f) + 0.6f;
        life = (s32)Rand_CenteredFloat(5.0f) + 12;
        pos.x = Rand_CenteredFloat(unkFloat) + vec->x;
        pos.y = Rand_ZeroFloat(unkFloat) + vec->y;
        pos.z = Rand_CenteredFloat(unkFloat) + vec->z;
        vel.x = Rand_CenteredFloat(10.0f);
        vel.y = Rand_ZeroFloat(10.0f) + 2.0f;
        vel.z = Rand_CenteredFloat(10.0f);
        EffectSsEnIce_Spawn(play, &pos, scale, &vel, &accel, &primColor, &envColor, life);
    }

    CollisionCheck_SpawnShieldParticles(play, vec);
}

void EnFz_SpawnIceSmokeHiddenState(EnFz* this) {
}

// Fully grown
void EnFz_SpawnIceSmokeGrowingState(EnFz* this) {
    Vec3f pos;
    Vec3f velocity;
    Vec3f accel;

    if ((this->counter % 16) == 0) {
        pos.x = Rand_CenteredFloat(40.0f) + this->actor.world.pos.x;
        pos.y = Rand_CenteredFloat(40.0f) + this->actor.world.pos.y + 30.0f;
        pos.z = Rand_CenteredFloat(40.0f) + this->actor.world.pos.z;
        accel.x = accel.z = 0.0f;
        accel.y = 0.1f;
        velocity.x = velocity.y = velocity.z = 0.0f;
        EnFz_SpawnIceSmokeNoFreeze(this, &pos, &velocity, &accel, Rand_ZeroFloat(7.5f) + 15.0f);
    }
}

// (2) Growing or Shrinking to/from hiding or (3) melting from fire
void EnFz_SpawnIceSmokeActiveState(EnFz* this) {
    Vec3f pos;
    Vec3f velocity;
    Vec3f accel;

    if ((this->counter % 4) == 0) {
        pos.x = Rand_CenteredFloat(40.0f) + this->actor.world.pos.x;
        pos.y = this->iceSmokeFreezingSpawnHeight;
        pos.z = Rand_CenteredFloat(40.0f) + this->actor.world.pos.z;
        accel.x = accel.z = 0.0f;
        accel.y = 0.1f;
        velocity.x = velocity.y = velocity.z = 0.0f;
        EnFz_SpawnIceSmokeNoFreeze(this, &pos, &velocity, &accel, Rand_ZeroFloat(7.5f) + 15.0f);
    }
}

void EnFz_ApplyDamage(EnFz* this, PlayState* play) {
    Vec3f vec;

    if (this->isMoving && ((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) ||
                           (Actor_TestFloorInDirection(&this->actor, play, 60.0f, this->actor.world.rot.y) == 0))) {
        this->actor.bgCheckFlags &= ~BGCHECKFLAG_WALL;
        this->isMoving = false;
        this->speedXZ = 0.0f;
        this->actor.speedXZ = 0.0f;
    }

    if (this->isFreezing) {
        if ((this->actor.params < 0) && (this->collider1.base.atFlags & AT_HIT)) {
            this->isMoving = false;
            this->collider1.base.acFlags &= ~AC_HIT;
            this->actor.speedXZ = this->speedXZ = 0.0f;
            this->timer = 10;
            EnFz_SetupDisappear(this);
        } else if (this->collider2.base.acFlags & AC_BOUNCED) {
            this->collider2.base.acFlags &= ~AC_BOUNCED;
            this->collider1.base.acFlags &= ~AC_HIT;
        } else if (this->collider1.base.acFlags & AC_HIT) {
            this->collider1.base.acFlags &= ~AC_HIT;
            switch (this->actor.colChkInfo.damageEffect) {
                case 0xF:
                    Actor_ApplyDamage(&this->actor);
                    Actor_SetColorFilter(&this->actor, 0x4000, 0xFF, 0x2000, 8);
                    if (this->actor.colChkInfo.health != 0) {
                        Audio_PlayActorSfx2(&this->actor, NA_SE_EN_FREEZAD_DAMAGE);
                        vec.x = this->actor.world.pos.x;
                        vec.y = this->actor.world.pos.y;
                        vec.z = this->actor.world.pos.z;
                        EnFz_Damaged(this, play, &vec, 10, 0.0f);
                        this->unusedCounter++;
                    } else {
                        Audio_PlayActorSfx2(&this->actor, NA_SE_EN_FREEZAD_DEAD);
                        Audio_PlayActorSfx2(&this->actor, NA_SE_EV_ICE_BROKEN);
                        vec.x = this->actor.world.pos.x;
                        vec.y = this->actor.world.pos.y;
                        vec.z = this->actor.world.pos.z;
                        EnFz_Damaged(this, play, &vec, 30, 10.0f);
                        EnFz_SetupDespawn(this, play);
                    }
                    break;

                case 2:
                    Actor_ApplyDamage(&this->actor);
                    Actor_SetColorFilter(&this->actor, 0x4000, 0xFF, 0x2000, 8);
                    if (this->actor.colChkInfo.health == 0) {
                        Audio_PlayActorSfx2(&this->actor, NA_SE_EN_FREEZAD_DEAD);
                        EnFz_SetupMelt(this);
                    } else {
                        Audio_PlayActorSfx2(&this->actor, NA_SE_EN_FREEZAD_DAMAGE);
                    }
                    break;

                default:
                    break;
            }
        }
    }
}

void EnFz_SetYawTowardsPlayer(EnFz* this) {
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 10, 2000, 0);
    this->actor.world.rot.y = this->actor.shape.rot.y;
}

void EnFz_SetupDisappear(EnFz* this) {
    this->state = 2;
    this->isFreezing = false;
    this->actor.flags &= ~ACTOR_FLAG_0;
    this->actionFunc = EnFz_Disappear;
}

void EnFz_Disappear(EnFz* this, PlayState* play) {
    this->envAlpha -= 16;

    if (this->envAlpha > 255) {
        this->envAlpha = 0;
    }

    if (Math_SmoothStepToF(&this->actor.scale.y, 0.0f, 1.0f, 0.0005f, 0) == 0.0f) {
        EnFz_SetupWait(this);
    }
}

void EnFz_SetupWait(EnFz* this) {
    this->state = 0;
    this->unusedNum2 = 0;
    this->unusedNum1 = 0;
    this->timer = 100;
    this->actionFunc = EnFz_Wait;
    this->actor.world.pos.x = this->posOrigin.x;
    this->actor.world.pos.y = this->posOrigin.y;
    this->actor.world.pos.z = this->posOrigin.z;
}

void EnFz_Wait(EnFz* this, PlayState* play) {
    if ((this->timer == 0) && (this->actor.xzDistToPlayer < 400.0f)) {
        EnFz_SetupAppear(this);
    }
}

void EnFz_SetupAppear(EnFz* this) {
    this->state = 2;
    this->timer = 20;
    this->unusedNum2 = 4000;
    this->actionFunc = EnFz_Appear;
}

void EnFz_Appear(EnFz* this, PlayState* play) {
    if (this->timer == 0) {
        this->envAlpha += 8;
        if (this->envAlpha > 255) {
            this->envAlpha = 255;
        }

        if (Math_SmoothStepToF(&this->actor.scale.y, 0.008f, 1.0f, 0.0005f, 0.0f) == 0.0f) {
            EnFz_SetupAimForMove(this);
        }
    }
}

void EnFz_SetupAimForMove(EnFz* this) {
    this->state = 1;
    this->timer = 40;
    this->updateBgInfo = true;
    this->isFreezing = true;
    this->actor.flags |= ACTOR_FLAG_0;
    this->actionFunc = EnFz_AimForMove;
    this->actor.gravity = -1.0f;
}

void EnFz_AimForMove(EnFz* this, PlayState* play) {
    EnFz_SetYawTowardsPlayer(this);

    if (this->timer == 0) {
        EnFz_SetupMoveTowardsPlayer(this);
    }
}

void EnFz_SetupMoveTowardsPlayer(EnFz* this) {
    this->state = 1;
    this->isMoving = true;
    this->timer = 100;
    this->actionFunc = EnFz_MoveTowardsPlayer;
    this->speedXZ = 4.0f;
}

void EnFz_MoveTowardsPlayer(EnFz* this, PlayState* play) {
    if ((this->timer == 0) || !this->isMoving) {
        EnFz_SetupAimForFreeze(this);
    }
}

void EnFz_SetupAimForFreeze(EnFz* this) {
    this->state = 1;
    this->timer = 40;
    this->actionFunc = EnFz_AimForFreeze;
    this->speedXZ = 0.0f;
    this->actor.speedXZ = 0.0f;
}

void EnFz_AimForFreeze(EnFz* this, PlayState* play) {
    EnFz_SetYawTowardsPlayer(this);

    if (this->timer == 0) {
        EnFz_SetupBlowSmoke(this, play);
    }
}

void EnFz_SetupBlowSmoke(EnFz* this, PlayState* play) {
    this->state = 1;
    this->timer = 80;
    this->actionFunc = EnFz_BlowSmoke;
    EnFz_UpdateTargetPos(this, play);
}

void EnFz_BlowSmoke(EnFz* this, PlayState* play) {
    Vec3f vec1;
    Vec3f pos;
    Vec3f velocity;
    Vec3f accel;
    u8 isTimerMod8;
    s16 primAlpha;

    if (this->timer == 0) {
        EnFz_SetupDisappear(this);
    } else if (this->timer >= 11) {
        isTimerMod8 = false;
        primAlpha = 150;
        func_8002F974(&this->actor, NA_SE_EN_FREEZAD_BREATH - SFX_FLAG);

        if ((this->timer - 10) < 16) { // t < 26
            primAlpha = (this->timer * 10) - 100;
        }

        accel.x = accel.z = 0.0f;
        accel.y = 0.6f;

        pos.x = this->actor.world.pos.x;
        pos.y = this->actor.world.pos.y + 20.0f;
        pos.z = this->actor.world.pos.z;

        Matrix_RotateY(BINANG_TO_RAD_ALT(this->actor.shape.rot.y), MTXMODE_NEW);

        vec1.x = 0.0f;
        vec1.y = -2.0f;
        vec1.z = 20.0f; // xz velocity

        Matrix_MultVec3f(&vec1, &velocity);

        if ((this->timer % 8) == 0) {
            isTimerMod8 = true;
        }

        EnFz_SpawnIceSmokeFreeze(this, &pos, &velocity, &accel, 2.0f, 25.0f, primAlpha, isTimerMod8);

        pos.x += (velocity.x * 0.5f);
        pos.y += (velocity.y * 0.5f);
        pos.z += (velocity.z * 0.5f);

        EnFz_SpawnIceSmokeFreeze(this, &pos, &velocity, &accel, 2.0f, 25.0f, primAlpha, false);
    }
}

void EnFz_SetupDespawn(EnFz* this, PlayState* play) {
    this->state = 0;
    this->updateBgInfo = true;
    this->isFreezing = false;
    this->isDespawning = true;
    this->actor.flags &= ~ACTOR_FLAG_0;
    this->isActive = false;
    this->timer = 60;
    this->speedXZ = 0.0f;
    this->actor.gravity = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.speedXZ = 0.0f;
    Actor_ChangeCategory(play, &play->actorCtx, &this->actor, ACTORCAT_PROP);
    Item_DropCollectibleRandom(play, &this->actor, &this->actor.world.pos, 0x60);
    this->actionFunc = EnFz_Despawn;
}

void EnFz_Despawn(EnFz* this, PlayState* play) {
    if (this->timer == 0) {
        Actor_Kill(&this->actor);
    }
}

void EnFz_SetupMelt(EnFz* this) {
    this->state = 3;
    this->isFreezing = false;
    this->isDespawning = true;
    this->actor.flags &= ~ACTOR_FLAG_0;
    this->actionFunc = EnFz_Melt;
    this->actor.speedXZ = 0.0f;
    this->speedXZ = 0.0f;
}

void EnFz_Melt(EnFz* this, PlayState* play) {
    Math_StepToF(&this->actor.scale.y, 0.0006f, 0.0002f);

    if (this->actor.scale.y < 0.006f) {
        this->actor.scale.x += 0.0004f;
        this->actor.scale.z += 0.0004f;
    }

    if (this->actor.scale.y < 0.004f) {
        this->envAlpha -= 8;
        if (this->envAlpha > 255) {
            this->envAlpha = 0;
        }
    }

    if (this->envAlpha == 0) {
        EnFz_SetupDespawn(this, play);
    }
}

void EnFz_SetupBlowSmokeStationary(EnFz* this) {
    this->state = 1;
    this->timer = 40;
    this->updateBgInfo = true;
    this->isFreezing = true;
    this->actor.flags |= ACTOR_FLAG_0;
    this->actionFunc = EnFz_BlowSmokeStationary;
    this->actor.gravity = -1.0f;
}

void EnFz_BlowSmokeStationary(EnFz* this, PlayState* play) {
    Vec3f vec1;
    Vec3f pos;
    Vec3f velocity;
    Vec3f accel;
    u8 isTimerMod8;
    s16 primAlpha;

    if (this->counter & 0xC0) {
        EnFz_SetYawTowardsPlayer(this);
        EnFz_UpdateTargetPos(this, play);
    } else {
        isTimerMod8 = false;
        primAlpha = 150;
        func_8002F974(&this->actor, NA_SE_EN_FREEZAD_BREATH - SFX_FLAG);

        if ((this->counter & 0x3F) >= 48) {
            primAlpha = 630 - ((this->counter & 0x3F) * 10);
        }

        accel.x = accel.z = 0.0f;
        accel.y = 0.6f;

        pos.x = this->actor.world.pos.x;
        pos.y = this->actor.world.pos.y + 20.0f;
        pos.z = this->actor.world.pos.z;

        Matrix_RotateY(BINANG_TO_RAD_ALT(this->actor.shape.rot.y), MTXMODE_NEW);

        vec1.x = 0.0f;
        vec1.y = -2.0f;
        vec1.z = 20.0f;

        Matrix_MultVec3f(&vec1, &velocity);

        if ((this->counter % 8) == 0) {
            isTimerMod8 = true;
        }

        EnFz_SpawnIceSmokeFreeze(this, &pos, &velocity, &accel, 2.0f, 25.0f, primAlpha, isTimerMod8);

        pos.x += (velocity.x * 0.5f);
        pos.y += (velocity.y * 0.5f);
        pos.z += (velocity.z * 0.5f);

        EnFz_SpawnIceSmokeFreeze(this, &pos, &velocity, &accel, 2.0f, 25.0f, primAlpha, false);
    }
}

static EnFzSpawnIceSmokeFunc iceSmokeSpawnFuncs[] = {
    EnFz_SpawnIceSmokeHiddenState,
    EnFz_SpawnIceSmokeGrowingState,
    EnFz_SpawnIceSmokeActiveState,
    EnFz_SpawnIceSmokeActiveState,
};

void EnFz_Update(Actor* thisx, PlayState* play) {
    EnFz* this = (EnFz*)thisx;
    s32 pad;

    this->counter++;

    if (this->unusedTimer1 != 0) {
        this->unusedTimer1--;
    }

    if (this->timer != 0) {
        this->timer--;
    }

    if (this->unusedTimer2 != 0) {
        this->unusedTimer2--;
    }

    Actor_SetFocus(&this->actor, 50.0f);
    EnFz_ApplyDamage(this, play);
    this->actionFunc(this, play);
    if (this->isDespawning == false) {
        Collider_UpdateCylinder(&this->actor, &this->collider1);
        Collider_UpdateCylinder(&this->actor, &this->collider2);
        if (this->isFreezing) {
            if (this->actor.colorFilterTimer == 0) {
                CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider1.base);
                CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider2.base);
            }
            CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider1.base);
        }
    }

    Math_StepToF(&this->actor.speedXZ, this->speedXZ, 0.2f);
    Actor_MoveForward(&this->actor);

    if (this->updateBgInfo) {
        Actor_UpdateBgCheckInfo(play, &this->actor, 20.0f, 20.0f, 20.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
    }

    iceSmokeSpawnFuncs[this->state](this);
    EnFz_UpdateIceSmoke(this, play);
}

void EnFz_Draw(Actor* thisx, PlayState* play) {
    static Gfx* displayLists[] = {
        gFreezardIntactDL,              // Body fully intact           (5 or 6 health)
        gFreezardTopRightHornChippedDL, // Top right horn chipped off  (from Freezards perspective)   (3 or 4 health)
        gFreezardHeadChippedDL,         // Entire head chipped off     (1 or 2 health)
    };
    EnFz* this = (EnFz*)thisx;
    s32 pad;
    s32 index;

    index = (6 - this->actor.colChkInfo.health) >> 1;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_fz.c", 1167);

    if (1) {}

    if (this->actor.colChkInfo.health == 0) {
        index = 2;
    }

    if (this->isActive) {
        func_8002ED80(&this->actor, play, 0);
        Gfx_SetupDL_25Xlu(play->state.gfxCtx);
        gSPSegment(POLY_XLU_DISP++, 0x08,
                   Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, play->state.frames & 0x7F, 32, 32, 1, 0,
                                    (2 * play->state.frames) & 0x7F, 32, 32));
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_en_fz.c", 1183),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gDPSetCombineLERP(POLY_XLU_DISP++, TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, TEXEL0, PRIMITIVE, TEXEL0,
                          PRIMITIVE, ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, ENVIRONMENT, 0);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 128, 155, 255, 255, 255);
        gDPSetEnvColor(POLY_XLU_DISP++, 200, 200, 200, this->envAlpha);
        gSPDisplayList(POLY_XLU_DISP++, displayLists[index]);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_fz.c", 1200);
    EnFz_DrawEffects(this, play);
}

void EnFz_SpawnIceSmokeNoFreeze(EnFz* this, Vec3f* pos, Vec3f* velocity, Vec3f* accel, f32 xyScale) {
    EnFzEffect* effect = this->effects;
    s16 i;

    for (i = 0; i < EN_FZ_EFFECT_COUNT; i++) {
        if (effect->type == 0) {
            effect->type = 1;
            effect->pos = *pos;
            effect->velocity = *velocity;
            effect->accel = *accel;
            effect->primAlphaState = 0;
            effect->xyScale = xyScale / 1000.0f;
            effect->primAlpha = 0;
            effect->timer = 0;
            break;
        }

        effect++;
    }
}

void EnFz_SpawnIceSmokeFreeze(EnFz* this, Vec3f* pos, Vec3f* velocity, Vec3f* accel, f32 xyScale, f32 xyScaleTarget,
                              s16 primAlpha, u8 isTimerMod8) {
    EnFzEffect* effect = this->effects;
    s16 i;

    for (i = 0; i < EN_FZ_EFFECT_COUNT; i++) {
        if (effect->type == 0) {
            effect->type = 2;
            effect->pos = *pos;
            effect->velocity = *velocity;
            effect->accel = *accel;
            effect->primAlphaState = 0;
            effect->xyScale = xyScale / 1000.0f;
            effect->xyScaleTarget = xyScaleTarget / 1000.0f;
            effect->primAlpha = primAlpha;
            effect->timer = 0;
            effect->isTimerMod8 = isTimerMod8;
            break;
        }

        effect++;
    }
}

void EnFz_UpdateIceSmoke(EnFz* this, PlayState* play) {
    EnFzEffect* effect = this->effects;
    s16 i;
    Vec3f pos;

    for (i = 0; i < EN_FZ_EFFECT_COUNT; i++) {
        if (effect->type) {
            effect->pos.x += effect->velocity.x;
            effect->pos.y += effect->velocity.y;
            effect->pos.z += effect->velocity.z;
            effect->timer++;
            effect->velocity.x += effect->accel.x;
            effect->velocity.y += effect->accel.y;
            effect->velocity.z += effect->accel.z;
            if (effect->type == 1) {
                if (effect->primAlphaState == 0) { // Becoming more opaque
                    effect->primAlpha += 10;
                    if (effect->primAlpha >= 100) {
                        effect->primAlphaState++;
                    }
                } else { // Becoming more transparent
                    effect->primAlpha -= 3;
                    if (effect->primAlpha <= 0) {
                        effect->primAlpha = 0;
                        effect->type = 0;
                    }
                }
            } else if (effect->type == 2) { // Freezing
                Math_ApproachF(&effect->xyScale, effect->xyScaleTarget, 0.1f, effect->xyScaleTarget / 10.0f);
                if (effect->primAlphaState == 0) { // Becoming more opaque
                    if (effect->timer >= 7) {
                        effect->primAlphaState++;
                    }
                } else { // Becoming more transparent, slows down
                    effect->accel.y = 2.0f;
                    effect->primAlpha -= 17;
                    effect->velocity.x *= 0.75f;
                    effect->velocity.z *= 0.75f;
                    if (effect->primAlpha <= 0) {
                        effect->primAlpha = 0;
                        effect->type = 0;
                    }
                }

                if ((this->unusedTimer2 == 0) && (effect->primAlpha >= 101) && effect->isTimerMod8) {
                    this->collider3.dim.pos.x = (s16)effect->pos.x;
                    this->collider3.dim.pos.y = (s16)effect->pos.y;
                    this->collider3.dim.pos.z = (s16)effect->pos.z;
                    CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider3.base);
                }

                pos.x = effect->pos.x;
                pos.y = effect->pos.y + 10.0f;
                pos.z = effect->pos.z;

                if ((effect->primAlphaState != 2) && EnFz_ReachedTarget(this, &pos)) {
                    effect->primAlphaState = 2;
                    effect->velocity.x = 0.0f;
                    effect->velocity.z = 0.0f;
                }
            }
        }
        effect++;
    }
}

void EnFz_DrawEffects(EnFz* this, PlayState* play) {
    EnFzEffect* effect = this->effects;
    s16 i;
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    u8 materialFlag = 0;

    OPEN_DISPS(gfxCtx, "../z_en_fz.c", 1384);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    for (i = 0; i < EN_FZ_EFFECT_COUNT; i++) {
        if (effect->type > 0) {
            gDPPipeSync(POLY_XLU_DISP++);

            if (!materialFlag) {
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gFreezardSteamStartDL));
                materialFlag++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 195, 225, 235, effect->primAlpha);
            gSPSegment(POLY_XLU_DISP++, 0x08,
                       Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 3 * (effect->timer + (3 * i)),
                                        15 * (effect->timer + (3 * i)), 32, 64, 1, 0, 0, 32, 32));
            Matrix_Translate(effect->pos.x, effect->pos.y, effect->pos.z, MTXMODE_NEW);
            Matrix_ReplaceRotation(&play->billboardMtxF);
            Matrix_Scale(effect->xyScale, effect->xyScale, 1.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_fz.c", 1424),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gFreezardSteamDL));
        }

        effect++;
    }

    CLOSE_DISPS(gfxCtx, "../z_en_fz.c", 1430);
}
