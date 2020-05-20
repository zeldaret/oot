/*
 * File: z_en_hintnuts.c
 * Overlay: ovl_En_Hintnuts
 * Description: Hint Deku Scrubs (Deku Tree)
 */

#include "z_en_hintnuts.h"

#define FLAGS 0x00000005

#define THIS ((EnHintnuts*)thisx)

void EnHintnuts_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHintnuts_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHintnuts_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHintnuts_Draw(Actor* thisx, GlobalContext* globalCtx);
void func_80A57454(EnHintnuts* this);
void func_80A578FC(EnHintnuts* this, GlobalContext* globalCtx);
void func_80A57B60(EnHintnuts* this, GlobalContext* globalCtx);
void func_80A57BE4(EnHintnuts* this, GlobalContext* globalCtx);
void func_80A57CA8(EnHintnuts* this, GlobalContext* globalCtx);
void func_80A57DE4(EnHintnuts* this, GlobalContext* globalCtx);
void func_80A57EF8(EnHintnuts* this, GlobalContext* globalCtx);
void func_80A57F5C(EnHintnuts* this, GlobalContext* globalCtx);
void func_80A58028(EnHintnuts* this, GlobalContext* globalCtx);
void func_80A582B8(EnHintnuts* this, GlobalContext* globalCtx);
void func_80A58320(EnHintnuts* this, GlobalContext* globalCtx);
void func_80A584DC(EnHintnuts* this, GlobalContext* globalCtx);
s32 func_80A58838(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, EnHintnuts* enHintnuts);

extern AnimationHeader D_06000168;
extern u32 D_060014E0;
extern SkeletonHeader D_060023B8;
extern AnimationHeader D_060024CC;
extern AnimationHeader D_060026C4;
extern AnimationHeader D_06002B90;
extern AnimationHeader D_06002894;
extern AnimationHeader D_060029BC;
extern AnimationHeader D_06002E84;
extern AnimationHeader D_06002F7C;
extern AnimationHeader D_06003128;

const ActorInit En_Hintnuts_InitVars = {
    ACTOR_EN_HINTNUTS,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_HINTNUTS,
    sizeof(EnHintnuts),
    (ActorFunc)EnHintnuts_Init,
    (ActorFunc)EnHintnuts_Destroy,
    (ActorFunc)EnHintnuts_Update,
    (ActorFunc)EnHintnuts_Draw,
};

ColliderCylinderInit cylinderInitData = {
    { COLTYPE_UNK6, 0x00, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 18, 32, 0, { 0, 0, 0 } }
};

CollisionCheckInfoInit collisionCheckInfoInit = {
    0x01,
    0x0012,
    0x0020,
    0xFE,
};

s16 D_80A58A34 = 0;

InitChainEntry initChain[] = {
    ICHAIN_F32(gravity, -1, ICHAIN_CONTINUE),
    ICHAIN_S8(naviEnemyId, 10, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 2600, ICHAIN_STOP),
};

void EnHintnuts_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnHintnuts* this = THIS;
    s32 pad;

    Actor_ProcessInitChain(&this->actor, initChain);
    if (this->actor.params == 0xA) {
        this->actor.flags &= ~5;
    } else {
        ActorShape_Init(&this->actor.shape, 0x0, ActorShadow_DrawFunc_Circle, 35.0f);
        SkelAnime_Init(globalCtx, &this->skelAnime, &D_060023B8, &D_06002F7C, &this->unk_19A, &this->unk_1D6, 10);
        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &cylinderInitData);
        func_80061ED4(&this->actor.colChkInfo, NULL, &collisionCheckInfoInit);
        Actor_SetTextWithPrefix(globalCtx, &this->actor, (this->actor.params >> 8) & 0xFF);
        this->unk_198 = this->actor.textId;
        this->actor.params &= 0xFF;
        D_80A58A34 = 0;
        if (this->actor.textId == 0x109B) // "Please forgive me, master!..."
        {
            if (Flags_GetClear(globalCtx, 0x9) != 0) {
                Actor_Kill(&this->actor);
                return;
            }
        }
        func_80A57454(this);
        Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_HINTNUTS, this->actor.posRot.pos.x,
                            this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, this->actor.posRot.rot.y, 0, 0xA);
    }
}

void EnHintnuts_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnHintnuts* this = THIS;
    if (this->actor.params != 0xA) {
        Collider_DestroyCylinder(globalCtx, &this->collider);
    }
}

void func_80A573D0(EnHintnuts* this, GlobalContext* globalCtx) {
    if (this->actor.textId != 0 && this->actor.type == ACTORTYPE_ENEMY &&
        ((this->actor.params == 0) || (D_80A58A34 == 2))) {
        this->actor.flags &= 0xFFFFFFFA;
        this->actor.flags |= 0x9;
        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_BG);
    }
}

void func_80A57454(EnHintnuts* this) {
    SkelAnime_ChangeAnimPlaybackStop(&this->skelAnime, &D_06002B90, 0.0f);
    this->unk_194 = Math_Rand_S16Offset(100, 50);
    this->collider.dim.height = 5;
    this->actor.posRot.pos = this->actor.initPosRot.pos;
    this->collider.base.acFlags &= ~1;
    this->actionFunc = func_80A578FC;
}

void func_80A574D4(EnHintnuts* this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06002894);
    this->unk_194 = 2;
    this->actionFunc = func_80A57B60;
}

void func_80A5751C(EnHintnuts* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06000168);
    this->actionFunc = func_80A57CA8;
}

void func_80A57558(EnHintnuts* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06002F7C, -3.0f);
    if (this->actionFunc == func_80A57CA8) {
        this->unk_194 = 0x1002;
    } else {
        this->unk_194 = 0x1;
    }
    this->actionFunc = func_80A57BE4;
}

void func_80A575C0(EnHintnuts* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_060024CC, -5.0f);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_DOWN);
    this->actionFunc = func_80A57DE4;
}

void func_80A5760C(EnHintnuts* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_060026C4, -3.0f);
    this->collider.dim.height = 0x25;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_DAMAGE);
    this->collider.base.acFlags &= ~1;

    if (this->actor.params > 0 && this->actor.params < 4 && this->actor.type == ACTORTYPE_ENEMY) {
        if (D_80A58A34 == -4) {
            D_80A58A34 = 0;
        }
        if (this->actor.params == D_80A58A34 + 1) {
            D_80A58A34++;
        } else {
            if (D_80A58A34 > 0) {
                D_80A58A34 = -D_80A58A34;
            }
            D_80A58A34--;
        }
        this->actor.flags |= 0x10;
        this->actionFunc = func_80A57F5C;
    } else {
        this->actionFunc = func_80A57EF8;
    }
}

void func_80A576FC(EnHintnuts* this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06003128);
    this->unk_194 = 5;
    this->actionFunc = func_80A58028;
}

void func_80A57744(EnHintnuts* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06002E84, -5.0f);
    this->actionFunc = func_80A582B8;
    this->actor.speedXZ = 0.0f;
}

void func_80A57790(EnHintnuts* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06003128, -5.0f);
    this->actor.speedXZ = 3.0f;
    this->unk_194 = 100;
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    this->collider.base.maskA &= ~1;
    this->actor.flags |= 0x10;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_DAMAGE);
    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ITEM00, this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                this->actor.posRot.pos.z, 0x0, 0x0, 0x0, 0x3); // recovery heart
    this->actionFunc = func_80A58320;
}

void func_80A57850(EnHintnuts* this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_060029BC);
    this->actor.flags &= ~1;
    func_8003426C(&this->actor, 0, 0xFF, 0, 0x64);
    this->actor.unk_114 = 1;
    this->unk_194 = 0;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_FAINT);
    if (D_80A58A34 == -3) {
        func_80078884(NA_SE_SY_ERROR);
        D_80A58A34 = -4;
    }
    this->actionFunc = func_80A584DC;
}

void func_80A578FC(EnHintnuts* this, GlobalContext* globalCtx) {
    s32 sp2C;
    f32 phi_f0;
    f32 phi_f2;

    sp2C = 0;
    if (this->skelAnime.animPlaybackSpeed < 0.5f) {
        sp2C = 1;
    }
    if (sp2C != 0 && this->unk_194 != 0) {
        this->unk_194--;
    }
    if (func_800A56C8(&this->skelAnime, 9.0f) != 0) {
        this->collider.base.acFlags |= 1;
    } else {
        if (func_800A56C8(&this->skelAnime, 8.0f) != 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_UP);
        }
    }
    if (this->skelAnime.animCurrentFrame < 9.0f) {
        phi_f0 = 9.0f;
    } else {
        if (this->skelAnime.animCurrentFrame > 12.0f) {
            phi_f2 = 12.0f;
        } else {
            phi_f2 = this->skelAnime.animCurrentFrame;
        }
        phi_f0 = phi_f2;
    }
    this->collider.dim.height = (((phi_f0 - 9.0f) * 9.0f) + 5.0f);
    if ((sp2C == 0) && (this->actor.xzDistanceFromLink < 120.0f)) {
        func_80A575C0(this);
    } else {
        if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
            if (this->actor.xzDistanceFromLink < 120.0f) {
                func_80A575C0(this);
            } else {
                if (!this->unk_194 && (320.0f < this->actor.xzDistanceFromLink)) {
                    func_80A574D4(this);
                } else {
                    func_80A57558(this);
                }
            }
        }
    }
    if (sp2C != 0 && 160.0f < this->actor.xzDistanceFromLink && fabsf(this->actor.yDistanceFromLink) < 120.0f &&
        ((this->unk_194 == 0) || (this->actor.xzDistanceFromLink < 480.0f))) {
        this->skelAnime.animPlaybackSpeed = 1.0f;
    }
}

void func_80A57B60(EnHintnuts* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_800A56C8(&this->skelAnime, 0.0f) != 0 && this->unk_194 != 0) {
        this->unk_194--;
    }
    if ((this->actor.xzDistanceFromLink < 120.0f) || (this->unk_194 == 0)) {
        func_80A575C0(this);
    }
}

void func_80A57BE4(EnHintnuts* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_800A56C8(&this->skelAnime, 0.0f) != 0 && this->unk_194 != 0) {
        this->unk_194--;
    }
    if ((this->unk_194 & 0x1000) == 0) {
        Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.rotTowardsLinkY, 2, 0xE38);
    }
    if (this->actor.xzDistanceFromLink < 120.0f || this->unk_194 == 0x1000) {
        func_80A575C0(this);
    } else if (this->unk_194 == 0) {
        func_80A5751C(this);
    }
}

void func_80A57CA8(EnHintnuts* this, GlobalContext* globalCtx) {
    Vec3f nutPos;

    Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.rotTowardsLinkY, 2, 0xE38);
    if (this->actor.xzDistanceFromLink < 120.0f) {
        func_80A575C0(this);
    } else if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        func_80A57558(this);
    } else if (func_800A56C8(&this->skelAnime, 6.0f) != 0) {
        nutPos.x = (Math_Sins(this->actor.shape.rot.y) * 23.0f) + this->actor.posRot.pos.x;
        nutPos.y = this->actor.posRot.pos.y + 12.0f;
        nutPos.z = (Math_Coss(this->actor.shape.rot.y) * 23.0f) + this->actor.posRot.pos.z;
        if (Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_NUTSBALL, nutPos.x, nutPos.y, nutPos.z,
                        this->actor.shape.rot.x, this->actor.shape.rot.y, this->actor.shape.rot.z, 1) != 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_THROW);
        }
    }
}

void func_80A57DE4(EnHintnuts* this, GlobalContext* globalCtx) {
    f32 phi_f0;

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        func_80A57454(this);
    } else {
        phi_f0 = this->skelAnime.animCurrentFrame < 1.0f
                     ? 1.0f
                     : this->skelAnime.animCurrentFrame > 3.0f ? 3.0f : this->skelAnime.animCurrentFrame;
        this->collider.dim.height = (((3.0f - phi_f0) * 12.0f) + 5.0f);
    }
    if (func_800A56C8(&this->skelAnime, 4.0f) != 0) {
        this->collider.base.acFlags &= ~1;
    }

    Math_SmoothScaleMaxF(&this->actor.posRot.pos.x, this->actor.initPosRot.pos.x, 0.5f, 3.0f);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.z, this->actor.initPosRot.pos.z, 0.5f, 3.0f);
}

void func_80A57EF8(EnHintnuts* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        this->unk_196 = this->actor.rotTowardsLinkY + 0x8000;
        func_80A576FC(this);
    }
    Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.rotTowardsLinkY, 2, 0xE38);
}

void func_80A57F5C(EnHintnuts* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        func_80A57850(this);
    }
}

void func_80A57F94(EnHintnuts* this, GlobalContext* globalCtx) {
    if (this->actor.type != ACTORTYPE_ENEMY) {
        if ((this->collider.base.maskA & 2) || (this->actor.unk_10C != 0)) {
            this->actor.flags |= 0x10000;
        } else {
            this->actor.flags &= ~0x10000;
        }
        if (this->actor.xzDistanceFromLink < 130.0f) {
            this->actor.textId = this->unk_198;
            func_8002F2F4(&this->actor, globalCtx);
        }
    }
}

void func_80A58028(EnHintnuts* this, GlobalContext* globalCtx) {
    s32 temp_ret;
    s16 diffRotInit;
    s16 diffRot;
    f32 phi_f0;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    temp_ret = func_800A56C8(&this->skelAnime, 0.0f);
    if (temp_ret != 0 && this->unk_194 != 0) {
        this->unk_194--;
    }
    if ((temp_ret != 0) || (func_800A56C8(&this->skelAnime, 6.0f) != 0)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_WALK);
    }

    Math_ApproxF(&this->actor.speedXZ, 7.5f, 1.0f);
    if (Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->unk_196, 1, 0xE38, 0xB6) == 0) {
        if (this->actor.bgCheckFlags & 0x20) {
            this->unk_196 = func_8002DAC0(&this->actor, &this->actor.initPosRot.pos);
        } else if (this->actor.bgCheckFlags & 8) {
            this->unk_196 = this->actor.wallPolyRot;
        } else if (this->unk_194 == 0) {
            diffRotInit = func_8002DAC0(&this->actor, &this->actor.initPosRot.pos);
            diffRot = diffRotInit - this->actor.rotTowardsLinkY;
            if (ABS(diffRot) >= 0x2001) {
                this->unk_196 = diffRotInit;
            } else {
                phi_f0 = (0.0f <= (f32)diffRot) ? 1.0f : -1.0f;
                this->unk_196 = (s16)((phi_f0 * -8192.0f) + (f32)this->actor.rotTowardsLinkY);
            }
        } else {
            this->unk_196 = (s16)(this->actor.rotTowardsLinkY + 0x8000);
        }
    }

    this->actor.shape.rot.y = this->actor.posRot.rot.y + 0x8000;
    if (func_8002F194(&this->actor, globalCtx) != 0) {
        func_80A57744(this);
    } else if (this->unk_194 == 0 && func_8002DBB0(&this->actor, &this->actor.initPosRot.pos) < 20.0f &&
               fabsf(this->actor.posRot.pos.y - this->actor.initPosRot.pos.y) < 2.0f) {
        this->actor.speedXZ = 0.0f;
        if (this->actor.type == ACTORTYPE_BG) {
            this->actor.flags &= ~0x00010009;
            this->actor.flags |= 0x5;
            Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_ENEMY);
        }
        func_80A575C0(this);
    } else {
        func_80A57F94(this, globalCtx);
    }
}

void func_80A582B8(EnHintnuts* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.rotTowardsLinkY, 0x3, 0x400, 0x100);
    if (func_8010BDBC(&globalCtx->msgCtx) == 5) {
        func_80A57790(this, globalCtx);
    }
}

void func_80A58320(EnHintnuts* this, GlobalContext* globalCtx) {
    s16 temp_a1;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_194 != 0) {
        this->unk_194--;
    }
    if ((func_800A56C8(&this->skelAnime, 0.0f) != 0) || (func_800A56C8(&this->skelAnime, 6.0f) != 0)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_WALK);
    }
    if (this->actor.bgCheckFlags & 8) {
        temp_a1 = this->actor.wallPolyRot;
    } else {
        temp_a1 = this->actor.rotTowardsLinkY - func_8005A9F4(globalCtx->cameraPtrs[globalCtx->activeCamera]) - 0x8000;
        if (ABS(temp_a1) >= 0x4001) {
            temp_a1 = func_8005A9F4(globalCtx->cameraPtrs[globalCtx->activeCamera]) + 0x8000;
        } else {
            temp_a1 = func_8005A9F4(globalCtx->cameraPtrs[globalCtx->activeCamera]) - (temp_a1 >> 1) + 0x8000;
        }
    }
    Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, temp_a1, 0x800);
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    if ((this->unk_194 == 0) || (this->actor.unk_E4.z < 0.0f)) {
        func_80106CCC(globalCtx);
        if (this->actor.params == 3) {
            Flags_SetClear(globalCtx, this->actor.room);
            D_80A58A34 = 3;
        }
        if (this->actor.attachedB != NULL) {
            Actor_ChangeType(globalCtx, &globalCtx->actorCtx, this->actor.attachedB, ACTORTYPE_PROP);
        }
        Actor_Kill(&this->actor);
    }
}

void func_80A584DC(EnHintnuts* this, GlobalContext* globalCtx) {
    this->actor.unk_114 = 1;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_800A56C8(&this->skelAnime, 0.0f) != 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_FAINT);
    }
    if (this->unk_194 == 0) {
        if (D_80A58A34 == 3) {
            if (this->actor.attachedB != NULL) {
                Actor_ChangeType(globalCtx, &globalCtx->actorCtx, this->actor.attachedB, ACTORTYPE_PROP);
            }
            this->unk_194 = 1;
        } else if (D_80A58A34 == -4) {
            this->unk_194 = 2;
        }
    } else if (Math_ApproxF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y - 35.0f, 7.0f) != 0) {
        if (this->unk_194 == 1) {
            Actor_Kill(&this->actor);
        } else {
            this->actor.flags |= 1;
            this->actor.flags &= -0x11;
            this->actor.colChkInfo.health = collisionCheckInfoInit.health;
            this->actor.unk_114 = 0;
            func_80A57454(this);
        }
    }
}

void func_80A58608(EnHintnuts* this, GlobalContext* globalCtx) {
    if (this->collider.base.acFlags & 2) {
        this->collider.base.acFlags &= ~2;
        func_80035650(&this->actor, &this->collider.body, 1);
        if (this->collider.base.ac->id != ACTOR_EN_NUTSBALL) {
            func_80A575C0(this);
        } else {
            func_80A573D0(this, globalCtx);
            func_80A5760C(this);
        }
    } else if (globalCtx->actorCtx.unk_02 != 0) {
        func_80A573D0(this, globalCtx);
        func_80A5760C(this);
    }
}

void EnHintnuts_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnHintnuts* this = THIS;
    s32 pad;

    if (this->actor.params != 0xa) {
        func_80A58608(this, globalCtx);
        this->actionFunc(this, globalCtx);
        if (this->actionFunc != func_80A584DC && this->actionFunc != func_80A57F5C) {
            Actor_MoveForward(&this->actor);
            func_8002E4B4(globalCtx, &this->actor, 20.0f, this->collider.dim.radius, this->collider.dim.height, 0x1D);
        }
        Collider_CylinderUpdate(&this->actor, &this->collider);
        if (this->collider.base.acFlags & 1) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider);
        }
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider);
        if (this->actionFunc == func_80A578FC) {
            Actor_SetHeight(&this->actor, this->skelAnime.animCurrentFrame);
        } else if (this->actionFunc == func_80A57DE4) {
            Actor_SetHeight(&this->actor, 20.0f - ((this->skelAnime.animCurrentFrame * 20.0f) /
                                                   (f32)SkelAnime_GetFrameCount(&D_060024CC)));
        } else {
            Actor_SetHeight(&this->actor, 20.0f);
        }
    }
}

s32 func_80A58838(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                  EnHintnuts* enHintnuts) {
    Vec3f vec;
    f32 animCurrentFrame;

    if (limbIndex == 5 && enHintnuts->actionFunc == func_80A57CA8) {
        animCurrentFrame = enHintnuts->skelAnime.animCurrentFrame;
        if (animCurrentFrame <= 6.0f) {
            vec.y = 1.0f - (animCurrentFrame * 0.0833f);
            vec.z = 1.0f + (animCurrentFrame * 0.1167f);
            vec.x = 1.0f + (animCurrentFrame * 0.1167f);
        } else if (animCurrentFrame <= 7.0f) {
            animCurrentFrame -= 6.0f;
            vec.y = 0.5f + animCurrentFrame;
            vec.z = 1.7f - (animCurrentFrame * 0.7f);
            vec.x = 1.7f - (animCurrentFrame * 0.7f);
        } else if (animCurrentFrame <= 10.0f) {
            vec.y = 1.5f - ((animCurrentFrame - 7.0f) * 0.1667f);
            vec.z = 1.0f;
            vec.x = 1.0f;
        } else {
            return 0;
        }
        Matrix_Scale(vec.x, vec.y, vec.z, 1);
    }
    return 0;
}

void EnHintnuts_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnHintnuts* this = THIS;
    if (this->actor.params == 0xA) {
        Gfx_DrawDListOpa(globalCtx, &D_060014E0);
    } else {
        SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, func_80A58838, NULL,
                       &this->actor);
    }
}
