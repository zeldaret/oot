
/*
 * File: z_en_reeba.c
 * Overlay: ovl_En_Reeba
 * Description: Leever
 */

#include "z_en_reeba.h"
#include "overlays/actors/ovl_En_Encount1/z_en_encount1.h"
#include "vt.h"

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
void func_80AE5E48(EnReeba* this, GlobalContext* globalCtx);
void func_80AE5854(EnReeba* this, GlobalContext* globalCtx);
void func_80AE5C38(EnReeba* this, GlobalContext* globalCtx);
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

extern AnimationHeader D_060001E4;
extern SkeletonHeader D_06001EE8;

void EnReeba_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnReeba* this = THIS;
    f32 temp_f0;
    s32 surfaceType;
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

    if (this->isBig) {
        this->collider.dim.radius = 35;
        this->collider.dim.height = 45;
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

    surfaceType = func_80041D4C(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorPolySource);

    if ((surfaceType != 4) && (surfaceType != 7)) {
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

            if (this->isBig) {
                spawner->unk_16C = 0;
                spawner->unk_164 = 0x258;
            }
        }
    }
}

void func_80AE4F40(EnReeba* this, GlobalContext* globalCtx) {
    f32 frames = SkelAnime_GetFrameCount(&D_060001E4.genericHeader);
    Player* player = PLAYER;
    s16 absPlayerVel;

    SkelAnime_ChangeAnim(&this->skelanime, &D_060001E4, 2.0f, 0.0f, frames, 0, -10.0f);

    absPlayerVel = fabsf(player->linearVelocity);
    this->unk_278 = (20 - (absPlayerVel * 2));

    if (this->unk_278 < 0) {
        this->unk_278 = 2;
    }

    if (this->unk_278 > 20) {
        this->unk_278 = 20;
    }

    this->actor.flags &= ~0x08000000;
    this->actor.posRot.pos.y = this->actor.groundY;

    if (this->isBig) {
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

    if ((globalCtx->gameplayFrames % 4) == 0) {
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

            if (this->isBig) {
                this->actionfunc = func_80AE538C;
            } else {
                this->unk_272 = 130;
                this->actor.speedXZ = Math_Rand_ZeroFloat(4.0f) + 6.0f;
                this->actionfunc = func_80AE5270;
            }
        }
    }
}

void func_80AE5270(EnReeba* this, GlobalContext* globalCtx) {
    s32 surfaceType;

    SkelAnime_FrameUpdateMatrix(&this->skelanime);

    if (this->actor.shape.unk_10 < 12.0f) {
        Math_SmoothScaleMaxF(&this->actor.shape.unk_10, 12.0f, 3.0f, 1.0f);
    }

    surfaceType = func_80041D4C(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorPolySource);

    if ((surfaceType != 4) && (surfaceType != 7)) {
        this->actor.speedXZ = 0.0f;
        this->actionfunc = func_80AE5688;
        return;
    }

    if ((this->unk_272 == 0) || (this->actor.xzDistFromLink < 30.0f) || (this->actor.xzDistFromLink > 400.0f) ||
        (this->actor.bgCheckFlags & 8)) {
        this->actionfunc = func_80AE5688;
        return;
    }

    if (this->unk_274 == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIVA_MOVE);
        this->unk_274 = 10;
    }
}

void func_80AE538C(EnReeba* this, GlobalContext* globalCtx) {
    this->actor.flags |= 5;
    this->actionfunc = func_80AE53AC;
}

void func_80AE53AC(EnReeba* this, GlobalContext* globalCtx) {
    f32 speed;
    s16 yawDiff;
    s16 yaw;
    s32 surfaceType;

    SkelAnime_FrameUpdateMatrix(&this->skelanime);

    if (this->actor.shape.unk_10 < 12.0f) {
        Math_SmoothScaleMaxF(&this->actor.shape.unk_10, 12.0f, 3.0f, 1.0f);
    }

    surfaceType = func_80041D4C(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorPolySource);

    if (((surfaceType != 4) && (surfaceType != 7)) || (this->actor.xzDistFromLink > 400.0f) ||
        (this->actor.bgCheckFlags & 8)) {
        this->actionfunc = func_80AE5688;
        return;
    }

    if ((this->actor.xzDistFromLink < 70.0f) && (this->unk_270 == 0)) {
        this->unk_270 = 30;
    }

    speed = (this->actor.xzDistFromLink - 20.0f) / ((Math_Rand_ZeroOne() * 50.0f) + 150.0f);
    this->actor.speedXZ += speed * 1.8f;

    if (this->actor.speedXZ >= 3.0f) {
        this->actor.speedXZ = 3.0f;
    }

    if (this->actor.speedXZ < -3.0f) {
        this->actor.speedXZ = -3.0f;
    }

    yawDiff = (this->unk_270 == 0) ? this->actor.yawTowardsLink : -this->actor.yawTowardsLink;
    yawDiff = yawDiff - this->actor.posRot.rot.y;
    yaw = (yawDiff > 0) ? ((yawDiff / 31.0f) + 10.0f) : ((yawDiff / 31.0f) - 10.0f);
    this->actor.posRot.rot.y += (yaw * 2.0f);

    if (this->unk_274 == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIVA_MOVE);
        this->unk_274 = 20;
    }
}

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
            func_80033260(globalCtx, &this->actor, &this->actor.posRot.pos, this->actor.shape.unk_10, 1, 8.0f, 500, 10,
                          1);
        }

        Math_SmoothScaleMaxF(&this->actor.shape.unk_08, this->unk_284, 1.0f, this->unk_288);
        Math_SmoothScaleMaxF(&this->unk_288, 300.0f, 1.0f, 5.0f);
    } else {
        Actor_Kill(&this->actor);
    }
}

void func_80AE57F0(EnReeba* this, GlobalContext* globalCtx) {
    this->unk_276 = 14;
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
            this->unk_270 = 30;
            this->actionfunc = func_80AE538C;
        } else {
            this->actionfunc = func_80AE5688;
        }
    }
}

void func_80AE58EC(EnReeba* this, GlobalContext* globalCtx) {
    this->unk_278 = 14;
    this->actor.posRot.rot.y = this->actor.yawTowardsLink;
    this->actor.speedXZ = -8.0f;
    this->actor.flags |= 0x8000000;
    this->actor.flags &= ~5;
    this->actionfunc = func_80AE5938;
}

void func_80AE5938(EnReeba* this, GlobalContext* globalCtx) {
    Vec3f pos;
    f32 scale;

    if (this->unk_278 != 0) {
        if (this->actor.speedXZ < 0.0f) {
            this->actor.speedXZ += 1.0f;
        }
    } else {
        this->actor.speedXZ = 0.0f;

        if ((this->unk_27E == 4) || (this->actor.colChkInfo.health != 0)) {
            if (this->unk_27E == 2) {
                pos.x = this->actor.posRot.pos.x + Math_Rand_CenteredFloat(20.0f);
                pos.y = this->actor.posRot.pos.y + Math_Rand_CenteredFloat(20.0f);
                pos.z = this->actor.posRot.pos.z + Math_Rand_CenteredFloat(20.0f);
                scale = 3.0f;

                if (this->isBig) {
                    scale = 6.0f;
                }

                EffectSsEnIce_SpawnFlyingVec3f(globalCtx, &this->actor, &pos, 150, 150, 150, 250, 235, 245, 255, scale);
            }

            this->unk_278 = 66;
            this->actionfunc = func_80AE5E48;
        } else {
            this->unk_278 = 30;
            this->actionfunc = func_80AE5A9C;
        }
    }
}

void func_80AE5A9C(EnReeba* this, GlobalContext* globalCtx) {
    Vec3f randPos;
    f32 scale;

    if (this->unk_278 != 0) {
        if ((this->unk_27E == 2) && ((this->unk_278 & 0xF) == 0)) {
            randPos.x = this->actor.posRot.pos.x + Math_Rand_CenteredFloat(20.0f);
            randPos.y = this->actor.posRot.pos.y + Math_Rand_CenteredFloat(20.0f);
            randPos.z = this->actor.posRot.pos.z + Math_Rand_CenteredFloat(20.0f);
            scale = 3.0f;

            if (this->isBig) {
                scale = 6.0f;
            }

            EffectSsEnIce_SpawnFlyingVec3f(globalCtx, &this->actor, &randPos, 150, 150, 150, 250, 235, 245, 255, scale);
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
    this->unk_278 = 14;
    this->actor.flags &= ~1;
    this->actionfunc = func_80AE5C38;
}

void func_80AE5C38(EnReeba* this, GlobalContext* globalCtx) {
    Vec3f pos;
    Vec3f accel = { 0.0f, 0.0f, 0.0f };
    Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    EnEncount1* spawner;

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
            velocity.y = 4.0f;
            EffectSsDeadDb_Spawn(globalCtx, &pos, &velocity, &accel, 120, 0, 255, 255, 255, 255, 255, 0, 0, 1, 9, true);

            if (!this->isBig) {
                Item_DropCollectibleRandom(globalCtx, &this->actor, &pos, 0xE0);
            } else {
                Item_DropCollectibleRandom(globalCtx, &this->actor, &pos, 0xC0);
            }

            if (this->actor.parent != NULL) {
                spawner = (EnEncount1*)this->actor.parent;

                if (spawner->actor.update != NULL) {
                    if (!this->isBig) {
                        if (spawner->numLeeversDead < 10) {
                            spawner->numLeeversDead++;
                        }
                        // How many are dead?
                        osSyncPrintf("\n\n");
                        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 何匹ＤＥＡＤ？ ☆☆☆☆☆%d\n" VT_RST, spawner->numLeeversDead);
                        osSyncPrintf("\n\n");
                    }
                }

                Actor_Kill(&this->actor);
            }
        }
    }
}

void func_80AE5E48(EnReeba* this, GlobalContext* globalCtx) {
    if (this->unk_278 < 37) {
        this->actor.shape.rot.x = Math_Rand_CenteredFloat(3000.0f);
        this->actor.shape.rot.z = Math_Rand_CenteredFloat(3000.0f);

        if (this->unk_278 == 0) {
            if (this->isBig) {
                this->actionfunc = func_80AE538C;
            } else {
                this->actionfunc = func_80AE5688;
            }
        }
    }
}

void func_80AE5EDC(EnReeba* this, GlobalContext* globalCtx) {
    if (this->collider.base.acFlags & 2) {
        this->collider.base.acFlags &= ~2;

        if ((this->actionfunc != func_80AE5C38) && (this->actionfunc != func_80AE5854)) {
            this->actor.shape.rot.z = 0;
            this->unk_27E = 0;
            this->actor.shape.rot.x = this->actor.shape.rot.z;

            switch (this->actor.colChkInfo.damageEffect) {
                case 11: // none
                case 12: // boomerang
                    if ((this->actor.colChkInfo.health > 1) && (this->unk_27E != 4)) {
                        this->unk_27E = 4;
                        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
                        func_8003426C(&this->actor, 0, 0xFF, 0, 0x50);
                        this->actionfunc = func_80AE58EC;
                        break;
                    }
                case 13: // hookshot/longshot
                    if ((this->actor.colChkInfo.health > 2) && (this->unk_27E != 4)) {
                        this->unk_27E = 4;
                        func_8003426C(&this->actor, 0, 0xFF, 0, 0x50);
                        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
                        this->actionfunc = func_80AE58EC;
                        break;
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
            this->unk_272 = 14;
            this->actionfunc = func_80AE561C;
            return;
        }
    }

    if (this->collider.base.atFlags & 2) {
        this->collider.base.atFlags &= ~2;
        if ((this->collider.base.at == &player->actor) && !this->isBig && (this->actionfunc != func_80AE56E0)) {
            this->actionfunc = func_80AE5688;
        }
    }

    this->actor.posRot2.pos = this->actor.posRot.pos;

    if (!this->isBig) {
        this->actor.posRot2.pos.y += 15.0f;
    } else {
        this->actor.posRot2.pos.y += 30.0f;
    }

    Collider_CylinderUpdate(&this->actor, &this->collider);

    if ((this->actor.shape.unk_08 >= -700.0f) && (this->actor.colChkInfo.health > 0) &&
        (this->actionfunc != func_80AE56E0)) {
        CollisionCheck_SetOC(globalCtx2, &globalCtx2->colChkCtx, &this->collider.base);

        if (!(this->actor.shape.unk_08 < 0.0f)) {
            CollisionCheck_SetAC(globalCtx2, &globalCtx2->colChkCtx, &this->collider.base);

            if ((this->actionfunc == func_80AE5270) || (this->actionfunc == func_80AE53AC)) {
                CollisionCheck_SetAT(globalCtx2, &globalCtx2->colChkCtx, &this->collider.base);
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
        gDPSetPrimColor(POLY_OPA_DISP++, 0x0, 0x01, 155, 55, 255, 255);
    } else {
        gDPSetPrimColor(POLY_OPA_DISP++, 0x0, 0x01, 255, 255, 255, 255);
    }

    SkelAnime_Draw(globalCtx, this->skelanime.skeleton, this->skelanime.limbDrawTbl, NULL, NULL, &this->actor);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_reeba.c", 1088);

    if (BREG(0)) {
        Vec3f debugPos;

        debugPos.x = (Math_Sins(this->actor.posRot.rot.y) * 30.0f) + this->actor.posRot.pos.x;
        debugPos.y = this->actor.posRot.pos.y + 20.0f;
        debugPos.z = (Math_Coss(this->actor.posRot.rot.y) * 30.0f) + this->actor.posRot.pos.z;
        DebugDisplay_AddObject(debugPos.x, debugPos.y, debugPos.z, this->actor.posRot.rot.x, this->actor.posRot.rot.y,
                               this->actor.posRot.rot.z, 1.0f, 1.0f, 1.0f, 255, 0, 0, 255, 4, globalCtx->state.gfxCtx);
    }
}
