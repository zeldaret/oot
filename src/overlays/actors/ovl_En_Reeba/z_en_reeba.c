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

void func_80AE561C(EnReeba* this, GlobalContext* globalCtx);

void func_80AE58EC(EnReeba* this, GlobalContext* globalCtx);
void func_80AE5BC4(EnReeba* this, GlobalContext* globalCtx);
void func_80AE5E48(EnReeba* this, GlobalContext* globalCtx);
void func_80AE57F0(EnReeba* this, GlobalContext* globalCtx);
void func_80AE5854(EnReeba* this, GlobalContext* globalCtx);
void func_80AE5C38(EnReeba* this, GlobalContext* globalCtx);
void func_80AE5854(EnReeba* this, GlobalContext* globalCtx);
void func_80AE5938(EnReeba* this, GlobalContext* globalCtx);
void func_80AE5A9C(EnReeba* this, GlobalContext* globalCtx);

static DamageTable sDamageTable = {
    0x00, 0xE2, 0xE1, 0xE2, 0xC1, 0xE2, 0xE2, 0xD2, 0xE1, 0xE4, 0xE6, 0xE2, 0x34, 0xE2, 0xE2, 0xE2,
    0xE2, 0x00, 0x34, 0x00, 0x00, 0x00, 0xE2, 0xE8, 0xE4, 0xE2, 0xE8, 0xE4, 0x10, 0x00, 0x00, 0x00,
};

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

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK5, 0x11, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x08, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x05, 0x01 },
    { 20, 40, 0, { 0, 0, 0 } },
};

extern SkeletonHeader D_060001E4;
extern AnimationHeader D_06001EE8;

void EnReeba_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnReeba* this = THIS;
    f32 temp_f0;
    s32 temp_ret;
    s32 pad;

    this->actor.naviEnemyId = 0x47;
    this->actor.unk_1F = 3;
    this->actor.gravity = -3.5f;
    this->actor.posRot2.pos = this->actor.posRot.pos;
    SkelAnime_Init(globalCtx, &this->skelanime, &D_06001EE8, &D_060001E4, this->limbDrawTable,
                   this->transitionDrawTable, 18);
    this->actor.colChkInfo.mass = 0xFE;
    this->actor.colChkInfo.health = 4;
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    this->isBig = this->actor.params;
    this->scale = 0.04f;
    if (this->isBig != 0) {
        this->collider.dim.radius = 0x23;
        this->collider.dim.height = 0x2D;
        this->scale *= 1.5f;
        osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ リーバぼす登場 ☆☆☆☆☆ %f\n" VT_RST, this->scale);
        this->actor.colChkInfo.health = 20;
        this->collider.body.toucher.effect = 4;
        this->collider.body.toucher.damage = 16;
        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_ENEMY);
    }
    temp_f0 = this->scale * -27500.0f;
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
    if (this->actor.parent != NULL) {
        spawner = (EnEncount1*)this->actor.parent;
        if (spawner->actor.update != NULL) {
            if (spawner->unk_152 > 0) {
                spawner->unk_152--;
            }
            if (this->isBig != 0) {
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
    this->actor.posRot.pos.y = this->actor.groundY;

    if (this->isBig != 0) {
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
        func_80033260(globalCtx, &this->actor, &this->actor.posRot.pos, this->actor.shape.unk_10, 1, 8.0f, 0x1F4, 0xA,
                      1);
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
                    this->actor.posRot.rot.y = this->actor.yawTowardsLink;
                    break;
                case 1:
                    this->actor.posRot.rot.y = this->actor.yawTowardsLink + (800.0f * playerLinearVel);
                    break;
                case 2:
                case 3:
                    this->actor.posRot.rot.y =
                        this->actor.yawTowardsLink +
                        (player->actor.shape.rot.y - this->actor.yawTowardsLink) * (playerLinearVel * 0.15f);
                    break;
                case 4:
                    this->actor.posRot.rot.y = this->actor.yawTowardsLink - (800.0f * playerLinearVel);
            }

            if (this->isBig != 0) {
                this->actionfunc = func_80AE538C;
            } else {
                this->unk_272 = 0x82;
                this->actor.speedXZ = Math_Rand_ZeroFloat(4.0f) + 6.0f;
                this->actionfunc = func_80AE5270;
            }
        }
    }
}

void func_80AE5270(EnReeba* this, GlobalContext* globalCtx) {
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
        if ((this->unk_272 == 0) || (this->actor.xzDistFromLink < 30.0f) || (this->actor.xzDistFromLink > 400.0f) ||
            (this->actor.bgCheckFlags & 8)) {
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
/*
void func_80AE53AC(EnReeba* this, GlobalContext* globalCtx) {
    f32 temp_f0;
    s16 temp_a0;
    s32 temp_ret;
    s16 temp_v0;
    s16 phi_v0;
    f32 distDiff;
    f32 rand;

    SkelAnime_FrameUpdateMatrix(&this->skelanime);

    if (this->actor.shape.unk_10 < 12.0f) {
        Math_SmoothScaleMaxF(&this->actor.shape.unk_10, 12.0f, 3.0f, 1.0f);
    }

    temp_ret = func_80041D4C(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorPolySource);

    if (((temp_ret != 4) && (temp_ret != 7)) || (400.0f < this->actor.xzDistFromLink) ||
        (this->actor.bgCheckFlags & 8)) {
        this->actionfunc = func_80AE5688;
        return;
    }

    if ((this->actor.xzDistFromLink < 70.0f) && (this->unk_270 == 0)) {
        this->unk_270 = 0x1E;
    }
    this->actor.speedXZ += (((this->actor.xzDistFromLink - 20.0f) / ((Math_Rand_ZeroOne() * 50.0f) + 150.0f)) * 1.8f);
    this->actor.speedXZ = CLAMP(this->actor.speedXZ, -3.0f, 3.0f);

    phi_v0 = (this->unk_270 == 0) ? this->actor.yawTowardsLink : -this->actor.yawTowardsLink;
    temp_v0 = phi_v0 - this->actor.posRot.rot.y;
    temp_a0 = temp_v0 > 0 ? ((temp_v0 / 31.0f) + 10.0f) : ((temp_v0 / 31.0f) - 10.0f);
    temp_f0 = temp_a0;
    this->actor.posRot.rot.y += (temp_f0 + temp_f0);

    if (this->unk_274 == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIVA_MOVE);
        this->unk_274 = 0x14;
    }
    
}
*/

void func_80AE561C(EnReeba* this, GlobalContext* globalCtx) {
    Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 1.0f, 0.3f);
    if (this->unk_272 == 0) {
        if (this->isBig) {
            this->actionfunc = func_80AE538C;
        } else {
            this->actionfunc = func_80AE5688;
        }
    }
}

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
            func_80033260(globalCtx, &this->actor, &this->actor.posRot.pos, this->actor.shape.unk_10, 1, 8.0f, 0x1F4,
                          0xA, 1);
        }
        Math_SmoothScaleMaxF(&this->actor.shape.unk_08, this->unk_284, 1.0f, this->unk_288);
        Math_SmoothScaleMaxF(&this->unk_288, 300.0f, 1.0f, 5.0f);
    } else {
        Actor_Kill(&this->actor);
    }
}

void func_80AE57F0(EnReeba* this, GlobalContext* globalCtx) {
    this->unk_276 = 0xE;
    this->actor.speedXZ = -8.0f;
    this->actor.posRot.rot.y = this->actor.yawTowardsLink;
    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 8);
    this->actionfunc = func_80AE5854;
}

void func_80AE5854(EnReeba* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelanime);

    if (this->actor.speedXZ < 0.0f) {
        this->actor.speedXZ++;
    }

    if (this->unk_276 == 0) {
        if (this->isBig) {
            this->unk_270 = 0x1E;
            this->actionfunc = func_80AE538C;
            return;
        } else {
            this->actionfunc = func_80AE5688;
        }
    }
}

void func_80AE58EC(EnReeba* this, GlobalContext* globalCtx) {
    this->unk_278 = 0xE;
    this->actor.posRot.rot.y = this->actor.yawTowardsLink;
    this->actor.speedXZ = -8.0f;
    this->actor.flags |= 0x8000000;
    this->actor.flags &= ~5;
    this->actionfunc = func_80AE5938;
}

void func_80AE5938(EnReeba* this, GlobalContext* globalCtx) {
    Vec3f pos;
    f32 unkf;

    if (this->unk_278 != 0) {
        if (this->actor.speedXZ < 0.0f) {
            this->actor.speedXZ = (f32)(this->actor.speedXZ + 1.0f);
        }
    } else {
        this->actor.speedXZ = 0.0f;
        if ((this->unk_27E == 4) || (this->actor.colChkInfo.health != 0)) {
            if (this->unk_27E == 2) {
                pos.x = Math_Rand_CenteredFloat(20.0f) + this->actor.posRot.pos.x;
                pos.y = Math_Rand_CenteredFloat(20.0f) + this->actor.posRot.pos.y;
                pos.z = Math_Rand_CenteredFloat(20.0f) + this->actor.posRot.pos.z;
                unkf = 3.0f;
                if (this->isBig != 0) {
                    unkf = 6.0f;
                }
                func_8002A140(globalCtx, this, &pos, 0x96, 0x96, 0x96, 0xFA, 0xEB, 0xF5, 0xFF, unkf);
            }
            this->unk_278 = 0x42;
            this->actionfunc = func_80AE5E48;
        } else {
            this->unk_278 = 0x1E;
            this->actionfunc = func_80AE5A9C;
        }
    }
}

void func_80AE5A9C(EnReeba* this, GlobalContext* globalCtx) {
    Vec3f randPos;
    f32 unkf;

    if (this->unk_278 != 0) {
        if ((this->unk_27E == 2) && ((this->unk_278 & 0xF) == 0)) {
            randPos.x = Math_Rand_CenteredFloat(20.0f) + this->actor.posRot.pos.x;
            randPos.y = Math_Rand_CenteredFloat(20.0f) + this->actor.posRot.pos.y;
            randPos.z = Math_Rand_CenteredFloat(20.0f) + this->actor.posRot.pos.z;
            unkf = 3.0f;
            if (this->isBig) {
                unkf = 6.0f;
            }
            func_8002A140(globalCtx, &this->actor, &randPos, 0x96, 0x96, 0x96, 0xFA, 0xEB, 0xF5, 0xFF, unkf);
        }
    } else {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIVA_DEAD);
        func_80032C7C(globalCtx, &this->actor);
        this->actionfunc = func_80AE5C38;
    }
}

void func_80AE5BC4(EnReeba* this, GlobalContext* globalCtx) {
    this->actor.speedXZ = -8.0f;
    this->actor.posRot.rot.y = this->actor.yawTowardsLink;
    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 8);
    this->unk_278 = 0xE;
    this->actor.flags &= ~1;
    this->actionfunc = func_80AE5C38;
}

void func_80AE5C38(EnReeba* this, GlobalContext* globalCtx) {

    Vec3f pos;
    Vec3f sp68 = { 0.0f, 0.0f, 0.0f };
    Vec3f sp5C = { 0.0f, 0.0f, 0.0f };
    EnEncount1* spawner;
    f32 sp60;

    if (this->unk_278 != 0) {
        if (this->actor.speedXZ < 0.0f) {
            this->actor.speedXZ++;
        }
    } else {
        this->actor.speedXZ = 0.0f;
        Math_SmoothDownscaleMaxF(&this->scale, 0.1f, 0.01f);
        if (this->scale < 0.01f) {
            pos.x = this->actor.posRot.pos.x;
            pos.y = this->actor.posRot.pos.y;
            pos.z = this->actor.posRot.pos.z;
            sp5C.y = 4.0f;
            func_8002A6B8(globalCtx, &pos, &sp5C, &sp68, 0x78, 0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0, 0, 1, 9, 1);

            if (this->isBig == 0) {
                Item_DropCollectibleRandom(globalCtx, &this->actor, &pos, 0xE0);
            } else {
                Item_DropCollectibleRandom(globalCtx, &this->actor, &pos, 0xC0);
            }

            if (this->actor.parent != NULL) {
                spawner = (EnEncount1*)this->actor.parent;
                if (spawner->actor.update != NULL) {
                    if (!this->isBig) {
                        if (spawner->leeversDead < 10) {
                            spawner->leeversDead++;
                        }
                        // How many are dead?
                        osSyncPrintf("\n\n");
                        osSyncPrintf("\x1b[32m☆☆☆☆☆ 何匹ＤＥＡＤ？ ☆☆☆☆☆%d\n\x1b[m", spawner->leeversDead);
                        osSyncPrintf("\n\n");
                    }
                }
                Actor_Kill(&this->actor);
            }
        }
    }
}

void func_80AE5E48(EnReeba* this, GlobalContext* globalCtx) {
    if (this->unk_278 < 0x25) {
        this->actor.shape.rot.x = Math_Rand_CenteredFloat(3000.0f);
        this->actor.shape.rot.z = Math_Rand_CenteredFloat(3000.0f);

        if (this->unk_278 == 0) {
            if (this->isBig) {
                this->actionfunc = func_80AE538C;
                return;
            } else {
                this->actionfunc = func_80AE5688;
            }
        }
    }
}

void func_80AE5EDC(EnReeba* this, GlobalContext* globalCtx) {
    if ((this->collider.base.acFlags & 2)) {
        this->collider.base.acFlags &= ~2;
        if ((this->actionfunc != func_80AE5C38) && (this->actionfunc != func_80AE5854)) {
            this->actor.shape.rot.z = 0;
            this->unk_27E = 0;
            this->actor.shape.rot.x = this->actor.shape.rot.z;
            switch (this->actor.colChkInfo.damageEffect) {
                case 11: // none
                case 12: // boomerang
                    if (this->actor.colChkInfo.health > 1) {
                        if (this->unk_27E != 4) {
                            this->unk_27E = 4;
                            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
                            func_8003426C(&this->actor, 0, 0xFF, 0, 0x50);
                            this->actionfunc = func_80AE58EC;
                            break;
                        }
                    }
                case 13: // hookshot/longshot
                    if (this->actor.colChkInfo.health > 2) {
                        if (this->unk_27E != 4) {
                            this->unk_27E = 4;
                            func_8003426C(&this->actor, 0, 0xFF, 0, 0x50);
                            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
                            this->actionfunc = func_80AE58EC;
                            break;
                        }
                    }
                case 14:
                    this->unk_27C = 6;
                    Actor_ApplyDamage(&this->actor);
                    if (this->actor.colChkInfo.health == 0) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIVA_DEAD);
                        func_80032C7C(globalCtx, &this->actor);
                        this->actionfunc = func_80AE5BC4;
                        break;
                    }
                    if (this->actionfunc == func_80AE5E48) {
                        this->actor.shape.rot.z = 0;
                        this->actor.shape.rot.x = this->actor.shape.rot.z;
                    }
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIVA_DAMAGE);
                    this->actionfunc = func_80AE57F0;
                    break;
                case 3: // ice arrows/ice magic
                    Actor_ApplyDamage(&this->actor);
                    this->unk_27C = 2;
                    this->unk_27E = 2;
                    func_8003426C(&this->actor, 0, 0xFF, 0, 0x50);
                    this->actionfunc = func_80AE58EC;
                    break;
                case 1: // unknown
                    if (this->unk_27E != 4) {
                        this->unk_27E = 4;
                        func_8003426C(&this->actor, 0, 0xFF, 0, 0x50);
                        this->actionfunc = func_80AE58EC;
                    }
                    break;
                default:
                    break;
            }
        }
    }
}

void EnReeba_Update(Actor* thisx, GlobalContext* globalCtx) {
    GlobalContext* globalCtx2 = globalCtx;
    EnReeba* this = THIS;
    Player* player = PLAYER;

    func_80AE5EDC(this, globalCtx);
    this->actionfunc(this, globalCtx2);
    Actor_SetScale(&this->actor, this->scale);

    if (this->unk_270 != 0) {
        this->unk_270--;
    }
    if (this->unk_272 != 0) {
        this->unk_272--;
    }
    if (this->unk_278 != 0) {
        this->unk_278--;
    }
    if (this->unk_274 != 0) {
        this->unk_274--;
    }
    if (this->unk_276 != 0) {
        this->unk_276--;
    }

    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx2, &this->actor, 35.0f, 60.0f, 60.0f, 0x1D);

    if (this->collider.base.atFlags & 4) {
        this->collider.base.atFlags &= ~4;
        if ((this->actionfunc == func_80AE5270) || (this->actionfunc == func_80AE53AC)) {
            this->actor.speedXZ = 8.0f;
            this->actor.posRot.rot.y *= -1.0f;
            this->unk_272 = 0xE;
            this->actionfunc = func_80AE561C;
            return;
        }
    }

    if (this->collider.base.atFlags & 2) {
        this->collider.base.atFlags &= ~2;
        if (&player->actor == this->collider.base.at) {
            if (!this->isBig) {
                if (this->actionfunc != func_80AE56E0) {
                    this->actionfunc = func_80AE5688;
                }
            }
        }
    }

    this->actor.posRot2.pos = this->actor.posRot.pos;

    if (!this->isBig) {
        this->actor.posRot2.pos.y += 15.0f;
    } else {
        this->actor.posRot2.pos.y += 30.0f;
    }

    Collider_CylinderUpdate(&this->actor, &this->collider);
    if ((this->actor.shape.unk_08 >= -700.0f) && (this->actor.colChkInfo.health > 0)) {
        if (this->actionfunc != func_80AE56E0) {
            CollisionCheck_SetOC(globalCtx2, &globalCtx2->colChkCtx, &this->collider.base);

            if (!(this->actor.shape.unk_08 < 0.0f)) {
                CollisionCheck_SetAC(globalCtx2, &globalCtx2->colChkCtx, &this->collider.base);

                if ((this->actionfunc == func_80AE5270) || (this->actionfunc == func_80AE53AC)) {
                    CollisionCheck_SetAT(globalCtx2, &globalCtx2->colChkCtx, &this->collider.base);
                }
            }
        }
    }
}

void EnReeba_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnReeba* this = THIS;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_reeba.c", 1062);

    func_80093D18(globalCtx->state.gfxCtx);

    if (this->isBig) {
        gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0x0, 0x01, 155, 55, 255, 255);
    } else {
        gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0x0, 0x01, 255, 255, 255, 255);
    }

    SkelAnime_Draw(globalCtx, this->skelanime.skeleton, this->skelanime.limbDrawTbl, NULL, 0, &this->actor);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_reeba.c", 1088);

    if (BREG(0)) {
        Vec3f debugPos;

        debugPos.x = (Math_Sins(this->actor.posRot.rot.y) * 30.0f) + this->actor.posRot.pos.x;
        debugPos.y = this->actor.posRot.pos.y + 20.0f;
        debugPos.z = (Math_Coss(this->actor.posRot.rot.y) * 30.0f) + this->actor.posRot.pos.z;
        DebugDisplay_AddObject(debugPos.x, debugPos.y, debugPos.z, this->actor.posRot.rot.x, this->actor.posRot.rot.y,
                               this->actor.posRot.rot.z, 1.0f, 1.0f, 1.0f, 0xFF, 0, 0, 0xFF, 4,
                               globalCtx->state.gfxCtx);
    }
}
