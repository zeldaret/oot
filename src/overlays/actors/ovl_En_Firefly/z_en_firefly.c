#include "z_en_firefly.h"
#include "overlays/actors/ovl_Obj_Syokudai/z_obj_syokudai.h"

#include "libc64/qrand.h"
#include "array_count.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "rand.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "versions.h"
#include "z_en_item00.h"
#include "z_lib.h"
#include "effect.h"
#include "play_state.h"
#include "player.h"

#include "assets/objects/object_firefly/object_firefly.h"

#define FLAGS \
    (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE | ACTOR_FLAG_IGNORE_QUAKE | ACTOR_FLAG_CAN_ATTACH_TO_ARROW)

void EnFirefly_Init(Actor* thisx, PlayState* play);
void EnFirefly_Destroy(Actor* thisx, PlayState* play);
void EnFirefly_Update(Actor* thisx, PlayState* play2);
void EnFirefly_DrawOpa(Actor* thisx, PlayState* play);

void EnFirefly_Idle(EnFirefly*, PlayState*);
void EnFirefly_Die(EnFirefly*, PlayState*);
void EnFirefly_Disappear(EnFirefly*, PlayState*);
void EnFirefly_Attack(EnFirefly*, PlayState*);
void EnFirefly_Stay(EnFirefly*, PlayState*);
void EnFirefly_FlyTowardsHome(EnFirefly*, PlayState*);
void EnFirefly_Stunned(EnFirefly*, PlayState*);
void EnFirefly_DieFrozen(EnFirefly*, PlayState*);
void EnFirefly_Perched(EnFirefly*, PlayState*);
void EnFirefly_AttackFromPerched(EnFirefly*, PlayState*);
void EnFirefly_DrawXlu(Actor*, PlayState*);

typedef enum EnFireflyEffectsElementalType {
    EN_FIREFLY_EFFECTS_ELEMENTAL_TYPE_NONE,
    EN_FIREFLY_EFFECTS_ELEMENTAL_TYPE_FIRE,
    EN_FIREFLY_EFFECTS_ELEMENTAL_TYPE_ICE
} EnFireflyEffectsElementalType;

typedef enum EnFireflyBodyElementalType {
    EN_FIREFLY_BODY_ELEMENTAL_TYPE_NORMAL,
    EN_FIREFLY_BODY_ELEMENTAL_TYPE_FIRE
} EnFireflyBodyElementalType;

ActorProfile En_Firefly_Profile = {
    /**/ ACTOR_EN_FIREFLY,
    /**/ ACTORCAT_ENEMY,
    /**/ FLAGS,
    /**/ OBJECT_FIREFLY,
    /**/ sizeof(EnFirefly),
    /**/ EnFirefly_Init,
    /**/ EnFirefly_Destroy,
    /**/ EnFirefly_Update,
    /**/ EnFirefly_DrawOpa,
};

static ColliderJntSphElementInit sJntSphElementsInit[] = {
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0xFFCFFFFF, HIT_SPECIAL_EFFECT_FIRE, 0x08 },
            { 0xFFCFFFFF, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_ON | ATELEM_SFX_HARD,
            ACELEM_ON,
            OCELEM_ON,
        },
        { KEESE_LIMB_ROOT_ROOT, { { 0, 1000, 0 }, 15 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    {
        COL_MATERIAL_HIT3,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    ARRAY_COUNT(sJntSphElementsInit),
    sJntSphElementsInit,
};

static CollisionCheckInfoInit sColChkInfoInit = { 1, 10, 10, 30 };

typedef enum EnFireflyDamageReaction {
    EN_FIREFLY_DMG_REACT_NONE,
    EN_FIREFLY_DMG_REACT_STUN,
    EN_FIREFLY_DMG_REACT_DINS_FIRE,
    EN_FIREFLY_DMG_REACT_ICE,
    EN_FIREFLY_DMG_REACT_FIRE_ARROW = 0xF
} EnFireflyDamageReaction;

static DamageTable sDamageTable = {
    /* Deku nut      */ DMG_ENTRY(0, EN_FIREFLY_DMG_REACT_STUN),
    /* Deku stick    */ DMG_ENTRY(2, EN_FIREFLY_DMG_REACT_NONE),
    /* Slingshot     */ DMG_ENTRY(1, EN_FIREFLY_DMG_REACT_NONE),
    /* Explosive     */ DMG_ENTRY(2, EN_FIREFLY_DMG_REACT_NONE),
    /* Boomerang     */ DMG_ENTRY(1, EN_FIREFLY_DMG_REACT_NONE),
    /* Normal arrow  */ DMG_ENTRY(2, EN_FIREFLY_DMG_REACT_NONE),
    /* Hammer swing  */ DMG_ENTRY(2, EN_FIREFLY_DMG_REACT_NONE),
    /* Hookshot      */ DMG_ENTRY(2, EN_FIREFLY_DMG_REACT_NONE),
    /* Kokiri sword  */ DMG_ENTRY(1, EN_FIREFLY_DMG_REACT_NONE),
    /* Master sword  */ DMG_ENTRY(2, EN_FIREFLY_DMG_REACT_NONE),
    /* Giant's Knife */ DMG_ENTRY(4, EN_FIREFLY_DMG_REACT_NONE),
    /* Fire arrow    */ DMG_ENTRY(2, EN_FIREFLY_DMG_REACT_FIRE_ARROW),
    /* Ice arrow     */ DMG_ENTRY(4, EN_FIREFLY_DMG_REACT_ICE),
    /* Light arrow   */ DMG_ENTRY(2, EN_FIREFLY_DMG_REACT_NONE),
    /* Unk arrow 1   */ DMG_ENTRY(2, EN_FIREFLY_DMG_REACT_NONE),
    /* Unk arrow 2   */ DMG_ENTRY(2, EN_FIREFLY_DMG_REACT_NONE),
    /* Unk arrow 3   */ DMG_ENTRY(2, EN_FIREFLY_DMG_REACT_NONE),
    /* Fire magic    */ DMG_ENTRY(0, EN_FIREFLY_DMG_REACT_DINS_FIRE),
    /* Ice magic     */ DMG_ENTRY(4, EN_FIREFLY_DMG_REACT_ICE),
    /* Light magic   */ DMG_ENTRY(0, EN_FIREFLY_DMG_REACT_NONE),
    /* Shield        */ DMG_ENTRY(0, EN_FIREFLY_DMG_REACT_NONE),
    /* Mirror Ray    */ DMG_ENTRY(0, EN_FIREFLY_DMG_REACT_NONE),
    /* Kokiri spin   */ DMG_ENTRY(1, EN_FIREFLY_DMG_REACT_NONE),
    /* Giant spin    */ DMG_ENTRY(4, EN_FIREFLY_DMG_REACT_NONE),
    /* Master spin   */ DMG_ENTRY(2, EN_FIREFLY_DMG_REACT_NONE),
    /* Kokiri jump   */ DMG_ENTRY(2, EN_FIREFLY_DMG_REACT_NONE),
    /* Giant jump    */ DMG_ENTRY(8, EN_FIREFLY_DMG_REACT_NONE),
    /* Master jump   */ DMG_ENTRY(4, EN_FIREFLY_DMG_REACT_NONE),
    /* Unknown 1     */ DMG_ENTRY(0, EN_FIREFLY_DMG_REACT_NONE),
    /* Unblockable   */ DMG_ENTRY(0, EN_FIREFLY_DMG_REACT_NONE),
    /* Hammer jump   */ DMG_ENTRY(4, EN_FIREFLY_DMG_REACT_NONE),
    /* Unknown 2     */ DMG_ENTRY(0, EN_FIREFLY_DMG_REACT_NONE),
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 5, ICHAIN_CONTINUE),  ICHAIN_F32_DIV1000(gravity, -500, ICHAIN_CONTINUE),
    ICHAIN_F32(minVelocityY, -4, ICHAIN_CONTINUE),    ICHAIN_U8(attentionRangeType, ATTENTION_RANGE_2, ICHAIN_CONTINUE),
    ICHAIN_F32(lockOnArrowOffset, 4000, ICHAIN_STOP),
};

void EnFirefly_SetElementNormal(EnFirefly* this) {
    this->actor.params += 2; // EN_FIREFLY_TYPE_NORMAL, EN_FIREFLY_TYPE_NORMAL_PERCHED
    this->collider.elements[0].base.atDmgInfo.hitSpecialEffect = HIT_SPECIAL_EFFECT_NONE;
    this->effectsElementalType = EN_FIREFLY_EFFECTS_ELEMENTAL_TYPE_NONE;
    this->bodyElementalType = EN_FIREFLY_BODY_ELEMENTAL_TYPE_NORMAL;
    this->actor.naviEnemyId = NAVI_ENEMY_KEESE;
}

void EnFirefly_SetElementFire(EnFirefly* this) {
    if (this->actor.params == EN_FIREFLY_TYPE_ICE) {
        this->actor.params = EN_FIREFLY_TYPE_FIRE;
    } else {
        this->actor.params -= 2; // EN_FIREFLY_TYPE_FIRE, EN_FIREFLY_TYPE_FIRE_CAN_PERCH
    }
    this->collider.elements[0].base.atDmgInfo.hitSpecialEffect = HIT_SPECIAL_EFFECT_FIRE;
    this->effectsElementalType = EN_FIREFLY_EFFECTS_ELEMENTAL_TYPE_FIRE;
    this->bodyElementalType = EN_FIREFLY_BODY_ELEMENTAL_TYPE_FIRE;
    this->actor.naviEnemyId = NAVI_ENEMY_FIRE_KEESE;
}

void EnFirefly_Init(Actor* thisx, PlayState* play) {
    EnFirefly* this = (EnFirefly*)thisx;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 25.0f);
    SkelAnime_Init(play, &this->skelAnime, &gKeeseSkel, &gKeeseFlyAnim, this->jointTable, this->morphTable,
                   KEESE_LIMB_MAX);
    Collider_InitJntSph(play, &this->collider);
    Collider_SetJntSph(play, &this->collider, &this->actor, &sJntSphInit, this->colliderElements);
    CollisionCheck_SetInfo(&this->actor.colChkInfo, &sDamageTable, &sColChkInfoInit);
    if (PARAMS_GET_NOSHIFT(this->actor.params, 15, 1)) {
        this->actor.flags |= ACTOR_FLAG_REACT_TO_LENS;
        thisx->draw = EnFirefly_DrawXlu;
        this->actor.params &= 0x7FFF;
    }
    if (this->actor.params <= EN_FIREFLY_TYPE_FIRE_CAN_PERCH) { // EN_FIREFLY_TYPE_FIRE0, EN_FIREFLY_TYPE_FIRE1
        this->bodyElementalType = EN_FIREFLY_BODY_ELEMENTAL_TYPE_FIRE;
    } else {
        this->bodyElementalType = EN_FIREFLY_BODY_ELEMENTAL_TYPE_NORMAL;
    }
    if (this->bodyElementalType != EN_FIREFLY_BODY_ELEMENTAL_TYPE_NORMAL) {
        this->actionFunc = EnFirefly_Idle;
        this->timer = Rand_S16Offset(20, 60);
        this->actor.shape.rot.x = 0x1554;
        this->effectsElementalType = EN_FIREFLY_EFFECTS_ELEMENTAL_TYPE_FIRE;
        this->actor.naviEnemyId = NAVI_ENEMY_FIRE_KEESE;
        this->homeY = this->actor.home.pos.y;
    } else {
        if (this->actor.params == EN_FIREFLY_TYPE_NORMAL_PERCHED) {
            this->actionFunc = EnFirefly_Perched;
        } else {
            this->actionFunc = EnFirefly_Idle;
        }
        if (this->actor.params == EN_FIREFLY_TYPE_ICE) {
            this->collider.elements[0].base.atDmgInfo.hitSpecialEffect = HIT_SPECIAL_EFFECT_ICE;
            this->actor.naviEnemyId = NAVI_ENEMY_ICE_KEESE;
        } else {
            this->collider.elements[0].base.atDmgInfo.hitSpecialEffect = HIT_SPECIAL_EFFECT_NONE;
            this->actor.naviEnemyId = NAVI_ENEMY_KEESE;
        }
        this->homeY = this->actor.home.pos.y + 100.0f;
        if (this->actor.params == EN_FIREFLY_TYPE_ICE) {
            this->effectsElementalType = EN_FIREFLY_EFFECTS_ELEMENTAL_TYPE_ICE;
        } else {
            this->effectsElementalType = EN_FIREFLY_EFFECTS_ELEMENTAL_TYPE_NONE;
        }
    }
    this->collider.elements[0].dim.worldSphere.radius = sJntSphInit.elements[0].dim.modelSphere.radius;
}

void EnFirefly_Destroy(Actor* thisx, PlayState* play) {
    EnFirefly* this = (EnFirefly*)thisx;

    Collider_DestroyJntSph(play, &this->collider);
}

void EnFirefly_SetupIdle(EnFirefly* this) {
    s32 targetPitch;

    this->timer = Rand_S16Offset(70, 100);
    this->actor.speed = (Rand_ZeroOne() * 1.5f) + 1.5f;
    Math_ScaledStepToS(&this->actor.shape.rot.y, Actor_WorldYawTowardPoint(&this->actor, &this->actor.home.pos), 0x300);
    if (this->homeY < this->actor.world.pos.y) {
        targetPitch = 0xC00;
    } else {
        targetPitch = -0xC00;
    }
    this->targetPitch = targetPitch + 0x1554;
    this->skelAnime.playSpeed = 1.0f;
    this->actionFunc = EnFirefly_Idle;
}

void EnFirefly_SetupDie(EnFirefly* this) {
    this->timer = 40;
    this->actor.velocity.y = 0.0f;
    Animation_Change(&this->skelAnime, &gKeeseFlyAnim, 0.5f, 0.0f, 0.0f, ANIMMODE_LOOP_INTERP, -3.0f);
    Actor_PlaySfx(&this->actor, NA_SE_EN_FFLY_DEAD);
    this->actor.flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;
    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 255, COLORFILTER_BUFFLAG_OPA, 40);
    this->actionFunc = EnFirefly_Die;
}

void EnFirefly_SetupDisappear(EnFirefly* this) {
    this->timer = 15;
    this->actionFunc = EnFirefly_Disappear;
    this->actor.speed = 0.0f;
}

void EnFirefly_SetupStay(EnFirefly* this) {
    this->actor.world.rot.x = 0x7000;
    this->timer = 18;
    this->actionFunc = EnFirefly_Stay;
    this->skelAnime.playSpeed = 1.0f;
    this->actor.speed = 2.5f;
}

void EnFirefly_SetupAttack(EnFirefly* this) {
    s32 targetPitch;

    this->timer = Rand_S16Offset(70, 100);
    this->skelAnime.playSpeed = 1.0f;
    if (this->actor.yDistToPlayer > 0.0f) {
        targetPitch = -0xC00;
    } else {
        targetPitch = 0xC00;
    }
    this->targetPitch = targetPitch + 0x1554;
    this->actionFunc = EnFirefly_Attack;
}

void EnFirefly_SetupFlyTowardsHome(EnFirefly* this) {
    this->timer = 150;
    this->targetPitch = 0x954;
    this->actionFunc = EnFirefly_FlyTowardsHome;
    this->skelAnime.playSpeed = 1.0f;
}

void EnFirefly_SetupStunned(EnFirefly* this) {
    this->timer = 80;
    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_BLUE, 255, COLORFILTER_BUFFLAG_OPA, 80);
    this->effectsElementalType = EN_FIREFLY_EFFECTS_ELEMENTAL_TYPE_NONE;
    this->actor.velocity.y = 0.0f;
    this->skelAnime.playSpeed = 3.0f;
    Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    this->actionFunc = EnFirefly_Stunned;
}

void EnFirefly_SetupDieFrozen(EnFirefly* this, PlayState* play) {
    s32 i;
    Vec3f effPos;

    this->actor.flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;
    this->effectsElementalType = EN_FIREFLY_EFFECTS_ELEMENTAL_TYPE_NONE;
    this->actor.speed = 0.0f;
    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_BLUE, 255, COLORFILTER_BUFFLAG_OPA, 255);
    Actor_PlaySfx(&this->actor, NA_SE_EN_FFLY_DEAD);
    for (i = 0; i < 8; i++) {
        effPos.x = this->actor.world.pos.x + ((i & 1) ? 7.0f : -7.0f);
        effPos.y = this->actor.world.pos.y + ((i & 2) ? 7.0f : -7.0f);
        effPos.z = this->actor.world.pos.z + ((i & 4) ? 7.0f : -7.0f);
        EffectSsEnIce_SpawnFlyingVec3f(play, &this->actor, &effPos, 150, 150, 150, 250, 235, 245, 255,
                                       (Rand_ZeroOne() * 0.15f) + 0.85f);
    }
    this->actionFunc = EnFirefly_DieFrozen;
}

void EnFirefly_SetupPerched(EnFirefly* this) {
    this->timer = 1;
    this->actionFunc = EnFirefly_Perched;
    this->actor.speed = 0.0f;
}

void EnFirefly_SetupAttackFromPerched(EnFirefly* this) {
    this->skelAnime.playSpeed = 3.0f;
    this->actor.shape.rot.x = 0x1554;
    this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
    this->timer = 50;
    this->actor.speed = 3.0f;
    this->actionFunc = EnFirefly_AttackFromPerched;
}

s32 EnFirefly_ApproachPerchSpot(EnFirefly* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    f32 homeDist;
    f32 speedFac;

    if (this->actor.params != EN_FIREFLY_TYPE_NORMAL_PERCHED) {
        return false;
    }
    if (Actor_WorldDistXZToPoint(&player->actor, &this->actor.home.pos) > 300.0f) {
        homeDist = Actor_WorldDistXYZToPoint(&this->actor, &this->actor.home.pos);
        if (homeDist < 5.0f) {
            EnFirefly_SetupPerched(this);
        } else {
            speedFac = homeDist * 0.05f;
            if (speedFac < 1.0f) {
                this->actor.speed *= speedFac;
            }
            Math_ScaledStepToS(&this->actor.shape.rot.y, Actor_WorldYawTowardPoint(&this->actor, &this->actor.home.pos),
                               0x300);
            Math_ScaledStepToS(&this->actor.shape.rot.x,
                               Actor_WorldPitchTowardPoint(&this->actor, &this->actor.home.pos) + 0x1554, 0x100);
        }
        return true;
    } else {
        return false;
    }
}

s32 EnFirefly_ApproachLitTorch(EnFirefly* this, PlayState* play) {
    Actor* iter = play->actorCtx.actorLists[ACTORCAT_PROP].head;
    Actor* closestLitTorch = NULL;
    f32 closestLitTorchDist = 35000.0f;
    f32 dist;
    Vec3f torchFlamePos;

    while (iter != NULL) {
        if ((iter->id == ACTOR_OBJ_SYOKUDAI) && (((ObjSyokudai*)iter)->litTimer != 0)) {
            dist = Actor_WorldDistXYZToActor(&this->actor, iter);
            if (dist < closestLitTorchDist) {
                closestLitTorchDist = dist;
                closestLitTorch = iter;
            }
        }
        iter = iter->next;
    }
    if (closestLitTorch != NULL) {
        torchFlamePos.x = closestLitTorch->world.pos.x;
        torchFlamePos.y = closestLitTorch->world.pos.y + 52.0f + 15.0f;
        torchFlamePos.z = closestLitTorch->world.pos.z;
        if (Actor_WorldDistXYZToPoint(&this->actor, &torchFlamePos) < 15.0f) {
            EnFirefly_SetElementFire(this);
            return true;
        } else {
            Math_ScaledStepToS(&this->actor.shape.rot.y, Actor_WorldYawTowardActor(&this->actor, closestLitTorch),
                               0x300);
            Math_ScaledStepToS(&this->actor.shape.rot.x,
                               Actor_WorldPitchTowardPoint(&this->actor, &torchFlamePos) + 0x1554, 0x100);
            return true;
        }
    } else {
        return false;
    }
}

void EnFirefly_Idle(EnFirefly* this, PlayState* play) {
    s32 animLooped;
    f32 f;

    SkelAnime_Update(&this->skelAnime);
    if (this->timer != 0) {
        this->timer--;
    }
    animLooped = Animation_OnFrame(&this->skelAnime, 0.0f);
    this->actor.speed = (Rand_ZeroOne() * 1.5f) + 1.5f;
    if ((this->bodyElementalType != EN_FIREFLY_BODY_ELEMENTAL_TYPE_NORMAL) ||
        (this->actor.params == EN_FIREFLY_TYPE_ICE) ||
        (!EnFirefly_ApproachPerchSpot(this, play) && !EnFirefly_ApproachLitTorch(this, play))) {
        if (animLooped) {
            f = Rand_ZeroOne();
            if (f < 0.5f) {
                Math_ScaledStepToS(&this->actor.shape.rot.y,
                                   Actor_WorldYawTowardPoint(&this->actor, &this->actor.home.pos), 0x300);
            } else if (f < 0.8f) {
                f32 yawSpeed = Rand_CenteredFloat(1536.0f);

                this->actor.shape.rot.y = TRUNCF_BINANG(this->actor.shape.rot.y + yawSpeed);
            }
            if (this->actor.world.pos.y < (this->actor.floorHeight + 20.0f)) {
                this->targetPitch = 0x954;
            } else if (this->homeY < this->actor.world.pos.y) {
                this->targetPitch = 0x2154;
            } else if (Rand_ZeroOne() > 0.35f) {
                this->targetPitch = 0x954;
            } else {
                this->targetPitch = 0x2154;
            }
        } else {
            if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
                this->targetPitch = 0x954;
            } else if ((this->actor.bgCheckFlags & BGCHECKFLAG_CEILING) || (this->homeY < this->actor.world.pos.y)) {
                this->targetPitch = 0x2154;
            }
        }
        Math_ScaledStepToS(&this->actor.shape.rot.x, this->targetPitch, 0x100);
    }
    if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.wallYaw, 2, 0xC00, 0x300);
    }
    if ((this->timer == 0) && (this->actor.xzDistToPlayer < 200.0f) && (Player_GetMask(play) != PLAYER_MASK_SKULL)) {
        EnFirefly_SetupAttack(this);
    }
}

void EnFirefly_Die(EnFirefly* this, PlayState* play) {
    if (Animation_OnFrame(&this->skelAnime, 6.0f)) {
        this->skelAnime.playSpeed = 0.0f;
    }
    this->actor.colorFilterTimer = 40;
    SkelAnime_Update(&this->skelAnime);
    Math_StepToF(&this->actor.speed, 0.0f, 0.5f);
    if (this->actor.flags & ACTOR_FLAG_ATTACHED_TO_ARROW) {
        this->actor.colorFilterTimer = 40;
    } else {
        Math_ScaledStepToS(&this->actor.shape.rot.x, 0x6800, 0x200);
        this->actor.shape.rot.y -= 0x300;
        if (this->timer != 0) {
            this->timer--;
        }
        if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) || (this->timer == 0)) {
            EnFirefly_SetupDisappear(this);
        }
    }
}

void EnFirefly_Disappear(EnFirefly* this, PlayState* play) {
    if (this->timer != 0) {
        this->timer--;
    }
    Math_StepToF(&this->actor.scale.x, 0.0f, 0.00034f);
    this->actor.scale.y = this->actor.scale.z = this->actor.scale.x;
    if (this->timer == 0) {
        Item_DropCollectibleRandom(play, &this->actor, &this->actor.world.pos,
                                   COLLECTIBLE_DROP_RANDOM_PARAMS(COLLECTIBLE_DROP_TABLE_14, false));
        Actor_Kill(&this->actor);
    }
}

void EnFirefly_Attack(EnFirefly* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    Vec3f playerPos;

    SkelAnime_Update(&this->skelAnime);
    if (this->timer != 0) {
        this->timer--;
    }
    Math_StepToF(&this->actor.speed, 4.0f, 0.5f);
    if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.wallYaw, 2, 0xC00, 0x300);
        Math_ScaledStepToS(&this->actor.shape.rot.x, this->targetPitch, 0x100);
    } else if (Actor_IsFacingPlayer(&this->actor, 0x2800)) {
        if (Animation_OnFrame(&this->skelAnime, 4.0f)) {
            this->skelAnime.playSpeed = 0.0f;
            this->skelAnime.curFrame = 4.0f;
        }
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 2, 0xC00, 0x300);
        playerPos.x = player->actor.world.pos.x;
        playerPos.y = player->actor.world.pos.y + 20.0f;
        playerPos.z = player->actor.world.pos.z;
        Math_SmoothStepToS(&this->actor.shape.rot.x,
                           (s16)(Actor_WorldPitchTowardPoint(&this->actor, &playerPos) + 0x1554), 2, 0x400, 0x100);
    } else {
        this->skelAnime.playSpeed = 1.5f;
        if (this->actor.xzDistToPlayer > 80.0f) {
            Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 2, 0xC00, 0x300);
        }
        if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
            this->targetPitch = 0x954;
        }
        if ((this->actor.bgCheckFlags & BGCHECKFLAG_CEILING) || (this->homeY < this->actor.world.pos.y)) {
            this->targetPitch = 0x2154;
        } else {
            this->targetPitch = 0x954;
        }
        Math_ScaledStepToS(&this->actor.shape.rot.x, this->targetPitch, 0x100);
    }
    if ((this->timer == 0) || (Player_GetMask(play) == PLAYER_MASK_SKULL)) {
        EnFirefly_SetupFlyTowardsHome(this);
    }
}

void EnFirefly_Stay(EnFirefly* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    Math_ScaledStepToS(&this->actor.shape.rot.x, 0, 0x100);
    Math_StepToF(&this->actor.velocity.y, 0.0f, 0.4f);
    if (Math_StepToF(&this->actor.speed, 0.0f, 0.15f)) {
        if (this->timer != 0) {
            this->timer--;
        }
        if (this->timer == 0) {
            EnFirefly_SetupFlyTowardsHome(this);
        }
    }
}

void EnFirefly_FlyTowardsHome(EnFirefly* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (this->timer != 0) {
        this->timer--;
    }
    if (((fabsf(this->actor.world.pos.y - this->homeY) < 10.0f) &&
         (Math_Vec3f_DistXZ(&this->actor.world.pos, &this->actor.home.pos) < 20.0f)) ||
        (this->timer == 0)) {
        EnFirefly_SetupIdle(this);
    } else {
        Math_StepToF(&this->actor.speed, 3.0f, 0.3f);
        if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
            this->targetPitch = 0x954;
        } else if ((this->actor.bgCheckFlags & BGCHECKFLAG_CEILING) || (this->homeY < this->actor.world.pos.y)) {
            this->targetPitch = 0x2154;
        } else {
            this->targetPitch = 0x954;
        }
        if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
            Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.wallYaw, 2, 0xC00, 0x300);
        } else {
            Math_ScaledStepToS(&this->actor.shape.rot.y, Actor_WorldYawTowardPoint(&this->actor, &this->actor.home.pos),
                               0x300);
        }
        Math_ScaledStepToS(&this->actor.shape.rot.x, this->targetPitch, 0x100);
    }
}

void EnFirefly_Stunned(EnFirefly* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    Math_StepToF(&this->actor.speed, 0.0f, 0.5f);
    Math_ScaledStepToS(&this->actor.shape.rot.x, 0x1554, 0x100);
    if (this->timer != 0) {
        this->timer--;
    }
    if (this->timer == 0) {
        if (this->bodyElementalType != EN_FIREFLY_BODY_ELEMENTAL_TYPE_NORMAL) {
            this->effectsElementalType = EN_FIREFLY_EFFECTS_ELEMENTAL_TYPE_FIRE;
        } else if (this->actor.params == EN_FIREFLY_TYPE_ICE) {
            this->effectsElementalType = EN_FIREFLY_EFFECTS_ELEMENTAL_TYPE_ICE;
        }
        EnFirefly_SetupIdle(this);
    }
}

void EnFirefly_DieFrozen(EnFirefly* this, PlayState* play) {
#if OOT_VERSION < NTSC_1_1
    if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) || (this->actor.floorHeight == BGCHECK_Y_MIN)) {
#else
    if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) || (this->actor.floorHeight == BGCHECK_Y_MIN)) {
#endif
        this->actor.colorFilterTimer = 0;
        EnFirefly_SetupDisappear(this);
    } else {
        this->actor.colorFilterTimer = 255;
    }
}

void EnFirefly_Perched(EnFirefly* this, PlayState* play) {
    Math_ScaledStepToS(&this->actor.shape.rot.x, 0, 0x100);
    if (this->timer != 0) {
        SkelAnime_Update(&this->skelAnime);
        if (Animation_OnFrame(&this->skelAnime, 6.0f)) {
            this->timer--;
        }
    } else if (Rand_ZeroOne() < 0.02f) {
        this->timer = 1;
    }
    if (this->actor.xzDistToPlayer < 120.0f) {
        EnFirefly_SetupAttackFromPerched(this);
    }
}

void EnFirefly_AttackFromPerched(EnFirefly* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    Vec3f playerPos;

    SkelAnime_Update(&this->skelAnime);
    if (this->timer != 0) {
        this->timer--;
    }
    if (this->timer < 40) {
        Math_ScaledStepToS(&this->actor.shape.rot.x, -0xAAC, 0x100);
    } else {
        playerPos.x = player->actor.world.pos.x;
        playerPos.y = player->actor.world.pos.y + 20.0f;
        playerPos.z = player->actor.world.pos.z;
        Math_ScaledStepToS(&this->actor.shape.rot.x, Actor_WorldPitchTowardPoint(&this->actor, &playerPos) + 0x1554,
                           0x100);
        Math_ScaledStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 0x300);
    }
    if (this->timer == 0) {
        EnFirefly_SetupIdle(this);
    }
}

void EnFirefly_IceMelt(EnFirefly* this, PlayState* play) {
    s32 bodyPart;

    for (bodyPart = 0; bodyPart < EN_FIREFLY_BODY_PART_MAX; bodyPart++) {
        EffectSsEnFire_SpawnVec3f(play, &this->actor, &this->actor.world.pos, 40, 0, 0, bodyPart);
    }
    this->effectsElementalType = EN_FIREFLY_EFFECTS_ELEMENTAL_TYPE_NONE;
}

void EnFirefly_CheckCollide(EnFirefly* this, PlayState* play) {
    if (this->collider.base.acFlags & AC_HIT) {
        this->collider.base.acFlags &= ~AC_HIT;
        Actor_SetDropFlag(&this->actor, &this->collider.elements[0].base, true);
        if ((this->actor.colChkInfo.damageReaction != EN_FIREFLY_DMG_REACT_NONE) ||
            (this->actor.colChkInfo.damage != 0)) {
            if (Actor_ApplyDamage(&this->actor) == 0) {
                Enemy_StartFinishingBlow(play, &this->actor);
                this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
            }
            if (this->actor.colChkInfo.damageReaction == EN_FIREFLY_DMG_REACT_DINS_FIRE) {
                if (this->actor.params == EN_FIREFLY_TYPE_ICE) {
                    this->actor.colChkInfo.health = 0;
                    Enemy_StartFinishingBlow(play, &this->actor);
                    EnFirefly_IceMelt(this, play);
                    EnFirefly_SetupDie(this);
                } else if (this->bodyElementalType == EN_FIREFLY_BODY_ELEMENTAL_TYPE_NORMAL) {
                    EnFirefly_SetElementFire(this);
                    if (this->actionFunc == EnFirefly_Perched) {
                        EnFirefly_SetupIdle(this);
                    }
                }
            } else if (this->actor.colChkInfo.damageReaction == EN_FIREFLY_DMG_REACT_ICE) {
                if (this->actor.params == EN_FIREFLY_TYPE_ICE) {
                    EnFirefly_SetupDie(this);
                } else {
                    EnFirefly_SetupDieFrozen(this, play);
                }
            } else if (this->actor.colChkInfo.damageReaction == EN_FIREFLY_DMG_REACT_STUN) {
                if (this->actionFunc != EnFirefly_Stunned) {
                    EnFirefly_SetupStunned(this);
                }
            } else {
                if ((this->actor.colChkInfo.damageReaction == EN_FIREFLY_DMG_REACT_FIRE_ARROW) &&
                    (this->actor.params == EN_FIREFLY_TYPE_ICE)) {
                    EnFirefly_IceMelt(this, play);
                }
                EnFirefly_SetupDie(this);
            }
        }
    }
}

void EnFirefly_Update(Actor* thisx, PlayState* play2) {
    EnFirefly* this = (EnFirefly*)thisx;
    PlayState* play = play2;

    if (this->collider.base.atFlags & AT_HIT) {
        this->collider.base.atFlags &= ~AT_HIT;
        Actor_PlaySfx(&this->actor, NA_SE_EN_FFLY_ATTACK);
        if (this->bodyElementalType != EN_FIREFLY_BODY_ELEMENTAL_TYPE_NORMAL) {
            EnFirefly_SetElementNormal(this);
        }
        if (this->actionFunc != EnFirefly_AttackFromPerched) {
            EnFirefly_SetupStay(this);
        }
    }
    EnFirefly_CheckCollide(this, play);
    this->actionFunc(this, play);
    if (!(this->actor.flags & ACTOR_FLAG_ATTACHED_TO_ARROW)) {
        if ((this->actor.colChkInfo.health == 0) || ((this->actionFunc == EnFirefly_Stunned))) {
            Actor_MoveXZGravity(&this->actor);
        } else {
            if (this->actionFunc != EnFirefly_Stay) {
                this->actor.world.rot.x = 0x1554 - this->actor.shape.rot.x;
            }
            Actor_MoveXYZ(&this->actor);
        }
    }
    Actor_UpdateBgCheckInfo(play, &this->actor, 10.0f, 10.0f, 15.0f,
                            UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_1 | UPDBGCHECKINFO_FLAG_2);
    this->collider.elements[0].dim.worldSphere.center.x = this->actor.world.pos.x;
    this->collider.elements[0].dim.worldSphere.center.y = this->actor.world.pos.y + 10.0f;
    this->collider.elements[0].dim.worldSphere.center.z = this->actor.world.pos.z;
    if ((this->actionFunc == EnFirefly_Attack) || (this->actionFunc == EnFirefly_AttackFromPerched)) {
        CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
    }
    if (this->actor.colChkInfo.health != 0) {
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
        this->actor.world.rot.y = this->actor.shape.rot.y;
        if (Animation_OnFrame(&this->skelAnime, 5.0f)) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_FFLY_FLY);
        }
    }
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    this->actor.focus.pos.x =
        this->actor.world.pos.x + (10.0f * Math_SinS(this->actor.shape.rot.x) * Math_SinS(this->actor.shape.rot.y));
    this->actor.focus.pos.y = this->actor.world.pos.y + (10.0f * Math_CosS(this->actor.shape.rot.x));
    this->actor.focus.pos.z =
        this->actor.world.pos.z + (10.0f * Math_SinS(this->actor.shape.rot.x) * Math_CosS(this->actor.shape.rot.y));
}

s32 EnFirefly_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx,
                               Gfx** gfx) {
    EnFirefly* this = (EnFirefly*)thisx;

    if ((this->actor.draw == EnFirefly_DrawXlu) && !play->actorCtx.lensActive) {
        *dList = NULL;
    } else if (limbIndex == KEESE_LIMB_ROOT_ROOT) {
        pos->y += 2300.0f;
    }
    return false;
}

void EnFirefly_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx, Gfx** gfx) {
    static Color_RGBA8 sFireEffPrimColor = { 255, 255, 100, 255 };
    static Color_RGBA8 sFireEffEnvColor = { 255, 50, 0, 0 };
    static Color_RGBA8 sIceEffPrimColor = { 100, 200, 255, 255 };
    static Color_RGBA8 sIceEffEnvColor = { 0, 0, 255, 0 };
    static Vec3f sEffVel = { 0.0f, 0.5f, 0.0f };
    static Vec3f sEffAccel = { 0.0f, 0.5f, 0.0f };
    static Vec3f D_80A14FC8 = { 0.0f, 0.0f, 0.0f };
    Vec3f effPos;
    Vec3f* bodyPartPos;
    Color_RGBA8* effEnvColor;
    Color_RGBA8* effPrimColor;
    MtxF mf;
    EnFirefly* this = (EnFirefly*)thisx;
    s16 effScaleStep;
    s16 effLife;

    if ((this->bodyElementalType == EN_FIREFLY_BODY_ELEMENTAL_TYPE_NORMAL) && (limbIndex == KEESE_LIMB_HEAD)) {
        gSPDisplayList((*gfx)++, gKeeseEyesDL);
    } else {
        if (((this->effectsElementalType == EN_FIREFLY_EFFECTS_ELEMENTAL_TYPE_FIRE) ||
             (this->effectsElementalType == EN_FIREFLY_EFFECTS_ELEMENTAL_TYPE_ICE)) &&
            ((limbIndex == KEESE_LIMB_LEFT_WING_END) || (limbIndex == KEESE_LIMB_RIGHT_WING_END_ROOT))) {
            if (this->actionFunc != EnFirefly_Disappear) {
                Matrix_Get(&mf);
                effPos.x = (Rand_ZeroOne() * 5.0f) + mf.xw;
                effPos.y = (Rand_ZeroOne() * 5.0f) + mf.yw;
                effPos.z = (Rand_ZeroOne() * 5.0f) + mf.zw;
                effScaleStep = -40;
                effLife = 3;
            } else {
                if (limbIndex == 15) {
                    effPos.x = this->actor.world.pos.x + (Math_SinS(this->timer * 0x238C) * this->timer);
                    effPos.z = this->actor.world.pos.z + (Math_CosS(this->timer * 0x238C) * this->timer);
                } else {
                    effPos.x = this->actor.world.pos.x - (Math_SinS(this->timer * 0x238C) * this->timer);
                    effPos.z = this->actor.world.pos.z - (Math_CosS(this->timer * 0x238C) * this->timer);
                }
                effScaleStep = -5;
                effLife = 10;
                effPos.y = this->actor.world.pos.y + ((15 - this->timer) * 1.5f);
            }
            if (this->effectsElementalType == EN_FIREFLY_EFFECTS_ELEMENTAL_TYPE_FIRE) {
                effPrimColor = &sFireEffPrimColor;
                effEnvColor = &sFireEffEnvColor;
            } else {
                effPrimColor = &sIceEffPrimColor;
                effEnvColor = &sIceEffEnvColor;
            }
            func_8002843C(play, &effPos, &sEffVel, &sEffAccel, effPrimColor, effEnvColor, 250, effScaleStep, effLife);
        }
    }
    if ((limbIndex == KEESE_LIMB_LEFT_WING_END) || (limbIndex == KEESE_LIMB_RIGHT_WING_END_ROOT) ||
        (limbIndex == KEESE_LIMB_BODY)) {
        if (limbIndex == KEESE_LIMB_LEFT_WING_END) {
            bodyPartPos = &this->bodyPartsPos[EN_FIREFLY_BODY_PART_LEFT_WING];
        } else if (limbIndex == KEESE_LIMB_RIGHT_WING_END_ROOT) {
            bodyPartPos = &this->bodyPartsPos[EN_FIREFLY_BODY_PART_RIGHT_WING];
        } else {
            bodyPartPos = &this->bodyPartsPos[EN_FIREFLY_BODY_PART_BODY];
        }
        Matrix_MultVec3f(&D_80A14FC8, bodyPartPos);
        bodyPartPos->y -= 5.0f;
    }
}

void EnFirefly_DrawOpa(Actor* thisx, PlayState* play) {
    EnFirefly* this = (EnFirefly*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_firefly.c", 0x6C5);
    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    if (this->bodyElementalType != EN_FIREFLY_BODY_ELEMENTAL_TYPE_NORMAL) {
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);
    } else {
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
    }
    POLY_OPA_DISP = SkelAnime_Draw(play, this->skelAnime.skeleton, this->skelAnime.jointTable,
                                   EnFirefly_OverrideLimbDraw, EnFirefly_PostLimbDraw, this, POLY_OPA_DISP);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_firefly.c", 1763);
}

void EnFirefly_DrawXlu(Actor* thisx, PlayState* play) {
    EnFirefly* this = (EnFirefly*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_firefly.c", 1775);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    if (this->bodyElementalType != EN_FIREFLY_BODY_ELEMENTAL_TYPE_NORMAL) {
        gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, 0);
    } else {
        gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, 255);
    }
    POLY_XLU_DISP = SkelAnime_Draw(play, this->skelAnime.skeleton, this->skelAnime.jointTable,
                                   EnFirefly_OverrideLimbDraw, EnFirefly_PostLimbDraw, thisx, POLY_XLU_DISP);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_firefly.c", 1805);
}
