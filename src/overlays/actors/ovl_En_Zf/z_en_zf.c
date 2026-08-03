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

s16 EnZf_FindPlatform1__(Vec3f* arg0, s16 arg1);
void EnZf_SetupWaitAppear_(EnZf* this);
void EnZf_WaitAppear_(EnZf* this, PlayState* play);
void EnZf_SetupIdle_(EnZf* this);
void EnZf_Idle_(EnZf* this, PlayState* play);
void EnZf_Setup5_(EnZf* this, PlayState* play);
void EnZf_5_(EnZf* this, PlayState* play);
void EnZf_Setup13_(EnZf* this);
void EnZf_13_(EnZf* this, PlayState* play);
void EnZf_Setup6_(EnZf* this);
void EnZf_6_(EnZf* this, PlayState* play);
void EnZf_Setup7or5___(EnZf* this, PlayState* play);
void EnZf_7_(EnZf* this, PlayState* play);
void EnZf_Setup9_(EnZf* this);
void EnZf_9_(EnZf* this, PlayState* play);
void EnZf_8_(EnZf* this, PlayState* play);
void EnZf_Setup11_(EnZf* this);
void EnZf_11_(EnZf* this, PlayState* play);
void EnZf_14_(EnZf* this, PlayState* play);
void EnZf_Setup18_(EnZf* this, PlayState* play);
void EnZf_18_(EnZf* this, PlayState* play);
void EnZf_Jump20__(EnZf* this, PlayState* play);
void EnZf_SetupJump19__(EnZf* this, PlayState* play);
void EnZf_Jump19__(EnZf* this, PlayState* play);
void EnZf_21_(EnZf* this, PlayState* play);
void EnZf_16_(EnZf* this, PlayState* play);
void EnZf_Setup22_(EnZf* this);
void EnZf_22_(EnZf* this, PlayState* play);
void EnZf_Setup12or5___(EnZf* this, PlayState* play);
void EnZf_CirclePlayer___(EnZf* this, PlayState* play);
void EnZf_SetupDie_(EnZf* this);
void EnZf_Die_(EnZf* this, PlayState* play);
void EnZf_SetupCirclePlayer___(EnZf* this, f32 arg1);
s32 EnZf_ReactToProjectile_(PlayState* play, EnZf* this);
s32 EnZf_ReactToProjectile2_____(PlayState* play, EnZf* this);

typedef enum EnZfAction {
    ENZF_ACTION_WAIT_APPEAR_,
    ENZF_ACTION_IDLE_ = 3,
    ENZF_ACTION_5 = 5,
    ENZF_ACTION_6,
    ENZF_ACTION_7,
    ENZF_ACTION_8,
    ENZF_ACTION_9,
    ENZF_ACTION_11 = 11,
    ENZF_ACTION_CIRCLE_PLAYER___,
    ENZF_ACTION_13,
    ENZF_ACTION_14,
    ENZF_ACTION_DIE_,
    ENZF_ACTION_16,
    ENZF_ACTION_18 = 18,
    ENZF_ACTION_JUMP_19__,
    ENZF_ACTION_JUMP_20__,
    ENZF_ACTION_21,
    ENZF_ACTION_22
} EnZfAction;

static Vec3f D_80B4A090[0x18] = {
    { 3560.0f, 100.0f, -1517.0f }, { 3170.0f, 100.0f, -1767.0f }, { 3165.0f, 100.0f, -2217.0f },
    { 3563.0f, 100.0f, -2437.0f }, { 3946.0f, 100.0f, -2217.0f }, { 3942.0f, 100.0f, -1765.0f },
    { 2861.0f, 100.0f, -2394.0f }, { 2776.0f, 100.0f, -1987.0f }, { 4527.0f, 531.0f, -1146.0f },
    { 4442.0f, 531.0f, -1405.0f }, { 4170.0f, 531.0f, -1395.0f }, { 4030.0f, 531.0f, -1162.0f },
    { 4010.0f, 531.0f, -883.0f },  { 4270.0f, 531.0f, -810.0f },  { 4520.0f, 531.0f, -880.0f },
    { 4260.0f, 531.0f, -1035.0f }, { 4757.0f, 531.0f, -1146.0f }, { 3850.0f, 531.0f, -883.0f },
    { 4380.0f, 531.0f, -690.0f },  { 4197.0f, 531.0f, -646.0f },  { 4070.0f, 531.0f, -1575.0f },
    { 3930.0f, 531.0f, -1705.0f }, { 3780.0f, 531.0f, -1835.0f }, { 3560.0f, 531.0f, -1985.0f },
};
static s16 D_80B4A1B0 = 0;
static s16 D_80B4A1B4 = ENZF_TYPE_1;

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
    ENZF_DMG_REACT_0,
    ENZF_DMG_REACT_1,
    ENZF_DMG_REACT_6 = 6,
    ENZF_DMG_REACT_D = 13,
    ENZF_DMG_REACT_F = 15
} EnZfDamageReaction;

static DamageTable sDamageTable = {
    /* Deku nut      */ DMG_ENTRY(0, ENZF_DMG_REACT_1),
    /* Deku stick    */ DMG_ENTRY(2, ENZF_DMG_REACT_0),
    /* Slingshot     */ DMG_ENTRY(1, ENZF_DMG_REACT_D),
    /* Explosive     */ DMG_ENTRY(2, ENZF_DMG_REACT_0),
    /* Boomerang     */ DMG_ENTRY(0, ENZF_DMG_REACT_1),
    /* Normal arrow  */ DMG_ENTRY(2, ENZF_DMG_REACT_0),
    /* Hammer swing  */ DMG_ENTRY(2, ENZF_DMG_REACT_0),
    /* Hookshot      */ DMG_ENTRY(0, ENZF_DMG_REACT_1),
    /* Kokiri sword  */ DMG_ENTRY(1, ENZF_DMG_REACT_0),
    /* Master sword  */ DMG_ENTRY(2, ENZF_DMG_REACT_0),
    /* Giant's Knife */ DMG_ENTRY(4, ENZF_DMG_REACT_0),
    /* Fire arrow    */ DMG_ENTRY(2, ENZF_DMG_REACT_D),
    /* Ice arrow     */ DMG_ENTRY(4, ENZF_DMG_REACT_F),
    /* Light arrow   */ DMG_ENTRY(2, ENZF_DMG_REACT_D),
    /* Unk arrow 1   */ DMG_ENTRY(2, ENZF_DMG_REACT_D),
    /* Unk arrow 2   */ DMG_ENTRY(2, ENZF_DMG_REACT_D),
    /* Unk arrow 3   */ DMG_ENTRY(2, ENZF_DMG_REACT_D),
    /* Fire magic    */ DMG_ENTRY(0, ENZF_DMG_REACT_6),
    /* Ice magic     */ DMG_ENTRY(3, ENZF_DMG_REACT_F),
    /* Light magic   */ DMG_ENTRY(0, ENZF_DMG_REACT_6),
    /* Shield        */ DMG_ENTRY(0, ENZF_DMG_REACT_0),
    /* Mirror Ray    */ DMG_ENTRY(0, ENZF_DMG_REACT_0),
    /* Kokiri spin   */ DMG_ENTRY(1, ENZF_DMG_REACT_0),
    /* Giant spin    */ DMG_ENTRY(4, ENZF_DMG_REACT_0),
    /* Master spin   */ DMG_ENTRY(2, ENZF_DMG_REACT_0),
    /* Kokiri jump   */ DMG_ENTRY(2, ENZF_DMG_REACT_0),
    /* Giant jump    */ DMG_ENTRY(8, ENZF_DMG_REACT_0),
    /* Master jump   */ DMG_ENTRY(4, ENZF_DMG_REACT_0),
    /* Unknown 1     */ DMG_ENTRY(0, ENZF_DMG_REACT_0),
    /* Unblockable   */ DMG_ENTRY(0, ENZF_DMG_REACT_0),
    /* Hammer jump   */ DMG_ENTRY(4, ENZF_DMG_REACT_0),
    /* Unknown 2     */ DMG_ENTRY(0, ENZF_DMG_REACT_0),
};
static InitChainEntry sInitChain[3] = {
    ICHAIN_F32(lockOnArrowOffset, 2000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 15, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -3500, ICHAIN_STOP),
};
static AnimationHeader* D_80B4A280[] = {
    &gZfJumpAnim___,
    &gZfAirborneAnim___,
    &gZfLandFromJumpAnim__,
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

void EnZf_SetupAction(EnZf* this, void (*actionFunc)(EnZf*, PlayState*)) {
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
s32 EnZf_TestNoFloorAhead_(EnZf* this, PlayState* play, f32 distance) {
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
        if (this->actor.params >= 0) { // ENZF_TYPE_0, ENZF_TYPE_1
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
 * Note: uses shape.rot.y
 */
s16 EnZf_TestNoFloorAhead2_(EnZf* this, PlayState* play, f32 distance) {
    s16 ret;
    s16 prevBgCheckFlags;
    f32 dx;
    f32 dz;
    Vec3f prevPos;

    if ((this->actor.speed != 0.0f) && EnZf_TestNoFloorAhead_(this, play, this->actor.speed)) {
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
    Player* player;
    EffectBlureInit1 swordBlure;
    EnZf* this = (EnZf*)thisx;

    player = GET_PLAYER(play);
    Actor_ProcessInitChain(&this->actor, sInitChain);
    this->actor.attentionRangeType = ATTENTION_RANGE_3;
    this->switchFlag = PARAMS_GET_S(thisx->params, 8, 8);
    this->actor.params = PARAMS_GET_U(this->actor.params, 0, 8);
    // Sign-extend the params low byte
    if (this->actor.params & 0x80) {
        this->actor.params |= 0xFF00;
    }
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFeet, 90.0f);
    this->unk3E0 = 0;
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
    this->alpha_ = 255;
    this->actor.colChkInfo.cylRadius = 40;
    this->actor.colChkInfo.cylHeight = 100;
    Collider_InitCylinder(play, &this->bodyCollider);
    Collider_SetCylinder(play, &this->bodyCollider, &this->actor, &sBodyCylinderInit);
    Collider_InitQuad(play, &this->swordCollider);
    Collider_SetQuad(play, &this->swordCollider, &this->actor, &sSwordColliderQuadInit);
    if (this->actor.params == ENZF_TYPE_DINOLFOS) {
        this->actor.colChkInfo.health = 12;
        this->actor.naviEnemyId = NAVI_ENEMY_DINOLFOS;
        SkelAnime_Init(play, &this->skelAnime, &gDinolfosSkel, &gZfTaunt2Anim_____, this->jointTable, this->morphTable,
                       ZF_LIMB_MAX);
    } else {
        this->actor.colChkInfo.health = 6;
        this->actor.naviEnemyId = NAVI_ENEMY_LIZALFOS;
        SkelAnime_Init(play, &this->skelAnime, &gLizalfosSkel, &gZfTaunt2Anim_____, this->jointTable, this->morphTable,
                       ZF_LIMB_MAX);
    }
    if (this->actor.params < 0) { // ENZF_TYPE_DINOLFOS, ENZF_TYPE_NEG1
        this->unk400 = this->unk3FE = -1;
        D_80B4A1B4 = ENZF_TYPE_NEG1;
        this->actionState_ = 1;
        if (this->actor.params == ENZF_TYPE_NEG1) {
            EnZf_SetupWaitAppear_(this);
        } else { // ENZF_TYPE_DINOLFOS
            EnZf_SetupIdle_(this);
        }
    } else {
        yDiff = player->actor.world.pos.y - this->actor.world.pos.y;
        if ((ABS(yDiff) <= 100.0f) && !Flags_GetSwitch(play, this->switchFlag)) {
            this->unk400 = this->unk3FE = EnZf_FindPlatform1__(&this->actor.world.pos, 0);
            EnZf_SetupWaitAppear_(this);
            D_80B4A1B4 = ENZF_TYPE_1;
        } else {
            Actor_Kill(&this->actor);
        }
    }
}

void EnZf_Destroy(Actor* thisx, PlayState* play) {
    EnZf* this = (EnZf*)thisx;

    if ((this->actor.params >= 0) /* ENZF_TYPE_0, ENZF_TYPE_1 */ &&
        (Actor_FindNearby(play, &this->actor, ACTOR_EN_ZF, ACTORCAT_ENEMY, 10000.0f) == NULL)) {
        func_800F5B58();
    }
    Effect_Delete(play, this->swordBlureEffectIndex);
    Collider_DestroyCylinder(play, &this->bodyCollider);
    Collider_DestroyQuad(play, &this->swordCollider);
}

s16 EnZf_FindPlatform1__(Vec3f* pos, s16 preferred) {
    Vec3f* platformPos;
    f32 range;
    s16 i;

    range = 210.0f;
    if (pos->y >= 420.0f) {
        range = 110.0f;
    }
    if (preferred != -1) {
        platformPos = &D_80B4A090[preferred];
        if (((platformPos->y - 150.0f) <= pos->y) && (pos->y <= (platformPos->y + 150.0f)) &&
            ((platformPos->x - range) <= pos->x) && (pos->x <= (platformPos->x + range)) &&
            ((platformPos->z - range) <= pos->z) && (pos->z <= (platformPos->z + range))) {
            return preferred;
        }
    }
    for (i = ARRAY_COUNT(D_80B4A090) - 1; i >= 0; i--) {
        platformPos = &D_80B4A090[i];
        if (((platformPos->y - 150.0f) <= pos->y) && (pos->y <= (platformPos->y + 150.0f)) &&
            ((platformPos->x - range) <= pos->x) && (pos->x <= (platformPos->x + range)) &&
            ((platformPos->z - range) <= pos->z) && (pos->z <= (platformPos->z + range))) {
            break;
        }
    }
    return i;
}

s16 EnZf_FindPlatform2__(Vec3f* arg0, s16 arg1, s16 arg2, PlayState* play) {
    Vec3f* temp_s0;
    f32 temp_fv0;
    f32 var_fs0;
    f32 var_fs1;
    f32 var_fs2;
    f32 var_fs3;
    s16 temp_s0_2;
    s16 temp_s3;
    s16 temp_v1;
    s16 var_s0;
    s16 var_s4;
    s16 var_s5;
    s32 var_s7; // s6 in gc-eu-mq
    Player* player = GET_PLAYER(play);

    var_fs2 = 585.0f;
    var_fs3 = 400.0f;
    var_fs0 = 99998.0f;
    var_s0 = 5;
    var_s7 = 0;
    var_fs1 = 99999.0f;
    var_s4 = var_s5 = -1;
    temp_s3 = EnZf_FindPlatform1__(&player->actor.world.pos, arg1);
    if (arg0->y > 420.0f) {
        var_fs3 = 50.0f;
        var_s7 = 8;
        if (arg1 >= 0xF) {
            var_fs2 = 400.0f;
            var_s0 = 0x17;
        } else {
            var_fs2 = 380.0f;
            var_s0 = 0xE;
        }
    }
    for (; var_s0 >= var_s7; var_s0--) {
#if !DEBUG_FEATURES
        if (0) {}
#endif
        if (var_s0 == arg1) {
            continue;
        }
        if (var_s0 == temp_s3) {
            continue;
        }
        if (((temp_s3 == -1) && ((Math_Vec3f_DistXYZ(&player->actor.world.pos, &D_80B4A090[var_s0]) < var_fs3)))) {
            continue;
        }
        temp_fv0 = Math_Vec3f_DistXYZ(arg0, &D_80B4A090[var_s0]);
        if ((var_fs2 < temp_fv0)) {
            continue;
        }
        if (temp_fv0 < var_fs0) {
            var_fs1 = var_fs0;
            var_s4 = var_s5;
            var_fs0 = temp_fv0;
            var_s5 = var_s0;
        } else if (temp_fv0 < var_fs1) {
            var_fs1 = temp_fv0;
            var_s4 = var_s0;
        }
    }

    temp_s0 = &D_80B4A090[var_s5];

    //! @bug `var_s4` can be -1 in certain conditions and cause an out of bounds access.
    //! Under normal conditions, this doesn't cause problems because the data before `D_80B4A090`
    //! is section padding between .text and .data, so 0 gets read as a float.
    // These two function calls do nothing. Their return values aren't used and they have no side effects.
#ifndef AVOID_UB
    Math_Vec3f_DistXYZ(&player->actor.world.pos, temp_s0);
    Math_Vec3f_DistXYZ(&player->actor.world.pos, &D_80B4A090[var_s4]);
#endif

    if (var_s4 > 0) {
        temp_s0_2 = Math_Vec3f_Yaw(arg0, temp_s0);
        temp_v1 = temp_s0_2 - Math_Vec3f_Yaw(arg0, &player->actor.world.pos);
        if (ABS(temp_v1) < 0x36B0) {
            var_s5 = var_s4;
        }
    }
    if (var_s5 < 0) {
        var_s5 = arg2;
    }
    return var_s5;
}

s32 EnZf_FindPlatform3__(Vec3f* arg0, s16 arg1, s16 arg2, PlayState* play) {
    Vec3f* temp_s0;
    f32 temp_fv0;
    f32 var_fs0;
    f32 var_fs1;
    f32 var_fs2;
    s16 temp_fp;
    s16 var_s1;
    s16 var_s2;
    s16 var_s3;
    s16 var_fp;
    s32 var_s4;
    Player* player = GET_PLAYER(play);

    var_s1 = 7;
    var_s4 = 0;
    var_fp = EnZf_FindPlatform1__(&player->actor.world.pos, -1);
    var_fs2 = 500.0f;
    var_fs0 = 99998.0f;
    var_fs1 = 99999.0f;
    var_s2 = arg1;
    var_s3 = arg2;
    if (arg0->y > 200.0f) {
        var_fs2 = 290.0f;
        var_s1 = 0x17;
        var_s4 = 8;
    }
    for (; var_s1 >= var_s4; var_s1--) {
        if (var_fs2 < Math_Vec3f_DistXYZ(arg0, &D_80B4A090[var_s1])) {
            continue;
        }
        if (var_s1 != var_fp) {
            temp_fv0 = Math_Vec3f_DistXYZ(&player->actor.world.pos, &D_80B4A090[var_s1]);
            if (temp_fv0 < var_fs0) {
                var_fs1 = var_fs0;
                var_s3 = var_s2;
                var_fs0 = temp_fv0;
                var_s2 = var_s1;
            } else if (temp_fv0 < var_fs1) {
                var_fs1 = temp_fv0;
                var_s3 = var_s1;
            }
        } else {
            var_s2 = var_fp;
            break;
        }
    }

    if (var_s3 != var_fp) {
        var_fp = var_s2;
    } else {
        var_fp = var_s3;
    }
    return var_fp;
}

s32 func_80B44CF0(PlayState* play, EnZf* this) {
    s32 pad;
    Player* player;
    Actor* playerFocusActor;

    player = GET_PLAYER(play);
    if (this->actor.params >= 0) { // ENZF_TYPE_0, ENZF_TYPE_1
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

void func_80B44DC4(EnZf* this, PlayState* play) {
    s16 relYawTowardsPlayer;

    relYawTowardsPlayer = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    relYawTowardsPlayer = ABS(relYawTowardsPlayer);
    if (relYawTowardsPlayer >= 0x1B58) {
        EnZf_Setup12or5___(this, play);
    } else if ((this->actor.xzDistToPlayer <= 100.0f) && ((play->gameplayFrames % 8) != 0) &&
               func_80B44CF0(play, this)) {
        EnZf_Setup9_(this);
    } else {
        EnZf_SetupIdle_(this);
    }
}

s32 EnZf_PickAction_(PlayState* play, EnZf* this) {
    s16 absRelWallYaw;
    Actor* explosive;

    absRelWallYaw = this->actor.wallYaw - this->actor.shape.rot.y;
    absRelWallYaw = ABS(absRelWallYaw);
    if (func_800354B4(play, &this->actor, 100.0f, 0x5DC0, 0x2AA8, this->actor.shape.rot.y) != 0) {
        this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
        if ((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) && (ABS(absRelWallYaw) < 0x2EE0) &&
            (this->actor.xzDistToPlayer < 80.0f)) {
            EnZf_Setup22_(this);
        } else if ((this->actor.xzDistToPlayer < 90.0f) && ((play->gameplayFrames % 2) != 0)) {
            EnZf_Setup22_(this);
        } else {
            EnZf_Setup11_(this);
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
                EnZf_Setup22_(this);
            } else {
                EnZf_SetupCirclePlayer___(this, 4.0f);
            }
        } else {
            EnZf_Setup11_(this);
        }
        return true;
    }
    return false;
}

void EnZf_SetupWaitAppear_(EnZf* this) {
    Animation_Change(&this->skelAnime, &gZfTauntAnim_____, 0.0f, 9.0f, Animation_GetLastFrame(&gZfTauntAnim_____),
                     ANIMMODE_LOOP, 0.0f);
    this->actor.world.pos.y = this->actor.floorHeight + 300.0f;
    this->alpha_ = this->actor.shape.shadowAlpha = 0;
    this->timer_ = 10;
    this->actionState_ = 1;
    this->action = ENZF_ACTION_WAIT_APPEAR_;
    this->actor.bgCheckFlags &= ~BGCHECKFLAG_GROUND_TOUCH;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    EnZf_SetupAction(this, EnZf_WaitAppear_);
}

void EnZf_WaitAppear_(EnZf* this, PlayState* play) {
    if (this->timer_ == 1) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
        this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
        if (this->actor.params == ENZF_TYPE_0) {
            func_800F5ACC(NA_BGM_MINI_BOSS);
        }
    }
    if (this->timer_ != 0) {
        if (this->actor.params != ENZF_TYPE_NEG1) {
            this->timer_--;
        } else if (this->actor.xzDistToPlayer <= 160.0f) {
            this->timer_ = 0;
            this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
        }
        this->actor.world.pos.y = this->actor.floorHeight + 300.0f;
    } else {
        if (this->alpha_ < 255) {
            this->alpha_ += 51;
        }
    }
    if ((this->actor.bgCheckFlags & (BGCHECKFLAG_GROUND | BGCHECKFLAG_GROUND_TOUCH)) && (this->actionState_ != 0)) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_ONGND);
        Animation_Change(&this->skelAnime, &gZfLandFromAppearingAnim__, 1.0f, 0.0f, 17.0f, ANIMMODE_ONCE, 0.0f);
        this->actionState_ = 0;
        this->actor.bgCheckFlags &= ~BGCHECKFLAG_GROUND_TOUCH;
        this->actor.world.pos.y = this->actor.floorHeight;
        this->actor.velocity.y = 0.0f;
        Actor_SpawnFloorDustRing(play, &this->actor, &this->unk4F0, 3.0f, 2, 2.0f, 0, 0, false);
        Actor_SpawnFloorDustRing(play, &this->actor, &this->unk4E4, 3.0f, 2, 2.0f, 0, 0, false);
    }
    if (SkelAnime_Update(&this->skelAnime)) {
        this->alpha_ = 255;
        if (this->actor.params > 0) { // ENZF_TYPE_1
            EnZf_Setup18_(this, play);
        } else {
            EnZf_SetupIdle_(this);
        }
    }
    this->actor.shape.shadowAlpha = this->alpha_;
}

void EnZf_SetupIdle_(EnZf* this) {
    Animation_Change(&this->skelAnime, &gZfTaunt2Anim_____, 1.0f, 0.0f, Animation_GetLastFrame(&gZfTaunt2Anim_____),
                     ANIMMODE_LOOP_INTERP, -4.0f);
    this->action = ENZF_ACTION_IDLE_;
    this->timer_ = (Rand_ZeroOne() * 10.0f) + 5.0f;
    this->actor.speed = 0.0f;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    EnZf_SetupAction(this, EnZf_Idle_);
}

void EnZf_Idle_(EnZf* this, PlayState* play) {
    Player* player;
    s32 pad;
    s16 absYawTowardsPlayerRelToHead;
    s16 absYawDiffWithPlayer;

    player = GET_PLAYER(play);
    absYawTowardsPlayerRelToHead = this->actor.yawTowardsPlayer - this->headRot - this->actor.shape.rot.y;
    absYawTowardsPlayerRelToHead = ABS(absYawTowardsPlayerRelToHead);
    SkelAnime_Update(&this->skelAnime);
    if (!EnZf_ReactToProjectile_(play, this)) {
        if (this->actor.params == ENZF_TYPE_DINOLFOS) {
            if (this->timer2_ != 0) {
                this->timer2_--;
                if (absYawTowardsPlayerRelToHead < 0x1FFE) {
                    this->timer2_ = 0;
                } else {
                    return;
                }
            } else if (EnZf_PickAction_(play, this)) {
                return;
            }
        }
        absYawDiffWithPlayer = player->actor.shape.rot.y - this->actor.shape.rot.y;
        absYawDiffWithPlayer = ABS(absYawDiffWithPlayer);
        if ((this->actor.xzDistToPlayer < 100.0f) && (player->meleeWeaponState != 0) &&
            (absYawDiffWithPlayer >= 0x1F40)) {
            this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
            if (absYawDiffWithPlayer) {}
            EnZf_Setup12or5___(this, play);
        } else if (this->timer_ != 0) {
            this->timer_--;
        } else {
            if (Actor_IsFacingPlayer(&this->actor, 0x1555)) {
                if ((this->actor.xzDistToPlayer < 200.0f) && (this->actor.xzDistToPlayer > 100.0f) &&
                    (Rand_ZeroOne() < 0.3f)) {
                    if (this->actor.params == ENZF_TYPE_DINOLFOS) {
                        this->actor.world.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
                        EnZf_Setup13_(this);
                    } else {
                        EnZf_Setup12or5___(this, play);
                    }
                } else if (Rand_ZeroOne() > 0.3f) {
                    EnZf_Setup5_(this, play);
                } else {
                    EnZf_Setup12or5___(this, play);
                }
            } else {
                EnZf_Setup6_(this);
            }
            if ((play->gameplayFrames & 0x5F) == 0) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
            }
        }
    }
}

void EnZf_Setup5_(EnZf* this, PlayState* play) {
    Animation_MorphToLoop(&this->skelAnime, &gZfWalkAnim_, -4.0f);
    this->action = ENZF_ACTION_5;
    if (this->actor.params >= 0) { // ENZF_TYPE_0, ENZF_TYPE_1
        this->unk3FE = EnZf_FindPlatform1__(&this->actor.world.pos, this->unk3FE);
        this->unk402 = EnZf_FindPlatform3__(&this->actor.world.pos, this->unk3FE, this->unk400, play);
        this->actionState_ = 0;
    }
    this->actor.speed = 0.0f;
    EnZf_SetupAction(this, EnZf_5_);
}

void EnZf_5_(EnZf* this, PlayState* play) {
    s32 prevFrame;
    s32 beforeCurFrame;
    s32 pad1;
    s16 var_v1;
    s16 sp48;
    f32 sp44;
    f32 sp40;
    Player* player;
    f32 absPlaySpeed;

    sp48 = -1;
    sp44 = 350.0f;
    sp40 = 0.0f;
    player = GET_PLAYER(play);
    if (this->actor.params >= 0) { // ENZF_TYPE_0, ENZF_TYPE_1
        sp48 = EnZf_FindPlatform1__(&player->actor.world.pos, -1);
        this->unk3FE = EnZf_FindPlatform1__(&this->actor.world.pos, sp48);
        if (this->actor.world.pos.y >= 420.0f) {
            sp44 = 270.0f;
        }
    }
    if (!EnZf_ReactToProjectile_(play, this)) {
        if (sp48 != this->unk3FE) {
            this->unk402 = EnZf_FindPlatform3__(&this->actor.world.pos, this->unk3FE, this->unk400, play);
            if ((sp48 < 0) && (this->unk402 == this->unk3FE)) {
                sp48 = this->unk3FE;
                this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
            } else {
                this->actor.world.rot.y = this->actor.yawTowardsPlayer = this->actor.shape.rot.y =
                    Actor_WorldYawTowardPoint(&this->actor, &D_80B4A090[this->unk402]);
                var_v1 = this->actor.wallYaw - this->actor.shape.rot.y;
                if (var_v1 < 0) {
                    var_v1 *= -1;
                }
                if ((this->unk3F8 && (this->actor.speed > 0.0f)) ||
                    ((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) && (var_v1 >= 0x5C19))) {
                    if ((Actor_WorldDistXZToPoint(&this->actor, &D_80B4A090[this->unk402]) < sp44) &&
                        !EnZf_TestNoFloorAhead_(this, play, 191.9956f)) {
                        EnZf_Setup13_(this);
                        if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
                            this->actor.velocity.y = 20.0f;
                        }
                        return;
                    } else {
                        this->actor.world.rot.y = Actor_WorldYawTowardPoint(&this->actor, &D_80B4A090[this->unk3FE]);
                    }
                } else {
                    this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
                    Math_SmoothStepToF(&this->actor.speed, 8.0f, 1.0f, 1.5f, 0.0f);
                }
            }
        }
        if (Actor_OtherIsLockedOn(play, &this->actor)) {
            sp40 = 100.0f;
        }
        if (this->actor.xzDistToPlayer <= (70.0f + sp40)) {
            Math_SmoothStepToF(&this->actor.speed, -8.0f, 1.0f, 0.5f, 0.0f);
        } else {
            Math_SmoothStepToF(&this->actor.speed, 8.0f, 1.0f, 0.5f, 0.0f);
        }
        this->skelAnime.playSpeed = this->actor.speed * 1.2f;
        var_v1 = player->actor.shape.rot.y - this->actor.shape.rot.y;
        if (var_v1 < 0) {
            var_v1 *= -1;
        }
        if ((sp48 == this->unk3FE) && (this->actor.xzDistToPlayer < 150.0f) && (player->meleeWeaponState != 0) &&
            (var_v1 >= 0x1F40)) {
            this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
            if (Rand_ZeroOne() > 0.7f) {
                EnZf_Setup12or5___(this, play);
                return;
            }
        }
        prevFrame = (s32)this->skelAnime.curFrame;
        SkelAnime_Update(&this->skelAnime);
        beforeCurFrame = (s32)(this->skelAnime.curFrame - ABS(this->skelAnime.playSpeed));
        absPlaySpeed = ((void)0, ABS(this->skelAnime.playSpeed)); //! FAKE
        if (sp48 == this->unk3FE) {
            if (Actor_IsFacingPlayer(&this->actor, 0x11C7) == 0) {
                if (Rand_ZeroOne() > 0.5f) {
                    EnZf_Setup7or5___(this, play);
                } else {
                    EnZf_SetupIdle_(this);
                }
            } else if (this->actor.xzDistToPlayer < 100.0f) {
                if ((Rand_ZeroOne() > 0.05f) && func_80B44CF0(play, this)) {
                    EnZf_Setup9_(this);
                } else if (Rand_ZeroOne() > 0.5f) {
                    EnZf_Setup12or5___(this, play);
                } else {
                    EnZf_SetupIdle_(this);
                }
            } else if (this->unk3F8) {
                EnZf_Setup7or5___(this, play);
            } else if (Rand_ZeroOne() < 0.1f) {
                EnZf_SetupIdle_(this);
            }
        }
        if (this->actor.params == ENZF_TYPE_DINOLFOS) {
            if (!EnZf_PickAction_(play, this)) {
                if ((this->actor.xzDistToPlayer < 180.0f) && (this->actor.xzDistToPlayer > 160.0f) &&
                    Actor_IsFacingPlayer(&this->actor, 0x71C)) {
                    if (Actor_IsLockedOn(play, &this->actor)) {
                        if (Rand_ZeroOne() < 0.1f) {
                            this->actor.world.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
                            EnZf_Setup13_(this);
                            return;
                        }
                    } else {
                        EnZf_Setup12or5___(this, play);
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
             ((beforeCurFrame < 0x20) && (((s32)absPlaySpeed + prevFrame) >= 0x22)))) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_WALK);
        }
    }
}

void EnZf_Setup13_(EnZf* this) {
    Animation_Change(&this->skelAnime, &gZfTauntAnim_____, 1.0f, 0.0f, 3.0f, ANIMMODE_ONCE, -3.0f);
    this->timer_ = 0;
    this->actionState_ = 1;
    this->actor.velocity.y = 15.0f;
    if (this->actor.params >= 0) { // ENZF_TYPE_0, ENZF_TYPE_1
        this->actor.speed = 16.0f;
    } else {
        this->actor.speed = 10.0f;
    }
    this->action = ENZF_ACTION_13;
    Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_JUMP);
    EnZf_SetupAction(this, EnZf_13_);
}

void EnZf_13_(EnZf* this, PlayState* play) {
    if (this->timer_ != 0) {
        if (this->actor.world.pos.y <= this->actor.floorHeight) {
            this->actor.world.pos.y = this->actor.floorHeight;
            this->actionState_ = 0;
            this->actor.velocity.y = 0.0f;
            this->actor.speed = 0.0f;
        }
    }
    if (SkelAnime_Update(&this->skelAnime)) {
        if (this->timer_ == 0) {
            Animation_Change(&this->skelAnime, &gZfLandFromAppearingAnim__, 3.0f, 0.0f, 17.0f, ANIMMODE_ONCE, -3.0f);
            this->timer_ = 10;
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_JUMP);
        } else {
            this->actor.speed = 0.0f;
            this->actionState_ = 0;
            EnZf_Setup5_(this, play);
        }
    }
    if ((play->gameplayFrames & 0x5F) == 0) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
    }
    if ((this->actor.params == ENZF_TYPE_DINOLFOS) &&
        ((this->actor.bgCheckFlags & (BGCHECKFLAG_GROUND | BGCHECKFLAG_GROUND_TOUCH)) != 0)) {
        if (func_80B44CF0(play, this)) {
            EnZf_Setup9_(this);
        } else {
            EnZf_Setup12or5___(this, play);
        }
    }
}

void EnZf_Setup6_(EnZf* this) {
    Animation_MorphToLoop(&this->skelAnime, &gZfWalkAnim_, -4.0f);
    this->action = ENZF_ACTION_6;
    EnZf_SetupAction(this, EnZf_6_);
}

void EnZf_6_(EnZf* this, PlayState* play) {
    s32 pad;
    s16 temp_v0;
    s16 var_v1;
    Player* player;
    f32 var_fv1;

    player = GET_PLAYER(play);
    if (!EnZf_ReactToProjectile_(play, this) &&
        ((this->actor.params != ENZF_TYPE_DINOLFOS) || !EnZf_PickAction_(play, this))) {
        temp_v0 = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
        if (temp_v0 > 0) {
            var_v1 = (temp_v0 * 0.25f) + 2000.0f;
        } else {
            var_v1 = (temp_v0 * 0.25f) - 2000.0f;
        }
        this->actor.shape.rot.y += var_v1;
        this->actor.world.rot.y = this->actor.shape.rot.y;
        if (temp_v0 > 0) {
            var_fv1 = var_v1 * 1.5f;
            if (var_fv1 > 2.0f) {
                var_fv1 = 2.0f;
            }
        } else {
            var_fv1 = var_v1 * 1.5f;
            if (var_fv1 < -2.0f) {
                var_fv1 = -2.0f;
            }
        }
        this->skelAnime.playSpeed = -var_fv1;
        SkelAnime_Update(&this->skelAnime);
        if (this->actor.params >= 0) { // ENZF_TYPE_0, ENZF_TYPE_1
            this->unk3FE = EnZf_FindPlatform1__(&this->actor.world.pos, this->unk3FE);
            if (EnZf_FindPlatform1__(&player->actor.world.pos, -1) != this->unk3FE) {
                EnZf_Setup5_(this, play);
                return;
            }
        }
        if (Actor_IsFacingPlayer(&this->actor, 0x1555) != 0) {
            if (Rand_ZeroOne() > 0.8f) {
                EnZf_Setup7or5___(this, play);
            } else {
                EnZf_Setup5_(this, play);
            }
        }
        if ((play->gameplayFrames & 0x5F) == 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
        }
    }
}

void EnZf_Setup7or5___(EnZf* this, PlayState* play) {
    if ((this->actor.params < 0) /* ENZF_TYPE_DINOLFOS, ENZF_TYPE_NEG1 */ ||
        Actor_TestFloorInDirection(&this->actor, play, 40.0f, this->actor.shape.rot.y + 0x3FFF) ||
        Actor_TestFloorInDirection(&this->actor, play, -40.0f, this->actor.shape.rot.y + 0x3FFF)) {
        Animation_PlayLoop(&this->skelAnime, &gZfCautiousWalkAnim___);
        this->actor.speed = Rand_CenteredFloat(12.0f);
        this->actor.world.rot.y = this->actor.shape.rot.y;
        this->timer_ = (Rand_ZeroOne() * 10.0f) + 20.0f;
        this->actionState_ = 0;
        this->action = ENZF_ACTION_7;
        this->dodgeSpeed___ = 0.0f;
        EnZf_SetupAction(this, EnZf_7_);
    } else {
        EnZf_Setup5_(this, play);
    }
}

void EnZf_7_(EnZf* this, PlayState* play) {
    s16 sp56;
    s32 beforeCurFrame;
    s32 prevFrame;
    s32 pad;
    f32 absPlaySpeed;
    Player* player;
    f32 sp3C;
    s16 var_v0_3_real;

    player = GET_PLAYER(play);
    sp3C = 0.0f;
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0xFA0, 1);
    if (!EnZf_ReactToProjectile_(play, this) &&
        ((this->actor.params != ENZF_TYPE_DINOLFOS) || !EnZf_PickAction_(play, this))) {
        this->actor.world.rot.y = this->actor.shape.rot.y + 0x3A98;
        sp56 = player->actor.shape.rot.y + 0x8000;
        if (Math_SinS(sp56 - this->actor.shape.rot.y) >= 0.0f) {
            this->actor.speed -= 0.25f;
            if (this->actor.speed < -8.0f) {
                this->actor.speed = -8.0f;
            }
        } else if (Math_SinS(sp56 - this->actor.shape.rot.y) < 0.0f) {
            this->actor.speed += 0.25f;
            if (this->actor.speed > 8.0f) {
                this->actor.speed = 8.0f;
            }
        }
        if (this->actor.params >= 0) { // ENZF_TYPE_0, ENZF_TYPE_1
            if (this->unk3F8) {
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
        if (Actor_OtherIsLockedOn(play, &this->actor) != 0) {
            sp3C = 100.0f;
        }
        if (this->actor.xzDistToPlayer <= (70.0f + sp3C)) {
            Math_SmoothStepToF(&this->dodgeSpeed___, -4.0f, 1.0f, 1.5f, 0.0f);
        } else if ((90.0f + sp3C) < this->actor.xzDistToPlayer) {
            Math_SmoothStepToF(&this->dodgeSpeed___, 4.0f, 1.0f, 1.5f, 0.0f);
        } else {
            Math_SmoothStepToF(&this->dodgeSpeed___, 0.0f, 1.0f, 5.65f, 0.0f);
        }
        if ((this->dodgeSpeed___ != 0.0f) && !EnZf_TestNoFloorAhead2_(this, play, this->dodgeSpeed___)) {
            this->actor.world.pos.x += Math_SinS(this->actor.shape.rot.y) * this->dodgeSpeed___;
            this->actor.world.pos.z += Math_CosS(this->actor.shape.rot.y) * this->dodgeSpeed___;
        }
        if (ABS(this->actor.speed) >= ABS(this->dodgeSpeed___)) {
            this->skelAnime.playSpeed = this->actor.speed * 0.75f;
        } else if (this->skelAnime.playSpeed < 0.0f) {
            this->skelAnime.playSpeed = this->dodgeSpeed___ * -0.75f;
        } else {
            this->skelAnime.playSpeed = this->dodgeSpeed___ * 0.75f;
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
        if ((Math_CosS(sp56 - this->actor.shape.rot.y) < -0.85f) || (this->timer_ == 0)) {
            this->actor.world.rot.y = this->actor.shape.rot.y;
            if ((this->actor.xzDistToPlayer <= 100.0f) && ((play->gameplayFrames % 4) == 0) &&
                func_80B44CF0(play, this)) {
                EnZf_Setup9_(this);
            } else {
                EnZf_SetupIdle_(this);
            }
        } else if (this->timer_ != 0) {
            this->timer_--;
        }
    }
}

void EnZf_Setup9_(EnZf* this) {
    Animation_Change(&this->skelAnime, &gZfSlashAnim, 1.25f, 0.0f, Animation_GetLastFrame(&gZfSlashAnim), ANIMMODE_ONCE,
                     -4.0f);
    if (this->actor.params == ENZF_TYPE_DINOLFOS) {
        this->skelAnime.playSpeed = 1.75f;
    }
    this->swordCollider.base.atFlags &= ~AT_BOUNCED;
    this->action = ENZF_ACTION_9;
    Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
    this->actor.speed = 0.0f;
    EnZf_SetupAction(this, EnZf_9_);
}

void EnZf_9_(EnZf* this, PlayState* play) {
    Player* player;
    s16 var_v0;
    s16 var_v0_2;

    player = GET_PLAYER(play);
    this->actor.speed = 0.0f;
    if ((s32)this->skelAnime.curFrame == 10) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_ATTACK);
    }
    if (SkelAnime_Update(&this->skelAnime)) {
        EffectBlure_AddSpace(Effect_GetByIndex(this->swordBlureEffectIndex));
        if ((this->actor.params == ENZF_TYPE_DINOLFOS) && !Actor_IsFacingPlayer(&this->actor, 0x1554)) {
            EnZf_SetupIdle_(this);
            this->timer_ = (Rand_ZeroOne() * 5.0f) + 5.0f;
            this->timer2_ = (Rand_ZeroOne() * 20.0f) + 100.0f;
        } else if ((Rand_ZeroOne() > 0.7f) || (this->actor.xzDistToPlayer >= 120.0f)) {
            EnZf_SetupIdle_(this);
            this->timer_ = (Rand_ZeroOne() * 5.0f) + 5.0f;
        } else {
            this->actor.world.rot.y = this->actor.yawTowardsPlayer;
            if (Rand_ZeroOne() > 0.7f) {
                EnZf_Setup12or5___(this, play);
            } else {
                var_v0 = player->actor.shape.rot.y - this->actor.shape.rot.y;
                var_v0 = ABS(var_v0);
                if (var_v0 <= 0x2710) {
                    var_v0_2 = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
                    var_v0_2 = ABS(var_v0_2);
                    if (var_v0_2 > 0x3E80) {
                        this->actor.world.rot.y = this->actor.yawTowardsPlayer;
                        EnZf_Setup12or5___(this, play);
                    } else if (player->stateFlags1 &
                               (PLAYER_STATE1_HOSTILE_LOCK_ON | PLAYER_STATE1_13 | PLAYER_STATE1_14)) {
                        if (this->actor.isLockedOn != 0) {
                            EnZf_Setup9_(this);
                        } else {
                            EnZf_Setup12or5___(this, play);
                        }
                    } else {
                        EnZf_Setup9_(this);
                    }
                } else {
                    EnZf_Setup12or5___(this, play);
                }
            }
        }
    }
}

void EnZf_Setup8_(EnZf* this) {
    f32 f = this->skelAnime.curFrame - 3.0f;

    Animation_Change(&this->skelAnime, &gZfSlashAnim, -1.0f, f, 0.0f, ANIMMODE_ONCE, 0.0f);
    this->action = ENZF_ACTION_8;
    EnZf_SetupAction(this, EnZf_8_);
}

void EnZf_8_(EnZf* this, PlayState* play) {
    if (SkelAnime_Update(&this->skelAnime)) {
        if (Rand_ZeroOne() > 0.7f) {
            EnZf_SetupIdle_(this);
        } else if ((Rand_ZeroOne() > 0.2f) && func_80B44CF0(play, this)) {
            EnZf_Setup9_(this);
        } else {
            EnZf_Setup12or5___(this, play);
        }
    }
}

void EnZf_Setup11_(EnZf* this) {
    Animation_Change(&this->skelAnime, &gZfTauntAnim_____, -1.0f, 3.0f, 0.0f, ANIMMODE_ONCE, -3.0f);
    this->timer_ = 0;
    this->actionState_ = 1;
    this->action = ENZF_ACTION_11;
    this->actor.velocity.y = 15.0f;
    this->actor.speed = -15.0f;
    Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_JUMP);
    EnZf_SetupAction(this, EnZf_11_);
}

void EnZf_11_(EnZf* this, PlayState* play) {
    if (this->timer_ != 0) {
        if (this->actor.world.pos.y <= this->actor.floorHeight) {
            this->actor.world.pos.y = this->actor.floorHeight;
            this->actionState_ = 0;
            this->actor.velocity.y = 0.0f;
            this->actor.speed = 0.0f;
        }
    }
    if (SkelAnime_Update(&this->skelAnime)) {
        if (this->timer_ == 0) {
            Animation_Change(&this->skelAnime, &gZfLandFromAppearingAnim__, 3.0f, 0.0f, 17.0f, ANIMMODE_ONCE, -3.0f);
            this->timer_ = 10;
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_JUMP);
        } else if ((play->gameplayFrames % 2) != 0) {
            EnZf_Setup12or5___(this, play);
        } else {
            EnZf_SetupIdle_(this);
        }
    }
    if ((play->state.frames & 0x5F) == 0) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
    }
}

void EnZf_Setup14_(EnZf* this) {
    if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) &&
        (((this->actor.velocity.y == 0.0f)) || (this->actor.velocity.y == -4.0f))) {
        this->actor.speed = 0.0f;
        this->actionState_ = 0;
    } else {
        this->actionState_ = 1;
    }
    if (this->lastDamageReaction == ENZF_DMG_REACT_F) {
        this->unk3F6 = 36;
    } else {
        Animation_PlayOnceSetSpeed(&this->skelAnime, &gZfDamagedAnim___, 0.0f);
    }
    Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    this->action = ENZF_ACTION_14;
    EnZf_SetupAction(this, EnZf_14_);
}

void EnZf_14_(EnZf* this, PlayState* play) {
    s16 var_v0;

    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
        this->actor.speed = 0.0f;
    }
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        if (this->actor.speed < 0.0f) {
            this->actor.speed += 0.05f;
        }
        this->actionState_ = 0;
    }
    if ((this->actor.colorFilterTimer == 0) && (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
        if (this->actor.colChkInfo.health == 0) {
            EnZf_SetupDie_(this);
        } else if ((this->actor.params != ENZF_TYPE_DINOLFOS) || !EnZf_PickAction_(play, this)) {
            if (D_80B4A1B4 != ENZF_TYPE_NEG1) {
                func_80B44DC4(this, play);
            } else {
                var_v0 = this->actor.wallYaw - this->actor.shape.rot.y;
                var_v0 = ABS(var_v0);
                if ((this->actor.params == ENZF_TYPE_DINOLFOS) && (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) &&
                    (ABS(var_v0) < 0x2EE0) && (this->actor.xzDistToPlayer < 90.0f)) {
                    this->actor.world.rot.y = this->actor.shape.rot.y;
                    EnZf_Setup22_(this);
                } else if (!EnZf_ReactToProjectile_(play, this)) {
                    if (this->actor.params != ENZF_TYPE_DINOLFOS) {
                        func_80B44DC4(this, play);
                    } else if ((this->actor.xzDistToPlayer <= 100.0f) && ((play->gameplayFrames % 4) != 0) &&
                               func_80B44CF0(play, this)) {
                        EnZf_Setup9_(this);
                    } else {
                        func_80B44DC4(this, play);
                    }
                }
            }
        }
    }
}

void EnZf_Setup18_(EnZf* this, PlayState* play) {
    f32 var_fv0;
    f32 temp_fv1;

    var_fv0 = 0.0f;
    temp_fv1 = Animation_GetLastFrame(&gZfTurnAroundAnim__);
    if (this->action <= ENZF_ACTION_16) {
        var_fv0 = -4.0f;
    }
    Animation_Change(&this->skelAnime, &gZfTurnAroundAnim__, 2.0f, 0.0f, temp_fv1, ANIMMODE_ONCE, var_fv0);
    this->action = ENZF_ACTION_18;
    this->actor.speed = 0.0f;
    this->unk3FE = EnZf_FindPlatform1__(&this->actor.world.pos, this->unk3FE);
    this->unk402 = EnZf_FindPlatform2__(&this->actor.world.pos, this->unk3FE, this->unk400, play);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    EnZf_SetupAction(this, EnZf_18_);
}

void EnZf_18_(EnZf* this, PlayState* play) {
    s16 temp_v1;

    temp_v1 = Actor_WorldYawTowardPoint(&this->actor, &D_80B4A090[this->unk402]) + 0x8000;
    Math_SmoothStepToS(&this->actor.world.rot.y, temp_v1, 1, 0x3E8, 0);
    this->actor.shape.rot.y = this->actor.world.rot.y;
    if (SkelAnime_Update(&this->skelAnime)) {
        this->actor.world.rot.y = temp_v1 - 0x8000;
        EnZf_SetupJump19__(this, play);
        this->unk3FA = 1;
    }
}

void EnZf_SetupJump20__(EnZf* this) {
    this->actionState_ = 0;
    Animation_MorphToPlayOnce(&this->skelAnime, D_80B4A280[0], -4.0f);
    this->action = ENZF_ACTION_JUMP_20__;
    this->actor.speed = 0.0f;
    this->unk40C = 0.0f;
    this->dodgeSpeed___ = 0.0f;
    EnZf_SetupAction(this, EnZf_Jump20__);
}

void EnZf_Jump20__(EnZf* this, PlayState* play) {
    f32 var_fv0;
    f32 sp40;

    sp40 = 400.0f;
    Math_SmoothStepToF(&this->actor.speed, 0.0f, 1.0f, 0.5f, 0.0f);
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer + 0x8000, 1, 0xFA0, 0);
    if (this->actor.world.pos.y >= 420.0f) {
        sp40 = 250.0f;
    }
    if ((this->actor.xzDistToPlayer < sp40) && (this->actionState_ != 1)) {
        this->actor.shape.rot.y = this->actor.world.rot.y;
        EnZf_Setup18_(this, play);
    } else {
        if (this->actionState_ != 1) {
            EnZf_ReactToProjectile2_____(play, this);
        }
        if (SkelAnime_Update(&this->skelAnime)) {
            this->actionState_ += 1;
            if (this->actionState_ >= 3) {
                this->actionState_ = 0;
            }
            if ((this->dodgeSpeed___ != 0.0f) || (this->unk40C != 0.0f)) {
                this->actionState_ = 1;
            }
            var_fv0 = Animation_GetLastFrame(D_80B4A280[this->actionState_]);
            switch (this->actionState_) {
                case 0:
                    this->actor.velocity.y = 0.0f;
                    this->actor.world.pos.y = this->actor.floorHeight;
                    break;

                case 1:
                    this->actor.velocity.y = this->unk40C + 10.0f;
                    this->actor.speed = this->dodgeSpeed___;
                    this->dodgeSpeed___ = 0.0f;
                    this->unk40C = 0.0f;
                    break;

                case 2:
                    var_fv0 = 3.0f;
                    this->actor.world.pos.y = this->actor.floorHeight;
                    break;
            }
            Animation_Change(&this->skelAnime, D_80B4A280[this->actionState_], 1.5f, 0.0f, var_fv0, ANIMMODE_ONCE,
                             0.0f);
        }
        if ((play->gameplayFrames & 0x5F) == 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
        }
    }
}

void EnZf_SetupJump19__(EnZf* this, PlayState* play) {
    this->actionState_ = 0;
    Animation_PlayOnce(&this->skelAnime, D_80B4A280[0]);
    this->action = ENZF_ACTION_JUMP_19__;
    this->unk3FE = EnZf_FindPlatform1__(&this->actor.world.pos, this->unk3FE);
    this->unk402 = EnZf_FindPlatform2__(&this->actor.world.pos, this->unk3FE, this->unk400, play);
    EnZf_SetupAction(this, EnZf_Jump19__);
}

void EnZf_Jump19__(EnZf* this, PlayState* play) {
    f32 sp74;
    f32 sp70;
    f32 var_fs0;
    f32 var_fs0_2;
    s32 pad;
    f32 var_fv0_sp60;
    s32 pad2;
    s16 sp5A;
    s32 prevActionState_;
    s32 floorAheadFlags;
    s32 var_v1_real_sp4C;

    sp70 = 1.0f;
    var_fs0 = 550.0f;
    sp74 = Actor_WorldDistXZToPoint(&this->actor, &D_80B4A090[this->unk402]);
    prevActionState_ = this->actionState_;
    if ((play->gameplayFrames & 0x5F) == 0) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
    }
    if (this->actor.world.pos.y >= 420.0f) {
        var_fs0 = 280.0f;
    }
    sp5A = Actor_WorldYawTowardPoint(&this->actor, &D_80B4A090[this->unk402]);
    switch (this->actionState_) {
        case 0:
            this->actor.world.rot.y = sp5A;
            this->actor.shape.rot.y = sp5A + 0x8000;
            D_80B4AB30 = 0;
            this->unk400 = this->unk3FE;
            floorAheadFlags = 0;
            floorAheadFlags |= !EnZf_TestNoFloorAhead_(this, play, 107.0f) << 0;
            floorAheadFlags |= !EnZf_TestNoFloorAhead_(this, play, 220.0f) << 1;
            this->actionState_ += 1;
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
                    var_fs0_2 = 107.0f;
                    var_fs0_2 += 10.0f;
                    var_fv0_sp60 = 8.0f;
                    var_fv0_sp60 += 1.2f;
                    for (var_v1_real_sp4C = 0x14; var_v1_real_sp4C >= 0;
                         var_v1_real_sp4C -= 1, var_fs0_2 += 10.0f, var_fv0_sp60 += 1.2f) {
                        if (!EnZf_TestNoFloorAhead_(this, play, var_fs0_2)) {
                            this->actor.speed = var_fv0_sp60;
                            this->actor.velocity.y = 12.0f;
                            break;
                        }
                    }
                    if (this->actor.speed == 0.0f) {
                        EnZf_SetupJump20__(this);
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
                Actor_SpawnFloorDustRing(play, &this->actor, &this->unk4F0, 3.0f, 2, 2.0f, 0, 0, false);
                Actor_SpawnFloorDustRing(play, &this->actor, &this->unk4E4, 3.0f, 2, 2.0f, 0, 0, false);
                if (var_fs0 <= this->actor.xzDistToPlayer) {
                    EnZf_SetupJump20__(this);
                } else {
                    if (sp74 < 80.0f) {
                        this->unk3FE = EnZf_FindPlatform1__(&this->actor.world.pos, this->unk3FE);
                        this->unk402 = EnZf_FindPlatform2__(&this->actor.world.pos, this->unk3FE, this->unk400, play);
                    }
                }
                this->actionState_ = 0;
                sp70 = 2.0f;
            } else {
                Math_SmoothStepToS(&this->actor.world.rot.y, sp5A, 1, 0xFA0, 0);
                this->actor.shape.rot.y = this->actor.world.rot.y + 0x8000;
                D_80B4AB30 += 1;
            }
            break;

        case 2:
            if (this->skelAnime.curFrame == this->skelAnime.endFrame) {
                this->actionState_ = 0;
            }
            break;
    }
    if (prevActionState_ != this->actionState_) {
        Animation_PlayOnceSetSpeed(&this->skelAnime, D_80B4A280[this->actionState_], sp70);
    }
    SkelAnime_Update(&this->skelAnime);
}

void EnZf_Setup21_(EnZf* this, PlayState* play) {
    Animation_PlayOnce(&this->skelAnime, &gZfGetBackUpAndTurnAroundAnim_____);
    this->actor.world.rot.y += 0x8000;
    this->action = ENZF_ACTION_21;
    this->actor.speed = 0.0f;
    this->unk3FE = EnZf_FindPlatform1__(&this->actor.world.pos, this->unk3FE);
    this->unk402 = EnZf_FindPlatform2__(&this->actor.world.pos, this->unk3FE, this->unk400, play);
    EnZf_SetupAction(this, EnZf_21_);
}

void EnZf_21_(EnZf* this, PlayState* play) {
    s16 sp2E;

    sp2E = this->actor.yawTowardsPlayer;
    if (this->skelAnime.curFrame >= 26.0f) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, sp2E, 1, 0x1770, 0);
    }
    if (SkelAnime_Update(&this->skelAnime)) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
        this->actor.world.rot.y = sp2E;
        this->actionState_ = -1;
        EnZf_SetupIdle_(this);
    }
    if (this->skelAnime.curFrame == 22.0f) {
        this->unk3FA = 0;
    }
}

void EnZf_Setup16_(EnZf* this) {
    Animation_Change(&this->skelAnime, &gZfDamagedAnim___, 1.5f, 0.0f, Animation_GetLastFrame(&gZfDamagedAnim___),
                     ANIMMODE_ONCE, -4.0f);
    if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) &&
        (((this->actor.velocity.y == 0.0f)) || (this->actor.velocity.y == -4.0f))) {
        this->actor.speed = -4.0f;
        this->actionState_ = 0;
    } else {
        this->actionState_ = 1;
    }
    if (this->actor.params == ENZF_TYPE_DINOLFOS) {
        this->skelAnime.playSpeed = 4.5f;
    }
    if (this->actor.params < 0) { // ENZF_TYPE_DINOLFOS, ENZF_TYPE_NEG1
        this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    }
    Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_DAMAGE);
    this->action = ENZF_ACTION_16;
    EnZf_SetupAction(this, EnZf_16_);
}

void EnZf_16_(EnZf* this, PlayState* play) {
    s16 var_v0;

    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
        this->actor.speed = 0.0f;
    }
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        if (this->actor.speed < 0.0f) {
            this->actor.speed += 0.05f;
        }
        this->actionState_ = 0;
    }
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0x1194, 0);
    if (((this->actor.params != ENZF_TYPE_DINOLFOS) || !EnZf_PickAction_(play, this)) &&
        SkelAnime_Update(&this->skelAnime) && (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
        if (D_80B4A1B4 != ENZF_TYPE_NEG1) {
            if (this->lastDamageReaction == ENZF_DMG_REACT_D) {
                D_80B4A1B0 += 1;
            } else {
                this->actor.world.rot.y = this->actor.shape.rot.y;
                if (!EnZf_TestNoFloorAhead_(this, play, 135.0f) && (this->actor.xzDistToPlayer < 90.0f)) {
                    EnZf_Setup22_(this);
                } else if ((this->actor.xzDistToPlayer <= 100.0f) && ((play->gameplayFrames % 4) == 0)) {
                    EnZf_Setup9_(this);
                } else {
                    func_80B44DC4(this, play);
                }
            }
        } else {
            var_v0 = this->actor.wallYaw - this->actor.shape.rot.y;
            var_v0 = ABS(var_v0);
            if ((this->actor.params == ENZF_TYPE_DINOLFOS) && (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) &&
                (ABS(var_v0) < 0x2EE0) && (this->actor.xzDistToPlayer < 90.0f)) {
                EnZf_Setup22_(this);
            } else if (!EnZf_ReactToProjectile_(play, this)) {
                if (this->actor.params != ENZF_TYPE_DINOLFOS) {
                    this->actor.world.rot.y = this->actor.shape.rot.y;
                    if (!EnZf_TestNoFloorAhead_(this, play, 135.0f) && (this->actor.xzDistToPlayer < 90.0f)) {
                        EnZf_Setup22_(this);
                    } else if ((this->actor.xzDistToPlayer <= 100.0f) && ((play->gameplayFrames % 4) == 0)) {
                        EnZf_Setup9_(this);
                    } else {
                        func_80B44DC4(this, play);
                    }
                } else if ((this->actor.xzDistToPlayer <= 100.0f) && ((play->gameplayFrames % 4) == 0) &&
                           func_80B44CF0(play, this)) {
                    EnZf_Setup9_(this);
                } else {
                    func_80B44DC4(this, play);
                }
            }
        }
    }
}

void EnZf_Setup22_(EnZf* this) {
    Animation_Change(&this->skelAnime, &gZfTauntAnim_____, 1.0f, 0.0f, 3.0f, ANIMMODE_ONCE, 0.0f);
    this->timer_ = 0;
    this->actionState_ = 1;
    this->action = ENZF_ACTION_22;
    this->actor.velocity.y = 22.0f;
    this->actor.speed = 7.5f;
    Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_JUMP);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    EnZf_SetupAction(this, EnZf_22_);
}

void EnZf_22_(EnZf* this, PlayState* play) {
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0xFA0, 1);
    if (this->actor.velocity.y >= 5.0f) {
        func_800355B8(play, &this->unk4F0);
        func_800355B8(play, &this->unk4E4);
    }
    if (SkelAnime_Update(&this->skelAnime)) {
        if (this->timer_ == 0) {
            Animation_Change(&this->skelAnime, &gZfSlashAnim, 3.0f, 0.0f, 13.0f, ANIMMODE_ONCE, -4.0f);
            this->timer_ = 10;
        } else if (this->actor.bgCheckFlags & (BGCHECKFLAG_GROUND | BGCHECKFLAG_GROUND_TOUCH)) {
            this->actor.world.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
            this->actor.velocity.y = 0.0f;
            this->actor.speed = 0.0f;
            this->actor.world.pos.y = this->actor.floorHeight;
            EnZf_Setup9_(this);
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_ATTACK);
            this->skelAnime.curFrame = 13.0f;
        }
    }
}

void EnZf_Setup12or5___(EnZf* this, PlayState* play) {
    s16 temp_v1_sp2E;
    Player* player;
    f32 temp_ft3;

    if ((this->actor.params < 0) /* ENZF_TYPE_DINOLFOS, ENZF_TYPE_NEG1 */ ||
        Actor_TestFloorInDirection(&this->actor, play, 40.0f, this->actor.shape.rot.y + 0x3FFF) ||
        Actor_TestFloorInDirection(&this->actor, play, -40.0f, this->actor.shape.rot.y + 0x3FFF)) {
        Animation_PlayLoop(&this->skelAnime, &gZfCautiousWalkAnim___);
        player = GET_PLAYER(play);
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0xFA0, 1);
        temp_v1_sp2E = player->actor.shape.rot.y;
        if (Math_SinS(temp_v1_sp2E - this->actor.shape.rot.y) >= 0.0f) {
            this->actor.speed = -6.0f;
        } else if (Math_SinS(temp_v1_sp2E - this->actor.shape.rot.y) < 0.0f) {
            this->actor.speed = 6.0f;
        }
        this->dodgeSpeed___ = 0.0f;
        this->actionState_ = 0;
        this->actor.world.rot.y = this->actor.shape.rot.y + 0x3FFF;
        this->timer_ = (Rand_ZeroOne() * 10.0f) + 5.0f;
        this->action = ENZF_ACTION_CIRCLE_PLAYER___;
        EnZf_SetupAction(this, EnZf_CirclePlayer___);
    } else {
        EnZf_Setup5_(this, play);
    }
}

void EnZf_CirclePlayer___(EnZf* this, PlayState* play) {
    s16 temp_t0_sp56;
    s16 var_v0;
    Player* player;
    s32 prevFrame;
    s32 beforeCurFrame;
    s32 pad;
    f32 extraRadius;
    f32 absPlaySpeed;

    player = GET_PLAYER(play);
    extraRadius = 0.0f;
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0xBB8, 1);
    temp_t0_sp56 = player->actor.shape.rot.y;
    if (this->actor.params >= 0) { // ENZF_TYPE_0, ENZF_TYPE_1
        if (this->unk3F8) {
            this->actor.speed = -this->actor.speed;
        }
    } else {
        if ((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) ||
            !Actor_TestFloorInDirection(&this->actor, play, this->actor.speed, this->actor.shape.rot.y + 0x3FFF)) {
            if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
                if (this->actor.speed >= 0.0f) {
                    var_v0 = this->actor.shape.rot.y + 0x3FFF;
                } else {
                    var_v0 = this->actor.shape.rot.y - 0x3FFF;
                }
                var_v0 = this->actor.wallYaw - var_v0;
            } else {
                var_v0 = 0;
                this->actor.speed *= -0.8f;
            }
            if (ABS(var_v0) > 0x4000) {
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
    if (Math_SinS(temp_t0_sp56 - this->actor.shape.rot.y) >= 0.0f) {
        this->actor.speed += 0.125f;
    } else {
        this->actor.speed -= 0.125f;
    }
    this->actor.world.rot.y = this->actor.shape.rot.y + 0x4000;
    if (Actor_OtherIsLockedOn(play, &this->actor)) {
        extraRadius = 100.0f;
    }
    if (this->actor.xzDistToPlayer <= (70.0f + extraRadius)) {
        Math_SmoothStepToF(&this->dodgeSpeed___, -4.0f, 1.0f, 1.5f, 0.0f);
    } else if ((90.0f + extraRadius) < this->actor.xzDistToPlayer) {
        Math_SmoothStepToF(&this->dodgeSpeed___, 4.0f, 1.0f, 1.5f, 0.0f);
    } else {
        Math_SmoothStepToF(&this->dodgeSpeed___, 0.0f, 1.0f, 5.65f, 0.0f);
    }
    if ((this->dodgeSpeed___ != 0.0f) && !EnZf_TestNoFloorAhead2_(this, play, this->dodgeSpeed___)) {
        this->actor.world.pos.x += Math_SinS(this->actor.shape.rot.y) * this->dodgeSpeed___;
        this->actor.world.pos.z += Math_CosS(this->actor.shape.rot.y) * this->dodgeSpeed___;
    }
    if (ABS(this->actor.speed) >= ABS(this->dodgeSpeed___)) {
        this->skelAnime.playSpeed = -this->actor.speed * 0.75f;
    } else {
        if (this->skelAnime.playSpeed < 0.0f) {
            this->skelAnime.playSpeed = this->dodgeSpeed___ * -0.75f;
        } else {
            this->skelAnime.playSpeed = this->dodgeSpeed___ * 0.75f;
        }
    }
    prevFrame = (s32)this->skelAnime.curFrame;
    SkelAnime_Update(&this->skelAnime);
    beforeCurFrame = (s32)(this->skelAnime.curFrame - ABS(this->skelAnime.playSpeed));
    absPlaySpeed = ((void)0, ABS(this->skelAnime.playSpeed)); //! FAKE
    this->unk3FE = EnZf_FindPlatform1__(&this->actor.world.pos, this->unk3FE);
    if (EnZf_FindPlatform1__(&player->actor.world.pos, -1) != this->unk3FE) {
        this->actor.speed = 0.0f;
        if ((this->actor.params >= 0) /* ENZF_TYPE_0, ENZF_TYPE_1 */ && (D_80B4A1B4 == this->actor.params)) {
            EnZf_SetupJump20__(this);
        } else {
            EnZf_Setup5_(this, play);
        }
    } else if ((this->actor.params != ENZF_TYPE_DINOLFOS) || !EnZf_PickAction_(play, this)) {
        if (this->timer_ == 0) {
            var_v0 = player->actor.shape.rot.y - this->actor.shape.rot.y;
            if (var_v0 < 0) {
                var_v0 *= -1;
            }
            if (var_v0 >= 0x3A98) {
                if ((this->actor.params >= 0) /* ENZF_TYPE_0, ENZF_TYPE_1 */ && (D_80B4A1B4 == this->actor.params)) {
                    EnZf_SetupJump20__(this);
                } else {
                    EnZf_SetupIdle_(this);
                    this->timer_ = (Rand_ZeroOne() * 5.0f) + 1.0f;
                }
            } else {
                if ((this->actor.params >= 0) /* ENZF_TYPE_0, ENZF_TYPE_1 */ && (D_80B4A1B4 == this->actor.params)) {
                    EnZf_SetupJump20__(this);
                } else {
                    this->actor.world.rot.y = this->actor.shape.rot.y;
                    if ((this->actor.xzDistToPlayer <= 100.0f) && ((play->gameplayFrames % 4) == 0) &&
                        (func_80B44CF0(play, this) != 0)) {
                        EnZf_Setup9_(this);
                    } else {
                        if ((this->actor.xzDistToPlayer < 280.0f) && (this->actor.xzDistToPlayer > 240.0f) &&
                            !EnZf_TestNoFloorAhead_(this, play, 191.9956f) && ((play->gameplayFrames % 2) == 0)) {
                            EnZf_Setup13_(this);
                        } else {
                            EnZf_Setup5_(this, play);
                        }
                    }
                }
            }
        y:; //! FAKE
        } else {
            this->timer_--;
        }
        if ((prevFrame != (s32)this->skelAnime.curFrame) &&
            (((beforeCurFrame < 0xE) && (((s32)absPlaySpeed + prevFrame) >= 0x10)) ||
             ((beforeCurFrame < 0x1B) && (((s32)absPlaySpeed + prevFrame) >= 0x1D)))) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_WALK);
        }
        if ((play->gameplayFrames & 0x5F) == 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
        }
    }
}

// this is probably just EnZf?
typedef struct UnkActor {
    Actor actor;
    char pad14C[0x3F4 - 0x14C];
    UNK_TYPE2 unk3F4;
} UnkActor;

void EnZf_SetupDie_(EnZf* this) {
    Actor* temp_v0;

    Animation_Change(&this->skelAnime, &gZfDieAnim, 1.5f, 0.0f, Animation_GetLastFrame(&gZfDieAnim), ANIMMODE_ONCE,
                     -4.0f);
    if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) &&
        ((this->actor.velocity.y == 0.0f) || (this->actor.velocity.y == -4.0f))) {
        this->actor.speed = 0.0f;
        this->actionState_ = 0;
    } else {
        this->actionState_ = 1;
    }
    this->action = ENZF_ACTION_DIE_;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    if (D_80B4A1B4 != ENZF_TYPE_NEG1) {
        temp_v0 = this->actor.prev;
        if (temp_v0 != NULL) {
            ((UnkActor*)temp_v0)->unk3F4 = 0x5A;
            temp_v0 = this->actor.prev;
            if (temp_v0->colChkInfo.health < 3) {
                temp_v0->colChkInfo.health = 3;
            }
        } else {
            ((UnkActor*)this->actor.next)->unk3F4 = 0x5A;
            temp_v0 = this->actor.next;
            if (temp_v0->colChkInfo.health < 3) {
                temp_v0->colChkInfo.health = 3;
            }
        }
    }
    D_80B4A1B0 = 0;
    Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_DEAD);
    EnZf_SetupAction(this, EnZf_Die_);
}

void EnZf_Die_(EnZf* this, PlayState* play) {
    s32 temp_ft1;

    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
        this->actor.speed = 0.0f;
    }
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        Math_SmoothStepToF(&this->actor.speed, 0.0f, 1.0f, 0.15f, 0.0f);
        this->actionState_ = 0;
    }
    if (SkelAnime_Update(&this->skelAnime)) {
        if (this->actor.category != ACTORCAT_PROP) {
            if ((this->actor.params >= 0) /* ENZF_TYPE_0, ENZF_TYPE_1 */ && (D_80B4A1B4 == -1)) {
                Flags_SetSwitch(play, this->switchFlag);
                func_800F5B58();
            } else {
                D_80B4A1B4 = ENZF_TYPE_NEG1;
            }
            Actor_ChangeCategory(play, &play->actorCtx, &this->actor, ACTORCAT_PROP);
        }
        if (this->alpha_ != 0) {
            this->alpha_ -= 5;
            this->actor.shape.shadowAlpha = this->alpha_;
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

    if ((this->actor.params == ENZF_TYPE_DINOLFOS) && (this->action == ENZF_ACTION_IDLE_) && (this->timer2_ != 0)) {
        this->headRot = Math_SinS(this->timer2_ * 0x578) * 10920.0f;
    } else {
        yawTowardsPlayerRelToHead = this->actor.yawTowardsPlayer;
        yawTowardsPlayerRelToHead -= (s16)(this->headRot + this->actor.shape.rot.y);
        this->headRotStep = CLAMP(yawTowardsPlayerRelToHead, -0x7D0, 0x7D0);
        this->headRot += this->headRotStep;
        this->headRot = CLAMP(this->headRot, -0x1CD7, 0x1CD7);
    }
}

void func_80B490B4(EnZf* this, PlayState* play) {
    s32 pad;
    s16 dropParams;

    if ((this->bodyCollider.base.acFlags & AC_HIT) && (this->action <= ENZF_ACTION_14)) {
        this->bodyCollider.base.acFlags &= ~AC_HIT;
        if (((this->actor.params < 0) /* ENZF_TYPE_DINOLFOS, ENZF_TYPE_NEG1 */ || (D_80B4A1B4 != this->actor.params)) &&
            ((this->actor.colChkInfo.damageReaction != ENZF_DMG_REACT_6))) {
            this->lastDamageReaction = this->actor.colChkInfo.damageReaction;
            Actor_SetDropFlag(&this->actor, &this->bodyCollider.elem, false);
            if ((this->actor.colChkInfo.damageReaction == ENZF_DMG_REACT_1) ||
                (this->actor.colChkInfo.damageReaction == ENZF_DMG_REACT_F)) {
                if (this->action != ENZF_ACTION_14) {
                    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_BLUE, 120, COLORFILTER_BUFFLAG_OPA, 80);
                    Actor_ApplyDamage(&this->actor);
                    EnZf_Setup14_(this);
                }
            } else {
                Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
                Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 255, COLORFILTER_BUFFLAG_OPA, 8);
                if (Actor_ApplyDamage(&this->actor) == 0) {
                    dropParams = COLLECTIBLE_DROP_RANDOM_PARAMS(COLLECTIBLE_DROP_TABLE_4, false);
                    EnZf_SetupDie_(this);
                    if (this->actor.params == ENZF_TYPE_DINOLFOS) {
                        dropParams = COLLECTIBLE_DROP_RANDOM_PARAMS(COLLECTIBLE_DROP_TABLE_14, false);
                    }
                    Item_DropCollectibleRandom(play, &this->actor, &this->actor.world.pos, dropParams);
                    Enemy_StartFinishingBlow(play, &this->actor);
                } else {
                    if (D_80B4A1B4 != ENZF_TYPE_NEG1) {
                        if (((this->actor.colChkInfo.health + this->actor.colChkInfo.damage) >= 4) &&
                            (this->actor.colChkInfo.health < 4)) {
                            this->lastDamageReaction = ENZF_DMG_REACT_D;
                        }
                    }
                    EnZf_Setup16_(this);
                }
            }
        }
    }
}

void EnZf_Update(Actor* thisx, PlayState* play) {
    EnZf* this = (EnZf*)thisx;
    s32 pad[2];

    func_80B490B4(this, play);
    if (this->actor.colChkInfo.damageReaction != ENZF_DMG_REACT_6) {
        this->unk3F8 = false;
        if ((this->actionState_ != 1) && (this->action != ENZF_ACTION_JUMP_19__)) {
            if (this->actor.speed != 0.0f) {
                this->unk3F8 = EnZf_TestNoFloorAhead_(this, play, this->actor.speed * 1.5f);
            }
            if (!this->unk3F8) {
                this->unk3F8 = EnZf_TestNoFloorAhead_(this, play, 0.0f);
            }
        }
        if (!this->unk3F8) {
            Actor_MoveXZGravity(&this->actor);
        }
        Actor_UpdateBgCheckInfo(play, &this->actor, 25.0f, 30.0f, 60.0f,
                                UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 |
                                    UPDBGCHECKINFO_FLAG_4);
        if (!(this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
            this->actionState_ = 1;
        }
        this->actionFunc(this, play);
    }
    if (this->actor.colChkInfo.health > 0) {
        if ((this->action != ENZF_ACTION_9) && (this->action != ENZF_ACTION_14)) {
            EnZf_UpdateHeadRot(this, play);
        }
        if ((D_80B4A1B0 != 0) && (D_80B4A1B4 != this->actor.params)) {
            EnZf_Setup18_(this, play);
            D_80B4A1B4 = this->actor.params;
            D_80B4A1B0 = 0;
            if (this->actor.prev != NULL) {
                ((UnkActor*)this->actor.prev)->unk3F4 = 0x5A;
            } else {
                ((UnkActor*)this->actor.next)->unk3F4 = 0x5A;
            }
        }
    }
    if (this->action >= ENZF_ACTION_DIE_) {
        Math_SmoothStepToS(&this->headRot, 0, 1, 0x7D0, 0);
        if ((this->action <= ENZF_ACTION_JUMP_20__) && (this->timer2_ == 1) &&
            (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
            if (this->actor.colChkInfo.health > 0) {
                EnZf_Setup21_(this, play);
            }
            this->timer2_--;
        }
        if (this->timer2_ >= 2) {
            this->timer2_--;
        }
    }
    this->actor.focus.pos = this->actor.world.pos;
    this->actor.focus.pos.y += 40.0f;
    if (this->actor.colChkInfo.health > 0) {
        if (this->alpha_ == 255) {
            Collider_UpdateCylinder(&this->actor, &this->bodyCollider);
            if ((this->actor.world.pos.y == this->actor.floorHeight) && (this->action <= ENZF_ACTION_16)) {
                CollisionCheck_SetOC(play, &play->colChkCtx, &this->bodyCollider.base);
            }
            if (((this->actor.params < 0) /* ENZF_TYPE_DINOLFOS, ENZF_TYPE_NEG1 */ ||
                 (D_80B4A1B4 != this->actor.params)) &&
                ((this->actor.colorFilterTimer == 0) || !(this->actor.colorFilterParams & 0x4000))) {
                CollisionCheck_SetAC(play, &play->colChkCtx, &this->bodyCollider.base);
            }
        }
    }
    if ((this->action == ENZF_ACTION_9) && ((this->skelAnime.curFrame >= 14.0f)) &&
        (this->skelAnime.curFrame <= 20.0f)) {
        if (!(this->swordCollider.base.atFlags & AT_BOUNCED) && !(this->swordCollider.base.acFlags & AC_HIT)) {
            CollisionCheck_SetAT(play, &play->colChkCtx, &this->swordCollider.base);
        } else {
            this->swordCollider.base.atFlags &= ~AT_BOUNCED;
            this->swordCollider.base.acFlags &= ~AC_HIT;
            EnZf_Setup8_(this);
        }
    }
}

s32 EnZf_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx, Gfx** gfx) {
    EnZf* this = thisx;

    switch (limbIndex) {
        case ZF_LIMB_HEAD_ROOT:
            rot->y -= this->headRot;
            break;

        case ZF_LIMB_RIGHT_HAND_AND_SWORD:
            if (this->unk3FA != 0) {
                *dList = gLizalfosRightHandDL;
            }
            break;

        case ZF_LIMB_SHEATH:
            if (this->unk3FA != 0) {
                *dList = gLizalfosSheathedSwordDL;
            }
            break;
    }
    return 0;
}

void EnZf_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx, Gfx** gfx) {
    Vec3f sp54;
    Vec3f sp48;
    s32 bodyPartIndex;
    EnZf* this = thisx;

    bodyPartIndex = -1;
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
        if (this->action == ENZF_ACTION_9) {
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
            Matrix_MultVec3f(&D_80B4A298, &this->unk4F0);
            break;
        case ZF_LIMB_RIGHT_FOOT_CLAWS:
            Matrix_MultVec3f(&D_80B4A298, &this->unk4E4);
            break;
    }
    if (this->unk3F6 != 0) {
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
    if (this->alpha_ == 255) {
        Gfx_SetupDL_25Opa(play->state.gfxCtx);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, this->alpha_);
        gSPSegment(POLY_OPA_DISP++, 9, &D_80116280[2]);
        POLY_OPA_DISP = SkelAnime_Draw(play, this->skelAnime.skeleton, this->skelAnime.jointTable,
                                       EnZf_OverrideLimbDraw, EnZf_PostLimbDraw, this, POLY_OPA_DISP);
        if (this->unk3F6 != 0) {
            thisx->colorFilterTimer += 1;
            this->unk3F6--;
            if ((this->unk3F6 & 3) == 0) {
                bodyPartIndex = this->unk3F6 >> 2;
                EffectSsEnIce_SpawnFlyingVec3f(play, &this->actor, &this->bodyPartsPos[bodyPartIndex], 150, 150, 150,
                                               250, 235, 245, 255, 1.4f);
            }
        }
    } else {
        Gfx_SetupDL_25Xlu(play->state.gfxCtx);
        gDPPipeSync(POLY_XLU_DISP++);
        gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, this->alpha_);
        gSPSegment(POLY_XLU_DISP++, 9, D_80116280);
        POLY_XLU_DISP = SkelAnime_Draw(play, this->skelAnime.skeleton, this->skelAnime.jointTable,
                                       EnZf_OverrideLimbDraw, EnZf_PostLimbDraw, this, POLY_XLU_DISP);
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_zf.c", 3601);
}

void EnZf_SetupCirclePlayer___(EnZf* this, f32 speed) {
    Animation_MorphToLoop(&this->skelAnime, &gZfCautiousWalkAnim___, -1.0f);
    this->timer_ = (Rand_ZeroOne() * 10.0f) + 8.0f;
    if (this->actor.params == ENZF_TYPE_DINOLFOS) {
        this->actor.speed = 2.0f * speed;
        this->timer_ /= 2;
    } else {
        this->actor.speed = speed;
    }
    this->actionState_ = 0;
    this->actor.world.rot.y = this->actor.shape.rot.y + 0x3FFF;
    this->action = ENZF_ACTION_CIRCLE_PLAYER___;
    EnZf_SetupAction(this, EnZf_CirclePlayer___);
}

s32 EnZf_ReactToProjectile_(PlayState* play, EnZf* this) {
    Actor* projectile;
    s16 relYawTowardsProjectile;
    s16 noFloorAheadFlags_;
    s16 directionFlags_;

    projectile = Actor_GetProjectileActor(play, &this->actor, 600.0f);
    if (projectile != NULL) {
        relYawTowardsProjectile =
            Actor_WorldYawTowardActor(&this->actor, projectile) - (s16)(this->actor.shape.rot.y + 0);
        this->actor.world.rot.y = this->actor.shape.rot.y + 0x3FFF;
        noFloorAheadFlags_ = 0;
        if (EnZf_TestNoFloorAhead_(this, play, -8.0f)) {
            noFloorAheadFlags_ |= 1;
        }
        if (EnZf_TestNoFloorAhead_(this, play, 8.0f)) {
            noFloorAheadFlags_ |= 2;
        }
        this->actor.world.rot.y = this->actor.shape.rot.y;
        if ((((this->actor.xzDistToPlayer < 90.0f) || (noFloorAheadFlags_ == 3)) &&
             !EnZf_TestNoFloorAhead_(this, play, 135.0f)) ||
            (projectile->id == ACTOR_ARMS_HOOK)) {
            EnZf_Setup22_(this);
        } else {
            this->actor.world.rot.y = this->actor.shape.rot.y + 0x3FFF;
            if (noFloorAheadFlags_ == 0) {
                directionFlags_ = play->gameplayFrames & 1;
            } else {
                directionFlags_ = noFloorAheadFlags_;
            }
            if ((ABS(relYawTowardsProjectile) < 0x2000) || (ABS(relYawTowardsProjectile) >= 0x6000)) {
                if (directionFlags_ & 1) {
                    EnZf_SetupCirclePlayer___(this, 8.0f);
                } else {
                    EnZf_SetupCirclePlayer___(this, -8.0f);
                }
            } else if (ABS(relYawTowardsProjectile) < 0x5FFF) {
                if (directionFlags_ & 1) {
                    EnZf_SetupCirclePlayer___(this, 4.0f);
                } else {
                    EnZf_SetupCirclePlayer___(this, -4.0f);
                }
            }
            //! @bug If ABS(relYawTowardsProjectile) == 0x5FFF the function returns true
            //! even though no action has been chosen
        }
        return true;
    }
    return false;
}

s32 EnZf_ReactToProjectile2_____(PlayState* play, EnZf* this) {
    Actor* projectile;
    s16 relYawTowardsProjectile;
    s16 noFloorAheadFlags_;
    s16 sp1E;
    s16 sp1C;

    sp1C = 0;
    projectile = Actor_GetProjectileActor(play, &this->actor, 600.0f);
    if (projectile != NULL) {
        relYawTowardsProjectile =
            Actor_WorldYawTowardActor(&this->actor, projectile) - (s16)(this->actor.shape.rot.y + 0);
        this->actor.world.rot.y = this->actor.shape.rot.y + 0x3FFF;
        noFloorAheadFlags_ = 0;
        if (EnZf_TestNoFloorAhead_(this, play, -70.0f)) {
            noFloorAheadFlags_ |= 1;
        }
        if (EnZf_TestNoFloorAhead_(this, play, 70.0f)) {
            noFloorAheadFlags_ |= 2;
        }
        this->actor.speed = 0.0f;
        if ((ABS(relYawTowardsProjectile) < 0x2000 || ABS(relYawTowardsProjectile) > 0x5FFF)) {
            if (noFloorAheadFlags_ == 0) {
                if ((play->gameplayFrames % 2) != 0) {
                    sp1E = 6;
                } else {
                    sp1E = -6;
                }
            } else {
                switch (noFloorAheadFlags_) {
                    case 1:
                        sp1E = 6;
                        break;

                    case 2:
                        sp1E = -6;
                        break;

                    case 3:
                        sp1C = 5;
                        sp1E = 0;
                        break;
                }
            }
        } else if (ABS(relYawTowardsProjectile) < 0x5FFF) {
            if (noFloorAheadFlags_ == 0) {
                if ((play->gameplayFrames % 2) != 0) {
                    sp1E = 6;
                } else {
                    sp1E = -6;
                }
            } else {
                switch (noFloorAheadFlags_) {
                    case 1:
                        sp1E = 6;
                        break;

                    case 2:
                        sp1E = -6;
                        break;

                    case 3:
                        sp1C = 0xA;
                        sp1E = 0;
                        break;
                }
            }
        }
        //! @bug if sp22 is exactly 0x5FFF, sp1E is used uninitialized
        this->dodgeSpeed___ = sp1E;
        this->unk40C = sp1C;
        return 1;
    }
    return 0;
}
