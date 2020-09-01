/*
 * File: z_en_attack_niw.c
 * Overlay: ovl_En_Attack_Niw
 * Description: Attacking Cucco, not solid
 */

#include "z_en_attack_niw.h"
#include "overlays/actors/ovl_En_Niw/z_en_niw.h"

#define FLAGS 0x00000010

#define THIS ((EnAttackNiw*)thisx)

void EnAttackNiw_Init(Actor* thisx, GlobalContext* globalCtx);
void EnAttackNiw_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnAttackNiw_Update(Actor* thisx, GlobalContext* globalCtx);
void EnAttackNiw_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809B5670(EnAttackNiw* this, GlobalContext* globalCtx);
void func_809B5C18(EnAttackNiw* this, GlobalContext* globalCtx);
void func_809B59B0(EnAttackNiw* this, GlobalContext* globalCtx);

extern AnimationHeader D_060000E8;
extern SkeletonHeader D_06002530;

const ActorInit En_Attack_Niw_InitVars = {
    ACTOR_EN_ATTACK_NIW,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_NIW,
    sizeof(EnAttackNiw),
    (ActorFunc)EnAttackNiw_Init,
    (ActorFunc)EnAttackNiw_Destroy,
    (ActorFunc)EnAttackNiw_Update,
    (ActorFunc)EnAttackNiw_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_U8(unk_1F, 1, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 63536, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 0, ICHAIN_STOP),
};

void EnAttackNiw_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnAttackNiw* this = THIS;
    s32 pad;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 25.0f);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06002530, &D_060000E8, this->limbDrawTable,
                     this->transitionDrawTable, 16);
    if (this->actor.params < 0) {
        this->actor.params = 0;
    }
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.gravity = 0.0f;
    this->unk_298.x = Math_Rand_CenteredFloat(100.0f);
    this->unk_298.y = Math_Rand_CenteredFloat(10.0f);
    this->unk_298.z = Math_Rand_CenteredFloat(100.0f);
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.flags &= ~1;
    this->actor.shape.rot.y = this->actor.posRot.rot.y = (Math_Rand_ZeroOne() - 0.5f) * 60000.0f;
    this->actionFunc = func_809B5670;
}

void EnAttackNiw_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnAttackNiw* this = THIS;
    EnNiw* cucco = (EnNiw*)this->actor.parent;

    if (this->actor.parent != NULL) {
        if ((cucco->actor.update != NULL) && (cucco->unk_296 > 0)) {
            cucco->unk_296--;
        }
    }
}

void func_809B5268(EnAttackNiw* this, GlobalContext* globalCtx, s16 arg2) {
    if (this->unk_254 == 0) {
        if (arg2 == 0) {
            this->unk_264 = 0.0f;
        } else {
            this->unk_264 = -10000.0f;
        }
        this->unk_28E++;
        this->unk_254 = 3;
        if ((this->unk_28E & 1) == 0) {
            this->unk_264 = 0.0f;
            if (arg2 == 0) {
                this->unk_254 = Math_Rand_ZeroFloat(30.0f);
            }
        }
    }

    if (this->unk_258 == 0) {
        this->unk_292++;
        this->unk_292 &= 1;
        switch (arg2) {
            case 0:
                this->unk_26C = 0.0f;
                this->unk_268 = 0.0f;
                break;
            case 1:
                this->unk_258 = 3;
                this->unk_26C = 7000.0f;
                this->unk_268 = 7000.0f;
                if (this->unk_292 == 0) {
                    this->unk_26C = 0.0f;
                    this->unk_268 = 0.0f;
                }
                break;
            case 2:
                this->unk_258 = 2;
                this->unk_268 = this->unk_26C = -10000.0f;
                this->unk_280 = this->unk_278 = 25000.0f;
                this->unk_284 = this->unk_27C = 6000.0f;
                if (this->unk_292 == 0) {
                    this->unk_278 = 8000.0f;
                    this->unk_280 = 8000.0f;
                }
                break;
            case 3:
                this->unk_258 = 2;
                this->unk_278 = 10000.0f;
                this->unk_280 = 10000.0f;
                if (this->unk_292 == 0) {
                    this->unk_278 = 3000.0f;
                    this->unk_280 = 3000.0f;
                }
                break;
            case 4:
                this->unk_254 = this->unk_256 = 5;
                break;
            case 5:
                this->unk_258 = 5;
                this->unk_278 = 14000.0f;
                this->unk_280 = 14000.0f;
                if (this->unk_292 == 0) {
                    this->unk_278 = 10000.0f;
                    this->unk_280 = 10000.0f;
                }
                break;
        }
    }

    if (this->unk_288 != this->unk_2C0) {
        Math_SmoothScaleMaxF(&this->unk_2C0, this->unk_288, 0.5f, 4000.0f);
    }
    if (this->unk_264 != this->unk_2BC) {
        Math_SmoothScaleMaxF(&this->unk_2BC, this->unk_264, 0.5f, 4000.0f);
    }
    if (this->unk_26C != this->unk_2A4.x) {
        Math_SmoothScaleMaxF(&this->unk_2A4.x, this->unk_26C, 0.8f, 7000.0f);
    }
    if (this->unk_280 != this->unk_2A4.y) {
        Math_SmoothScaleMaxF(&this->unk_2A4.y, this->unk_280, 0.8f, 7000.0f);
    }
    if (this->unk_284 != this->unk_2A4.z) {
        Math_SmoothScaleMaxF(&this->unk_2A4.z, this->unk_284, 0.8f, 7000.0f);
    }
    if (this->unk_268 != this->unk_2B0.x) {
        Math_SmoothScaleMaxF(&this->unk_2B0.x, this->unk_268, 0.8f, 7000.0f);
    }
    if (this->unk_278 != this->unk_2B0.y) {
        Math_SmoothScaleMaxF(&this->unk_2B0.y, this->unk_278, 0.8f, 7000.0f);
    }
    if (this->unk_27C != this->unk_2B0.z) {
        Math_SmoothScaleMaxF(&this->unk_2B0.z, this->unk_27C, 0.8f, 7000.0f);
    }
}

s32 func_809B55EC(EnAttackNiw* this, GlobalContext* globalCtx) {
    s16 sp1E;
    s16 sp1C;

    Actor_SetHeight(&this->actor, this->unk_2E4);
    func_8002F374(globalCtx, &this->actor, &sp1E, &sp1C);
    if ((this->actor.projectedPos.z < -20.0f) || (sp1E < 0) || (sp1E >= 0x141) || (sp1C < 0) || (sp1C >= 0xF1)) {
        return 0;
    } else {
        return 1;
    }
}

#ifdef NON_MATCHING
// Stack, every variable off by 4 bytes
void func_809B5670(EnAttackNiw* this, GlobalContext* globalCtx) {
    Vec3f* pos = &this->actor.posRot.pos;
    f32 tmpf1;
    s16 sp4E;
    s16 sp4C;
    f32 tmpf2;
    f32 tmpf3;
    Vec3f sp34;

    this->actor.speedXZ = 10.0f;

    tmpf1 = (this->unk_298.x + globalCtx->view.lookAt.x) - globalCtx->view.eye.x;
    tmpf2 = (this->unk_298.y + globalCtx->view.lookAt.y) - globalCtx->view.eye.y;
    tmpf3 = (this->unk_298.z + globalCtx->view.lookAt.z) - globalCtx->view.eye.z;

    sp34.x = globalCtx->view.lookAt.x + tmpf1;
    sp34.y = globalCtx->view.lookAt.y + tmpf2;
    sp34.z = globalCtx->view.lookAt.z + tmpf3;

    this->unk_2D4 = Math_Vec3f_Yaw(pos, &sp34);
    this->unk_2D0 = (Math_Vec3f_Pitch(pos, &sp34) * -1.0f);
    Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->unk_2D4, 5, this->unk_2DC, 0);
    Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.x, this->unk_2D0, 5, this->unk_2DC, 0);
    Math_SmoothScaleMaxF(&this->unk_2DC, 5000.0f, 1.0f, 100.0f);
    Actor_SetHeight(&this->actor, this->unk_2E4);
    func_8002F374(globalCtx, &this->actor, &sp4E, &sp4C);
    if (this->actor.bgCheckFlags & 8) {
        this->unk_2D4 = this->actor.yawTowardsLink;
        this->unk_2D0 = this->actor.posRot.rot.x - 3000.0f;
        this->unk_2DC = this->unk_284 = this->unk_27C = 0.0f;
        this->unk_254 = this->unk_256 = this->unk_258 = this->unk_25A = 0;
        this->unk_25C = 0x64;
        this->actor.gravity = -0.2f;
        this->unk_2E0 = 5.0f;
        this->unk_288 = 0.0f;
        this->actionFunc = func_809B59B0;
    } else if (((this->actor.projectedPos.z > 0.0f) && (fabsf(sp34.x - this->actor.posRot.pos.x) < 50.0f) &&
                (fabsf(sp34.y - this->actor.posRot.pos.y) < 50.0f) &&
                (fabsf(sp34.z - this->actor.posRot.pos.z) < 50.0f)) ||
               (this->actor.bgCheckFlags & 1)) {
        this->unk_254 = this->unk_256 = this->unk_258 = this->unk_25A = 0;
        this->unk_284 = this->unk_27C = this->unk_2DC = 0.0f;
        this->unk_2D4 = this->actor.yawTowardsLink;
        this->unk_2D0 = this->actor.posRot.rot.x - 2000.0f;
        this->actor.gravity = -0.2f;
        this->unk_2E0 = 5.0f;
        this->unk_288 = 0.0f;
        this->actionFunc = func_809B59B0;
    } else {
        this->unk_254 = 10;
        this->unk_264 = -10000.0f;
        this->unk_288 = -3000.0f;
        func_809B5268(this, globalCtx, 2);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Attack_Niw/func_809B5670.s")
#endif

void func_809B59B0(EnAttackNiw* this, GlobalContext* globalCtx) {
    if (!func_809B55EC(this, globalCtx)) {
        Actor_Kill(&this->actor);
        return;
    }

    if (this->actor.bgCheckFlags & 1) {
        if (this->unk_25A == 0) {
            this->unk_25A = 3;
            this->actor.velocity.y = 3.5f;
        }
        if (this->actor.gravity != -2.0f) {
            this->unk_280 = this->unk_278 = 14000.0f;
            this->unk_2D0 = this->unk_26C = this->unk_268 = this->unk_284 = this->unk_27C = 0.0f;
            this->unk_2D4 = this->actor.yawTowardsLink;
            this->unk_262 = 0x32;
            this->unk_25C = 0x64;
            this->actor.gravity = -2.0f;
        }
    }
    if (this->unk_25C == 0x32) {
        this->unk_2D4 = Math_Rand_CenteredFloat(200.0f) + this->actor.yawTowardsLink;
    }
    Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->unk_2D4, 2, this->unk_2DC, 0);
    Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.x, this->unk_2D0, 2, this->unk_2DC, 0);
    Math_SmoothScaleMaxF(&this->unk_2DC, 10000.0f, 1.0f, 1000.0f);
    Math_SmoothScaleMaxF(&this->actor.speedXZ, this->unk_2E0, 0.9f, 1.0f);
    if ((this->actor.gravity == -2.0f) && (this->unk_262 == 0) &&
        ((this->actor.bgCheckFlags & 8) || (this->unk_25C == 0))) {
        this->unk_2E0 = 0.0f;
        this->actor.gravity = 0.0f;
        this->unk_2DC = 0.0f;
        this->unk_2D0 = this->actor.posRot.rot.x - 5000.0f;
        this->actionFunc = func_809B5C18;
    } else if (this->actor.bgCheckFlags & 1) {
        func_809B5268(this, globalCtx, 5);
    } else {
        func_809B5268(this, globalCtx, 2);
    }
}

void func_809B5C18(EnAttackNiw* this, GlobalContext* globalCtx) {
    if (!func_809B55EC(this, globalCtx)) {
        Actor_Kill(&this->actor);
        return;
    }
    Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.x, this->unk_2D0, 5, this->unk_2DC, 0);
    Math_SmoothScaleMaxF(&this->unk_2DC, 5000.0f, 1.0f, 100.0f);
    Math_SmoothScaleMaxF(&this->actor.velocity.y, 5.0f, 0.3f, 1.0f);
    func_809B5268(this, globalCtx, 2);
}

void EnAttackNiw_Update(Actor* thisx, GlobalContext* globalCtx) {
    f32 tmpf1;
    EnAttackNiw* this = THIS;
    EnNiw* cucco;
    Player* player = PLAYER;
    s32 pad;
    Vec3f sp30;
    GlobalContext* globalCtx2 = globalCtx;

    this->unk_28C++;
    if (this->unk_254 != 0) {
        this->unk_254--;
    }
    if (this->unk_258 != 0) {
        this->unk_258--;
    }
    if (this->unk_25A != 0) {
        this->unk_25A--;
    }
    if (this->unk_25E != 0) {
        this->unk_25E--;
    }
    if (this->unk_260 != 0) {
        this->unk_260--;
    }
    if (this->unk_25C != 0) {
        this->unk_25C--;
    }
    if (this->unk_262 != 0) {
        this->unk_262--;
    }

    this->actor.shape.rot = this->actor.posRot.rot;
    this->actor.shape.unk_10 = 15.0f;
    this->actionFunc(this, globalCtx2);
    func_8002E4B4(globalCtx, &this->actor, 20.0f, 20.0f, 60.0f, 0x1D);

    if (this->actionFunc == func_809B5670) {
        func_8002D97C(&this->actor);
    } else {
        Actor_MoveForward(&this->actor);
    }

    if (this->actor.groundY <= -32000.0f) {
        Actor_Kill(&this->actor);
        return;
    }

    if ((this->actor.bgCheckFlags & 0x20) && (this->actionFunc != func_809B5C18)) {
        Math_Vec3f_Copy(&sp30, &this->actor.posRot.pos);
        sp30.y += this->actor.waterY;
        func_8002949C(globalCtx, &sp30, 0, 0, 0, 0x190);
        this->unk_2DC = 0.0f;
        this->actor.gravity = 0.0f;
        this->unk_2E0 = 0.0f;
        this->unk_2D0 = this->actor.posRot.rot.x - 5000.0f;
        this->actionFunc = func_809B5C18;
        return;
    }

    tmpf1 = 20.0f;
    if (this->actor.xyzDistFromLinkSq < SQ(tmpf1)) {
        cucco = (EnNiw*)this->actor.parent;
        if ((this->actor.parent->update != NULL) && (this->actor.parent != NULL) && (cucco != NULL) &&
            (cucco->unk_26A == 0) && (player->invincibilityTimer == 0)) {
            func_8002F6D4(globalCtx, &this->actor, 2.0f, this->actor.posRot.rot.y, 0.0f, 0x10);
            cucco->unk_26A = 0x46;
        }
    }
    if (this->unk_25E == 0) {
        this->unk_25E = 30;
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_CHICKEN_CRY_A);
    }
    if (this->unk_260 == 0) {
        this->unk_260 = 7;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DEKU_WAKEUP);
    }
}

s32 func_809B5F98(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnAttackNiw* this = THIS;
    Vec3f sp0 = { 0.0f, 0.0f, 0.0f };

    if (limbIndex == 13) {
        rot->y += (s16)this->unk_2BC;
    }
    if (limbIndex == 15) {
        rot->z += (s16)this->unk_2C0;
    }
    if (limbIndex == 11) {
        rot->x += (s16)this->unk_2B0.z;
        rot->y += (s16)this->unk_2B0.y;
        rot->z += (s16)this->unk_2B0.x;
    }
    if (limbIndex == 7) {
        rot->x += (s16)this->unk_2A4.z;
        rot->y += (s16)this->unk_2A4.y;
        rot->z += (s16)this->unk_2A4.x;
    }
    return 0;
}

void EnAttackNiw_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnAttackNiw* this = THIS;

    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                     func_809B5F98, NULL, &this->actor);
}
