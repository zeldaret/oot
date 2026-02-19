/*
 * File: z_en_attack_niw.c
 * Overlay: ovl_En_Attack_Niw
 * Description: Attacking Cucco, not solid
 */

#include "z_en_attack_niw.h"
#include "overlays/actors/ovl_En_Niw/z_en_niw.h"

#include "libc64/qrand.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "rand.h"
#include "sfx.h"
#include "versions.h"
#include "z_lib.h"
#include "effect.h"
#include "play_state.h"
#include "player.h"

#include "assets/objects/object_niw/object_niw.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void EnAttackNiw_Init(Actor* thisx, PlayState* play);
void EnAttackNiw_Destroy(Actor* thisx, PlayState* play);
void EnAttackNiw_Update(Actor* thisx, PlayState* play);
void EnAttackNiw_Draw(Actor* thisx, PlayState* play);

void func_809B5670(EnAttackNiw* this, PlayState* play);
void func_809B5C18(EnAttackNiw* this, PlayState* play);
void func_809B59B0(EnAttackNiw* this, PlayState* play);

ActorProfile En_Attack_Niw_Profile = {
    /**/ ACTOR_EN_ATTACK_NIW,
    /**/ ACTORCAT_ENEMY,
    /**/ FLAGS,
    /**/ OBJECT_NIW,
    /**/ sizeof(EnAttackNiw),
    /**/ EnAttackNiw_Init,
    /**/ EnAttackNiw_Destroy,
    /**/ EnAttackNiw_Update,
    /**/ EnAttackNiw_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_U8(attentionRangeType, ATTENTION_RANGE_1, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -2000, ICHAIN_CONTINUE),
    ICHAIN_F32(lockOnArrowOffset, 0, ICHAIN_STOP),
};

void EnAttackNiw_Init(Actor* thisx, PlayState* play) {
    EnAttackNiw* this = (EnAttackNiw*)thisx;
    s32 pad;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 25.0f);
    SkelAnime_InitFlex(play, &this->skelAnime, &gCuccoSkel, &gCuccoAnim, this->jointTable, this->morphTable, 16);
    if (this->actor.params < 0) {
        this->actor.params = 0;
    }
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.gravity = 0.0f;
    this->unk_298.x = Rand_CenteredFloat(100.0f);
    this->unk_298.y = Rand_CenteredFloat(10.0f);
    this->unk_298.z = Rand_CenteredFloat(100.0f);
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    this->actor.shape.rot.y = this->actor.world.rot.y = (Rand_ZeroOne() - 0.5f) * 60000.0f;
    this->actionFunc = func_809B5670;
}

void EnAttackNiw_Destroy(Actor* thisx, PlayState* play) {
    EnAttackNiw* this = (EnAttackNiw*)thisx;
    EnNiw* cucco = (EnNiw*)this->actor.parent;

    if (this->actor.parent != NULL) {
        if ((cucco->actor.update != NULL) && (cucco->unk_296 > 0)) {
            cucco->unk_296--;
        }
    }
}

void func_809B5268(EnAttackNiw* this, PlayState* play, s16 arg2) {
    if (this->unk_254 == 0) {
        if (arg2 == 0) {
            this->limb13TargetRotY = 0.0f;
        } else {
            this->limb13TargetRotY = -10000.0f;
        }
        this->unk_28E++;
        this->unk_254 = 3;
        if ((this->unk_28E & 1) == 0) {
            this->limb13TargetRotY = 0.0f;
            if (arg2 == 0) {
                this->unk_254 = Rand_ZeroFloat(30.0f);
            }
        }
    }

    if (this->unk_258 == 0) {
        this->unk_292++;
        this->unk_292 &= 1;
        switch (arg2) {
            case 0:
                this->limb11TargetRotZ = this->limb7TargetRotZ = 0.0f;
                break;
            case 1:
                this->unk_258 = 3;
                this->limb11TargetRotZ = this->limb7TargetRotZ = 7000.0f;

                if (this->unk_292 == 0) {
                    this->limb11TargetRotZ = this->limb7TargetRotZ = 0.0f;
                }
                break;
            case 2:
                this->unk_258 = 2;
                this->limb11TargetRotZ = this->limb7TargetRotZ = -10000.0f;
                this->limb7TargetRotY = this->limb11TargetRotY = 25000.0f;
                this->limb7TargetRotX = this->limb11TargetRotX = 6000.0f;
                if (this->unk_292 == 0) {
                    this->limb11TargetRotY = 8000.0f;
                    this->limb7TargetRotY = 8000.0f;
                }
                break;
            case 3:
                this->unk_258 = 2;
                this->limb11TargetRotY = 10000.0f;
                this->limb7TargetRotY = 10000.0f;
                if (this->unk_292 == 0) {
                    this->limb11TargetRotY = 3000.0f;
                    this->limb7TargetRotY = 3000.0f;
                }
                break;
            case 4:
                this->unk_254 = this->unk_256 = 5;
                break;
            case 5:
                this->unk_258 = 5;
                this->limb11TargetRotY = 14000.0f;
                this->limb7TargetRotY = 14000.0f;
                if (this->unk_292 == 0) {
                    this->limb11TargetRotY = 10000.0f;
                    this->limb7TargetRotY = 10000.0f;
                }
                break;
        }
    }

    if (this->limb15TargetRotY != this->limb15RotY) {
        Math_ApproachF(&this->limb15RotY, this->limb15TargetRotY, 0.5f, 4000.0f);
    }
    if (this->limb13TargetRotY != this->limb13RotY) {
        Math_ApproachF(&this->limb13RotY, this->limb13TargetRotY, 0.5f, 4000.0f);
    }
    if (this->limb7TargetRotZ != this->limb7RotZ) {
        Math_ApproachF(&this->limb7RotZ, this->limb7TargetRotZ, 0.8f, 7000.0f);
    }
    if (this->limb7TargetRotY != this->limb7RotY) {
        Math_ApproachF(&this->limb7RotY, this->limb7TargetRotY, 0.8f, 7000.0f);
    }
    if (this->limb7TargetRotX != this->limb7RotX) {
        Math_ApproachF(&this->limb7RotX, this->limb7TargetRotX, 0.8f, 7000.0f);
    }
    if (this->limb11TargetRotZ != this->limb11RotZ) {
        Math_ApproachF(&this->limb11RotZ, this->limb11TargetRotZ, 0.8f, 7000.0f);
    }
    if (this->limb11TargetRotY != this->limb11RotY) {
        Math_ApproachF(&this->limb11RotY, this->limb11TargetRotY, 0.8f, 7000.0f);
    }
    if (this->limb11TargetRotX != this->limb11RotX) {
        Math_ApproachF(&this->limb11RotX, this->limb11TargetRotX, 0.8f, 7000.0f);
    }
}

s32 func_809B55EC(EnAttackNiw* this, PlayState* play) {
    s16 sp1E;
    s16 sp1C;

    Actor_SetFocus(&this->actor, this->unk_2E4);
    Actor_GetScreenPos(play, &this->actor, &sp1E, &sp1C);
    if ((this->actor.projectedPos.z < -20.0f) || (sp1E < 0) || (sp1E > SCREEN_WIDTH) || (sp1C < 0) ||
        (sp1C > SCREEN_HEIGHT)) {
        return 0;
    } else {
        return 1;
    }
}

void func_809B5670(EnAttackNiw* this, PlayState* play) {
    s16 sp4E;
    s16 sp4C;
    f32 tmpf1;
    f32 tmpf2;
    f32 tmpf3;
    Vec3f sp34;

    this->actor.speed = 10.0f;

    tmpf1 = (this->unk_298.x + play->view.at.x) - play->view.eye.x;
    tmpf2 = (this->unk_298.y + play->view.at.y) - play->view.eye.y;
    tmpf3 = (this->unk_298.z + play->view.at.z) - play->view.eye.z;

    sp34.x = play->view.at.x + tmpf1;
    sp34.y = play->view.at.y + tmpf2;
    sp34.z = play->view.at.z + tmpf3;

    this->unk_2D4 = Math_Vec3f_Yaw(&this->actor.world.pos, &sp34);
    this->unk_2D0 = Math_Vec3f_Pitch(&this->actor.world.pos, &sp34) * -1.0f;

    Math_SmoothStepToS(&this->actor.world.rot.y, this->unk_2D4, 5, this->unk_2DC, 0);
    Math_SmoothStepToS(&this->actor.world.rot.x, this->unk_2D0, 5, this->unk_2DC, 0);
    Math_ApproachF(&this->unk_2DC, 5000.0f, 1.0f, 100.0f);

    Actor_SetFocus(&this->actor, this->unk_2E4);
    Actor_GetScreenPos(play, &this->actor, &sp4E, &sp4C);

    if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
        this->unk_2D4 = this->actor.yawTowardsPlayer;
        this->unk_2D0 = this->actor.world.rot.x - 3000.0f;
        this->unk_2DC = 0.0f;
        this->limb7TargetRotX = 0.0f;
        this->limb11TargetRotX = 0.0f;
        this->unk_254 = this->unk_256 = this->unk_258 = this->unk_25A = 0;
        this->unk_25C = 100;
        this->actor.gravity = -0.2f;
        this->unk_2E0 = 5.0f;
        this->limb15TargetRotY = 0.0f;
        this->actionFunc = func_809B59B0;
    } else if (((this->actor.projectedPos.z > 0.0f) && (fabsf(sp34.x - this->actor.world.pos.x) < 50.0f) &&
                (fabsf(sp34.y - this->actor.world.pos.y) < 50.0f) &&
                (fabsf(sp34.z - this->actor.world.pos.z) < 50.0f)) ||
               (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {

        this->unk_2D4 = this->actor.yawTowardsPlayer;
        this->unk_2D0 = this->actor.world.rot.x - 2000.0f;
        this->unk_2DC = 0.0f;
        this->limb11TargetRotX = 0.0f;
        this->limb7TargetRotX = 0.0f;
        this->unk_254 = this->unk_256 = this->unk_258 = this->unk_25A = 0;
        this->actor.gravity = -0.2f;
        this->unk_2E0 = 5.0f;
        this->limb15TargetRotY = 0.0f;
        this->actionFunc = func_809B59B0;
    } else {
        this->unk_254 = 10;
        this->limb13TargetRotY = -10000.0f;
        this->limb15TargetRotY = -3000.0f;
        func_809B5268(this, play, 2);
    }
}

void func_809B59B0(EnAttackNiw* this, PlayState* play) {
    if (!func_809B55EC(this, play)) {
        Actor_Kill(&this->actor);
        return;
    }

    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        if (this->unk_25A == 0) {
            this->unk_25A = 3;
            this->actor.velocity.y = 3.5f;
        }
        if (this->actor.gravity != -2.0f) {
            this->limb7TargetRotY = this->limb11TargetRotY = 14000.0f;
            this->unk_2D0 = this->limb7TargetRotZ = this->limb11TargetRotZ = this->limb7TargetRotX =
                this->limb11TargetRotX = 0.0f;
            this->unk_2D4 = this->actor.yawTowardsPlayer;
            this->unk_262 = 50;
            this->unk_25C = 100;
            this->actor.gravity = -2.0f;
        }
    }
    if (this->unk_25C == 50) {
        this->unk_2D4 = Rand_CenteredFloat(200.0f) + this->actor.yawTowardsPlayer;
    }
    Math_SmoothStepToS(&this->actor.world.rot.y, this->unk_2D4, 2, this->unk_2DC, 0);
    Math_SmoothStepToS(&this->actor.world.rot.x, this->unk_2D0, 2, this->unk_2DC, 0);
    Math_ApproachF(&this->unk_2DC, 10000.0f, 1.0f, 1000.0f);
    Math_ApproachF(&this->actor.speed, this->unk_2E0, 0.9f, 1.0f);
    if ((this->actor.gravity == -2.0f) && (this->unk_262 == 0) &&
        ((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) || (this->unk_25C == 0))) {
        this->unk_2E0 = 0.0f;
        this->actor.gravity = 0.0f;
        this->unk_2DC = 0.0f;
        this->unk_2D0 = this->actor.world.rot.x - 5000.0f;
        this->actionFunc = func_809B5C18;
    } else if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        func_809B5268(this, play, 5);
    } else {
        func_809B5268(this, play, 2);
    }
}

void func_809B5C18(EnAttackNiw* this, PlayState* play) {
    if (!func_809B55EC(this, play)) {
        Actor_Kill(&this->actor);
        return;
    }
    Math_SmoothStepToS(&this->actor.world.rot.x, this->unk_2D0, 5, this->unk_2DC, 0);
    Math_ApproachF(&this->unk_2DC, 5000.0f, 1.0f, 100.0f);
    Math_ApproachF(&this->actor.velocity.y, 5.0f, 0.3f, 1.0f);
    func_809B5268(this, play, 2);
}

void EnAttackNiw_Update(Actor* thisx, PlayState* play) {
    f32 tmpf1;
    EnAttackNiw* this = (EnAttackNiw*)thisx;
    EnNiw* cucco;
    Player* player = GET_PLAYER(play);
    PlayState* play2 = play;

    this->unk_28C++;
    DECR(this->unk_254);
    DECR(this->unk_258);
    DECR(this->unk_25A);
    DECR(this->unk_25E);
    DECR(this->unk_260);
    DECR(this->unk_25C);
    DECR(this->unk_262);

    this->actor.shape.rot = this->actor.world.rot;
    this->actor.shape.shadowScale = 15.0f;
    this->actionFunc(this, play2);
    Actor_UpdateBgCheckInfo(play, &this->actor, 20.0f, 20.0f, 60.0f,
                            UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 |
                                UPDBGCHECKINFO_FLAG_4);

    if (this->actionFunc == func_809B5670) {
        Actor_MoveXYZ(&this->actor);
    } else {
        Actor_MoveXZGravity(&this->actor);
    }

    if (this->actor.floorHeight <= BGCHECK_Y_MIN) {
        Actor_Kill(&this->actor);
        return;
    }

    if ((this->actor.bgCheckFlags & BGCHECKFLAG_WATER) && (this->actionFunc != func_809B5C18)) {
        Vec3f splashPos;
        s32 pad;

        Math_Vec3f_Copy(&splashPos, &this->actor.world.pos);
        splashPos.y += this->actor.depthInWater;
        EffectSsGSplash_Spawn(play, &splashPos, NULL, NULL, 0, 400);
        this->unk_2DC = 0.0f;
        this->actor.gravity = 0.0f;
        this->unk_2E0 = 0.0f;
        this->unk_2D0 = this->actor.world.rot.x - 5000.0f;
        this->actionFunc = func_809B5C18;
        return;
    }

    tmpf1 = 20.0f;
    if (this->actor.xyzDistToPlayerSq < SQ(tmpf1)) {
        cucco = (EnNiw*)this->actor.parent;
        if ((this->actor.parent->update != NULL) && (this->actor.parent != NULL) && (cucco != NULL) &&
            (cucco->timer9 == 0) &&
#if OOT_VERSION < NTSC_1_1
            //! @bug In certain scenarios like getting cornered against the wall, the PLAYER_STATE1_26 will be flushed
            //! before the player has regained control of Link. This can result in the player being softlocked by a
            //! cucco attack.
            !(player->stateFlags1 & PLAYER_STATE1_26)
#else
            (player->invincibilityTimer == 0)
#endif
        ) {
            Actor_SetPlayerKnockbackLarge(play, &this->actor, 2.0f, this->actor.world.rot.y, 0.0f, 0x10);
            cucco->timer9 = 70;
        }
    }
    if (this->unk_25E == 0) {
        this->unk_25E = 30;
        Actor_PlaySfx(&this->actor, NA_SE_EV_CHICKEN_CRY_A);
    }
    if (this->unk_260 == 0) {
        this->unk_260 = 7;
        Actor_PlaySfx(&this->actor, NA_SE_EN_DEKU_WAKEUP);
    }
}

s32 EnAttackNiw_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnAttackNiw* this = (EnAttackNiw*)thisx;
    Vec3f sp0 = { 0.0f, 0.0f, 0.0f };

    if (limbIndex == 13) {
        rot->y += (s16)this->limb13RotY;
    }
    if (limbIndex == 15) {
        rot->z += (s16)this->limb15RotY;
    }
    if (limbIndex == 11) {
        rot->x += (s16)this->limb11RotX;
        rot->y += (s16)this->limb11RotY;
        rot->z += (s16)this->limb11RotZ;
    }
    if (limbIndex == 7) {
        rot->x += (s16)this->limb7RotX;
        rot->y += (s16)this->limb7RotY;
        rot->z += (s16)this->limb7RotZ;
    }
    return 0;
}

void EnAttackNiw_Draw(Actor* thisx, PlayState* play) {
    EnAttackNiw* this = (EnAttackNiw*)thisx;

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnAttackNiw_OverrideLimbDraw, NULL, this);
}
