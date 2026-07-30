/*
 * File: z_en_skb.c
 * Overlay: ovl_En_Skb
 * Description: Stalchild
 */

#include "z_en_skb.h"
#include "overlays/actors/ovl_En_Encount1/z_en_encount1.h"

#include "libc64/qrand.h"
#include "array_count.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "rand.h"
#include "sfx.h"
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

static ColliderJntSphElementInit D_80AFE020[2] = {
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0xFFCFFFFF, HIT_SPECIAL_EFFECT_NONE, 0x04 },
            { 0x00000000, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_ON | ATELEM_SFX_NORMAL,
            ACELEM_NONE,
            OCELEM_NONE,
        },
        { 15, { { 0, 0, 0 }, 10 }, 100 },
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
        { 1, { { 0, 0, 0 }, 20 }, 100 },
    },
};

static ColliderJntSphInit D_80AFE068 = {
    {
        COL_MATERIAL_HIT6,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    2,
    D_80AFE020,
};

static DamageTable D_80AFE078 = {
    {
        0x10, 0xF2, 0xF1, 0xF2, 0x10, 0xF2, 0xF2, 0x10, 0xE1, 0xF2, 0xF4, 0x74, 0xF2, 0xF2, 0xF2, 0,
        0,    0x74, 0x60, 0xD3, 0,    0,    0xD1, 0xF4, 0xF2, 0xF2, 0xF8, 0xF4, 0,    0,    0xF4, 0,
    },
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

static Vec3f D_80AFE0B8 = { 0.0f, 8.0f, 0.0f };
static Vec3f D_80AFE0C4 = { 0.0f, -1.5f, 0.0f };
static InitChainEntry D_80AFE0D0[] = {
    ICHAIN_F32(lockOnArrowOffset, 2000, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -2000, ICHAIN_STOP),
};

void func_80AFC9A0(EnSkb* this, void (*arg1)(EnSkb*, PlayState*)) {
    this->unk284 = arg1;
}

void func_80AFC9A8(PlayState* play, EnSkb* this, Vec3f* arg2) {
    Vec3f sp5C;
    Vec3f sp50;
    Vec3f sp44;
    f32 temp_fa0;
    s32 pad;

    sp50 = D_80AFE0B8;
    sp44 = D_80AFE0C4;
    temp_fa0 = (Rand_ZeroOne() - 0.5f) * 6.28f;
    sp5C.y = this->actor.floorHeight;
    sp5C.x = (Math_SinF(temp_fa0) * 15.0f) + arg2->x;
    sp5C.z = (Math_CosF(temp_fa0) * 15.0f) + arg2->z;
    sp44.x = Rand_CenteredFloat(1.0f);
    sp44.z = Rand_CenteredFloat(1.0f);
    sp50.y += (Rand_ZeroOne() - 0.5f) * 4.0f;
    EffectSsHahen_Spawn(play, &sp5C, &sp50, &sp44, 2, ((Rand_ZeroOne() * 5.0f) + 12.0f) * 0.8f, -1, 10, NULL);
    func_80033480(play, &sp5C, 10.0f, 1, 0x96, 0, 1U);
}

void EnSkb_Init(Actor* thisx, PlayState* play) {
    EnSkb* this = (EnSkb*)thisx;

    Actor_ProcessInitChain(&this->actor, D_80AFE0D0);
    this->actor.colChkInfo.damageTable = &D_80AFE078;
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 0.0f);
    this->actor.focus.pos = this->actor.world.pos;
    this->actor.colChkInfo.mass = MASS_HEAVY;
    this->actor.colChkInfo.health = 2;
    this->actor.shape.yOffset = -8000.0f;
    SkelAnime_Init(play, &this->unk14C, &object_skb_0041F8_Skel, &object_skb_001854_Anim, this->unk190, this->unk208,
                   20);
    this->actor.naviEnemyId = NAVI_ENEMY_STALCHILD;
    Collider_InitJntSph(play, &this->unk2A4);
    Collider_SetJntSph(play, &this->unk2A4, &this->actor, &D_80AFE068, this->unk2C4);
    Actor_SetScale(&this->actor, ((this->actor.params * 0.1f) + 1.0f) * 0.01f);
    this->unk2A4.elements[0].dim.modelSphere.radius = this->unk2A4.elements[0].dim.worldSphere.radius =
        this->actor.params + 10;
    this->unk2A4.elements[1].dim.modelSphere.radius = this->unk2A4.elements[1].dim.worldSphere.radius =
        (this->actor.params + 10) * 2;
    this->actor.home.pos = this->actor.world.pos;
    this->actor.floorHeight = this->actor.world.pos.y;
    EnSkb_SetupRiseFromGround(this);
}

typedef struct UnkActor {
    Actor actor;
    char pad14C[6];
    s16 unk152;
} UnkActor;

void EnSkb_Destroy(Actor* thisx, PlayState* play) {
    UnkActor* temp_v1;
    EnSkb* this = (EnSkb*)thisx;

    if ((this->actor.parent != NULL)) {
        temp_v1 = (UnkActor*)this->actor.parent;
        if ((temp_v1->actor.update != NULL)) {
            if (temp_v1->unk152 > 0) {
                temp_v1->unk152 -= 1;
            }
        }
    }
    Collider_DestroyJntSph(play, &this->unk2A4);
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
    Animation_PlayOnceSetSpeed(&this->unk14C, &object_skb_001854_Anim, 1.0f);
    this->actionState = SKB_BEHAVIOR_BURIED;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    Actor_PlaySfx(&this->actor, NA_SE_EN_RIVA_APPEAR);
    func_80AFC9A0(this, EnSkb_RiseFromGround);
}

void EnSkb_RiseFromGround(EnSkb* this, PlayState* play) {
    if (this->unk14C.curFrame < 4.0f) {
        this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    } else {
        this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
    }
    Math_SmoothStepToF(&this->actor.shape.yOffset, 0.0f, 1.0f, 800.0f, 0.0f);
    Math_SmoothStepToF(&this->actor.shape.shadowScale, 25.0f, 1.0f, 2.5f, 0.0f);
    if (play->gameplayFrames & 1) {
        func_80AFC9A8(play, this, &this->actor.world.pos);
    }
    if (SkelAnime_Update(&this->unk14C) && (this->actor.shape.yOffset == 0.0f)) {
        EnSkb_DecideNextAction(this);
    }
}

void EnSkb_SetupDespawn(EnSkb* this) {
    Animation_Change(&this->unk14C, &object_skb_001854_Anim, -1.0f, Animation_GetLastFrame(&object_skb_001854_Anim),
                     0.0f, ANIMMODE_ONCE, -4.0f);
    this->actionState = SKB_BEHAVIOR_BURIED;
    this->setColliderAT = false;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    this->actor.speed = 0.0f;
    Actor_PlaySfx(&this->actor, NA_SE_EN_AKINDONUTS_HIDE);
    func_80AFC9A0(this, EnSkb_Despawn);
}

void EnSkb_Despawn(EnSkb* this, PlayState* play) {
    if ((Math_SmoothStepToF(&this->actor.shape.yOffset, -8000.0f, 1.0f, 500.0f, 0.0f) != 0.0f) &&
        (play->gameplayFrames & 1)) {
        func_80AFC9A8(play, this, &this->actor.world.pos);
    }
    Math_SmoothStepToF(&this->actor.shape.shadowScale, 0.0f, 1.0f, 2.5f, 0.0f);
    if (SkelAnime_Update(&this->unk14C)) {
        Actor_Kill(&this->actor);
    }
}

void EnSkb_SetupWalkForward(EnSkb* this) {
    Animation_Change(&this->unk14C, &object_skb_0047E0_Anim, 0.96000004f, 0.0f,
                     Animation_GetLastFrame(&object_skb_0047E0_Anim), ANIMMODE_LOOP, -4.0f);
    this->actionState = SKB_BEHAVIOR_WALKING;
    this->headlessYawOffset = 0;
    this->actor.speed = this->actor.scale.y * 160.0f;
    func_80AFC9A0(this, EnSkb_WalkForward);
}

void EnSkb_WalkForward(EnSkb* this, PlayState* play) {
    s32 temp_ft2_sp34;
    f32 var_fv1_2;
    s32 temp_ft4;
    Actor* sp28;

    sp28 = play->actorCtx.actorLists[2].head;
    if ((this->breakFlags != 0) && !(play->gameplayFrames & 0xF)) {
        this->headlessYawOffset = (s16)(s32)Rand_CenteredFloat(50000.0f);
    }
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer + this->headlessYawOffset, 1, 0x2EE, 0);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    temp_ft2_sp34 = (s32)this->unk14C.curFrame;
    SkelAnime_Update(&this->unk14C);
    var_fv1_2 = ABS(this->unk14C.playSpeed);
    temp_ft4 = (s32)(this->unk14C.curFrame - var_fv1_2);
    var_fv1_2 = ABS(this->unk14C.playSpeed);
    if ((temp_ft2_sp34 != (s32)this->unk14C.curFrame) &&
        (((temp_ft4 < 9) && (((s32)var_fv1_2 + temp_ft2_sp34) >= 8)) ||
         ((temp_ft4 < 0x10) && (((s32)var_fv1_2 + temp_ft2_sp34) >= 0xF)))) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_STALKID_WALK);
    }
    if ((Math_Vec3f_DistXZ(&this->actor.home.pos, &sp28->world.pos) > 800.0f) || IS_DAY) {
        EnSkb_SetupDespawn(this);
    } else if (Actor_IsFacingPlayer(&this->actor, 0x11C7) &&
               (this->actor.xzDistToPlayer < (60.0f + (this->actor.params * 6.0f)))) {
        EnSkb_SetupAttack(this);
    }
}

void EnSkb_SetupAttack(EnSkb* this) {
    Animation_Change(&this->unk14C, &object_skb_000460_Anim, 0.6f, 0.0f,
                     Animation_GetLastFrame(&object_skb_000460_Anim), ANIMMODE_ONCE_INTERP, 4.0f);
    this->unk2A4.base.atFlags &= ~AT_BOUNCED;
    this->actionState = SKB_BEHAVIOR_ATTACKING;
    this->actor.speed = 0.0f;
    func_80AFC9A0(this, EnSkb_Attack);
}

void EnSkb_Attack(EnSkb* this, PlayState* play) {
    s32 temp_ft1;
    u8 temp_v0;

    temp_ft1 = (s32)this->unk14C.curFrame;
    if (temp_ft1 == 3) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_STALKID_ATTACK);
        this->setColliderAT = true;
    } else if (temp_ft1 == 6) {
        this->setColliderAT = false;
    }
    if (this->unk2A4.base.atFlags & AT_BOUNCED) {
        this->unk2A4.base.atFlags &= ~(AT_HIT | AT_BOUNCED);
        EnSkb_SetupRecoil(this);
    } else if (SkelAnime_Update(&this->unk14C)) {
        EnSkb_DecideNextAction(this);
    }
}

void EnSkb_SetupRecoil(EnSkb* this) {
    Animation_Change(&this->unk14C, &object_skb_000460_Anim, -0.4f, this->unk14C.curFrame - 1.0f, 0.0f,
                     ANIMMODE_ONCE_INTERP, 0.0f);
    this->unk2A4.base.atFlags &= ~AT_BOUNCED;
    this->actionState = SKB_BEHAVIOR_RECOILING;
    this->setColliderAT = false;
    func_80AFC9A0(this, EnSkb_Recoil);
}

void EnSkb_Recoil(EnSkb* this, PlayState* play) {
    if (SkelAnime_Update(&this->unk14C)) {
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
    func_80AFC9A0(this, EnSkb_Stunned);
}

void EnSkb_Stunned(EnSkb* this, PlayState* play) {
    f32 temp_fv0;

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
    Animation_MorphToPlayOnce(&this->unk14C, &object_skb_000D98_Anim, -4.0f);
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        this->actor.speed = -4.0f;
    }
    this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    Actor_PlaySfx(&this->actor, NA_SE_EN_STALKID_DAMAGE);
    this->actionState = SKB_BEHAVIOR_DAMAGED;
    func_80AFC9A0(this, EnSkb_TakeDamage);
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
        if (SkelAnime_Update(&this->unk14C) && (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
            EnSkb_DecideNextAction(this);
        }
    }
}

void EnSkb_SetupDeath(EnSkb* this, PlayState* play) {
    Animation_MorphToPlayOnce(&this->unk14C, &object_skb_0009DC_Anim, -4.0f);
    this->actor.world.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        this->actor.speed = -6.0f;
    }
    this->actionState = SKB_BEHAVIOR_DYING;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    BodyBreak_Alloc(&this->bodyBreak, 18, play);
    this->breakFlags |= 4;
    EffectSsDeadSound_SpawnStationary(play, &this->actor.projectedPos, NA_SE_EN_STALKID_DEAD, 1, 1, 40);
    func_80AFC9A0(this, EnSkb_Death);
}

void EnSkb_Death(EnSkb* this, PlayState* play) {

    if (BodyBreak_SpawnParts(&this->actor, &this->bodyBreak, play, 1)) {
        if (this->actor.scale.x == 0.01f) {
            Item_DropCollectibleRandom(play, &this->actor, &this->actor.world.pos,
                                       COLLECTIBLE_DROP_RANDOM_PARAMS(COLLECTIBLE_DROP_TABLE_1, false));
        } else if (this->actor.scale.x <= 0.015f) {
            Item_DropCollectible(play, &this->actor.world.pos, 1);
        } else {
            Item_DropCollectible(play, &this->actor.world.pos, 2);
            Item_DropCollectible(play, &this->actor.world.pos, 2);
            Item_DropCollectible(play, &this->actor.world.pos, 2);
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
    } else if ((this->actionState >= SKB_BEHAVIOR_ATTACKING) && (this->unk2A4.base.acFlags & AC_HIT)) {
        this->unk2A4.base.acFlags &= ~AC_HIT;
        if (((this->actor.colChkInfo.damageReaction != 6))) {
            this->lastDamageReaction = this->actor.colChkInfo.damageReaction;
            Actor_SetDropFlag(&this->actor, &this->unk2A4.elements[1].base, true);
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
    s32 pad;

    EnSkb_CheckDamage(this, play);
    Actor_MoveXZGravity(&this->actor);
    Actor_UpdateBgCheckInfo(play, &this->actor, 15.0f, 30.0f, 60.0f,
                            UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 |
                                UPDBGCHECKINFO_FLAG_4);
    this->unk284(this, play);
    this->actor.focus.pos = this->actor.world.pos;
    this->actor.focus.pos.y += 3000.0f * this->actor.scale.y;
    if (this->setColliderAT) {
        CollisionCheck_SetAT(play, &play->colChkCtx, &this->unk2A4.base);
    }
    if ((this->actionState >= SKB_BEHAVIOR_ATTACKING) &&
        ((this->actor.colorFilterTimer == 0) || !(this->actor.colorFilterParams & 0x4000))) {
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->unk2A4.base);
    }
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->unk2A4.base);
}

s32 func_80AFDD30(PlayState* play, s32 arg1, Gfx** arg2, Vec3f* arg3, Vec3s* arg5, void* thisx) {
    EnSkb* this = thisx;
    PlayState* arg0 = play;
    s32 temp_v0;

    if (arg1 == 11) {
        if (!(this->breakFlags & 2)) { // head limb, head is still attached
            OPEN_DISPS(arg0->state.gfxCtx, "../z_en_skb.c", 972);
            temp_v0 = (s16)(ABS((s16)(Math_SinS(arg0->gameplayFrames * 0x1770) * 95.0f)) + 0xA0) & 0xFF;
            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetEnvColor(POLY_OPA_DISP++, temp_v0, temp_v0, temp_v0, 255);
            CLOSE_DISPS(arg0->state.gfxCtx, "../z_en_skb.c", 978);
        } else {
            *arg2 = NULL;
        }
    } else if ((arg1 == 12) && (this->breakFlags & 2)) { // jaw limb, don't draw if headless
        *arg2 = NULL;
    }
    return 0;
}

void func_80AFDF24(PlayState* arg0, s32 arg1, Gfx** arg2, Vec3s* arg3, void* thisx) {
    EnSkb* this = thisx;

    Collider_UpdateSpheres(arg1, &this->unk2A4);
    if ((this->breakFlags ^ 1) == 0) {
        BodyBreak_SetInfo(&this->bodyBreak, arg1, 11, 12, 18, arg2, BODYBREAK_OBJECT_SLOT_DEFAULT);
    } else if ((this->breakFlags ^ (this->breakFlags | 4)) == 0) {
        BodyBreak_SetInfo(&this->bodyBreak, arg1, 0, 18, 18, arg2, BODYBREAK_OBJECT_SLOT_DEFAULT);
    }
}

void EnSkb_Draw(Actor* thisx, PlayState* play) {
    EnSkb* this = (EnSkb*)thisx;

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    SkelAnime_DrawOpa(play, this->unk14C.skeleton, this->unk14C.jointTable, func_80AFDD30, func_80AFDF24, this);
}
