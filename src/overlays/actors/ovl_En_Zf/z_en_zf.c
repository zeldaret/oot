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

s16 func_80B446A8(Vec3f* arg0, s16 arg1);
void func_80B450AC(EnZf* this);
void func_80B45174(EnZf* this, PlayState* play);
void func_80B45384(EnZf* this);
void func_80B4543C(EnZf* this, PlayState* play);
void func_80B456B4(EnZf* this, PlayState* play);
void func_80B45748(EnZf* this, PlayState* play);
void func_80B45E30(EnZf* this);
void func_80B45EF0(EnZf* this, PlayState* play);
void func_80B4604C(EnZf* this);
void func_80B46098(EnZf* this, PlayState* play);
void func_80B462E4(EnZf* this, PlayState* play);
void func_80B463E4(EnZf* this, PlayState* play);
void func_80B46A24(EnZf* this);
void func_80B46AE0(EnZf* this, PlayState* play);
void func_80B46DD4(EnZf* this, PlayState* play);
void func_80B46E8C(EnZf* this);
void func_80B46F2C(EnZf* this, PlayState* play);
void func_80B47120(EnZf* this, PlayState* play);
void func_80B47360(EnZf* this, PlayState* play);
void func_80B4743C(EnZf* this, PlayState* play);
void func_80B47544(EnZf* this, PlayState* play);
void func_80B4779C(EnZf* this, PlayState* play);
void func_80B4781C(EnZf* this, PlayState* play);
void func_80B47CF8(EnZf* this, PlayState* play);
void func_80B47EB4(EnZf* this, PlayState* play);
void func_80B48210(EnZf* this);
void func_80B482B8(EnZf* this, PlayState* play);
void func_80B483E4(EnZf* this, PlayState* play);
void func_80B48578(EnZf* this, PlayState* play);
void func_80B48CEC(EnZf* this);
void func_80B48E50(EnZf* this, PlayState* play);
void func_80B49B60(EnZf* this, f32 arg1);
s32 func_80B49C2C(PlayState* play, EnZf* this);
s32 func_80B49E4C(PlayState* play, EnZf* this);

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
static s16 D_80B4A1B4 = 1;

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

static ColliderCylinderInit D_80B4A1D8 = {
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

static ColliderQuadInit D_80B4A204 = {
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

static DamageTable D_80B4A254 = {
    {
        0x10, 2,    0xD1, 2,    0x10, 2, 2, 0x10, 1, 2, 4, 0xD2, 0xF4, 0xD2, 0xD2, 0xD2,
        0xD2, 0x60, 0xF3, 0x60, 0,    0, 1, 4,    2, 2, 8, 4,    0,    0,    4,    0,
    },
};
static InitChainEntry D_80B4A274[3] = {
    ICHAIN_F32(lockOnArrowOffset, 2000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 15, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -3500, ICHAIN_STOP),
};
static AnimationHeader* D_80B4A280[] = {
    &object_zf_Anim_01081C,
    &object_zf_Anim_010CAC,
    &object_zf_Anim_011070,
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

void func_80B44050(EnZf* this, void (*arg1)(EnZf*, PlayState*)) {
    this->unk3E8 = arg1;
}

s32 func_80B44058(EnZf* this, PlayState* play, f32 arg2) {
    s16 temp_v1;
    s16 sp44;
    f32 sp40;
    f32 temp_ft2;
    Vec3f sp30;

    if (arg2 == 0.0f) {
        if (this->actor.speed >= 0.0f) {
            arg2 = 1.0f;
        } else {
            arg2 = -1.0f;
        }
        if (this->actor.params >= 0) {
            arg2 = arg2 * 45.0f;
        } else {
            arg2 = arg2 * 30.0f;
        }
    }
    sp30 = this->actor.world.pos;
    sp44 = this->actor.bgCheckFlags;
    sp40 = Math_SinS(this->actor.world.rot.y) * arg2;
    temp_ft2 = Math_CosS(this->actor.world.rot.y) * arg2;
    this->actor.world.pos.x += sp40;
    this->actor.world.pos.z += temp_ft2;
    Actor_UpdateBgCheckInfo(play, &this->actor, 0.0f, 0.0f, 0.0f,
                            UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 | UPDBGCHECKINFO_FLAG_4);
    this->actor.world.pos = sp30;
    temp_v1 = !(this->actor.bgCheckFlags & BGCHECKFLAG_GROUND);
    this->actor.bgCheckFlags = sp44;
    return temp_v1;
}

s16 func_80B441C4(EnZf* this, PlayState* play, f32 arg2) {
    s16 temp_v0;
    s16 sp44;
    f32 sp40;
    f32 temp_fv0_2;
    Vec3f sp30;

    if ((this->actor.speed != 0.0f) && func_80B44058(this, play, this->actor.speed)) {
        return true;
    }
    sp30 = this->actor.world.pos;
    sp44 = this->actor.bgCheckFlags;
    sp40 = Math_SinS(this->actor.shape.rot.y) * arg2;
    temp_fv0_2 = Math_CosS(this->actor.shape.rot.y) * arg2;
    this->actor.world.pos.x += sp40;
    this->actor.world.pos.z += temp_fv0_2;
    Actor_UpdateBgCheckInfo(play, &this->actor, 0.0f, 0.0f, 0.0f,
                            UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 | UPDBGCHECKINFO_FLAG_4);
    this->actor.world.pos = sp30;
    temp_v0 = !(this->actor.bgCheckFlags & BGCHECKFLAG_GROUND);
    this->actor.bgCheckFlags = sp44;
    return temp_v0;
}

void EnZf_Init(Actor* thisx, PlayState* play) {
    f32 temp_fv0;
    s32 pad;
    Player* player;
    EffectBlureInit1 sp4C;
    EnZf* this = (EnZf*)thisx;

    player = GET_PLAYER(play);
    Actor_ProcessInitChain(&this->actor, D_80B4A274);
    this->actor.attentionRangeType = ATTENTION_RANGE_3;
    this->unk3FC = PARAMS_GET_S(thisx->params, 8, 8);
    this->actor.params &= 0xFF;
    if (this->actor.params & 0x80) {
        this->actor.params |= 0xFF00;
    }
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFeet, 90.0f);
    this->unk3E0 = 0;
    this->actor.colChkInfo.mass = MASS_HEAVY;
    this->actor.colChkInfo.damageTable = &D_80B4A254;
    sp4C.p1StartColor[0] = sp4C.p1StartColor[1] = sp4C.p1StartColor[2] = sp4C.p1StartColor[3] = sp4C.p2StartColor[0] =
        sp4C.p2StartColor[1] = sp4C.p2StartColor[2] = sp4C.p1EndColor[0] = sp4C.p1EndColor[1] = sp4C.p1EndColor[2] =
            sp4C.p2EndColor[0] = sp4C.p2EndColor[1] = sp4C.p2EndColor[2] = 255;
    sp4C.p2StartColor[3] = 64;
    sp4C.p1EndColor[3] = 0;
    sp4C.p2EndColor[3] = 0;
    sp4C.elemDuration = 8;
    sp4C.unkFlag = 0;
    sp4C.calcMode = 2;
    Effect_Add(play, &this->unk414, EFFECT_BLURE1, 0U, 0U, &sp4C);
    Actor_UpdateBgCheckInfo(play, &this->actor, 75.0f, 45.0f, 45.0f,
                            UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 |
                                UPDBGCHECKINFO_FLAG_4);
    this->unk404 = 0xFF;
    this->actor.colChkInfo.cylRadius = 40;
    this->actor.colChkInfo.cylHeight = 100;
    Collider_InitCylinder(play, &this->unk418);
    Collider_SetCylinder(play, &this->unk418, &this->actor, &D_80B4A1D8);
    Collider_InitQuad(play, &this->unk464);
    Collider_SetQuad(play, &this->unk464, &this->actor, &D_80B4A204);
    if (this->actor.params == -2) {
        this->actor.colChkInfo.health = 12;
        this->actor.naviEnemyId = NAVI_ENEMY_DINOLFOS;
        SkelAnime_Init(play, &this->unk14C, &object_zf_Skel_006690, &object_zf_Anim_00B10C, this->unk190, this->unk2B6,
                       0x31);
    } else {
        this->actor.colChkInfo.health = 6;
        this->actor.naviEnemyId = NAVI_ENEMY_LIZALFOS;
        SkelAnime_Init(play, &this->unk14C, &object_zf_Skel_0104B8, &object_zf_Anim_00B10C, this->unk190, this->unk2B6,
                       0x31);
    }
    if (this->actor.params < 0) {
        this->unk3FE = -1;
        this->unk400 = this->unk3FE;
        D_80B4A1B4 = -1;
        this->unk3E4 = 1;
        if (this->actor.params == (-1)) {
            func_80B450AC(this);
        } else {
            func_80B45384(this);
        }
    } else {
        temp_fv0 = player->actor.world.pos.y - this->actor.world.pos.y;
        if ((ABS(temp_fv0) <= 100.0f) && !Flags_GetSwitch(play, this->unk3FC)) {
            this->unk400 = this->unk3FE = func_80B446A8(&this->actor.world.pos, 0);
            func_80B450AC(this);
            D_80B4A1B4 = 1;
        } else {
            Actor_Kill(&this->actor);
        }
    }
}

void EnZf_Destroy(Actor* thisx, PlayState* play) {
    EnZf* this = (EnZf*)thisx;

    if ((this->actor.params >= 0) &&
        (Actor_FindNearby(play, &this->actor, ACTOR_EN_ZF, ACTORCAT_ENEMY, 10000.0f) == NULL)) {
        func_800F5B58();
    }
    Effect_Delete(play, this->unk414);
    Collider_DestroyCylinder(play, &this->unk418);
    Collider_DestroyQuad(play, &this->unk464);
}

s16 func_80B446A8(Vec3f* arg0, s16 arg1) {
    Vec3f* temp_v0;
    Vec3f* temp_v0_2;
    f32 var_fv0_real;
    s16 var_v1;

    var_fv0_real = 210.0f;
    if (arg0->y >= 420.0f) {
        var_fv0_real = 110.0f;
    }
    if (arg1 != -1) {
        temp_v0 = &D_80B4A090[arg1];
        if (((temp_v0->y - 150.0f) <= arg0->y) && (arg0->y <= (temp_v0->y + 150.0f)) &&
            ((temp_v0->x - var_fv0_real) <= arg0->x) && (arg0->x <= (temp_v0->x + var_fv0_real)) &&
            ((temp_v0->z - var_fv0_real) <= arg0->z) && (arg0->z <= (temp_v0->z + var_fv0_real))) {
            return arg1;
        }
    }
    for (var_v1 = 0x17; var_v1 >= 0; var_v1--) {
        temp_v0_2 = &D_80B4A090[var_v1];
        if (((temp_v0_2->y - 150.0f) <= arg0->y) && (arg0->y <= (temp_v0_2->y + 150.0f)) &&
            ((temp_v0_2->x - var_fv0_real) <= arg0->x) && (arg0->x <= (temp_v0_2->x + var_fv0_real)) &&
            ((temp_v0_2->z - var_fv0_real) <= arg0->z) && (arg0->z <= (temp_v0_2->z + var_fv0_real))) {
            break;
        }
    }
    return var_v1;
}

s16 func_80B44870(Vec3f* arg0, s16 arg1, s16 arg2, PlayState* play) {
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
    temp_s3 = func_80B446A8(&player->actor.world.pos, arg1);
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
        if (((temp_s3 == (-1)) && ((Math_Vec3f_DistXYZ(&player->actor.world.pos, &D_80B4A090[var_s0]) < var_fs3)))) {
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

s32 func_80B44B14(Vec3f* arg0, s16 arg1, s16 arg2, PlayState* play) {
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
    var_fp = func_80B446A8(&player->actor.world.pos, -1);
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
    if (this->actor.params >= 0) {
        if (player->stateFlags1 & (PLAYER_STATE1_13 | PLAYER_STATE1_14)) {
            return false;
        } else {
            return true;
        }
    }
    if (!Actor_OtherIsLockedOn(play, &this->actor)) {
        return true;
    }
    if (this->actor.params == -2) {
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
    s16 var_v0;

    var_v0 = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    var_v0 = ABS(var_v0);
    if (var_v0 >= 0x1B58) {
        func_80B483E4(this, play);
    } else if ((this->actor.xzDistToPlayer <= 100.0f) && ((play->gameplayFrames % 8) != 0) &&
               func_80B44CF0(play, this)) {
        func_80B46A24(this);
    } else {
        func_80B45384(this);
    }
}

s32 func_80B44E8C(PlayState* play, EnZf* this) {
    s16 var_t0_sp2E;
    Actor* temp_v0_2_sp28;

    var_t0_sp2E = this->actor.wallYaw - this->actor.shape.rot.y;
    var_t0_sp2E = ABS(var_t0_sp2E);
    if (func_800354B4(play, &this->actor, 100.0f, 0x5DC0, 0x2AA8, this->actor.shape.rot.y) != 0) {
        this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
        if ((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) && (ABS(var_t0_sp2E) < 0x2EE0) &&
            (this->actor.xzDistToPlayer < 80.0f)) {
            func_80B48210(this);
        } else if ((this->actor.xzDistToPlayer < 90.0f) && ((play->gameplayFrames % 2) != 0)) {
            func_80B48210(this);
        } else {
            func_80B46E8C(this);
        }
        return true;
    }
    temp_v0_2_sp28 = Actor_FindNearby(play, &this->actor, -1, ACTORCAT_EXPLOSIVE, 80.0f);
    if (temp_v0_2_sp28 != NULL) {
        this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
        if (((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) && (var_t0_sp2E < 0x2EE0)) ||
            (temp_v0_2_sp28->id == ACTOR_EN_BOM_CHU)) {
            if ((temp_v0_2_sp28->id == ACTOR_EN_BOM_CHU) &&
                (Actor_WorldDistXYZToActor(&this->actor, temp_v0_2_sp28) < 80.0f) &&
                ((s16)(this->actor.shape.rot.y - temp_v0_2_sp28->world.rot.y + 0x8000) < 0x3E80)) {
                func_80B48210(this);
            } else {
                func_80B49B60(this, 4.0f);
            }
        } else {
            func_80B46E8C(this);
        }
        return true;
    }
    return false;
}

void func_80B450AC(EnZf* this) {
    Animation_Change(&this->unk14C, &object_zf_Anim_009530, 0.0f, 9.0f, Animation_GetLastFrame(&object_zf_Anim_009530),
                     ANIMMODE_LOOP, 0.0f);
    this->actor.world.pos.y = this->actor.floorHeight + 300.0f;
    this->unk404 = this->actor.shape.shadowAlpha = 0;
    this->unk3F0 = 0xA;
    this->unk3E4 = 1;
    this->unk3DC = 0;
    this->actor.bgCheckFlags &= ~BGCHECKFLAG_GROUND_TOUCH;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    func_80B44050(this, func_80B45174);
}

void func_80B45174(EnZf* this, PlayState* play) {
    if (this->unk3F0 == 1) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
        this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
        if (this->actor.params == 0) {
            func_800F5ACC(NA_BGM_MINI_BOSS);
        }
    }
    if (this->unk3F0 != 0) {
        if (this->actor.params != -1) {
            this->unk3F0 -= 1;
        } else if (this->actor.xzDistToPlayer <= 160.0f) {
            this->unk3F0 = 0;
            this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
        }
        this->actor.world.pos.y = this->actor.floorHeight + 300.0f;
    } else {
        if (this->unk404 < 0xFF) {
            this->unk404 += 0x33;
        }
    }
    if ((this->actor.bgCheckFlags & (BGCHECKFLAG_GROUND | BGCHECKFLAG_GROUND_TOUCH)) && (this->unk3E4 != 0)) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_ONGND);
        Animation_Change(&this->unk14C, &object_zf_Anim_008C6C, 1.0f, 0.0f, 17.0f, ANIMMODE_ONCE, 0.0f);
        this->unk3E4 = 0;
        this->actor.bgCheckFlags &= ~BGCHECKFLAG_GROUND_TOUCH;
        this->actor.world.pos.y = this->actor.floorHeight;
        this->actor.velocity.y = 0.0f;
        Actor_SpawnFloorDustRing(play, &this->actor, &this->unk4F0, 3.0f, 2, 2.0f, 0, 0, false);
        Actor_SpawnFloorDustRing(play, &this->actor, &this->unk4E4, 3.0f, 2, 2.0f, 0, 0, false);
    }
    if (SkelAnime_Update(&this->unk14C)) {
        this->unk404 = 0xFF;
        if (this->actor.params > 0) {
            func_80B47360(this, play);
        } else {
            func_80B45384(this);
        }
    }
    this->actor.shape.shadowAlpha = this->unk404;
}

void func_80B45384(EnZf* this) {
    Animation_Change(&this->unk14C, &object_zf_Anim_00B10C, 1.0f, 0.0f, Animation_GetLastFrame(&object_zf_Anim_00B10C),
                     ANIMMODE_LOOP_INTERP, -4.0f);
    this->unk3DC = 3;
    this->unk3F0 = (Rand_ZeroOne() * 10.0f) + 5.0f;
    this->actor.speed = 0.0f;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    func_80B44050(this, func_80B4543C);
}

void func_80B4543C(EnZf* this, PlayState* play) {
    Player* player;
    s32 pad;
    s16 var_v1_sp26;
    s16 var_v1_2;

    player = GET_PLAYER(play);
    var_v1_sp26 = (this->actor.yawTowardsPlayer - this->unk3EC) - this->actor.shape.rot.y;
    var_v1_sp26 = ABS(var_v1_sp26);
    SkelAnime_Update(&this->unk14C);
    if (!func_80B49C2C(play, this)) {
        if (this->actor.params == -2) {
            if (this->unk3F4 != 0) {
                this->unk3F4 -= 1;
                if (var_v1_sp26 < 0x1FFE) {
                    this->unk3F4 = 0;
                } else {
                    return;
                }
            } else if (func_80B44E8C(play, this)) {
                return;
            }
        }
        var_v1_2 = player->actor.shape.rot.y - this->actor.shape.rot.y;
        var_v1_2 = ABS(var_v1_2);
        if ((this->actor.xzDistToPlayer < 100.0f) && (player->meleeWeaponState != 0) && (var_v1_2 >= 0x1F40)) {
            this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
            if (var_v1_2) {}
            func_80B483E4(this, play);
        } else if (this->unk3F0 != 0) {
            this->unk3F0 -= 1;
        } else {
            if (Actor_IsFacingPlayer(&this->actor, 0x1555)) {
                if ((this->actor.xzDistToPlayer < 200.0f) && (this->actor.xzDistToPlayer > 100.0f) &&
                    (Rand_ZeroOne() < 0.3f)) {
                    if (this->actor.params == -2) {
                        this->actor.world.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
                        func_80B45E30(this);
                    } else {
                        func_80B483E4(this, play);
                    }
                } else if (Rand_ZeroOne() > 0.3f) {
                    func_80B456B4(this, play);
                } else {
                    func_80B483E4(this, play);
                }
            } else {
                func_80B4604C(this);
            }
            if ((play->gameplayFrames & 0x5F) == 0) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
            }
        }
    }
}

void func_80B456B4(EnZf* this, PlayState* play) {
    Animation_MorphToLoop(&this->unk14C, &object_zf_Anim_008138, -4.0f);
    this->unk3DC = 5;
    if (this->actor.params >= 0) {
        this->unk3FE = func_80B446A8(&this->actor.world.pos, this->unk3FE);
        this->unk402 = func_80B44B14(&this->actor.world.pos, this->unk3FE, this->unk400, play);
        this->unk3E4 = 0;
    }
    this->actor.speed = 0.0f;
    func_80B44050(this, func_80B45748);
}

void func_80B45748(EnZf* this, PlayState* play) {
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
    if (this->actor.params >= 0) {
        sp48 = func_80B446A8(&player->actor.world.pos, -1);
        this->unk3FE = func_80B446A8(&this->actor.world.pos, sp48);
        if (this->actor.world.pos.y >= 420.0f) {
            sp44 = 270.0f;
        }
    }
    if (!func_80B49C2C(play, this)) {
        if (sp48 != this->unk3FE) {
            this->unk402 = func_80B44B14(&this->actor.world.pos, this->unk3FE, this->unk400, play);
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
                        !func_80B44058(this, play, 191.9956f)) {
                        func_80B45E30(this);
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
        if (Actor_OtherIsLockedOn(play, &this->actor) != 0) {
            sp40 = 100.0f;
        }
        if (this->actor.xzDistToPlayer <= (70.0f + sp40)) {
            Math_SmoothStepToF(&this->actor.speed, -8.0f, 1.0f, 0.5f, 0.0f);
        } else {
            Math_SmoothStepToF(&this->actor.speed, 8.0f, 1.0f, 0.5f, 0.0f);
        }
        this->unk14C.playSpeed = this->actor.speed * 1.2f;
        var_v1 = player->actor.shape.rot.y - this->actor.shape.rot.y;
        if (var_v1 < 0) {
            var_v1 *= -1;
        }
        if ((sp48 == this->unk3FE) && (this->actor.xzDistToPlayer < 150.0f) && (player->meleeWeaponState != 0) &&
            (var_v1 >= 0x1F40)) {
            this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
            if (Rand_ZeroOne() > 0.7f) {
                func_80B483E4(this, play);
                return;
            }
        }
        prevFrame = (s32)this->unk14C.curFrame;
        SkelAnime_Update(&this->unk14C);
        beforeCurFrame = (s32)(this->unk14C.curFrame - ABS(this->unk14C.playSpeed));
        absPlaySpeed = ((void)0, ABS(this->unk14C.playSpeed)); //! FAKE
        if (sp48 == this->unk3FE) {
            if (Actor_IsFacingPlayer(&this->actor, 0x11C7) == 0) {
                if (Rand_ZeroOne() > 0.5f) {
                    func_80B462E4(this, play);
                } else {
                    func_80B45384(this);
                }
            } else if (this->actor.xzDistToPlayer < 100.0f) {
                if ((Rand_ZeroOne() > 0.05f) && func_80B44CF0(play, this)) {
                    func_80B46A24(this);
                } else if (Rand_ZeroOne() > 0.5f) {
                    func_80B483E4(this, play);
                } else {
                    func_80B45384(this);
                }
            } else if (this->unk3F8) {
                func_80B462E4(this, play);
            } else if (Rand_ZeroOne() < 0.1f) {
                func_80B45384(this);
            }
        }
        if (this->actor.params == -2) {
            if (!func_80B44E8C(play, this)) {
                if ((this->actor.xzDistToPlayer < 180.0f) && (this->actor.xzDistToPlayer > 160.0f) &&
                    Actor_IsFacingPlayer(&this->actor, 0x71C)) {
                    if (Actor_IsLockedOn(play, &this->actor)) {
                        if (Rand_ZeroOne() < 0.1f) {
                            this->actor.world.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
                            func_80B45E30(this);
                            return;
                        }
                    } else {
                        func_80B483E4(this, play);
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
        if ((prevFrame != (s32)this->unk14C.curFrame) &&
            (((beforeCurFrame < 2) && (((s32)absPlaySpeed + prevFrame) >= 4)) ||
             ((beforeCurFrame < 0x20) && (((s32)absPlaySpeed + prevFrame) >= 0x22)))) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_WALK);
        }
    }
}

void func_80B45E30(EnZf* this) {
    Animation_Change(&this->unk14C, &object_zf_Anim_009530, 1.0f, 0.0f, 3.0f, ANIMMODE_ONCE, -3.0f);
    this->unk3F0 = 0;
    this->unk3E4 = 1;
    this->actor.velocity.y = 15.0f;
    if (this->actor.params >= 0) {
        this->actor.speed = 16.0f;
    } else {
        this->actor.speed = 10.0f;
    }
    this->unk3DC = 0xD;
    Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_JUMP);
    func_80B44050(this, func_80B45EF0);
}

void func_80B45EF0(EnZf* this, PlayState* play) {
    if (this->unk3F0 != 0) {
        if (this->actor.world.pos.y <= this->actor.floorHeight) {
            this->actor.world.pos.y = this->actor.floorHeight;
            this->unk3E4 = 0;
            this->actor.velocity.y = 0.0f;
            this->actor.speed = 0.0f;
        }
    }
    if (SkelAnime_Update(&this->unk14C)) {
        if (this->unk3F0 == 0) {
            Animation_Change(&this->unk14C, &object_zf_Anim_008C6C, 3.0f, 0.0f, 17.0f, ANIMMODE_ONCE, -3.0f);
            this->unk3F0 = 0xA;
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_JUMP);
        } else {
            this->actor.speed = 0.0f;
            this->unk3E4 = 0;
            func_80B456B4(this, play);
        }
    }
    if ((play->gameplayFrames & 0x5F) == 0) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
    }
    if ((this->actor.params == -2) && (this->actor.bgCheckFlags & (BGCHECKFLAG_GROUND | BGCHECKFLAG_GROUND_TOUCH))) {
        if (func_80B44CF0(play, this)) {
            func_80B46A24(this);
        } else {
            func_80B483E4(this, play);
        }
    }
}

void func_80B4604C(EnZf* this) {
    Animation_MorphToLoop(&this->unk14C, &object_zf_Anim_008138, -4.0f);
    this->unk3DC = 6;
    func_80B44050(this, func_80B46098);
}

void func_80B46098(EnZf* this, PlayState* play) {
    s32 pad;
    s16 temp_v0;
    s16 var_v1;
    Player* player;
    f32 var_fv1;

    player = GET_PLAYER(play);
    if (!func_80B49C2C(play, this) && ((this->actor.params != -2) || !func_80B44E8C(play, this))) {
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
        this->unk14C.playSpeed = -var_fv1;
        SkelAnime_Update(&this->unk14C);
        if (this->actor.params >= 0) {
            this->unk3FE = func_80B446A8(&this->actor.world.pos, this->unk3FE);
            if (func_80B446A8(&player->actor.world.pos, -1) != this->unk3FE) {
                func_80B456B4(this, play);
                return;
            }
        }
        if (Actor_IsFacingPlayer(&this->actor, 0x1555) != 0) {
            if (Rand_ZeroOne() > 0.8f) {
                func_80B462E4(this, play);
            } else {
                func_80B456B4(this, play);
            }
        }
        if ((play->gameplayFrames & 0x5F) == 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
        }
    }
}

void func_80B462E4(EnZf* this, PlayState* play) {
    if ((this->actor.params < 0) ||
        Actor_TestFloorInDirection(&this->actor, play, 40.0f, this->actor.shape.rot.y + 0x3FFF) ||
        Actor_TestFloorInDirection(&this->actor, play, -40.0f, this->actor.shape.rot.y + 0x3FFF)) {
        Animation_PlayLoop(&this->unk14C, &object_zf_Anim_016388);
        this->actor.speed = Rand_CenteredFloat(12.0f);
        this->actor.world.rot.y = this->actor.shape.rot.y;
        this->unk3F0 = (Rand_ZeroOne() * 10.0f) + 20.0f;
        this->unk3E4 = 0;
        this->unk3DC = 7;
        this->unk408 = 0.0f;
        func_80B44050(this, func_80B463E4);
    } else {
        func_80B456B4(this, play);
    }
}

void func_80B463E4(EnZf* this, PlayState* play) {
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
    if (!func_80B49C2C(play, this) && ((this->actor.params != -2) || !func_80B44E8C(play, this))) {
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
        if (this->actor.params >= 0) {
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
            Math_SmoothStepToF(&this->unk408, -4.0f, 1.0f, 1.5f, 0.0f);
        } else if ((90.0f + sp3C) < this->actor.xzDistToPlayer) {
            Math_SmoothStepToF(&this->unk408, 4.0f, 1.0f, 1.5f, 0.0f);
        } else {
            Math_SmoothStepToF(&this->unk408, 0.0f, 1.0f, 5.65f, 0.0f);
        }
        if ((this->unk408 != 0.0f) && !func_80B441C4(this, play, this->unk408)) {
            this->actor.world.pos.x += Math_SinS(this->actor.shape.rot.y) * this->unk408;
            this->actor.world.pos.z += Math_CosS(this->actor.shape.rot.y) * this->unk408;
        }
        if (ABS(this->actor.speed) >= ABS(this->unk408)) {
            this->unk14C.playSpeed = this->actor.speed * 0.75f;
        } else if (this->unk14C.playSpeed < 0.0f) {
            this->unk14C.playSpeed = this->unk408 * -0.75f;
        } else {
            this->unk14C.playSpeed = this->unk408 * 0.75f;
        }
        prevFrame = (s32)this->unk14C.curFrame;
        SkelAnime_Update(&this->unk14C);
        beforeCurFrame = (s32)(this->unk14C.curFrame - ABS(this->unk14C.playSpeed));
        absPlaySpeed = ABS(this->unk14C.playSpeed);
        if ((prevFrame != (s32)this->unk14C.curFrame) &&
            (((beforeCurFrame < 0xE) && (((s32)absPlaySpeed + prevFrame) >= 0x10)) ||
             ((beforeCurFrame < 0x1B) && (((s32)absPlaySpeed + prevFrame) >= 0x1D)))) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_WALK);
        }
        if ((play->gameplayFrames & 0x5F) == 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
        }
        if ((Math_CosS(sp56 - this->actor.shape.rot.y) < -0.85f) || (this->unk3F0 == 0)) {
            this->actor.world.rot.y = this->actor.shape.rot.y;
            if ((this->actor.xzDistToPlayer <= 100.0f) && ((play->gameplayFrames % 4) == 0) &&
                func_80B44CF0(play, this)) {
                func_80B46A24(this);
            } else {
                func_80B45384(this);
            }
        } else if (this->unk3F0 != 0) {
            this->unk3F0 -= 1;
        }
    }
}

void func_80B46A24(EnZf* this) {
    Animation_Change(&this->unk14C, &object_zf_Anim_00A3D4, 1.25f, 0.0f, Animation_GetLastFrame(&object_zf_Anim_00A3D4),
                     ANIMMODE_ONCE, -4.0f);
    if (this->actor.params == -2) {
        this->unk14C.playSpeed = 1.75f;
    }
    this->unk464.base.atFlags &= ~AT_BOUNCED;
    this->unk3DC = 9;
    Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
    this->actor.speed = 0.0f;
    func_80B44050(this, func_80B46AE0);
}

void func_80B46AE0(EnZf* this, PlayState* play) {
    Player* player;
    s16 var_v0;
    s16 var_v0_2;

    player = GET_PLAYER(play);
    this->actor.speed = 0.0f;
    if ((s32)this->unk14C.curFrame == 10) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_ATTACK);
    }
    if (SkelAnime_Update(&this->unk14C)) {
        EffectBlure_AddSpace(Effect_GetByIndex(this->unk414));
        if ((this->actor.params == -2) && !Actor_IsFacingPlayer(&this->actor, 0x1554)) {
            func_80B45384(this);
            this->unk3F0 = (Rand_ZeroOne() * 5.0f) + 5.0f;
            this->unk3F4 = (Rand_ZeroOne() * 20.0f) + 100.0f;
        } else if ((Rand_ZeroOne() > 0.7f) || (this->actor.xzDistToPlayer >= 120.0f)) {
            func_80B45384(this);
            this->unk3F0 = (Rand_ZeroOne() * 5.0f) + 5.0f;
        } else {
            this->actor.world.rot.y = this->actor.yawTowardsPlayer;
            if (Rand_ZeroOne() > 0.7f) {
                func_80B483E4(this, play);
            } else {
                var_v0 = player->actor.shape.rot.y - this->actor.shape.rot.y;
                var_v0 = ABS(var_v0);
                if (var_v0 <= 0x2710) {
                    var_v0_2 = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
                    var_v0_2 = ABS(var_v0_2);
                    if (var_v0_2 > 0x3E80) {
                        this->actor.world.rot.y = this->actor.yawTowardsPlayer;
                        func_80B483E4(this, play);
                    } else if (player->stateFlags1 &
                               (PLAYER_STATE1_HOSTILE_LOCK_ON | PLAYER_STATE1_13 | PLAYER_STATE1_14)) {
                        if (this->actor.isLockedOn != 0) {
                            func_80B46A24(this);
                        } else {
                            func_80B483E4(this, play);
                        }
                    } else {
                        func_80B46A24(this);
                    }
                } else {
                    func_80B483E4(this, play);
                }
            }
        }
    }
}

void func_80B46D64(EnZf* this) {
    f32 f = this->unk14C.curFrame - 3.0f;

    Animation_Change(&this->unk14C, &object_zf_Anim_00A3D4, -1.0f, f, 0.0f, ANIMMODE_ONCE, 0.0f);
    this->unk3DC = 8;
    func_80B44050(this, func_80B46DD4);
}

void func_80B46DD4(EnZf* this, PlayState* play) {
    if (SkelAnime_Update(&this->unk14C)) {
        if (Rand_ZeroOne() > 0.7f) {
            func_80B45384(this);
        } else if ((Rand_ZeroOne() > 0.2f) && func_80B44CF0(play, this)) {
            func_80B46A24(this);
        } else {
            func_80B483E4(this, play);
        }
    }
}

void func_80B46E8C(EnZf* this) {
    Animation_Change(&this->unk14C, &object_zf_Anim_009530, -1.0f, 3.0f, 0.0f, ANIMMODE_ONCE, -3.0f);
    this->unk3F0 = 0;
    this->unk3E4 = 1;
    this->unk3DC = 0xB;
    this->actor.velocity.y = 15.0f;
    this->actor.speed = -15.0f;
    Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_JUMP);
    func_80B44050(this, func_80B46F2C);
}

void func_80B46F2C(EnZf* this, PlayState* play) {
    if (this->unk3F0 != 0) {
        if (this->actor.world.pos.y <= this->actor.floorHeight) {
            this->actor.world.pos.y = this->actor.floorHeight;
            this->unk3E4 = 0;
            this->actor.velocity.y = 0.0f;
            this->actor.speed = 0.0f;
        }
    }
    if (SkelAnime_Update(&this->unk14C)) {
        if (this->unk3F0 == 0) {
            Animation_Change(&this->unk14C, &object_zf_Anim_008C6C, 3.0f, 0.0f, 17.0f, ANIMMODE_ONCE, -3.0f);
            this->unk3F0 = 0xA;
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_JUMP);
        } else if ((play->gameplayFrames % 2) != 0) {
            func_80B483E4(this, play);
        } else {
            func_80B45384(this);
        }
    }
    if ((play->state.frames & 0x5F) == 0) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
    }
}

void func_80B47050(EnZf* this) {
    if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) &&
        (((this->actor.velocity.y == 0.0f)) || (this->actor.velocity.y == -4.0f))) {
        this->actor.speed = 0.0f;
        this->unk3E4 = 0;
    } else {
        this->unk3E4 = 1;
    }
    if (this->unk410 == 0xF) {
        this->unk3F6 = 0x24;
    } else {
        Animation_PlayOnceSetSpeed(&this->unk14C, &object_zf_Anim_0157F8, 0.0f);
    }
    Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    this->unk3DC = 0xE;
    func_80B44050(this, func_80B47120);
}

void func_80B47120(EnZf* this, PlayState* play) {
    s16 var_v0;

    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
        this->actor.speed = 0.0f;
    }
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        if (this->actor.speed < 0.0f) {
            this->actor.speed += 0.05f;
        }
        this->unk3E4 = 0;
    }
    if ((this->actor.colorFilterTimer == 0) && (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
        if (this->actor.colChkInfo.health == 0) {
            func_80B48CEC(this);
        } else if ((this->actor.params != -2) || !func_80B44E8C(play, this)) {
            if (D_80B4A1B4 != -1) {
                func_80B44DC4(this, play);
            } else {
                var_v0 = this->actor.wallYaw - this->actor.shape.rot.y;
                var_v0 = ABS(var_v0);
                if ((this->actor.params == -2) && (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) &&
                    (ABS(var_v0) < 0x2EE0) && (this->actor.xzDistToPlayer < 90.0f)) {
                    this->actor.world.rot.y = this->actor.shape.rot.y;
                    func_80B48210(this);
                } else if (!func_80B49C2C(play, this)) {
                    if (this->actor.params != -2) {
                        func_80B44DC4(this, play);
                    } else if ((this->actor.xzDistToPlayer <= 100.0f) && ((play->gameplayFrames % 4) != 0) &&
                               func_80B44CF0(play, this)) {
                        func_80B46A24(this);
                    } else {
                        func_80B44DC4(this, play);
                    }
                }
            }
        }
    }
}

void func_80B47360(EnZf* this, PlayState* play) {
    f32 var_fv0;
    f32 temp_fv1;

    var_fv0 = 0.0f;
    temp_fv1 = Animation_GetLastFrame(&object_zf_Anim_0119F4);
    if (this->unk3DC < 0x11) {
        var_fv0 = -4.0f;
    }
    Animation_Change(&this->unk14C, &object_zf_Anim_0119F4, 2.0f, 0.0f, temp_fv1, ANIMMODE_ONCE, var_fv0);
    this->unk3DC = 0x12;
    this->actor.speed = 0.0f;
    this->unk3FE = func_80B446A8(&this->actor.world.pos, this->unk3FE);
    this->unk402 = func_80B44870(&this->actor.world.pos, this->unk3FE, this->unk400, play);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    func_80B44050(this, func_80B4743C);
}

void func_80B4743C(EnZf* this, PlayState* play) {
    s16 temp_v1;

    temp_v1 = Actor_WorldYawTowardPoint(&this->actor, &D_80B4A090[this->unk402]) + 0x8000;
    Math_SmoothStepToS(&this->actor.world.rot.y, temp_v1, 1, 0x3E8, 0);
    this->actor.shape.rot.y = this->actor.world.rot.y;
    if (SkelAnime_Update(&this->unk14C)) {
        this->actor.world.rot.y = temp_v1 - 0x8000;
        func_80B4779C(this, play);
        this->unk3FA = 1;
    }
}

void func_80B474E4(EnZf* this) {
    this->unk3E4 = 0;
    Animation_MorphToPlayOnce(&this->unk14C, D_80B4A280[0], -4.0f);
    this->unk3DC = 0x14;
    this->actor.speed = 0.0f;
    this->unk40C = 0.0f;
    this->unk408 = 0.0f;
    func_80B44050(this, func_80B47544);
}

void func_80B47544(EnZf* this, PlayState* play) {
    f32 var_fv0;
    f32 sp40;

    sp40 = 400.0f;
    Math_SmoothStepToF(&this->actor.speed, 0.0f, 1.0f, 0.5f, 0.0f);
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer + 0x8000, 1, 0xFA0, 0);
    if (this->actor.world.pos.y >= 420.0f) {
        sp40 = 250.0f;
    }
    if ((this->actor.xzDistToPlayer < sp40) && (this->unk3E4 != 1)) {
        this->actor.shape.rot.y = this->actor.world.rot.y;
        func_80B47360(this, play);
    } else {
        if (this->unk3E4 != 1) {
            func_80B49E4C(play, this);
        }
        if (SkelAnime_Update(&this->unk14C)) {
            this->unk3E4 += 1;
            if (this->unk3E4 >= 3) {
                this->unk3E4 = 0;
            }
            if ((this->unk408 != 0.0f) || (this->unk40C != 0.0f)) {
                this->unk3E4 = 1;
            }
            var_fv0 = Animation_GetLastFrame(D_80B4A280[this->unk3E4]);
            switch (this->unk3E4) {
                case 0:
                    this->actor.velocity.y = 0.0f;
                    this->actor.world.pos.y = this->actor.floorHeight;
                    break;

                case 1:
                    this->actor.velocity.y = this->unk40C + 10.0f;
                    this->actor.speed = this->unk408;
                    this->unk408 = 0.0f;
                    this->unk40C = 0.0f;
                    break;

                case 2:
                    var_fv0 = 3.0f;
                    this->actor.world.pos.y = this->actor.floorHeight;
                    break;
            }
            Animation_Change(&this->unk14C, D_80B4A280[this->unk3E4], 1.5f, 0.0f, var_fv0, ANIMMODE_ONCE, 0.0f);
        }
        if ((play->gameplayFrames & 0x5F) == 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
        }
    }
}

void func_80B4779C(EnZf* this, PlayState* play) {
    this->unk3E4 = 0;
    Animation_PlayOnce(&this->unk14C, D_80B4A280[0]);
    this->unk3DC = 0x13;
    this->unk3FE = func_80B446A8(&this->actor.world.pos, this->unk3FE);
    this->unk402 = func_80B44870(&this->actor.world.pos, this->unk3FE, this->unk400, play);
    func_80B44050(this, func_80B4781C);
}

void func_80B4781C(EnZf* this, PlayState* play) {
    f32 sp74;
    f32 sp70;
    f32 var_fs0;
    f32 var_fs0_2;
    s32 pad;
    f32 var_fv0_sp60;
    s32 pad2;
    s16 sp5A;
    s32 sp54;
    s32 temp_v1_sp50;
    s32 var_v1_real_sp4C;

    sp70 = 1.0f;
    var_fs0 = 550.0f;
    sp74 = Actor_WorldDistXZToPoint(&this->actor, &D_80B4A090[this->unk402]);
    sp54 = this->unk3E4;
    if ((play->gameplayFrames & 0x5F) == 0) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
    }
    if (this->actor.world.pos.y >= 420.0f) {
        var_fs0 = 280.0f;
    }
    sp5A = Actor_WorldYawTowardPoint(&this->actor, &D_80B4A090[this->unk402]);
    switch (this->unk3E4) {
        case 0:
            this->actor.world.rot.y = sp5A;
            this->actor.shape.rot.y = sp5A + 0x8000;
            D_80B4AB30 = 0;
            this->unk400 = this->unk3FE;
            temp_v1_sp50 = 0;
            temp_v1_sp50 |= !func_80B44058(this, play, 107.0f) << 0;
            temp_v1_sp50 |= !func_80B44058(this, play, 220.0f) << 1;
            this->unk3E4 += 1;
            switch (temp_v1_sp50) {
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
                        if (!func_80B44058(this, play, var_fs0_2)) {
                            this->actor.speed = var_fv0_sp60;
                            this->actor.velocity.y = 12.0f;
                            break;
                        }
                    }
                    if (this->actor.speed == 0.0f) {
                        func_80B474E4(this);
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
                    func_80B474E4(this);
                } else {
                    if (sp74 < 80.0f) {
                        this->unk3FE = func_80B446A8(&this->actor.world.pos, this->unk3FE);
                        this->unk402 = func_80B44870(&this->actor.world.pos, this->unk3FE, this->unk400, play);
                    }
                }
                this->unk3E4 = 0;
                sp70 = 2.0f;
            } else {
                Math_SmoothStepToS(&this->actor.world.rot.y, sp5A, 1, 0xFA0, 0);
                this->actor.shape.rot.y = this->actor.world.rot.y + 0x8000;
                D_80B4AB30 += 1;
            }
            break;

        case 2:
            if (this->unk14C.curFrame == this->unk14C.endFrame) {
                this->unk3E4 = 0;
            }
            break;
    }
    if (sp54 != this->unk3E4) {
        Animation_PlayOnceSetSpeed(&this->unk14C, D_80B4A280[this->unk3E4], sp70);
    }
    SkelAnime_Update(&this->unk14C);
}

void func_80B47C64(EnZf* this, PlayState* play) {
    Animation_PlayOnce(&this->unk14C, &object_zf_Anim_01366C);
    this->actor.world.rot.y += 0x8000;
    this->unk3DC = 0x15;
    this->actor.speed = 0.0f;
    this->unk3FE = func_80B446A8(&this->actor.world.pos, this->unk3FE);
    this->unk402 = func_80B44870(&this->actor.world.pos, this->unk3FE, this->unk400, play);
    func_80B44050(this, func_80B47CF8);
}

void func_80B47CF8(EnZf* this, PlayState* play) {
    s16 sp2E;

    sp2E = this->actor.yawTowardsPlayer;
    if (this->unk14C.curFrame >= 26.0f) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, sp2E, 1, 0x1770, 0);
    }
    if (SkelAnime_Update(&this->unk14C)) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
        this->actor.world.rot.y = sp2E;
        this->unk3E4 = -1;
        func_80B45384(this);
    }
    if (this->unk14C.curFrame == 22.0f) {
        this->unk3FA = 0;
    }
}

void func_80B47DA8(EnZf* this) {
    Animation_Change(&this->unk14C, &object_zf_Anim_0157F8, 1.5f, 0.0f, Animation_GetLastFrame(&object_zf_Anim_0157F8),
                     ANIMMODE_ONCE, -4.0f);
    if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) &&
        (((this->actor.velocity.y == 0.0f)) || (this->actor.velocity.y == -4.0f))) {
        this->actor.speed = -4.0f;
        this->unk3E4 = 0;
    } else {
        this->unk3E4 = 1;
    }
    if (this->actor.params == -2) {
        this->unk14C.playSpeed = 4.5f;
    }
    if (this->actor.params < 0) {
        this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    }
    Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_DAMAGE);
    this->unk3DC = 0x10;
    func_80B44050(this, func_80B47EB4);
}

void func_80B47EB4(EnZf* this, PlayState* play) {
    s16 var_v0;

    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
        this->actor.speed = 0.0f;
    }
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        if (this->actor.speed < 0.0f) {
            this->actor.speed += 0.05f;
        }
        this->unk3E4 = 0;
    }
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0x1194, 0);
    if (((this->actor.params != -2) || !func_80B44E8C(play, this)) && SkelAnime_Update(&this->unk14C) &&
        (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
        if (D_80B4A1B4 != -1) {
            if (this->unk410 == 0xD) {
                D_80B4A1B0 += 1;
            } else {
                this->actor.world.rot.y = this->actor.shape.rot.y;
                if (!func_80B44058(this, play, 135.0f) && (this->actor.xzDistToPlayer < 90.0f)) {
                    func_80B48210(this);
                } else if ((this->actor.xzDistToPlayer <= 100.0f) && ((play->gameplayFrames % 4) == 0)) {
                    func_80B46A24(this);
                } else {
                    func_80B44DC4(this, play);
                }
            }
        } else {
            var_v0 = this->actor.wallYaw - this->actor.shape.rot.y;
            var_v0 = ABS(var_v0);
            if ((this->actor.params == -2) && (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) && (ABS(var_v0) < 0x2EE0) &&
                (this->actor.xzDistToPlayer < 90.0f)) {
                func_80B48210(this);
            } else if (!func_80B49C2C(play, this)) {
                if (this->actor.params != -2) {
                    this->actor.world.rot.y = this->actor.shape.rot.y;
                    if (!func_80B44058(this, play, 135.0f) && (this->actor.xzDistToPlayer < 90.0f)) {
                        func_80B48210(this);
                    } else if ((this->actor.xzDistToPlayer <= 100.0f) && ((play->gameplayFrames % 4) == 0)) {
                        func_80B46A24(this);
                    } else {
                        func_80B44DC4(this, play);
                    }
                } else if ((this->actor.xzDistToPlayer <= 100.0f) && ((play->gameplayFrames % 4) == 0) &&
                           func_80B44CF0(play, this)) {
                    func_80B46A24(this);
                } else {
                    func_80B44DC4(this, play);
                }
            }
        }
    }
}

void func_80B48210(EnZf* this) {
    Animation_Change(&this->unk14C, &object_zf_Anim_009530, 1.0f, 0.0f, 3.0f, ANIMMODE_ONCE, 0.0f);
    this->unk3F0 = 0;
    this->unk3E4 = 1;
    this->unk3DC = 0x16;
    this->actor.velocity.y = 22.0f;
    this->actor.speed = 7.5f;
    Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_JUMP);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    func_80B44050(this, func_80B482B8);
}

void func_80B482B8(EnZf* this, PlayState* play) {
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0xFA0, 1);
    if (this->actor.velocity.y >= 5.0f) {
        func_800355B8(play, &this->unk4F0);
        func_800355B8(play, &this->unk4E4);
    }
    if (SkelAnime_Update(&this->unk14C)) {
        if (this->unk3F0 == 0) {
            Animation_Change(&this->unk14C, &object_zf_Anim_00A3D4, 3.0f, 0.0f, 13.0f, ANIMMODE_ONCE, -4.0f);
            this->unk3F0 = 0xA;
        } else if (this->actor.bgCheckFlags & (BGCHECKFLAG_GROUND | BGCHECKFLAG_GROUND_TOUCH)) {
            this->actor.world.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
            this->actor.velocity.y = 0.0f;
            this->actor.speed = 0.0f;
            this->actor.world.pos.y = this->actor.floorHeight;
            func_80B46A24(this);
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_ATTACK);
            this->unk14C.curFrame = 13.0f;
        }
    }
}

void func_80B483E4(EnZf* this, PlayState* play) {
    s16 temp_v1_sp2E;
    Player* player;
    f32 temp_ft3;

    if ((this->actor.params < 0) ||
        Actor_TestFloorInDirection(&this->actor, play, 40.0f, this->actor.shape.rot.y + 0x3FFF) ||
        Actor_TestFloorInDirection(&this->actor, play, -40.0f, this->actor.shape.rot.y + 0x3FFF)) {
        Animation_PlayLoop(&this->unk14C, &object_zf_Anim_016388);
        player = GET_PLAYER(play);
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0xFA0, 1);
        temp_v1_sp2E = player->actor.shape.rot.y;
        if (Math_SinS(temp_v1_sp2E - this->actor.shape.rot.y) >= 0.0f) {
            this->actor.speed = -6.0f;
        } else if (Math_SinS(temp_v1_sp2E - this->actor.shape.rot.y) < 0.0f) {
            this->actor.speed = 6.0f;
        }
        this->unk408 = 0.0f;
        this->unk3E4 = 0;
        this->actor.world.rot.y = this->actor.shape.rot.y + 0x3FFF;
        this->unk3F0 = (Rand_ZeroOne() * 10.0f) + 5.0f;
        this->unk3DC = 0xC;
        func_80B44050(this, func_80B48578);
    } else {
        func_80B456B4(this, play);
    }
}

void func_80B48578(EnZf* this, PlayState* play) {
    s16 temp_t0_sp56;
    s16 var_v0;
    Player* player;
    s32 prevFrame;
    s32 beforeCurFrame;
    s32 pad;
    f32 sp40;
    f32 absPlaySpeed;

    player = GET_PLAYER(play);
    sp40 = 0.0f;
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0xBB8, 1);
    temp_t0_sp56 = player->actor.shape.rot.y;
    if (this->actor.params >= 0) {
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
    if (Actor_OtherIsLockedOn(play, &this->actor) != 0) {
        sp40 = 100.0f;
    }
    if (this->actor.xzDistToPlayer <= (70.0f + sp40)) {
        Math_SmoothStepToF(&this->unk408, -4.0f, 1.0f, 1.5f, 0.0f);
    } else if ((90.0f + sp40) < this->actor.xzDistToPlayer) {
        Math_SmoothStepToF(&this->unk408, 4.0f, 1.0f, 1.5f, 0.0f);
    } else {
        Math_SmoothStepToF(&this->unk408, 0.0f, 1.0f, 5.65f, 0.0f);
    }
    if ((this->unk408 != 0.0f) && !func_80B441C4(this, play, this->unk408)) {
        this->actor.world.pos.x += Math_SinS(this->actor.shape.rot.y) * this->unk408;
        this->actor.world.pos.z += Math_CosS(this->actor.shape.rot.y) * this->unk408;
    }
    if (ABS(this->actor.speed) >= ABS(this->unk408)) {
        this->unk14C.playSpeed = -this->actor.speed * 0.75f;
    } else {
        if (this->unk14C.playSpeed < 0.0f) {
            this->unk14C.playSpeed = this->unk408 * -0.75f;
        } else {
            this->unk14C.playSpeed = this->unk408 * 0.75f;
        }
    }
    prevFrame = (s32)this->unk14C.curFrame;
    SkelAnime_Update(&this->unk14C);
    beforeCurFrame = (s32)(this->unk14C.curFrame - ABS(this->unk14C.playSpeed));
    absPlaySpeed = ((void)0, ABS(this->unk14C.playSpeed)); //! FAKE
    this->unk3FE = func_80B446A8(&this->actor.world.pos, this->unk3FE);
    if (func_80B446A8(&player->actor.world.pos, -1) != this->unk3FE) {
        this->actor.speed = 0.0f;
        if ((this->actor.params >= 0) && (D_80B4A1B4 == this->actor.params)) {
            func_80B474E4(this);
        } else {
            func_80B456B4(this, play);
        }
    } else if ((this->actor.params != -2) || !func_80B44E8C(play, this)) {
        if (this->unk3F0 == 0) {
            var_v0 = player->actor.shape.rot.y - this->actor.shape.rot.y;
            if (var_v0 < 0) {
                var_v0 *= -1;
            }
            if (var_v0 >= 0x3A98) {
                if ((this->actor.params >= 0) && (D_80B4A1B4 == this->actor.params)) {
                    func_80B474E4(this);
                } else {
                    func_80B45384(this);
                    this->unk3F0 = (Rand_ZeroOne() * 5.0f) + 1.0f;
                }
            } else if ((this->actor.params >= 0) && (D_80B4A1B4 == this->actor.params)) {
                func_80B474E4(this);
            } else {
                this->actor.world.rot.y = this->actor.shape.rot.y;
                if ((this->actor.xzDistToPlayer <= 100.0f) && ((play->gameplayFrames % 4) == 0) &&
                    (func_80B44CF0(play, this) != 0)) {
                    func_80B46A24(this);
                } else {
                    if ((this->actor.xzDistToPlayer < 280.0f) && (this->actor.xzDistToPlayer > 240.0f) &&
                        !func_80B44058(this, play, 191.9956f) && ((play->gameplayFrames % 2) == 0)) {
                        func_80B45E30(this);
                    } else {
                        func_80B456B4(this, play);
                    }
                }
            }
        y:; //! FAKE
        } else {
            this->unk3F0 -= 1;
        }
        if ((prevFrame != (s32)this->unk14C.curFrame) &&
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

void func_80B48CEC(EnZf* this) {
    Actor* temp_v0;

    Animation_Change(&this->unk14C, &object_zf_Anim_014E60, 1.5f, 0.0f, Animation_GetLastFrame(&object_zf_Anim_014E60),
                     ANIMMODE_ONCE, -4.0f);
    if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) &&
        ((this->actor.velocity.y == 0.0f) || (this->actor.velocity.y == -4.0f))) {
        this->actor.speed = 0.0f;
        this->unk3E4 = 0;
    } else {
        this->unk3E4 = 1;
    }
    this->unk3DC = 0xF;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    if (D_80B4A1B4 != -1) {
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
    func_80B44050(this, func_80B48E50);
}

void func_80B48E50(EnZf* this, PlayState* play) {
    s32 temp_ft1;

    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
        this->actor.speed = 0.0f;
    }
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        Math_SmoothStepToF(&this->actor.speed, 0.0f, 1.0f, 0.15f, 0.0f);
        this->unk3E4 = 0;
    }
    if (SkelAnime_Update(&this->unk14C)) {
        if (this->actor.category != ACTORCAT_PROP) {
            if ((this->actor.params >= 0) && (D_80B4A1B4 == -1)) {
                Flags_SetSwitch(play, this->unk3FC);
                func_800F5B58();
            } else {
                D_80B4A1B4 = -1;
            }
            Actor_ChangeCategory(play, &play->actorCtx, &this->actor, ACTORCAT_PROP);
        }
        if (this->unk404 != 0) {
            this->unk404 -= 5;
            this->actor.shape.shadowAlpha = this->unk404;
        } else {
            Actor_Kill(&this->actor);
        }
    } else {
        temp_ft1 = (s32)this->unk14C.curFrame;
        if ((temp_ft1 == 10) || (temp_ft1 == 18)) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_DOWN);
        }
    }
}

void func_80B48F90(EnZf* this, PlayState* play) {
    s16 temp_v0_2;

    if ((this->actor.params == -2) && (this->unk3DC == 3) && (this->unk3F4 != 0)) {
        this->unk3EC = Math_SinS(this->unk3F4 * 0x578) * 10920.0f;
    } else {
        temp_v0_2 = this->actor.yawTowardsPlayer;
        temp_v0_2 -= (s16)(this->unk3EC + this->actor.shape.rot.y);
        this->unk3EE = CLAMP(temp_v0_2, -0x7D0, 0x7D0);
        this->unk3EC += this->unk3EE;
        this->unk3EC = CLAMP(this->unk3EC, -0x1CD7, 0x1CD7);
    }
}

void func_80B490B4(EnZf* this, PlayState* play) {
    s32 pad;
    s16 var_a3;

    if ((this->unk418.base.acFlags & AC_HIT) && (this->unk3DC < 0xF)) {
        this->unk418.base.acFlags &= ~AC_HIT;
        if ((((this->actor.params < 0)) || (D_80B4A1B4 != this->actor.params)) &&
            ((this->actor.colChkInfo.damageReaction != 6))) {
            this->unk410 = this->actor.colChkInfo.damageReaction;
            Actor_SetDropFlag(&this->actor, &this->unk418.elem, false);
            if ((this->actor.colChkInfo.damageReaction == 1) || (this->actor.colChkInfo.damageReaction == 0xF)) {
                if (this->unk3DC != 0xE) {
                    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_BLUE, 120, COLORFILTER_BUFFLAG_OPA, 80);
                    Actor_ApplyDamage(&this->actor);
                    func_80B47050(this);
                }
            } else {
                Actor_PlaySfx(&this->actor, NA_SE_EN_RIZA_CRY);
                Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 255, COLORFILTER_BUFFLAG_OPA, 8);
                if (Actor_ApplyDamage(&this->actor) == 0) {
                    var_a3 = COLLECTIBLE_DROP_RANDOM_PARAMS(COLLECTIBLE_DROP_TABLE_4, false);
                    func_80B48CEC(this);
                    if (this->actor.params == -2) {
                        var_a3 = COLLECTIBLE_DROP_RANDOM_PARAMS(COLLECTIBLE_DROP_TABLE_14, false);
                    }
                    Item_DropCollectibleRandom(play, &this->actor, &this->actor.world.pos, var_a3);
                    Enemy_StartFinishingBlow(play, &this->actor);
                } else {
                    if (D_80B4A1B4 != -1) {
                        if (((this->actor.colChkInfo.health + this->actor.colChkInfo.damage) >= 4) &&
                            (this->actor.colChkInfo.health < 4)) {
                            this->unk410 = 0xD;
                        }
                    }
                    func_80B47DA8(this);
                }
            }
        }
    }
}

void EnZf_Update(Actor* thisx, PlayState* play) {
    EnZf* this = (EnZf*)thisx;
    s32 pad[2];

    func_80B490B4(this, play);
    if (this->actor.colChkInfo.damageReaction != 6) {
        this->unk3F8 = false;
        if ((this->unk3E4 != 1) && (this->unk3DC != 0x13)) {
            if (this->actor.speed != 0.0f) {
                this->unk3F8 = func_80B44058(this, play, this->actor.speed * 1.5f);
            }
            if (!this->unk3F8) {
                this->unk3F8 = func_80B44058(this, play, 0.0f);
            }
        }
        if (!this->unk3F8) {
            Actor_MoveXZGravity(&this->actor);
        }
        Actor_UpdateBgCheckInfo(play, &this->actor, 25.0f, 30.0f, 60.0f,
                                UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 |
                                    UPDBGCHECKINFO_FLAG_4);
        if (!(this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
            this->unk3E4 = 1;
        }
        this->unk3E8(this, play);
    }
    if (this->actor.colChkInfo.health > 0) {
        if ((this->unk3DC != 9) && (this->unk3DC != 0xE)) {
            func_80B48F90(this, play);
        }
        if ((D_80B4A1B0 != 0) && (D_80B4A1B4 != this->actor.params)) {
            func_80B47360(this, play);
            D_80B4A1B4 = this->actor.params;
            D_80B4A1B0 = 0;
            if (this->actor.prev != NULL) {
                ((UnkActor*)this->actor.prev)->unk3F4 = 0x5A;
            } else {
                ((UnkActor*)this->actor.next)->unk3F4 = 0x5A;
            }
        }
    }
    if (this->unk3DC >= 0xF) {
        Math_SmoothStepToS(&this->unk3EC, 0, 1, 0x7D0, 0);
        if ((this->unk3DC < 0x15) && (this->unk3F4 == 1) && (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
            if (this->actor.colChkInfo.health > 0) {
                func_80B47C64(this, play);
            }
            this->unk3F4 -= 1;
        }
        if (this->unk3F4 >= 2) {
            this->unk3F4 -= 1;
        }
    }
    this->actor.focus.pos = this->actor.world.pos;
    this->actor.focus.pos.y += 40.0f;
    if (this->actor.colChkInfo.health > 0) {
        if (this->unk404 == 0xFF) {
            Collider_UpdateCylinder(&this->actor, &this->unk418);
            if ((this->actor.world.pos.y == this->actor.floorHeight) && (this->unk3DC < 0x11)) {
                CollisionCheck_SetOC(play, &play->colChkCtx, &this->unk418.base);
            }
            if (((this->actor.params < 0) || (D_80B4A1B4 != this->actor.params)) &&
                ((this->actor.colorFilterTimer == 0) || !(this->actor.colorFilterParams & 0x4000))) {
                CollisionCheck_SetAC(play, &play->colChkCtx, &this->unk418.base);
            }
        }
    }
    if ((this->unk3DC == 9) && ((this->unk14C.curFrame >= 14.0f)) && (this->unk14C.curFrame <= 20.0f)) {
        if (!(this->unk464.base.atFlags & AT_BOUNCED) && !(this->unk464.base.acFlags & AC_HIT)) {
            CollisionCheck_SetAT(play, &play->colChkCtx, &this->unk464.base);
        } else {
            this->unk464.base.atFlags &= ~AT_BOUNCED;
            this->unk464.base.acFlags &= ~AC_HIT;
            func_80B46D64(this);
        }
    }
}

s32 func_80B495FC(PlayState* play, s32 arg1, Gfx** arg2, Vec3f* arg3, Vec3s* arg4, void* thisx, Gfx** gfx) {
    EnZf* this = thisx;

    switch (arg1) {
        case 5:
            arg4->y -= this->unk3EC;
            break;

        case 15:
            if (this->unk3FA != 0) {
                *arg2 = object_zf_DL_00E198;
            }
            break;

        case 33:
            if (this->unk3FA != 0) {
                *arg2 = object_zf_DL_010060;
            }
            break;
    }
    return 0;
}

void func_80B49688(PlayState* play, s32 arg1, Gfx** arg2, Vec3s* arg3, void* thisx, Gfx** gfx) {
    Vec3f sp54;
    Vec3f sp48;
    s32 var_s1;
    EnZf* this = thisx;

    var_s1 = -1;
    if (arg1 == 0xF) {
        Matrix_MultVec3f(&D_80B4A2BC, &this->unk464.dim.quad[1]);
        Matrix_MultVec3f(&D_80B4A2C8, &this->unk464.dim.quad[0]);
        Matrix_MultVec3f(&D_80B4A2D4, &this->unk464.dim.quad[3]);
        Matrix_MultVec3f(&D_80B4A2E0, &this->unk464.dim.quad[2]);
        Collider_SetQuadVertices(&this->unk464, &this->unk464.dim.quad[0], &this->unk464.dim.quad[1],
                                 &this->unk464.dim.quad[2], &this->unk464.dim.quad[3]);
        Matrix_MultVec3f(&D_80B4A2A4, &sp54);
        Matrix_MultVec3f(&D_80B4A2B0, &sp48);
        if (this->unk3DC == 9) {
            if (this->unk14C.curFrame < 14.0f) {
                EffectBlure_AddSpace(Effect_GetByIndex(this->unk414));
            } else if (this->unk14C.curFrame < 20.0f) {
                EffectBlure_AddVertex(Effect_GetByIndex(this->unk414), &sp54, &sp48);
            }
        }
    } else {
        Actor_SetFeetPos(&this->actor, arg1, 0x2D, &D_80B4A298, 0x26, &D_80B4A298);
    }
    switch (arg1) {
        case 0x2D:
            Matrix_MultVec3f(&D_80B4A298, &this->unk4F0);
            break;
        case 0x26:
            Matrix_MultVec3f(&D_80B4A298, &this->unk4E4);
            break;
    }
    if (this->unk3F6 != 0) {
        switch (arg1) {
            case 9:
                var_s1 = 0;
                break;
            case 10:
                var_s1 = 1;
                break;
            case 25:
                var_s1 = 2;
                break;
            case 16:
                var_s1 = 3;
                break;
            case 23:
                var_s1 = 4;
                break;
            case 48:
                var_s1 = 5;
                break;
            case 14:
                var_s1 = 6;
                break;
            case 39:
                var_s1 = 7;
                break;
            case 43:
                var_s1 = 8;
                break;
        }
        if (var_s1 >= 0) {
            Matrix_MultVec3f(&D_80B4A2EC, &this->unk4FC[var_s1]);
        }
    }
}

void EnZf_Draw(Actor* thisx, PlayState* play) {
    EnZf* this = (EnZf*)thisx;
    s32 v;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_zf.c", 3533);
    func_8002EBCC(&this->actor, play, 1);
    gSPTexture(D_80B4A2F8, gRegEditor->data[0x360], gRegEditor->data[0x361], 0, G_TX_RENDERTILE, G_ON);
    gSPSegment(POLY_OPA_DISP++, 8, D_80B4A2F8);
    if (this->unk404 == 255) {
        Gfx_SetupDL_25Opa(play->state.gfxCtx);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, this->unk404);
        gSPSegment(POLY_OPA_DISP++, 9, &D_80116280[2]);
        POLY_OPA_DISP = SkelAnime_Draw(play, this->unk14C.skeleton, this->unk14C.jointTable, func_80B495FC,
                                       func_80B49688, this, POLY_OPA_DISP);
        if (this->unk3F6 != 0) {
            thisx->colorFilterTimer += 1;
            this->unk3F6 -= 1;
            if (!(this->unk3F6 & 3)) {
                v = this->unk3F6 >> 2;
                EffectSsEnIce_SpawnFlyingVec3f(play, &this->actor, &this->unk4FC[v], 150, 150, 150, 250, 235, 245, 255,
                                               1.4f);
            }
        }
    } else {
        Gfx_SetupDL_25Xlu(play->state.gfxCtx);
        gDPPipeSync(POLY_XLU_DISP++);
        gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, this->unk404);
        gSPSegment(POLY_XLU_DISP++, 9, D_80116280);
        POLY_XLU_DISP = SkelAnime_Draw(play, this->unk14C.skeleton, this->unk14C.jointTable, func_80B495FC,
                                       func_80B49688, this, POLY_XLU_DISP);
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_zf.c", 3601);
}

void func_80B49B60(EnZf* this, f32 arg1) {
    Animation_MorphToLoop(&this->unk14C, &object_zf_Anim_016388, -1.0f);
    this->unk3F0 = (Rand_ZeroOne() * 10.0f) + 8.0f;
    if (this->actor.params == -2) {
        this->actor.speed = 2.0f * arg1;
        this->unk3F0 /= 2;
    } else {
        this->actor.speed = arg1;
    }
    this->unk3E4 = 0;
    this->actor.world.rot.y = this->actor.shape.rot.y + 0x3FFF;
    this->unk3DC = 0xC;
    func_80B44050(this, func_80B48578);
}

s32 func_80B49C2C(PlayState* play, EnZf* this) {
    Actor* temp_v0_sp1C;
    s16 sp1A;
    s16 var_t0_sp18;
    s16 var_v1;

    temp_v0_sp1C = Actor_GetProjectileActor(play, &this->actor, 600.0f);
    if (temp_v0_sp1C != NULL) {
        sp1A = Actor_WorldYawTowardActor(&this->actor, temp_v0_sp1C) - (s16)(this->actor.shape.rot.y + 0);
        this->actor.world.rot.y = this->actor.shape.rot.y + 0x3FFF;
        var_t0_sp18 = 0;
        if (func_80B44058(this, play, -8.0f)) {
            var_t0_sp18 |= 1;
        }
        if (func_80B44058(this, play, 8.0f)) {
            var_t0_sp18 |= 2;
        }
        this->actor.world.rot.y = this->actor.shape.rot.y;
        if ((((this->actor.xzDistToPlayer < 90.0f) || (var_t0_sp18 == 3)) && !func_80B44058(this, play, 135.0f)) ||
            (temp_v0_sp1C->id == ACTOR_ARMS_HOOK)) {
            func_80B48210(this);
        } else {
            this->actor.world.rot.y = this->actor.shape.rot.y + 0x3FFF;
            if (var_t0_sp18 == 0) {
                var_v1 = play->gameplayFrames & 1;
            } else {
                var_v1 = var_t0_sp18;
            }
            if ((ABS(sp1A) < 0x2000) || (ABS(sp1A) >= 0x6000)) {
                if (var_v1 & 1) {
                    func_80B49B60(this, 8.0f);
                } else {
                    func_80B49B60(this, -8.0f);
                }
            } else if (ABS(sp1A) < 0x5FFF) {
                if (var_v1 & 1) {
                    func_80B49B60(this, 4.0f);
                } else {
                    func_80B49B60(this, -4.0f);
                }
            }
        }
        return true;
    }
    return false;
}

s32 func_80B49E4C(PlayState* play, EnZf* this) {
    Actor* temp_v0;
    s16 sp22;
    s16 sp20;
    s16 sp1E;
    s16 sp1C;

    sp1C = 0;
    temp_v0 = Actor_GetProjectileActor(play, &this->actor, 600.0f);
    if (temp_v0 != NULL) {
        sp22 = Actor_WorldYawTowardActor(&this->actor, temp_v0) - (s16)(this->actor.shape.rot.y + 0);
        this->actor.world.rot.y = this->actor.shape.rot.y + 0x3FFF;
        sp20 = 0;
        if (func_80B44058(this, play, -70.0f)) {
            sp20 |= 1;
        }
        if (func_80B44058(this, play, 70.0f)) {
            sp20 |= 2;
        }
        this->actor.speed = 0.0f;
        if ((ABS(sp22) < 0x2000 || ABS(sp22) > 0x5FFF)) {
            if (sp20 == 0) {
                if ((play->gameplayFrames % 2) != 0) {
                    sp1E = 6;
                } else {
                    sp1E = -6;
                }
            } else {
                switch (sp20) {
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
        } else if (ABS(sp22) < 0x5FFF) {
            if (sp20 == 0) {
                if ((play->gameplayFrames % 2) != 0) {
                    sp1E = 6;
                } else {
                    sp1E = -6;
                }
            } else {
                switch (sp20) {
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
        this->unk408 = sp1E;
        this->unk40C = sp1C;
        return 1;
    }
    return 0;
}
