/*
 * File: z_en_wf.c
 * Overlay: ovl_En_Wf
 * Description: Wolfos
 */

#include "z_en_wf.h"

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
#include "z_en_item00.h"
#include "z_lib.h"
#include "audio.h"
#include "effect.h"
#include "play_state.h"
#include "player.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE | ACTOR_FLAG_UPDATE_CULLING_DISABLED)

void EnWf_Init(Actor* thisx, PlayState* play);
void EnWf_Destroy(Actor* thisx, PlayState* play);
void EnWf_Update(Actor* thisx, PlayState* play);
void EnWf_Draw(Actor* thisx, PlayState* play);

void func_80B34380(EnWf* this);
void func_80B34428(EnWf* this, PlayState* play);
void func_80B3455C(EnWf* this);
void func_80B345E4(EnWf* this, PlayState* play);
void func_80B347FC(EnWf* this, PlayState* play);
void func_80B3487C(EnWf* this, PlayState* play);
void func_80B34CFC(EnWf* this);
void func_80B34D48(EnWf* this, PlayState* play);
void func_80B34F28(EnWf* this);
void func_80B35024(EnWf* this, PlayState* play);
void func_80B35540(EnWf* this);
void func_80B355BC(EnWf* this, PlayState* play);
void func_80B359A8(EnWf* this, PlayState* play);
void func_80B35B94(EnWf* this);
void func_80B35C10(EnWf* this, PlayState* play);
void func_80B35D90(EnWf* this, PlayState* play);
void func_80B35EE4(EnWf* this, PlayState* play);
void func_80B360E8(EnWf* this);
void func_80B361A0(EnWf* this, PlayState* play);
void func_80B36288(EnWf* this);
void func_80B36328(EnWf* this, PlayState* play);
void func_80B365A8(EnWf* this, PlayState* play);
void func_80B36740(EnWf* this, PlayState* play);
void func_80B36C8C(EnWf* this);
void func_80B36D3C(EnWf* this, PlayState* play);
s32 func_80B37830(PlayState* play, EnWf* this);

extern FlexSkeletonHeader D_6003BC0;
extern AnimationHeader D_6004638;
extern AnimationHeader D_6004AD0;
extern AnimationHeader D_6004CA4;
extern AnimationHeader D_6005430;
extern AnimationHeader D_60057A0;
extern FlexSkeletonHeader D_6009690;
extern AnimationHeader D_60098C8;
extern AnimationHeader D_6009B20;
extern AnimationHeader D_600A4AC;

static ColliderJntSphElementInit D_80B37990[4] = {
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0xFFCFFFFF, HIT_SPECIAL_EFFECT_NONE, 0x04 },
            { 0x00000000, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_ON | ATELEM_SFX_NORMAL,
            ACELEM_NONE,
            OCELEM_NONE,
        },
        { 15, { { 0, 0, 0 }, 15 }, 100 },
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
        { 21, { { 0, 0, 0 }, 15 }, 100 },
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
        { 17, { { 800, 0, 0 }, 25 }, 100 },
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
        { 12, { { 0, 0, 0 }, 30 }, 100 },
    },
};

static ColliderJntSphInit D_80B37A20 = {
    {
        COL_MATERIAL_METAL,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_HARD | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    4,
    D_80B37990,
};

static ColliderCylinderInit D_80B37A30 = {
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

static ColliderCylinderInit D_80B37A5C = {
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

static DamageTable D_80B37A88 = {
    {
        0x10, 2,    1,    2,    0x10, 2, 2, 0x10, 1, 2, 4, 0xE4, 2, 2, 2, 2,
        2,    0xE4, 0x60, 0xD3, 0,    0, 1, 4,    2, 2, 8, 4,    0, 0, 4, 0,
    },
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

static InitChainEntry D_80B37AC8[2] = {
    ICHAIN_F32(lockOnArrowOffset, 2000, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -3000, ICHAIN_STOP),
};
static Vec3f D_80B37AD0 = { 0.0f, 0.5f, 0.0f };
static Vec3f D_80B37ADC = { 1200.0f, 0.0f, 0.0f };
static Vec3f D_80B37AE8 = { 0.0f, 0.0f, 0.0f };
static s32 D_80B37AF4[4] = { 0x06007B68, 0x06008368, 0x06008568, 0x06008368 };
static s32 D_80B37B04[7] = { 0x06000300, 0x060027D8, 0x060029D8, 0x060027D8, 0, 0, 0 };

void func_80B33CB0(EnWf* this, void (*arg1)(EnWf*, PlayState*)) {
    this->unk2DC = arg1;
}

void EnWf_Init(Actor* thisx, PlayState* play) {
    EnWf* this = (EnWf*)thisx;
    s32 pad;

    Actor_ProcessInitChain(&this->actor, D_80B37AC8);
    this->actor.colChkInfo.damageTable = &D_80B37A88;
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 0.0f);
    this->actor.focus.pos = this->actor.world.pos;
    this->actor.colChkInfo.mass = MASS_HEAVY;
    this->actor.colChkInfo.health = 8;
    this->actor.colChkInfo.cylRadius = 50;
    this->actor.colChkInfo.cylHeight = 100;
    this->unk2FC = PARAMS_GET_U(thisx->params, 8, 8);
    this->actor.params &= 0xFF;
    this->unk302 = 0;
    this->unk2F4 = 10.0f;
    Collider_InitJntSph(play, &this->unk304);
    Collider_SetJntSph(play, &this->unk304, &this->actor, &D_80B37A20, this->unk324);
    Collider_InitCylinder(play, &this->unk424);
    Collider_SetCylinder(play, &this->unk424, &this->actor, &D_80B37A30);
    Collider_InitCylinder(play, &this->unk470);
    Collider_SetCylinder(play, &this->unk470, &this->actor, &D_80B37A5C);
    if (this->actor.params == 0) {
        SkelAnime_InitFlex(play, &this->unk188, &D_6009690, &D_600A4AC, this->unk1CC, this->unk250, 22);
        Actor_SetScale(&this->actor, 0.0075f);
        this->actor.naviEnemyId = NAVI_ENEMY_WOLFOS;
    } else {
        SkelAnime_InitFlex(play, &this->unk188, &D_6003BC0, &D_600A4AC, this->unk1CC, this->unk250, 22);
        Actor_SetScale(&this->actor, 0.01f);
        this->unk304.elements[0].base.atDmgInfo.damage = this->unk304.elements[1].base.atDmgInfo.damage = 8;
        this->actor.naviEnemyId = NAVI_ENEMY_WHITE_WOLFOS;
    }
    func_80B34380(this);
    if ((this->unk2FC != 0xFF) && Flags_GetSwitch(play, this->unk2FC)) {
        Actor_Kill(&this->actor);
    }
}

typedef struct UnkActor {
    Actor actor;
    char pad14C[0x152 - 0x14C];
    s16 unk152;
} UnkActor;

void EnWf_Destroy(Actor* thisx, PlayState* play) {
    EnWf* this = (EnWf*)thisx;
    UnkActor* temp_v1;

    Collider_DestroyJntSph(play, &this->unk304);
    Collider_DestroyCylinder(play, &this->unk424);
    Collider_DestroyCylinder(play, &this->unk470);
    if ((this->actor.params != 0) && (this->unk2FC != 0xFF)) {
        func_800F5B58();
    }
    if ((this->actor.parent != NULL)) {
        temp_v1 = (UnkActor*)this->actor.parent;
        if ((temp_v1->actor.update != NULL)) {

            if (temp_v1->unk152 > 0) {
                temp_v1->unk152 -= 1;
            }
            PRINTF("\n\n");
            PRINTF("\x1b[32m☆☆☆☆☆ 同時発生数 ☆☆☆☆☆%d\n\x1b[m", temp_v1->unk152);
            PRINTF("\n\n");
        }
    }
}

s32 func_80B33FB0(PlayState* play, EnWf* this, s16 arg2) {
    Player* player;
    s32 pad;
    s16 var_t0;
    s16 var_v1;

    player = GET_PLAYER(play);

    var_t0 = this->actor.wallYaw - this->actor.shape.rot.y;
    if (var_t0 < 0) {
        var_t0 *= -1;
    }
    var_v1 = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    if (var_v1 < 0) {
        var_v1 *= -1;
    }

    if (func_800354B4(play, &this->actor, 100.0f, 0x2710, 0x2EE0, this->actor.shape.rot.y) != 0) {
        if (player->meleeWeaponAnimation == PLAYER_MWA_JUMPSLASH_START) {
            func_80B36288(this);
            return 1;
        }
        if (play->gameplayFrames & 1) {
            func_80B36288(this);
            return 1;
        }
    }

    if (func_800354B4(play, &this->actor, 100.0f, 0x5DC0, 0x2AA8, this->actor.shape.rot.y) != 0) {
        this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
        if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
            if ((ABS(var_t0) < 0x2EE0) && (this->actor.xzDistToPlayer < 120.0f)) {
                func_80B360E8(this);
                return 1;
            }
        }
        if (player->meleeWeaponAnimation == PLAYER_MWA_JUMPSLASH_START) {
            func_80B36288(this);
            return 1;
        }
        if ((this->actor.xzDistToPlayer < 80.0f) && (play->gameplayFrames & 1)) {
            func_80B36288(this);
            return 1;
        }
        func_80B35B94(this);
        return 1;
    } else {
        Actor* temp_v0_2;

        temp_v0_2 = Actor_FindNearby(play, &this->actor, -1, ACTORCAT_EXPLOSIVE, 80.0f);
        if (temp_v0_2 != NULL) {
            this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
            if (((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) && (var_t0 < 0x2EE0)) ||
                (temp_v0_2->id == ACTOR_EN_BOM_CHU)) {
                if (temp_v0_2->id == ACTOR_EN_BOM_CHU) {
                    if ((Actor_WorldDistXYZToActor(&this->actor, temp_v0_2) < 80.0f) &&
                        ((s16)(this->actor.shape.rot.y - temp_v0_2->world.rot.y + 0x8000) < 0x3E80)) {
                        func_80B360E8(this);
                        return 1;
                    }
                }
                func_80B365A8(this, play);
                return 1;
            }
            func_80B35B94(this);
            return 1;
        }
    }

    if (arg2 != 0) {
        s16 temp_v1_3;

        if (var_v1 >= 0x1B58) {
            func_80B365A8(this, play);
            return 1;
        }
        temp_v1_3 = player->actor.shape.rot.y - this->actor.shape.rot.y;
        if (this->actor.xzDistToPlayer <= 80.0f) {
            if (Actor_OtherIsLockedOn(play, &this->actor) == 0) {

                if ((play->gameplayFrames & 7) || (ABS(temp_v1_3) < 0x38E0)) {
                    func_80B35540(this);
                    return 1;
                }
            }
        }
        func_80B34F28(this);

        return 1;
    }
    return 0;
}

void func_80B34380(EnWf* this) {
    Animation_Change(&this->unk188, &D_6005430, 0.5f, 0.0f, 7.0f, ANIMMODE_ONCE_INTERP, 0.0f);
    this->actor.world.pos.y = this->actor.home.pos.y - 5.0f;
    this->unk2E8 = 0x14;
    this->unk300 = 0;
    this->unk2D4 = 0;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    this->actor.scale.y = 0.0f;
    this->actor.gravity = 0.0f;
    func_80B33CB0(this, func_80B34428);
}

void func_80B34428(EnWf* this, PlayState* play) {

    if (this->unk2E8 >= 6) {
        this->actor.world.pos.y = this->actor.home.pos.y - 5.0f;
        if (this->actor.xzDistToPlayer < 240.0f) {
            this->unk2E8 = 5;
            this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
            if ((this->actor.params != 0) && (this->unk2FC != 0xFF)) {
                func_800F5ACC(NA_BGM_MINI_BOSS);
            }
        }
    } else if (this->unk2E8 != 0) {
        this->actor.scale.y += this->actor.scale.x * 0.2f;
        this->actor.world.pos.y += 0.5f;
        Math_SmoothStepToF(&this->actor.shape.shadowScale, 70.0f, 1.0f, 14.0f, 0.0f);
        this->unk2E8 -= 1;
        if (this->unk2E8 == 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_WOLFOS_APPEAR);
        }
    } else if (SkelAnime_Update(&this->unk188)) {
        this->actor.scale.y = this->actor.scale.x;
        this->actor.gravity = -2.0f;
        func_80B3455C(this);
    }
}

void func_80B3455C(EnWf* this) {
    Animation_MorphToLoop(&this->unk188, &D_600A4AC, -4.0f);
    this->unk2D4 = 6;
    this->unk2E8 = (Rand_ZeroOne() * 10.0f) + 2.0f;
    this->actor.speed = 0.0f;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    func_80B33CB0(this, func_80B345E4);
}

void func_80B345E4(EnWf* this, PlayState* play) {
    Player* player;
    s32 pad;
    s16 var_v1_sp26;

    player = GET_PLAYER(play);
    SkelAnime_Update(&this->unk188);
    if (this->unk2E2 != 0) {
        var_v1_sp26 = (this->actor.yawTowardsPlayer - this->actor.shape.rot.y) - this->unk4D6;
        if (ABS(var_v1_sp26) >= 0x2001) {
            this->unk2E2 -= 1;
            return;
        }
        this->unk2E2 = 0;
    }
    var_v1_sp26 = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    if (var_v1_sp26 < 0) {
        var_v1_sp26 *= -1;
    }
    if (func_80B37830(play, this) == 0) {
        if (this->unk2E0 != 0) {
            this->unk2E0 -= 1;
            if (var_v1_sp26 < 0x1FFE) {
                this->unk2E0 = 0;
            } else {
                return;
            }
        } else if (func_80B33FB0(play, this, 0) != 0) {
            return;
        }
        var_v1_sp26 = player->actor.shape.rot.y - this->actor.shape.rot.y;
        if (var_v1_sp26 < 0) {
            var_v1_sp26 *= -1;
        }
        if ((this->actor.xzDistToPlayer < 80.0f) && (player->meleeWeaponState != 0) && (var_v1_sp26 >= 0x1F40)) {
            this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
            func_80B34F28(this);
        } else {
            this->unk2E8 -= 1;
            if (this->unk2E8 == 0) {
                if (Actor_IsFacingPlayer(&this->actor, 0x1555)) {
                    if (Rand_ZeroOne() > 0.3f) {
                        func_80B347FC(this, play);
                    } else {
                        func_80B34F28(this);
                    }
                } else {
                    func_80B34CFC(this);
                }
                if ((play->gameplayFrames & 0x5F) == 0) {
                    Actor_PlaySfx(&this->actor, NA_SE_EN_WOLFOS_CRY);
                }
            }
        }
    }
}

void func_80B347FC(EnWf* this, PlayState* play) {
    Animation_Change(&this->unk188, &D_60057A0, 1.0f, 0.0f, Animation_GetLastFrame(&D_60057A0), ANIMMODE_LOOP_INTERP,
                     -4.0f);
    this->unk2D4 = 9;
    func_80B33CB0(this, func_80B3487C);
}

void func_80B3487C(EnWf* this, PlayState* play) {
    s32 prevFrame;
    s32 beforeCurFrame;
    s32 pad;
    f32 sp50_real;
    s32 pad2;
    Player* sp48_real;
    s32 pad3;
    s16 temp_v1_real;
    s16 var_v0_real;
    f32 absPlaySpeed;
    s32 pad4;

    sp50_real = 0.0f;
    sp48_real = GET_PLAYER(play);
    if (func_80B37830(play, this) == 0) {
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
        this->unk188.playSpeed = this->actor.speed * 0.175f;
        var_v0_real = sp48_real->actor.shape.rot.y - this->actor.shape.rot.y;
        if (var_v0_real < 0) {
            var_v0_real *= -1;
        }
        if ((this->actor.xzDistToPlayer < (150.0f + sp50_real)) && (sp48_real->meleeWeaponState != 0) &&
            (var_v0_real >= 0x1F40)) {
            this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
            if (Rand_ZeroOne() > 0.7f) {
                func_80B34F28(this);
                return;
            }
        }
        prevFrame = (s32)this->unk188.curFrame;
        SkelAnime_Update(&this->unk188);
        absPlaySpeed = ABS(this->unk188.playSpeed);
        beforeCurFrame = (s32)(this->unk188.curFrame - absPlaySpeed);
        absPlaySpeed = ABS(this->unk188.playSpeed);
        if (Actor_IsFacingPlayer(&this->actor, 0x11C7) == 0) {
            if (Rand_ZeroOne() > 0.5f) {
                func_80B34F28(this);
            } else {
                func_80B3455C(this);
            }
        } else if (this->actor.xzDistToPlayer < (90.0f + sp50_real)) {
            temp_v1_real = sp48_real->actor.shape.rot.y - this->actor.shape.rot.y;
            if (!Actor_OtherIsLockedOn(play, &this->actor) &&
                ((Rand_ZeroOne() > 0.03f) || ((this->actor.xzDistToPlayer <= 80.0f) && (ABS(temp_v1_real) < 0x38E0)))) {
                func_80B35540(this);
            } else {
                if ((Actor_OtherIsLockedOn(play, &this->actor)) && (Rand_ZeroOne() > 0.5f)) {
                    func_80B35B94(this);
                } else {
                    func_80B34F28(this);
                }
            }
        }
        if (func_80B33FB0(play, this, 0) == 0) {
            if ((play->gameplayFrames & 0x5F) == 0) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_WOLFOS_CRY);
            }
            if ((prevFrame != (s32)this->unk188.curFrame) && (beforeCurFrame <= 0) &&
                (((s32)absPlaySpeed + prevFrame) > 0)) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_WOLFOS_WALK);
                Actor_SpawnFloorDustRing(play, &this->actor, &this->actor.world.pos, 20.0f, 3, 3.0f, 50, 50, true);
            }
        }
    }
}

void func_80B34CFC(EnWf* this) {
    Animation_MorphToLoop(&this->unk188, &D_60098C8, -4.0f);
    this->unk2D4 = 0xA;
    func_80B33CB0(this, func_80B34D48);
}

void func_80B34D48(EnWf* this, PlayState* play) {
    f32 var_fv1;
    s16 temp_v0;
    s16 temp_v1;

    if ((func_80B37830(play, this) == 0) && (func_80B33FB0(play, this, 0) == 0)) {
        temp_v0 = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
        if (temp_v0 > 0) {
            temp_v1 = (temp_v0 * 0.25f) + 2000.0f;
        } else {
            temp_v1 = (temp_v0 * 0.25f) - 2000.0f;
        }
        this->actor.shape.rot.y += temp_v1;
        this->actor.world.rot.y = this->actor.shape.rot.y;
        if (temp_v0 > 0) {
            var_fv1 = temp_v1 * 0.5f;
            if (var_fv1 > 1.0f) {
                var_fv1 = 1.0f;
            }
        } else {
            var_fv1 = temp_v1 * 0.5f;
            if (var_fv1 < -1.0f) {
                var_fv1 = -1.0f;
            }
        }
        this->unk188.playSpeed = -var_fv1;
        SkelAnime_Update(&this->unk188);
        if (Actor_IsFacingPlayer(&this->actor, 0x1555)) {
            if (Rand_ZeroOne() > 0.8f) {
                func_80B34F28(this);
            } else {
                func_80B347FC(this, play);
            }
        }
        if ((play->gameplayFrames & 0x5F) == 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_WOLFOS_CRY);
        }
    }
}

void func_80B34F28(EnWf* this) {
    Animation_Change(&this->unk188, &D_60057A0, 1.0f, 0.0f, Animation_GetLastFrame(&D_60057A0), ANIMMODE_LOOP_INTERP,
                     -4.0f);
    if (Rand_ZeroOne() > 0.5f) {
        this->unk2FE = 0x3E80;
    } else {
        this->unk2FE = -0x3E80;
    }
    this->actor.speed = 6.0f;
    this->unk188.playSpeed = this->actor.speed * 0.175f;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->unk2E8 = (Rand_ZeroOne() * 30.0f) + 30.0f;
    this->unk2D4 = 0xB;
    this->unk2EC = 0.0f;
    func_80B33CB0(this, func_80B35024);
}

void func_80B35024(EnWf* this, PlayState* play) {
    s16 sp56_real;
    s32 new_var;
    f32 sp4C_real;
    s32 prevFrame;
    s32 beforeCurFrame;
    s32 absPlaySpeed;
    Player* player;
    s16 var_v0_2_real;

    sp4C_real = 0.0f;
    player = GET_PLAYER(play);
    Math_SmoothStepToS(&this->actor.shape.rot.y, (s16)(this->actor.yawTowardsPlayer + this->unk2FE), 1, 0xFA0, 1);
    if ((func_80B37830(play, this) == 0) && (func_80B33FB0(play, this, 0) == 0)) {
        this->actor.world.rot.y = this->actor.shape.rot.y;
        sp56_real = player->actor.shape.rot.y + this->unk2FE + 0x8000;
        if ((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) ||
            !Actor_TestFloorInDirection(&this->actor, play, this->actor.speed, this->actor.shape.rot.y)) {
            if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
                var_v0_2_real = (this->actor.wallYaw - this->actor.yawTowardsPlayer) - this->unk2FE;
            } else {
                var_v0_2_real = 0;
            }
            if (ABS(var_v0_2_real) > 0x2EE0) {
                this->unk2FE = -this->unk2FE;
            }
        }
        if (Actor_OtherIsLockedOn(play, &this->actor)) {
            sp4C_real = 150.0f;
        }
        if (this->actor.xzDistToPlayer <= (60.0f + sp4C_real)) {
            Math_SmoothStepToF(&this->unk2EC, -4.0f, 1.0f, 1.5f, 0.0f);
        } else if (this->actor.xzDistToPlayer > (80.0f + sp4C_real)) {
            Math_SmoothStepToF(&this->unk2EC, 4.0f, 1.0f, 1.5f, 0.0f);
        } else {
            Math_SmoothStepToF(&this->unk2EC, 0.0f, 1.0f, 6.65f, 0.0f);
        }
        if (this->unk2EC != 0.0f) {
            this->actor.world.pos.x += Math_SinS(this->actor.shape.rot.y) * this->unk2EC;
            this->actor.world.pos.z += Math_CosS(this->actor.shape.rot.y) * this->unk2EC;
        }
        if (ABS(this->unk2EC) < ABS(this->actor.speed)) {
            this->unk188.playSpeed = this->actor.speed * 0.175f;
        } else {
            this->unk188.playSpeed = this->unk2EC * 0.175f;
        }
        this->unk188.playSpeed = CLAMP(this->unk188.playSpeed, -3.0f, 3.0f);
        prevFrame = (s32)this->unk188.curFrame;
        SkelAnime_Update(&this->unk188);
        beforeCurFrame = (s32)(this->unk188.curFrame - ABS(this->unk188.playSpeed));
        absPlaySpeed = new_var = (s32)ABS(this->unk188.playSpeed);
        if ((prevFrame != (s32)this->unk188.curFrame) && (beforeCurFrame <= 0) && ((absPlaySpeed + prevFrame) > 0)) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_WOLFOS_WALK);
            Actor_SpawnFloorDustRing(play, &this->actor, &this->actor.world.pos, 20.0f, 3, 3.0f, 50, 50, true);
        }
        if ((play->gameplayFrames & 0x5F) == 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_WOLFOS_CRY);
        }
        if ((Math_CosS(sp56_real - this->actor.shape.rot.y) < -0.85f) && !Actor_OtherIsLockedOn(play, &this->actor) &&
            (this->actor.xzDistToPlayer <= 80.0f)) {
            func_80B35540(this);
        } else {
            this->unk2E8 -= 1;
            if (this->unk2E8 == 0) {
                if (Actor_OtherIsLockedOn(play, &this->actor) && (Rand_ZeroOne() > 0.5f)) {
                    func_80B35B94(this);
                } else {
                    func_80B3455C(this);
                    this->unk2E8 = (Rand_ZeroOne() * 3.0f) + 1.0f;
                }
            }
        }
    }
}

void func_80B35540(EnWf* this) {
    Animation_PlayOnce(&this->unk188, &D_6004638);
    this->unk304.base.atFlags &= ~4;
    this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
    this->unk2D4 = 8;
    this->unk2FA = 0;
    this->unk2E8 = 7;
    this->unk188.endFrame = 20.0f;
    this->actor.speed = 0.0f;
    func_80B33CB0(this, func_80B355BC);
}

void func_80B355BC(EnWf* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s16 sp42;
    s16 sp40;
    s32 var_a2_sp3C;

    sp42 = player->actor.shape.rot.y - this->actor.shape.rot.y;
    sp40 = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    var_a2_sp3C = (s32)this->unk188.curFrame;
    sp42 = ABS(sp42);
    sp40 = ABS(sp40);
    this->actor.speed = 0.0f;
    if (((var_a2_sp3C >= 9) && (var_a2_sp3C <= 12)) || ((var_a2_sp3C >= 17) && (var_a2_sp3C <= 19))) {
        if (this->unk2F8 == 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_WOLFOS_ATTACK);
        }
        this->unk2F8 = 1;
    } else {
        this->unk2F8 = 0;
    }
    if (((var_a2_sp3C == 0xF) && !Actor_IsLockedOn(play, &this->actor) &&
         (!Actor_IsFacingPlayer(&this->actor, 0x2000) || (this->actor.xzDistToPlayer >= 100.0f))) ||
        SkelAnime_Update(&this->unk188)) {
        if ((var_a2_sp3C != 0xF) && (this->unk2E8 != 0)) {
            this->actor.shape.rot.y += (s16)(s32)(3276.0f * (1.5f + ((this->unk2E8 - 4) * 0.4f)));
            Actor_SpawnFloorDustRing(play, &this->actor, &this->actor.world.pos, 15.0f, 1, 2.0f, 50, 50, true);
            this->unk2E8 -= 1;
        } else if ((Actor_IsFacingPlayer(&this->actor, 0x1554) == 0) && (var_a2_sp3C != 0xF)) {
            func_80B3455C(this);
            this->unk2E8 = (s32)((Rand_ZeroOne() * 5.0f) + 5.0f);
            if (sp40 > 0x32C8) {
                this->unk2E2 = 7;
            }
        } else {
            if ((Rand_ZeroOne() > 0.7f) || (this->actor.xzDistToPlayer >= 120.0f)) {
                func_80B3455C(this);
                this->unk2E8 = (Rand_ZeroOne() * 5.0f) + 5.0f;
            } else {
                this->actor.world.rot.y = this->actor.yawTowardsPlayer;
                if (Rand_ZeroOne() > 0.7f) {
                    func_80B365A8(this, play);
                } else {
                    if (sp42 <= 0x2710) {
                        if (sp40 > 0x3E80) {
                            this->actor.world.rot.y = this->actor.yawTowardsPlayer;
                            func_80B34F28(this);
                        } else {
                            func_80B33FB0(play, this, 1);
                        }
                    } else {
                        func_80B34F28(this);
                    }
                }
            }
        }
    }
}

void func_80B3590C(EnWf* this) {
    f32 var_fv0;

    var_fv0 = 1.0f;
    if ((s32)this->unk188.curFrame >= 16) {
        var_fv0 = 15.0f;
    }
    Animation_Change(&this->unk188, &D_6004638, -0.5f, this->unk188.curFrame - 1.0f, var_fv0, ANIMMODE_ONCE_INTERP,
                     0.0f);
    this->unk2D4 = 0xC;
    this->unk2F8 = 0;
    func_80B33CB0(this, func_80B359A8);
}

void func_80B359A8(EnWf* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s16 var_a2;
    s16 var_a3;

    var_a2 = player->actor.shape.rot.y - this->actor.shape.rot.y;
    var_a3 = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    if (var_a2 < 0) {
        var_a2 *= -1;
    }
    if (var_a3 < 0) {
        var_a3 *= -1;
    }
    if (SkelAnime_Update(&this->unk188)) {
        if (!Actor_IsFacingPlayer(&this->actor, 0x1554)) {
            func_80B3455C(this);
            this->unk2E8 = (Rand_ZeroOne() * 5.0f) + 5.0f;
            if (var_a3 > 0x32C8) {
                this->unk2E2 = 0x1E;
            }
        } else if ((Rand_ZeroOne() > 0.7f) || (this->actor.xzDistToPlayer >= 120.0f)) {
            func_80B3455C(this);
            this->unk2E8 = (Rand_ZeroOne() * 5.0f) + 5.0f;
        } else {
            this->actor.world.rot.y = this->actor.yawTowardsPlayer;
            if (Rand_ZeroOne() > 0.7f) {
                func_80B365A8(this, play);
            } else if (var_a2 <= 0x2710) {
                if (var_a3 > 0x3E80) {
                    this->actor.world.rot.y = this->actor.yawTowardsPlayer;
                    func_80B34F28(this);
                } else {
                    func_80B33FB0(play, this, 1);
                }
            } else {
                func_80B34F28(this);
            }
        }
    }
}

void func_80B35B94(EnWf* this) {
    Animation_MorphToPlayOnce(&this->unk188, &D_6004AD0, -3.0f);
    this->unk2E8 = 0;
    this->unk300 = 1;
    this->unk2D4 = 5;
    this->actor.speed = -6.0f;
    this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    Actor_PlaySfx(&this->actor, NA_SE_EN_STAL_JUMP);
    func_80B33CB0(this, func_80B35C10);
}

void func_80B35C10(EnWf* this, PlayState* play) {
    if (SkelAnime_Update(&this->unk188)) {
        if (!Actor_OtherIsLockedOn(play, &this->actor) && (this->actor.xzDistToPlayer < 170.0f) &&
            (this->actor.xzDistToPlayer > 140.0f) && (Rand_ZeroOne() < 0.2f)) {
            func_80B347FC(this, play);
        } else if (play->gameplayFrames & 1) {
            func_80B365A8(this, play);
        } else {
            func_80B3455C(this);
        }
    }
    if ((play->state.frames & 0x5F) == 0) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_WOLFOS_CRY);
    }
}

void func_80B35D18(EnWf* this) {
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        this->actor.speed = 0.0f;
    }
    Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    Animation_PlayOnceSetSpeed(&this->unk188, &D_6009B20, 0.0f);
    this->unk2D4 = 0xF;
    func_80B33CB0(this, func_80B35D90);
}

void func_80B35D90(EnWf* this, PlayState* play) {
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
        this->actor.speed = 0.0f;
    }
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        if (this->actor.speed < 0.0f) {
            this->actor.speed += 0.05f;
        }
        this->unk300 = 0;
    }
    if ((this->actor.colorFilterTimer == 0) && (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
        if (this->actor.colChkInfo.health == 0) {
            func_80B36C8C(this);
        } else {
            func_80B33FB0(play, this, 1);
        }
    }
}

void func_80B35E4C(EnWf* this) {
    Animation_MorphToPlayOnce(&this->unk188, &D_6009B20, -4.0f);
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        this->unk300 = 0;
        this->actor.speed = -4.0f;
    } else {
        this->unk300 = 1;
    }
    this->unk2E2 = 0;
    this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    Actor_PlaySfx(&this->actor, NA_SE_EN_WOLFOS_DAMAGE);
    this->unk2D4 = 3;
    func_80B33CB0(this, func_80B35EE4);
}

void func_80B35EE4(EnWf* this, PlayState* play) {
    s16 var_v1;

    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
        this->actor.speed = 0.0f;
    }
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        if (this->actor.speed < 0.0f) {
            this->actor.speed += 0.05f;
        }
        this->unk300 = 0;
    }
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0x1194, 0);
    if ((func_80B33FB0(play, this, 0) == 0) && SkelAnime_Update(&this->unk188) &&
        (((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) != 0))) {
        var_v1 = this->actor.wallYaw - this->actor.shape.rot.y;
        if (var_v1 < 0) {
            var_v1 *= -1;
        }
        if ((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) && (ABS(var_v1) < 0x2EE0) &&
            (this->actor.xzDistToPlayer < 120.0f)) {
            func_80B360E8(this);
        } else if (func_80B37830(play, this) == 0) {
            if ((this->actor.xzDistToPlayer <= 80.0f) && !Actor_OtherIsLockedOn(play, &this->actor) &&
                ((play->gameplayFrames & 7) != 0)) {
                func_80B35540(this);
            } else if (Rand_ZeroOne() > 0.5f) {
                func_80B3455C(this);
                this->unk2E8 = (Rand_ZeroOne() * 5.0f) + 5.0f;
                this->unk2E2 = 0x1E;
            } else {
                func_80B35B94(this);
            }
        }
    }
}

void func_80B360E8(EnWf* this) {
    Animation_Change(&this->unk188, &D_6004AD0, -1.0f, Animation_GetLastFrame(&D_6004AD0), 0.0f, ANIMMODE_ONCE, -3.0f);
    this->unk2E8 = 0;
    this->unk300 = 0;
    this->unk2D4 = 4;
    this->actor.speed = 6.5f;
    this->actor.velocity.y = 15.0f;
    Actor_PlaySfx(&this->actor, NA_SE_EN_STAL_JUMP);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    func_80B33CB0(this, func_80B361A0);
}

void func_80B361A0(EnWf* this, PlayState* play) {
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0xFA0, 1);
    if (this->actor.velocity.y >= 5.0f) {
        func_800355B8(play, &this->unk4C8);
        func_800355B8(play, &this->unk4BC);
    }
    if (SkelAnime_Update(&this->unk188) &&
        (this->actor.bgCheckFlags & (BGCHECKFLAG_GROUND | BGCHECKFLAG_GROUND_TOUCH))) {
        this->actor.shape.rot.x = 0;
        this->actor.world.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
        this->actor.velocity.y = 0.0f;
        this->actor.speed = 0.0f;
        this->actor.world.pos.y = this->actor.floorHeight;
        if (!Actor_OtherIsLockedOn(play, &this->actor)) {
            func_80B35540(this);
        } else {
            func_80B3455C(this);
        }
    }
}

void func_80B36288(EnWf* this) {
    f32 temp_fv1;

    temp_fv1 = (f32)Animation_GetLastFrame(&D_6004CA4);
    if (this->unk2F8 != 0) {
        this->unk2F8 = -1;
    }
    this->actor.speed = 0.0f;
    this->unk2D4 = 7;
    this->unk2E8 = 0xA;
    Animation_Change(&this->unk188, &D_6004CA4, 0.0f, 0.0f, temp_fv1, ANIMMODE_ONCE_INTERP, -4.0f);
    func_80B33CB0(this, func_80B36328);
}

void func_80B36328(EnWf* this, PlayState* play) {
    Player* player;
    s32 pad;
    s16 pad2;
    s16 temp_a2_sp2C;
    s16 temp_v0_2;

    player = GET_PLAYER(play);
    if (this->unk2E8 != 0) {
        this->unk2E8 -= 1;
    } else {
        this->unk188.playSpeed = 1.0f;
    }
    if (SkelAnime_Update(&this->unk188)) {
        temp_v0_2 = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
        if ((ABS(temp_v0_2) <= 0x4000) && (this->actor.xzDistToPlayer < 60.0f) &&
            (ABS(this->actor.yDistToPlayer) < 50.0f)) {
            if (func_800354B4(play, &this->actor, 100.0f, 0x2710, 0x4000, this->actor.shape.rot.y) != 0) {
                if (player->meleeWeaponAnimation == PLAYER_MWA_JUMPSLASH_START) {
                    func_80B36288(this);
                } else if (play->gameplayFrames & 1) {
                    func_80B36288(this);
                } else {
                    func_80B35B94(this);
                }
            } else {
                temp_a2_sp2C = player->actor.shape.rot.y - this->actor.shape.rot.y;
                if (!Actor_OtherIsLockedOn(play, &this->actor) &&
                    ((play->gameplayFrames & 1) || (ABS(temp_a2_sp2C) < 0x38E0))) {
                    func_80B35540(this);
                } else {
                    func_80B34F28(this);
                }
            }
        } else {
            func_80B34F28(this);
        }
    } else if ((this->unk2E8 == 0) &&
               ((func_800354B4(play, &this->actor, 100.0f, 0x2710, 0x4000, this->actor.shape.rot.y) != 0))) {
        if (player->meleeWeaponAnimation == PLAYER_MWA_JUMPSLASH_START) {
            func_80B36288(this);
        } else if (play->gameplayFrames & 1) {
            func_80B36288(this);
        } else {
            func_80B35B94(this);
        }
    }
}

void func_80B365A8(EnWf* this, PlayState* play) {
    s16 temp_v1_sp36;
    Player* player;

    Animation_Change(&this->unk188, &D_60057A0, 1.0f, 0.0f, Animation_GetLastFrame(&D_60057A0), ANIMMODE_LOOP_INTERP,
                     -4.0f);
    player = GET_PLAYER(play);
    temp_v1_sp36 = player->actor.shape.rot.y + this->unk2FE;
    if (Math_SinS(temp_v1_sp36 - this->actor.yawTowardsPlayer) > 0.0f) {
        this->unk2FE = 0x3E80;
    } else if (Math_SinS(temp_v1_sp36 - this->actor.yawTowardsPlayer) < 0.0f) {
        this->unk2FE = -0x3E80;
    } else if (Rand_ZeroOne() > 0.5f) {
        this->unk2FE = 0x3E80;
    } else {
        this->unk2FE = -0x3E80;
    }
    this->actor.speed = 6.0f;
    this->unk188.playSpeed = this->actor.speed * 0.175f;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->unk2EC = 0.0f;
    this->unk2E8 = (Rand_ZeroOne() * 10.0f) + 5.0f;
    this->unk2D4 = 0xE;
    func_80B33CB0(this, func_80B36740);
}

void func_80B36740(EnWf* this, PlayState* play) {
    Player* player2;
    Player* player;
    s32 prevFrame;
    s32 beforeCurFrame;
    s32 new_var;
    f32 sp58_real;
    s32 absPlaySpeed;
    s16 var_v0_probreal;
    s16 var_v0_2_probreal;
    s16 temp_a2_sp4E;

    player = GET_PLAYER(play);
    sp58_real = 0.0f;
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer + this->unk2FE, 1, 0xBB8, 1);
    if ((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) ||
        !Actor_TestFloorInDirection(&this->actor, play, this->actor.speed, this->actor.shape.rot.y)) {
        if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
            var_v0_probreal = (this->actor.wallYaw - this->actor.yawTowardsPlayer) - this->unk2FE;
        } else {
            var_v0_probreal = 0;
        }
        if (ABS(var_v0_probreal) > 0x2EE0) {
            this->unk2FE = -this->unk2FE;
        }
    }
    this->actor.world.rot.y = this->actor.shape.rot.y;
    if (Actor_OtherIsLockedOn(play, &this->actor)) {
        sp58_real = 150.0f;
    }
    if (this->actor.xzDistToPlayer <= (60.0f + sp58_real)) {
        Math_SmoothStepToF(&this->unk2EC, -4.0f, 1.0f, 1.5f, 0.0f);
    } else if (this->actor.xzDistToPlayer > (80.0f + sp58_real)) {
        Math_SmoothStepToF(&this->unk2EC, 4.0f, 1.0f, 1.5f, 0.0f);
    } else {
        Math_SmoothStepToF(&this->unk2EC, 0.0f, 1.0f, 6.65f, 0.0f);
    }
    if (this->unk2EC != 0.0f) {
        this->actor.world.pos.x += Math_SinS(this->actor.shape.rot.y) * this->unk2EC;
        this->actor.world.pos.z += Math_CosS(this->actor.shape.rot.y) * this->unk2EC;
    }
    if (ABS(this->unk2EC) < ABS(this->actor.speed)) {
        this->unk188.playSpeed = this->actor.speed * 0.175f;
    } else {
        this->unk188.playSpeed = this->unk2EC * 0.175f;
    }
    this->unk188.playSpeed = CLAMP(this->unk188.playSpeed, -3.0f, 3.0f);
    prevFrame = (s32)this->unk188.curFrame;
    SkelAnime_Update(&this->unk188);
    beforeCurFrame = (s32)(this->unk188.curFrame - ABS(this->unk188.playSpeed));
    absPlaySpeed = new_var = ABS(this->unk188.playSpeed);
    if (func_80B33FB0(play, this, 0) == 0) {
        this->unk2E8 -= 1;
        if (this->unk2E8 == 0) {
            var_v0_2_probreal = player->actor.shape.rot.y - this->actor.yawTowardsPlayer;
            if (var_v0_2_probreal < 0) {
                var_v0_2_probreal *= -1;
            }
            if (var_v0_2_probreal >= 0x3A98) {
                func_80B3455C(this);
                this->unk2E8 = (Rand_ZeroOne() * 3.0f) + 1.0f;
            } else {
                player2 = GET_PLAYER(play);
                temp_a2_sp4E = player2->actor.shape.rot.y - this->actor.yawTowardsPlayer;
                this->actor.world.rot.y = this->actor.shape.rot.y;
                if ((this->actor.xzDistToPlayer <= 80.0f) && !Actor_OtherIsLockedOn(play, &this->actor) &&
                    (((play->gameplayFrames & 3) == 0) || (ABS(temp_a2_sp4E) < 0x38E0))) {
                    func_80B35540(this);
                } else {
                    func_80B347FC(this, play);
                }
            }
        }
        if ((prevFrame != (s32)this->unk188.curFrame) && (beforeCurFrame <= 0) &&
            (((s32)absPlaySpeed + prevFrame) > 0)) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_WOLFOS_WALK);
            Actor_SpawnFloorDustRing(play, &this->actor, &this->actor.world.pos, 20.0f, 3, 3.0f, 50, 50, true);
        }
        if ((play->gameplayFrames & 0x5F) == 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_WOLFOS_CRY);
        }
    }
}

void func_80B36C8C(EnWf* this) {
    Animation_MorphToPlayOnce(&this->unk188, &D_6005430, -4.0f);
    this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        this->unk300 = 0;
        this->actor.speed = -6.0f;
    } else {
        this->unk300 = 1;
    }
    this->unk2D4 = 2;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    this->unk2E8 = this->unk188.animLength;
    Actor_PlaySfx(&this->actor, NA_SE_EN_WOLFOS_DEAD);
    func_80B33CB0(this, func_80B36D3C);
}

void func_80B36D3C(EnWf* this, PlayState* play) {

    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
        this->actor.speed = 0.0f;
    }
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        Math_SmoothStepToF(&this->actor.speed, 0.0f, 1.0f, 0.5f, 0.0f);
        this->unk300 = 0;
    }
    if (SkelAnime_Update(&this->unk188)) {
        Item_DropCollectibleRandom(play, &this->actor, &this->actor.world.pos,
                                   COLLECTIBLE_DROP_RANDOM_PARAMS(COLLECTIBLE_DROP_TABLE_13, false));
        if (this->unk2FC != 0xFF) {
            Flags_SetSwitch(play, (s32)this->unk2FC);
        }
        Actor_Kill(&this->actor);
    } else {
        s32 var_s0;
        Vec3f sp88;
        Vec3f sp7C;

        sp7C = D_80B37AD0;
        this->unk2E8 -= 1;
        for (var_s0 = ((s32)this->unk188.animLength - this->unk2E8) >> 1; var_s0 >= 0; var_s0--) {
            sp88.x = this->actor.world.pos.x + Rand_CenteredFloat(60.0f);
            sp88.z = this->actor.world.pos.z + Rand_CenteredFloat(60.0f);
            sp88.y = this->actor.world.pos.y + 20.0f + Rand_CenteredFloat(50.0f);
            EffectSsDeadDb_Spawn(play, &sp88, &sp7C, &sp7C, 100, 0, 255, 255, 255, 255, 0, 0, 255, 1, 9, 1);
        }
    }
}

void func_80B36F40(EnWf* this, PlayState* play) {
    if ((this->unk2D4 == 6) && (this->unk2E2 != 0)) {
        this->unk4D6 = Math_SinS(this->unk2E2 * 0x1068) * 8920.0f;
    } else if (this->unk2D4 != 0xF) {
        if (this->unk2D4 != 8) {
            Math_SmoothStepToS(&this->unk4D6, this->actor.yawTowardsPlayer - this->actor.shape.rot.y, 1, 0x5DC, 0);
            this->unk4D6 = CLAMP(this->unk4D6, -0x3127, 0x3127);
        } else {
            this->unk4D6 = 0;
        }
    }
}

void func_80B37038(EnWf* this, PlayState* play) {
    s16 temp_v1;

    if (this->unk304.base.acFlags & AC_BOUNCED) {
        this->unk304.base.acFlags &= ~(AC_HIT | AC_BOUNCED);
        this->unk424.base.acFlags &= ~AC_HIT;
        this->unk470.base.acFlags &= ~AC_HIT;
    } else if (((this->unk424.base.acFlags & AC_HIT) || (this->unk470.base.acFlags & AC_HIT)) && (this->unk2D4 >= 6)) {
        temp_v1 = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
        if (!((this->unk424.base.acFlags & AC_HIT) || !(this->unk470.base.acFlags & AC_HIT)) ||
            (ABS(temp_v1) > 0x4A38)) {
            this->actor.colChkInfo.damage *= 4;
        }
        this->unk424.base.acFlags &= ~AC_HIT;
        this->unk470.base.acFlags &= ~AC_HIT;
        if (this->actor.colChkInfo.damageReaction != 6) {
            this->unk2E6 = this->actor.colChkInfo.damageReaction;
            Actor_SetDropFlag(&this->actor, &this->unk424.elem, true);
#if OOT_VERSION >= PAL_1_0
            this->unk2F8 = 0;
#endif
            if ((this->actor.colChkInfo.damageReaction == 1) || (this->actor.colChkInfo.damageReaction == 0xF)) {
                if (this->unk2D4 != 0xF) {
                    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_BLUE, 120, COLORFILTER_BUFFLAG_OPA, 80);
                    Actor_ApplyDamage(&this->actor);
                    func_80B35D18(this);
                }
            } else {
                Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 255, COLORFILTER_BUFFLAG_OPA, 8);
                if (this->unk2E6 == 0xE) {
                    this->unk2E4 = 0x28;
                }
                if (Actor_ApplyDamage(&this->actor) == 0) {
                    func_80B36C8C(this);
                    Enemy_StartFinishingBlow(play, &this->actor);
                } else {
                    func_80B35E4C(this);
                }
            }
        }
    }
}

void EnWf_Update(Actor* thisx, PlayState* play) {
    EnWf* this = (EnWf*)thisx;
    s32 pad;

    func_80B37038(this, play);
    if (this->actor.colChkInfo.damageReaction != 6) {
        Actor_MoveXZGravity(&this->actor);
        Actor_UpdateBgCheckInfo(play, &this->actor, 32.0f, 30.0f, 60.0f,
                                UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 |
                                    UPDBGCHECKINFO_FLAG_4);
        this->unk2DC(this, play);
        func_80B36F40(this, play);
    }
    if (this->actor.bgCheckFlags & (BGCHECKFLAG_GROUND | BGCHECKFLAG_GROUND_TOUCH)) {
        func_800359B8(&this->actor, this->actor.shape.rot.y, &this->actor.shape.rot);
    } else {
        Math_SmoothStepToS(&this->actor.shape.rot.x, 0, 1, 0x3E8, 0);
        Math_SmoothStepToS(&this->actor.shape.rot.z, 0, 1, 0x3E8, 0);
    }
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->unk304.base);
    if ((this->unk2D4 >= 6) && ((this->actor.colorFilterTimer == 0) || !(this->actor.colorFilterParams & 0x4000))) {
        Collider_UpdateCylinder(&this->actor, &this->unk424);
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->unk470.base);
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->unk424.base);
    }
    if (this->unk2D4 == 7) {
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->unk304.base);
    }
    if (this->unk2F8 > 0) {
        if (!(this->unk304.base.atFlags & AT_BOUNCED)) {
            CollisionCheck_SetAT(play, &play->colChkCtx, &this->unk304.base);
        } else {
            func_80B3590C(this);
        }
    }
    this->actor.focus.pos = this->actor.world.pos;
    this->actor.focus.pos.y += 25.0f;
    if (this->unk302 == 0) {
        if ((Rand_ZeroOne() < 0.2f) && ((play->gameplayFrames & 3) == 0) && (this->actor.colorFilterTimer == 0)) {
            this->unk302 += 1;
        }
    } else {
        this->unk302 = (this->unk302 + 1) & 3;
    }
}

s32 func_80B37454(PlayState* play, s32 arg1, Gfx** arg2, Vec3f* arg3, Vec3s* arg4, void* thisx) {
    EnWf* this = thisx;

    if ((arg1 == 0x11) || (arg1 == 0x12)) {
        arg4->y -= this->unk4D6;
    }
    return 0;
}

void func_80B37494(PlayState* play, s32 arg1, Gfx** arg2, Vec3s* arg3, void* thisx) {
    EnWf* this = thisx;
    s32 var_v1_sp30;
    Vec3f sp24;
    Vec3f sp18;

    var_v1_sp30 = -1;
    Collider_UpdateSpheres(arg1, &this->unk304);
    if (arg1 == 6) {
        Matrix_MultVec3f(&D_80B37ADC, &sp24);
        this->unk470.dim.pos.x = sp24.x;
        this->unk470.dim.pos.y = sp24.y;
        this->unk470.dim.pos.z = sp24.z;
    }
    if ((this->unk2E4 != 0) || ((this->actor.colorFilterTimer != 0) && (this->actor.colorFilterParams & 0x4000))) {
        switch (arg1) {
            case 18:
                var_v1_sp30 = 0;
                break;
            case 14:
                var_v1_sp30 = 1;
                break;
            case 20:
                var_v1_sp30 = 2;
                break;
            case 12:
                var_v1_sp30 = 3;
                break;
            case 7:
                var_v1_sp30 = 4;
                break;
            case 6:
                var_v1_sp30 = 5;
                break;
            case 9:
                var_v1_sp30 = 6;
                break;
            case 37:
                var_v1_sp30 = 7;
                break;
            case 10:
                var_v1_sp30 = 8;
                break;
            case 5:
                var_v1_sp30 = 9;
                break;
        }
        if (var_v1_sp30 >= 0) {
            Matrix_MultVec3f(&D_80B37AE8, &sp18);
            this->unk14C[var_v1_sp30].x = sp18.x;
            this->unk14C[var_v1_sp30].y = sp18.y;
            this->unk14C[var_v1_sp30].z = sp18.z;
        }
    }
}

void EnWf_Draw(Actor* thisx, PlayState* play) {
    EnWf* this = (EnWf*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_wf.c", 2157);
    if ((this->unk2D4 != 0) || (this->unk300 == 0)) {
        Gfx_SetupDL_25Opa(play->state.gfxCtx);
        if (this->actor.params == 0) {
            gSPSegment(POLY_OPA_DISP++, 8, SEGMENTED_TO_VIRTUAL(D_80B37AF4[this->unk302]));
        } else {
            gSPSegment(POLY_OPA_DISP++, 8, SEGMENTED_TO_VIRTUAL(D_80B37B04[this->unk302]));
        }
        SkelAnime_DrawFlexOpa(play, this->unk188.skeleton, this->unk188.jointTable, this->unk188.dListCount,
                              func_80B37454, func_80B37494, this);
        if (this->unk2E4 != 0) {
            this->actor.colorFilterTimer++;
            if (1) {}
            this->unk2E4 -= 1;
            if ((this->unk2E4 & 3) == 0) {
                s32 v = this->unk2E4 >> 2;

                EffectSsEnFire_SpawnVec3s(play, &this->actor, &this->unk14C[v], 75, 0, 0, v);
            }
        }
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_wf.c", 2190);
}

s32 func_80B37830(PlayState* play, EnWf* this) {
    Actor* temp_v0_sp24_real;
    s16 temp_a2_sp22;
    f32 temp_fv1;

    temp_v0_sp24_real = Actor_GetProjectileActor(play, &this->actor, 600.0f);
    if (temp_v0_sp24_real != NULL) {
        temp_a2_sp22 = Actor_WorldYawTowardActor(&this->actor, temp_v0_sp24_real) - this->actor.shape.rot.y;
        this->actor.world.rot.y = (u16)(s16)(this->actor.shape.rot.y + 0);
        temp_fv1 = Actor_WorldDistXYZToPoint(&this->actor, &temp_v0_sp24_real->world.pos);
        //! @bug Using sqrt on a non-squared distance
        if ((ABS(temp_a2_sp22) < 0x2EE0) && (sqrt((f64)temp_fv1) < 400.0)) {
            func_80B36288(this);
        } else {
            this->actor.world.rot.y = this->actor.shape.rot.y + 0x3FFF;
            if ((ABS(temp_a2_sp22) < 0x2000) || (ABS(temp_a2_sp22) >= 0x6000)) {
                func_80B365A8(this, play);
                this->actor.speed *= 2.0f;
            } else if (ABS(temp_a2_sp22) < 0x5FFF) {
                func_80B35B94(this);
            }
        }
        return 1;
    }
    return 0;
}
