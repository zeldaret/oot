/*
 * File: z_en_tp.c
 * Overlay: ovl_En_Tp
 * Description: Electric Tailpasaran
 */

#include "z_en_tp.h"

#include "libc64/qrand.h"
#include "array_count.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "rand.h"
#include "segmented_address.h"
#include "sfx.h"
#include "sys_math.h"
#include "sys_matrix.h"
#include "versions.h"
#include "z_en_item00.h"
#include "z_lib.h"
#include "effect.h"
#include "play_state.h"
#include "player.h"

#include "assets/objects/object_tp/object_tp.h"

#define FLAGS 0

void EnTp_Init(Actor* thisx, PlayState* play2);
void EnTp_Destroy(Actor* thisx, PlayState* play);
void EnTp_Update(Actor* thisx, PlayState* play);
void EnTp_Draw(Actor* thisx, PlayState* play);

void EnTp_SetupBodyElem(EnTp* this);
void EnTp_BodyElem(EnTp* this, PlayState* play);
void EnTp_Head_Attack(EnTp* this, PlayState* play);
void EnTp_SetupDying(EnTp* this);
void EnTp_Dying(EnTp* this, PlayState* play);
void EnTp_SetupBodyElemRemnant(EnTp* this);
void EnTp_BodyElemRemnant(EnTp* this, PlayState* play);
void EnTp_Head_Hover(EnTp* this, PlayState* play);
void EnTp_Head_SetupWaitPlayerAndRise(EnTp* this);
void EnTp_Head_WaitPlayerAndRise(EnTp* this, PlayState* play);
void EnTp_Head_SetupSinkIntoGroundAndReappear(EnTp* this);
void EnTp_Head_SinkIntoGroundAndReappear(EnTp* this, PlayState* play);

typedef enum EnTpAction {
    ENTP_ACTION_BODYELEMREMNANT,
    ENTP_ACTION_DYING,
    ENTP_ACTION_BODYELEM,
    ENTP_ACTION_HEAD_WAIT_PLAYER_AND_RISE = 4,
    ENTP_ACTION_HEAD_ATTACK = 7,
    ENTP_ACTION_HEAD_8,
    ENTP_ACTION_HEAD_SINK_INTO_GROUND_AND_REAPPEAR
} EnTpAction;

ActorProfile En_Tp_Profile = {
    /**/ ACTOR_EN_TP,
    /**/ ACTORCAT_ENEMY,
    /**/ FLAGS,
    /**/ OBJECT_TP,
    /**/ sizeof(EnTp),
    /**/ EnTp_Init,
    /**/ EnTp_Destroy,
    /**/ EnTp_Update,
    /**/ EnTp_Draw,
};

static ColliderJntSphElementInit sJntSphElementsInit[] = {
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0xFFCFFFFF, HIT_SPECIAL_EFFECT_ELECTRIC, 0x08 },
            { 0xFFCFFFFF, HIT_BACKLASH_ELECTRIC, 0x00 },
            ATELEM_ON | ATELEM_SFX_NORMAL,
            ACELEM_ON,
            OCELEM_NONE,
        },
        { 0, { { 0, 0, 0 }, 4 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    {
        COL_MATERIAL_HIT1,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    ARRAY_COUNT(sJntSphElementsInit),
    sJntSphElementsInit,
};

typedef enum EnTpDamageReaction {
    ENTP_DMG_REACT_NO_EFFECT,
    ENTP_DMG_REACT_STUN,
    ENTP_DMG_REACT_MELEE_BACKLASH = 0xE,
    ENTP_DMG_REACT_VULNERABLE
} EnTpDamageReaction;

static DamageTable sDamageTable = {
    /* Deku nut      */ DMG_ENTRY(0, ENTP_DMG_REACT_STUN),
    /* Deku stick    */ DMG_ENTRY(2, ENTP_DMG_REACT_VULNERABLE),
    /* Slingshot     */ DMG_ENTRY(0, ENTP_DMG_REACT_NO_EFFECT),
    /* Explosive     */ DMG_ENTRY(0, ENTP_DMG_REACT_NO_EFFECT),
    /* Boomerang     */ DMG_ENTRY(1, ENTP_DMG_REACT_VULNERABLE),
    /* Normal arrow  */ DMG_ENTRY(0, ENTP_DMG_REACT_NO_EFFECT),
    /* Hammer swing  */ DMG_ENTRY(2, ENTP_DMG_REACT_MELEE_BACKLASH),
    /* Hookshot      */ DMG_ENTRY(0, ENTP_DMG_REACT_NO_EFFECT),
    /* Kokiri sword  */ DMG_ENTRY(1, ENTP_DMG_REACT_MELEE_BACKLASH),
    /* Master sword  */ DMG_ENTRY(2, ENTP_DMG_REACT_MELEE_BACKLASH),
    /* Giant's Knife */ DMG_ENTRY(4, ENTP_DMG_REACT_MELEE_BACKLASH),
    /* Fire arrow    */ DMG_ENTRY(0, ENTP_DMG_REACT_NO_EFFECT),
    /* Ice arrow     */ DMG_ENTRY(0, ENTP_DMG_REACT_NO_EFFECT),
    /* Light arrow   */ DMG_ENTRY(0, ENTP_DMG_REACT_NO_EFFECT),
    /* Unk arrow 1   */ DMG_ENTRY(0, ENTP_DMG_REACT_NO_EFFECT),
    /* Unk arrow 2   */ DMG_ENTRY(0, ENTP_DMG_REACT_NO_EFFECT),
    /* Unk arrow 3   */ DMG_ENTRY(0, ENTP_DMG_REACT_NO_EFFECT),
    /* Fire magic    */ DMG_ENTRY(0, ENTP_DMG_REACT_NO_EFFECT),
    /* Ice magic     */ DMG_ENTRY(0, ENTP_DMG_REACT_NO_EFFECT),
    /* Light magic   */ DMG_ENTRY(0, ENTP_DMG_REACT_NO_EFFECT),
    /* Shield        */ DMG_ENTRY(0, ENTP_DMG_REACT_NO_EFFECT),
    /* Mirror Ray    */ DMG_ENTRY(0, ENTP_DMG_REACT_NO_EFFECT),
    /* Kokiri spin   */ DMG_ENTRY(1, ENTP_DMG_REACT_MELEE_BACKLASH),
    /* Giant spin    */ DMG_ENTRY(4, ENTP_DMG_REACT_MELEE_BACKLASH),
    /* Master spin   */ DMG_ENTRY(2, ENTP_DMG_REACT_MELEE_BACKLASH),
    /* Kokiri jump   */ DMG_ENTRY(2, ENTP_DMG_REACT_MELEE_BACKLASH),
    /* Giant jump    */ DMG_ENTRY(8, ENTP_DMG_REACT_MELEE_BACKLASH),
    /* Master jump   */ DMG_ENTRY(4, ENTP_DMG_REACT_MELEE_BACKLASH),
    /* Unknown 1     */ DMG_ENTRY(0, ENTP_DMG_REACT_NO_EFFECT),
    /* Unblockable   */ DMG_ENTRY(0, ENTP_DMG_REACT_NO_EFFECT),
    /* Hammer jump   */ DMG_ENTRY(4, ENTP_DMG_REACT_MELEE_BACKLASH),
    /* Unknown 2     */ DMG_ENTRY(0, ENTP_DMG_REACT_NO_EFFECT),
};
static InitChainEntry sInitChain[] = {
    ICHAIN_F32(lockOnArrowOffset, 10, ICHAIN_STOP),
};

void EnTp_SetupAction(EnTp* this, void (*actionFunc)(EnTp*, PlayState*)) {
    this->actionFunc = actionFunc;
}

void EnTp_Init(Actor* thisx, PlayState* play2) {
    EnTp* newChild;
    EnTp* prevChild;
    s32 i;
    EnTp* this = (EnTp*)thisx;
    PlayState* play = play2;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    this->actor.attentionRangeType = ATTENTION_RANGE_3;
    this->actor.colChkInfo.damageTable = &sDamageTable;
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 0.14f);
    this->modeVar = 0;
    this->actor.colChkInfo.health = 1;
    prevChild = this;
    this->bodyElemAlpha = 255;
    Collider_InitJntSph(play, &this->collider);
    Collider_SetJntSph(play, &this->collider, &this->actor, &sJntSphInit, this->colliderElements);
    if (this->actor.params < 0) { // ENTP_TYPE_HEAD
        this->actor.naviEnemyId = NAVI_ENEMY_TAILPASARAN;
        this->timer = 0;
        this->collider.base.acFlags |= AC_HARD;
        this->collider.elements[0].dim.worldSphere.radius = 8;
        this->collider.elements[0].dim.modelSphere.radius = this->collider.elements[0].dim.worldSphere.radius;
        EnTp_Head_SetupWaitPlayerAndRise(this);
        this->actor.focus.pos = this->actor.world.pos;
        this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE | ACTOR_FLAG_UPDATE_CULLING_DISABLED;
        Actor_SetScale(&this->actor, 1.5f);
        for (i = 0; i < 7; i++) {
            if (((0 * i) != 0) && ((0 * i) != 0)) {}
            newChild =
                (EnTp*)Actor_Spawn(&play->actorCtx, play, ACTOR_EN_TP, this->actor.world.pos.x, this->actor.world.pos.y,
                                   this->actor.world.pos.z, 0, 0, 0, 0 * i /* ENTP_TYPE_BODYELEM */);
            if (newChild != NULL) {
                prevChild->actor.child = &newChild->actor;
                newChild->actor.parent = &prevChild->actor;
                newChild->sparkTimer = i + 1;
                newChild->headInstance = this;
                Actor_SetScale(&newChild->actor, 0.3f);
                if (i == 2) {
                    newChild->actor.flags |=
                        ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE | ACTOR_FLAG_UPDATE_CULLING_DISABLED;
                    newChild->modeVar = 1;
                }
                newChild->timer2 = i * -5;
                newChild->timer = i * -5;
                prevChild = newChild;
                newChild->bodyElemDist = 6.0f - ((f32)i * 0.75f);
            }
        }
    } else if (this->actor.params == ENTP_TYPE_BODYELEM) {
        EnTp_SetupBodyElem(this);
    } else { // ENTP_TYPE_BODYELEMREMNANT (only remaining params EnTp is spawned with)
        EnTp_SetupBodyElemRemnant(this);
    }
}

void EnTp_Destroy(Actor* thisx, PlayState* play) {
    EnTp* this = (EnTp*)thisx;

    Collider_DestroyJntSph(play, &this->collider);
}

void EnTp_SetupBodyElem(EnTp* this) {
    this->action = ENTP_ACTION_BODYELEM;
    EnTp_SetupAction(this, EnTp_BodyElem);
}

void EnTp_BodyElem(EnTp* this, PlayState* play) {
    s16 sp36;
    s16 temp_a0_sp34;

    if (this->actor.params == ENTP_TYPE_BODYELEM_DYING) {
        this->action = ENTP_ACTION_DYING;
        if (this->actor.parent == NULL) {
            EnTp_SetupDying(this);
        }
    } else {
        if (this->modeVar != 0) {
            this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
        }
        if (this->headInstance->modeVar != 0) {
            this->actor.speed = this->redShineAmount = this->actor.velocity.y = this->unk_168 = 0.0f;
            if (this->actor.world.pos.y < this->headInstance->actor.home.pos.y) {
                this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
            }
            this->actor.world.pos = this->actor.parent->prevPos;
        } else {
            Math_SmoothStepToF(&this->actor.world.pos.y, this->actor.parent->world.pos.y - 4.0f, 1.0f, 1.0f, 0.0f);
            sp36 = this->headInstance->actor.shape.rot.y + 0x4000;
            temp_a0_sp34 = (this->headInstance->timer2 + this->timer) * 0x7D0;
            this->actor.world.pos.x =
                (Math_SinS(temp_a0_sp34) * (Math_SinS(sp36) * this->bodyElemDist)) + this->actor.home.pos.x;
            this->actor.world.pos.z =
                (Math_SinS(temp_a0_sp34) * (Math_CosS(sp36) * this->bodyElemDist)) + this->actor.home.pos.z;
        }
    }
}

void EnTp_Head_SetupAttack(EnTp* this) {
    this->action = ENTP_ACTION_HEAD_ATTACK;
    this->timer = 200;
    EnTp_SetupAction(this, EnTp_Head_Attack);
}

void EnTp_Head_Attack(EnTp* this, PlayState* play) {
    Player* player;

    player = GET_PLAYER(play);
    Math_SmoothStepToF(&this->actor.world.pos.y, player->actor.world.pos.y + 30.0f, 1.0f, 0.5f, 0.0f);
    SFX_PLAY_AT_POS(&this->actor.projectedPos, NA_SE_EN_TAIL_FLY - SFX_FLAG);
    if (this->collider.base.atFlags & AT_HIT) {
        this->collider.base.atFlags &= ~AT_HIT;
        if (&player->actor == this->collider.base.at) {
            this->timer = 1;
        }
    }
    if (this->redShineAmount < 255) {
        this->redShineAmount += 15;
    }
    if (Math_CosF(this->unk_168) == 0.0f) {
        this->unk_170 = 2.0f * Rand_ZeroOne();
    }
    this->actor.world.pos.y += Math_CosF(this->unk_168) * (2.0f + this->unk_170);
    this->unk_168 += 0.2f;
    Math_SmoothStepToF(&this->actor.speed, 2.5f, 0.1f, 0.2f, 0.0f);
    this->timer--;
    if (this->timer != 0) {
        Math_SmoothStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 1, 0x2EE, 0);
        this->actor.shape.rot.y = this->actor.world.rot.y;
    } else {
        EnTp_Head_SetupSinkIntoGroundAndReappear(this);
    }
}

void EnTp_SetupDying(EnTp* this) {
    Actor* child;

    this->timer = 2;
    if (this->actor.params < 0) { // ENTP_TYPE_HEAD
        child = this->actor.child;
        while (child != NULL) {
            child->params = ENTP_TYPE_BODYELEM_DYING;
            child->colChkInfo.health = 0;
            child = child->child;
        }
        this->timer = 13;
        Actor_PlaySfx(&this->actor, NA_SE_EN_TAIL_DEAD);
    }
    this->action = ENTP_ACTION_DYING;
    EnTp_SetupAction(this, EnTp_Dying);
}

void EnTp_Dying(EnTp* this, PlayState* play) {
    s16 i;
    EnTp* actor;
    s32 pad;
    Vec3f sp78 = { 0.0f, 0.5f, 0.0f };
    Vec3f sp6C = { 0.0f, 0.0f, 0.0f };

    this->timer--;
    if (this->timer <= 0) {
        if (this->actor.params == ENTP_TYPE_HEAD_DYING) {
            sp6C.x = ((Rand_ZeroOne() - 0.5f) * 15.0f) + this->actor.world.pos.x;
            sp6C.z = ((Rand_ZeroOne() - 0.5f) * 15.0f) + this->actor.world.pos.z;
            sp6C.y = ((Rand_ZeroOne() - 0.5f) * 5.0f) + this->actor.world.pos.y;
            EffectSsDeadDb_Spawn(play, &sp6C, &sp78, &sp78, 100, 0, 255, 255, 255, 255, 0, 0, 255, 1, 9, true);
            sp6C.x = ((Rand_ZeroOne() - 0.5f) * 15.0f) + this->actor.world.pos.x;
            sp6C.z = ((Rand_ZeroOne() - 0.5f) * 15.0f) + this->actor.world.pos.z;
            sp6C.y = ((Rand_ZeroOne() - 0.5f) * 5.0f) + this->actor.world.pos.y;
            EffectSsDeadDb_Spawn(play, &sp6C, &sp78, &sp78, 100, 0, 255, 255, 255, 255, 0, 0, 255, 1, 9, true);
            Item_DropCollectibleRandom(play, &this->actor, &this->actor.world.pos,
                                       COLLECTIBLE_DROP_RANDOM_PARAMS(COLLECTIBLE_DROP_TABLE_5, false));
        } else { // ENTP_TYPE_BODYELEM_DYING
#if OOT_VERSION < NTSC_1_1
            for (i = 0; i < 2; i++)
#else
            for (i = 0; i < 1; i++)
#endif
            {
                actor = (EnTp*)Actor_Spawn(&play->actorCtx, play, ACTOR_EN_TP, this->actor.world.pos.x,
                                           this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0,
                                           ENTP_TYPE_BODYELEMREMNANT);
                if (actor != NULL) {
                    Actor_SetScale(&actor->actor, this->actor.scale.z * 0.5f);
                    actor->redShineAmount = this->redShineAmount;
                }
            }
        }
        if (this->actor.child != NULL) {
            this->actor.child->parent = NULL;
            this->actor.child->params = ENTP_TYPE_BODYELEM_DYING;
            this->actor.child->colChkInfo.health = 0;
        }
        this->modeVar = 2;
        Actor_Kill(&this->actor);
    }
}

void EnTp_SetupBodyElemRemnant(EnTp* this) {
    this->action = ENTP_ACTION_BODYELEMREMNANT;
    this->actor.world.pos.x += (Rand_ZeroOne() - 0.5f) * 5.0f;
    this->actor.world.pos.y += (Rand_ZeroOne() - 0.5f) * 5.0f;
    this->actor.world.pos.z += (Rand_ZeroOne() - 0.5f) * 5.0f;
    this->actor.velocity.x = (Rand_ZeroOne() - 0.5f) * 1.5f;
    this->actor.velocity.y = (Rand_ZeroOne() - 0.5f) * 1.5f;
    this->actor.velocity.z = (Rand_ZeroOne() - 0.5f) * 1.5f;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    EnTp_SetupAction(this, EnTp_BodyElemRemnant);
}

void EnTp_BodyElemRemnant(EnTp* this, PlayState* play) {
    Actor_UpdatePos(&this->actor);
    this->bodyElemAlpha -= 20;
    if (this->bodyElemAlpha < 20) {
        this->bodyElemAlpha = 0;
        Actor_Kill(&this->actor);
    }
}

void EnTp_Head_SetupHover(EnTp* this) {
    this->timer = (Rand_ZeroOne() * 15.0f) + 40.0f;
    this->action = ENTP_ACTION_HEAD_8;
    EnTp_SetupAction(this, EnTp_Head_Hover);
}

void EnTp_Head_Hover(EnTp* this, PlayState* play) {
    s32 pad;
    Player* player;

    player = GET_PLAYER(play);
    Math_SmoothStepToF(&this->actor.speed, 2.5f, 0.1f, 0.2f, 0.0f);
    // bodyElemDist_ is always 0 here
    Math_SmoothStepToF(&this->actor.world.pos.y, player->actor.world.pos.y + 85.0f + this->bodyElemDist, 1.0f,
                       this->actor.speed * 0.25f, 0.0f);
    SFX_PLAY_AT_POS(&this->actor.projectedPos, NA_SE_EN_TAIL_FLY - SFX_FLAG);
    if (this->collider.base.atFlags & AT_HIT) {
        this->collider.base.atFlags &= ~AT_HIT;
        if (&player->actor == this->collider.base.at) {
            this->timer2 = 1;
        }
    }
    if (this->redShineAmount != 0) {
        this->redShineAmount -= 15;
    }
    if (Math_CosF(this->unk_168) == 0.0f) {
        this->unk_170 = Rand_ZeroOne() * 4.0f;
    }
    this->actor.world.pos.y += Math_CosF(this->unk_168) * ((this->actor.speed * 0.25f) + this->unk_170);
    // unk_164 is always 0
    this->actor.world.rot.y += this->unk_164;
    this->unk_168 += 0.2f;
    if (this->timer != 0) {
        this->timer--;
    }
    Math_SmoothStepToS(&this->actor.world.rot.y, Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.home.pos), 1,
                       0x2EE, 0);
    if (this->timer == 0) {
        EnTp_Head_SetupAttack(this);
    }
    this->actor.shape.rot.y = this->actor.world.rot.y;
}

void EnTp_Head_SetupWaitPlayerAndRise(EnTp* this) {
    this->action = ENTP_ACTION_HEAD_WAIT_PLAYER_AND_RISE;
    this->modeVar = 0;
    this->actor.shape.rot.x = -0x4000;
    this->timer = 60;
    this->timer2 = 0;
    this->actor.speed = 0.0f;
    EnTp_SetupAction(this, EnTp_Head_WaitPlayerAndRise);
}

void EnTp_Head_WaitPlayerAndRise(EnTp* this, PlayState* play) {
    Player* player;
    s16 sp32;

    player = GET_PLAYER(play);
    this->timer2--;
    if (this->actor.xzDistToPlayer < 200.0f) {
        if (this->collider.base.atFlags & AT_HIT) {
            this->collider.base.atFlags &= ~AT_HIT;
            if (&player->actor == this->collider.base.at) {
                this->timer = 0;
            }
        }
        if (this->timer != 0) {
            this->timer--;
            Math_SmoothStepToS(&this->actor.shape.rot.x, 0, 1, 0x1F4, 0);
            Math_SmoothStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 1, 0x5DC, 0);
            sp32 = Math_Vec3f_Yaw(&this->actor.home.pos, &player->actor.world.pos) + 0x4000;
            Math_SmoothStepToF(&this->actor.world.pos.y, this->actor.home.pos.y + 30.0f, 0.3f, 1.0f, 0.3f);
            // bodyElemDist_ is always 0 here
            this->actor.world.pos.x =
                (Math_SinS(this->timer2 * 0x7D0) * (Math_SinS(sp32) * this->bodyElemDist)) + this->actor.home.pos.x;
            this->actor.world.pos.z =
                (Math_SinS(this->timer2 * 0x7D0) * (Math_CosS(sp32) * this->bodyElemDist)) + this->actor.home.pos.z;
        } else {
            this->actor.shape.rot.x = 0;
            this->modeVar = 1;
            EnTp_Head_SetupHover(this);
        }
    } else {
        Math_SmoothStepToS(&this->actor.shape.rot.x, -0x4000, 1, 0x1F4, 0);
        if (Math_SmoothStepToF(&this->actor.world.pos.y, this->actor.home.pos.y, 0.3f, 1.5f, 0.3f) == 0.0f) {
            this->timer = 60;
        } else {
            sp32 = Math_Vec3f_Yaw(&this->actor.home.pos, &player->actor.world.pos);
            this->actor.world.pos.x =
                (Math_SinS(this->timer2 * 0x7D0) * (Math_SinS(sp32) * 6.0f)) + this->actor.home.pos.x;
            this->actor.world.pos.z =
                (Math_SinS(this->timer2 * 0x7D0) * (Math_CosS(sp32) * 6.0f)) + this->actor.home.pos.z;
        }
    }
    this->actor.shape.rot.y = this->actor.world.rot.y;
    if (this->actor.world.pos.y != this->actor.home.pos.y) {
        SFX_PLAY_AT_POS(&this->actor.projectedPos, NA_SE_EN_TAIL_FLY - SFX_FLAG);
    }
}

void EnTp_Head_SetupSinkIntoGroundAndReappear(EnTp* this) {
    this->action = ENTP_ACTION_HEAD_SINK_INTO_GROUND_AND_REAPPEAR;
    this->timer = 0;
    EnTp_SetupAction(this, EnTp_Head_SinkIntoGroundAndReappear);
}

void EnTp_Head_SinkIntoGroundAndReappear(EnTp* this, PlayState* play) {
    static Vec3f sBubbleAccel = { 0.0f, -0.5f, 0.0f };
    static Color_RGBA8 sBubblePrimColor = { 255, 255, 255, 255 };
    static Color_RGBA8 sBubbleEnvColor = { 150, 150, 150, 0 };
    Vec3f bubbleVel;
    Vec3f bubblePos;
    s32 isInsideGround;
    EnTp* child;
    s16 new_var; //! FAKE

    isInsideGround = false;
    this->timer2--;
    // timer is initialized to 0,
    // so this runs due to the pos.y check once the actor is deep enough under ground (see other "plunge" branch below)
    if ((this->timer != 0) || ((this->actor.home.pos.y - this->actor.world.pos.y) > 60.0f)) {
        if (1) {
            this->timer--;
        }
        // The first time this is reached timer is -1, so the other branch runs
        if ((new_var = this->timer) == 0) {
            // 4. Finished reappearing
            EnTp_Head_SetupWaitPlayerAndRise(this);
            child = (EnTp*)this->actor.child;
            while (child != NULL) {
                child->timer2 = child->timer;
                child = (EnTp*)child->actor.child;
            }
        } else {
            // The first time this is reached shape.rot.x is 0x4000 (see below)
            // and this block sets it to -0x4000, hence this block runs once
            if (this->actor.shape.rot.x != -0x4000) {
                this->timer = 80;
                // 2. Teleport the head (this) and all body elements to home
                this->actor.velocity.y = 0.0f;
                this->actor.speed = 0.0f;
                this->actor.world.pos = this->actor.home.pos;
                this->actor.shape.rot.x = -0x4000;
                child = (EnTp*)this->actor.child;
                while (child != NULL) {
                    child->actor.velocity.y = 0.0f;
                    child->actor.speed = 0.0f;
                    child->actor.world.pos = this->actor.home.pos;
                    child->actor.world.pos.y = this->actor.home.pos.y - 80.0f;
                    child = (EnTp*)child->actor.child;
                }
            }
            // 3. Raise back up through the floor
            this->actor.world.pos.y = this->actor.home.pos.y - (f32)this->timer;
        }
    } else {
        // 1. Plunge towards and into the ground
        if (this->actor.shape.rot.x != 0x4000) {
            this->actor.shape.rot.x -= 0x400;
        }
        if (this->redShineAmount != 0) {
            this->redShineAmount -= 15;
        }
        this->actor.speed = 2.0f * Math_CosS(this->actor.shape.rot.x);
        this->actor.velocity.y = Math_SinS(this->actor.shape.rot.x) * -2.0f;
        if ((this->actor.world.pos.y - this->actor.floorHeight) < 20.0f) {
            isInsideGround = true;
        }
        if (this->actor.world.pos.y != this->actor.home.pos.y) {
            SFX_PLAY_AT_POS(&this->actor.projectedPos, NA_SE_EN_TAIL_FLY - SFX_FLAG);
        }
        if (isInsideGround && (play->gameplayFrames & 1)) {
            bubblePos = this->actor.world.pos;
            bubblePos.y = this->actor.floorHeight;
            bubbleVel.x = Rand_CenteredFloat(5.0f);
            bubbleVel.y = (Rand_ZeroOne() * 3.5f) + 1.5f;
            bubbleVel.z = Rand_CenteredFloat(5.0f);
            EffectSsDtBubble_SpawnCustomColor(play, &bubblePos, &bubbleVel, &sBubbleAccel, &sBubblePrimColor,
                                              &sBubbleEnvColor, Rand_S16Offset(100, 50), 20, 0);
        }
    }
}

void EnTp_CheckCollide_(EnTp* this, PlayState* play) {
    EnTp* parent;
    EnTp* child;
    s32 isHeadInstance;
    s32 applyStun;
    EnTp* headInstance;

    if ((this->collider.base.acFlags & AC_HIT) && (this->action >= ENTP_ACTION_BODYELEM)) {
        isHeadInstance = false;
        applyStun = false;
        if (this->actor.params < 0) { // ENTP_TYPE_HEAD
            isHeadInstance = true;
        }
        this->collider.base.acFlags &= ~AC_HIT;
        Actor_SetDropFlagJntSph(&this->actor, &this->collider, true);
        this->unk_158 = this->actor.colChkInfo.damageReaction;
        if (this->actor.colChkInfo.damageReaction != ENTP_DMG_REACT_NO_EFFECT) {
            if (this->actor.colChkInfo.damageReaction == ENTP_DMG_REACT_STUN) {
                applyStun = true;
            }
            if (!isHeadInstance) {
                Actor_ApplyDamage(&this->actor);
            }
            if (this->actor.colChkInfo.health == 0) {
                this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
                headInstance = this->headInstance;
                if (headInstance->actor.params < 0) { // ENTP_TYPE_HEAD
                    EnTp_SetupDying(headInstance);
                    headInstance->unk_158 = this->actor.colChkInfo.damageReaction;
                    headInstance->actor.params = ENTP_TYPE_HEAD_DYING;
                }
            } else {
                if (applyStun) {
                    this->actor.freezeTimer = 80;
                    Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
                    if (isHeadInstance) {
                        Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_BLUE, 255, COLORFILTER_BUFFLAG_OPA,
                                             80);
                    } else {
                        Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_BLUE, 255, COLORFILTER_BUFFLAG_XLU,
                                             80);
                    }
                }
                parent = (EnTp*)this->actor.parent;
                while (parent != NULL) {
                    parent->collider.base.acFlags &= ~AC_HIT;
                    if (applyStun) {
                        parent->actor.freezeTimer = 80;
                        Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
                        if (isHeadInstance) {
                            Actor_SetColorFilter(&parent->actor, COLORFILTER_COLORFLAG_BLUE, 255,
                                                 COLORFILTER_BUFFLAG_OPA, 80);
                        } else {
                            Actor_SetColorFilter(&parent->actor, COLORFILTER_COLORFLAG_BLUE, 255,
                                                 COLORFILTER_BUFFLAG_XLU, 80);
                        }
                    }
                    parent = (EnTp*)parent->actor.parent;
                }
                child = (EnTp*)this->actor.child;
                while (child != NULL) {
                    child->collider.base.acFlags &= ~AC_HIT;
                    if (applyStun) {
                        child->actor.freezeTimer = 80;
                        if (isHeadInstance) {
                            Actor_SetColorFilter(&child->actor, COLORFILTER_COLORFLAG_BLUE, 255,
                                                 COLORFILTER_BUFFLAG_OPA, 80);
                        } else {
                            Actor_SetColorFilter(&child->actor, COLORFILTER_COLORFLAG_BLUE, 255,
                                                 COLORFILTER_BUFFLAG_XLU, 80);
                        }
                    }
                    child = (EnTp*)child->actor.child;
                }
            }
        }
    }
}

void EnTp_Update(Actor* thisx, PlayState* play) {
    Player* player;
    s32 pad;
    Vec3f sparkVel = { 0.0f, 0.0f, 0.0f };
    Vec3f sparkAccel = { 0.0f, -0.6f, 0.0f };
    Vec3f sparkPos;
    Color_RGBA8 sparkPrimColor = { 0, 0, 255, 255 };
    Color_RGBA8 sparkEnvColor = { 0, 0, 0, 0 };
    EnTp* this = (EnTp*)thisx;
    s16 v;

    player = GET_PLAYER(play);

    if (player->stateFlags1 & PLAYER_STATE1_26) {
        this->unk_158 = ENTP_DMG_REACT_NO_EFFECT;
    }
    if (this->actor.colChkInfo.health != 0) {
        EnTp_CheckCollide_(this, play);
    }
    this->actionFunc(this, play);
    if (this->actor.params < 0) { // ENTP_TYPE_HEAD
        Actor_MoveXZGravity(&this->actor);
        if (this->action != ENTP_ACTION_HEAD_SINK_INTO_GROUND_AND_REAPPEAR) {
            Actor_UpdateBgCheckInfo(play, &this->actor, 0.0f, 15.0f, 10.0f,
                                    UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
        }
        if ((this->actor.speed != 0.0f) && (this->actor.bgCheckFlags & BGCHECKFLAG_WALL)) {
            v = this->actor.wallYaw - this->actor.world.rot.y;
            if (ABS(v) > 0x4000) {
                if (v >= 0) {
                    this->actor.world.rot.y -= 0x1F4;
                } else {
                    this->actor.world.rot.y += 0x1F4;
                }
                this->actor.shape.rot.y = this->actor.world.rot.y;
            }
        }
        this->actor.shape.rot.z += 0x800;
        if (this->actor.shape.rot.z == 0) {
            SFX_PLAY_AT_POS(&this->actor.projectedPos, NA_SE_EN_TAIL_CRY);
        }
        if (this->action >= ENTP_ACTION_BODYELEM) {
            CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
        }
    }
    if (this->actor.params != ENTP_TYPE_BODYELEM_DYING) {
        this->sparkTimer--;
        this->sparkTimer &= 7;
    }
    this->actor.focus.pos = this->actor.world.pos;
    if (this->unk_158 == ENTP_DMG_REACT_MELEE_BACKLASH) {
        CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
    }
    if ((this->sparkTimer & 7) == 0) {
        sparkPrimColor.r = this->redShineAmount;
        sparkAccel.x = -this->actor.velocity.x * 0.25f;
        sparkAccel.y = -this->actor.velocity.y * 0.25f;
        sparkAccel.z = -this->actor.velocity.z * 0.25f;
        sparkPos.x = ((Rand_ZeroOne() - 0.5f) * 25.0f) + this->actor.world.pos.x;
        sparkPos.y = ((Rand_ZeroOne() - 0.5f) * 20.0f) + this->actor.world.pos.y;
        sparkPos.z = ((Rand_ZeroOne() - 0.5f) * 25.0f) + this->actor.world.pos.z;
        EffectSsKiraKira_SpawnSmall(play, &sparkPos, &sparkVel, &sparkAccel, &sparkPrimColor, &sparkEnvColor);
    }
    if ((this->action >= ENTP_ACTION_BODYELEM) && (this->actor.colChkInfo.health != 0)) {
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
    }
}

void EnTp_Draw(Actor* thisx, PlayState* play) {
    s16 type;
    EnTp* this = (EnTp*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_tp.c", 1451);
    if (this->modeVar != 2) {
        type = this->actor.params;
        if ((type < 0) /* ENTP_TYPE_HEAD */ || (type == ENTP_TYPE_HEAD_DYING)) {
            Gfx_SetupDL_25Opa(play->state.gfxCtx);
            MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_en_tp.c", 1459);
            gSPDisplayList(POLY_OPA_DISP++, gTailpasaranHeadDL);
            Matrix_Translate(0.0f, 0.0f, 8.0f, MTXMODE_APPLY);
        } else { // ENTP_TYPE_BODYELEM, ENTP_TYPE_BODYELEMREMNANT, ENTP_TYPE_BODYELEM_DYING
            Gfx_SetupDL_25Xlu(play->state.gfxCtx);
            Matrix_ReplaceRotation(&play->billboardMtxF);
            gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x00, this->redShineAmount, 0, 255, this->bodyElemAlpha);
            gDPPipeSync(POLY_XLU_DISP++);
            // Note: gTailpasaranBodyElemDL overrides the combiner before drawing
            gDPSetCombineLERP(POLY_XLU_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, ENVIRONMENT,
                              TEXEL0, ENVIRONMENT, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, ENVIRONMENT,
                              TEXEL0, ENVIRONMENT);
            gDPPipeSync(POLY_XLU_DISP++);
            gSPSegment(POLY_XLU_DISP++, 8, SEGMENTED_TO_VIRTUAL(gTailpasaranBodyElemTex));
            gDPPipeSync(POLY_XLU_DISP++);
            MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_en_tp.c", 1480);
            gSPDisplayList(POLY_XLU_DISP++, gTailpasaranBodyElemDL);
        }
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_tp.c", 1495);
    if ((this->actor.params <= 0) /* ENTP_TYPE_HEAD, ENTP_TYPE_BODYELEM */ ||
        (this->actor.params == ENTP_TYPE_BODYELEM_DYING)) {
        Collider_UpdateSpheres(0, &this->collider);
    }
}
