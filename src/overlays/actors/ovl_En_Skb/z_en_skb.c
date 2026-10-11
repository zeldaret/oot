/*
 * File: z_en_skb.c
 * Overlay: ovl_En_Skb
 * Description: Stalchild
 */

#include "z_en_skb.h"
#include "src/overlays/actors/ovl_En_Encount1/z_en_encount1.h"

#include "libc64/qrand.h"
#include "array_count.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "rand.h"
#include "sfx.h"
#include "stack_pad.h"
#include "sys_math.h"
#include "z_en_item00.h"
#include "z_lib.h"
#include "effect.h"
#include "play_state.h"
#include "player.h"
#include "save.h"

#include "assets/objects/object_skb/object_skb.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE | ACTOR_FLAG_UPDATE_CULLING_DISABLED)

typedef enum StalchildBehavior {
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

static ColliderJntSphElementInit sJntSphElementsInit[] = {
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0xFFCFFFFF, HIT_SPECIAL_EFFECT_NONE, 0x04 },
            { 0x00000000, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_ON | ATELEM_SFX_NORMAL,
            ACELEM_NONE,
            OCELEM_NONE,
        },
        { STALCHILD_LIMB_RIGHT_HAND, { { 0, 0, 0 }, 10 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
            { 0xFFCFFFFF, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_NONE,
            ACELEM_ON | ACELEM_HOOKABLE,
            OCELEM_ON,
        },
        { STALCHILD_LIMB_ROOT, { { 0, 0, 0 }, 20 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    {
        COL_MATERIAL_HIT6,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    ARRAY_COUNT(sJntSphElementsInit),
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

ActorProfile En_Skb_Profile = {
    /**/ ACTOR_EN_SKB,
    /**/ ACTORCAT_ENEMY,
    /**/ FLAGS,
    /**/ OBJECT_SKB,
    /**/ sizeof(EnSkb),
    /**/ EnSkb_Init,
    /**/ EnSkb_Destroy,
    /**/ EnSkb_Update,
    /**/ EnSkb_Draw,
};

void EnSkb_SetupAction(EnSkb* this, EnSkbActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnSkb_SpawnDigEffects(PlayState* play, EnSkb* this, Vec3f* pos) {
    Vec3f effPos;
    Vec3f effVel = { 0.0f, 8.0f, 0.0f };
    Vec3f effAccel = { 0.0f, -1.5f, 0.0f };
    f32 angle;
    STACK_PAD(s32);

    angle = (Rand_ZeroOne() - 0.5f) * 6.28f;
    effPos.y = this->actor.floorHeight;
    effPos.x = (Math_SinF(angle) * 15.0f) + pos->x;
    effPos.z = (Math_CosF(angle) * 15.0f) + pos->z;
    effAccel.x = Rand_CenteredFloat(1.0f);
    effAccel.z = Rand_CenteredFloat(1.0f);
    effVel.y += (Rand_ZeroOne() - 0.5f) * 4.0f;
    EffectSsHahen_Spawn(play, &effPos, &effVel, &effAccel, 2, ((Rand_ZeroOne() * 5.0f) + 12.0f) * 0.8f, -1, 10, NULL);
    func_80033480(play, &effPos, 10.0f, 1, 150, 0, 1);
}

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(lockOnArrowOffset, 2000, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -2000, ICHAIN_STOP),
};

void EnSkb_Init(Actor* thisx, PlayState* play) {
    EnSkb* this = (EnSkb*)thisx;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    this->actor.colChkInfo.damageTable = &sDamageTable;
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 0.0f);
    this->actor.focus.pos = this->actor.world.pos;
    this->actor.colChkInfo.mass = MASS_HEAVY;
    this->actor.colChkInfo.health = 2;
    this->actor.shape.yOffset = -8000.0f;
    SkelAnime_Init(play, &this->skelAnime, &gStalchildSkel, &gStalchildUncurlAnim, this->jointTable, this->morphTable,
                   STALCHILD_LIMB_MAX);
    this->actor.naviEnemyId = NAVI_ENEMY_STALCHILD;
    Collider_InitJntSph(play, &this->collider);
    Collider_SetJntSph(play, &this->collider, &this->actor, &sJntSphInit, this->colliderElements);
    Actor_SetScale(&this->actor, ((this->actor.params * 0.1f) + 1.0f) * 0.01f);
    this->collider.elements[0].dim.modelSphere.radius = this->collider.elements[0].dim.worldSphere.radius =
        this->actor.params + 10;
    this->collider.elements[1].dim.modelSphere.radius = this->collider.elements[1].dim.worldSphere.radius =
        (this->actor.params + 10) * 2;
    this->actor.home.pos = this->actor.world.pos;
    this->actor.floorHeight = this->actor.world.pos.y;
    EnSkb_SetupRiseFromGround(this);
}

void EnSkb_Destroy(Actor* thisx, PlayState* play) {
    EnEncount1* temp_v1;
    EnSkb* this = (EnSkb*)thisx;

    if ((this->actor.parent != NULL)) {
        temp_v1 = (EnEncount1*)this->actor.parent;
        if ((temp_v1->actor.update != NULL)) {
            if (temp_v1->curNumSpawn > 0) {
                temp_v1->curNumSpawn -= 1;
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
    Animation_PlayOnceSetSpeed(&this->skelAnime, &gStalchildUncurlAnim, 1.0f);
    this->actionState = SKB_BEHAVIOR_BURIED;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    Actor_PlaySfx(&this->actor, NA_SE_EN_RIVA_APPEAR);
    EnSkb_SetupAction(this, EnSkb_RiseFromGround);
}

void EnSkb_RiseFromGround(EnSkb* this, PlayState* play) {
    if (this->skelAnime.curFrame < 4.0f) {
        this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    } else {
        this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
    }
    Math_SmoothStepToF(&this->actor.shape.yOffset, 0.0f, 1.0f, 800.0f, 0.0f);
    Math_SmoothStepToF(&this->actor.shape.shadowScale, 25.0f, 1.0f, 2.5f, 0.0f);
    if (play->gameplayFrames & 1) {
        EnSkb_SpawnDigEffects(play, this, &this->actor.world.pos);
    }
    if (SkelAnime_Update(&this->skelAnime) && (this->actor.shape.yOffset == 0.0f)) {
        EnSkb_DecideNextAction(this);
    }
}

void EnSkb_SetupDespawn(EnSkb* this) {
    Animation_Change(&this->skelAnime, &gStalchildUncurlAnim, -1.0f, Animation_GetLastFrame(&gStalchildUncurlAnim),
                     0.0f, ANIMMODE_ONCE, -4.0f);
    this->actionState = SKB_BEHAVIOR_BURIED;
    this->setColliderAT = false;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    this->actor.speed = 0.0f;
    Actor_PlaySfx(&this->actor, NA_SE_EN_AKINDONUTS_HIDE);
    EnSkb_SetupAction(this, EnSkb_Despawn);
}

void EnSkb_Despawn(EnSkb* this, PlayState* play) {
    if ((Math_SmoothStepToF(&this->actor.shape.yOffset, -8000.0f, 1.0f, 500.0f, 0.0f) != 0.0f) &&
        (play->gameplayFrames & 1)) {
        EnSkb_SpawnDigEffects(play, this, &this->actor.world.pos);
    }
    Math_SmoothStepToF(&this->actor.shape.shadowScale, 0.0f, 1.0f, 2.5f, 0.0f);
    if (SkelAnime_Update(&this->skelAnime)) {
        Actor_Kill(&this->actor);
    }
}

void EnSkb_SetupWalkForward(EnSkb* this) {
    Animation_Change(&this->skelAnime, &gStalchildWalkAnim, 0.96000004f, 0.0f,
                     Animation_GetLastFrame(&gStalchildWalkAnim), ANIMMODE_LOOP, -4.0f);
    this->actionState = SKB_BEHAVIOR_WALKING;
    this->headlessYawOffset = 0;
    this->actor.speed = this->actor.scale.y * 160.0f;
    EnSkb_SetupAction(this, EnSkb_WalkForward);
}

void EnSkb_WalkForward(EnSkb* this, PlayState* play) {
    s32 temp_ft2_sp34;
    f32 var_fv1_2;
    s32 temp_ft4;
    Player* player = GET_PLAYER(play);

    if ((this->breakFlags != 0) && !(play->gameplayFrames & 0xF)) {
        this->headlessYawOffset = (s16)(s32)Rand_CenteredFloat(50000.0f);
    }
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer + this->headlessYawOffset, 1, 0x2EE, 0);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    temp_ft2_sp34 = (s32)this->skelAnime.curFrame;
    SkelAnime_Update(&this->skelAnime);
    var_fv1_2 = ABS(this->skelAnime.playSpeed);
    temp_ft4 = (s32)(this->skelAnime.curFrame - var_fv1_2);
    var_fv1_2 = ABS(this->skelAnime.playSpeed);
    if ((temp_ft2_sp34 != (s32)this->skelAnime.curFrame) &&
        (((temp_ft4 < 9) && (((s32)var_fv1_2 + temp_ft2_sp34) >= 8)) ||
         ((temp_ft4 < 0x10) && (((s32)var_fv1_2 + temp_ft2_sp34) >= 0xF)))) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_STALKID_WALK);
    }
    if ((Math_Vec3f_DistXZ(&this->actor.home.pos, &player->actor.world.pos) > 800.0f) || IS_DAY) {
        EnSkb_SetupDespawn(this);
    } else if (Actor_IsFacingPlayer(&this->actor, 0x11C7) &&
               (this->actor.xzDistToPlayer < (60.0f + (this->actor.params * 6.0f)))) {
        EnSkb_SetupAttack(this);
    }
}

void EnSkb_SetupAttack(EnSkb* this) {
    Animation_Change(&this->skelAnime, &gStalchildAttackAnim, 0.6f, 0.0f, Animation_GetLastFrame(&gStalchildAttackAnim),
                     ANIMMODE_ONCE_INTERP, 4.0f);
    this->collider.base.atFlags &= ~AT_BOUNCED;
    this->actionState = SKB_BEHAVIOR_ATTACKING;
    this->actor.speed = 0.0f;
    EnSkb_SetupAction(this, EnSkb_Attack);
}

void EnSkb_Attack(EnSkb* this, PlayState* play) {
    s32 temp_ft1;
    STACK_PAD(s32);

    temp_ft1 = (s32)this->skelAnime.curFrame;
    if (temp_ft1 == 3) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_STALKID_ATTACK);
        this->setColliderAT = true;
    } else if (temp_ft1 == 6) {
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
    Animation_Change(&this->skelAnime, &gStalchildAttackAnim, -0.4f, this->skelAnime.curFrame - 1.0f, 0.0f,
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

void func_80AFD540(EnSkb* this) {
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        this->actor.speed = 0.0f;
    }
    Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    this->setColliderAT = false;
    this->actionState = SKB_BEHAVIOR_STUNNED;
    EnSkb_SetupAction(this, EnSkb_Stunned);
}

void EnSkb_Stunned(EnSkb* this, PlayState* play) {
    STACK_PAD(s32);

    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
        this->actor.speed = 0.0f;
    }
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        if (this->actor.speed < 0.0f) {
            this->actor.speed += 0.05f;
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
        this->actor.speed = -4.0f;
    }
    this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    Actor_PlaySfx(&this->actor, NA_SE_EN_STALKID_DAMAGE);
    this->actionState = SKB_BEHAVIOR_DAMAGED;
    EnSkb_SetupAction(this, EnSkb_TakeDamage);
}

void EnSkb_TakeDamage(EnSkb* this, PlayState* play) {
    u8* new_var;

    new_var = &this->breakFlags;
    if ((this->breakFlags != 1) || BodyBreak_SpawnParts(&this->actor, &this->bodyBreak, play, 1)) {
        if (*new_var != 0) {
            this->breakFlags = *new_var | 2;
        }
        if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
            this->actor.speed = 0.0f;
        }
        if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
            if (this->actor.speed < 0.0f) {
                this->actor.speed += 0.05f;
            }
        }
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0x1194, 0);
        if (SkelAnime_Update(&this->skelAnime) && (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
            EnSkb_DecideNextAction(this);
        }
    }
}

void EnSkb_SetupDeath(EnSkb* this, PlayState* play) {
    Animation_MorphToPlayOnce(&this->skelAnime, &gStalchildDieAnim, -4.0f);
    this->actor.world.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        this->actor.speed = -6.0f;
    }
    this->actionState = SKB_BEHAVIOR_DYING;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    BodyBreak_Alloc(&this->bodyBreak, 18, play);
    this->breakFlags |= 4;
    EffectSsDeadSound_SpawnStationary(play, &this->actor.projectedPos, NA_SE_EN_STALKID_DEAD, 1, 1, 40);
    EnSkb_SetupAction(this, EnSkb_Death);
}

void EnSkb_Death(EnSkb* this, PlayState* play) {

    if (BodyBreak_SpawnParts(&this->actor, &this->bodyBreak, play, 1)) {
        if (this->actor.scale.x == 0.01f) {
            Item_DropCollectibleRandom(play, &this->actor, &this->actor.world.pos,
                                       COLLECTIBLE_DROP_RANDOM_PARAMS(COLLECTIBLE_DROP_TABLE_1, false));
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
    Player* player;
    s32 colorFilterDuration;
    Vec3f sp54;
    s16 sp52;
    s32 var_s0;

    if ((this->actionState != SKB_BEHAVIOR_DYING) &&
        (this->actor.bgCheckFlags & (BGCHECKFLAG_WATER | BGCHECKFLAG_WATER_TOUCH)) &&
        (this->actor.depthInWater >= 40.0f)) {
        this->actor.colChkInfo.health = 0;
        this->setColliderAT = false;
        EnSkb_SetupDeath(this, play);
    } else if ((this->actionState >= SKB_BEHAVIOR_ATTACKING) && (this->collider.base.acFlags & AC_HIT)) {
        this->collider.base.acFlags &= ~AC_HIT;
        if (((this->actor.colChkInfo.damageReaction != 6))) {
            this->lastDamageReaction = this->actor.colChkInfo.damageReaction;
            Actor_SetDropFlag(&this->actor, &this->collider.elements[1].base, true);
            this->setColliderAT = false;
            if (this->actor.colChkInfo.damageReaction == 1) {
                if (this->actionState != SKB_BEHAVIOR_STUNNED) {
                    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_BLUE, 120, COLORFILTER_BUFFLAG_OPA, 80);
                    Actor_ApplyDamage(&this->actor);
                    func_80AFD540(this);
                }
            } else {
                colorFilterDuration = 8;
                if (this->actor.colChkInfo.damageReaction == 7) {
                    sp52 = this->actor.scale.y * 7500.0f;
                    for (var_s0 = 4; var_s0 >= 0; var_s0--) {
                        sp54 = this->actor.world.pos;
                        sp54.x += Rand_CenteredFloat(20.0f);
                        sp54.z += Rand_CenteredFloat(20.0f);
                        sp54.y += Rand_ZeroOne() * 25.0f;
                        EffectSsEnFire_SpawnVec3f(play, &this->actor, &sp54, sp52, 0, 0, -1);
                    }
                    colorFilterDuration = 25;
                }
                Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 255, COLORFILTER_BUFFLAG_OPA,
                                     colorFilterDuration);
                if (Actor_ApplyDamage(&this->actor) == 0) {
                    EnSkb_SetupDeath(this, play);
                } else {
                    player = GET_PLAYER(play);
                    if ((this->breakFlags == 0) &&
                        (((this->actor.colChkInfo.damageReaction == 0xD)) ||
                         ((this->actor.colChkInfo.damageReaction == 0xE) &&
                          (((((player->meleeWeaponAnimation >= PLAYER_MWA_RIGHT_SLASH_1H))) &&
                            (player->meleeWeaponAnimation <= PLAYER_MWA_LEFT_COMBO_2H)) ||
                           (player->meleeWeaponAnimation == PLAYER_MWA_BACKSLASH_RIGHT) ||
                           (player->meleeWeaponAnimation == PLAYER_MWA_BACKSLASH_LEFT))))) {
                        BodyBreak_Alloc(&this->bodyBreak, 2, play);
                        this->breakFlags = 1; // setup for head bodybreak
                    }
                    EnSkb_SetupTakeDamage(this);
                }
            }
        }
    }
}

void EnSkb_Update(Actor* thisx, PlayState* play) {
    EnSkb* this = (EnSkb*)thisx;
    STACK_PAD(s32);

    EnSkb_CheckDamage(this, play);
    Actor_MoveXZGravity(&this->actor);
    Actor_UpdateBgCheckInfo(play, &this->actor, 15.0f, 30.0f, 60.0f,
                            UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 |
                                UPDBGCHECKINFO_FLAG_4);
    this->actionFunc(this, play);
    this->actor.focus.pos = this->actor.world.pos;
    this->actor.focus.pos.y += 3000.0f * this->actor.scale.y;
    if (this->setColliderAT) {
        CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
    }
    if ((this->actionState >= SKB_BEHAVIOR_ATTACKING) &&
        ((this->actor.colorFilterTimer == 0) || !(this->actor.colorFilterParams & 0x4000))) {
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
    }
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
}

s32 EnSkb_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnSkb* this = thisx;
    PlayState* play2 = play;
    s32 temp_v0;

    if (limbIndex == STALCHILD_LIMB_HEAD) {
        if (!(this->breakFlags & 2)) { // head limb, head is still attached
            OPEN_DISPS(play2->state.gfxCtx, "../z_en_skb.c", 972);
            temp_v0 = (s16)(ABS((s16)(Math_SinS(play2->gameplayFrames * 0x1770) * 95.0f)) + 0xA0);
            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetEnvColor(POLY_OPA_DISP++, temp_v0, temp_v0, temp_v0, 255);
            CLOSE_DISPS(play2->state.gfxCtx, "../z_en_skb.c", 978);
        } else {
            *dList = NULL;
        }
    } else if ((limbIndex == STALCHILD_LIMB_JAW) && (this->breakFlags & 2)) { // jaw limb, don't draw if headless
        *dList = NULL;
    }
    return 0;
}

void EnSkb_PostLimbDraw(PlayState* arg0, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnSkb* this = thisx;

    Collider_UpdateSpheres(limbIndex, &this->collider);
    if ((this->breakFlags ^ 1) == 0) {
        BodyBreak_SetInfo(&this->bodyBreak, limbIndex, STALCHILD_LIMB_HEAD, STALCHILD_LIMB_JAW, 18, dList,
                          BODYBREAK_OBJECT_SLOT_DEFAULT);
    } else if ((this->breakFlags ^ (this->breakFlags | 4)) == 0) {
        BodyBreak_SetInfo(&this->bodyBreak, limbIndex, 0, 18, 18, dList, BODYBREAK_OBJECT_SLOT_DEFAULT);
    }
}

void EnSkb_Draw(Actor* thisx, PlayState* play) {
    EnSkb* this = (EnSkb*)thisx;

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    SkelAnime_DrawOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, EnSkb_OverrideLimbDraw,
                      EnSkb_PostLimbDraw, this);
}
