#include "z_en_reeba.h"
#include "overlays/actors/ovl_En_Encount1/z_en_encount1.h"
#include <vt.h>

#define FLAGS 0x08000015

#define THIS ((EnReeba*)thisx)

void EnReeba_Init(Actor* thisx, GlobalContext* globalCtx);
void EnReeba_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnReeba_Update(Actor* thisx, GlobalContext* globalCtx);
void EnReeba_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80AE4F40(EnReeba* this, GlobalContext* globalCtx);
void func_80AE5054(EnReeba* this, GlobalContext* globalCtx);
void func_80AE5270(EnReeba* this, GlobalContext* globalCtx);
void func_80AE5688(EnReeba* this, GlobalContext* globalCtx);
void func_80AE56E0(EnReeba* this, GlobalContext* globalCtx);

void func_80AE538C(EnReeba* this, GlobalContext* globalCtx);
void func_80AE53AC(EnReeba* this, GlobalContext* globalCtx);

static DamageTable sDamageTable = {
    0x00, 0xE2, 0xE1, 0xE2, 0xC1, 0xE2, 0xE2, 0xD2, 0xE1, 0xE4, 0xE6, 0xE2, 0x34, 0xE2, 0xE2, 0xE2, 
    0xE2, 0x00, 0x34, 0x00, 0x00, 0x00, 0xE2, 0xE8, 0xE4, 0xE2, 0xE8, 0xE4, 0x10, 0x00, 0x00, 0x00,
};

/*
const ActorInit En_Reeba_InitVars = {
    ACTOR_EN_REEBA,
    ACTORTYPE_MISC,
    FLAGS,
    OBJECT_REEBA,
    sizeof(EnReeba),
    (ActorFunc)EnReeba_Init,
    (ActorFunc)EnReeba_Destroy,
    (ActorFunc)EnReeba_Update,
    (ActorFunc)EnReeba_Draw,
};
*/

static ColliderCylinderInit sCylinderInit =
{
    { COLTYPE_UNK5, 0x11, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x08, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x05, 0x01 },
    { 20, 40, 0, { 0, 0, 0 } },
};

extern SkeletonHeader D_060001E4;
extern AnimationHeader D_06001EE8;

void EnReeba_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnReeba* this = THIS;
    f32 temp_f0; // rename when i know what 28C is
    s32 temp_ret;
    s32 pad;
    
    this->actor.naviEnemyId = 0x47;
    this->actor.unk_1F = 3;
    this->actor.gravity = -3.5f;
    this->actor.posRot2.pos = this->actor.posRot.pos;
    SkelAnime_Init(globalCtx, &this->skelanime, &D_06001EE8, &D_060001E4, 
                   this->limbDrawTable, this->transitionDrawTable, 18);
    this->actor.colChkInfo.mass = 0xFE;
    this->actor.colChkInfo.health = 4;
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    this->isMega = this->actor.params;
    this->unk_28C = 0.04f; //0.03999999910593033f
    if (this->isMega != 0) {
        this->collider.dim.radius = 0x23;
        this->collider.dim.height = 0x2D;
        this->unk_28C *= 1.5f;
        osSyncPrintf(VT_FGCOL(YELLOW)"☆☆☆☆☆ リーバぼす登場 ☆☆☆☆☆ %f\n"VT_RST, this->unk_28C);
        this->actor.colChkInfo.health = 20;
        this->collider.body.toucher.effect = 4;
        this->collider.body.toucher.damage = 16;
        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_ENEMY);
    }
    temp_f0 = this->unk_28C * -27500.0f;
    this->unk_284 = temp_f0;
    this->actor.shape.unk_08 = temp_f0;
    ActorShape_Init(&this->actor.shape, temp_f0, ActorShadow_DrawFunc_Circle, 0.0f);
    this->actor.colChkInfo.damageTable = &sDamageTable;
    func_8002E4B4(globalCtx, &this->actor, 35.0f, 60.0f, 60.0f, 0x1D);
    temp_ret = func_80041D4C(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorPolySource);
    if ((temp_ret != 4) && (temp_ret != 7)) {
            Actor_Kill(&this->actor);
            return;
    }
    this->actionfunc = func_80AE4F40;
}

void EnReeba_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnReeba* this = THIS;
    EnEncount1* spawner;

    Collider_DestroyCylinder(globalCtx, &this->collider);
    if (this->actor.attachedA != NULL) {
        spawner = (EnEncount1*)this->actor.attachedA;
        if (spawner->actor.update != NULL) {
            if (spawner->unk_152 > 0) {
                spawner->unk_152--;
            }
            if (this->isMega != 0) {
                spawner->unk_16C = 0;
                spawner->unk_164 = 0x258;
            }
        }
    }
}

void func_80AE4F40(EnReeba* this, GlobalContext* globalCtx) {
    f32 frames = SkelAnime_GetFrameCount(&D_060001E4);
    Player* player = PLAYER;
    s16 abs;

    SkelAnime_ChangeAnim(&this->skelanime, &D_060001E4, 2.0f, 0.0f, frames, 0, -10.0f);

    abs = fabsf(player->linearVelocity);
    this->unk_278 = (20 - (abs * 2));

    if (this->unk_278 < 0) {
        this->unk_278 = 2;
    }
    if (this->unk_278 >= 21) {
        this->unk_278 = 20;
    }

    this->actor.flags &= ~0x08000000;
    this->actor.posRot.pos.y = this->actor.unk_80;

    if (this->isMega != 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIVA_BIG_APPEAR);
    } else {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIVA_APPEAR);
    }

    this->actionfunc = func_80AE5054;
}

void func_80AE5054(EnReeba* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 playerLinearVel;

    SkelAnime_FrameUpdateMatrix(&this->skelanime);

    // spawn dust
    if ((globalCtx->gameplayFrames & 3) == 0) {
        func_80033260(globalCtx, &this->actor, &this->actor.posRot.pos, 
                      this->actor.shape.unk_10, 1, 8.0f, 0x1F4, 0xA, 1);
    }

    if (this->unk_278 == 0) {
        Math_SmoothScaleMaxF(&this->actor.shape.unk_10, 12.0f, 1.0f, 1.0f);
        if (this->actor.shape.unk_08 < 0.0f) {
            Math_SmoothDownscaleMaxF(&this->actor.shape.unk_08, 1.0f, this->unk_288);
            Math_SmoothScaleMaxF(&this->unk_288, 300.0f, 1.0f, 5.0f);

        } else {
            this->unk_288 = 0.0f;
            this->actor.shape.unk_08 = 0.0f;
            playerLinearVel = player->linearVelocity;

            switch (this->unk_280) {
                case 0:
                    this->actor.posRot.rot.y = this->actor.rotTowardsLinkY;
                    break;
                case 1:
                    this->actor.posRot.rot.y = this->actor.rotTowardsLinkY + (800.0f * playerLinearVel);
                    break;
                case 2:
                case 3:
                    this->actor.posRot.rot.y = this->actor.rotTowardsLinkY + 
                    (player->actor.shape.rot.y - this->actor.rotTowardsLinkY) * (playerLinearVel * 0.15f);
                    break;
                case 4:
                    this->actor.posRot.rot.y = this->actor.rotTowardsLinkY - (800.0f * playerLinearVel);
            }

            if (this->isMega != 0) {
                this->actionfunc = func_80AE538C;
            } else {
                this->unk_272 = 0x82;
                this->actor.speedXZ = Math_Rand_ZeroFloat(4.0f) + 6.0f;
                this->actionfunc = func_80AE5270;
            }
        }
    }
}

void func_80AE5270(EnReeba *this, GlobalContext *globalCtx) {
    s32 temp_ret;

    SkelAnime_FrameUpdateMatrix(&this->skelanime);

    if (this->actor.shape.unk_10 < 12.0f) {
        Math_SmoothScaleMaxF(&this->actor.shape.unk_10, 12.0f, 3.0f, 1.0f);
    }
    temp_ret = func_80041D4C(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorPolySource);
    if ((temp_ret != 4) && (temp_ret != 7)) {
        this->actionfunc = func_80AE5688;
        this->actor.speedXZ = 0.0f;
    } else {
        if ((this->unk_272 == 0) || (this->actor.xzDistanceFromLink < 30.0f) || 
            (this->actor.xzDistanceFromLink > 400.0f) || (this->actor.bgCheckFlags & 8)) {
            this->actionfunc = func_80AE5688;
        } else if (this->unk_274 == 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIVA_MOVE);
            this->unk_274 = 0xA;
        }
    }
}


void func_80AE538C(EnReeba* this, GlobalContext* globalCtx) {
    this->actor.flags |= 5;
    this->actionfunc = func_80AE53AC;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/func_80AE53AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/func_80AE561C.s")

void func_80AE5688(EnReeba* this, GlobalContext* globalCtx) {
    u32 temp_t7;
    u32 temp_t9;

    this->unk_27E = 0;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_AKINDONUTS_HIDE);
    this->actor.flags |= 0x8000000;
    this->actor.flags &= ~5;
    this->actionfunc = func_80AE56E0;
}

void func_80AE56E0(EnReeba* this, GlobalContext* globalCtx) {
    Math_SmoothDownscaleMaxF(&this->actor.shape.unk_10, 1.0f, 0.3f);
    Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 0.1f, 0.3f);
    SkelAnime_FrameUpdateMatrix(&this->skelanime);
    if ((this->unk_284 + 10.0f) <= this->actor.shape.unk_08) {
        if ((globalCtx->gameplayFrames & 3) == 0) {
            func_80033260(globalCtx, &this->actor, &this->actor.posRot.pos, 
                          this->actor.shape.unk_10, 1, 8.0f, 0x1F4, 0xA, 1);
        }
        Math_SmoothScaleMaxF(&this->actor.shape.unk_08, this->unk_284, 1.0f, this->unk_288);
        Math_SmoothScaleMaxF(&this->unk_288, 300.0f, 1.0f, 5.0f);
    } else {
        Actor_Kill(&this->actor);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/func_80AE57F0.s")
void func_80AE53AC(EnReeba *this, GlobalContext *globalCtx) {
    f32 temp_f0;
    s32 temp_ret;
    s32 temp_v0;
    s32 phi_v0;
    s32 phi_a0;

    SkelAnime_FrameUpdateMatrix(&this->skelanime);
    if (this->actor.shape.unk_10 < 12.0f) {
        Math_SmoothScaleMaxF(&this->actor.shape.unk_10, 12.0f, 3.0f, 1.0f);
    }
    temp_ret = func_80041D4C(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorPolySource);

    if (((temp_ret != 4) && (temp_ret != 7)) || (400.0f < this->actor.xzDistanceFromLink) || (this->actor.bgCheckFlags & 8)) {
            this->actionfunc = func_80AE5688;
    } else {
        if ((this->actor.xzDistanceFromLink < 70.0f) && (this->unk_270 == 0)) {
            this->unk_270 = 0x1E;
        }
        this->actor.speedXZ += (((this->actor.xzDistanceFromLink - 20.0f) / ((Math_Rand_ZeroOne () * 50.0f) + 150.0f)) * 1.8f);
        if (3.0f <= this->actor.speedXZ) {
            this->actor.speedXZ = 3.0f;
        }
        if (this->actor.speedXZ < -3.0f) {
            this->actor.speedXZ = -3.0f;
        }
        if ((s16) this->unk_270 == 0) {
            phi_v0 = (s32) this->actor.rotTowardsLinkY;
        } else {
            phi_v0 = (s32) ((0 - this->actor.rotTowardsLinkY) << 0x10) >> 0x10;
        }
        temp_v0 = (s32) ((phi_v0 - this->actor.posRot.rot.y) << 0x10) >> 0x10;
        if (temp_v0 > 0) {
            phi_a0 = (s32) (((f32) temp_v0 / 31.0f) + 10.0f) << 0x10;
        } else {
            phi_a0 = (s32) (((f32) temp_v0 / 31.0f) - 10.0f) << 0x10;
        }
        temp_f0 = (f32) (phi_a0 >> 0x10);
        this->actor.posRot.rot.y = (s16) (s32) ((f32) this->actor.posRot.rot.y + (temp_f0 + temp_f0));
        if (this->unk_274 == 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIVA_MOVE);
            this->unk_274 = 0x14;
        }
    }


}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/func_80AE5854.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/func_80AE58EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/func_80AE5938.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/func_80AE5A9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/func_80AE5BC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/func_80AE5C38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/func_80AE5E48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/func_80AE5EDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/EnReeba_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/EnReeba_Draw.s")
