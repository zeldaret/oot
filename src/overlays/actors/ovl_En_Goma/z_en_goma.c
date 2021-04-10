#include "z_en_goma.h"
#include "objects/gameplay_dangeon_keep/gameplay_dangeon_keep.h"
#include "overlays/actors/ovl_Boss_Goma/z_boss_goma.h"

#define FLAGS 0x00000035

#define THIS ((EnGoma*)thisx)

void EnGoma_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGoma_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGoma_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGoma_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnGoma_Flee(EnGoma* this, GlobalContext* globalCtx);
void EnGoma_EggFallToGround(EnGoma* this, GlobalContext* globalCtx);
void EnGoma_Egg(EnGoma* this, GlobalContext* globalCtx);
void EnGoma_Hatch(EnGoma* this, GlobalContext* globalCtx);
void EnGoma_Hurt(EnGoma* this, GlobalContext* globalCtx);
void EnGoma_Die(EnGoma* this, GlobalContext* globalCtx);
void EnGoma_Dead(EnGoma* this, GlobalContext* globalCtx);
void EnGoma_PrepareJump(EnGoma* this, GlobalContext* globalCtx);
void EnGoma_Land(EnGoma* this, GlobalContext* globalCtx);
void EnGoma_Jump(EnGoma* this, GlobalContext* globalCtx);
void EnGoma_Stand(EnGoma* this, GlobalContext* globalCtx);
void EnGoma_ChasePlayer(EnGoma* this, GlobalContext* globalCtx);
void EnGoma_Stunned(EnGoma* this, GlobalContext* globalCtx);
void EnGoma_LookAtPlayer(EnGoma* this, GlobalContext* globalCtx);
void EnGoma_UpdateHit(EnGoma* this, GlobalContext* globalCtx);
void EnGoma_Debris(EnGoma* this, GlobalContext* globalCtx);
void EnGoma_SpawnHatchDebris(EnGoma* this, GlobalContext* globalCtx);
void EnGoma_BossLimb(EnGoma* this, GlobalContext* globalCtx);

void EnGoma_SetupFlee(EnGoma* this);
void EnGoma_SetupHatch(EnGoma* this, GlobalContext* globalCtx);
void EnGoma_SetupHurt(EnGoma* this, GlobalContext* globalCtx);
void EnGoma_SetupDie(EnGoma* this);
void EnGoma_SetupDead(EnGoma* this);
void EnGoma_SetupStand(EnGoma* this);
void EnGoma_SetupChasePlayer(EnGoma* this);
void EnGoma_SetupPrepareJump(EnGoma* this);
void EnGoma_SetupLand(EnGoma* this);
void EnGoma_SetupJump(EnGoma* this);
void EnGoma_SetupStunned(EnGoma* this, GlobalContext* globalCtx);

extern AnimationHeader D_0600017C;
extern AnimationHeader D_06000334;
extern AnimationHeader D_06000544;
extern AnimationHeader D_06000838;
extern AnimationHeader D_06000B78;
extern AnimationHeader D_06000E4C;
extern AnimationHeader D_06001548;
extern Gfx D_06002A70[]; // Egg DL
extern SkeletonHeader D_06003B40;
extern AnimationHeader D_06003D78;

const ActorInit En_Goma_InitVars = {
    ACTOR_BOSS_GOMA,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_GOL,
    sizeof(EnGoma),
    (ActorFunc)EnGoma_Init,
    (ActorFunc)EnGoma_Destroy,
    (ActorFunc)EnGoma_Update,
    (ActorFunc)EnGoma_Draw,
};

static ColliderCylinderInit D_80A4B7A0 = {
    {
        COLTYPE_HIT3,
        AT_ON | AT_TYPE_ENEMY,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x00, 0x08 },
        { 0xFFDFFFFF, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL,
        BUMP_NONE,
        OCELEM_ON,
    },
    { 15, 30, 10, { 0, 0, 0 } },
};

static ColliderCylinderInit D_80A4B7CC = {
    {
        COLTYPE_HIT3,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x00, 0x08 },
        { 0xFFDFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_NONE,
    },
    { 15, 30, 10, { 0, 0, 0 } },
};

static u8 sSpawnNum = 0;
static Vec3f sDeadEffectVel = { 0.0f, 0.0f, 0.0f };

static InitChainEntry sInitChain[] = {
    ICHAIN_U8(targetMode, 3, ICHAIN_CONTINUE),
    ICHAIN_S8(naviEnemyId, 3, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 0, ICHAIN_CONTINUE),
    ICHAIN_F32(targetArrowOffset, 20, ICHAIN_STOP),
};

void EnGoma_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnGoma* this = THIS;
    s16 params;

    this->eggTimer = Rand_ZeroOne() * 200.0f;
    Actor_ProcessInitChain(thisx, sInitChain);
    Actor_SetScale(thisx, 0.01f);
    params = this->actor.params;

    if (params >= 100) { // piece of boss goma
        Actor_ChangeCategory(globalCtx, &globalCtx->actorCtx, thisx, ACTORCAT_BOSS);
        this->actionFunc = EnGoma_BossLimb;
        this->gomaType = ENGOMA_BOSSLIMB;
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 0.0f);
        this->actionTimer = thisx->params + 150;
        this->actor.flags &= ~1;
    } else if (params >= 10) { // Debris when hatching
        this->actor.gravity = -1.3f;
        this->actor.flags &= ~1;
        this->actionTimer = 50;
        this->gomaType = ENGOMA_HATCH_DEBRIS;
        this->eggScale = 1.0f;
        this->actor.velocity.y = Rand_ZeroOne() * 5.0f + 5.0f;
        this->actionFunc = EnGoma_Debris;
        this->actor.speedXZ = Rand_ZeroOne() * 2.3f + 1.5f;
        this->actionTimer = 30;
        this->actor.scale.x = Rand_ZeroOne() * 0.005f + 0.01f;
        this->actor.scale.y = Rand_ZeroOne() * 0.005f + 0.01f;
        this->actor.scale.z = Rand_ZeroOne() * 0.005f + 0.01f;
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 0.0f);
    } else { // Egg
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 40.0f);
        SkelAnime_Init(globalCtx, &this->skelanime, &D_06003B40, &D_06001548, this->jointTable, this->morphTable, 24);
        Animation_PlayLoop(&this->skelanime, &D_06001548);
        this->actor.colChkInfo.health = 2;

        if (thisx->params < 3) { // Spawned by boss
            this->actionFunc = EnGoma_EggFallToGround;
            this->invincibilityTimer = 10;
            this->actor.speedXZ = 1.5f;
        } else if (thisx->params == 8 || thisx->params == 6) {
            this->actionFunc = EnGoma_Egg;
            this->spawnNum = sSpawnNum++;
        } else if (thisx->params == 9 || thisx->params == 7) {
            this->actionFunc = EnGoma_Egg;
        }

        if (thisx->params >= 8) { // on ceiling
            this->eggYOffset = -1500.0f;
        } else {
            this->eggYOffset = 1500.0f;
        }

        this->gomaType = ENGOMA_EGG;
        this->eggScale = 1.0f;
        this->eggSquishAngle = Rand_ZeroOne() * 1000.0f;
        this->actionTimer = 50;
        Collider_InitCylinder(globalCtx, &this->colCyl1);
        Collider_SetCylinder(globalCtx, &this->colCyl1, thisx, &D_80A4B7A0);
        Collider_InitCylinder(globalCtx, &this->colCyl2);
        Collider_SetCylinder(globalCtx, &this->colCyl2, thisx, &D_80A4B7CC);
    }
}

void EnGoma_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnGoma* this = THIS;

    if (this->actor.params < 10) {
        Collider_DestroyCylinder(globalCtx, &this->colCyl1);
        Collider_DestroyCylinder(globalCtx, &this->colCyl2);
    }
}

void EnGoma_SetupFlee(EnGoma* this) {
    Animation_Change(&this->skelanime, &D_06003D78, 2.0f, 0.0f, Animation_GetLastFrame(&D_06003D78), 0, -2.0f);
    this->actionFunc = &EnGoma_Flee;
    this->actionTimer = 20;

    if (this->actor.params < 6) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_BJR_DAM2);
    } else {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_DAM2);
    }
}

void EnGoma_Flee(EnGoma* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelanime);
    Math_ApproachF(&this->actor.speedXZ, 6.6666665f, 0.5f, 2.0f);
    Math_ApproachS(&this->actor.world.rot.y, Actor_WorldYawTowardActor(&this->actor, &PLAYER->actor) + 0x8000, 3, 2000);
    Math_ApproachS(&this->actor.shape.rot.y, this->actor.world.rot.y, 2, 3000);

    if (this->actionTimer == 0) {
        EnGoma_SetupStand(this);
    }
}

void EnGoma_EggFallToGround(EnGoma* this, GlobalContext* globalCtx) {
    this->actor.gravity = -1.3f;
    this->eggSquishAccel += 0.03f;
    this->eggSquishAngle += 1.0f + this->eggSquishAccel;
    Math_ApproachZeroF(&this->eggSquishAmount, 1.0f, 0.005f);
    Math_ApproachF(&this->eggYOffset, 1500.0f, 1.0f, 150.0f);

    switch (this->hatchState) {
        case 0:
            if (this->actor.bgCheckFlags & 1) { // floor
                if (this->actor.params < 6) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_BJR_EGG1);
                } else {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_EGG1);
                }

                if (this->actor.params > 5) {
                    EnGoma_SetupHatch(this, globalCtx);
                } else {
                    this->hatchState = 1;
                    this->actionTimer = 3;
                    Math_ApproachF(&this->eggScale, 1.5f, 0.5f, 1.0f);
                }
            }
            break;

        case 1:
            if (this->actionTimer == 0) {
                this->hatchState = 2;
                this->actionTimer = 3;
                Math_ApproachF(&this->eggScale, 0.75f, 0.5f, 1.0f);
                this->actor.velocity.y = 5.0f;
                this->actor.speedXZ = 2.0f;
            } else {
                Math_ApproachF(&this->eggScale, 1.5f, 0.5f, 1.0f);
            }
            break;

        case 2:
            if (this->actionTimer == 0) {
                this->hatchState = 3;
                this->actionTimer = 80;
            } else {
                Math_ApproachF(&this->eggScale, 0.75f, 0.5f, 1.0f);
            }
            break;

        case 3:
            Math_ApproachF(&this->eggScale, 1.0f, 0.1f, 0.1f);
            if (this->actionTimer == 0) {
                EnGoma_SetupHatch(this, globalCtx);
            }
            break;
    }

    if (this->actor.bgCheckFlags & 1) {
        Math_ApproachZeroF(&this->actor.speedXZ, 0.2f, 0.05f);
    }
    this->eggPitch += (this->actor.speedXZ * 0.1f);
    this->actor.shape.rot.y = this->actor.world.rot.y;
}

void EnGoma_Egg(EnGoma* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 i;

    this->eggSquishAngle += 1.0f;
    Math_ApproachF(&this->eggSquishAmount, 0.1f, 1.0f, 0.005f);
    if (fabsf(this->actor.world.pos.x - player->actor.world.pos.x) < 100.0f &&
        fabsf(this->actor.world.pos.z - player->actor.world.pos.z) < 100.0f) {
        if (++this->playerDetectionTimer > 9) {
            this->actionFunc = EnGoma_EggFallToGround;
        }
    } else {
        this->playerDetectionTimer = 0;
    }

    if (!(this->eggTimer & 0xF) && Rand_ZeroOne() < 0.5f) {
        for (i = 0; i < 2; i++) {
            Vec3f vel = { 0.0f, 0.0f, 0.0f };
            Vec3f acc = { 0.0f, -0.5f, 0.0f };
            Vec3f pos;

            // lol poop
            pos.x = Rand_CenteredFloat(30.0f) + this->actor.world.pos.x;
            pos.y = Rand_ZeroFloat(30.0f) + this->actor.world.pos.y;
            pos.z = Rand_CenteredFloat(30.0f) + this->actor.world.pos.z;
            EffectSsHahen_Spawn(globalCtx, &pos, &vel, &acc, 0, (s16)(Rand_ZeroOne() * 5.0f) + 10, -1, 10, 0);
        }
    }
}

void EnGoma_SetupHatch(EnGoma* this, GlobalContext* globalCtx) {
    Animation_Change(&this->skelanime, &D_06000544, 1.0f, 0.0f, Animation_GetLastFrame(&D_06000544), 2, 0.0f);
    this->actionFunc = &EnGoma_Hatch;
    Actor_SetScale(&this->actor, 0.005f);
    this->gomaType = ENGOMA_NORMAL;
    this->actionTimer = 5;
    this->actor.shape.rot.y = Actor_WorldYawTowardActor(&this->actor, &PLAYER->actor);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    EnGoma_SpawnHatchDebris(this, globalCtx);
    this->eggScale = 1.0f;
    this->actor.speedXZ = 0.0f;
}

void EnGoma_Hatch(EnGoma* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelanime);
    if (this->actionTimer == 0) {
        EnGoma_SetupStand(this);
    }
}

void EnGoma_SetupHurt(EnGoma* this, GlobalContext* globalCtx) {
    Animation_Change(&this->skelanime, &D_06000838, 1.0f, 0.0f, Animation_GetLastFrame(&D_06000838), 2, -2.0f);
    this->actionFunc = &EnGoma_Hurt;

    if ((s8)this->actor.colChkInfo.health <= 0) {
        this->actionTimer = 5;
        func_80032C7C(globalCtx, &this->actor);
    } else {
        this->actionTimer = 10;
    }

    this->actor.speedXZ = 20.0f;
    this->actor.world.rot.y = this->actor.yawTowardsPlayer + 0x8000;
    if (this->actor.params < 6) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_BJR_DAM1);
    } else {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_DAM1);
    }
}

void EnGoma_Hurt(EnGoma* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelanime);

    if ((this->actor.bgCheckFlags & 1) != 0) {
        Math_ApproachZeroF(&this->actor.speedXZ, 1.0f, 2.0f);
    }

    if (this->actionTimer == 0) {
        if ((s8)this->actor.colChkInfo.health <= 0) {
            EnGoma_SetupDie(this);
        } else {
            EnGoma_SetupFlee(this);
        }
    }
}

void EnGoma_SetupDie(EnGoma* this) {
    Animation_Change(&this->skelanime, &D_06000B78, 1.0f, 0.0f, Animation_GetLastFrame(&D_06000B78), 2, -2.0f);
    this->actionFunc = &EnGoma_Die;
    this->actionTimer = 30;

    if (this->actor.params < 6) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_BJR_DEAD);
    } else {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_DEAD);
    }

    this->invincibilityTimer = 100;
    this->actor.flags &= ~1;
}

void EnGoma_Die(EnGoma* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelanime);

    if ((this->actor.bgCheckFlags & 1) != 0) {
        Math_ApproachZeroF(&this->actor.speedXZ, 1.0f, 2.0f);
    }

    if (this->actionTimer == 17) {
        if (this->actor.params < 6) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_BJR_LAND);
        } else {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_LAND);
        }
    }

    if (this->actionTimer == 0) {
        EnGoma_SetupDead(this);
    }
}

void EnGoma_SetupDead(EnGoma* this) {
    Animation_Change(&this->skelanime, &D_06000334, 1.0f, 0.0f, Animation_GetLastFrame(&D_06000334), 0, -2.0f);
    this->actionFunc = &EnGoma_Dead;
    this->actionTimer = 3;
}

void EnGoma_Dead(EnGoma* this, GlobalContext* globalCtx) {
    Vec3f accel;
    Vec3f pos;

    SkelAnime_Update(&this->skelanime);
    Math_ApproachZeroF(&this->actor.speedXZ, 1.0f, 2.0f);

    if (this->actionTimer == 2) {
        pos.x = this->actor.world.pos.x;
        pos.y = (this->actor.world.pos.y + 5.0f) - 10.0f;
        pos.z = this->actor.world.pos.z;
        accel = sDeadEffectVel;
        accel.y = 0.03f;
        EffectSsKFire_Spawn(globalCtx, &pos, &sDeadEffectVel, &accel, 40, 0);
    }

    if (this->actionTimer == 0 && Math_SmoothStepToF(&this->actor.scale.y, 0.0f, 0.5f, 0.00225f, 0.00001f) <= 0.001f) {
        if (this->actor.params < 6) {
            BossGoma* parent = (BossGoma*)this->actor.parent;
            parent->childrenGohmaState[this->actor.params] = -1;
        }
        Audio_PlaySoundGeneral(NA_SE_EN_EXTINCT, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        Actor_Kill(&this->actor);
        Item_DropCollectibleRandom(globalCtx, NULL, &this->actor.world.pos, 48);
    }
    this->visualState = 2;
}

void EnGoma_SetupStand(EnGoma* this) {
    f32 lastFrame;

    lastFrame = Animation_GetLastFrame(&D_06001548);
    this->actionTimer = Rand_S16Offset(10, 30);
    Animation_Change(&this->skelanime, &D_06001548, 1.0f, 0.0f, lastFrame, 0, -5.0f);
    this->actionFunc = &EnGoma_Stand;
    this->gomaType = ENGOMA_NORMAL;
}

void EnGoma_SetupChasePlayer(EnGoma* this) {
    Animation_Change(&this->skelanime, &D_06003D78, 1.0f, 0.0f, Animation_GetLastFrame(&D_06003D78), 0, -5.0f);
    this->actionFunc = &EnGoma_ChasePlayer;
    this->actionTimer = Rand_S16Offset(70, 110);
}

void EnGoma_SetupPrepareJump(EnGoma* this) {
    Animation_Change(&this->skelanime, &D_06000E4C, 1.0f, 0.0f, Animation_GetLastFrame(&D_06000E4C), 2, -5.0f);
    this->actionFunc = &EnGoma_PrepareJump;
    this->actionTimer = 30;
}

void EnGoma_PrepareJump(EnGoma* this, GlobalContext* globalCtx) {
    s16 targetAngle;

    SkelAnime_Update(&this->skelanime);
    Math_ApproachZeroF(&this->actor.speedXZ, 0.5f, 2.0f);

    targetAngle = Actor_WorldYawTowardActor(&this->actor, &PLAYER->actor);
    Math_ApproachS(&this->actor.world.rot.y, targetAngle, 2, 4000);
    Math_ApproachS(&this->actor.shape.rot.y, targetAngle, 2, 3000);

    if (this->actionTimer == 0) {
        EnGoma_SetupJump(this);
    }
    this->visualState = 0;
}

void EnGoma_SetupLand(EnGoma* this) {
    Animation_Change(&this->skelanime, &D_0600017C, 1.0f, 0.0f, Animation_GetLastFrame(&D_0600017C), 2, 0.0f);
    this->actionFunc = &EnGoma_Land;
    this->actionTimer = 10;
}

void EnGoma_Land(EnGoma* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelanime);

    if ((this->actor.bgCheckFlags & 1) != 0) {
        Math_ApproachZeroF(&this->actor.speedXZ, 1.0f, 2.0f);
    }
    if (this->actionTimer == 0) {
        EnGoma_SetupStand(this);
    }
}

void EnGoma_SetupJump(EnGoma* this) {
    Animation_Change(&this->skelanime, &D_06000544, 1.0f, 0.0f, Animation_GetLastFrame(&D_06000544), 2, 0.0f);
    this->actionFunc = &EnGoma_Jump;
    this->actor.velocity.y = 8.0f;

    if (this->actor.params < 6) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_BJR_CRY);
    } else {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_CRY);
    }
}

void EnGoma_Jump(EnGoma* this, GlobalContext* globalCtx) {
    this->actor.flags |= 0x1000000;
    SkelAnime_Update(&this->skelanime);
    Math_ApproachF(&this->actor.speedXZ, 10.0f, 0.5f, 5.0f);

    if (this->actor.velocity.y <= 0.0f && (this->actor.bgCheckFlags & 1)) {
        EnGoma_SetupLand(this);
        if (this->actor.params < 6) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_BJR_LAND2);
        } else {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_LAND2);
        }
    }
    this->visualState = 0;
}

void EnGoma_Stand(EnGoma* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelanime);
    Math_ApproachZeroF(&this->actor.speedXZ, 0.5f, 2.0f);
    Math_ApproachS(&this->actor.shape.rot.y, Actor_WorldYawTowardActor(&this->actor, &PLAYER->actor), 2, 3000);

    if (this->actionTimer == 0) {
        EnGoma_SetupChasePlayer(this);
    }
}

void EnGoma_ChasePlayer(EnGoma* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelanime);

    if (Animation_OnFrame(&this->skelanime, 1.0f) || Animation_OnFrame(&this->skelanime, 5.0f)) {
        if (this->actor.params < 6) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_BJR_WALK);
        } else {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_WALK);
        }
    }

    Math_ApproachF(&this->actor.speedXZ, 3.3333333f, 0.5f, 2.0f);
    Math_ApproachS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 3, 2000);
    Math_ApproachS(&this->actor.shape.rot.y, this->actor.world.rot.y, 2, 3000);

    if (this->actor.bgCheckFlags & 1) {
        this->actor.velocity.y = 0.0f;
    }
    if (this->actor.xzDistToPlayer <= 150.0f) {
        EnGoma_SetupPrepareJump(this);
    }
}

void EnGoma_SetupStunned(EnGoma* this, GlobalContext* globalCtx) {
    this->actionFunc = EnGoma_Stunned;
    this->stunTimer = 100;
    Animation_MorphToLoop(&this->skelanime, &D_06001548, -5.0f);
    this->actionTimer = (s16)Rand_ZeroFloat(15.0f) + 3;

    if (this->actor.params < 6) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_BJR_FREEZE);
    } else {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    }
}

void EnGoma_Stunned(EnGoma* this, GlobalContext* globalCtx) {
    Actor_SetColorFilter(&this->actor, 0, 180, 0, 2);
    this->visualState = 2;

    if (this->actionTimer != 0) {
        SkelAnime_Update(&this->skelanime);
    }

    if (this->actor.bgCheckFlags & 1) {
        this->actor.velocity.y = 0.0f;
        Math_ApproachZeroF(&this->actor.speedXZ, 0.5f, 2.0f);
    }

    if (this->stunTimer == 0) {
        EnGoma_SetupStand(this);
    } else if (--this->stunTimer < 30) {
        if (this->stunTimer & 1) {
            this->actor.world.pos.x += 1.5f;
            this->actor.world.pos.z += 1.5f;
        } else {
            this->actor.world.pos.x -= 1.5f;
            this->actor.world.pos.z -= 1.5f;
        }
    }
}

void EnGoma_LookAtPlayer(EnGoma* this, GlobalContext* globalCtx) {
    s16 eyePitch;
    s16 eyeYaw;

    eyeYaw = Actor_WorldYawTowardActor(&this->actor, &PLAYER->actor) - this->actor.shape.rot.y;
    eyePitch = Actor_WorldPitchTowardActor(&this->actor, &PLAYER->actor) - this->actor.shape.rot.x;

    if (eyeYaw > 6000) {
        eyeYaw = 6000;
    }
    if (eyeYaw < -6000) {
        eyeYaw = -6000;
    }
    Math_ApproachS(&this->eyeYaw, eyeYaw, 3, 2000);
    Math_ApproachS(&this->eyePitch, eyePitch, 3, 2000);
}

void EnGoma_UpdateHit(EnGoma* this, GlobalContext* globalCtx) {
    static Vec3f sShieldKnockbackVel = { 0, 0, 20 };
    Player* player = PLAYER;

    if (this->hurtTimer != 0) {
        this->hurtTimer--;
    } else {
        ColliderInfo* acHitInfo;
        u8 swordDamage;

        if ((this->colCyl1.base.atFlags & 2) && this->actionFunc == EnGoma_Jump) {
            EnGoma_SetupLand(this);
            this->actor.speedXZ = 0.0f;
            this->actor.velocity.y = 0.0f;
        }

        if ((this->colCyl2.base.acFlags & 2) && (s8)this->actor.colChkInfo.health > 0) {
            acHitInfo = this->colCyl2.info.acHitInfo;
            this->colCyl2.base.acFlags &= ~2;

            if (this->gomaType == ENGOMA_NORMAL) {
                u32 dmgFlags = acHitInfo->toucher.dmgFlags;

                if (dmgFlags & 0x100000) {
                    if (this->actionFunc == EnGoma_Jump) {
                        EnGoma_SetupLand(this);
                        this->actor.velocity.y = 0.0f;
                        this->actor.speedXZ = -5.0f;
                    } else {
                        Matrix_RotateY(player->actor.shape.rot.y / 32768.0f * 3.1415927f, 0);
                        Matrix_MultVec3f(&sShieldKnockbackVel, &this->shieldKnockbackVel);
                        this->invincibilityTimer = 5;
                    }
                } else if (dmgFlags & 1) { // stun
                    if (this->actionFunc != EnGoma_Stunned) {
                        EnGoma_SetupStunned(this, globalCtx);
                        this->hurtTimer = 8;
                    }
                } else {
                    swordDamage = CollisionCheck_GetSwordDamage(dmgFlags);

                    if (swordDamage) {
                        EffectSsSibuki_SpawnBurst(globalCtx, &this->actor.focus.pos);
                    } else {
                        swordDamage = 1;
                    }

                    this->actor.colChkInfo.health -= swordDamage;
                    EnGoma_SetupHurt(this, globalCtx);
                    Actor_SetColorFilter(&this->actor, 0x4000, 255, 0, 5);
                    this->hurtTimer = 13;
                }
            } else {                           // die if still an egg
                if (this->actor.params <= 5) { //! BossGoma only has 3 children
                    BossGoma* parent = (BossGoma*)this->actor.parent;
                    parent->childrenGohmaState[this->actor.params] = -1;
                }

                EnGoma_SpawnHatchDebris(this, globalCtx);
                Actor_Kill(&this->actor);
            }
        }
    }
}

void EnGoma_UpdateEyeEnvColor(EnGoma* this) {
    static f32 sTargetEyeEnvColors[][3] = {
        { 255.0f, 0.0f, 50.0f },
        { 17.0f, 255.0f, 50.0f },
        { 0.0f, 170.0f, 50.0f },
    };

    Math_ApproachF(&this->eyeEnvColor[0], sTargetEyeEnvColors[0][this->visualState], 0.5f, 20.0f);
    Math_ApproachF(&this->eyeEnvColor[1], sTargetEyeEnvColors[1][this->visualState], 0.5f, 20.0f);
    Math_ApproachF(&this->eyeEnvColor[2], sTargetEyeEnvColors[2][this->visualState], 0.5f, 20.0f);
}

void EnGoma_SetFloorRot(EnGoma* this) {
    f32 nx;
    f32 ny;
    f32 nz;

    if (this->actor.floorPoly != 0) {
        nx = COLPOLY_GET_NORMAL(this->actor.floorPoly->normal.x);
        ny = COLPOLY_GET_NORMAL(this->actor.floorPoly->normal.y);
        nz = COLPOLY_GET_NORMAL(this->actor.floorPoly->normal.z);
        Math_ApproachS(&this->slopePitch, -Math_FAtan2F(-nz * ny, 1.0f) * 10430.378f, 1, 1000);
        Math_ApproachS(&this->slopeRoll, Math_FAtan2F(-nx * ny, 1.0f) * 10430.378f, 1, 1000);
    }
}

void EnGoma_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnGoma* this = THIS;
    s32 pad;
    Player* player = PLAYER;

    if (this->actionTimer != 0) {
        this->actionTimer--;
    }
    if (this->invincibilityTimer != 0) {
        this->invincibilityTimer--;
    }

    this->actionFunc(this, globalCtx);
    Actor_MoveForward(thisx);
    this->actor.world.pos.x = this->actor.world.pos.x + this->shieldKnockbackVel.x;
    this->actor.world.pos.z = this->actor.world.pos.z + this->shieldKnockbackVel.z;
    Math_ApproachZeroF(&this->shieldKnockbackVel.x, 1.0f, 3.0f);
    Math_ApproachZeroF(&this->shieldKnockbackVel.z, 1.0f, 3.0f);

    if (this->actor.params < 10) {
        this->eggTimer++;
        Math_SmoothStepToF(&this->actor.scale.x, 0.01f, 0.5f, 0.00075f, 0.000001f);
        Math_SmoothStepToF(&this->actor.scale.y, 0.01f, 0.5f, 0.00075f, 0.000001f);
        Math_SmoothStepToF(&this->actor.scale.z, 0.01f, 0.5f, 0.00075f, 0.000001f);
        EnGoma_UpdateHit(this, globalCtx);
        Actor_UpdateBgCheckInfo(globalCtx, thisx, 50.0f, 50.0f, 100.0f, 5);
        EnGoma_SetFloorRot(this);
        Actor_SetFocus(thisx, 20.0f);
        EnGoma_LookAtPlayer(this, globalCtx);
        EnGoma_UpdateEyeEnvColor(this);
        this->visualState = 1;
        if (player->swordState != 0) {
            this->colCyl2.dim.radius = 35;
            this->colCyl2.dim.height = 35;
            this->colCyl2.dim.yShift = 0;
        } else {
            this->colCyl2.dim.radius = 15;
            this->colCyl2.dim.height = 30;
            this->colCyl2.dim.yShift = 10;
        }
        if (this->invincibilityTimer == 0) {
            Collider_UpdateCylinder(thisx, &this->colCyl1);
            Collider_UpdateCylinder(thisx, &this->colCyl2);
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colCyl1.base);
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colCyl2.base);
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colCyl1.base);
        }
    }
}

s32 EnGoma_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnGoma* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_goma.c", 1976);
    gDPSetEnvColor(POLY_OPA_DISP++, (s16)this->eyeEnvColor[0], (s16)this->eyeEnvColor[1], (s16)this->eyeEnvColor[2],
                   255);

    if (limbIndex == 7) {
        rot->x += this->eyePitch;
        rot->y += this->eyeYaw;
    } else if (limbIndex == 3 && this->hurtTimer != 0) {
        gDPSetEnvColor(POLY_OPA_DISP++, (s16)(Rand_ZeroOne() * 255.0f), (s16)(Rand_ZeroOne() * 255.0f),
                       (s16)(Rand_ZeroOne() * 255.0f), 255);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_goma.c", 2011);
    return 0;
}

Gfx* EnGoma_NoBackfaceCullingDlist(GraphicsContext* gfxCtx) {
    Gfx* dl;
    Gfx* dlStart;

    dl = dlStart = Graph_Alloc(gfxCtx, 32);
    gDPPipeSync(dl++);
    gDPSetRenderMode(dl++, G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2);
    gSPClearGeometryMode(dl++, G_CULL_BACK);
    gSPEndDisplayList(dl++);
    return dlStart;
}

void EnGoma_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnGoma* this = THIS;
    s32 y;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_goma.c", 2040);
    func_80093D18(globalCtx->state.gfxCtx);

    switch (this->gomaType) {
        case ENGOMA_NORMAL:
            this->actor.naviEnemyId = 3;
            Matrix_Translate(this->actor.world.pos.x,
                             this->actor.world.pos.y + ((this->actor.shape.yOffset * this->actor.scale.y) +
                                                        globalCtx->mainCamera.skyboxOffset.y),
                             this->actor.world.pos.z, 0);
            Matrix_RotateX(this->slopePitch / 32768.0f * 3.1415927f, 1);
            Matrix_RotateZ(this->slopeRoll / 32768.0f * 3.1415927f, 1);
            Matrix_RotateY(this->actor.shape.rot.y / 32768.0f * 3.1415927f, 1);
            Matrix_RotateX(this->actor.shape.rot.x / 32768.0f * 3.1415927f, 1);
            Matrix_RotateZ(this->actor.shape.rot.z / 32768.0f * 3.1415927f, 1);
            Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, 1);
            SkelAnime_DrawOpa(globalCtx, this->skelanime.skeleton, this->skelanime.jointTable, &EnGoma_OverrideLimbDraw,
                              0, this);
            break;

        case ENGOMA_EGG:
            this->actor.naviEnemyId = 2;
            y = (s16)(sinf((this->eggTimer * 5.0f * 3.1415f) / 180.0f) * 31.9f);
            y = (s16)(y + 31);
            gSPSegment(POLY_OPA_DISP++, 0x08, func_80094E78(globalCtx->state.gfxCtx, 0, y));
            Matrix_Push();
            Matrix_Scale(this->eggScale, 1.0f / this->eggScale, this->eggScale, 1);
            Matrix_RotateY(this->eggSquishAngle * 0.15f, 1);
            Matrix_RotateZ(this->eggSquishAngle * 0.1f, 1);
            Matrix_Scale(0.95f - this->eggSquishAmount, this->eggSquishAmount + 1.05f, 0.95f - this->eggSquishAmount,
                         1);
            Matrix_RotateZ(-(this->eggSquishAngle * 0.1f), 1);
            Matrix_RotateY(-(this->eggSquishAngle * 0.15f), 1);
            Matrix_Translate(0.0f, this->eggYOffset, 0.0f, 1);
            Matrix_RotateX(this->eggPitch, 1);
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_goma.c", 2101),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, D_06002A70);
            Matrix_Pop();
            break;

        case ENGOMA_HATCH_DEBRIS:
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_goma.c", 2107),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, gBrownFragmentDL);
            break;

        case ENGOMA_BOSSLIMB:
            if (this->bossLimbDl != NULL) {
                gSPSegment(POLY_OPA_DISP++, 0x08, EnGoma_NoBackfaceCullingDlist(globalCtx->state.gfxCtx));
                gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_goma.c", 2114),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_OPA_DISP++, this->bossLimbDl);
            }
            break;
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_goma.c", 2119);
}

void EnGoma_Debris(EnGoma* this, GlobalContext* globalCtx) {
    this->actor.shape.rot.y += 2500;
    this->actor.shape.rot.x += 3500;
    if (this->actionTimer == 0) {
        Actor_Kill(&this->actor);
    }
}

void EnGoma_SpawnHatchDebris(EnGoma* this, GlobalContext* globalCtx) {
    GlobalContext* globalCtx2 = globalCtx;
    s16 i;

    if (this->actor.params < 6) {
        Audio_PlaySoundAtPosition(globalCtx2, &this->actor.world.pos, 0x28, NA_SE_EN_GOMA_BJR_EGG2);
    } else {
        Audio_PlaySoundAtPosition(globalCtx2, &this->actor.world.pos, 0x28, NA_SE_EN_GOMA_EGG2);
    }

    for (i = 0; i < 15; i++) {
        Actor_SpawnAsChild(
            &globalCtx2->actorCtx, &this->actor, globalCtx2, ACTOR_EN_GOMA, Rand_CenteredFloat(10.0f) + this->actor.world.pos.x,
            Rand_CenteredFloat(10.0f) + this->actor.world.pos.y + 15.0f,
            Rand_CenteredFloat(10.0f) + this->actor.world.pos.z, 0, Rand_CenteredFloat(65535.99f), 0, i + 10);
    }
}

void EnGoma_BossLimb(EnGoma* this, GlobalContext* globalCtx) {
    Vec3f vel = { 0.0f, 0.0f, 0.0f };
    Vec3f accel = { 0.0f, 1.0f, 0.0f };
    Color_RGBA8 primColor = { 255, 255, 255, 255 };
    Color_RGBA8 envColor = { 0, 100, 255, 255 };
    Vec3f pos;

    this->actor.world.pos.y -= 5.0f;
    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 50.0f, 50.0f, 100.0f, 4);
    this->actor.world.pos.y += 5.0f;

    if (this->actor.bgCheckFlags & 1) {
        this->actor.velocity.y = 0.0f;
    } else if (this->actionTimer < 250) {
        this->actor.shape.rot.y += 2000;
    }

    if (this->actionTimer == 250) {
        this->actor.gravity = -1.0f;
    }

    if (this->actionTimer < 121) {
        if (Math_SmoothStepToF(&this->actor.scale.y, 0.0f, 1.0f, 0.00075f, 0) <= 0.001f) {
            Actor_Kill(&this->actor);
        }
        this->actor.scale.x = this->actor.scale.z = this->actor.scale.y;
    }

    if (((this->actionTimer & 7) == 0) && (this->actionTimer != 0)) {
        pos.x = Rand_CenteredFloat(20.0f) + this->actor.world.pos.x;
        pos.y = Rand_CenteredFloat(10.0f) + this->actor.world.pos.y;
        pos.z = Rand_CenteredFloat(20.0f) + this->actor.world.pos.z;
        func_8002836C(globalCtx, &pos, &vel, &accel, &primColor, &envColor, 500, 10, 10);
    }
}
