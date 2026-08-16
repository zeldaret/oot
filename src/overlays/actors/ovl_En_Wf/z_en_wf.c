/*
 * File: z_en_wf.c
 * Overlay: ovl_En_Wf
 * Description: Wolfos
 */

#include "z_en_wf.h"
#include "src/overlays/actors/ovl_En_Encount1/z_en_encount1.h"

#include "libc64/qrand.h"
#include "array_count.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "printf.h"
#include "rand.h"
#include "segmented_address.h"
#include "sequence.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "terminal.h"
#include "z_en_item00.h"
#include "z_lib.h"
#include "audio.h"
#include "effect.h"
#include "play_state.h"
#include "player.h"

#include "assets/objects/object_wf/object_wf.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE | ACTOR_FLAG_UPDATE_CULLING_DISABLED)

void EnWf_Init(Actor* thisx, PlayState* play);
void EnWf_Destroy(Actor* thisx, PlayState* play);
void EnWf_Update(Actor* thisx, PlayState* play);
void EnWf_Draw(Actor* thisx, PlayState* play);

void EnWf_SetupWaitAppear(EnWf* this);
void EnWf_WaitAppear(EnWf* this, PlayState* play);
void EnWf_SetupIdle(EnWf* this);
void EnWf_Idle(EnWf* this, PlayState* play);
void EnWf_SetupRunToAttack(EnWf* this, PlayState* play);
void EnWf_RunToAttack(EnWf* this, PlayState* play);
void EnWf_SetupTurnTowardsPlayer(EnWf* this);
void EnWf_TurnTowardsPlayer(EnWf* this, PlayState* play);
void EnWf_SetupCirclePlayer(EnWf* this);
void EnWf_CirclePlayer(EnWf* this, PlayState* play);
void EnWf_SetupAttack(EnWf* this);
void EnWf_Attack(EnWf* this, PlayState* play);
void EnWf_AttackBouncedOff(EnWf* this, PlayState* play);
void EnWf_SetupBackflipBackward(EnWf* this);
void EnWf_BackflipBackward(EnWf* this, PlayState* play);
void EnWf_Stunned(EnWf* this, PlayState* play);
void EnWf_Damaged(EnWf* this, PlayState* play);
void EnWf_SetupBackflipForward(EnWf* this);
void EnWf_BackflipForward(EnWf* this, PlayState* play);
void EnWf_SetupBlock(EnWf* this);
void EnWf_Block(EnWf* this, PlayState* play);
void EnWf_SetupShortCirclePlayer(EnWf* this, PlayState* play);
void EnWf_ShortCirclePlayer(EnWf* this, PlayState* play);
void EnWf_SetupDie(EnWf* this);
void EnWf_Die(EnWf* this, PlayState* play);
s32 EnWf_ReactToProjectile(PlayState* play, EnWf* this);

typedef enum EnWfAction {
    ENWF_ACTION_WAIT_APPEAR,
    ENWF_ACTION_DIE = 2,
    ENWF_ACTION_DAMAGED,
    ENWF_ACTION_BACKFLIP_FORWARD,
    ENWF_ACTION_BACKFLIP_BACKWARD,
    ENWF_ACTION_IDLE,
    ENWF_ACTION_BLOCK,
    ENWF_ACTION_ATTACK,
    ENWF_ACTION_RUN_TO_ATTACK,
    ENWF_ACTION_TURN_TOWARDS_PLAYER,
    ENWF_ACTION_CIRCLE_PLAYER,
    ENWF_ACTION_ATTACK_BOUNCED_OFF,
    ENWF_ACTION_SHORT_CIRCLE_PLAYER = 14,
    ENWF_ACTION_STUNNED
} EnWfAction;

static ColliderJntSphElementInit sAttackAndBlockJntSphElementsInit[] = {
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0xFFCFFFFF, HIT_SPECIAL_EFFECT_NONE, 0x04 },
            { 0x00000000, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_ON | ATELEM_SFX_NORMAL,
            ACELEM_NONE,
            OCELEM_NONE,
        },
        { WOLFOS_LIMB_RIGHT_CLAWS, { { 0, 0, 0 }, 15 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0xFFCFFFFF, HIT_SPECIAL_EFFECT_NONE, 0x04 },
            { 0x00000000, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_ON | ATELEM_SFX_NORMAL,
            ACELEM_NONE,
            OCELEM_NONE,
        },
        { WOLFOS_LIMB_LEFT_CLAWS, { { 0, 0, 0 }, 15 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK1,
            { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
            { 0xFFC1FFFF, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_NONE,
            ACELEM_ON | ACELEM_HOOKABLE,
            OCELEM_ON,
        },
        { WOLFOS_LIMB_HEAD, { { 800, 0, 0 }, 25 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK1,
            { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
            { 0xFFC1FFFF, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_NONE,
            ACELEM_ON | ACELEM_HOOKABLE,
            OCELEM_ON,
        },
        { WOLFOS_LIMB_TORSO, { { 0, 0, 0 }, 30 }, 100 },
    },
};

static ColliderJntSphInit sAttackAndBlockJntSphInit = {
    {
        COL_MATERIAL_METAL,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_HARD | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    ARRAY_COUNT(sAttackAndBlockJntSphElementsInit),
    sAttackAndBlockJntSphElementsInit,
};

static ColliderCylinderInit sBodyCylinderInit = {
    {
        COL_MATERIAL_HIT5,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK1,
        { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
        { 0xFFCFFFFF, HIT_BACKLASH_NONE, 0x00 },
        ATELEM_NONE,
        ACELEM_ON,
        OCELEM_NONE,
    },
    { 20, 50, 0, { 0, 0, 0 } },
};

static ColliderCylinderInit sTailCylinderInit = {
    {
        COL_MATERIAL_HIT5,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK1,
        { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
        { 0xFFCFFFFF, HIT_BACKLASH_NONE, 0x00 },
        ATELEM_NONE,
        ACELEM_ON,
        OCELEM_NONE,
    },
    { 15, 20, -15, { 0, 0, 0 } },
};

typedef enum EnWfDamageReaction {
    ENWF_DMG_REACT_NONE,
    ENWF_DMG_REACT_STUN,
    ENWF_DMG_REACT_6 = 6,
    ENWF_DMG_REACT_D = 0xD,
    ENWF_DMG_REACT_FIRE,
    ENWF_DMG_REACT_F
} EnWfDamageReaction;

static DamageTable sDamageTable = {
    /* Deku nut      */ DMG_ENTRY(0, ENWF_DMG_REACT_STUN),
    /* Deku stick    */ DMG_ENTRY(2, ENWF_DMG_REACT_NONE),
    /* Slingshot     */ DMG_ENTRY(1, ENWF_DMG_REACT_NONE),
    /* Explosive     */ DMG_ENTRY(2, ENWF_DMG_REACT_NONE),
    /* Boomerang     */ DMG_ENTRY(0, ENWF_DMG_REACT_STUN),
    /* Normal arrow  */ DMG_ENTRY(2, ENWF_DMG_REACT_NONE),
    /* Hammer swing  */ DMG_ENTRY(2, ENWF_DMG_REACT_NONE),
    /* Hookshot      */ DMG_ENTRY(0, ENWF_DMG_REACT_STUN),
    /* Kokiri sword  */ DMG_ENTRY(1, ENWF_DMG_REACT_NONE),
    /* Master sword  */ DMG_ENTRY(2, ENWF_DMG_REACT_NONE),
    /* Giant's Knife */ DMG_ENTRY(4, ENWF_DMG_REACT_NONE),
    /* Fire arrow    */ DMG_ENTRY(4, ENWF_DMG_REACT_FIRE),
    /* Ice arrow     */ DMG_ENTRY(2, ENWF_DMG_REACT_NONE),
    /* Light arrow   */ DMG_ENTRY(2, ENWF_DMG_REACT_NONE),
    /* Unk arrow 1   */ DMG_ENTRY(2, ENWF_DMG_REACT_NONE),
    /* Unk arrow 2   */ DMG_ENTRY(2, ENWF_DMG_REACT_NONE),
    /* Unk arrow 3   */ DMG_ENTRY(2, ENWF_DMG_REACT_NONE),
    /* Fire magic    */ DMG_ENTRY(4, ENWF_DMG_REACT_FIRE),
    /* Ice magic     */ DMG_ENTRY(0, ENWF_DMG_REACT_6),
    /* Light magic   */ DMG_ENTRY(3, ENWF_DMG_REACT_D),
    /* Shield        */ DMG_ENTRY(0, ENWF_DMG_REACT_NONE),
    /* Mirror Ray    */ DMG_ENTRY(0, ENWF_DMG_REACT_NONE),
    /* Kokiri spin   */ DMG_ENTRY(1, ENWF_DMG_REACT_NONE),
    /* Giant spin    */ DMG_ENTRY(4, ENWF_DMG_REACT_NONE),
    /* Master spin   */ DMG_ENTRY(2, ENWF_DMG_REACT_NONE),
    /* Kokiri jump   */ DMG_ENTRY(2, ENWF_DMG_REACT_NONE),
    /* Giant jump    */ DMG_ENTRY(8, ENWF_DMG_REACT_NONE),
    /* Master jump   */ DMG_ENTRY(4, ENWF_DMG_REACT_NONE),
    /* Unknown 1     */ DMG_ENTRY(0, ENWF_DMG_REACT_NONE),
    /* Unblockable   */ DMG_ENTRY(0, ENWF_DMG_REACT_NONE),
    /* Hammer jump   */ DMG_ENTRY(4, ENWF_DMG_REACT_NONE),
    /* Unknown 2     */ DMG_ENTRY(0, ENWF_DMG_REACT_NONE),
};

ActorProfile En_Wf_Profile = {
    /**/ ACTOR_EN_WF,
    /**/ ACTORCAT_ENEMY,
    /**/ FLAGS,
    /**/ OBJECT_WF,
    /**/ sizeof(EnWf),
    /**/ EnWf_Init,
    /**/ EnWf_Destroy,
    /**/ EnWf_Update,
    /**/ EnWf_Draw,
};

static InitChainEntry sInitChain[2] = {
    ICHAIN_F32(lockOnArrowOffset, 2000, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -3000, ICHAIN_STOP),
};
static Vec3f D_80B37AD0 = { 0.0f, 0.5f, 0.0f };
static Vec3f D_80B37ADC = { 1200.0f, 0.0f, 0.0f };
static Vec3f sZeroVec = { 0.0f, 0.0f, 0.0f };
static void* sWolfosGrayEyeTextures[4] = { gWolfosGrayEyeOpenTex, gWolfosGrayEyeHalfTex, gWolfosGrayEyeClosedTex,
                                           gWolfosGrayEyeHalfTex };
static void* sWolfosWhiteEyeTextures[4] = { gWolfosWhiteEyeOpenTex, gWolfosWhiteEyeHalfTex, gWolfosWhiteEyeClosedTex,
                                            gWolfosWhiteEyeHalfTex };

void EnWf_SetupAction(EnWf* this, EnWfActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnWf_Init(Actor* thisx, PlayState* play) {
    EnWf* this = (EnWf*)thisx;
    s32 pad;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    this->actor.colChkInfo.damageTable = &sDamageTable;
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 0.0f);
    this->actor.focus.pos = this->actor.world.pos;
    this->actor.colChkInfo.mass = MASS_HEAVY;
    this->actor.colChkInfo.health = 8;
    this->actor.colChkInfo.cylRadius = 50;
    this->actor.colChkInfo.cylHeight = 100;
    this->switchFlag = PARAMS_GET_U(thisx->params, 8, 8);
    this->actor.params = PARAMS_GET_U(this->actor.params, 0, 8);
    this->eyeIndex = 0;
    this->unk_2F4 = 10.0f;
    Collider_InitJntSph(play, &this->attackAndBlockCollider);
    Collider_SetJntSph(play, &this->attackAndBlockCollider, &this->actor, &sAttackAndBlockJntSphInit,
                       this->attackAndBlockColliderElements);
    Collider_InitCylinder(play, &this->bodyCollider);
    Collider_SetCylinder(play, &this->bodyCollider, &this->actor, &sBodyCylinderInit);
    Collider_InitCylinder(play, &this->tailCollider);
    Collider_SetCylinder(play, &this->tailCollider, &this->actor, &sTailCylinderInit);
    if (this->actor.params == 0) {
        SkelAnime_InitFlex(play, &this->skelAnime, &gWolfosGraySkel, &gWolfosIdleAnim, this->jointTable,
                           this->morphTable, WOLFOS_LIMB_MAX);
        Actor_SetScale(&this->actor, 0.0075f);
        this->actor.naviEnemyId = NAVI_ENEMY_WOLFOS;
    } else {
        SkelAnime_InitFlex(play, &this->skelAnime, &gWolfosWhiteSkel, &gWolfosIdleAnim, this->jointTable,
                           this->morphTable, WOLFOS_LIMB_MAX);
        Actor_SetScale(&this->actor, 0.01f);
        this->attackAndBlockCollider.elements[0].base.atDmgInfo.damage =
            this->attackAndBlockCollider.elements[1].base.atDmgInfo.damage = 8;
        this->actor.naviEnemyId = NAVI_ENEMY_WHITE_WOLFOS;
    }
    EnWf_SetupWaitAppear(this);
    if ((this->switchFlag != 0xFF) && Flags_GetSwitch(play, this->switchFlag)) {
        Actor_Kill(&this->actor);
    }
}

void EnWf_Destroy(Actor* thisx, PlayState* play) {
    EnWf* this = (EnWf*)thisx;
    EnEncount1* parent;

    Collider_DestroyJntSph(play, &this->attackAndBlockCollider);
    Collider_DestroyCylinder(play, &this->bodyCollider);
    Collider_DestroyCylinder(play, &this->tailCollider);
    if ((this->actor.params != 0) && (this->switchFlag != 0xFF)) {
        func_800F5B58();
    }
    if (this->actor.parent != NULL) {
        parent = (EnEncount1*)this->actor.parent;
        if (parent->actor.update != NULL) {

            if (parent->curNumSpawn > 0) {
                parent->curNumSpawn--;
            }
            PRINTF("\n\n");
            PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ 同時発生数 ☆☆☆☆☆%d\n" VT_RST, parent->curNumSpawn);
            PRINTF("\n\n");
        }
    }
}

/**
 * Pick an action based on the player's current doings and location.
 * @return true if an action was picked
 */
s32 EnWf_PickAction(PlayState* play, EnWf* this, s16 mustPick) {
    Player* player;
    s32 pad;
    s16 absRelWallYaw;
    s16 absRelYawTowardsPlayer;

    player = GET_PLAYER(play);

    absRelWallYaw = this->actor.wallYaw - this->actor.shape.rot.y;
    if (absRelWallYaw < 0) {
        absRelWallYaw *= -1;
    }
    absRelYawTowardsPlayer = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    if (absRelYawTowardsPlayer < 0) {
        absRelYawTowardsPlayer *= -1;
    }

    if (func_800354B4(play, &this->actor, 100.0f, 0x2710, 0x2EE0, this->actor.shape.rot.y)) {
        if (player->meleeWeaponAnimation == PLAYER_MWA_JUMPSLASH_START) {
            EnWf_SetupBlock(this);
            return true;
        }
        if (play->gameplayFrames & 1) {
            EnWf_SetupBlock(this);
            return true;
        }
    }

    if (func_800354B4(play, &this->actor, 100.0f, 0x5DC0, 0x2AA8, this->actor.shape.rot.y)) {
        this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
        if ((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) && (ABS(absRelWallYaw) < 0x2EE0) &&
            (this->actor.xzDistToPlayer < 120.0f)) {
            EnWf_SetupBackflipForward(this);
            return true;
        } else if (player->meleeWeaponAnimation == PLAYER_MWA_JUMPSLASH_START) {
            EnWf_SetupBlock(this);
            return true;
        } else if ((this->actor.xzDistToPlayer < 80.0f) && (play->gameplayFrames & 1)) {
            EnWf_SetupBlock(this);
            return true;
        } else {
            EnWf_SetupBackflipBackward(this);
            return true;
        }
    } else {
        Actor* explosive;

        explosive = Actor_FindNearby(play, &this->actor, -1, ACTORCAT_EXPLOSIVE, 80.0f);
        if (explosive != NULL) {
            this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
            if (((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) && (absRelWallYaw < 0x2EE0)) ||
                (explosive->id == ACTOR_EN_BOM_CHU)) {
                if ((explosive->id == ACTOR_EN_BOM_CHU) &&
                    (Actor_WorldDistXYZToActor(&this->actor, explosive) < 80.0f) &&
                    ((s16)(this->actor.shape.rot.y - explosive->world.rot.y + 0x8000) < 0x3E80)) {
                    EnWf_SetupBackflipForward(this);
                    return true;
                } else {
                    EnWf_SetupShortCirclePlayer(this, play);
                    return true;
                }
            } else {
                EnWf_SetupBackflipBackward(this);
                return true;
            }
        }
    }

    if (mustPick) {
        s16 yawDiff;

        if (absRelYawTowardsPlayer >= 0x1B58) {
            EnWf_SetupShortCirclePlayer(this, play);
            return true;
        }

        yawDiff = player->actor.shape.rot.y - this->actor.shape.rot.y;
        if ((this->actor.xzDistToPlayer <= 80.0f) && !Actor_OtherIsLockedOn(play, &this->actor) &&
            (((play->gameplayFrames & 7) != 0) || (ABS(yawDiff) < 0x38E0))) {
            EnWf_SetupAttack(this);
            return true;
        } else {
            EnWf_SetupCirclePlayer(this);
            return true;
        }
    }
    return false;
}

/**
 * Actor is squished underground and waits for the player to be in range to rise above ground.
 */
void EnWf_SetupWaitAppear(EnWf* this) {
    Animation_Change(&this->skelAnime, &gWolfosHowlAnim, 0.5f, 0.0f, 7.0f, ANIMMODE_ONCE_INTERP, 0.0f);
    this->actor.world.pos.y = this->actor.home.pos.y - 5.0f;
    this->timer = 20;
    this->unk_300 = false;
    this->action = ENWF_ACTION_WAIT_APPEAR;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    this->actor.scale.y = 0.0f;
    this->actor.gravity = 0.0f;
    EnWf_SetupAction(this, EnWf_WaitAppear);
}

void EnWf_WaitAppear(EnWf* this, PlayState* play) {
    if (this->timer > 5) {
        this->actor.world.pos.y = this->actor.home.pos.y - 5.0f;
        if (this->actor.xzDistToPlayer < 240.0f) {
            this->timer = 5;
            this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
            if ((this->actor.params != 0) && (this->switchFlag != 0xFF)) {
                func_800F5ACC(NA_BGM_MINI_BOSS);
            }
        }
    } else if (this->timer != 0) {
        this->actor.scale.y += this->actor.scale.x * (1 / 5.0f);
        this->actor.world.pos.y += 0.5f;
        Math_SmoothStepToF(&this->actor.shape.shadowScale, 70.0f, 1.0f, 70.0f / 5, 0.0f);
        this->timer--;
        if (this->timer == 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_WOLFOS_APPEAR);
        }
    } else {
        if (SkelAnime_Update(&this->skelAnime)) {
            this->actor.scale.y = this->actor.scale.x;
            this->actor.gravity = -2.0f;
            EnWf_SetupIdle(this);
        }
    }
}

void EnWf_SetupIdle(EnWf* this) {
    Animation_MorphToLoop(&this->skelAnime, &gWolfosIdleAnim, -4.0f);
    this->action = ENWF_ACTION_IDLE;
    this->timer = (Rand_ZeroOne() * 10.0f) + 2.0f;
    this->actor.speed = 0.0f;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    EnWf_SetupAction(this, EnWf_Idle);
}

void EnWf_Idle(EnWf* this, PlayState* play) {
    Player* player;
    s32 pad;
    s16 yaw;

    player = GET_PLAYER(play);
    SkelAnime_Update(&this->skelAnime);
    if (this->idleTimer != 0) {
        yaw = this->actor.yawTowardsPlayer - this->actor.shape.rot.y - this->headRot;
        if (ABS(yaw) > 0x2000) {
            this->idleTimer--;
            return;
        }
        this->idleTimer = 0;
    }
    yaw = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    if (yaw < 0) {
        yaw *= -1;
    }
    if (!EnWf_ReactToProjectile(play, this)) {
        // unk_2E0 is always 0
        if (this->unk_2E0 != 0) {
            this->unk_2E0--;
            if (yaw < 0x1FFE) {
                this->unk_2E0 = 0;
            } else {
                return;
            }
        } else if (EnWf_PickAction(play, this, false)) {
            return;
        }
        yaw = player->actor.shape.rot.y - this->actor.shape.rot.y;
        if (yaw < 0) {
            yaw *= -1;
        }
        if ((this->actor.xzDistToPlayer < 80.0f) && (player->meleeWeaponState != 0) && (yaw >= 0x1F40)) {
            this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
            EnWf_SetupCirclePlayer(this);
        } else {
            this->timer--;
            if (this->timer == 0) {
                if (Actor_IsFacingPlayer(&this->actor, 0x1555)) {
                    if (Rand_ZeroOne() > 0.3f) {
                        EnWf_SetupRunToAttack(this, play);
                    } else {
                        EnWf_SetupCirclePlayer(this);
                    }
                } else {
                    EnWf_SetupTurnTowardsPlayer(this);
                }
                if ((play->gameplayFrames & 0x5F) == 0) {
                    Actor_PlaySfx(&this->actor, NA_SE_EN_WOLFOS_CRY);
                }
            }
        }
    }
}

/**
 * Run towards the player with the intent to attack.
 */
void EnWf_SetupRunToAttack(EnWf* this, PlayState* play) {
    Animation_Change(&this->skelAnime, &gWolfosRunAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gWolfosRunAnim),
                     ANIMMODE_LOOP_INTERP, -4.0f);
    this->action = ENWF_ACTION_RUN_TO_ATTACK;
    EnWf_SetupAction(this, EnWf_RunToAttack);
}

void EnWf_RunToAttack(EnWf* this, PlayState* play) {
    s32 prevFrame;
    s32 beforeCurFrame;
    s32 pad;
    f32 sp50_real;
    s32 pad2;
    Player* player;
    s32 pad3;
    s16 temp_v1_real;
    s16 var_v0_real;
    f32 absPlaySpeed;
    s32 pad4;

    sp50_real = 0.0f;
    player = GET_PLAYER(play);
    if (!EnWf_ReactToProjectile(play, this)) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0x2EE, 0);
        this->actor.world.rot.y = this->actor.shape.rot.y;
        if (Actor_OtherIsLockedOn(play, &this->actor)) {
            sp50_real = 150.0f;
        }
        if (this->actor.xzDistToPlayer <= (50.0f + sp50_real)) {
            Math_SmoothStepToF(&this->actor.speed, -8.0f, 1.0f, 1.5f, 0.0f);
        } else if (this->actor.xzDistToPlayer > (65.0f + sp50_real)) {
            Math_SmoothStepToF(&this->actor.speed, 8.0f, 1.0f, 1.5f, 0.0f);
        } else {
            Math_SmoothStepToF(&this->actor.speed, 0.0f, 1.0f, 6.65f, 0.0f);
        }
        this->skelAnime.playSpeed = this->actor.speed * 0.175f;
        var_v0_real = player->actor.shape.rot.y - this->actor.shape.rot.y;
        if (var_v0_real < 0) {
            var_v0_real *= -1;
        }
        if ((this->actor.xzDistToPlayer < (150.0f + sp50_real)) && (player->meleeWeaponState != 0) &&
            (var_v0_real >= 0x1F40)) {
            this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
            if (Rand_ZeroOne() > 0.7f) {
                EnWf_SetupCirclePlayer(this);
                return;
            }
        }
        prevFrame = (s32)this->skelAnime.curFrame;
        SkelAnime_Update(&this->skelAnime);
        absPlaySpeed = ABS(this->skelAnime.playSpeed);
        beforeCurFrame = (s32)(this->skelAnime.curFrame - absPlaySpeed);
        absPlaySpeed = ABS(this->skelAnime.playSpeed);
        if (!Actor_IsFacingPlayer(&this->actor, 0x11C7)) {
            if (Rand_ZeroOne() > 0.5f) {
                EnWf_SetupCirclePlayer(this);
            } else {
                EnWf_SetupIdle(this);
            }
        } else if (this->actor.xzDistToPlayer < (90.0f + sp50_real)) {
            temp_v1_real = player->actor.shape.rot.y - this->actor.shape.rot.y;
            if (!Actor_OtherIsLockedOn(play, &this->actor) &&
                ((Rand_ZeroOne() > 0.03f) || ((this->actor.xzDistToPlayer <= 80.0f) && (ABS(temp_v1_real) < 0x38E0)))) {
                EnWf_SetupAttack(this);
            } else if ((Actor_OtherIsLockedOn(play, &this->actor)) && (Rand_ZeroOne() > 0.5f)) {
                EnWf_SetupBackflipBackward(this);
            } else {
                EnWf_SetupCirclePlayer(this);
            }
        }
        if (!EnWf_PickAction(play, this, false)) {
            if ((play->gameplayFrames & 0x5F) == 0) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_WOLFOS_CRY);
            }
            if ((prevFrame != (s32)this->skelAnime.curFrame) && (beforeCurFrame <= 0) &&
                (((s32)absPlaySpeed + prevFrame) > 0)) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_WOLFOS_WALK);
                Actor_SpawnFloorDustRing(play, &this->actor, &this->actor.world.pos, 20.0f, 3, 3.0f, 50, 50, true);
            }
        }
    }
}

void EnWf_SetupTurnTowardsPlayer(EnWf* this) {
    Animation_MorphToLoop(&this->skelAnime, &gWolfosSideStepAnim, -4.0f);
    this->action = ENWF_ACTION_TURN_TOWARDS_PLAYER;
    EnWf_SetupAction(this, EnWf_TurnTowardsPlayer);
}

void EnWf_TurnTowardsPlayer(EnWf* this, PlayState* play) {
    f32 animPlaySpeed;
    s16 relYawTowardsPlayer;
    s16 yawSpeed;

    if (!EnWf_ReactToProjectile(play, this) && !EnWf_PickAction(play, this, false)) {
        relYawTowardsPlayer = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
        if (relYawTowardsPlayer > 0) {
            yawSpeed = (relYawTowardsPlayer * 0.25f) + 2000.0f;
        } else {
            yawSpeed = (relYawTowardsPlayer * 0.25f) - 2000.0f;
        }
        this->actor.shape.rot.y += yawSpeed;
        this->actor.world.rot.y = this->actor.shape.rot.y;
        if (relYawTowardsPlayer > 0) {
            animPlaySpeed = yawSpeed * 0.5f;
            if (animPlaySpeed > 1.0f) {
                animPlaySpeed = 1.0f;
            }
        } else {
            animPlaySpeed = yawSpeed * 0.5f;
            if (animPlaySpeed < -1.0f) {
                animPlaySpeed = -1.0f;
            }
        }
        this->skelAnime.playSpeed = -animPlaySpeed;
        SkelAnime_Update(&this->skelAnime);
        if (Actor_IsFacingPlayer(&this->actor, 0x1555)) {
            if (Rand_ZeroOne() > 0.8f) {
                EnWf_SetupCirclePlayer(this);
            } else {
                EnWf_SetupRunToAttack(this, play);
            }
        }
        if ((play->gameplayFrames & 0x5F) == 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_WOLFOS_CRY);
        }
    }
}

/**
 * Run around the player in a circular fashion.
 */
void EnWf_SetupCirclePlayer(EnWf* this) {
    Animation_Change(&this->skelAnime, &gWolfosRunAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gWolfosRunAnim),
                     ANIMMODE_LOOP_INTERP, -4.0f);
    if (Rand_ZeroOne() > 0.5f) {
        this->circlePlayerDirection = 0x3E80;
    } else {
        this->circlePlayerDirection = -0x3E80;
    }
    this->actor.speed = 6.0f;
    this->skelAnime.playSpeed = this->actor.speed * 0.175f;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->timer = (Rand_ZeroOne() * 30.0f) + 30.0f;
    this->action = ENWF_ACTION_CIRCLE_PLAYER;
    this->circlePlayerExtraSpeed = 0.0f;
    EnWf_SetupAction(this, EnWf_CirclePlayer);
}

void EnWf_CirclePlayer(EnWf* this, PlayState* play) {
    s16 sp56_real;
    s32 new_var;
    f32 extraRadius;
    s32 prevFrame;
    s32 beforeCurFrame;
    s32 absPlaySpeed;
    Player* player;
    s16 yawWallRelToTarget;

    extraRadius = 0.0f;
    player = GET_PLAYER(play);
    Math_SmoothStepToS(&this->actor.shape.rot.y, (s16)(this->actor.yawTowardsPlayer + this->circlePlayerDirection), 1,
                       0xFA0, 1);
    if (!EnWf_ReactToProjectile(play, this) && !EnWf_PickAction(play, this, false)) {
        this->actor.world.rot.y = this->actor.shape.rot.y;
        sp56_real = player->actor.shape.rot.y + this->circlePlayerDirection + 0x8000;
        if ((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) ||
            !Actor_TestFloorInDirection(&this->actor, play, this->actor.speed, this->actor.shape.rot.y)) {
            // If there's a wall in the way, switch direction
            if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
                yawWallRelToTarget = this->actor.wallYaw - this->actor.yawTowardsPlayer - this->circlePlayerDirection;
            } else {
                yawWallRelToTarget = 0;
            }
            if (ABS(yawWallRelToTarget) > 0x2EE0) {
                this->circlePlayerDirection = -this->circlePlayerDirection;
            }
        }
        if (Actor_OtherIsLockedOn(play, &this->actor)) {
            extraRadius = 150.0f;
        }
        if (this->actor.xzDistToPlayer <= (60.0f + extraRadius)) {
            Math_SmoothStepToF(&this->circlePlayerExtraSpeed, -4.0f, 1.0f, 1.5f, 0.0f);
        } else if (this->actor.xzDistToPlayer > (80.0f + extraRadius)) {
            Math_SmoothStepToF(&this->circlePlayerExtraSpeed, 4.0f, 1.0f, 1.5f, 0.0f);
        } else {
            Math_SmoothStepToF(&this->circlePlayerExtraSpeed, 0.0f, 1.0f, 6.65f, 0.0f);
        }
        if (this->circlePlayerExtraSpeed != 0.0f) {
            this->actor.world.pos.x += Math_SinS(this->actor.shape.rot.y) * this->circlePlayerExtraSpeed;
            this->actor.world.pos.z += Math_CosS(this->actor.shape.rot.y) * this->circlePlayerExtraSpeed;
        }
        if (ABS(this->circlePlayerExtraSpeed) < ABS(this->actor.speed)) {
            this->skelAnime.playSpeed = this->actor.speed * 0.175f;
        } else {
            this->skelAnime.playSpeed = this->circlePlayerExtraSpeed * 0.175f;
        }
        this->skelAnime.playSpeed = CLAMP(this->skelAnime.playSpeed, -3.0f, 3.0f);
        prevFrame = (s32)this->skelAnime.curFrame;
        SkelAnime_Update(&this->skelAnime);
        beforeCurFrame = (s32)(this->skelAnime.curFrame - ABS(this->skelAnime.playSpeed));
        absPlaySpeed = new_var = (s32)ABS(this->skelAnime.playSpeed);
        if ((prevFrame != (s32)this->skelAnime.curFrame) && (beforeCurFrame <= 0) && ((absPlaySpeed + prevFrame) > 0)) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_WOLFOS_WALK);
            Actor_SpawnFloorDustRing(play, &this->actor, &this->actor.world.pos, 20.0f, 3, 3.0f, 50, 50, true);
        }
        if ((play->gameplayFrames & 0x5F) == 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_WOLFOS_CRY);
        }
        if ((Math_CosS(sp56_real - this->actor.shape.rot.y) < -0.85f) && !Actor_OtherIsLockedOn(play, &this->actor) &&
            (this->actor.xzDistToPlayer <= 80.0f)) {
            EnWf_SetupAttack(this);
        } else {
            this->timer--;
            if (this->timer == 0) {
                if (Actor_OtherIsLockedOn(play, &this->actor) && (Rand_ZeroOne() > 0.5f)) {
                    EnWf_SetupBackflipBackward(this);
                } else {
                    EnWf_SetupIdle(this);
                    this->timer = (Rand_ZeroOne() * 3.0f) + 1.0f;
                }
            }
        }
    }
}

void EnWf_SetupAttack(EnWf* this) {
    Animation_PlayOnce(&this->skelAnime, &gWolfosAttackAnim);
    this->attackAndBlockCollider.base.atFlags &= ~AT_BOUNCED;
    this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
    this->action = ENWF_ACTION_ATTACK;
    this->unk_2FA = 0;
    this->timer = 7;
    this->skelAnime.endFrame = 20.0f;
    this->actor.speed = 0.0f;
    EnWf_SetupAction(this, EnWf_Attack);
}

void EnWf_Attack(EnWf* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s16 absYawDiffWithPlayer;
    s16 absRelYawTowardsPlayer;
    s32 animCurFrame;

    absYawDiffWithPlayer = player->actor.shape.rot.y - this->actor.shape.rot.y;
    absRelYawTowardsPlayer = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    animCurFrame = (s32)this->skelAnime.curFrame;
    absYawDiffWithPlayer = ABS(absYawDiffWithPlayer);
    absRelYawTowardsPlayer = ABS(absRelYawTowardsPlayer);
    this->actor.speed = 0.0f;
    if (((animCurFrame >= 9) && (animCurFrame <= 12)) || ((animCurFrame >= 17) && (animCurFrame <= 19))) {
        if (this->attackState == 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_WOLFOS_ATTACK);
        }
        this->attackState = 1;
    } else {
        this->attackState = 0;
    }
    if (((animCurFrame == 15) && !Actor_IsLockedOn(play, &this->actor) &&
         (!Actor_IsFacingPlayer(&this->actor, 0x2000) || (this->actor.xzDistToPlayer >= 100.0f))) ||
        SkelAnime_Update(&this->skelAnime)) {
        if ((animCurFrame != 15) && (this->timer != 0)) {
            this->actor.shape.rot.y += (s16)(s32)(3276.0f * (1.5f + ((this->timer - 4) * 0.4f)));
            Actor_SpawnFloorDustRing(play, &this->actor, &this->actor.world.pos, 15.0f, 1, 2.0f, 50, 50, true);
            this->timer--;
        } else if (!Actor_IsFacingPlayer(&this->actor, 0x1554) && (animCurFrame != 15)) {
            EnWf_SetupIdle(this);
            this->timer = (Rand_ZeroOne() * 5.0f) + 5.0f;
            if (absRelYawTowardsPlayer > 0x32C8) {
                this->idleTimer = 7;
            }
        } else if ((Rand_ZeroOne() > 0.7f) || (this->actor.xzDistToPlayer >= 120.0f)) {
            EnWf_SetupIdle(this);
            this->timer = (Rand_ZeroOne() * 5.0f) + 5.0f;
        } else {
            this->actor.world.rot.y = this->actor.yawTowardsPlayer;
            if (Rand_ZeroOne() > 0.7f) {
                EnWf_SetupShortCirclePlayer(this, play);
            } else if (absYawDiffWithPlayer <= 0x2710) {
                if (absRelYawTowardsPlayer > 0x3E80) {
                    this->actor.world.rot.y = this->actor.yawTowardsPlayer;
                    EnWf_SetupCirclePlayer(this);
                } else {
                    EnWf_PickAction(play, this, true);
                }
            } else {
                EnWf_SetupCirclePlayer(this);
            }
        }
    }
}

void EnWf_SetupAttackBouncedOff(EnWf* this) {
    f32 animEndFrame;

    animEndFrame = 1.0f;
    if ((s32)this->skelAnime.curFrame >= 16) {
        animEndFrame = 15.0f;
    }
    Animation_Change(&this->skelAnime, &gWolfosAttackAnim, -0.5f, this->skelAnime.curFrame - 1.0f, animEndFrame,
                     ANIMMODE_ONCE_INTERP, 0.0f);
    this->action = ENWF_ACTION_ATTACK_BOUNCED_OFF;
    this->attackState = 0;
    EnWf_SetupAction(this, EnWf_AttackBouncedOff);
}

void EnWf_AttackBouncedOff(EnWf* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s16 absYawDiffWithPlayer;
    s16 absRelYawTowardsPlayer;

    absYawDiffWithPlayer = player->actor.shape.rot.y - this->actor.shape.rot.y;
    absRelYawTowardsPlayer = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    if (absYawDiffWithPlayer < 0) {
        absYawDiffWithPlayer *= -1;
    }
    if (absRelYawTowardsPlayer < 0) {
        absRelYawTowardsPlayer *= -1;
    }
    if (SkelAnime_Update(&this->skelAnime)) {
        if (!Actor_IsFacingPlayer(&this->actor, 0x1554)) {
            EnWf_SetupIdle(this);
            this->timer = (Rand_ZeroOne() * 5.0f) + 5.0f;
            if (absRelYawTowardsPlayer > 0x32C8) {
                this->idleTimer = 30;
            }
        } else if ((Rand_ZeroOne() > 0.7f) || (this->actor.xzDistToPlayer >= 120.0f)) {
            EnWf_SetupIdle(this);
            this->timer = (Rand_ZeroOne() * 5.0f) + 5.0f;
        } else {
            this->actor.world.rot.y = this->actor.yawTowardsPlayer;
            if (Rand_ZeroOne() > 0.7f) {
                EnWf_SetupShortCirclePlayer(this, play);
            } else if (absYawDiffWithPlayer <= 0x2710) {
                if (absRelYawTowardsPlayer > 0x3E80) {
                    this->actor.world.rot.y = this->actor.yawTowardsPlayer;
                    EnWf_SetupCirclePlayer(this);
                } else {
                    EnWf_PickAction(play, this, true);
                }
            } else {
                EnWf_SetupCirclePlayer(this);
            }
        }
    }
}

void EnWf_SetupBackflipBackward(EnWf* this) {
    Animation_MorphToPlayOnce(&this->skelAnime, &gWolfosBackflipAnim, -3.0f);
    this->timer = 0;
    this->unk_300 = true;
    this->action = ENWF_ACTION_BACKFLIP_BACKWARD;
    this->actor.speed = -6.0f;
    this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    Actor_PlaySfx(&this->actor, NA_SE_EN_STAL_JUMP);
    EnWf_SetupAction(this, EnWf_BackflipBackward);
}

void EnWf_BackflipBackward(EnWf* this, PlayState* play) {
    if (SkelAnime_Update(&this->skelAnime)) {
        if (!Actor_OtherIsLockedOn(play, &this->actor) && (this->actor.xzDistToPlayer < 170.0f) &&
            (this->actor.xzDistToPlayer > 140.0f) && (Rand_ZeroOne() < 0.2f)) {
            EnWf_SetupRunToAttack(this, play);
        } else if (play->gameplayFrames & 1) {
            EnWf_SetupShortCirclePlayer(this, play);
        } else {
            EnWf_SetupIdle(this);
        }
    }
    if ((play->state.frames & 0x5F) == 0) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_WOLFOS_CRY);
    }
}

void EnWf_SetupStunned(EnWf* this) {
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        this->actor.speed = 0.0f;
    }
    Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    Animation_PlayOnceSetSpeed(&this->skelAnime, &gWolfosDamagedAnim, 0.0f);
    this->action = ENWF_ACTION_STUNNED;
    EnWf_SetupAction(this, EnWf_Stunned);
}

void EnWf_Stunned(EnWf* this, PlayState* play) {
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
        this->actor.speed = 0.0f;
    }
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        if (this->actor.speed < 0.0f) {
            this->actor.speed += 0.05f;
        }
        this->unk_300 = false;
    }
    if ((this->actor.colorFilterTimer == 0) && (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
        if (this->actor.colChkInfo.health == 0) {
            EnWf_SetupDie(this);
        } else {
            EnWf_PickAction(play, this, true);
        }
    }
}

void EnWf_SetupDamaged(EnWf* this) {
    Animation_MorphToPlayOnce(&this->skelAnime, &gWolfosDamagedAnim, -4.0f);
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        this->unk_300 = false;
        this->actor.speed = -4.0f;
    } else {
        this->unk_300 = true;
    }
    this->idleTimer = 0;
    this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    Actor_PlaySfx(&this->actor, NA_SE_EN_WOLFOS_DAMAGE);
    this->action = ENWF_ACTION_DAMAGED;
    EnWf_SetupAction(this, EnWf_Damaged);
}

void EnWf_Damaged(EnWf* this, PlayState* play) {
    s16 absRelWallYaw;

    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
        this->actor.speed = 0.0f;
    }
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        if (this->actor.speed < 0.0f) {
            this->actor.speed += 0.05f;
        }
        this->unk_300 = false;
    }
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0x1194, 0);
    if (!EnWf_PickAction(play, this, false) && SkelAnime_Update(&this->skelAnime) &&
        (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
        absRelWallYaw = this->actor.wallYaw - this->actor.shape.rot.y;
        if (absRelWallYaw < 0) {
            absRelWallYaw *= -1;
        }
        if ((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) && (ABS(absRelWallYaw) < 0x2EE0) &&
            (this->actor.xzDistToPlayer < 120.0f)) {
            EnWf_SetupBackflipForward(this);
        } else if (!EnWf_ReactToProjectile(play, this)) {
            if ((this->actor.xzDistToPlayer <= 80.0f) && !Actor_OtherIsLockedOn(play, &this->actor) &&
                ((play->gameplayFrames & 7) != 0)) {
                EnWf_SetupAttack(this);
            } else if (Rand_ZeroOne() > 0.5f) {
                EnWf_SetupIdle(this);
                this->timer = (Rand_ZeroOne() * 5.0f) + 5.0f;
                this->idleTimer = 30;
            } else {
                EnWf_SetupBackflipBackward(this);
            }
        }
    }
}

void EnWf_SetupBackflipForward(EnWf* this) {
    Animation_Change(&this->skelAnime, &gWolfosBackflipAnim, -1.0f, Animation_GetLastFrame(&gWolfosBackflipAnim), 0.0f,
                     ANIMMODE_ONCE, -3.0f);
    this->timer = 0;
    this->unk_300 = false;
    this->action = ENWF_ACTION_BACKFLIP_FORWARD;
    this->actor.speed = 6.5f;
    this->actor.velocity.y = 15.0f;
    Actor_PlaySfx(&this->actor, NA_SE_EN_STAL_JUMP);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    EnWf_SetupAction(this, EnWf_BackflipForward);
}

void EnWf_BackflipForward(EnWf* this, PlayState* play) {
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0xFA0, 1);
    if (this->actor.velocity.y >= 5.0f) {
        //! @bug unk_4C8 and unk_4BC are never set, so this spawns effects at 0,0,0
        func_800355B8(play, &this->unk_4C8);
        func_800355B8(play, &this->unk_4BC);
    }
    if (SkelAnime_Update(&this->skelAnime) &&
        ((this->actor.bgCheckFlags & (BGCHECKFLAG_GROUND | BGCHECKFLAG_GROUND_TOUCH)) != 0)) {
        this->actor.shape.rot.x = 0;
        this->actor.world.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
        this->actor.velocity.y = 0.0f;
        this->actor.speed = 0.0f;
        this->actor.world.pos.y = this->actor.floorHeight;
        if (!Actor_OtherIsLockedOn(play, &this->actor)) {
            EnWf_SetupAttack(this);
        } else {
            EnWf_SetupIdle(this);
        }
    }
}

void EnWf_SetupBlock(EnWf* this) {
    f32 animEndFrame;

    animEndFrame = (f32)Animation_GetLastFrame(&gWolfosBlockAnim);
    if (this->attackState != 0) {
        this->attackState = -1;
    }
    this->actor.speed = 0.0f;
    this->action = ENWF_ACTION_BLOCK;
    this->timer = 0xA;
    Animation_Change(&this->skelAnime, &gWolfosBlockAnim, 0.0f, 0.0f, animEndFrame, ANIMMODE_ONCE_INTERP, -4.0f);
    EnWf_SetupAction(this, EnWf_Block);
}

void EnWf_Block(EnWf* this, PlayState* play) {
    Player* player;
    s32 pad;
    s16 pad2;
    s16 yawDiff;
    s16 relYawTowardsPlayer;

    player = GET_PLAYER(play);
    if (this->timer != 0) {
        this->timer -= 1;
    } else {
        this->skelAnime.playSpeed = 1.0f;
    }
    if (SkelAnime_Update(&this->skelAnime)) {
        relYawTowardsPlayer = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
        if ((ABS(relYawTowardsPlayer) <= 0x4000) && (this->actor.xzDistToPlayer < 60.0f) &&
            (ABS(this->actor.yDistToPlayer) < 50.0f)) {
            if (func_800354B4(play, &this->actor, 100.0f, 0x2710, 0x4000, this->actor.shape.rot.y)) {
                if (player->meleeWeaponAnimation == PLAYER_MWA_JUMPSLASH_START) {
                    EnWf_SetupBlock(this);
                } else if (play->gameplayFrames & 1) {
                    EnWf_SetupBlock(this);
                } else {
                    EnWf_SetupBackflipBackward(this);
                }
            } else {
                yawDiff = player->actor.shape.rot.y - this->actor.shape.rot.y;
                if (!Actor_OtherIsLockedOn(play, &this->actor) &&
                    ((play->gameplayFrames & 1) || (ABS(yawDiff) < 0x38E0))) {
                    EnWf_SetupAttack(this);
                } else {
                    EnWf_SetupCirclePlayer(this);
                }
            }
        } else {
            EnWf_SetupCirclePlayer(this);
        }
    } else if ((this->timer == 0) &&
               func_800354B4(play, &this->actor, 100.0f, 0x2710, 0x4000, this->actor.shape.rot.y)) {
        if (player->meleeWeaponAnimation == PLAYER_MWA_JUMPSLASH_START) {
            EnWf_SetupBlock(this);
        } else if (play->gameplayFrames & 1) {
            EnWf_SetupBlock(this);
        } else {
            EnWf_SetupBackflipBackward(this);
        }
    }
}

/**
 * Run a short circle arc around the player.
 */
void EnWf_SetupShortCirclePlayer(EnWf* this, PlayState* play) {
    s16 angle;
    Player* player;

    Animation_Change(&this->skelAnime, &gWolfosRunAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gWolfosRunAnim),
                     ANIMMODE_LOOP_INTERP, -4.0f);
    player = GET_PLAYER(play);
    angle = player->actor.shape.rot.y + this->circlePlayerDirection;
    if (Math_SinS(angle - this->actor.yawTowardsPlayer) > 0.0f) {
        this->circlePlayerDirection = 0x3E80;
    } else if (Math_SinS(angle - this->actor.yawTowardsPlayer) < 0.0f) {
        this->circlePlayerDirection = -0x3E80;
    } else {
        if (Rand_ZeroOne() > 0.5f) {
            this->circlePlayerDirection = 0x3E80;
        } else {
            this->circlePlayerDirection = -0x3E80;
        }
    }
    this->actor.speed = 6.0f;
    this->skelAnime.playSpeed = this->actor.speed * 0.175f;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->circlePlayerExtraSpeed = 0.0f;
    this->timer = (Rand_ZeroOne() * 10.0f) + 5.0f;
    this->action = ENWF_ACTION_SHORT_CIRCLE_PLAYER;
    EnWf_SetupAction(this, EnWf_ShortCirclePlayer);
}

void EnWf_ShortCirclePlayer(EnWf* this, PlayState* play) {
    Player* player2;
    Player* player;
    s32 prevFrame;
    s32 beforeCurFrame;
    s32 new_var;
    f32 extraRadius;
    s32 absPlaySpeed;
    s16 yawWallRelToTarget;
    s16 behindPlayerYawAbs;
    s16 behindPlayerYaw;

    player = GET_PLAYER(play);
    extraRadius = 0.0f;
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer + this->circlePlayerDirection, 1, 0xBB8,
                       1);
    if ((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) ||
        !Actor_TestFloorInDirection(&this->actor, play, this->actor.speed, this->actor.shape.rot.y)) {
        // If there's a wall in the way, switch direction
        if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
            yawWallRelToTarget = this->actor.wallYaw - this->actor.yawTowardsPlayer - this->circlePlayerDirection;
        } else {
            yawWallRelToTarget = 0;
        }
        if (ABS(yawWallRelToTarget) > 0x2EE0) {
            this->circlePlayerDirection = -this->circlePlayerDirection;
        }
    }
    this->actor.world.rot.y = this->actor.shape.rot.y;
    if (Actor_OtherIsLockedOn(play, &this->actor)) {
        extraRadius = 150.0f;
    }
    if (this->actor.xzDistToPlayer <= (60.0f + extraRadius)) {
        Math_SmoothStepToF(&this->circlePlayerExtraSpeed, -4.0f, 1.0f, 1.5f, 0.0f);
    } else if (this->actor.xzDistToPlayer > (80.0f + extraRadius)) {
        Math_SmoothStepToF(&this->circlePlayerExtraSpeed, 4.0f, 1.0f, 1.5f, 0.0f);
    } else {
        Math_SmoothStepToF(&this->circlePlayerExtraSpeed, 0.0f, 1.0f, 6.65f, 0.0f);
    }
    if (this->circlePlayerExtraSpeed != 0.0f) {
        this->actor.world.pos.x += Math_SinS(this->actor.shape.rot.y) * this->circlePlayerExtraSpeed;
        this->actor.world.pos.z += Math_CosS(this->actor.shape.rot.y) * this->circlePlayerExtraSpeed;
    }
    if (ABS(this->circlePlayerExtraSpeed) < ABS(this->actor.speed)) {
        this->skelAnime.playSpeed = this->actor.speed * 0.175f;
    } else {
        this->skelAnime.playSpeed = this->circlePlayerExtraSpeed * 0.175f;
    }
    this->skelAnime.playSpeed = CLAMP(this->skelAnime.playSpeed, -3.0f, 3.0f);
    prevFrame = (s32)this->skelAnime.curFrame;
    SkelAnime_Update(&this->skelAnime);
    beforeCurFrame = (s32)(this->skelAnime.curFrame - ABS(this->skelAnime.playSpeed));
    absPlaySpeed = new_var = ABS(this->skelAnime.playSpeed);
    if (!EnWf_PickAction(play, this, false)) {
        this->timer--;
        if (this->timer == 0) {
            behindPlayerYawAbs = player->actor.shape.rot.y - this->actor.yawTowardsPlayer;
            //! @bug behindPlayerYawAbs is a s16, so it can't hold 0x8000, the absolute value of -0x8000.
            //! So -0x8000 just "stays" -0x8000, causing the behindPlayerYawAbs check below to wrongfully not pass.
            //! behindPlayerYawAbs is typically exactly -0x8000 when locking on the actor.
            //! Note the same problem of storing absolute angles into s16 variables happens elsewhere in this file, but
            //! problematic -0x8000 happens rarely in those other spots.
            if (behindPlayerYawAbs < 0) {
                behindPlayerYawAbs *= -1;
            }
            if (behindPlayerYawAbs >= 0x3A98) {
                EnWf_SetupIdle(this);
                this->timer = (Rand_ZeroOne() * 3.0f) + 1.0f;
            } else {
                player2 = GET_PLAYER(play);
                behindPlayerYaw = player2->actor.shape.rot.y - this->actor.yawTowardsPlayer;
                this->actor.world.rot.y = this->actor.shape.rot.y;
                if ((this->actor.xzDistToPlayer <= 80.0f) && !Actor_OtherIsLockedOn(play, &this->actor) &&
                    (((play->gameplayFrames & 3) == 0) || (ABS(behindPlayerYaw) < 0x38E0))) {
                    EnWf_SetupAttack(this);
                } else {
                    EnWf_SetupRunToAttack(this, play);
                }
            }
        }
        if ((prevFrame != (s32)this->skelAnime.curFrame) && (beforeCurFrame <= 0) &&
            (((s32)absPlaySpeed + prevFrame) > 0)) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_WOLFOS_WALK);
            Actor_SpawnFloorDustRing(play, &this->actor, &this->actor.world.pos, 20.0f, 3, 3.0f, 50, 50, true);
        }
        if ((play->gameplayFrames & 0x5F) == 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_WOLFOS_CRY);
        }
    }
}

void EnWf_SetupDie(EnWf* this) {
    Animation_MorphToPlayOnce(&this->skelAnime, &gWolfosHowlAnim, -4.0f);
    this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        this->unk_300 = false;
        this->actor.speed = -6.0f;
    } else {
        this->unk_300 = true;
    }
    this->action = ENWF_ACTION_DIE;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    this->timer = this->skelAnime.animLength;
    Actor_PlaySfx(&this->actor, NA_SE_EN_WOLFOS_DEAD);
    EnWf_SetupAction(this, EnWf_Die);
}

void EnWf_Die(EnWf* this, PlayState* play) {
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
        this->actor.speed = 0.0f;
    }
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        Math_SmoothStepToF(&this->actor.speed, 0.0f, 1.0f, 0.5f, 0.0f);
        this->unk_300 = false;
    }
    if (SkelAnime_Update(&this->skelAnime)) {
        Item_DropCollectibleRandom(play, &this->actor, &this->actor.world.pos,
                                   COLLECTIBLE_DROP_RANDOM_PARAMS(COLLECTIBLE_DROP_TABLE_13, false));
        if (this->switchFlag != 0xFF) {
            Flags_SetSwitch(play, this->switchFlag);
        }
        Actor_Kill(&this->actor);
    } else {
        s32 i;
        Vec3f pos;
        Vec3f velAccel;

        velAccel = D_80B37AD0;
        this->timer--;
        for (i = ((s32)this->skelAnime.animLength - this->timer) >> 1; i >= 0; i--) {
            pos.x = this->actor.world.pos.x + Rand_CenteredFloat(60.0f);
            pos.z = this->actor.world.pos.z + Rand_CenteredFloat(60.0f);
            pos.y = this->actor.world.pos.y + 20.0f + Rand_CenteredFloat(50.0f);
            EffectSsDeadDb_Spawn(play, &pos, &velAccel, &velAccel, 100, 0, 255, 255, 255, 255, 0, 0, 255, 1, 9, 1);
        }
    }
}

void EnWf_UpdateHeadRot(EnWf* this, PlayState* play) {
    if ((this->action == ENWF_ACTION_IDLE) && (this->idleTimer != 0)) {
        this->headRot = Math_SinS(this->idleTimer * 0x1068) * 8920.0f;
    } else if (this->action != ENWF_ACTION_STUNNED) {
        if (this->action != ENWF_ACTION_ATTACK) {
            Math_SmoothStepToS(&this->headRot, this->actor.yawTowardsPlayer - this->actor.shape.rot.y, 1, 0x5DC, 0);
            this->headRot = CLAMP(this->headRot, -0x3127, 0x3127);
        } else {
            this->headRot = 0;
        }
    }
}

void EnWf_CheckCollide(EnWf* this, PlayState* play) {
    s16 relYawTowardsPlayer;

    if (this->attackAndBlockCollider.base.acFlags & AC_BOUNCED) {
        this->attackAndBlockCollider.base.acFlags &= ~(AC_HIT | AC_BOUNCED);
        this->bodyCollider.base.acFlags &= ~AC_HIT;
        this->tailCollider.base.acFlags &= ~AC_HIT;
    } else if (((this->bodyCollider.base.acFlags & AC_HIT) || (this->tailCollider.base.acFlags & AC_HIT)) &&
               (this->action >= ENWF_ACTION_IDLE)) {
        relYawTowardsPlayer = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
        if (!((this->bodyCollider.base.acFlags & AC_HIT) || !(this->tailCollider.base.acFlags & AC_HIT)) ||
            (ABS(relYawTowardsPlayer) > 0x4A38)) {
            this->actor.colChkInfo.damage *= 4;
        }
        this->bodyCollider.base.acFlags &= ~AC_HIT;
        this->tailCollider.base.acFlags &= ~AC_HIT;
        if (this->actor.colChkInfo.damageReaction != ENWF_DMG_REACT_6) {
            this->lastDamageReaction = this->actor.colChkInfo.damageReaction;
            Actor_SetDropFlag(&this->actor, &this->bodyCollider.elem, true);
#if OOT_VERSION >= PAL_1_0
            this->attackState = 0;
#endif
            if ((this->actor.colChkInfo.damageReaction == ENWF_DMG_REACT_STUN) ||
                (this->actor.colChkInfo.damageReaction == ENWF_DMG_REACT_F)) {
                if (this->action != ENWF_ACTION_STUNNED) {
                    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_BLUE, 120, COLORFILTER_BUFFLAG_OPA, 80);
                    Actor_ApplyDamage(&this->actor);
                    EnWf_SetupStunned(this);
                }
            } else {
                Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 255, COLORFILTER_BUFFLAG_OPA, 8);
                if (this->lastDamageReaction == ENWF_DMG_REACT_FIRE) {
                    this->onFireTimer = 40;
                }
                if (Actor_ApplyDamage(&this->actor) == 0) {
                    EnWf_SetupDie(this);
                    Enemy_StartFinishingBlow(play, &this->actor);
                } else {
                    EnWf_SetupDamaged(this);
                }
            }
        }
    }
}

void EnWf_Update(Actor* thisx, PlayState* play) {
    EnWf* this = (EnWf*)thisx;
    s32 pad;

    EnWf_CheckCollide(this, play);
    if (this->actor.colChkInfo.damageReaction != ENWF_DMG_REACT_6) {
        Actor_MoveXZGravity(&this->actor);
        Actor_UpdateBgCheckInfo(play, &this->actor, 32.0f, 30.0f, 60.0f,
                                UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 |
                                    UPDBGCHECKINFO_FLAG_4);
        this->actionFunc(this, play);
        EnWf_UpdateHeadRot(this, play);
    }
    if (this->actor.bgCheckFlags & (BGCHECKFLAG_GROUND | BGCHECKFLAG_GROUND_TOUCH)) {
        func_800359B8(&this->actor, this->actor.shape.rot.y, &this->actor.shape.rot);
    } else {
        Math_SmoothStepToS(&this->actor.shape.rot.x, 0, 1, 0x3E8, 0);
        Math_SmoothStepToS(&this->actor.shape.rot.z, 0, 1, 0x3E8, 0);
    }
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->attackAndBlockCollider.base);
    if ((this->action >= ENWF_ACTION_IDLE) &&
        ((this->actor.colorFilterTimer == 0) || !(this->actor.colorFilterParams & 0x4000))) {
        Collider_UpdateCylinder(&this->actor, &this->bodyCollider);
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->tailCollider.base);
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->bodyCollider.base);
    }
    if (this->action == ENWF_ACTION_BLOCK) {
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->attackAndBlockCollider.base);
    }
    if (this->attackState > 0) {
        if (!(this->attackAndBlockCollider.base.atFlags & AT_BOUNCED)) {
            CollisionCheck_SetAT(play, &play->colChkCtx, &this->attackAndBlockCollider.base);
        } else {
            EnWf_SetupAttackBouncedOff(this);
        }
    }
    this->actor.focus.pos = this->actor.world.pos;
    this->actor.focus.pos.y += 25.0f;
    if (this->eyeIndex == 0) {
        if ((Rand_ZeroOne() < 0.2f) && ((play->gameplayFrames & 3) == 0) && (this->actor.colorFilterTimer == 0)) {
            this->eyeIndex += 1;
        }
    } else {
        this->eyeIndex = (this->eyeIndex + 1) & 3;
    }
}

s32 EnWf_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnWf* this = thisx;

    if ((limbIndex == WOLFOS_LIMB_HEAD) || (limbIndex == WOLFOS_LIMB_EYES)) {
        rot->y -= this->headRot;
    }
    return 0;
}

void EnWf_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnWf* this = thisx;
    s32 bodyPartIndex;
    Vec3f tailColliderPos;
    Vec3f bodyPartPos;

    bodyPartIndex = -1;
    Collider_UpdateSpheres(limbIndex, &this->attackAndBlockCollider);
    if (limbIndex == WOLFOS_LIMB_TAIL) {
        Matrix_MultVec3f(&D_80B37ADC, &tailColliderPos);
        this->tailCollider.dim.pos.x = tailColliderPos.x;
        this->tailCollider.dim.pos.y = tailColliderPos.y;
        this->tailCollider.dim.pos.z = tailColliderPos.z;
    }
    if ((this->onFireTimer != 0) || ((this->actor.colorFilterTimer != 0) && (this->actor.colorFilterParams & 0x4000))) {
        switch (limbIndex) {
            case WOLFOS_LIMB_EYES:
                bodyPartIndex = 0;
                break;
            case WOLFOS_LIMB_RIGHT_FOREARM:
                bodyPartIndex = 1;
                break;
            case WOLFOS_LIMB_LEFT_FOREARM:
                bodyPartIndex = 2;
                break;
            case WOLFOS_LIMB_TORSO:
                bodyPartIndex = 3;
                break;
            case WOLFOS_LIMB_WAIST:
                bodyPartIndex = 4;
                break;
            case WOLFOS_LIMB_TAIL:
                bodyPartIndex = 5;
                break;
            case WOLFOS_LIMB_RIGHT_SHIN:
                bodyPartIndex = 6;
                break;
            case 37:
                //! @bug 37 is not a valid limb index
                bodyPartIndex = 7;
                break;
            case WOLFOS_LIMB_RIGHT_ANKLE:
                bodyPartIndex = 8;
                break;
            case WOLFOS_LIMB_LEFT_FOOT:
                bodyPartIndex = 9;
                break;
        }
        if (bodyPartIndex >= 0) {
            Matrix_MultVec3f(&sZeroVec, &bodyPartPos);
            this->bodyPartsPos[bodyPartIndex].x = bodyPartPos.x;
            this->bodyPartsPos[bodyPartIndex].y = bodyPartPos.y;
            this->bodyPartsPos[bodyPartIndex].z = bodyPartPos.z;
        }
    }
}

void EnWf_Draw(Actor* thisx, PlayState* play) {
    EnWf* this = (EnWf*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_wf.c", 2157);
    if ((this->action != ENWF_ACTION_WAIT_APPEAR) || !this->unk_300) {
        Gfx_SetupDL_25Opa(play->state.gfxCtx);
        if (this->actor.params == 0) {
            gSPSegment(POLY_OPA_DISP++, 8, SEGMENTED_TO_VIRTUAL(sWolfosGrayEyeTextures[this->eyeIndex]));
        } else {
            gSPSegment(POLY_OPA_DISP++, 8, SEGMENTED_TO_VIRTUAL(sWolfosWhiteEyeTextures[this->eyeIndex]));
        }
        SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                              EnWf_OverrideLimbDraw, EnWf_PostLimbDraw, this);
        if (this->onFireTimer != 0) {
            this->actor.colorFilterTimer++;
            if (1) {}
            this->onFireTimer -= 1;
            if ((this->onFireTimer & 3) == 0) {
                s32 bodyPartIndex = this->onFireTimer >> 2;

                EffectSsEnFire_SpawnVec3s(play, &this->actor, &this->bodyPartsPos[bodyPartIndex], 75, 0, 0,
                                          bodyPartIndex);
            }
        }
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_wf.c", 2190);
}

/**
 * React to projectiles by picking an adequate action.
 * @return true if an action was picked
 */
s32 EnWf_ReactToProjectile(PlayState* play, EnWf* this) {
    Actor* projectile;
    s16 relYawTowardsProjectile;
    f32 projectileDist;

    projectile = Actor_GetProjectileActor(play, &this->actor, 600.0f);
    if (projectile != NULL) {
        relYawTowardsProjectile = Actor_WorldYawTowardActor(&this->actor, projectile) - this->actor.shape.rot.y;
        this->actor.world.rot.y = (u16)(s16)(this->actor.shape.rot.y + 0);
        projectileDist = Actor_WorldDistXYZToPoint(&this->actor, &projectile->world.pos);
        //! @bug Using sqrt on a non-squared distance
        if ((ABS(relYawTowardsProjectile) < 0x2EE0) && (sqrt((f64)projectileDist) < 400.0)) {
            EnWf_SetupBlock(this);
        } else {
            this->actor.world.rot.y = this->actor.shape.rot.y + 0x3FFF;
            if ((ABS(relYawTowardsProjectile) < 0x2000) || (ABS(relYawTowardsProjectile) >= 0x6000)) {
                EnWf_SetupShortCirclePlayer(this, play);
                this->actor.speed *= 2.0f;
            } else if (ABS(relYawTowardsProjectile) < 0x5FFF) {
                EnWf_SetupBackflipBackward(this);
            }
        }
        //! @bug If ABS(relYawTowardsProjectile) == 0x5FFF the function returns true
        //! even though no action has been chosen
        return true;
    }
    return false;
}
