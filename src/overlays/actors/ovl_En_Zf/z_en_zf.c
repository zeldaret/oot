/*
 * File: z_en_zf.c
 * Overlay: ovl_En_Zf
 * Description: Lizalfos and Dinolfos
 */

#include "z_en_zf.h"

#include "libc64/qrand.h"
#include "array_count.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "rand.h"
#include "regs.h"
#include "sequence.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_en_item00.h"
#include "z_lib.h"
#include "audio.h"
#include "effect.h"
#include "play_state.h"
#include "player.h"

#include "assets/objects/object_zf/object_zf.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE | ACTOR_FLAG_UPDATE_CULLING_DISABLED)

void EnZf_Init(Actor* thisx, PlayState* play);
void EnZf_Destroy(Actor* thisx, PlayState* play);
void EnZf_Update(Actor* thisx, PlayState* play);
void EnZf_Draw(Actor* thisx, PlayState* play);

s16 EnZf_FindPlatform(Vec3f* pos, s16 preferred);
void EnZf_SetupWaitAppear(EnZf* this);
void EnZf_WaitAppear(EnZf* this, PlayState* play);
void EnZf_SetupIdle(EnZf* this);
void EnZf_Idle(EnZf* this, PlayState* play);
void EnZf_SetupMainWalk(EnZf* this, PlayState* play);
void EnZf_MainWalk(EnZf* this, PlayState* play);
void EnZf_SetupJumpForwards(EnZf* this);
void EnZf_JumpForwards(EnZf* this, PlayState* play);
void EnZf_SetupTurnTowardsPlayer(EnZf* this);
void EnZf_TurnTowardsPlayer(EnZf* this, PlayState* play);
void EnZf_SetupSidestepIfFloor(EnZf* this, PlayState* play);
void EnZf_Sidestep(EnZf* this, PlayState* play);
void EnZf_SetupAttack(EnZf* this);
void EnZf_Attack(EnZf* this, PlayState* play);
void EnZf_AttackBounced(EnZf* this, PlayState* play);
void EnZf_SetupJumpBackwards(EnZf* this);
void EnZf_JumpBackwards(EnZf* this, PlayState* play);
void EnZf_Stunned(EnZf* this, PlayState* play);
void EnZf_Paired_SetupJumpAwayStartTurnAround(EnZf* this, PlayState* play);
void EnZf_Paired_JumpAwayStartTurnAround(EnZf* this, PlayState* play);
void EnZf_Paired_IdleHop(EnZf* this, PlayState* play);
void EnZf_Paired_SetupJumpAway(EnZf* this, PlayState* play);
void EnZf_Paired_JumpAway(EnZf* this, PlayState* play);
void EnZf_Paired_EngageCombat(EnZf* this, PlayState* play);
void EnZf_Damaged(EnZf* this, PlayState* play);
void EnZf_SetupJumpAttack(EnZf* this);
void EnZf_JumpAttack(EnZf* this, PlayState* play);
void EnZf_SetupCirclePlayerIfFloor(EnZf* this, PlayState* play);
void EnZf_CirclePlayer(EnZf* this, PlayState* play);
void EnZf_SetupDie(EnZf* this);
void EnZf_Die(EnZf* this, PlayState* play);
void EnZf_SetupCirclePlayer(EnZf* this, f32 speed);
s32 EnZf_ReactToProjectile(PlayState* play, EnZf* this);
s32 EnZf_ReactToProjectileSetDodgeSpeed(PlayState* play, EnZf* this);

typedef enum EnZfAction {
    ENZF_ACTION_WAIT_APPEAR,
    ENZF_ACTION_IDLE = 3,
    ENZF_ACTION_MAIN_WALK = 5,
    ENZF_ACTION_TURN_TOWARDS_PLAYER,
    ENZF_ACTION_SIDESTEP,
    ENZF_ACTION_ATTACK_BOUNCED,
    ENZF_ACTION_ATTACK,
    ENZF_ACTION_JUMP_BACKWARDS = 11,
    ENZF_ACTION_CIRCLE_PLAYER,
    ENZF_ACTION_JUMP_FORWARDS,
    ENZF_ACTION_STUNNED,
    ENZF_ACTION_DIE,
    ENZF_ACTION_DAMAGED,
    ENZF_ACTION_PAIRED_JUMP_AWAY_START_TURN_AROUND = 18,
    ENZF_ACTION_PAIRED_JUMP_AWAY,
    ENZF_ACTION_PAIRED_IDLE_HOP,
    ENZF_ACTION_PAIRED_ENGAGE_COMBAT,
    ENZF_ACTION_JUMP_ATTACK
} EnZfAction;

/**
 * Positions of the platforms in Dodongo's Cavern in the lizalfos fights room (room 3).
 */
static Vec3f sDCPlatformPositions[] = {
    // Lower floor
    { 3560.0f, 100.0f, -1517.0f },
    { 3170.0f, 100.0f, -1767.0f },
    { 3165.0f, 100.0f, -2217.0f },
    { 3563.0f, 100.0f, -2437.0f },
    { 3946.0f, 100.0f, -2217.0f },
    { 3942.0f, 100.0f, -1765.0f },
    { 2861.0f, 100.0f, -2394.0f },
    { 2776.0f, 100.0f, -1987.0f },

    // Higher floor
    { 4527.0f, 531.0f, -1146.0f },
    { 4442.0f, 531.0f, -1405.0f },
    { 4170.0f, 531.0f, -1395.0f },
    { 4030.0f, 531.0f, -1162.0f },
    { 4010.0f, 531.0f, -883.0f },
    { 4270.0f, 531.0f, -810.0f },
    { 4520.0f, 531.0f, -880.0f },
    // Higher floor extras
    // center platform
    { 4260.0f, 531.0f, -1035.0f },
    // room sides
    { 4757.0f, 531.0f, -1146.0f },
    { 3850.0f, 531.0f, -883.0f },
    { 4380.0f, 531.0f, -690.0f },
    { 4197.0f, 531.0f, -646.0f },
    // "path" to atop of the column
    { 4070.0f, 531.0f, -1575.0f },
    { 3930.0f, 531.0f, -1705.0f },
    { 3780.0f, 531.0f, -1835.0f },
    { 3560.0f, 531.0f, -1985.0f },
};
/**
 * Incremented when a pair is spawned and the active / foreground / fighting one should retreat.
 */
static s16 sPairedActiveFleeFlag = 0;
/**
 * When a pair is spawned, this tracks the type of the inactive / background / not fighting one
 * (ENZF_TYPE_LIZALFOS_PAIRED_MINIBOSS_A or ENZF_TYPE_LIZALFOS_PAIRED_MINIBOSS_B).
 * When no pair, or once one of the pair is defeated, this is ENZF_TYPE_LIZALFOS_SINGLE.
 */
static s16 sPairedInactiveType = ENZF_TYPE_LIZALFOS_PAIRED_MINIBOSS_B;

ActorProfile En_Zf_Profile = {
    /**/ ACTOR_EN_ZF,
    /**/ ACTORCAT_ENEMY,
    /**/ FLAGS,
    /**/ OBJECT_ZF,
    /**/ sizeof(EnZf),
    /**/ EnZf_Init,
    /**/ EnZf_Destroy,
    /**/ EnZf_Update,
    /**/ EnZf_Draw,
};

static ColliderCylinderInit sBodyCylinderInit = {
    {
        COL_MATERIAL_HIT0,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_PLAYER,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK1,
        { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
        { 0xFFCFFFFF, HIT_BACKLASH_NONE, 0x00 },
        ATELEM_NONE,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 20, 70, 0, { 0, 0, 0 } },
};

static ColliderQuadInit sSwordColliderQuadInit = {
    {
        COL_MATERIAL_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_HARD | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_QUAD,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0xFFCFFFFF, HIT_SPECIAL_EFFECT_NONE, 0x08 },
        { 0x00000000, HIT_BACKLASH_NONE, 0x00 },
        ATELEM_ON | ATELEM_SFX_NORMAL | ATELEM_UNK7,
        ACELEM_ON,
        OCELEM_NONE,
    },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

typedef enum EnZfDamageReaction {
    ENZF_DMG_REACT_NONE,
    ENZF_DMG_REACT_STUN,
    ENZF_DMG_REACT_6 = 6,
    ENZF_DMG_REACT_FLEE = 13,
    ENZF_DMG_REACT_ICE = 15
} EnZfDamageReaction;

static DamageTable sDamageTable = {
    /* Deku nut      */ DMG_ENTRY(0, ENZF_DMG_REACT_STUN),
    /* Deku stick    */ DMG_ENTRY(2, ENZF_DMG_REACT_NONE),
    /* Slingshot     */ DMG_ENTRY(1, ENZF_DMG_REACT_FLEE),
    /* Explosive     */ DMG_ENTRY(2, ENZF_DMG_REACT_NONE),
    /* Boomerang     */ DMG_ENTRY(0, ENZF_DMG_REACT_STUN),
    /* Normal arrow  */ DMG_ENTRY(2, ENZF_DMG_REACT_NONE),
    /* Hammer swing  */ DMG_ENTRY(2, ENZF_DMG_REACT_NONE),
    /* Hookshot      */ DMG_ENTRY(0, ENZF_DMG_REACT_STUN),
    /* Kokiri sword  */ DMG_ENTRY(1, ENZF_DMG_REACT_NONE),
    /* Master sword  */ DMG_ENTRY(2, ENZF_DMG_REACT_NONE),
    /* Giant's Knife */ DMG_ENTRY(4, ENZF_DMG_REACT_NONE),
    /* Fire arrow    */ DMG_ENTRY(2, ENZF_DMG_REACT_FLEE),
    /* Ice arrow     */ DMG_ENTRY(4, ENZF_DMG_REACT_ICE),
    /* Light arrow   */ DMG_ENTRY(2, ENZF_DMG_REACT_FLEE),
    /* Unk arrow 1   */ DMG_ENTRY(2, ENZF_DMG_REACT_FLEE),
    /* Unk arrow 2   */ DMG_ENTRY(2, ENZF_DMG_REACT_FLEE),
    /* Unk arrow 3   */ DMG_ENTRY(2, ENZF_DMG_REACT_FLEE),
    /* Fire magic    */ DMG_ENTRY(0, ENZF_DMG_REACT_6),
    /* Ice magic     */ DMG_ENTRY(3, ENZF_DMG_REACT_ICE),
    /* Light magic   */ DMG_ENTRY(0, ENZF_DMG_REACT_6),
    /* Shield        */ DMG_ENTRY(0, ENZF_DMG_REACT_NONE),
    /* Mirror Ray    */ DMG_ENTRY(0, ENZF_DMG_REACT_NONE),
    /* Kokiri spin   */ DMG_ENTRY(1, ENZF_DMG_REACT_NONE),
    /* Giant spin    */ DMG_ENTRY(4, ENZF_DMG_REACT_NONE),
    /* Master spin   */ DMG_ENTRY(2, ENZF_DMG_REACT_NONE),
    /* Kokiri jump   */ DMG_ENTRY(2, ENZF_DMG_REACT_NONE),
    /* Giant jump    */ DMG_ENTRY(8, ENZF_DMG_REACT_NONE),
    /* Master jump   */ DMG_ENTRY(4, ENZF_DMG_REACT_NONE),
    /* Unknown 1     */ DMG_ENTRY(0, ENZF_DMG_REACT_NONE),
    /* Unblockable   */ DMG_ENTRY(0, ENZF_DMG_REACT_NONE),
    /* Hammer jump   */ DMG_ENTRY(4, ENZF_DMG_REACT_NONE),
    /* Unknown 2     */ DMG_ENTRY(0, ENZF_DMG_REACT_NONE),
};

static InitChainEntry sInitChain[3] = {
    ICHAIN_F32(lockOnArrowOffset, 2000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 15, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -3500, ICHAIN_STOP),
};

static AnimationHeader* D_80B4A280[] = {
    &gZfRunAwayJumpAnim,
    &gZfRunAwayAirborneAnim,
    &gZfRunAwayLandAnim,
};

static Vec3f D_80B4A28C = { 1100.0f, -700.0f, 0.0f };
static Vec3f D_80B4A298 = { 300.0f, 0.0f, 0.0f };
static Vec3f D_80B4A2A4 = { 300.0f, -1700.0f, 0.0f };
static Vec3f D_80B4A2B0 = { -600.0f, 300.0f, 0.0f };
static Vec3f D_80B4A2BC = { 0.0f, 1500.0f, 0.0f };
static Vec3f D_80B4A2C8 = { -600.0f, -3000.0f, 1000.0f };
static Vec3f D_80B4A2D4 = { -600.0f, -3000.0f, -1000.0f };
static Vec3f D_80B4A2E0 = { 1500.0f, -3000.0f, 0.0f };
static Vec3f D_80B4A2EC = { 0.0f, 0.0f, 0.0f };
static Gfx D_80B4A2F8[] = {
    gsSPTexture(0xA00, 0xA00, 0, G_TX_RENDERTILE, G_ON),
    gsSPEndDisplayList(),
};
static s32 D_80B4AB30;

void EnZf_SetupAction(EnZf* this, EnZfActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

/**
 * Checks if the actor will not be standing on the ground after moving by `distance`.
 * If `distance` is 0, it is determined from the actor's speed direction and type.
 *
 * Returns true if the actor will not be standing on ground.
 *
 * Note: uses world.rot.y
 */
s32 EnZf_TestNoFloorAhead(EnZf* this, PlayState* play, f32 distance) {
    s16 ret;
    s16 prevBgCheckFlags;
    f32 dx;
    f32 dz;
    Vec3f prevPos;

    if (distance == 0.0f) {
        if (this->actor.speed >= 0.0f) {
            distance = 1.0f;
        } else {
            distance = -1.0f;
        }
        if (ENZF_IS_TYPE_PAIRED(this->actor.params)) {
            distance = distance * 45.0f;
        } else {
            distance = distance * 30.0f;
        }
    }

    prevPos = this->actor.world.pos;
    prevBgCheckFlags = this->actor.bgCheckFlags;

    dx = Math_SinS(this->actor.world.rot.y) * distance;
    dz = Math_CosS(this->actor.world.rot.y) * distance;
    this->actor.world.pos.x += dx;
    this->actor.world.pos.z += dz;

    Actor_UpdateBgCheckInfo(play, &this->actor, 0.0f, 0.0f, 0.0f,
                            UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 | UPDBGCHECKINFO_FLAG_4);

    this->actor.world.pos = prevPos;

    ret = !(this->actor.bgCheckFlags & BGCHECKFLAG_GROUND);
    this->actor.bgCheckFlags = prevBgCheckFlags;

    return ret;
}

/**
 * Checks if the actor will not be standing on the ground after moving by its speed or `distance`.
 *
 * Returns true if the actor will not be standing on ground.
 *
 * Note: uses shape.rot.y for the second `distance` check.
 */
s16 EnZf_TestNoFloorAheadShape(EnZf* this, PlayState* play, f32 distance) {
    s16 ret;
    s16 prevBgCheckFlags;
    f32 dx;
    f32 dz;
    Vec3f prevPos;

    if ((this->actor.speed != 0.0f) && EnZf_TestNoFloorAhead(this, play, this->actor.speed)) {
        return true;
    }

    prevPos = this->actor.world.pos;
    prevBgCheckFlags = this->actor.bgCheckFlags;

    dx = Math_SinS(this->actor.shape.rot.y) * distance;
    dz = Math_CosS(this->actor.shape.rot.y) * distance;
    this->actor.world.pos.x += dx;
    this->actor.world.pos.z += dz;

    Actor_UpdateBgCheckInfo(play, &this->actor, 0.0f, 0.0f, 0.0f,
                            UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 | UPDBGCHECKINFO_FLAG_4);

    this->actor.world.pos = prevPos;

    ret = !(this->actor.bgCheckFlags & BGCHECKFLAG_GROUND);
    this->actor.bgCheckFlags = prevBgCheckFlags;

    return ret;
}

void EnZf_Init(Actor* thisx, PlayState* play) {
    f32 yDiff;
    s32 pad;
    Player* player = GET_PLAYER(play);
    EffectBlureInit1 swordBlure;
    EnZf* this = (EnZf*)thisx;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    this->actor.attentionRangeType = ATTENTION_RANGE_3;
    this->switchFlag = PARAMS_GET_S(thisx->params, 8, 8);
    this->actor.params = PARAMS_GET_U(this->actor.params, 0, 8);
    // Sign-extend the params low byte
    if (this->actor.params & 0x80) {
        this->actor.params |= 0xFF00;
    }
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFeet, 90.0f);
    this->unk_3E0 = 0;
    this->actor.colChkInfo.mass = MASS_HEAVY;
    this->actor.colChkInfo.damageTable = &sDamageTable;
    swordBlure.p1StartColor[0] = swordBlure.p1StartColor[1] = swordBlure.p1StartColor[2] = swordBlure.p1StartColor[3] =
        swordBlure.p2StartColor[0] = swordBlure.p2StartColor[1] = swordBlure.p2StartColor[2] =
            swordBlure.p1EndColor[0] = swordBlure.p1EndColor[1] = swordBlure.p1EndColor[2] = swordBlure.p2EndColor[0] =
                swordBlure.p2EndColor[1] = swordBlure.p2EndColor[2] = 255;
    swordBlure.p2StartColor[3] = 64;
    swordBlure.p1EndColor[3] = 0;
    swordBlure.p2EndColor[3] = 0;
    swordBlure.elemDuration = 8;
    swordBlure.unkFlag = 0;
    swordBlure.calcMode = 2;
    Effect_Add(play, &this->swordBlureEffectIndex, EFFECT_BLURE1, 0, 0, &swordBlure);
    Actor_UpdateBgCheckInfo(play, &this->actor, 75.0f, 45.0f, 45.0f,
                            UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 |
                                UPDBGCHECKINFO_FLAG_4);
    this->alpha = 255;
    this->actor.colChkInfo.cylRadius = 40;
    this->actor.colChkInfo.cylHeight = 100;
    Collider_InitCylinder(play, &this->bodyCollider);
    Collider_SetCylinder(play, &this->bodyCollider, &this->actor, &sBodyCylinderInit);
    Collider_InitQuad(play, &this->swordCollider);
    Collider_SetQuad(play, &this->swordCollider, &this->actor, &sSwordColliderQuadInit);
    if (this->actor.params == ENZF_TYPE_DINOLFOS) {
        this->actor.colChkInfo.health = 12;
        this->actor.naviEnemyId = NAVI_ENEMY_DINOLFOS;
        SkelAnime_Init(play, &this->skelAnime, &gDinolfosSkel, &gZfIdleAnim, this->jointTable, this->morphTable,
                       ZF_LIMB_MAX);
    } else {
        this->actor.colChkInfo.health = 6;
        this->actor.naviEnemyId = NAVI_ENEMY_LIZALFOS;
        SkelAnime_Init(play, &this->skelAnime, &gLizalfosSkel, &gZfIdleAnim, this->jointTable, this->morphTable,
                       ZF_LIMB_MAX);
    }
    if (!ENZF_IS_TYPE_PAIRED(this->actor.params)) {
        this->homePlatform = this->curPlatform = -1;
        sPairedInactiveType = ENZF_TYPE_LIZALFOS_SINGLE;
        this->actionState = 1;
        if (this->actor.params == ENZF_TYPE_LIZALFOS_SINGLE) {
            EnZf_SetupWaitAppear(this);
        } else { // ENZF_TYPE_DINOLFOS
            EnZf_SetupIdle(this);
        }
    } else {
        yDiff = player->actor.world.pos.y - this->actor.world.pos.y;
        if ((ABS(yDiff) <= 100.0f) && !Flags_GetSwitch(play, this->switchFlag)) {
            this->homePlatform = this->curPlatform = EnZf_FindPlatform(&this->actor.world.pos, 0);
            EnZf_SetupWaitAppear(this);
            sPairedInactiveType = ENZF_TYPE_LIZALFOS_PAIRED_MINIBOSS_B;
        } else {
            Actor_Kill(&this->actor);
        }
    }
}

void EnZf_Destroy(Actor* thisx, PlayState* play) {
    EnZf* this = (EnZf*)thisx;

    if (ENZF_IS_TYPE_PAIRED(this->actor.params) &&
        (Actor_FindNearby(play, &this->actor, ACTOR_EN_ZF, ACTORCAT_ENEMY, 10000.0f) == NULL)) {
        func_800F5B58();
    }
    Effect_Delete(play, this->swordBlureEffectIndex);
    Collider_DestroyCylinder(play, &this->bodyCollider);
    Collider_DestroyQuad(play, &this->swordCollider);
}

s16 EnZf_FindPlatform(Vec3f* pos, s16 preferred) {
    Vec3f* platformPos;
    f32 range;
    s16 i;

    range = 210.0f;
    if (pos->y >= 420.0f) {
        range = 110.0f;
    }
    if (preferred != -1) {
        platformPos = &sDCPlatformPositions[preferred];
        if (((platformPos->y - 150.0f) <= pos->y) && (pos->y <= (platformPos->y + 150.0f)) &&
            ((platformPos->x - range) <= pos->x) && (pos->x <= (platformPos->x + range)) &&
            ((platformPos->z - range) <= pos->z) && (pos->z <= (platformPos->z + range))) {
            return preferred;
        }
    }
    for (i = ARRAY_COUNT(sDCPlatformPositions) - 1; i >= 0; i--) {
        platformPos = &sDCPlatformPositions[i];
        if (((platformPos->y - 150.0f) <= pos->y) && (pos->y <= (platformPos->y + 150.0f)) &&
            ((platformPos->x - range) <= pos->x) && (pos->x <= (platformPos->x + range)) &&
            ((platformPos->z - range) <= pos->z) && (pos->z <= (platformPos->z + range))) {
            break;
        }
    }
    return i;
}

s16 EnZf_FindPlatformWithoutPlayer(Vec3f* thisPos, s16 curPlatform, s16 fallbackPlatform, PlayState* play) {
    Vec3f* closestPlatformPos;
    f32 platformDist;
    f32 closestPlatformDist;
    f32 secondClosestPlatformDist;
    f32 maxPlatformDist;
    f32 minPlatformDistFromPlayer;
    s16 yawTowardsClosestPlatform;
    s16 playerPlatform;
    s16 yawDiff;
    s16 i;
    s16 secondClosestPlatform;
    s16 closestPlatform;
    s32 iMin;
    Player* player = GET_PLAYER(play);

    maxPlatformDist = 585.0f;
    minPlatformDistFromPlayer = 400.0f;
    closestPlatformDist = 99998.0f;
    i = 5;
    iMin = 0;
    secondClosestPlatformDist = 99999.0f;
    secondClosestPlatform = closestPlatform = -1;
    playerPlatform = EnZf_FindPlatform(&player->actor.world.pos, curPlatform);
    if (thisPos->y > 420.0f) {
        minPlatformDistFromPlayer = 50.0f;
        iMin = 8;
        if (curPlatform >= 15) {
            maxPlatformDist = 400.0f;
            i = 23;
        } else {
            maxPlatformDist = 380.0f;
            i = 14;
        }
    }
    for (; i >= iMin; i--) {
#if !DEBUG_FEATURES
        if (0) {}
#endif
        if (i == curPlatform) {
            continue;
        }
        if (i == playerPlatform) {
            continue;
        }
        if ((playerPlatform == -1) &&
            (Math_Vec3f_DistXYZ(&player->actor.world.pos, &sDCPlatformPositions[i]) < minPlatformDistFromPlayer)) {
            continue;
        }
        platformDist = Math_Vec3f_DistXYZ(thisPos, &sDCPlatformPositions[i]);
        if (platformDist > maxPlatformDist) {
            continue;
        }
        if (platformDist < closestPlatformDist) {
            secondClosestPlatformDist = closestPlatformDist;
            secondClosestPlatform = closestPlatform;
            closestPlatformDist = platformDist;
            closestPlatform = i;
        } else if (platformDist < secondClosestPlatformDist) {
            secondClosestPlatformDist = platformDist;
            secondClosestPlatform = i;
        }
    }

    closestPlatformPos = &sDCPlatformPositions[closestPlatform];

    //! @bug `secondClosestPlatform` can be -1 in certain conditions and cause an out of bounds access.
    //! Under normal conditions, this doesn't cause problems because the data before `D_80B4A090`
    //! is section padding between .text and .data, so 0 gets read as a float.
    // These two function calls do nothing. Their return values aren't used and they have no side effects.
#ifndef AVOID_UB
    Math_Vec3f_DistXYZ(&player->actor.world.pos, closestPlatformPos);
    Math_Vec3f_DistXYZ(&player->actor.world.pos, &sDCPlatformPositions[secondClosestPlatform]);
#endif

    //! @bug The check should be >= 0
    if (secondClosestPlatform > 0) {
        yawTowardsClosestPlatform = Math_Vec3f_Yaw(thisPos, closestPlatformPos);
        yawDiff = yawTowardsClosestPlatform - Math_Vec3f_Yaw(thisPos, &player->actor.world.pos);
        if (ABS(yawDiff) < 0x36B0) {
            closestPlatform = secondClosestPlatform;
        }
    }
    if (closestPlatform < 0) {
        closestPlatform = fallbackPlatform;
    }
    return closestPlatform;
}

s32 EnZf_FindPlatformCloseToPlayer(Vec3f* thisPos, s16 curPlatform, s16 fallbackPlatform, PlayState* play) {
    f32 platformDistToPlayer;
    f32 closestPlatformToPlayerDist;
    f32 secondClosestPlatformToPlayerDist;
    f32 maxPlatformDist;
    s16 i;
    s16 closestPlatformToPlayer;
    s16 secondClosestPlatformToPlayer;
    s16 playerPlatform;
    s32 iMin;
    Player* player = GET_PLAYER(play);

    i = 7;
    iMin = 0;
    playerPlatform = EnZf_FindPlatform(&player->actor.world.pos, -1);
    maxPlatformDist = 500.0f;
    closestPlatformToPlayerDist = 99998.0f;
    secondClosestPlatformToPlayerDist = 99999.0f;
    closestPlatformToPlayer = curPlatform;
    secondClosestPlatformToPlayer = fallbackPlatform;
    if (thisPos->y > 200.0f) {
        maxPlatformDist = 290.0f;
        i = 23;
        iMin = 8;
    }
    for (; i >= iMin; i--) {
        if (Math_Vec3f_DistXYZ(thisPos, &sDCPlatformPositions[i]) > maxPlatformDist) {
            continue;
        }
        if (i != playerPlatform) {
            platformDistToPlayer = Math_Vec3f_DistXYZ(&player->actor.world.pos, &sDCPlatformPositions[i]);
            if (platformDistToPlayer < closestPlatformToPlayerDist) {
                secondClosestPlatformToPlayerDist = closestPlatformToPlayerDist;
                secondClosestPlatformToPlayer = closestPlatformToPlayer;
                closestPlatformToPlayerDist = platformDistToPlayer;
                closestPlatformToPlayer = i;
            } else if (platformDistToPlayer < secondClosestPlatformToPlayerDist) {
                secondClosestPlatformToPlayerDist = platformDistToPlayer;
                secondClosestPlatformToPlayer = i;
            }
        } else {
            closestPlatformToPlayer = playerPlatform;
            // TODO: This break is weird, it makes the function result heavily depend on the order of
            // the platform positions array
            break;
        }
    }

    if (secondClosestPlatformToPlayer != playerPlatform) {
        playerPlatform = closestPlatformToPlayer;
    } else {
        playerPlatform = secondClosestPlatformToPlayer;
    }
    return playerPlatform;
}

s32 EnZf_CanAttack(PlayState* play, EnZf* this) {
    s32 pad;
    Player* player = GET_PLAYER(play);
    Actor* playerFocusActor;

    if (ENZF_IS_TYPE_PAIRED(this->actor.params)) {
        if (player->stateFlags1 & (PLAYER_STATE1_13 | PLAYER_STATE1_14)) {
            return false;
        } else {
            return true;
        }
    }
    if (!Actor_OtherIsLockedOn(play, &this->actor)) {
        return true;
    }
    if (this->actor.params == ENZF_TYPE_DINOLFOS) {
        playerFocusActor = player->focusActor;
        if (playerFocusActor == NULL) {
            return false;
        }
        if (playerFocusActor->category != ACTORCAT_ENEMY) {
            return true;
        }
        if (playerFocusActor->id != ACTOR_EN_ZF) {
            return false;
        }
        if (playerFocusActor->colorFilterTimer != 0) {
            return true;
        }
    }
    return false;
}

void EnZf_PickAction(EnZf* this, PlayState* play) {
    s16 absRelYawTowardsPlayer;

    absRelYawTowardsPlayer = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    absRelYawTowardsPlayer = ABS(absRelYawTowardsPlayer);
    if (absRelYawTowardsPlayer >= 0x1B58) {
        EnZf_SetupCirclePlayerIfFloor(this, play);
    } else if ((this->actor.xzDistToPlayer <= 100.0f) && ((play->gameplayFrames % 8) != 0) &&
               EnZf_CanAttack(play, this)) {
        EnZf_SetupAttack(this);
    } else {
        EnZf_SetupIdle(this);
    }
}

/**
 * @return true if an action was picked
 */
s32 EnZf_DinolfosPickAction(PlayState* play, EnZf* this) {
    s16 absRelWallYaw;
    Actor* explosive;

    absRelWallYaw = this->actor.wallYaw - this->actor.shape.rot.y;
    absRelWallYaw = ABS(absRelWallYaw);
    if (func_800354B4(play, &this->actor, 100.0f, 0x5DC0, 0x2AA8, this->actor.shape.rot.y) != 0) {
        this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
        if ((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) && (ABS(absRelWallYaw) < 0x2EE0) &&
            (this->actor.xzDistToPlayer < 80.0f)) {
            EnZf_SetupJumpAttack(this);
        } else if ((this->actor.xzDistToPlayer < 90.0f) && ((play->gameplayFrames % 2) != 0)) {
            EnZf_SetupJumpAttack(this);
        } else {
            EnZf_SetupJumpBackwards(this);
        }
        return true;
    }
    explosive = Actor_FindNearby(play, &this->actor, -1, ACTORCAT_EXPLOSIVE, 80.0f);
    if (explosive != NULL) {
        this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
        if (((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) && (absRelWallYaw < 0x2EE0)) ||
            (explosive->id == ACTOR_EN_BOM_CHU)) {
            if ((explosive->id == ACTOR_EN_BOM_CHU) && (Actor_WorldDistXYZToActor(&this->actor, explosive) < 80.0f) &&
                ((s16)(this->actor.shape.rot.y - explosive->world.rot.y + 0x8000) < 0x3E80)) {
                EnZf_SetupJumpAttack(this);
            } else {
                EnZf_SetupCirclePlayer(this, 4.0f);
            }
        } else {
            EnZf_SetupJumpBackwards(this);
        }
        return true;
    }
    return false;
}

void EnZf_SetupWaitAppear(EnZf* this) {
    Animation_Change(&this->skelAnime, &gZfJumpAnim, 0.0f, 9.0f, Animation_GetLastFrame(&gZfJumpAnim), ANIMMODE_LOOP,
                     0.0f);
    this->actor.world.pos.y = this->actor.floorHeight + 300.0f;
    this->alpha = this->actor.shape.shadowAlpha = 0;
    this->timer = 10;
    this->actionState = 1;
    this->action = ENZF_ACTION_WAIT_APPEAR;
    this->actor.bgCheckFlags &= ~BGCHECKFLAG_GROUND_TOUCH;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    EnZf_SetupAction(this, EnZf_WaitAppear);
}

void EnZf_WaitAppear(EnZf* this, PlayState* play) {
    if (this->timer == 1) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
        this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
        if (this->actor.params == ENZF_TYPE_LIZALFOS_PAIRED_MINIBOSS_A) {
            func_800F5ACC(NA_BGM_MINI_BOSS);
        }
    }
    if (this->timer != 0) {
        if (this->actor.params != ENZF_TYPE_LIZALFOS_SINGLE) {
            this->timer--;
        } else if (this->actor.xzDistToPlayer <= 160.0f) {
            this->timer = 0;
            this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
        }
        this->actor.world.pos.y = this->actor.floorHeight + 300.0f;
    } else {
        if (this->alpha < 255) {
            this->alpha += 51;
        }
    }
    if ((this->actor.bgCheckFlags & (BGCHECKFLAG_GROUND | BGCHECKFLAG_GROUND_TOUCH)) && (this->actionState != 0)) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_ONGND);
        Animation_Change(&this->skelAnime, &gZfLandOnFeetAnim, 1.0f, 0.0f, 17.0f, ANIMMODE_ONCE, 0.0f);
        this->actionState = 0;
        this->actor.bgCheckFlags &= ~BGCHECKFLAG_GROUND_TOUCH;
        this->actor.world.pos.y = this->actor.floorHeight;
        this->actor.velocity.y = 0.0f;
        Actor_SpawnFloorDustRing(play, &this->actor, &this->leftFootPos, 3.0f, 2, 2.0f, 0, 0, false);
        Actor_SpawnFloorDustRing(play, &this->actor, &this->rightFootPos, 3.0f, 2, 2.0f, 0, 0, false);
    }
    if (SkelAnime_Update(&this->skelAnime)) {
        this->alpha = 255;
        if (this->actor.params >= ENZF_TYPE_LIZALFOS_PAIRED_MINIBOSS_B) {
            EnZf_Paired_SetupJumpAwayStartTurnAround(this, play);
        } else {
            EnZf_SetupIdle(this);
        }
    }
    this->actor.shape.shadowAlpha = this->alpha;
}

void EnZf_SetupIdle(EnZf* this) {
    Animation_Change(&this->skelAnime, &gZfIdleAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gZfIdleAnim),
                     ANIMMODE_LOOP_INTERP, -4.0f);
    this->action = ENZF_ACTION_IDLE;
    this->timer = (Rand_ZeroOne() * 10.0f) + 5.0f;
    this->actor.speed = 0.0f;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    EnZf_SetupAction(this, EnZf_Idle);
}

void EnZf_Idle(EnZf* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 pad;
    s16 absYawTowardsPlayerRelToHead;
    s16 absYawDiffWithPlayer;

    absYawTowardsPlayerRelToHead = this->actor.yawTowardsPlayer - this->headRot - this->actor.shape.rot.y;
    absYawTowardsPlayerRelToHead = ABS(absYawTowardsPlayerRelToHead);
    SkelAnime_Update(&this->skelAnime);
    if (!EnZf_ReactToProjectile(play, this)) {
        if (this->actor.params == ENZF_TYPE_DINOLFOS) {
            if (this->timer2 != 0) {
                this->timer2--;
                if (absYawTowardsPlayerRelToHead < 0x1FFE) {
                    this->timer2 = 0;
                } else {
                    return;
                }
            } else if (EnZf_DinolfosPickAction(play, this)) {
                return;
            }
        }
        absYawDiffWithPlayer = player->actor.shape.rot.y - this->actor.shape.rot.y;
        absYawDiffWithPlayer = ABS(absYawDiffWithPlayer);
        if ((this->actor.xzDistToPlayer < 100.0f) && (player->meleeWeaponState != 0) &&
            (absYawDiffWithPlayer >= 0x1F40)) {
            this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
            if (absYawDiffWithPlayer) {}
            EnZf_SetupCirclePlayerIfFloor(this, play);
        } else if (this->timer != 0) {
            this->timer--;
        } else {
            if (Actor_IsFacingPlayer(&this->actor, 0x1555)) {
                if ((this->actor.xzDistToPlayer < 200.0f) && (this->actor.xzDistToPlayer > 100.0f) &&
                    (Rand_ZeroOne() < 0.3f)) {
                    if (this->actor.params == ENZF_TYPE_DINOLFOS) {
                        this->actor.world.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
                        EnZf_SetupJumpForwards(this);
                    } else {
                        EnZf_SetupCirclePlayerIfFloor(this, play);
                    }
                } else if (Rand_ZeroOne() > 0.3f) {
                    EnZf_SetupMainWalk(this, play);
                } else {
                    EnZf_SetupCirclePlayerIfFloor(this, play);
                }
            } else {
                EnZf_SetupTurnTowardsPlayer(this);
            }
            if ((play->gameplayFrames & 0x5F) == 0) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
            }
        }
    }
}

/**
 * Walk and decide what action to setup next.
 */
void EnZf_SetupMainWalk(EnZf* this, PlayState* play) {
    Animation_MorphToLoop(&this->skelAnime, &gZfWalkAnim, -4.0f);
    this->action = ENZF_ACTION_MAIN_WALK;
    if (ENZF_IS_TYPE_PAIRED(this->actor.params)) {
        this->curPlatform = EnZf_FindPlatform(&this->actor.world.pos, this->curPlatform);
        this->targetPlatform =
            EnZf_FindPlatformCloseToPlayer(&this->actor.world.pos, this->curPlatform, this->homePlatform, play);
        this->actionState = 0;
    }
    this->actor.speed = 0.0f;
    EnZf_SetupAction(this, EnZf_MainWalk);
}

void EnZf_MainWalk(EnZf* this, PlayState* play) {
    s32 prevFrame;
    s32 beforeCurFrame;
    s32 pad1;
    s16 absYawDiff;
    s16 playerPlatform = -1;
    f32 maxTargetPlatformDistForJump = 350.0f;
    f32 extraDistFromPlayer = 0.0f;
    Player* player = GET_PLAYER(play);
    f32 absPlaySpeed;

    if (ENZF_IS_TYPE_PAIRED(this->actor.params)) {
        playerPlatform = EnZf_FindPlatform(&player->actor.world.pos, -1);
        this->curPlatform = EnZf_FindPlatform(&this->actor.world.pos, playerPlatform);
        if (this->actor.world.pos.y >= 420.0f) {
            maxTargetPlatformDistForJump = 270.0f;
        }
    }
    if (!EnZf_ReactToProjectile(play, this)) {
        if (playerPlatform != this->curPlatform) { // May only pass if type is paired
            this->targetPlatform =
                EnZf_FindPlatformCloseToPlayer(&this->actor.world.pos, this->curPlatform, this->homePlatform, play);
            if ((playerPlatform < 0) && (this->targetPlatform == this->curPlatform)) {
                playerPlatform = this->curPlatform;
                this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
            } else {
                this->actor.world.rot.y = this->actor.yawTowardsPlayer = this->actor.shape.rot.y =
                    Actor_WorldYawTowardPoint(&this->actor, &sDCPlatformPositions[this->targetPlatform]);
                absYawDiff = this->actor.wallYaw - this->actor.shape.rot.y;
                if (absYawDiff < 0) {
                    absYawDiff *= -1;
                }
                if ((this->noFloorAhead && (this->actor.speed > 0.0f)) ||
                    ((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) && (absYawDiff >= 0x5C19))) {
                    if ((Actor_WorldDistXZToPoint(&this->actor, &sDCPlatformPositions[this->targetPlatform]) <
                         maxTargetPlatformDistForJump) &&
                        !EnZf_TestNoFloorAhead(this, play, 191.9956f)) {
                        EnZf_SetupJumpForwards(this);
                        if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
                            this->actor.velocity.y = 20.0f;
                        }
                        return;
                    } else {
                        this->actor.world.rot.y =
                            Actor_WorldYawTowardPoint(&this->actor, &sDCPlatformPositions[this->curPlatform]);
                    }
                } else {
                    this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
                    Math_SmoothStepToF(&this->actor.speed, 8.0f, 1.0f, 1.5f, 0.0f);
                }
            }
        }
        if (Actor_OtherIsLockedOn(play, &this->actor)) {
            extraDistFromPlayer = 100.0f;
        }
        if (this->actor.xzDistToPlayer <= (70.0f + extraDistFromPlayer)) {
            Math_SmoothStepToF(&this->actor.speed, -8.0f, 1.0f, 0.5f, 0.0f);
        } else {
            Math_SmoothStepToF(&this->actor.speed, 8.0f, 1.0f, 0.5f, 0.0f);
        }
        this->skelAnime.playSpeed = this->actor.speed * 1.2f;
        absYawDiff = player->actor.shape.rot.y - this->actor.shape.rot.y;
        if (absYawDiff < 0) {
            absYawDiff *= -1;
        }
        if ((playerPlatform == this->curPlatform) && (this->actor.xzDistToPlayer < 150.0f) &&
            (player->meleeWeaponState != 0) && (absYawDiff >= 0x1F40)) {
            this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
            if (Rand_ZeroOne() > 0.7f) {
                EnZf_SetupCirclePlayerIfFloor(this, play);
                return;
            }
        }
        prevFrame = (s32)this->skelAnime.curFrame;
        SkelAnime_Update(&this->skelAnime);
        beforeCurFrame = (s32)(this->skelAnime.curFrame - ABS(this->skelAnime.playSpeed));
        absPlaySpeed = ((void)0, ABS(this->skelAnime.playSpeed)); //! FAKE
        if (playerPlatform == this->curPlatform) {
            if (!Actor_IsFacingPlayer(&this->actor, 0x11C7)) {
                if (Rand_ZeroOne() > 0.5f) {
                    EnZf_SetupSidestepIfFloor(this, play);
                } else {
                    EnZf_SetupIdle(this);
                }
            } else if (this->actor.xzDistToPlayer < 100.0f) {
                if ((Rand_ZeroOne() > 0.05f) && EnZf_CanAttack(play, this)) {
                    EnZf_SetupAttack(this);
                } else if (Rand_ZeroOne() > 0.5f) {
                    EnZf_SetupCirclePlayerIfFloor(this, play);
                } else {
                    EnZf_SetupIdle(this);
                }
            } else if (this->noFloorAhead) {
                EnZf_SetupSidestepIfFloor(this, play);
            } else if (Rand_ZeroOne() < 0.1f) {
                EnZf_SetupIdle(this);
            }
        }
        if (this->actor.params == ENZF_TYPE_DINOLFOS) {
            if (!EnZf_DinolfosPickAction(play, this)) {
                if ((this->actor.xzDistToPlayer < 180.0f) && (this->actor.xzDistToPlayer > 160.0f) &&
                    Actor_IsFacingPlayer(&this->actor, 0x71C)) {
                    if (Actor_IsLockedOn(play, &this->actor)) {
                        if (Rand_ZeroOne() < 0.1f) {
                            this->actor.world.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
                            EnZf_SetupJumpForwards(this);
                            return;
                        }
                    } else {
                        EnZf_SetupCirclePlayerIfFloor(this, play);
                        return;
                    }
                }
            } else {
                return;
            }
        }
        if ((play->gameplayFrames & 0x5F) == 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
        }
        if ((prevFrame != (s32)this->skelAnime.curFrame) &&
            (((beforeCurFrame < 2) && (((s32)absPlaySpeed + prevFrame) >= 4)) ||
             ((beforeCurFrame < 32) && (((s32)absPlaySpeed + prevFrame) >= 34)))) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_WALK);
        }
    }
}

void EnZf_SetupJumpForwards(EnZf* this) {
    Animation_Change(&this->skelAnime, &gZfJumpAnim, 1.0f, 0.0f, 3.0f, ANIMMODE_ONCE, -3.0f);
    this->timer = 0;
    this->actionState = 1;
    this->actor.velocity.y = 15.0f;
    if (ENZF_IS_TYPE_PAIRED(this->actor.params)) {
        this->actor.speed = 16.0f;
    } else {
        this->actor.speed = 10.0f;
    }
    this->action = ENZF_ACTION_JUMP_FORWARDS;
    Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_JUMP);
    EnZf_SetupAction(this, EnZf_JumpForwards);
}

void EnZf_JumpForwards(EnZf* this, PlayState* play) {
    if (this->timer != 0) {
        if (this->actor.world.pos.y <= this->actor.floorHeight) {
            this->actor.world.pos.y = this->actor.floorHeight;
            this->actionState = 0;
            this->actor.velocity.y = 0.0f;
            this->actor.speed = 0.0f;
        }
    }
    if (SkelAnime_Update(&this->skelAnime)) {
        if (this->timer == 0) {
            Animation_Change(&this->skelAnime, &gZfLandOnFeetAnim, 3.0f, 0.0f, 17.0f, ANIMMODE_ONCE, -3.0f);
            this->timer = 10;
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_JUMP);
        } else {
            this->actor.speed = 0.0f;
            this->actionState = 0;
            EnZf_SetupMainWalk(this, play);
        }
    }
    if ((play->gameplayFrames & 0x5F) == 0) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
    }
    if ((this->actor.params == ENZF_TYPE_DINOLFOS) &&
        ((this->actor.bgCheckFlags & (BGCHECKFLAG_GROUND | BGCHECKFLAG_GROUND_TOUCH)) != 0)) {
        if (EnZf_CanAttack(play, this)) {
            EnZf_SetupAttack(this);
        } else {
            EnZf_SetupCirclePlayerIfFloor(this, play);
        }
    }
}

/**
 * Note: this action does not set the actor's speed. It is always 0 because EnZf_Idle is its only user and
 * EnZf_SetupIdle sets the speed to 0.
 */
void EnZf_SetupTurnTowardsPlayer(EnZf* this) {
    Animation_MorphToLoop(&this->skelAnime, &gZfWalkAnim, -4.0f);
    this->action = ENZF_ACTION_TURN_TOWARDS_PLAYER;
    EnZf_SetupAction(this, EnZf_TurnTowardsPlayer);
}

void EnZf_TurnTowardsPlayer(EnZf* this, PlayState* play) {
    s32 pad;
    s16 relYawTowardsPlayer;
    s16 yawSpeed;
    Player* player = GET_PLAYER(play);
    f32 animPlaySpeed;

    if (!EnZf_ReactToProjectile(play, this) &&
        !((this->actor.params == ENZF_TYPE_DINOLFOS) && EnZf_DinolfosPickAction(play, this))) {
        relYawTowardsPlayer = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
        if (relYawTowardsPlayer > 0) {
            yawSpeed = (relYawTowardsPlayer * 0.25f) + 2000.0f;
        } else {
            yawSpeed = (relYawTowardsPlayer * 0.25f) - 2000.0f;
        }
        this->actor.shape.rot.y += yawSpeed;
        this->actor.world.rot.y = this->actor.shape.rot.y;
        if (relYawTowardsPlayer > 0) {
            animPlaySpeed = yawSpeed * 1.5f;
            if (animPlaySpeed > 2.0f) {
                animPlaySpeed = 2.0f;
            }
        } else {
            animPlaySpeed = yawSpeed * 1.5f;
            if (animPlaySpeed < -2.0f) {
                animPlaySpeed = -2.0f;
            }
        }
        this->skelAnime.playSpeed = -animPlaySpeed;
        SkelAnime_Update(&this->skelAnime);
        if (ENZF_IS_TYPE_PAIRED(this->actor.params)) {
            this->curPlatform = EnZf_FindPlatform(&this->actor.world.pos, this->curPlatform);
            if (EnZf_FindPlatform(&player->actor.world.pos, -1) != this->curPlatform) {
                EnZf_SetupMainWalk(this, play);
                return;
            }
        }
        if (Actor_IsFacingPlayer(&this->actor, 0x1555)) {
            if (Rand_ZeroOne() > 0.8f) {
                EnZf_SetupSidestepIfFloor(this, play);
            } else {
                EnZf_SetupMainWalk(this, play);
            }
        }
        if ((play->gameplayFrames & 0x5F) == 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
        }
    }
}

/**
 * Setup the sidestep action if possible (avoids paired types falling from the platforms),
 * or fall back to setup the main walk action.
 */
void EnZf_SetupSidestepIfFloor(EnZf* this, PlayState* play) {
    if (!ENZF_IS_TYPE_PAIRED(this->actor.params) ||
        Actor_TestFloorInDirection(&this->actor, play, 40.0f, this->actor.shape.rot.y + 0x3FFF) ||
        Actor_TestFloorInDirection(&this->actor, play, -40.0f, this->actor.shape.rot.y + 0x3FFF)) {
        Animation_PlayLoop(&this->skelAnime, &gZfWalkSidewaysAnim);
        this->actor.speed = Rand_CenteredFloat(12.0f);
        this->actor.world.rot.y = this->actor.shape.rot.y;
        this->timer = (Rand_ZeroOne() * 10.0f) + 20.0f;
        this->actionState = 0;
        this->action = ENZF_ACTION_SIDESTEP;
        this->dodgeSpeed = 0.0f;
        EnZf_SetupAction(this, EnZf_Sidestep);
    } else {
        EnZf_SetupMainWalk(this, play);
    }
}

void EnZf_Sidestep(EnZf* this, PlayState* play) {
    s16 playerYawOpposite;
    s32 beforeCurFrame;
    s32 prevFrame;
    s32 pad;
    f32 absPlaySpeed;
    Player* player = GET_PLAYER(play);
    f32 sp3C = 0.0f;
    s16 var_v0_3_real;

    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0xFA0, 1);
    if (!EnZf_ReactToProjectile(play, this) &&
        !((this->actor.params == ENZF_TYPE_DINOLFOS) && EnZf_DinolfosPickAction(play, this))) {
        this->actor.world.rot.y = this->actor.shape.rot.y + 0x3A98;
        playerYawOpposite = player->actor.shape.rot.y + 0x8000;
        if (Math_SinS(playerYawOpposite - this->actor.shape.rot.y) >= 0.0f) {
            this->actor.speed -= 0.25f;
            if (this->actor.speed < -8.0f) {
                this->actor.speed = -8.0f;
            }
        } else if (Math_SinS(playerYawOpposite - this->actor.shape.rot.y) < 0.0f) {
            this->actor.speed += 0.25f;
            if (this->actor.speed > 8.0f) {
                this->actor.speed = 8.0f;
            }
        }
        if (ENZF_IS_TYPE_PAIRED(this->actor.params)) {
            if (this->noFloorAhead) {
                this->actor.speed = -this->actor.speed;
            }
        } else {
            if ((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) ||
                !Actor_TestFloorInDirection(&this->actor, play, this->actor.speed, this->actor.shape.rot.y + 0x3FFF)) {
                if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
                    if (this->actor.speed >= 0.0f) {
                        var_v0_3_real = (this->actor.shape.rot.y + 0x3FFF);
                    } else {
                        var_v0_3_real = (this->actor.shape.rot.y - 0x3FFF);
                    }
                    var_v0_3_real = this->actor.wallYaw - var_v0_3_real;
                } else {
                    var_v0_3_real = 0;
                    this->actor.speed *= -0.8f;
                }
                if (ABS(var_v0_3_real) > 0x4000) {
                    this->actor.speed *= -0.8f;
                    if (this->actor.speed < 0.0f) {
                        this->actor.speed -= 0.5f;
                    } else {
                        this->actor.speed += 0.5f;
                    }
                }
            }
        }
        if (Actor_OtherIsLockedOn(play, &this->actor)) {
            sp3C = 100.0f;
        }
        if (this->actor.xzDistToPlayer <= (70.0f + sp3C)) {
            Math_SmoothStepToF(&this->dodgeSpeed, -4.0f, 1.0f, 1.5f, 0.0f);
        } else if ((90.0f + sp3C) < this->actor.xzDistToPlayer) {
            Math_SmoothStepToF(&this->dodgeSpeed, 4.0f, 1.0f, 1.5f, 0.0f);
        } else {
            Math_SmoothStepToF(&this->dodgeSpeed, 0.0f, 1.0f, 5.65f, 0.0f);
        }
        if ((this->dodgeSpeed != 0.0f) && !EnZf_TestNoFloorAheadShape(this, play, this->dodgeSpeed)) {
            this->actor.world.pos.x += Math_SinS(this->actor.shape.rot.y) * this->dodgeSpeed;
            this->actor.world.pos.z += Math_CosS(this->actor.shape.rot.y) * this->dodgeSpeed;
        }
        if (ABS(this->actor.speed) >= ABS(this->dodgeSpeed)) {
            this->skelAnime.playSpeed = this->actor.speed * 0.75f;
        } else if (this->skelAnime.playSpeed < 0.0f) {
            this->skelAnime.playSpeed = this->dodgeSpeed * -0.75f;
        } else {
            this->skelAnime.playSpeed = this->dodgeSpeed * 0.75f;
        }
        prevFrame = (s32)this->skelAnime.curFrame;
        SkelAnime_Update(&this->skelAnime);
        beforeCurFrame = (s32)(this->skelAnime.curFrame - ABS(this->skelAnime.playSpeed));
        absPlaySpeed = ABS(this->skelAnime.playSpeed);
        if ((prevFrame != (s32)this->skelAnime.curFrame) &&
            (((beforeCurFrame < 0xE) && (((s32)absPlaySpeed + prevFrame) >= 0x10)) ||
             ((beforeCurFrame < 0x1B) && (((s32)absPlaySpeed + prevFrame) >= 0x1D)))) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_WALK);
        }
        if ((play->gameplayFrames & 0x5F) == 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
        }
        if ((Math_CosS(playerYawOpposite - this->actor.shape.rot.y) < -0.85f) || (this->timer == 0)) {
            this->actor.world.rot.y = this->actor.shape.rot.y;
            if ((this->actor.xzDistToPlayer <= 100.0f) && ((play->gameplayFrames % 4) == 0) &&
                EnZf_CanAttack(play, this)) {
                EnZf_SetupAttack(this);
            } else {
                EnZf_SetupIdle(this);
            }
        } else if (this->timer != 0) {
            this->timer--;
        }
    }
}

void EnZf_SetupAttack(EnZf* this) {
    Animation_Change(&this->skelAnime, &gZfSlashAnim, 1.25f, 0.0f, Animation_GetLastFrame(&gZfSlashAnim), ANIMMODE_ONCE,
                     -4.0f);
    if (this->actor.params == ENZF_TYPE_DINOLFOS) {
        this->skelAnime.playSpeed = 1.75f;
    }
    this->swordCollider.base.atFlags &= ~AT_BOUNCED;
    this->action = ENZF_ACTION_ATTACK;
    Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
    this->actor.speed = 0.0f;
    EnZf_SetupAction(this, EnZf_Attack);
}

void EnZf_Attack(EnZf* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s16 absYawDiffWithPlayer;
    s16 absRelYawTowardsPlayer;

    this->actor.speed = 0.0f;
    if ((s32)this->skelAnime.curFrame == 10) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_ATTACK);
    }
    if (SkelAnime_Update(&this->skelAnime)) {
        EffectBlure_AddSpace(Effect_GetByIndex(this->swordBlureEffectIndex));
        if ((this->actor.params == ENZF_TYPE_DINOLFOS) && !Actor_IsFacingPlayer(&this->actor, 0x1554)) {
            EnZf_SetupIdle(this);
            this->timer = (Rand_ZeroOne() * 5.0f) + 5.0f;
            this->timer2 = (Rand_ZeroOne() * 20.0f) + 100.0f;
        } else if ((Rand_ZeroOne() > 0.7f) || (this->actor.xzDistToPlayer >= 120.0f)) {
            EnZf_SetupIdle(this);
            this->timer = (Rand_ZeroOne() * 5.0f) + 5.0f;
        } else {
            this->actor.world.rot.y = this->actor.yawTowardsPlayer;
            if (Rand_ZeroOne() > 0.7f) {
                EnZf_SetupCirclePlayerIfFloor(this, play);
            } else {
                absYawDiffWithPlayer = player->actor.shape.rot.y - this->actor.shape.rot.y;
                absYawDiffWithPlayer = ABS(absYawDiffWithPlayer);
                if (absYawDiffWithPlayer <= 0x2710) {
                    absRelYawTowardsPlayer = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
                    absRelYawTowardsPlayer = ABS(absRelYawTowardsPlayer);
                    if (absRelYawTowardsPlayer > 0x3E80) {
                        this->actor.world.rot.y = this->actor.yawTowardsPlayer;
                        EnZf_SetupCirclePlayerIfFloor(this, play);
                    } else if (player->stateFlags1 &
                               (PLAYER_STATE1_HOSTILE_LOCK_ON | PLAYER_STATE1_13 | PLAYER_STATE1_14)) {
                        if (this->actor.isLockedOn) {
                            EnZf_SetupAttack(this);
                        } else {
                            EnZf_SetupCirclePlayerIfFloor(this, play);
                        }
                    } else {
                        EnZf_SetupAttack(this);
                    }
                } else {
                    EnZf_SetupCirclePlayerIfFloor(this, play);
                }
            }
        }
    }
}

void EnZf_SetupAttackBounced(EnZf* this) {
    f32 f = this->skelAnime.curFrame - 3.0f;

    Animation_Change(&this->skelAnime, &gZfSlashAnim, -1.0f, f, 0.0f, ANIMMODE_ONCE, 0.0f);
    this->action = ENZF_ACTION_ATTACK_BOUNCED;
    EnZf_SetupAction(this, EnZf_AttackBounced);
}

void EnZf_AttackBounced(EnZf* this, PlayState* play) {
    if (SkelAnime_Update(&this->skelAnime)) {
        if (Rand_ZeroOne() > 0.7f) {
            EnZf_SetupIdle(this);
        } else if ((Rand_ZeroOne() > 0.2f) && EnZf_CanAttack(play, this)) {
            EnZf_SetupAttack(this);
        } else {
            EnZf_SetupCirclePlayerIfFloor(this, play);
        }
    }
}

void EnZf_SetupJumpBackwards(EnZf* this) {
    Animation_Change(&this->skelAnime, &gZfJumpAnim, -1.0f, 3.0f, 0.0f, ANIMMODE_ONCE, -3.0f);
    this->timer = 0;
    this->actionState = 1;
    this->action = ENZF_ACTION_JUMP_BACKWARDS;
    this->actor.velocity.y = 15.0f;
    this->actor.speed = -15.0f;
    Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_JUMP);
    EnZf_SetupAction(this, EnZf_JumpBackwards);
}

void EnZf_JumpBackwards(EnZf* this, PlayState* play) {
    if (this->timer != 0) {
        if (this->actor.world.pos.y <= this->actor.floorHeight) {
            this->actor.world.pos.y = this->actor.floorHeight;
            this->actionState = 0;
            this->actor.velocity.y = 0.0f;
            this->actor.speed = 0.0f;
        }
    }
    if (SkelAnime_Update(&this->skelAnime)) {
        if (this->timer == 0) {
            Animation_Change(&this->skelAnime, &gZfLandOnFeetAnim, 3.0f, 0.0f, 17.0f, ANIMMODE_ONCE, -3.0f);
            this->timer = 10;
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_JUMP);
        } else if ((play->gameplayFrames % 2) != 0) {
            EnZf_SetupCirclePlayerIfFloor(this, play);
        } else {
            EnZf_SetupIdle(this);
        }
    }
    if ((play->state.frames & 0x5F) == 0) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
    }
}

void EnZf_SetupStunned(EnZf* this) {
    if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) &&
        (((this->actor.velocity.y == 0.0f)) || (this->actor.velocity.y == -4.0f))) {
        this->actor.speed = 0.0f;
        this->actionState = 0;
    } else {
        this->actionState = 1;
    }
    if (this->lastDamageReaction == ENZF_DMG_REACT_ICE) {
        this->frozenTimer = 36;
    } else {
        Animation_PlayOnceSetSpeed(&this->skelAnime, &gZfDamagedAnim, 0.0f);
    }
    Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    this->action = ENZF_ACTION_STUNNED;
    EnZf_SetupAction(this, EnZf_Stunned);
}

void EnZf_Stunned(EnZf* this, PlayState* play) {
    s16 absRelWallYaw;

    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
        this->actor.speed = 0.0f;
    }
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        if (this->actor.speed < 0.0f) {
            this->actor.speed += 0.05f;
        }
        this->actionState = 0;
    }
    if ((this->actor.colorFilterTimer == 0) && (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
        if (this->actor.colChkInfo.health == 0) {
            EnZf_SetupDie(this);
        } else if (!((this->actor.params == ENZF_TYPE_DINOLFOS) && EnZf_DinolfosPickAction(play, this))) {
            if (sPairedInactiveType != ENZF_TYPE_LIZALFOS_SINGLE) {
                EnZf_PickAction(this, play);
            } else {
                absRelWallYaw = this->actor.wallYaw - this->actor.shape.rot.y;
                absRelWallYaw = ABS(absRelWallYaw);
                if ((this->actor.params == ENZF_TYPE_DINOLFOS) && (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) &&
                    (ABS(absRelWallYaw) < 0x2EE0) && (this->actor.xzDistToPlayer < 90.0f)) {
                    this->actor.world.rot.y = this->actor.shape.rot.y;
                    EnZf_SetupJumpAttack(this);
                } else if (!EnZf_ReactToProjectile(play, this)) {
                    if (this->actor.params != ENZF_TYPE_DINOLFOS) {
                        EnZf_PickAction(this, play);
                    } else if ((this->actor.xzDistToPlayer <= 100.0f) && ((play->gameplayFrames % 4) != 0) &&
                               EnZf_CanAttack(play, this)) {
                        EnZf_SetupAttack(this);
                    } else {
                        EnZf_PickAction(this, play);
                    }
                }
            }
        }
    }
}

void EnZf_Paired_SetupJumpAwayStartTurnAround(EnZf* this, PlayState* play) {
    f32 animMorphFrames = 0.0f;
    f32 animEndFrame = Animation_GetLastFrame(&gZfRunAwayTurnAroundAnim);

    if (this->action <= ENZF_ACTION_DAMAGED) {
        animMorphFrames = -4.0f;
    }
    Animation_Change(&this->skelAnime, &gZfRunAwayTurnAroundAnim, 2.0f, 0.0f, animEndFrame, ANIMMODE_ONCE,
                     animMorphFrames);
    this->action = ENZF_ACTION_PAIRED_JUMP_AWAY_START_TURN_AROUND;
    this->actor.speed = 0.0f;
    this->curPlatform = EnZf_FindPlatform(&this->actor.world.pos, this->curPlatform);
    this->targetPlatform =
        EnZf_FindPlatformWithoutPlayer(&this->actor.world.pos, this->curPlatform, this->homePlatform, play);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    EnZf_SetupAction(this, EnZf_Paired_JumpAwayStartTurnAround);
}

void EnZf_Paired_JumpAwayStartTurnAround(EnZf* this, PlayState* play) {
    s16 yaw = Actor_WorldYawTowardPoint(&this->actor, &sDCPlatformPositions[this->targetPlatform]) + 0x8000;

    Math_SmoothStepToS(&this->actor.world.rot.y, yaw, 1, 0x3E8, 0);
    this->actor.shape.rot.y = this->actor.world.rot.y;
    if (SkelAnime_Update(&this->skelAnime)) {
        this->actor.world.rot.y = yaw - 0x8000;
        EnZf_Paired_SetupJumpAway(this, play);
        this->isSwordSheathed = true;
    }
}

/**
 * Hop in place indefinitely (until signaled to engage combat, see EnZf_Update).
 * Jump away if the player gets too close.
 */
void EnZf_Paired_SetupIdleHop(EnZf* this) {
    this->actionState = 0;
    Animation_MorphToPlayOnce(&this->skelAnime, D_80B4A280[0], -4.0f);
    this->action = ENZF_ACTION_PAIRED_IDLE_HOP;
    this->actor.speed = 0.0f;
    this->dodgeVelocityY = 0.0f;
    this->dodgeSpeed = 0.0f;
    EnZf_SetupAction(this, EnZf_Paired_IdleHop);
}

void EnZf_Paired_IdleHop(EnZf* this, PlayState* play) {
    f32 animEndFrame;
    f32 minPlayerDist = 400.0f;

    Math_SmoothStepToF(&this->actor.speed, 0.0f, 1.0f, 0.5f, 0.0f);
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer + 0x8000, 1, 0xFA0, 0);
    if (this->actor.world.pos.y >= 420.0f) {
        minPlayerDist = 250.0f;
    }
    if ((this->actor.xzDistToPlayer < minPlayerDist) && (this->actionState != 1)) {
        this->actor.shape.rot.y = this->actor.world.rot.y;
        EnZf_Paired_SetupJumpAwayStartTurnAround(this, play);
    } else {
        if (this->actionState != 1) {
            EnZf_ReactToProjectileSetDodgeSpeed(play, this);
        }
        if (SkelAnime_Update(&this->skelAnime)) {
            this->actionState += 1;
            if (this->actionState >= 3) {
                this->actionState = 0;
            }
            if ((this->dodgeSpeed != 0.0f) || (this->dodgeVelocityY != 0.0f)) {
                this->actionState = 1;
            }
            animEndFrame = Animation_GetLastFrame(D_80B4A280[this->actionState]);
            switch (this->actionState) {
                case 0:
                    this->actor.velocity.y = 0.0f;
                    this->actor.world.pos.y = this->actor.floorHeight;
                    break;

                case 1:
                    this->actor.velocity.y = this->dodgeVelocityY + 10.0f;
                    this->actor.speed = this->dodgeSpeed;
                    this->dodgeSpeed = 0.0f;
                    this->dodgeVelocityY = 0.0f;
                    break;

                case 2:
                    animEndFrame = 3.0f;
                    this->actor.world.pos.y = this->actor.floorHeight;
                    break;
            }
            Animation_Change(&this->skelAnime, D_80B4A280[this->actionState], 1.5f, 0.0f, animEndFrame, ANIMMODE_ONCE,
                             0.0f);
        }
        if ((play->gameplayFrames & 0x5F) == 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
        }
    }
}

/**
 * Jump away from the player.
 */
void EnZf_Paired_SetupJumpAway(EnZf* this, PlayState* play) {
    this->actionState = 0;
    Animation_PlayOnce(&this->skelAnime, D_80B4A280[0]);
    this->action = ENZF_ACTION_PAIRED_JUMP_AWAY;
    this->curPlatform = EnZf_FindPlatform(&this->actor.world.pos, this->curPlatform);
    this->targetPlatform =
        EnZf_FindPlatformWithoutPlayer(&this->actor.world.pos, this->curPlatform, this->homePlatform, play);
    EnZf_SetupAction(this, EnZf_Paired_JumpAway);
}

void EnZf_Paired_JumpAway(EnZf* this, PlayState* play) {
    f32 distToTargetPlatform;
    f32 animPlaySpeed = 1.0f;
    f32 var_fs0 = 550.0f;
    f32 candidateDistance;
    s32 pad;
    f32 candidateSpeed;
    s32 pad2;
    s16 yawTowardsTargetPlatform;
    s32 prevActionState;
    s32 floorAheadFlags;
    s32 i;

    distToTargetPlatform = Actor_WorldDistXZToPoint(&this->actor, &sDCPlatformPositions[this->targetPlatform]);
    prevActionState = this->actionState;
    if ((play->gameplayFrames & 0x5F) == 0) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
    }
    if (this->actor.world.pos.y >= 420.0f) {
        var_fs0 = 280.0f;
    }
    yawTowardsTargetPlatform = Actor_WorldYawTowardPoint(&this->actor, &sDCPlatformPositions[this->targetPlatform]);
    switch (this->actionState) {
        case 0:
            this->actor.world.rot.y = yawTowardsTargetPlatform;
            this->actor.shape.rot.y = yawTowardsTargetPlatform + 0x8000;
            D_80B4AB30 = 0;
            this->homePlatform = this->curPlatform;
            floorAheadFlags = 0;
            floorAheadFlags |= !EnZf_TestNoFloorAhead(this, play, 107.0f) << 0;
            floorAheadFlags |= !EnZf_TestNoFloorAhead(this, play, 220.0f) << 1;
            this->actionState += 1;
            switch (floorAheadFlags) {
                case 1:
                case 3:
                    this->actor.velocity.y = 12.0f;
                    if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
                        this->actor.velocity.y += 8.0f;
                    }
                    this->actor.speed = 8.0f;
                    break;

                case 2:
                    this->actor.velocity.y = 15.0f;
                    this->actor.speed = 20.0f;
                    break;

                default:
                    if (play) {}
                    candidateDistance = 107.0f;
                    candidateDistance += 10.0f;
                    candidateSpeed = 8.0f;
                    candidateSpeed += 1.2f;
                    for (i = 20; i >= 0; i--, candidateDistance += 10.0f, candidateSpeed += 1.2f) {
                        if (!EnZf_TestNoFloorAhead(this, play, candidateDistance)) {
                            this->actor.speed = candidateSpeed;
                            this->actor.velocity.y = 12.0f;
                            break;
                        }
                    }
                    if (this->actor.speed == 0.0f) {
                        EnZf_Paired_SetupIdleHop(this);
                    }
                    break;
            }
            break;

        case 1:
            if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) ||
                (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_ONGND);
                this->actor.velocity.y = 0.0f;
                this->actor.world.pos.y = this->actor.floorHeight;
                this->actor.speed = 0.0f;
                Actor_SpawnFloorDustRing(play, &this->actor, &this->leftFootPos, 3.0f, 2, 2.0f, 0, 0, false);
                Actor_SpawnFloorDustRing(play, &this->actor, &this->rightFootPos, 3.0f, 2, 2.0f, 0, 0, false);
                if (this->actor.xzDistToPlayer >= var_fs0) {
                    EnZf_Paired_SetupIdleHop(this);
                } else if (distToTargetPlatform < 80.0f) {
                    this->curPlatform = EnZf_FindPlatform(&this->actor.world.pos, this->curPlatform);
                    this->targetPlatform = EnZf_FindPlatformWithoutPlayer(&this->actor.world.pos, this->curPlatform,
                                                                          this->homePlatform, play);
                }
                this->actionState = 0;
                animPlaySpeed = 2.0f;
            } else {
                Math_SmoothStepToS(&this->actor.world.rot.y, yawTowardsTargetPlatform, 1, 0xFA0, 0);
                this->actor.shape.rot.y = this->actor.world.rot.y + 0x8000;
                D_80B4AB30 += 1;
            }
            break;

        case 2:
            if (this->skelAnime.curFrame == this->skelAnime.endFrame) {
                this->actionState = 0;
            }
            break;
    }
    if (prevActionState != this->actionState) {
        Animation_PlayOnceSetSpeed(&this->skelAnime, D_80B4A280[this->actionState], animPlaySpeed);
    }
    SkelAnime_Update(&this->skelAnime);
}

void EnZf_Paired_SetupEngageCombat(EnZf* this, PlayState* play) {
    Animation_PlayOnce(&this->skelAnime, &gZfTurnAroundUnsheathSword);
    this->actor.world.rot.y += 0x8000;
    this->action = ENZF_ACTION_PAIRED_ENGAGE_COMBAT;
    this->actor.speed = 0.0f;
    this->curPlatform = EnZf_FindPlatform(&this->actor.world.pos, this->curPlatform);
    this->targetPlatform =
        EnZf_FindPlatformWithoutPlayer(&this->actor.world.pos, this->curPlatform, this->homePlatform, play);
    EnZf_SetupAction(this, EnZf_Paired_EngageCombat);
}

void EnZf_Paired_EngageCombat(EnZf* this, PlayState* play) {
    s16 yawTowardsPlayer = this->actor.yawTowardsPlayer;

    if (this->skelAnime.curFrame >= 26.0f) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, yawTowardsPlayer, 1, 0x1770, 0);
    }
    if (SkelAnime_Update(&this->skelAnime)) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
        this->actor.world.rot.y = yawTowardsPlayer;
        this->actionState = -1;
        EnZf_SetupIdle(this);
    }
    if (this->skelAnime.curFrame == 22.0f) {
        this->isSwordSheathed = false;
    }
}

void EnZf_SetupDamaged(EnZf* this) {
    Animation_Change(&this->skelAnime, &gZfDamagedAnim, 1.5f, 0.0f, Animation_GetLastFrame(&gZfDamagedAnim),
                     ANIMMODE_ONCE, -4.0f);
    if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) &&
        ((this->actor.velocity.y == 0.0f) || (this->actor.velocity.y == -4.0f))) {
        this->actor.speed = -4.0f;
        this->actionState = 0;
    } else {
        this->actionState = 1;
    }
    if (this->actor.params == ENZF_TYPE_DINOLFOS) {
        this->skelAnime.playSpeed = 4.5f;
    }
    if (!ENZF_IS_TYPE_PAIRED(this->actor.params)) {
        this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    }
    Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_DAMAGE);
    this->action = ENZF_ACTION_DAMAGED;
    EnZf_SetupAction(this, EnZf_Damaged);
}

void EnZf_Damaged(EnZf* this, PlayState* play) {
    s16 absRelWallYaw;

    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
        this->actor.speed = 0.0f;
    }
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        if (this->actor.speed < 0.0f) {
            this->actor.speed += 0.05f;
        }
        this->actionState = 0;
    }
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0x1194, 0);
    if (!((this->actor.params == ENZF_TYPE_DINOLFOS) && EnZf_DinolfosPickAction(play, this)) &&
        SkelAnime_Update(&this->skelAnime) && (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
        if (sPairedInactiveType != ENZF_TYPE_LIZALFOS_SINGLE) {
            if (this->lastDamageReaction == ENZF_DMG_REACT_FLEE) {
                sPairedActiveFleeFlag += 1;
            } else {
                this->actor.world.rot.y = this->actor.shape.rot.y;
                if (!EnZf_TestNoFloorAhead(this, play, 135.0f) && (this->actor.xzDistToPlayer < 90.0f)) {
                    EnZf_SetupJumpAttack(this);
                } else if ((this->actor.xzDistToPlayer <= 100.0f) && ((play->gameplayFrames % 4) == 0)) {
                    EnZf_SetupAttack(this);
                } else {
                    EnZf_PickAction(this, play);
                }
            }
        } else {
            absRelWallYaw = this->actor.wallYaw - this->actor.shape.rot.y;
            absRelWallYaw = ABS(absRelWallYaw);
            if ((this->actor.params == ENZF_TYPE_DINOLFOS) && (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) &&
                (ABS(absRelWallYaw) < 0x2EE0) && (this->actor.xzDistToPlayer < 90.0f)) {
                EnZf_SetupJumpAttack(this);
            } else if (!EnZf_ReactToProjectile(play, this)) {
                if (this->actor.params != ENZF_TYPE_DINOLFOS) {
                    this->actor.world.rot.y = this->actor.shape.rot.y;
                    if (!EnZf_TestNoFloorAhead(this, play, 135.0f) && (this->actor.xzDistToPlayer < 90.0f)) {
                        EnZf_SetupJumpAttack(this);
                    } else if ((this->actor.xzDistToPlayer <= 100.0f) && ((play->gameplayFrames % 4) == 0)) {
                        EnZf_SetupAttack(this);
                    } else {
                        EnZf_PickAction(this, play);
                    }
                } else if ((this->actor.xzDistToPlayer <= 100.0f) && ((play->gameplayFrames % 4) == 0) &&
                           EnZf_CanAttack(play, this)) {
                    EnZf_SetupAttack(this);
                } else {
                    EnZf_PickAction(this, play);
                }
            }
        }
    }
}

void EnZf_SetupJumpAttack(EnZf* this) {
    Animation_Change(&this->skelAnime, &gZfJumpAnim, 1.0f, 0.0f, 3.0f, ANIMMODE_ONCE, 0.0f);
    this->timer = 0;
    this->actionState = 1;
    this->action = ENZF_ACTION_JUMP_ATTACK;
    this->actor.velocity.y = 22.0f;
    this->actor.speed = 7.5f;
    Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_JUMP);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    EnZf_SetupAction(this, EnZf_JumpAttack);
}

void EnZf_JumpAttack(EnZf* this, PlayState* play) {
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0xFA0, 1);
    if (this->actor.velocity.y >= 5.0f) {
        func_800355B8(play, &this->leftFootPos);
        func_800355B8(play, &this->rightFootPos);
    }
    if (SkelAnime_Update(&this->skelAnime)) {
        if (this->timer == 0) {
            Animation_Change(&this->skelAnime, &gZfSlashAnim, 3.0f, 0.0f, 13.0f, ANIMMODE_ONCE, -4.0f);
            this->timer = 10;
        } else if (this->actor.bgCheckFlags & (BGCHECKFLAG_GROUND | BGCHECKFLAG_GROUND_TOUCH)) {
            this->actor.world.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
            this->actor.velocity.y = 0.0f;
            this->actor.speed = 0.0f;
            this->actor.world.pos.y = this->actor.floorHeight;
            EnZf_SetupAttack(this);
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_ATTACK);
            this->skelAnime.curFrame = 13.0f;
        }
    }
}

/**
 * Setup the cicle player action if possible (avoids paired types falling from the platforms),
 * or fall back to setup the main walk action.
 */
void EnZf_SetupCirclePlayerIfFloor(EnZf* this, PlayState* play) {
    s16 playerYaw;
    Player* player;

    if (!ENZF_IS_TYPE_PAIRED(this->actor.params) ||
        Actor_TestFloorInDirection(&this->actor, play, 40.0f, this->actor.shape.rot.y + 0x3FFF) ||
        Actor_TestFloorInDirection(&this->actor, play, -40.0f, this->actor.shape.rot.y + 0x3FFF)) {
        Animation_PlayLoop(&this->skelAnime, &gZfWalkSidewaysAnim);
        player = GET_PLAYER(play);
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0xFA0, 1);
        playerYaw = player->actor.shape.rot.y;
        if (Math_SinS(playerYaw - this->actor.shape.rot.y) >= 0.0f) {
            this->actor.speed = -6.0f;
        } else if (Math_SinS(playerYaw - this->actor.shape.rot.y) < 0.0f) {
            this->actor.speed = 6.0f;
        }
        this->dodgeSpeed = 0.0f;
        this->actionState = 0;
        this->actor.world.rot.y = this->actor.shape.rot.y + 0x3FFF;
        this->timer = (Rand_ZeroOne() * 10.0f) + 5.0f;
        this->action = ENZF_ACTION_CIRCLE_PLAYER;
        EnZf_SetupAction(this, EnZf_CirclePlayer);
    } else {
        EnZf_SetupMainWalk(this, play);
    }
}

void EnZf_CirclePlayer(EnZf* this, PlayState* play) {
    s16 playerYaw;
    s16 yaw;
    Player* player = GET_PLAYER(play);
    s32 prevFrame;
    s32 beforeCurFrame;
    s32 pad;
    f32 extraRadius = 0.0f;
    f32 absPlaySpeed;

    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0xBB8, 1);
    playerYaw = player->actor.shape.rot.y;
    if (ENZF_IS_TYPE_PAIRED(this->actor.params)) {
        if (this->noFloorAhead) {
            this->actor.speed = -this->actor.speed;
        }
    } else {
        if ((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) ||
            !Actor_TestFloorInDirection(&this->actor, play, this->actor.speed, this->actor.shape.rot.y + 0x3FFF)) {
            if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
                if (this->actor.speed >= 0.0f) {
                    yaw = this->actor.shape.rot.y + 0x3FFF;
                } else {
                    yaw = this->actor.shape.rot.y - 0x3FFF;
                }
                yaw = this->actor.wallYaw - yaw;
            } else {
                yaw = 0;
                this->actor.speed *= -0.8f;
            }
            if (ABS(yaw) > 0x4000) {
                this->actor.speed *= -0.8f;
                if (this->actor.speed < 0.0f) {
                    this->actor.speed -= 0.5f;
                } else {
                    this->actor.speed += 0.5f;
                }
            }
        }
#if !DEBUG_FEATURES
        if (1) {} //! FAKE
#endif
    }
    if (Math_SinS(playerYaw - this->actor.shape.rot.y) >= 0.0f) {
        this->actor.speed += 0.125f;
    } else {
        this->actor.speed -= 0.125f;
    }
    this->actor.world.rot.y = this->actor.shape.rot.y + 0x4000;
    if (Actor_OtherIsLockedOn(play, &this->actor)) {
        extraRadius = 100.0f;
    }
    if (this->actor.xzDistToPlayer <= (70.0f + extraRadius)) {
        Math_SmoothStepToF(&this->dodgeSpeed, -4.0f, 1.0f, 1.5f, 0.0f);
    } else if ((90.0f + extraRadius) < this->actor.xzDistToPlayer) {
        Math_SmoothStepToF(&this->dodgeSpeed, 4.0f, 1.0f, 1.5f, 0.0f);
    } else {
        Math_SmoothStepToF(&this->dodgeSpeed, 0.0f, 1.0f, 5.65f, 0.0f);
    }
    if ((this->dodgeSpeed != 0.0f) && !EnZf_TestNoFloorAheadShape(this, play, this->dodgeSpeed)) {
        this->actor.world.pos.x += Math_SinS(this->actor.shape.rot.y) * this->dodgeSpeed;
        this->actor.world.pos.z += Math_CosS(this->actor.shape.rot.y) * this->dodgeSpeed;
    }
    if (ABS(this->actor.speed) >= ABS(this->dodgeSpeed)) {
        this->skelAnime.playSpeed = -this->actor.speed * 0.75f;
    } else {
        if (this->skelAnime.playSpeed < 0.0f) {
            this->skelAnime.playSpeed = this->dodgeSpeed * -0.75f;
        } else {
            this->skelAnime.playSpeed = this->dodgeSpeed * 0.75f;
        }
    }
    prevFrame = (s32)this->skelAnime.curFrame;
    SkelAnime_Update(&this->skelAnime);
    beforeCurFrame = (s32)(this->skelAnime.curFrame - ABS(this->skelAnime.playSpeed));
    absPlaySpeed = ((void)0, ABS(this->skelAnime.playSpeed)); //! FAKE
    this->curPlatform = EnZf_FindPlatform(&this->actor.world.pos, this->curPlatform);
    if (EnZf_FindPlatform(&player->actor.world.pos, -1) != this->curPlatform) {
        this->actor.speed = 0.0f;
        if (ENZF_IS_TYPE_PAIRED(this->actor.params) && (sPairedInactiveType == this->actor.params)) {
            EnZf_Paired_SetupIdleHop(this);
        } else {
            EnZf_SetupMainWalk(this, play);
        }
    } else if (!((this->actor.params == ENZF_TYPE_DINOLFOS) && EnZf_DinolfosPickAction(play, this))) {
        if (this->timer == 0) {
            yaw = player->actor.shape.rot.y - this->actor.shape.rot.y;
            if (yaw < 0) {
                yaw *= -1;
            }
            if (yaw >= 0x3A98) {
                if (ENZF_IS_TYPE_PAIRED(this->actor.params) && (sPairedInactiveType == this->actor.params)) {
                    EnZf_Paired_SetupIdleHop(this);
                } else {
                    EnZf_SetupIdle(this);
                    this->timer = (Rand_ZeroOne() * 5.0f) + 1.0f;
                }
            } else {
                if (ENZF_IS_TYPE_PAIRED(this->actor.params) && (sPairedInactiveType == this->actor.params)) {
                    EnZf_Paired_SetupIdleHop(this);
                } else {
                    this->actor.world.rot.y = this->actor.shape.rot.y;
                    if ((this->actor.xzDistToPlayer <= 100.0f) && ((play->gameplayFrames % 4) == 0) &&
                        EnZf_CanAttack(play, this)) {
                        EnZf_SetupAttack(this);
                    } else {
                        if ((this->actor.xzDistToPlayer < 280.0f) && (this->actor.xzDistToPlayer > 240.0f) &&
                            !EnZf_TestNoFloorAhead(this, play, 191.9956f) && ((play->gameplayFrames % 2) == 0)) {
                            EnZf_SetupJumpForwards(this);
                        } else {
                            EnZf_SetupMainWalk(this, play);
                        }
                    }
                }
            }
        y:; //! FAKE
        } else {
            this->timer--;
        }
        if ((prevFrame != (s32)this->skelAnime.curFrame) &&
            (((beforeCurFrame < 14) && (((s32)absPlaySpeed + prevFrame) >= 16)) ||
             ((beforeCurFrame < 27) && (((s32)absPlaySpeed + prevFrame) >= 29)))) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_WALK);
        }
        if ((play->gameplayFrames & 0x5F) == 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
        }
    }
}

void EnZf_SetupDie(EnZf* this) {
    Actor* otherEnZf;

    Animation_Change(&this->skelAnime, &gZfDieAnim, 1.5f, 0.0f, Animation_GetLastFrame(&gZfDieAnim), ANIMMODE_ONCE,
                     -4.0f);
    if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) &&
        ((this->actor.velocity.y == 0.0f) || (this->actor.velocity.y == -4.0f))) {
        this->actor.speed = 0.0f;
        this->actionState = 0;
    } else {
        this->actionState = 1;
    }
    this->action = ENZF_ACTION_DIE;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    if (sPairedInactiveType != ENZF_TYPE_LIZALFOS_SINGLE) {
        otherEnZf = this->actor.prev;
        // Signal the other lizalfos to engage combat.
        if (otherEnZf != NULL) {
            ((EnZf*)otherEnZf)->timer2 = 90;
            otherEnZf = this->actor.prev;
            if (otherEnZf->colChkInfo.health < 3) {
                otherEnZf->colChkInfo.health = 3;
            }
        } else {
            ((EnZf*)this->actor.next)->timer2 = 90;
            otherEnZf = this->actor.next;
            if (otherEnZf->colChkInfo.health < 3) {
                otherEnZf->colChkInfo.health = 3;
            }
        }
    }
    sPairedActiveFleeFlag = 0;
    Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_DEAD);
    EnZf_SetupAction(this, EnZf_Die);
}

void EnZf_Die(EnZf* this, PlayState* play) {
    s32 temp_ft1;

    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
        this->actor.speed = 0.0f;
    }
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        Math_SmoothStepToF(&this->actor.speed, 0.0f, 1.0f, 0.15f, 0.0f);
        this->actionState = 0;
    }
    if (SkelAnime_Update(&this->skelAnime)) {
        if (this->actor.category != ACTORCAT_PROP) {
            if (ENZF_IS_TYPE_PAIRED(this->actor.params) && (sPairedInactiveType == ENZF_TYPE_LIZALFOS_SINGLE)) {
                Flags_SetSwitch(play, this->switchFlag);
                func_800F5B58();
            } else {
                sPairedInactiveType = ENZF_TYPE_LIZALFOS_SINGLE;
            }
            Actor_ChangeCategory(play, &play->actorCtx, &this->actor, ACTORCAT_PROP);
        }
        if (this->alpha != 0) {
            this->alpha -= 5;
            this->actor.shape.shadowAlpha = this->alpha;
        } else {
            Actor_Kill(&this->actor);
        }
    } else {
        temp_ft1 = (s32)this->skelAnime.curFrame;
        if ((temp_ft1 == 10) || (temp_ft1 == 18)) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_DOWN);
        }
    }
}

void EnZf_UpdateHeadRot(EnZf* this, PlayState* play) {
    s16 yawTowardsPlayerRelToHead;

    if ((this->actor.params == ENZF_TYPE_DINOLFOS) && (this->action == ENZF_ACTION_IDLE) && (this->timer2 != 0)) {
        this->headRot = Math_SinS(this->timer2 * 0x578) * 10920.0f;
    } else {
        yawTowardsPlayerRelToHead = this->actor.yawTowardsPlayer;
        yawTowardsPlayerRelToHead -= (s16)(this->headRot + this->actor.shape.rot.y);
        this->headRotStep = CLAMP(yawTowardsPlayerRelToHead, -0x7D0, 0x7D0);
        this->headRot += this->headRotStep;
        this->headRot = CLAMP(this->headRot, -0x1CD7, 0x1CD7);
    }
}

void EnZf_CheckCollide(EnZf* this, PlayState* play) {
    s32 pad;
    s16 dropParams;

    if ((this->bodyCollider.base.acFlags & AC_HIT) && (this->action <= ENZF_ACTION_STUNNED)) {
        this->bodyCollider.base.acFlags &= ~AC_HIT;
        if (!(ENZF_IS_TYPE_PAIRED(this->actor.params) && (sPairedInactiveType == this->actor.params)) &&
            (this->actor.colChkInfo.damageReaction != ENZF_DMG_REACT_6)) {
            this->lastDamageReaction = this->actor.colChkInfo.damageReaction;
            Actor_SetDropFlag(&this->actor, &this->bodyCollider.elem, false);
            if ((this->actor.colChkInfo.damageReaction == ENZF_DMG_REACT_STUN) ||
                (this->actor.colChkInfo.damageReaction == ENZF_DMG_REACT_ICE)) {
                if (this->action != ENZF_ACTION_STUNNED) {
                    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_BLUE, 120, COLORFILTER_BUFFLAG_OPA, 80);
                    Actor_ApplyDamage(&this->actor);
                    EnZf_SetupStunned(this);
                }
            } else {
                Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
                Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 255, COLORFILTER_BUFFLAG_OPA, 8);
                if (Actor_ApplyDamage(&this->actor) == 0) {
                    dropParams = COLLECTIBLE_DROP_RANDOM_PARAMS(COLLECTIBLE_DROP_TABLE_4, false);
                    EnZf_SetupDie(this);
                    if (this->actor.params == ENZF_TYPE_DINOLFOS) {
                        dropParams = COLLECTIBLE_DROP_RANDOM_PARAMS(COLLECTIBLE_DROP_TABLE_14, false);
                    }
                    Item_DropCollectibleRandom(play, &this->actor, &this->actor.world.pos, dropParams);
                    Enemy_StartFinishingBlow(play, &this->actor);
                } else {
                    if (sPairedInactiveType != ENZF_TYPE_LIZALFOS_SINGLE) {
                        if (((this->actor.colChkInfo.health + this->actor.colChkInfo.damage) >= 4) &&
                            (this->actor.colChkInfo.health < 4)) {
                            this->lastDamageReaction = ENZF_DMG_REACT_FLEE;
                        }
                    }
                    EnZf_SetupDamaged(this);
                }
            }
        }
    }
}

void EnZf_Update(Actor* thisx, PlayState* play) {
    EnZf* this = (EnZf*)thisx;
    s32 pad[2];

    EnZf_CheckCollide(this, play);
    if (this->actor.colChkInfo.damageReaction != ENZF_DMG_REACT_6) {
        this->noFloorAhead = false;
        if ((this->actionState != 1) && (this->action != ENZF_ACTION_PAIRED_JUMP_AWAY)) {
            if (this->actor.speed != 0.0f) {
                this->noFloorAhead = EnZf_TestNoFloorAhead(this, play, this->actor.speed * 1.5f);
            }
            if (!this->noFloorAhead) {
                this->noFloorAhead = EnZf_TestNoFloorAhead(this, play, 0.0f);
            }
        }
        if (!this->noFloorAhead) {
            Actor_MoveXZGravity(&this->actor);
        }
        Actor_UpdateBgCheckInfo(play, &this->actor, 25.0f, 30.0f, 60.0f,
                                UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 |
                                    UPDBGCHECKINFO_FLAG_4);
        if (!(this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
            this->actionState = 1;
        }
        this->actionFunc(this, play);
    }
    if (this->actor.colChkInfo.health > 0) {
        if ((this->action != ENZF_ACTION_ATTACK) && (this->action != ENZF_ACTION_STUNNED)) {
            EnZf_UpdateHeadRot(this, play);
        }
        if ((sPairedActiveFleeFlag != 0) && (sPairedInactiveType != this->actor.params)) {
            EnZf_Paired_SetupJumpAwayStartTurnAround(this, play);
            sPairedInactiveType = this->actor.params;
            sPairedActiveFleeFlag = 0;
            // Signal the other lizalfos to engage combat.
            if (this->actor.prev != NULL) {
                ((EnZf*)this->actor.prev)->timer2 = 90;
            } else {
                ((EnZf*)this->actor.next)->timer2 = 90;
            }
        }
    }
    if (this->action >= ENZF_ACTION_DIE) {
        Math_SmoothStepToS(&this->headRot, 0, 1, 0x7D0, 0);
        // timer2 is 0 during ENZF_ACTION_PAIRED_IDLE_HOP until it is set by the other lizalfos instance to signal it's
        // our turn to engage combat.
        if ((this->action <= ENZF_ACTION_PAIRED_IDLE_HOP) && (this->timer2 == 1) &&
            (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
            if (this->actor.colChkInfo.health > 0) {
                EnZf_Paired_SetupEngageCombat(this, play);
            }
            this->timer2--;
        }
        if (this->timer2 >= 2) {
            this->timer2--;
        }
    }
    this->actor.focus.pos = this->actor.world.pos;
    this->actor.focus.pos.y += 40.0f;
    if (this->actor.colChkInfo.health > 0) {
        if (this->alpha == 255) {
            Collider_UpdateCylinder(&this->actor, &this->bodyCollider);
            if ((this->actor.world.pos.y == this->actor.floorHeight) && (this->action <= ENZF_ACTION_DAMAGED)) {
                CollisionCheck_SetOC(play, &play->colChkCtx, &this->bodyCollider.base);
            }
            if (!(ENZF_IS_TYPE_PAIRED(this->actor.params) && (sPairedInactiveType == this->actor.params)) &&
                !((this->actor.colorFilterTimer != 0) && (this->actor.colorFilterParams & 0x4000))) {
                CollisionCheck_SetAC(play, &play->colChkCtx, &this->bodyCollider.base);
            }
        }
    }
    if ((this->action == ENZF_ACTION_ATTACK) && ((this->skelAnime.curFrame >= 14.0f)) &&
        (this->skelAnime.curFrame <= 20.0f)) {
        // Note: AC_HIT will never be set as CollisionCheck_SetAC is never called on the swordCollider
        if (!(this->swordCollider.base.atFlags & AT_BOUNCED) && !(this->swordCollider.base.acFlags & AC_HIT)) {
            CollisionCheck_SetAT(play, &play->colChkCtx, &this->swordCollider.base);
        } else {
            this->swordCollider.base.atFlags &= ~AT_BOUNCED;
            this->swordCollider.base.acFlags &= ~AC_HIT;
            EnZf_SetupAttackBounced(this);
        }
    }
}

s32 EnZf_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx, Gfx** gfx) {
    EnZf* this = (EnZf*)thisx;

    switch (limbIndex) {
        case ZF_LIMB_HEAD_ROOT:
            rot->y -= this->headRot;
            break;

        case ZF_LIMB_RIGHT_HAND_AND_SWORD:
            if (this->isSwordSheathed) {
                *dList = gLizalfosRightHandDL;
            }
            break;

        case ZF_LIMB_SHEATH:
            if (this->isSwordSheathed) {
                *dList = gLizalfosSheathedSwordDL;
            }
            break;
    }
    return 0;
}

void EnZf_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx, Gfx** gfx) {
    Vec3f sp54;
    Vec3f sp48;
    s32 bodyPartIndex = -1;
    EnZf* this = (EnZf*)thisx;

    if (limbIndex == ZF_LIMB_RIGHT_HAND_AND_SWORD) {
        Matrix_MultVec3f(&D_80B4A2BC, &this->swordCollider.dim.quad[1]);
        Matrix_MultVec3f(&D_80B4A2C8, &this->swordCollider.dim.quad[0]);
        Matrix_MultVec3f(&D_80B4A2D4, &this->swordCollider.dim.quad[3]);
        Matrix_MultVec3f(&D_80B4A2E0, &this->swordCollider.dim.quad[2]);
        Collider_SetQuadVertices(&this->swordCollider, &this->swordCollider.dim.quad[0],
                                 &this->swordCollider.dim.quad[1], &this->swordCollider.dim.quad[2],
                                 &this->swordCollider.dim.quad[3]);
        Matrix_MultVec3f(&D_80B4A2A4, &sp54);
        Matrix_MultVec3f(&D_80B4A2B0, &sp48);
        if (this->action == ENZF_ACTION_ATTACK) {
            if (this->skelAnime.curFrame < 14.0f) {
                EffectBlure_AddSpace(Effect_GetByIndex(this->swordBlureEffectIndex));
            } else if (this->skelAnime.curFrame < 20.0f) {
                EffectBlure_AddVertex(Effect_GetByIndex(this->swordBlureEffectIndex), &sp54, &sp48);
            }
        }
    } else {
        Actor_SetFeetPos(&this->actor, limbIndex, ZF_LIMB_LEFT_FOOT_CLAWS, &D_80B4A298, ZF_LIMB_RIGHT_FOOT_CLAWS,
                         &D_80B4A298);
    }
    switch (limbIndex) {
        case ZF_LIMB_LEFT_FOOT_CLAWS:
            Matrix_MultVec3f(&D_80B4A298, &this->leftFootPos);
            break;
        case ZF_LIMB_RIGHT_FOOT_CLAWS:
            Matrix_MultVec3f(&D_80B4A298, &this->rightFootPos);
            break;
    }
    if (this->frozenTimer != 0) {
        switch (limbIndex) {
            case ZF_LIMB_HEAD:
                bodyPartIndex = 0;
                break;
            case ZF_LIMB_NECK:
                bodyPartIndex = 1;
                break;
            case ZF_LIMB_ARMOR:
                bodyPartIndex = 2;
                break;
            case ZF_LIMB_FOREARM:
                bodyPartIndex = 3;
                break;
            case ZF_LIMB_LEFT_FOREARM:
                bodyPartIndex = 4;
                break;
            case ZF_LIMB_BODY:
                bodyPartIndex = 5;
                break;
            case ZF_LIMB_RIGHT_HAND_AND_SWORD_ROOT:
                bodyPartIndex = 6;
                break;
            case ZF_LIMB_RIGHT_SHIN:
                bodyPartIndex = 7;
                break;
            case ZF_LIMB_LEFT_SHIN_ROOT:
                bodyPartIndex = 8;
                break;
        }
        if (bodyPartIndex >= 0) {
            Matrix_MultVec3f(&D_80B4A2EC, &this->bodyPartsPos[bodyPartIndex]);
        }
    }
}

void EnZf_Draw(Actor* thisx, PlayState* play) {
    EnZf* this = (EnZf*)thisx;
    s32 bodyPartIndex;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_zf.c", 3533);
    func_8002EBCC(&this->actor, play, 1);
    gSPTexture(D_80B4A2F8, IREG(0), IREG(1), 0, G_TX_RENDERTILE, G_ON);
    gSPSegment(POLY_OPA_DISP++, 8, D_80B4A2F8);
    if (this->alpha == 255) {
        Gfx_SetupDL_25Opa(play->state.gfxCtx);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, this->alpha);
        gSPSegment(POLY_OPA_DISP++, 9, ACTOR_SETUP_OPA_DL);
        POLY_OPA_DISP = SkelAnime_Draw(play, this->skelAnime.skeleton, this->skelAnime.jointTable,
                                       EnZf_OverrideLimbDraw, EnZf_PostLimbDraw, this, POLY_OPA_DISP);
        if (this->frozenTimer != 0) {
            thisx->colorFilterTimer += 1;
            this->frozenTimer--;
            if ((this->frozenTimer & 3) == 0) {
                bodyPartIndex = this->frozenTimer >> 2;
                EffectSsEnIce_SpawnFlyingVec3f(play, &this->actor, &this->bodyPartsPos[bodyPartIndex], 150, 150, 150,
                                               250, 235, 245, 255, 1.4f);
            }
        }
    } else {
        Gfx_SetupDL_25Xlu(play->state.gfxCtx);
        gDPPipeSync(POLY_XLU_DISP++);
        gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, this->alpha);
        gSPSegment(POLY_XLU_DISP++, 9, gActorSetupXluDL);
        POLY_XLU_DISP = SkelAnime_Draw(play, this->skelAnime.skeleton, this->skelAnime.jointTable,
                                       EnZf_OverrideLimbDraw, EnZf_PostLimbDraw, this, POLY_XLU_DISP);
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_zf.c", 3601);
}

void EnZf_SetupCirclePlayer(EnZf* this, f32 speed) {
    Animation_MorphToLoop(&this->skelAnime, &gZfWalkSidewaysAnim, -1.0f);
    this->timer = (Rand_ZeroOne() * 10.0f) + 8.0f;
    if (this->actor.params == ENZF_TYPE_DINOLFOS) {
        this->actor.speed = 2.0f * speed;
        this->timer /= 2;
    } else {
        this->actor.speed = speed;
    }
    this->actionState = 0;
    this->actor.world.rot.y = this->actor.shape.rot.y + 0x3FFF;
    this->action = ENZF_ACTION_CIRCLE_PLAYER;
    EnZf_SetupAction(this, EnZf_CirclePlayer);
}

/**
 * React to projectiles by picking an adequate action.
 * @return true if an action was picked
 */
s32 EnZf_ReactToProjectile(PlayState* play, EnZf* this) {
    Actor* projectile = Actor_GetProjectileActor(play, &this->actor, 600.0f);
    s16 relYawTowardsProjectile;
    s16 noFloorAheadFlags;
    s16 directionFlags;

    if (projectile != NULL) {
        relYawTowardsProjectile =
            Actor_WorldYawTowardActor(&this->actor, projectile) - (s16)(this->actor.shape.rot.y + 0);
        this->actor.world.rot.y = this->actor.shape.rot.y + 0x3FFF;
        noFloorAheadFlags = 0;
        if (EnZf_TestNoFloorAhead(this, play, -8.0f)) {
            noFloorAheadFlags |= 1;
        }
        if (EnZf_TestNoFloorAhead(this, play, 8.0f)) {
            noFloorAheadFlags |= 2;
        }
        this->actor.world.rot.y = this->actor.shape.rot.y;
        if ((((this->actor.xzDistToPlayer < 90.0f) || (noFloorAheadFlags == 3)) &&
             !EnZf_TestNoFloorAhead(this, play, 135.0f)) ||
            (projectile->id == ACTOR_ARMS_HOOK)) {
            EnZf_SetupJumpAttack(this);
        } else {
            this->actor.world.rot.y = this->actor.shape.rot.y + 0x3FFF;
            if (noFloorAheadFlags == 0) {
                directionFlags = play->gameplayFrames & 1;
            } else {
                directionFlags = noFloorAheadFlags;
            }
            if ((ABS(relYawTowardsProjectile) < 0x2000) || (ABS(relYawTowardsProjectile) >= 0x6000)) {
                if (directionFlags & 1) {
                    EnZf_SetupCirclePlayer(this, 8.0f);
                } else {
                    EnZf_SetupCirclePlayer(this, -8.0f);
                }
            } else if (ABS(relYawTowardsProjectile) < 0x5FFF) {
                if (directionFlags & 1) {
                    EnZf_SetupCirclePlayer(this, 4.0f);
                } else {
                    EnZf_SetupCirclePlayer(this, -4.0f);
                }
            }
            //! @bug If ABS(relYawTowardsProjectile) == 0x5FFF the function returns true
            //! even though no action has been chosen
        }
        return true;
    }
    return false;
}

s32 EnZf_ReactToProjectileSetDodgeSpeed(PlayState* play, EnZf* this) {
    Actor* projectile;
    s16 relYawTowardsProjectile;
    s16 noFloorAheadFlags;
    s16 dodgeSpeed;
    s16 dodgeVelocityY;

    dodgeVelocityY = 0;
    projectile = Actor_GetProjectileActor(play, &this->actor, 600.0f);
    if (projectile != NULL) {
        relYawTowardsProjectile =
            Actor_WorldYawTowardActor(&this->actor, projectile) - (s16)(this->actor.shape.rot.y + 0);
        this->actor.world.rot.y = this->actor.shape.rot.y + 0x3FFF;
        noFloorAheadFlags = 0;
        if (EnZf_TestNoFloorAhead(this, play, -70.0f)) {
            noFloorAheadFlags |= 1;
        }
        if (EnZf_TestNoFloorAhead(this, play, 70.0f)) {
            noFloorAheadFlags |= 2;
        }
        this->actor.speed = 0.0f;
        if ((ABS(relYawTowardsProjectile) < 0x2000 || ABS(relYawTowardsProjectile) > 0x5FFF)) {
            if (noFloorAheadFlags == 0) {
                if ((play->gameplayFrames % 2) != 0) {
                    dodgeSpeed = 6;
                } else {
                    dodgeSpeed = -6;
                }
            } else {
                switch (noFloorAheadFlags) {
                    case 1:
                        dodgeSpeed = 6;
                        break;

                    case 2:
                        dodgeSpeed = -6;
                        break;

                    case 3:
                        dodgeVelocityY = 5;
                        dodgeSpeed = 0;
                        break;
                }
            }
        } else if (ABS(relYawTowardsProjectile) < 0x5FFF) {
            if (noFloorAheadFlags == 0) {
                if ((play->gameplayFrames % 2) != 0) {
                    dodgeSpeed = 6;
                } else {
                    dodgeSpeed = -6;
                }
            } else {
                switch (noFloorAheadFlags) {
                    case 1:
                        dodgeSpeed = 6;
                        break;

                    case 2:
                        dodgeSpeed = -6;
                        break;

                    case 3:
                        dodgeVelocityY = 10;
                        dodgeSpeed = 0;
                        break;
                }
            }
        }
        //! @bug if relYawTowardsProjectile is exactly 0x5FFF, dodgeSpeed is used uninitialized
        this->dodgeSpeed = dodgeSpeed;
        this->dodgeVelocityY = dodgeVelocityY;
        return true;
    }
    return false;
}
