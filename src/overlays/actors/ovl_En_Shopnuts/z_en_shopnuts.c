#include "z_en_shopnuts.h"

#define FLAGS 0x00000005

#define THIS ((EnShopnuts*)thisx)

void EnShopnuts_Init(Actor* thisx, GlobalContext* globalCtx);
void EnShopnuts_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnShopnuts_Update(Actor* thisx, GlobalContext* globalCtx);
void EnShopnuts_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80AFA880(EnShopnuts* this);
void func_80AFAA7C(EnShopnuts* this, GlobalContext* globalCtx);
void func_80AFACE0(EnShopnuts* this, GlobalContext* globalCtx);
void func_80AFAD64(EnShopnuts* this, GlobalContext* globalCtx);
void func_80AFAE28(EnShopnuts* this, GlobalContext* globalCtx);
void func_80AFAF64(EnShopnuts* this, GlobalContext* globalCtx);
void func_80AFB028(EnShopnuts* this, GlobalContext* globalCtx);

extern AnimationHeader D_060001EC;
extern AnimationHeader D_0600039C;
extern AnimationHeader D_06000764;
extern AnimationHeader D_06000BA0;
extern AnimationHeader D_0600139C;
extern Gfx D_06003B68[];
extern FlexSkeletonHeader D_060041A8;
extern AnimationHeader D_06004574;

extern InitChainEntry D_80AFB514[];
extern ColliderCylinderInit D_80AFB4E0;
extern CollisionCheckInfoInit D_80AFB50C;

const ActorInit En_Shopnuts_InitVars = {
    ACTOR_EN_SHOPNUTS,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_SHOPNUTS,
    sizeof(EnShopnuts),
    (ActorFunc)EnShopnuts_Init,
    (ActorFunc)EnShopnuts_Destroy,
    (ActorFunc)EnShopnuts_Update,
    (ActorFunc)EnShopnuts_Draw,
};

void EnShopnuts_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnShopnuts* this = THIS;

    Actor_ProcessInitChain(&this->actor, D_80AFB514);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 35.0f);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_060041A8, &D_06004574, this->limbDrawTable,
                       this->transitionDrawTable, 18);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80AFB4E0);
    func_80061ED4(&this->actor.colChkInfo, NULL, &D_80AFB50C);
    Collider_CylinderUpdate(&this->actor, &this->collider);

    if (((this->actor.params == 0x0002) && (gSaveContext.itemGetInf[0] & 0x800)) ||
        ((this->actor.params == 0x0009) && (gSaveContext.infTable[25] & 4)) ||
        ((this->actor.params == 0x000A) && (gSaveContext.infTable[25] & 8))) {
        Actor_Kill(&this->actor);
    } else {
        func_80AFA880(this);
    }
}

void EnShopnuts_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnShopnuts* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80AFA880(EnShopnuts* this) {
    SkelAnime_ChangeAnimPlaybackStop(&this->skelAnime, &D_0600139C, 0.0f);
    this->unk_194 = Rand_S16Offset(100, 50);
    this->collider.dim.height = 5;
    this->collider.base.acFlags &= ~0x1;
    this->actionFunc = func_80AFAA7C;
}

void func_80AFA8E8(EnShopnuts* this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000BA0);
    this->unk_194 = 2;
    this->actionFunc = func_80AFACE0;
}

void func_80AFA930(EnShopnuts* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_060001EC);
    this->actionFunc = func_80AFAE28;
}

void func_80AFA96C(EnShopnuts* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06004574, -3.0f);
    if (this->actionFunc == func_80AFAE28) {
        this->unk_194 = 0x1002;
    } else {
        this->unk_194 = 1;
    }
    this->actionFunc = func_80AFAD64;
}

void func_80AFA9D4(EnShopnuts* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_0600039C, -5.0f);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_DOWN);
    this->actionFunc = func_80AFAF64;
}

void func_80AFAA20(EnShopnuts* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06000764, -3.0f);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_DAMAGE);
    this->collider.base.acFlags &= ~0x1;
    this->actionFunc = func_80AFB028;
}

void func_80AFAA7C(EnShopnuts* this, GlobalContext* globalCtx) {
    s32 phi_v1;

    phi_v1 = 0;
    if (this->skelAnime.animPlaybackSpeed < 0.5f) {
        phi_v1 = 1;
    }
    if (phi_v1 != 0) {
        DECR(this->unk_194);
    }
    if (func_800A56C8(&this->skelAnime, 9.0f) != 0) {
        this->collider.base.acFlags |= 1;
    } else if (func_800A56C8(&this->skelAnime, 8.0f) != 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_UP);
    }

    this->collider.dim.height = ((CLAMP(this->skelAnime.animCurrentFrame, 9.0f, 13.0f) - 9.0f) * 9.0f) + 5.0f;
    if ((phi_v1 == 0) && (this->actor.xzDistFromLink < 120.0f)) {
        func_80AFA9D4(this);
    } else if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        if (this->actor.xzDistFromLink < 120.0f) {
            func_80AFA9D4(this);
        } else if ((this->unk_194 == 0) && (this->actor.xzDistFromLink > 320.0f)) {
            func_80AFA8E8(this);
        } else {
            func_80AFA96C(this);
        }
    }
    if ((phi_v1 != 0) && ((this->actor.xzDistFromLink > 160.0f) && (fabsf(this->actor.yDistFromLink) < 120.0f)) &&
        ((this->unk_194 == 0) || (this->actor.xzDistFromLink < 480.0f))) {
        this->skelAnime.animPlaybackSpeed = 1.0f;
    }
}

void func_80AFACE0(EnShopnuts* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_800A56C8(&this->skelAnime, 0.0f) != 0) {
        DECR(this->unk_194);
    }
    if ((this->actor.xzDistFromLink < 120.0f) || (this->unk_194 == 0)) {
        func_80AFA9D4(this);
    }
}

void func_80AFAD64(EnShopnuts* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_800A56C8(&this->skelAnime, 0.0f) != 0) {
        DECR(this->unk_194);
    }
    if (!(this->unk_194 & 0x1000)) {
        Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 2, 0xE38);
    }
    if ((this->actor.xzDistFromLink < 120.0f) || (this->unk_194 == 0x1000)) {
        func_80AFA9D4(this);
    } else if (this->unk_194 == 0) {
        func_80AFA930(this);
    }
}

void func_80AFAE28(EnShopnuts* this, GlobalContext* globalCtx) {
    Vec3f spawnPos;

    Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 2, 0xE38);
    if (this->actor.xzDistFromLink < 120.0f) {
        func_80AFA9D4(this);
    } else if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        func_80AFA96C(this);
    } else if (func_800A56C8(&this->skelAnime, 6.0f) != 0) {
        spawnPos.x = this->actor.posRot.pos.x + (Math_SinS(this->actor.shape.rot.y) * 23.0f);
        spawnPos.y = this->actor.posRot.pos.y + 12.0f;
        spawnPos.z = this->actor.posRot.pos.z + (Math_CosS(this->actor.shape.rot.y) * 23.0f);
        if (Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_NUTSBALL, spawnPos.x, spawnPos.y, spawnPos.z,
                        this->actor.shape.rot.x, this->actor.shape.rot.y, this->actor.shape.rot.z, 2) != NULL) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_THROW);
        }
    }
}

void func_80AFAF64(EnShopnuts* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        func_80AFA880(this);
    } else {
        this->collider.dim.height = ((4.0f - CLAMP_MAX(this->skelAnime.animCurrentFrame, 4.0f)) * 10.0f) + 5.0f;
    }
    if (func_800A56C8(&this->skelAnime, 4.0f) != 0) {
        this->collider.base.acFlags &= ~0x1;
    }
}

void func_80AFB028(EnShopnuts* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_DNS, this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                    this->actor.posRot.pos.z, this->actor.shape.rot.x, this->actor.shape.rot.y, this->actor.shape.rot.z,
                    this->actor.params);
        Actor_Kill(&this->actor);
    } else {
        Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 2, 0xE38);
    }
}

void func_80AFB0C4(EnShopnuts* this, GlobalContext* globalCtx) {
    if (this->collider.base.acFlags & 0x2) {
        this->collider.base.acFlags &= ~0x2;
        func_80035650(&this->actor, &this->collider.body, 1);
        func_80AFAA20(this);
    } else if (globalCtx->actorCtx.unk_02 != 0) {
        func_80AFAA20(this);
    }
}

void EnShopnuts_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnShopnuts* this = THIS;

    func_80AFB0C4(this, globalCtx);
    this->actionFunc(this, globalCtx);
    func_8002E4B4(globalCtx, &this->actor, 20.0f, this->collider.dim.radius, this->collider.dim.height, 4);
    if (this->collider.base.acFlags & 1) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    if (this->actionFunc == func_80AFAA7C) {
        Actor_SetHeight(&this->actor, this->skelAnime.animCurrentFrame);
    } else if (this->actionFunc == func_80AFAF64) {
        Actor_SetHeight(&this->actor,
                        20.0f - ((this->skelAnime.animCurrentFrame * 20.0f) / SkelAnime_GetFrameCount(&D_0600039C)));
    } else {
        Actor_SetHeight(&this->actor, 20.0f);
    }
}

s32 func_80AFB25C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnShopnuts* this = THIS;
    if ((limbIndex == 9) && (this->actionFunc == func_80AFAE28)) {
        *dList = NULL;
    }
    return 0;
}

void func_80AFB290(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnShopnuts* this = THIS;

    f32 animCurrentFrame;
    f32 x;
    f32 y;
    f32 z;

    if ((limbIndex == 9) && (this->actionFunc == func_80AFAE28)) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_shopnuts.c", 682);
        animCurrentFrame = this->skelAnime.animCurrentFrame;
        if (animCurrentFrame <= 6.0f) {
            y = 1.0f - (animCurrentFrame * 0.0833f);
            x = z = (animCurrentFrame * 0.1167f) + 1.0f;
        } else if (animCurrentFrame <= 7.0f) {
            animCurrentFrame -= 6.0f;
            y = 0.5f + animCurrentFrame;
            x = z = 1.7f - (animCurrentFrame * 0.7f);
        } else if (animCurrentFrame <= 10.0f) {
            y = 1.5f - ((animCurrentFrame - 7.0f) * 0.1667f);
            x = z = 1.0f;
        } else {
            x = y = z = 1.0f;
        }

        Matrix_Scale(x, y, z, MTXMODE_APPLY);
        if (1) {}
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_shopnuts.c", 714),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_OPA_DISP++, D_06003B68);
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_shopnuts.c", 717);
    }
}

void EnShopnuts_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnShopnuts* this = THIS;

    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                          func_80AFB25C, func_80AFB290, this);
}
