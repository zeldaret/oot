/*
 * File: z_en_skb.c
 * Overlay: ovl_En_Skb
 * Description: Stalchild
 */

#include "z_en_skb.h"
#include "overlays/actors/ovl_En_Encount1/z_en_encount1.h"
#include "assets/objects/object_skb/object_skb.h"

#define FLAGS (ACTOR_FLAG_0 | ACTOR_FLAG_2 | ACTOR_FLAG_4)

typedef enum {
    SKB_BEHAVIOR_BURIED,
    SKB_BEHAVIOR_DYING,
    SKB_BEHAVIOR_DAMAGED,
    SKB_BEHAVIOR_ATTACKING,
    SKB_BEHAVIOR_WALKING,
    SKB_BEHAVIOR_RECOILING,
    SKB_BEHAVIOR_STUNNED
} StalchildBehavior;

void EnSkb_Init(Actor* thisx, PlayState* play);
void EnSkb_Destroy(Actor* thisx, PlayState* play);
void EnSkb_Update(Actor* thisx, PlayState* play);
void EnSkb_Draw(Actor* thisx, PlayState* play);

void EnSkb_SetupRiseFromGround(EnSkb* this);
void EnSkb_RiseFromGround(EnSkb* this, PlayState* play);
void EnSkb_SetupDespawn(EnSkb* this);
void EnSkb_Despawn(EnSkb* this, PlayState* play);
void EnSkb_SetupWalkForward(EnSkb* this);
void EnSkb_WalkForward(EnSkb* this, PlayState* play);
void EnSkb_SetupAttack(EnSkb* this);
void EnSkb_Attack(EnSkb* this, PlayState* play);
void EnSkb_SetupRecoil(EnSkb* this);
void EnSkb_Recoil(EnSkb* this, PlayState* play);
void EnSkb_Stunned(EnSkb* this, PlayState* play);
void EnSkb_TakeDamage(EnSkb* this, PlayState* play);
void EnSkb_SetupDeath(EnSkb* this, PlayState* play);
void EnSkb_Death(EnSkb* this, PlayState* play);

static ColliderJntSphElementInit sJntSphElementsInit[2] = {
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x04 },
            { 0x00000000, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_NONE,
            OCELEM_NONE,
        },
        { 15, { { 0, 0, 0 }, 10 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_ON | BUMP_HOOKABLE,
            OCELEM_ON,
        },
        { 1, { { 0, 0, 0 }, 20 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    {
        COLTYPE_HIT6,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    2,
    sJntSphElementsInit,
};

static DamageTable sDamageTable = {
    /* Deku nut      */ DMG_ENTRY(0, 0x1),
    /* Deku stick    */ DMG_ENTRY(2, 0xF),
    /* Slingshot     */ DMG_ENTRY(1, 0xF),
    /* Explosive     */ DMG_ENTRY(2, 0xF),
    /* Boomerang     */ DMG_ENTRY(0, 0x1),
    /* Normal arrow  */ DMG_ENTRY(2, 0xF),
    /* Hammer swing  */ DMG_ENTRY(2, 0xF),
    /* Hookshot      */ DMG_ENTRY(0, 0x1),
    /* Kokiri sword  */ DMG_ENTRY(1, 0xE),
    /* Master sword  */ DMG_ENTRY(2, 0xF),
    /* Giant's Knife */ DMG_ENTRY(4, 0xF),
    /* Fire arrow    */ DMG_ENTRY(4, 0x7),
    /* Ice arrow     */ DMG_ENTRY(2, 0xF),
    /* Light arrow   */ DMG_ENTRY(2, 0xF),
    /* Unk arrow 1   */ DMG_ENTRY(2, 0xF),
    /* Unk arrow 2   */ DMG_ENTRY(0, 0x0),
    /* Unk arrow 3   */ DMG_ENTRY(0, 0x0),
    /* Fire magic    */ DMG_ENTRY(4, 0x7),
    /* Ice magic     */ DMG_ENTRY(0, 0x6),
    /* Light magic   */ DMG_ENTRY(3, 0xD),
    /* Shield        */ DMG_ENTRY(0, 0x0),
    /* Mirror Ray    */ DMG_ENTRY(0, 0x0),
    /* Kokiri spin   */ DMG_ENTRY(1, 0xD),
    /* Giant spin    */ DMG_ENTRY(4, 0xF),
    /* Master spin   */ DMG_ENTRY(2, 0xF),
    /* Kokiri jump   */ DMG_ENTRY(2, 0xF),
    /* Giant jump    */ DMG_ENTRY(8, 0xF),
    /* Master jump   */ DMG_ENTRY(4, 0xF),
    /* Unknown 1     */ DMG_ENTRY(0, 0x0),
    /* Unblockable   */ DMG_ENTRY(0, 0x0),
    /* Hammer jump   */ DMG_ENTRY(4, 0xF),
    /* Unknown 2     */ DMG_ENTRY(0, 0x0),
};

ActorInit En_Skb_InitVars = {
    ACTOR_EN_SKB,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_SKB,
    sizeof(EnSkb),
    (ActorFunc)EnSkb_Init,
    (ActorFunc)EnSkb_Destroy,
    (ActorFunc)EnSkb_Update,
    (ActorFunc)EnSkb_Draw,
};

void EnSkb_SetupAction(EnSkb* this, EnSkbActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnSkb_SpawnDebris(PlayState* play, EnSkb* this, Vec3f* spawnPos) {
    Vec3f pos;
    Vec3f vel = { 0.0f, 8.0f, 0.0f };
    Vec3f accel = { 0.0f, -1.5f, 0.0f };
    f32 spreadAngle;
    f32 scale;

    spreadAngle = (Rand_ZeroOne() - 0.5f) * 6.28f;
    pos.y = this->actor.floorHeight;
    pos.x = (Math_SinF(spreadAngle) * 15.0f) + spawnPos->x;
    pos.z = (Math_CosF(spreadAngle) * 15.0f) + spawnPos->z;
    accel.x = Rand_CenteredFloat(1.0f);
    accel.z = Rand_CenteredFloat(1.0f);
    vel.y += (Rand_ZeroOne() - 0.5f) * 4.0f;
    scale = (Rand_ZeroOne() * 5.0f) + 12.0f;
    EffectSsHahen_Spawn(play, &pos, &vel, &accel, 2, scale * 0.8f, -1, 10, NULL);
    func_80033480(play, &pos, 10.0f, 1, 150, 0, 1);
}

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(targetArrowOffset, 2000, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -2000, ICHAIN_STOP),
};

void EnSkb_Init(Actor* thisx, PlayState* play) {
    EnSkb* this = (EnSkb*)thisx;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    this->actor.colChkInfo.damageTable = &sDamageTable;
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 0.0f);
    this->actor.focus.pos = this->actor.world.pos;
    this->actor.colChkInfo.mass = 0xFE;
    this->actor.colChkInfo.health = 2;
    this->actor.shape.yOffset = -8000.0f;
    SkelAnime_Init(play, &this->skelAnime, &gStalchildSkel, &gStalchildUncurlingAnim, this->jointTable,
                   this->morphTable, 20);
    this->actor.naviEnemyId = NAVI_ENEMY_STALCHILD;

    Collider_InitJntSph(play, &this->collider);
    Collider_SetJntSph(play, &this->collider, &this->actor, &sJntSphInit, this->colliderItem);
    Actor_SetScale(&this->actor, ((this->actor.params * 0.1f) + 1.0f) * 0.01f);

    this->collider.elements[0].dim.modelSphere.radius = this->collider.elements[0].dim.worldSphere.radius =
        10 + this->actor.params;
    this->collider.elements[1].dim.modelSphere.radius = this->collider.elements[1].dim.worldSphere.radius =
        20 + (this->actor.params * 2);

    this->actor.home.pos = this->actor.world.pos;
    this->actor.floorHeight = this->actor.world.pos.y;
    EnSkb_SetupRiseFromGround(this);
}

void EnSkb_Destroy(Actor* thisx, PlayState* play) {
    EnSkb* this = (EnSkb*)thisx;

    if (this->actor.parent != NULL) {
        EnEncount1* spawner = (EnEncount1*)this->actor.parent;

        if (spawner->actor.update != NULL) {
            if (spawner->curNumSpawn > 0) {
                spawner->curNumSpawn--;
            }
        }
    }
    Collider_DestroyJntSph(play, &this->collider);
}

void EnSkb_DecideNextAction(EnSkb* this) {
    if (IS_DAY) {
        EnSkb_SetupDespawn(this);
    } else if (Actor_IsFacingPlayer(&this->actor, 0x11C7) &&
               (this->actor.xzDistToPlayer < (60.0f + (this->actor.params * 6.0f)))) {
        EnSkb_SetupAttack(this);
    } else {
        EnSkb_SetupWalkForward(this);
    }
}

void EnSkb_SetupRiseFromGround(EnSkb* this) {
    Animation_PlayOnceSetSpeed(&this->skelAnime, &gStalchildUncurlingAnim, 1.0f);
    this->actionState = SKB_BEHAVIOR_BURIED;
    this->actor.flags &= ~ACTOR_FLAG_0;
    Audio_PlayActorSfx2(&this->actor, NA_SE_EN_RIVA_APPEAR);
    EnSkb_SetupAction(this, EnSkb_RiseFromGround);
}

void EnSkb_RiseFromGround(EnSkb* this, PlayState* play) {
    if (this->skelAnime.curFrame < 4.0f) {
        this->actor.world.rot.y = this->actor.yawTowardsPlayer;
        this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
    } else {
        this->actor.flags |= ACTOR_FLAG_0;
    }
    Math_SmoothStepToF(&this->actor.shape.yOffset, 0.0f, 1.0f, 800.0f, 0.0f);
    Math_SmoothStepToF(&this->actor.shape.shadowScale, 25.0f, 1.0f, 2.5f, 0.0f);
    if ((play->gameplayFrames & 1) != 0) {
        EnSkb_SpawnDebris(play, this, &this->actor.world.pos);
    }
    if (SkelAnime_Update(&this->skelAnime) && (0.0f == this->actor.shape.yOffset)) {
        EnSkb_DecideNextAction(this);
    }
}

void EnSkb_SetupDespawn(EnSkb* this) {
    Animation_Change(&this->skelAnime, &gStalchildUncurlingAnim, -1.0f,
                     Animation_GetLastFrame(&gStalchildUncurlingAnim), 0.0f, ANIMMODE_ONCE, -4.0f);
    this->actionState = SKB_BEHAVIOR_BURIED;
    this->setColliderAT = false;
    this->actor.flags &= ~ACTOR_FLAG_0;
    this->actor.speedXZ = 0.0f;
    Audio_PlayActorSfx2(&this->actor, NA_SE_EN_AKINDONUTS_HIDE);
    EnSkb_SetupAction(this, EnSkb_Despawn);
}

void EnSkb_Despawn(EnSkb* this, PlayState* play) {
    if ((Math_SmoothStepToF(&this->actor.shape.yOffset, -8000.0f, 1.0f, 500.0f, 0.0f) != 0.0f) &&
        (play->gameplayFrames & 1)) {
        EnSkb_SpawnDebris(play, this, &this->actor.world.pos);
    }
    Math_SmoothStepToF(&this->actor.shape.shadowScale, 0.0f, 1.0f, 2.5f, 0.0f);
    if (SkelAnime_Update(&this->skelAnime)) {
        Actor_Kill(&this->actor);
    }
}

void EnSkb_SetupWalkForward(EnSkb* this) {
    Animation_Change(&this->skelAnime, &gStalchildWalkingAnim, 0.96000004f, 0.0f,
                     Animation_GetLastFrame(&gStalchildWalkingAnim), ANIMMODE_LOOP, -4.0f);
    this->actionState = SKB_BEHAVIOR_WALKING;
    this->headlessYawOffset = 0;
    this->actor.speedXZ = this->actor.scale.y * 160.0f;
    EnSkb_SetupAction(this, EnSkb_WalkForward);
}

void EnSkb_WalkForward(EnSkb* this, PlayState* play) {
    s32 thisKeyFrame;
    s32 prevKeyFrame;
    f32 playSpeed;
    Player* player = GET_PLAYER(play);

    if ((this->breakFlags != 0) && ((play->gameplayFrames & 0xF) == 0)) {
        this->headlessYawOffset = Rand_CenteredFloat(50000.0f);
    }
    Math_SmoothStepToS(&this->actor.shape.rot.y, (this->actor.yawTowardsPlayer + this->headlessYawOffset), 1, 0x2EE, 0);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    thisKeyFrame = this->skelAnime.curFrame;
    SkelAnime_Update(&this->skelAnime);
    if (this->skelAnime.playSpeed >= 0.0f) {
        playSpeed = this->skelAnime.playSpeed;
    } else {
        playSpeed = -this->skelAnime.playSpeed;
    }
    prevKeyFrame = (this->skelAnime.curFrame - playSpeed);
    if (this->skelAnime.playSpeed >= 0.0f) {
        playSpeed = this->skelAnime.playSpeed;
    } else {
        playSpeed = -this->skelAnime.playSpeed;
    }
    if (thisKeyFrame != (s32)this->skelAnime.curFrame) {
        if (((prevKeyFrame < 9) && (((s32)playSpeed + thisKeyFrame) >= 8)) ||
            !((prevKeyFrame >= 16) || (((s32)playSpeed + thisKeyFrame) < 15))) {

            Audio_PlayActorSfx2(&this->actor, NA_SE_EN_STALKID_WALK);
        }
    }
    if (Math_Vec3f_DistXZ(&this->actor.home.pos, &player->actor.world.pos) > 800.0f || IS_DAY) {
        EnSkb_SetupDespawn(this);
    } else if (Actor_IsFacingPlayer(&this->actor, 0x11C7) &&
               (this->actor.xzDistToPlayer < (60.0f + (this->actor.params * 6.0f)))) {
        EnSkb_SetupAttack(this);
    }
}

void EnSkb_SetupAttack(EnSkb* this) {
    Animation_Change(&this->skelAnime, &gStalchildAttackingAnim, 0.6f, 0.0f,
                     Animation_GetLastFrame(&gStalchildAttackingAnim), ANIMMODE_ONCE_INTERP, 4.0f);
    this->collider.base.atFlags &= ~AT_BOUNCED;
    this->actionState = SKB_BEHAVIOR_ATTACKING;
    this->actor.speedXZ = 0.0f;
    EnSkb_SetupAction(this, EnSkb_Attack);
}

void EnSkb_Attack(EnSkb* this, PlayState* play) {
    s32 frameData;

    frameData = this->skelAnime.curFrame;
    if (frameData == 3) {
        Audio_PlayActorSfx2(&this->actor, NA_SE_EN_STALKID_ATTACK);
        this->setColliderAT = true;
    } else if (frameData == 6) {
        this->setColliderAT = false;
    }
    if (this->collider.base.atFlags & AT_BOUNCED) {
        this->collider.base.atFlags &= ~(AT_HIT | AT_BOUNCED);
        EnSkb_SetupRecoil(this);
    } else if (SkelAnime_Update(&this->skelAnime)) {
        EnSkb_DecideNextAction(this);
    }
}

void EnSkb_SetupRecoil(EnSkb* this) {
    Animation_Change(&this->skelAnime, &gStalchildAttackingAnim, -0.4f, this->skelAnime.curFrame - 1.0f, 0.0f,
                     ANIMMODE_ONCE_INTERP, 0.0f);
    this->collider.base.atFlags &= ~AT_BOUNCED;
    this->actionState = SKB_BEHAVIOR_RECOILING;
    this->setColliderAT = false;
    EnSkb_SetupAction(this, EnSkb_Recoil);
}

void EnSkb_Recoil(EnSkb* this, PlayState* play) {
    if (SkelAnime_Update(&this->skelAnime)) {
        EnSkb_DecideNextAction(this);
    }
}

void EnSkb_SetupStunned(EnSkb* this) {
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        this->actor.speedXZ = 0.0f;
    }
    Audio_PlayActorSfx2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    this->setColliderAT = false;
    this->actionState = SKB_BEHAVIOR_STUNNED;
    EnSkb_SetupAction(this, EnSkb_Stunned);
}

void EnSkb_Stunned(EnSkb* this, PlayState* play) {
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
        this->actor.speedXZ = 0.0f;
    }
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        if (this->actor.speedXZ < 0.0f) {
            this->actor.speedXZ += 0.05f;
        }
    }
    if ((this->actor.colorFilterTimer == 0) && (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
        if (this->actor.colChkInfo.health == 0) {
            EnSkb_SetupDeath(this, play);
        } else {
            EnSkb_DecideNextAction(this);
        }
    }
}

void EnSkb_SetupTakeDamage(EnSkb* this) {
    Animation_MorphToPlayOnce(&this->skelAnime, &gStalchildDamagedAnim, -4.0f);
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        this->actor.speedXZ = -4.0f;
    }
    this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    Audio_PlayActorSfx2(&this->actor, NA_SE_EN_STALKID_DAMAGE);
    this->actionState = SKB_BEHAVIOR_DAMAGED;
    EnSkb_SetupAction(this, EnSkb_TakeDamage);
}

void EnSkb_TakeDamage(EnSkb* this, PlayState* play) {
    // this cast is likely not real, but allows for a match
    u8* new_var;

    new_var = &this->breakFlags;
    if ((this->breakFlags != 1) || BodyBreak_SpawnParts(&this->actor, &this->bodyBreak, play, 1)) {
        if ((*new_var) != 0) {
            this->breakFlags = (*new_var) | 2;
        }
        if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
            this->actor.speedXZ = 0;
        }
        if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
            if (this->actor.speedXZ < 0.0f) {
                this->actor.speedXZ += 0.05f;
            }
        }

        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0x1194, 0);
        if (SkelAnime_Update(&this->skelAnime) && (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
            EnSkb_DecideNextAction(this);
        }
    }
}

void EnSkb_SetupDeath(EnSkb* this, PlayState* play) {
    Animation_MorphToPlayOnce(&this->skelAnime, &gStalchildDyingAnim, -4.0f);
    this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
    this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        this->actor.speedXZ = -6.0f;
    }
    this->actionState = SKB_BEHAVIOR_DYING;
    this->actor.flags &= ~ACTOR_FLAG_0;
    BodyBreak_Alloc(&this->bodyBreak, 18, play);
    this->breakFlags |= 4;
    EffectSsDeadSound_SpawnStationary(play, &this->actor.projectedPos, NA_SE_EN_STALKID_DEAD, 1, 1, 0x28);
    EnSkb_SetupAction(this, EnSkb_Death);
}

void EnSkb_Death(EnSkb* this, PlayState* play) {
    if (BodyBreak_SpawnParts(&this->actor, &this->bodyBreak, play, 1)) {
        if (this->actor.scale.x == 0.01f) {
            Item_DropCollectibleRandom(play, &this->actor, &this->actor.world.pos, 0x10);
        } else if (this->actor.scale.x <= 0.015f) {
            Item_DropCollectible(play, &this->actor.world.pos, ITEM00_RUPEE_BLUE);
        } else {
            Item_DropCollectible(play, &this->actor.world.pos, ITEM00_RUPEE_RED);
            Item_DropCollectible(play, &this->actor.world.pos, ITEM00_RUPEE_RED);
            Item_DropCollectible(play, &this->actor.world.pos, ITEM00_RUPEE_RED);
        }

        this->breakFlags |= 8;
        Actor_Kill(&this->actor);
    }
}

void EnSkb_CheckDamage(EnSkb* this, PlayState* play) {
    s16 pad;
    s32 i;
    Vec3f flamePos;
    s16 scale;
    s16 colorFilterDuration;
    Player* player;

    if ((this->actionState != SKB_BEHAVIOR_DYING) &&
        (this->actor.bgCheckFlags & (BGCHECKFLAG_WATER | BGCHECKFLAG_WATER_TOUCH)) &&
        (this->actor.yDistToWater >= 40.0f)) {
        this->actor.colChkInfo.health = 0;
        this->setColliderAT = false;
        EnSkb_SetupDeath(this, play);
    } else if (this->actionState >= SKB_BEHAVIOR_ATTACKING) {
        if (this->collider.base.acFlags & AC_HIT) {
            this->collider.base.acFlags &= ~AC_HIT;
            if (this->actor.colChkInfo.damageEffect != 6) {
                this->lastDamageEffect = this->actor.colChkInfo.damageEffect;
                Actor_SetDropFlag(&this->actor, &this->collider.elements[1].info, true);
                this->setColliderAT = false;
                if (this->actor.colChkInfo.damageEffect == 1) {
                    if (this->actionState != SKB_BEHAVIOR_STUNNED) {
                        Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_BLUE, 120, COLORFILTER_BUFFLAG_OPA,
                                             80);
                        Actor_ApplyDamage(&this->actor);
                        EnSkb_SetupStunned(this);
                    }
                } else {
                    colorFilterDuration = 8;
                    if (this->actor.colChkInfo.damageEffect == 7) {
                        scale = this->actor.scale.y * 7500.0f;
                        for (i = 4; i >= 0; i--) {
                            flamePos = this->actor.world.pos;
                            flamePos.x += Rand_CenteredFloat(20.0f);
                            flamePos.z += Rand_CenteredFloat(20.0f);
                            flamePos.y += (Rand_ZeroOne() * 25.0f);
                            EffectSsEnFire_SpawnVec3f(play, &this->actor, &flamePos, scale, 0, 0, -1);
                        }
                        colorFilterDuration = 25;
                    }
                    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 255, COLORFILTER_BUFFLAG_OPA,
                                         colorFilterDuration);
                    if (!Actor_ApplyDamage(&this->actor)) {
                        EnSkb_SetupDeath(this, play);
                        return;
                    }
                    player = GET_PLAYER(play);
                    if (this->breakFlags == 0) {
                        if ((this->actor.colChkInfo.damageEffect == 0xD) ||
                            ((this->actor.colChkInfo.damageEffect == 0xE) &&
                             ((player->meleeWeaponAnimation >= PLAYER_MWA_RIGHT_SLASH_1H &&
                               player->meleeWeaponAnimation <= PLAYER_MWA_LEFT_COMBO_2H) ||
                              (player->meleeWeaponAnimation == PLAYER_MWA_BACKSLASH_RIGHT ||
                               player->meleeWeaponAnimation == PLAYER_MWA_BACKSLASH_LEFT)))) {
                            BodyBreak_Alloc(&this->bodyBreak, 2, play);
                            this->breakFlags = 1; // setup for head bodybreak
                        }
                    }
                    EnSkb_SetupTakeDamage(this);
                }
            }
        }
    }
}

void EnSkb_Update(Actor* thisx, PlayState* play) {
    EnSkb* this = (EnSkb*)thisx;
    s32 pad;

    EnSkb_CheckDamage(this, play);
    Actor_MoveForward(&this->actor);
    Actor_UpdateBgCheckInfo(play, &this->actor, 15.0f, 30.0f, 60.0f,
                            UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 |
                                UPDBGCHECKINFO_FLAG_4);
    this->actionFunc(this, play);
    this->actor.focus.pos = this->actor.world.pos;
    this->actor.focus.pos.y += (3000.0f * this->actor.scale.y);
    if (this->setColliderAT) {
        CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
    }

    if (this->actionState >= SKB_BEHAVIOR_ATTACKING) {
        if ((this->actor.colorFilterTimer == 0) || ((this->actor.colorFilterParams & 0x4000) == 0)) {

            CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
        }
    }
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
}

s32 EnSkb_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnSkb* this = (EnSkb*)thisx;
    s16 color;
    s16 pad[2];

    if (limbIndex == 11) {
        if ((this->breakFlags & 2) == 0) { // head limb, head is still attached
            OPEN_DISPS(play->state.gfxCtx, "../z_en_skb.c", 972);
            color = ABS((s16)(Math_SinS(play->gameplayFrames * 0x1770) * 95.0f)) + 160;
            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetEnvColor(POLY_OPA_DISP++, color, color, color, 255);
            CLOSE_DISPS(play->state.gfxCtx, "../z_en_skb.c", 978);
        } else {
            *dList = NULL;
        }
    } else if ((limbIndex == 12) && ((this->breakFlags & 2) != 0)) { // jaw limb, don't draw if headless
        *dList = NULL;
    }
    return 0;
}

void EnSkb_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnSkb* this = (EnSkb*)thisx;

    Collider_UpdateSpheres(limbIndex, &this->collider);

    if ((this->breakFlags ^ 1) == 0) {
        BodyBreak_SetInfo(&this->bodyBreak, limbIndex, 11, 12, 18, dList, BODYBREAK_OBJECT_DEFAULT);
    } else if ((this->breakFlags ^ (this->breakFlags | 4)) == 0) {
        BodyBreak_SetInfo(&this->bodyBreak, limbIndex, 0, 18, 18, dList, BODYBREAK_OBJECT_DEFAULT);
    }
}

void EnSkb_Draw(Actor* thisx, PlayState* play) {
    EnSkb* this = (EnSkb*)thisx;
    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    SkelAnime_DrawOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, EnSkb_OverrideLimbDraw,
                      EnSkb_PostLimbDraw, &this->actor);
}
