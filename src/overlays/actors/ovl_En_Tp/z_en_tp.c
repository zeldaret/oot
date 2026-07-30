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

void func_80B20DE0(EnTp* this, void (*arg1)(EnTp*, PlayState*));
void func_80B21084(EnTp* this);
void func_80B210B0(EnTp* this, PlayState* play);
void func_80B2128C(EnTp* this);
void func_80B212C0(EnTp* this, PlayState* play);
void func_80B21454(EnTp* this);
void func_80B214CC(EnTp* this, PlayState* play);
void func_80B217FC(EnTp* this);
void func_80B21900(EnTp* this, PlayState* play);
void func_80B2194C(EnTp* this);
void func_80B219A8(EnTp* this, PlayState* play);
void func_80B21B90(EnTp* this);
void func_80B21BDC(EnTp* this, PlayState* play);
void func_80B21EE8(EnTp* this);
void func_80B21F18(EnTp* this, PlayState* play);
void func_80B221E8(EnTp* this, PlayState* play);

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

static ColliderJntSphElementInit D_80B22A90[1] = {
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

static ColliderJntSphInit D_80B22AB4 = {
    {
        COL_MATERIAL_HIT1,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    1,
    D_80B22A90,
};

static DamageTable D_80B22AC4 = {
    {
        0x10, 0xF2, 0, 0, 0xF1, 0, 0xE2, 0,    0xE1, 0xE2, 0xE4, 0,    0, 0, 0,    0,
        0,    0,    0, 0, 0,    0, 0xE1, 0xE4, 0xE2, 0xE2, 0xE8, 0xE4, 0, 0, 0xE4, 0,
    },
};
static InitChainEntry D_80B22AE4[] = {
    ICHAIN_F32(lockOnArrowOffset, 10, ICHAIN_STOP),
};

void func_80B20DE0(EnTp* this, void (*arg1)(EnTp*, PlayState*)) {
    this->unk154 = arg1;
}

void EnTp_Init(Actor* thisx, PlayState* play2) {
    EnTp* temp_v0_2;
    EnTp* var_s5;
    s32 var_s1;
    EnTp* this = (EnTp*)thisx;
    PlayState* play = play2;
    s64 new_var;

    Actor_ProcessInitChain(&this->actor, D_80B22AE4);
    this->actor.attentionRangeType = ATTENTION_RANGE_3;
    this->actor.colChkInfo.damageTable = &D_80B22AC4;
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 0.14f);
    this->unk150 = 0;
    this->actor.colChkInfo.health = 1;
    var_s5 = this;
    this->unk15E = 0xFF;
    Collider_InitJntSph(play, &this->unk174);
    Collider_SetJntSph(play, &this->unk174, &this->actor, &D_80B22AB4, &this->unk194);
    if (this->actor.params < 0) {
        this->actor.naviEnemyId = NAVI_ENEMY_TAILPASARAN;
        this->unk15A = 0;
        this->unk174.base.acFlags |= 4;
        this->unk174.elements[0].dim.worldSphere.radius = 8;
        this->unk174.elements[0].dim.modelSphere.radius = this->unk174.elements[0].dim.worldSphere.radius;
        func_80B21B90(this);
        this->actor.focus.pos = this->actor.world.pos;
        this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE | ACTOR_FLAG_UPDATE_CULLING_DISABLED;
        Actor_SetScale(&this->actor, 1.5f);
        for (var_s1 = 0; var_s1 < 7; var_s1++) {
            if (((0 * var_s1) != 0) && ((0 * var_s1) != 0)) {}
            temp_v0_2 = (EnTp*)Actor_Spawn(&play->actorCtx, play, ACTOR_EN_TP, this->actor.world.pos.x,
                                           this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, 0 * var_s1);
            if (temp_v0_2 != NULL) {
                var_s5->actor.child = &temp_v0_2->actor;
                temp_v0_2->actor.parent = &var_s5->actor;
                temp_v0_2->unk162 = (s16)(var_s1 + 1);
                temp_v0_2->unk1D4 = this;
                Actor_SetScale(&temp_v0_2->actor, 0.3f);
                if (var_s1 == 2) {
                    temp_v0_2->actor.flags |=
                        ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE | ACTOR_FLAG_UPDATE_CULLING_DISABLED;
                    temp_v0_2->unk150 = 1;
                }
                temp_v0_2->unk15C = var_s1 * -5;
                temp_v0_2->unk15A = var_s1 * -5;
                var_s5 = (EnTp*)temp_v0_2;
                temp_v0_2->unk16C = (f32)(6.0f - ((f32)var_s1 * 0.75f));
            }
        }
    } else if (this->actor.params == 0) {
        func_80B21084(this);
    } else {
        func_80B217FC(this);
    }
}

void EnTp_Destroy(Actor* thisx, PlayState* play) {
    EnTp* this = (EnTp*)thisx;

    Collider_DestroyJntSph(play, &this->unk174);
}

void func_80B21084(EnTp* this) {
    this->unk14C = 2;
    func_80B20DE0(this, func_80B210B0);
}

void func_80B210B0(EnTp* this, PlayState* play) {
    s16 sp36;
    s16 temp_a0_sp34;

    if (this->actor.params == 0xB) {
        this->unk14C = 1;
        if (this->actor.parent == NULL) {
            func_80B21454(this);
        }
    } else {
        if (this->unk150 != 0) {
            this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
        }
        if (this->unk1D4->unk150 != 0) {
            this->actor.speed = this->unk160 = this->actor.velocity.y = this->unk168 = 0.0f;
            if (this->actor.world.pos.y < this->unk1D4->actor.home.pos.y) {
                this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
            }
            this->actor.world.pos = this->actor.parent->prevPos;
        } else {
            Math_SmoothStepToF(&this->actor.world.pos.y, this->actor.parent->world.pos.y - 4.0f, 1.0f, 1.0f, 0.0f);
            sp36 = this->unk1D4->actor.shape.rot.y + 0x4000;
            temp_a0_sp34 = (this->unk1D4->unk15C + this->unk15A) * 0x7D0;
            this->actor.world.pos.x =
                (Math_SinS(temp_a0_sp34) * (Math_SinS(sp36) * this->unk16C)) + this->actor.home.pos.x;
            this->actor.world.pos.z =
                (Math_SinS(temp_a0_sp34) * (Math_CosS(sp36) * this->unk16C)) + this->actor.home.pos.z;
        }
    }
}

void func_80B2128C(EnTp* this) {
    this->unk14C = 7;
    this->unk15A = 0xC8;
    func_80B20DE0(this, func_80B212C0);
}

void func_80B212C0(EnTp* this, PlayState* play) {
    Player* player;

    player = GET_PLAYER(play);
    Math_SmoothStepToF(&this->actor.world.pos.y, player->actor.world.pos.y + 30.0f, 1.0f, 0.5f, 0.0f);
    SFX_PLAY_AT_POS(&this->actor.projectedPos, NA_SE_EN_TAIL_FLY - SFX_FLAG);
    if (this->unk174.base.atFlags & AT_HIT) {
        this->unk174.base.atFlags &= ~AT_HIT;
        if (&player->actor == this->unk174.base.at) {
            this->unk15A = 1;
        }
    }
    if (this->unk160 < 0xFF) {
        this->unk160 += 0xF;
    }
    if (Math_CosF(this->unk168) == 0.0f) {
        this->unk170 = 2.0f * Rand_ZeroOne();
    }
    this->actor.world.pos.y += Math_CosF(this->unk168) * (2.0f + this->unk170);
    this->unk168 += 0.2f;
    Math_SmoothStepToF(&this->actor.speed, 2.5f, 0.1f, 0.2f, 0.0f);
    this->unk15A -= 1;
    if (this->unk15A != 0) {
        Math_SmoothStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 1, 0x2EE, 0);
        this->actor.shape.rot.y = this->actor.world.rot.y;
    } else {
        func_80B21EE8(this);
    }
}

void func_80B21454(EnTp* this) {
    Actor* var_v0;

    this->unk15A = 2;
    if (this->actor.params < 0) {
        var_v0 = this->actor.child;
        while (var_v0 != NULL) {
            var_v0->params = 0xB;
            var_v0->colChkInfo.health = 0;
            var_v0 = var_v0->child;
        }
        this->unk15A = 0xD;
        Actor_PlaySfx(&this->actor, NA_SE_EN_TAIL_DEAD);
    }
    this->unk14C = 1;
    func_80B20DE0(this, func_80B214CC);
}

void func_80B214CC(EnTp* this, PlayState* play) {
    s16 var_s1;
    EnTp* temp_v0;
    s32 pad;
    Vec3f sp78 = { 0.0f, 0.5f, 0.0f };
    Vec3f sp6C = { 0.0f, 0.0f, 0.0f };

    this->unk15A -= 1;
    if (this->unk15A <= 0) {
        if (this->actor.params == 0xC) {
            sp6C.x = ((Rand_ZeroOne() - 0.5f) * 15.0f) + this->actor.world.pos.x;
            sp6C.z = ((Rand_ZeroOne() - 0.5f) * 15.0f) + this->actor.world.pos.z;
            sp6C.y = ((Rand_ZeroOne() - 0.5f) * 5.0f) + this->actor.world.pos.y;
            EffectSsDeadDb_Spawn(play, (Vec3f*)&sp6C, &sp78, &sp78, 100, 0, 255, 255, 255, 255, 0, 0, 255, 1, 9, 1);
            sp6C.x = ((Rand_ZeroOne() - 0.5f) * 15.0f) + this->actor.world.pos.x;
            sp6C.z = ((Rand_ZeroOne() - 0.5f) * 15.0f) + this->actor.world.pos.z;
            sp6C.y = ((Rand_ZeroOne() - 0.5f) * 5.0f) + this->actor.world.pos.y;
            EffectSsDeadDb_Spawn(play, (Vec3f*)&sp6C, &sp78, &sp78, 100, 0, 255, 255, 255, 255, 0, 0, 255, 1, 9, 1);
            Item_DropCollectibleRandom(play, &this->actor, &this->actor.world.pos,
                                       COLLECTIBLE_DROP_RANDOM_PARAMS(COLLECTIBLE_DROP_TABLE_5, false));
        } else {
#if OOT_VERSION < NTSC_1_1
            for (var_s1 = 0; var_s1 < 2; var_s1++)
#else
            for (var_s1 = 0; var_s1 < 1; var_s1++)
#endif
            {
                temp_v0 = (EnTp*)Actor_Spawn(&play->actorCtx, play, ACTOR_EN_TP, this->actor.world.pos.x,
                                             this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, 0xA);
                if (temp_v0 != NULL) {
                    Actor_SetScale(&temp_v0->actor, this->actor.scale.z * 0.5f);
                    temp_v0->unk160 = (s16)this->unk160;
                }
            }
        }
        if (this->actor.child != NULL) {
            this->actor.child->parent = NULL;
            this->actor.child->params = 0xB;
            this->actor.child->colChkInfo.health = 0;
        }
        this->unk150 = 2;
        Actor_Kill(&this->actor);
    }
}

void func_80B217FC(EnTp* this) {
    this->unk14C = 0;
    this->actor.world.pos.x += (Rand_ZeroOne() - 0.5f) * 5.0f;
    this->actor.world.pos.y += (Rand_ZeroOne() - 0.5f) * 5.0f;
    this->actor.world.pos.z += (Rand_ZeroOne() - 0.5f) * 5.0f;
    this->actor.velocity.x = (Rand_ZeroOne() - 0.5f) * 1.5f;
    this->actor.velocity.y = (Rand_ZeroOne() - 0.5f) * 1.5f;
    this->actor.velocity.z = (Rand_ZeroOne() - 0.5f) * 1.5f;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    func_80B20DE0(this, func_80B21900);
}

void func_80B21900(EnTp* this, PlayState* play) {
    Actor_UpdatePos(&this->actor);
    this->unk15E -= 0x14;
    if (this->unk15E < 0x14) {
        this->unk15E = 0;
        Actor_Kill(&this->actor);
    }
}

void func_80B2194C(EnTp* this) {
    this->unk15A = (Rand_ZeroOne() * 15.0f) + 40.0f;
    this->unk14C = 8;
    func_80B20DE0(this, func_80B219A8);
}

void func_80B219A8(EnTp* this, PlayState* play) {
    s32 pad;
    Player* player;

    player = GET_PLAYER(play);
    Math_SmoothStepToF(&this->actor.speed, 2.5f, 0.1f, 0.2f, 0.0f);
    Math_SmoothStepToF(&this->actor.world.pos.y, player->actor.world.pos.y + 85.0f + this->unk16C, 1.0f,
                       this->actor.speed * 0.25f, 0.0f);
    SFX_PLAY_AT_POS(&this->actor.projectedPos, NA_SE_EN_TAIL_FLY - SFX_FLAG);
    if (this->unk174.base.atFlags & AT_HIT) {
        this->unk174.base.atFlags &= ~AT_HIT;
        if (&player->actor == this->unk174.base.at) {
            this->unk15C = 1;
        }
    }
    if (this->unk160 != 0) {
        this->unk160 -= 0xF;
    }
    if (Math_CosF(this->unk168) == 0.0f) {
        this->unk170 = Rand_ZeroOne() * 4.0f;
    }
    this->actor.world.pos.y += Math_CosF(this->unk168) * ((this->actor.speed * 0.25f) + this->unk170);
    this->actor.world.rot.y += this->unk164;
    this->unk168 += 0.2f;
    if (this->unk15A != 0) {
        this->unk15A -= 1;
    }
    Math_SmoothStepToS(&this->actor.world.rot.y, Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.home.pos), 1,
                       0x2EE, 0);
    if (this->unk15A == 0) {
        func_80B2128C(this);
    }
    this->actor.shape.rot.y = this->actor.world.rot.y;
}

void func_80B21B90(EnTp* this) {
    this->unk14C = 4;
    this->unk150 = 0;
    this->actor.shape.rot.x = -0x4000;
    this->unk15A = 0x3C;
    this->unk15C = 0;
    this->actor.speed = 0.0f;
    func_80B20DE0(this, func_80B21BDC);
}

void func_80B21BDC(EnTp* this, PlayState* play) {
    Player* player;
    s16 sp32;

    player = GET_PLAYER(play);
    this->unk15C -= 1;
    if (this->actor.xzDistToPlayer < 200.0f) {
        if (this->unk174.base.atFlags & AT_HIT) {
            this->unk174.base.atFlags &= ~AT_HIT;
            if (&player->actor == this->unk174.base.at) {
                this->unk15A = 0;
            }
        }
        if (this->unk15A != 0) {
            this->unk15A -= 1;
            Math_SmoothStepToS(&this->actor.shape.rot.x, 0, 1, 0x1F4, 0);
            Math_SmoothStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 1, 0x5DC, 0);
            sp32 = Math_Vec3f_Yaw(&this->actor.home.pos, &player->actor.world.pos) + 0x4000;
            Math_SmoothStepToF(&this->actor.world.pos.y, this->actor.home.pos.y + 30.0f, 0.3f, 1.0f, 0.3f);
            this->actor.world.pos.x =
                (Math_SinS(this->unk15C * 0x7D0) * (Math_SinS(sp32) * this->unk16C)) + this->actor.home.pos.x;
            this->actor.world.pos.z =
                (Math_SinS(this->unk15C * 0x7D0) * (Math_CosS(sp32) * this->unk16C)) + this->actor.home.pos.z;
        } else {
            this->actor.shape.rot.x = 0;
            this->unk150 = 1;
            func_80B2194C(this);
        }
    } else {
        Math_SmoothStepToS(&this->actor.shape.rot.x, -0x4000, 1, 0x1F4, 0);
        if (Math_SmoothStepToF(&this->actor.world.pos.y, this->actor.home.pos.y, 0.3f, 1.5f, 0.3f) == 0.0f) {
            this->unk15A = 0x3C;
        } else {
            sp32 = Math_Vec3f_Yaw(&this->actor.home.pos, &player->actor.world.pos);
            this->actor.world.pos.x =
                (Math_SinS(this->unk15C * 0x7D0) * (Math_SinS(sp32) * 6.0f)) + this->actor.home.pos.x;
            this->actor.world.pos.z =
                (Math_SinS(this->unk15C * 0x7D0) * (Math_CosS(sp32) * 6.0f)) + this->actor.home.pos.z;
        }
    }
    this->actor.shape.rot.y = this->actor.world.rot.y;
    if (this->actor.world.pos.y != this->actor.home.pos.y) {
        SFX_PLAY_AT_POS(&this->actor.projectedPos, NA_SE_EN_TAIL_FLY - SFX_FLAG);
    }
}

void func_80B21EE8(EnTp* this) {
    this->unk14C = 9;
    this->unk15A = 0;
    func_80B20DE0(this, func_80B21F18);
}

void func_80B21F18(EnTp* this, PlayState* play) {
    static Vec3f D_80B22B00 = { 0.0f, -0.5f, 0.0f };
    static Color_RGBA8 D_80B22B0C = { 0xFF, 0xFF, 0xFF, 0xFF };
    static Color_RGBA8 D_80B22B10 = { 0x96, 0x96, 0x96, 0 };
    Vec3f sp54;
    Vec3f sp48;
    s32 sp44;
    EnTp* var_v0;
    s16 new_var;

    sp44 = 0;
    this->unk15C -= 1;
    if ((this->unk15A != 0) || ((this->actor.home.pos.y - this->actor.world.pos.y) > 60.0f)) {
        if (1) {
            this->unk15A -= 1;
        }
        if ((new_var = this->unk15A) == 0) {
            func_80B21B90(this);
            var_v0 = (EnTp*)this->actor.child;
            while (var_v0 != NULL) {
                var_v0->unk15C = var_v0->unk15A;
                var_v0 = (EnTp*)var_v0->actor.child;
            }
        } else {
            if (this->actor.shape.rot.x != -0x4000) {
                this->unk15A = 0x50;
                this->actor.velocity.y = 0.0f;
                this->actor.speed = 0.0f;
                this->actor.world.pos = this->actor.home.pos;
                this->actor.shape.rot.x = -0x4000;
                var_v0 = (EnTp*)this->actor.child;
                while (var_v0 != NULL) {
                    var_v0->actor.velocity.y = 0.0f;
                    var_v0->actor.speed = 0.0f;
                    var_v0->actor.world.pos = this->actor.home.pos;
                    var_v0->actor.world.pos.y = this->actor.home.pos.y - 80.0f;
                    var_v0 = (EnTp*)var_v0->actor.child;
                }
            }
            this->actor.world.pos.y = this->actor.home.pos.y - (f32)this->unk15A;
        }
    } else {
        if (this->actor.shape.rot.x != 0x4000) {
            this->actor.shape.rot.x -= 0x400;
        }
        if (this->unk160 != 0) {
            this->unk160 -= 0xF;
        }
        this->actor.speed = 2.0f * Math_CosS(this->actor.shape.rot.x);
        this->actor.velocity.y = Math_SinS(this->actor.shape.rot.x) * -2.0f;
        if ((this->actor.world.pos.y - this->actor.floorHeight) < 20.0f) {
            sp44 = 1;
        }
        if (this->actor.world.pos.y != this->actor.home.pos.y) {
            SFX_PLAY_AT_POS(&this->actor.projectedPos, NA_SE_EN_TAIL_FLY - SFX_FLAG);
        }
        if ((sp44 != 0) && (play->gameplayFrames & 1)) {
            sp48 = this->actor.world.pos;
            sp48.y = this->actor.floorHeight;
            sp54.x = Rand_CenteredFloat(5.0f);
            sp54.y = (Rand_ZeroOne() * 3.5f) + 1.5f;
            sp54.z = Rand_CenteredFloat(5.0f);
            EffectSsDtBubble_SpawnCustomColor(play, &sp48, &sp54, &D_80B22B00, &D_80B22B0C, &D_80B22B10,
                                              Rand_S16Offset(100, 50), 20, 0);
        }
    }
}

void func_80B221E8(EnTp* this, PlayState* play) {
    EnTp* var_s0;
    EnTp* var_s0_2;
    s32 var_s2;
    s32 var_s4;
    EnTp* new_var;

    if ((this->unk174.base.acFlags & AC_HIT) && (this->unk14C >= 2)) {
        var_s2 = 0;
        var_s4 = 0;
        if (this->actor.params < 0) {
            var_s2 = 1;
        }
        this->unk174.base.acFlags &= ~2;
        Actor_SetDropFlagJntSph(&this->actor, &this->unk174, true);
        this->unk158 = this->actor.colChkInfo.damageReaction;
        if (this->actor.colChkInfo.damageReaction != 0) {
            if (this->actor.colChkInfo.damageReaction == 1) {
                var_s4 = 1;
            }
            if (var_s2 == 0) {
                Actor_ApplyDamage(&this->actor);
            }
            if (this->actor.colChkInfo.health == 0) {
                this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
                new_var = this->unk1D4;
                if (new_var->actor.params < 0) {
                    func_80B21454(new_var);
                    new_var->unk158 = this->actor.colChkInfo.damageReaction;
                    new_var->actor.params = 0xC;
                }
            } else {
                if (var_s4 != 0) {
                    this->actor.freezeTimer = 80;
                    Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
                    if (var_s2 != 0) {
                        Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_BLUE, 255, COLORFILTER_BUFFLAG_OPA,
                                             80);
                    } else {
                        Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_BLUE, 255, COLORFILTER_BUFFLAG_XLU,
                                             80);
                    }
                }
                var_s0 = (EnTp*)this->actor.parent;
                while (var_s0 != NULL) {
                    var_s0->unk174.base.acFlags &= ~AC_HIT;
                    if (var_s4 != 0) {
                        var_s0->actor.freezeTimer = 80;
                        Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
                        if (var_s2 != 0) {
                            Actor_SetColorFilter(&var_s0->actor, COLORFILTER_COLORFLAG_BLUE, 255,
                                                 COLORFILTER_BUFFLAG_OPA, 80);
                        } else {
                            Actor_SetColorFilter(&var_s0->actor, COLORFILTER_COLORFLAG_BLUE, 255,
                                                 COLORFILTER_BUFFLAG_XLU, 80);
                        }
                    }
                    var_s0 = (EnTp*)var_s0->actor.parent;
                }
                var_s0_2 = (EnTp*)this->actor.child;
                while (var_s0_2 != NULL) {
                    var_s0_2->unk174.base.acFlags &= ~AC_HIT;
                    if (var_s4 != 0) {
                        var_s0_2->actor.freezeTimer = 80;
                        if (var_s2 != 0) {
                            Actor_SetColorFilter(&var_s0_2->actor, COLORFILTER_COLORFLAG_BLUE, 255,
                                                 COLORFILTER_BUFFLAG_OPA, 80);
                        } else {
                            Actor_SetColorFilter(&var_s0_2->actor, COLORFILTER_COLORFLAG_BLUE, 255,
                                                 COLORFILTER_BUFFLAG_XLU, 80);
                        }
                    }
                    var_s0_2 = (EnTp*)var_s0_2->actor.child;
                }
            }
        }
    }
}

void EnTp_Update(Actor* thisx, PlayState* play) {
    Player* player;
    s32 pad;
    Vec3f sp5C = { 0.0f, 0.0f, 0.0f };
    Vec3f sp50 = { 0.0f, -0.6f, 0.0f };
    Vec3f sp44;
    Color_RGBA8 sp40 = { 0, 0, 255, 255 };
    Color_RGBA8 sp3C = { 0, 0, 0, 0 };
    EnTp* this = (EnTp*)thisx;
    s16 v;

    player = GET_PLAYER(play);

    if (player->stateFlags1 & PLAYER_STATE1_26) {
        this->unk158 = 0;
    }
    if (this->actor.colChkInfo.health != 0) {
        func_80B221E8(this, play);
    }
    this->unk154(this, play);
    if (this->actor.params < 0) {
        Actor_MoveXZGravity(&this->actor);
        if (this->unk14C != 9) {
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
        if (this->unk14C >= 2) {
            CollisionCheck_SetAT(play, &play->colChkCtx, &this->unk174.base);
        }
    }
    if (this->actor.params != 0xB) {
        this->unk162 -= 1;
        this->unk162 &= 7;
    }
    this->actor.focus.pos = this->actor.world.pos;
    if (this->unk158 == 0xE) {
        CollisionCheck_SetAT(play, &play->colChkCtx, &this->unk174.base);
    }
    if ((this->unk162 & 7) == 0) {
        sp40.r = this->unk160;
        sp50.x = -this->actor.velocity.x * 0.25f;
        sp50.y = -this->actor.velocity.y * 0.25f;
        sp50.z = -this->actor.velocity.z * 0.25f;
        sp44.x = ((Rand_ZeroOne() - 0.5f) * 25.0f) + this->actor.world.pos.x;
        sp44.y = ((Rand_ZeroOne() - 0.5f) * 20.0f) + this->actor.world.pos.y;
        sp44.z = ((Rand_ZeroOne() - 0.5f) * 25.0f) + this->actor.world.pos.z;
        EffectSsKiraKira_SpawnSmall(play, &sp44, &sp5C, &sp50, &sp40, &sp3C);
    }
    if ((this->unk14C >= 2) && (this->actor.colChkInfo.health != 0)) {
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->unk174.base);
    }
}

void EnTp_Draw(Actor* thisx, PlayState* play) {
    s16 temp_v0;
    EnTp* this = (EnTp*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_tp.c", 0x5AB);
    if (this->unk150 != 2) {
        temp_v0 = this->actor.params;
        if ((temp_v0 < 0) || (temp_v0 == 0xC)) {
            Gfx_SetupDL_25Opa(play->state.gfxCtx);
            MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_en_tp.c", 1459);
            gSPDisplayList(POLY_OPA_DISP++, object_tp_0008D0_DL);
            Matrix_Translate(0.0f, 0.0f, 8.0f, 1U);
        } else {
            Gfx_SetupDL_25Xlu(play->state.gfxCtx);
            Matrix_ReplaceRotation(&play->billboardMtxF);
            gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x00, this->unk160, 0, 255, this->unk15E);
            gDPPipeSync(POLY_XLU_DISP++);
            gDPSetCombineLERP(POLY_XLU_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, ENVIRONMENT,
                              TEXEL0, ENVIRONMENT, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, ENVIRONMENT,
                              TEXEL0, ENVIRONMENT);
            gDPPipeSync(POLY_XLU_DISP++);
            gSPSegment(POLY_XLU_DISP++, 8, SEGMENTED_TO_VIRTUAL(object_tp_000C68_Tex));
            gDPPipeSync(POLY_XLU_DISP++);
            MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_en_tp.c", 1480);
            gSPDisplayList(POLY_XLU_DISP++, object_tp_000000_DL);
        }
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_tp.c", 0x5D7);
    if ((this->actor.params <= 0) || (this->actor.params == 0xB)) {
        Collider_UpdateSpheres(0, &this->unk174);
    }
}
