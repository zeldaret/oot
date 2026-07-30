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

void func_80A13A08_Action(EnFirefly*, PlayState*);
void func_80A13C98_Action(EnFirefly*, PlayState*);
void func_80A13D68_Action(EnFirefly*, PlayState*);
void func_80A13DE4_Action(EnFirefly*, PlayState*);
void func_80A13FF4_Action(EnFirefly*, PlayState*);
void func_80A14088_Action(EnFirefly*, PlayState*);
void func_80A141F0_Action(EnFirefly*, PlayState*);
void func_80A14294_Action(EnFirefly*, PlayState*);
void func_80A142F4_Action_Perched_(EnFirefly*, PlayState*);
void func_80A143B4_Action_SwoopOnPlayer(EnFirefly*, PlayState*);
void EnFirefly_DrawXlu(Actor*, PlayState*);

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
static ColliderJntSphElementInit D_80A14F30 = {
    { 0, { 0xFFCFFFFF, 1, 8 }, { 0xFFCFFFFF, 0, 0 }, 9, 1, 1 },
    { 1, { { 0, 0x3E8, 0 }, 0xF }, 0x64 },
};
static ColliderJntSphInit D_80A14F54 = { { 3, 0x11, 9, 0x39, 0x10, 0 }, 1, &D_80A14F30 };
static CollisionCheckInfoInit D_80A14F64 = { 1, 0xA, 0xA, 0x1E };
static DamageTable D_80A14F6C = {
    {
        0x10, 2, 1, 2, 1, 2, 2, 2, 1, 2, 4, 0xF2, 0x34, 2, 2, 2, 2, 0x20, 0x34, 0, 0, 0, 1, 4, 2, 2, 8, 4, 0, 0, 4, 0,
    },
};
static InitChainEntry D_80A14F8C[5] = {
    ICHAIN_VEC3F_DIV1000(scale, 5, ICHAIN_CONTINUE),  ICHAIN_F32_DIV1000(gravity, -500, ICHAIN_CONTINUE),
    ICHAIN_F32(minVelocityY, -4, ICHAIN_CONTINUE),    ICHAIN_U8(attentionRangeType, ATTENTION_RANGE_2, ICHAIN_CONTINUE),
    ICHAIN_F32(lockOnArrowOffset, 4000, ICHAIN_STOP),
};
static Color_RGBA8 D_80A14FA0 = { 0xFF, 0xFF, 0x64, 0xFF };
static Color_RGBA8 D_80A14FA4 = { 0xFF, 0x32, 0, 0 };
static Color_RGBA8 D_80A14FA8 = { 0x64, 0xC8, 0xFF, 0xFF };
static Color_RGBA8 D_80A14FAC = { 0, 0, 0xFF, 0 };
static Vec3f D_80A14FB0 = { 0.0f, 0.5f, 0.0f };
static Vec3f D_80A14FBC = { 0.0f, 0.5f, 0.0f };
static Vec3f D_80A14FC8 = { 0.0f, 0.0f, 0.0f };

void func_80A13070_Unignite_(EnFirefly* this) {
    this->actor.params += 2;
    this->collider.elements->base.atDmgInfo.hitSpecialEffect = HIT_SPECIAL_EFFECT_NONE;
    this->unk1B8 = 0;
    this->unk1B9 = 0;
    this->actor.naviEnemyId = NAVI_ENEMY_KEESE;
}

void func_80A13098_Ignite_(EnFirefly* this) {
    if (this->actor.params == 4) {
        this->actor.params = 0;
    } else {
        this->actor.params -= 2;
    }
    this->collider.elements->base.atDmgInfo.hitSpecialEffect = HIT_SPECIAL_EFFECT_FIRE;
    this->unk1B8 = 1;
    this->unk1B9 = 1;
    this->actor.naviEnemyId = NAVI_ENEMY_FIRE_KEESE;
}

void EnFirefly_Init(Actor* thisx, PlayState* play) {
    EnFirefly* this = (EnFirefly*)thisx;

    Actor_ProcessInitChain(&this->actor, D_80A14F8C);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 25.0f);
    SkelAnime_Init(play, &this->skelAnime, &gKeeseSkeleton, &gKeeseFlyAnim, this->unk1BE, this->unk266, 0x1C);
    Collider_InitJntSph(play, &this->collider);
    Collider_SetJntSph(play, &this->collider, &this->actor, &D_80A14F54, this->colliderElements);
    CollisionCheck_SetInfo(&this->actor.colChkInfo, &D_80A14F6C, &D_80A14F64);
    if (PARAMS_GET_NOSHIFT(this->actor.params, 15, 1)) {
        this->actor.flags |= ACTOR_FLAG_REACT_TO_LENS;
        thisx->draw = EnFirefly_DrawXlu;
        this->actor.params &= 0x7FFF;
    }
    if (this->actor.params < 2) {
        this->unk1B9 = 1;
    } else {
        this->unk1B9 = 0;
    }
    if (this->unk1B9 != 0) {
        this->actionFunc = func_80A13A08_Action;
        this->unk1BA_timer = Rand_S16Offset(20, 60);
        this->actor.shape.rot.x = 0x1554;
        this->unk1B8 = 1;
        this->actor.naviEnemyId = NAVI_ENEMY_FIRE_KEESE;
        this->unk310_homeY = this->actor.home.pos.y;
    } else {
        if (this->actor.params == 3) {
            this->actionFunc = func_80A142F4_Action_Perched_;
        } else {
            this->actionFunc = func_80A13A08_Action;
        }
        if (this->actor.params == 4) {
            this->collider.elements->base.atDmgInfo.hitSpecialEffect = HIT_SPECIAL_EFFECT_ICE;
            this->actor.naviEnemyId = NAVI_ENEMY_ICE_KEESE;
        } else {
            this->collider.elements->base.atDmgInfo.hitSpecialEffect = HIT_SPECIAL_EFFECT_NONE;
            this->actor.naviEnemyId = NAVI_ENEMY_KEESE;
        }
        this->unk310_homeY = this->actor.home.pos.y + 100.0f;
        if (this->actor.params == 4) {
            this->unk1B8 = 2;
        } else {
            this->unk1B8 = 0;
        }
    }
    this->collider.elements->dim.worldSphere.radius = D_80A14F54.elements->dim.modelSphere.radius;
}

void EnFirefly_Destroy(Actor* thisx, PlayState* play) {
    EnFirefly* this = (EnFirefly*)thisx;

    Collider_DestroyJntSph(play, &this->collider);
}

void func_80A132F4_Setup(EnFirefly* this) {
    s32 var_v0;

    this->unk1BA_timer = Rand_S16Offset(0x46, 0x64);
    this->actor.speed = (Rand_ZeroOne() * 1.5f) + 1.5f;
    Math_ScaledStepToS(&this->actor.shape.rot.y, Actor_WorldYawTowardPoint(&this->actor, &this->actor.home.pos), 0x300);
    if (this->unk310_homeY < this->actor.world.pos.y) {
        var_v0 = 0xC00;
    } else {
        var_v0 = -0xC00;
    }
    this->unk1BC_targetRotX = var_v0 + 0x1554;
    this->skelAnime.playSpeed = 1.0f;
    this->actionFunc = func_80A13A08_Action;
}

void func_80A133A0_Setup(EnFirefly* this) {
    this->unk1BA_timer = 0x28;
    this->actor.velocity.y = 0.0f;
    Animation_Change(&this->skelAnime, &gKeeseFlyAnim, 0.5f, 0.0f, 0.0f, ANIMMODE_LOOP_INTERP, -3.0f);
    Actor_PlaySfx(&this->actor, NA_SE_EN_FFLY_DEAD);
    this->actor.flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;
    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 255, COLORFILTER_BUFFLAG_OPA, 40);
    this->actionFunc = func_80A13C98_Action;
}

void func_80A13444_Setup(EnFirefly* this) {
    this->unk1BA_timer = 0xF;
    this->actionFunc = func_80A13D68_Action;
    this->actor.speed = 0.0f;
}

void func_80A13464_Setup(EnFirefly* this) {
    this->actor.world.rot.x = 0x7000;
    this->unk1BA_timer = 18;
    this->actionFunc = func_80A13FF4_Action;
    this->skelAnime.playSpeed = 1.0f;
    this->actor.speed = 2.5f;
}

void func_80A1349C_Setup(EnFirefly* this) {
    s32 var_v0;

    this->unk1BA_timer = Rand_S16Offset(70, 100);
    this->skelAnime.playSpeed = 1.0f;
    if (this->actor.yDistToPlayer > 0.0f) {
        var_v0 = -0xC00;
    } else {
        var_v0 = 0xC00;
    }
    this->unk1BC_targetRotX = var_v0 + 0x1554;
    this->actionFunc = func_80A13DE4_Action;
}

void func_80A1350C_Setup(EnFirefly* this) {
    this->unk1BA_timer = 150;
    this->unk1BC_targetRotX = 0x954;
    this->actionFunc = func_80A14088_Action;
    this->skelAnime.playSpeed = 1.0f;
}

void func_80A13538_Setup(EnFirefly* this) {
    this->unk1BA_timer = 80;
    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_BLUE, 255, COLORFILTER_BUFFLAG_OPA, 80);
    this->unk1B8 = 0;
    this->actor.velocity.y = 0.0f;
    this->skelAnime.playSpeed = 3.0f;
    Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    this->actionFunc = func_80A141F0_Action;
}

void func_80A135A8_Setup(EnFirefly* this, PlayState* play) {
    s32 var_s0;
    Vec3f sp78;

    this->actor.flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;
    this->unk1B8 = 0;
    this->actor.speed = 0.0f;
    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_BLUE, 255, COLORFILTER_BUFFLAG_OPA, 255);
    Actor_PlaySfx(&this->actor, NA_SE_EN_FFLY_DEAD);
    for (var_s0 = 0; var_s0 < 8; var_s0++) {
        sp78.x = this->actor.world.pos.x + ((var_s0 & 1) ? 7.0f : -7.0f);
        sp78.y = this->actor.world.pos.y + ((var_s0 & 2) ? 7.0f : -7.0f);
        sp78.z = this->actor.world.pos.z + ((var_s0 & 4) ? 7.0f : -7.0f);
        EffectSsEnIce_SpawnFlyingVec3f(play, &this->actor, &sp78, 150, 150, 150, 250, 235, 245, 255,
                                       (Rand_ZeroOne() * 0.15f) + 0.85f);
    }
    this->actionFunc = func_80A14294_Action;
}

void func_80A13744_Setup_Perched_(EnFirefly* this) {
    this->unk1BA_timer = 1;
    this->actionFunc = func_80A142F4_Action_Perched_;
    this->actor.speed = 0.0f;
}

void func_80A13764_Setup_SwoopOnPlayer(EnFirefly* this) {
    this->skelAnime.playSpeed = 3.0f;
    this->actor.shape.rot.x = 0x1554;
    this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
    this->unk1BA_timer = 50;
    this->actor.speed = 3.0f;
    this->actionFunc = func_80A143B4_Action_SwoopOnPlayer;
}

s32 func_80A1379C_HoneInOnHomeIfPlayerFar_(EnFirefly* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    f32 temp_fv0;
    f32 temp_fv1;

    if (this->actor.params != 3) {
        return false;
    }
    if (Actor_WorldDistXZToPoint(&player->actor, &this->actor.home.pos) > 300.0f) {
        temp_fv0 = Actor_WorldDistXYZToPoint(&this->actor, &this->actor.home.pos);
        if (temp_fv0 < 5.0f) {
            func_80A13744_Setup_Perched_(this);
        } else {
            temp_fv1 = temp_fv0 * 0.05f;
            if (temp_fv1 < 1.0f) {
                this->actor.speed *= temp_fv1;
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

s32 func_80A138B8_HoneInOnLitTorch(EnFirefly* this, PlayState* play) {
    Actor* iter;
    f32 closestLitTorchDist;
    f32 dist;
    Actor* closestLitTorch;
    Vec3f torchFlamePos;

    iter = play->actorCtx.actorLists[ACTORCAT_PROP].head;
    closestLitTorch = NULL;
    closestLitTorchDist = 35000.0f;
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
            func_80A13098_Ignite_(this);
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

void func_80A13A08_Action(EnFirefly* this, PlayState* play) {
    s32 sp3C;
    f32 temp_fv0;

    SkelAnime_Update(&this->skelAnime);
    if (this->unk1BA_timer != 0) {
        this->unk1BA_timer--;
    }
    sp3C = Animation_OnFrame(&this->skelAnime, 0.0f);
    this->actor.speed = (Rand_ZeroOne() * 1.5f) + 1.5f;
    if ((this->unk1B9 != 0) || (this->actor.params == 4) ||
        (!func_80A1379C_HoneInOnHomeIfPlayerFar_(this, play) && !func_80A138B8_HoneInOnLitTorch(this, play))) {
        if (sp3C != 0) {
            temp_fv0 = Rand_ZeroOne();
            if (temp_fv0 < 0.5f) {
                Math_ScaledStepToS(&this->actor.shape.rot.y,
                                   Actor_WorldYawTowardPoint(&this->actor, &this->actor.home.pos), 0x300);
            } else if (temp_fv0 < 0.8f) {
                f32 new_var = Rand_CenteredFloat(1536.0f);

                this->actor.shape.rot.y = (s16)(s32)(this->actor.shape.rot.y + new_var);
            }
            if (this->actor.world.pos.y < (this->actor.floorHeight + 20.0f)) {
                this->unk1BC_targetRotX = 0x954;
            } else if (this->unk310_homeY < this->actor.world.pos.y) {
                this->unk1BC_targetRotX = 0x2154;
            } else if (Rand_ZeroOne() > 0.35f) {
                this->unk1BC_targetRotX = 0x954;
            } else {
                this->unk1BC_targetRotX = 0x2154;
            }
        } else {
            if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
                this->unk1BC_targetRotX = 0x954;
            } else if ((this->actor.bgCheckFlags & BGCHECKFLAG_CEILING) ||
                       (this->unk310_homeY < this->actor.world.pos.y)) {
                this->unk1BC_targetRotX = 0x2154;
            }
        }
        Math_ScaledStepToS(&this->actor.shape.rot.x, this->unk1BC_targetRotX, 0x100);
    }
    if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.wallYaw, 2, 0xC00, 0x300);
    }
    if ((this->unk1BA_timer == 0) && (this->actor.xzDistToPlayer < 200.0f) && (Player_GetMask(play) != 2)) {
        func_80A1349C_Setup(this);
    }
}

void func_80A13C98_Action(EnFirefly* this, PlayState* play) {
    if (Animation_OnFrame(&this->skelAnime, 6.0f) != 0) {
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
        if (this->unk1BA_timer != 0) {
            this->unk1BA_timer--;
        }
        if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) || (this->unk1BA_timer == 0)) {
            func_80A13444_Setup(this);
        }
    }
}

void func_80A13D68_Action(EnFirefly* this, PlayState* play) {
    if (this->unk1BA_timer != 0) {
        this->unk1BA_timer--;
    }
    Math_StepToF(&this->actor.scale.x, 0.0f, 0.00034f);
    this->actor.scale.y = this->actor.scale.z = this->actor.scale.x;
    if (this->unk1BA_timer == 0) {
        Item_DropCollectibleRandom(play, &this->actor, &this->actor.world.pos,
                                   COLLECTIBLE_DROP_RANDOM_PARAMS(COLLECTIBLE_DROP_TABLE_14, false));
        Actor_Kill(&this->actor);
    }
}

void func_80A13DE4_Action(EnFirefly* this, PlayState* play) {
    Actor* sp44;
    Vec3f sp38;

    sp44 = play->actorCtx.actorLists[2].head;
    SkelAnime_Update(&this->skelAnime);
    if (this->unk1BA_timer != 0) {
        this->unk1BA_timer--;
    }
    Math_StepToF(&this->actor.speed, 4.0f, 0.5f);
    if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.wallYaw, 2, 0xC00, 0x300);
        Math_ScaledStepToS(&this->actor.shape.rot.x, this->unk1BC_targetRotX, 0x100);
    } else if (Actor_IsFacingPlayer(&this->actor, 0x2800) != 0) {
        if (Animation_OnFrame(&this->skelAnime, 4.0f) != 0) {
            this->skelAnime.playSpeed = 0.0f;
            this->skelAnime.curFrame = 4.0f;
        }
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 2, 0xC00, 0x300);
        sp38.x = sp44->world.pos.x;
        sp38.y = sp44->world.pos.y + 20.0f;
        sp38.z = sp44->world.pos.z;
        Math_SmoothStepToS(&this->actor.shape.rot.x,
                           (s16)(Actor_WorldPitchTowardPoint(&this->actor, (Vec3f*)&sp38) + 0x1554), 2, 0x400, 0x100);
    } else {
        this->skelAnime.playSpeed = 1.5f;
        if (this->actor.xzDistToPlayer > 80.0f) {
            Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 2, 0xC00, 0x300);
        }
        if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
            this->unk1BC_targetRotX = 0x954;
        }
        if ((this->actor.bgCheckFlags & BGCHECKFLAG_CEILING) || (this->unk310_homeY < this->actor.world.pos.y)) {
            this->unk1BC_targetRotX = 0x2154;
        } else {
            this->unk1BC_targetRotX = 0x954;
        }
        Math_ScaledStepToS(&this->actor.shape.rot.x, this->unk1BC_targetRotX, 0x100);
    }
    if ((this->unk1BA_timer == 0) || (Player_GetMask(play) == 2)) {
        func_80A1350C_Setup(this);
    }
}

void func_80A13FF4_Action(EnFirefly* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    Math_ScaledStepToS(&this->actor.shape.rot.x, 0, 0x100);
    Math_StepToF(&this->actor.velocity.y, 0.0f, 0.4f);
    if (Math_StepToF(&this->actor.speed, 0.0f, 0.15f) != 0) {
        if (this->unk1BA_timer != 0) {
            this->unk1BA_timer--;
        }
        if (this->unk1BA_timer == 0) {
            func_80A1350C_Setup(this);
        }
    }
}

void func_80A14088_Action(EnFirefly* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (this->unk1BA_timer != 0) {
        this->unk1BA_timer--;
    }
    if (((fabsf(this->actor.world.pos.y - this->unk310_homeY) < 10.0f) &&
         (Math_Vec3f_DistXZ(&this->actor.world.pos, &this->actor.home.pos) < 20.0f)) ||
        (this->unk1BA_timer == 0)) {
        func_80A132F4_Setup(this);
    } else {
        Math_StepToF(&this->actor.speed, 3.0f, 0.3f);
        if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
            this->unk1BC_targetRotX = 0x954;
        } else if ((this->actor.bgCheckFlags & BGCHECKFLAG_CEILING) || (this->unk310_homeY < this->actor.world.pos.y)) {
            this->unk1BC_targetRotX = 0x2154;
        } else {
            this->unk1BC_targetRotX = 0x954;
        }
        if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
            Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.wallYaw, 2, 0xC00, 0x300);
        } else {
            Math_ScaledStepToS(&this->actor.shape.rot.y, Actor_WorldYawTowardPoint(&this->actor, &this->actor.home.pos),
                               0x300);
        }
        Math_ScaledStepToS(&this->actor.shape.rot.x, this->unk1BC_targetRotX, 0x100);
    }
}

void func_80A141F0_Action(EnFirefly* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    Math_StepToF(&this->actor.speed, 0.0f, 0.5f);
    Math_ScaledStepToS(&this->actor.shape.rot.x, 0x1554, 0x100);
    if (this->unk1BA_timer != 0) {
        this->unk1BA_timer--;
    }
    if (this->unk1BA_timer == 0) {
        if (this->unk1B9 != 0) {
            this->unk1B8 = 1;
        } else if (this->actor.params == 4) {
            this->unk1B8 = 2;
        }
        func_80A132F4_Setup(this);
    }
}

void func_80A14294_Action(EnFirefly* this, PlayState* play) {
#if OOT_VERSION < NTSC_1_1
    if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) || (this->actor.floorHeight == BGCHECK_Y_MIN)) {
#else
    if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) || (this->actor.floorHeight == BGCHECK_Y_MIN)) {
#endif
        this->actor.colorFilterTimer = 0;
        func_80A13444_Setup(this);
    } else {
        this->actor.colorFilterTimer = 0xFF;
    }
}

void func_80A142F4_Action_Perched_(EnFirefly* this, PlayState* play) {
    Math_ScaledStepToS(&this->actor.shape.rot.x, 0, 0x100);
    if (this->unk1BA_timer != 0) {
        SkelAnime_Update(&this->skelAnime);
        if (Animation_OnFrame(&this->skelAnime, 6.0f) != 0) {
            this->unk1BA_timer--;
        }
    } else if (Rand_ZeroOne() < 0.02f) {
        this->unk1BA_timer = 1;
    }
    if (this->actor.xzDistToPlayer < 120.0f) {
        func_80A13764_Setup_SwoopOnPlayer(this);
    }
}

void func_80A143B4_Action_SwoopOnPlayer(EnFirefly* this, PlayState* play) {
    Player* temp_a2 = GET_PLAYER(play);
    Vec3f sp28;

    SkelAnime_Update(&this->skelAnime);
    if (this->unk1BA_timer != 0) {
        this->unk1BA_timer--;
    }
    if (this->unk1BA_timer < 40) {
        Math_ScaledStepToS(&this->actor.shape.rot.x, -0xAAC, 0x100);
    } else {
        sp28.x = temp_a2->actor.world.pos.x;
        sp28.y = temp_a2->actor.world.pos.y + 20.0f;
        sp28.z = temp_a2->actor.world.pos.z;
        Math_ScaledStepToS(&this->actor.shape.rot.x, Actor_WorldPitchTowardPoint(&this->actor, &sp28) + 0x1554, 0x100);
        Math_ScaledStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 0x300);
    }
    if (this->unk1BA_timer == 0) {
        func_80A132F4_Setup(this);
    }
}

void func_80A1448C_SpawnFireEffects(EnFirefly* this, PlayState* play) {
    s32 bodyPart;

    for (bodyPart = 0; bodyPart < EN_FIREFLY_BODY_PART_MAX; bodyPart++) {
        EffectSsEnFire_SpawnVec3f(play, &this->actor, &this->actor.world.pos, 40, 0, 0, bodyPart);
    }
    this->unk1B8 = 0;
}

void func_80A1450C_ReactToAC(EnFirefly* this, PlayState* play) {
    if (this->collider.base.acFlags & AC_HIT) {
        this->collider.base.acFlags &= ~AC_HIT;
        Actor_SetDropFlag(&this->actor, &this->collider.elements->base, true);
        if ((this->actor.colChkInfo.damageReaction != 0) || (this->actor.colChkInfo.damage != 0)) {
            if (Actor_ApplyDamage(&this->actor) == 0) {
                Enemy_StartFinishingBlow(play, &this->actor);
                this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
            }
            if (this->actor.colChkInfo.damageReaction == 2) {
                if (this->actor.params == 4) {
                    this->actor.colChkInfo.health = 0;
                    Enemy_StartFinishingBlow(play, &this->actor);
                    func_80A1448C_SpawnFireEffects(this, play);
                    func_80A133A0_Setup(this);
                } else if (this->unk1B9 == 0) {
                    func_80A13098_Ignite_(this);
                    if (this->actionFunc == func_80A142F4_Action_Perched_) {
                        func_80A132F4_Setup(this);
                    }
                }
            } else if (this->actor.colChkInfo.damageReaction == 3) {
                if (this->actor.params == 4) {
                    func_80A133A0_Setup(this);
                } else {
                    func_80A135A8_Setup(this, play);
                }
            } else if (this->actor.colChkInfo.damageReaction == 1) {
                if (this->actionFunc != func_80A141F0_Action) {
                    func_80A13538_Setup(this);
                }
            } else {
                if ((this->actor.colChkInfo.damageReaction == 0xF) && (this->actor.params == 4)) {
                    func_80A1448C_SpawnFireEffects(this, play);
                }
                func_80A133A0_Setup(this);
            }
        }
    }
}

void EnFirefly_Update(Actor* thisx, PlayState* play2) {
    EnFirefly* this = (EnFirefly*)thisx;
    PlayState* play = play2;
    f32 sp34;

    if (this->collider.base.atFlags & AT_HIT) {
        this->collider.base.atFlags &= ~AT_HIT;
        Actor_PlaySfx(&this->actor, NA_SE_EN_FFLY_ATTACK);
        if (this->unk1B9 != 0) {
            func_80A13070_Unignite_(this);
        }
        if (this->actionFunc != func_80A143B4_Action_SwoopOnPlayer) {
            func_80A13464_Setup(this);
        }
    }
    func_80A1450C_ReactToAC(this, play);
    this->actionFunc(this, play);
    if (!(this->actor.flags & ACTOR_FLAG_ATTACHED_TO_ARROW)) {
        if ((this->actor.colChkInfo.health == 0) || ((this->actionFunc == func_80A141F0_Action))) {
            Actor_MoveXZGravity(&this->actor);
        } else {
            if (this->actionFunc != func_80A13FF4_Action) {
                this->actor.world.rot.x = 0x1554 - this->actor.shape.rot.x;
            }
            Actor_MoveXYZ(&this->actor);
        }
    }
    Actor_UpdateBgCheckInfo(play, &this->actor, 10.0f, 10.0f, 15.0f,
                            UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_1 | UPDBGCHECKINFO_FLAG_2);
    this->collider.elements->dim.worldSphere.center.x = this->actor.world.pos.x;
    this->collider.elements->dim.worldSphere.center.y = this->actor.world.pos.y + 10.0f;
    this->collider.elements->dim.worldSphere.center.z = this->actor.world.pos.z;
    if ((this->actionFunc == func_80A13DE4_Action) || (this->actionFunc == func_80A143B4_Action_SwoopOnPlayer)) {
        CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
    }
    if (this->actor.colChkInfo.health != 0) {
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
        this->actor.world.rot.y = this->actor.shape.rot.y;
        if (Animation_OnFrame(&this->skelAnime, 5.0f) != 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_FFLY_FLY);
        }
    }
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    sp34 = Math_SinS(this->actor.shape.rot.x);
    this->actor.focus.pos.x = (Math_SinS(this->actor.shape.rot.y) * (10.0f * sp34)) + this->actor.world.pos.x;
    this->actor.focus.pos.y = (Math_CosS(this->actor.shape.rot.x) * 10.0f) + this->actor.world.pos.y;
    sp34 = Math_SinS(this->actor.shape.rot.x);
    this->actor.focus.pos.z = (Math_CosS(this->actor.shape.rot.y) * (10.0f * sp34)) + this->actor.world.pos.z;
}

s32 EnFirefly_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx,
                               Gfx** gfx) {
    EnFirefly* this = thisx;
    if ((this->actor.draw == EnFirefly_DrawXlu) && (play->actorCtx.lensActive == 0)) {
        *dList = NULL;
    } else if (limbIndex == 1) {
        pos->y += 2300.0f;
    }
    return false;
}

void EnFirefly_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx, Gfx** gfx) {
    Vec3f sp94;
    Vec3f* var_a1;
    Color_RGBA8* var_v1;
    Color_RGBA8* var_v0;
    MtxF sp48;
    EnFirefly* this = thisx;
    s16 var_t0;
    s16 var_t1;

    if ((this->unk1B9 == 0) && (limbIndex == 0x1B)) {
        gSPDisplayList((*gfx)++, gKeeseEyesDL);
    } else {
        if (((this->unk1B8 == 1) || (this->unk1B8 == 2)) && ((limbIndex == 0xF) || (limbIndex == 0x15))) {
            if (this->actionFunc != func_80A13D68_Action) {
                Matrix_Get(&sp48);
                sp94.x = (Rand_ZeroOne() * 5.0f) + sp48.xw;
                sp94.y = (Rand_ZeroOne() * 5.0f) + sp48.yw;
                sp94.z = (Rand_ZeroOne() * 5.0f) + sp48.zw;
                var_t0 = -0x28;
                var_t1 = 3;
            } else {
                if (limbIndex == 0xF) {
                    sp94.x = (Math_SinS(this->unk1BA_timer * 0x238C) * this->unk1BA_timer) + this->actor.world.pos.x;
                    sp94.z = (Math_CosS(this->unk1BA_timer * 0x238C) * this->unk1BA_timer) + this->actor.world.pos.z;
                } else {
                    sp94.x = this->actor.world.pos.x - (Math_SinS(this->unk1BA_timer * 0x238C) * this->unk1BA_timer);
                    sp94.z = this->actor.world.pos.z - (Math_CosS(this->unk1BA_timer * 0x238C) * this->unk1BA_timer);
                }
                var_t0 = -5;
                var_t1 = 0xA;
                sp94.y = this->actor.world.pos.y + ((0xF - this->unk1BA_timer) * 1.5f);
            }
            if (this->unk1B8 == 1) {
                var_v0 = &D_80A14FA0;
                var_v1 = &D_80A14FA4;
            } else {
                var_v0 = &D_80A14FA8;
                var_v1 = &D_80A14FAC;
            }
            func_8002843C(play, &sp94, &D_80A14FB0, &D_80A14FBC, var_v0, var_v1, 250, var_t0, var_t1);
        }
    }
    if ((limbIndex == 0xF) || (limbIndex == 0x15) || (limbIndex == 0xA)) {
        if (limbIndex == 0xF) {
            var_a1 = &this->bodyPartsPos[EN_FIREFLY_BODY_PART_LIMB_15];
        } else if (limbIndex == 0x15) {
            var_a1 = &this->bodyPartsPos[EN_FIREFLY_BODY_PART_LIMB_21];
        } else {
            var_a1 = &this->bodyPartsPos[EN_FIREFLY_BODY_PART_LIMB_10];
        }
        Matrix_MultVec3f(&D_80A14FC8, var_a1);
        var_a1->y -= 5.0f;
    }
}

void EnFirefly_DrawOpa(Actor* thisx, PlayState* play) {
    EnFirefly* this = (EnFirefly*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_firefly.c", 0x6C5);
    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    if (this->unk1B9 != 0) {
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
    if (this->unk1B9 != 0) {
        gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, 0);
    } else {
        gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, 255);
    }
    POLY_XLU_DISP = SkelAnime_Draw(play, this->skelAnime.skeleton, this->skelAnime.jointTable,
                                   EnFirefly_OverrideLimbDraw, EnFirefly_PostLimbDraw, thisx, POLY_XLU_DISP);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_firefly.c", 1805);
}
