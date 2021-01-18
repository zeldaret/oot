/*
 * File: z_en_yukabyun.c
 * Overlay: ovl_En_Yukabyun
 * Description: Flying floor tile
 */

#include "z_en_yukabyun.h"

#define FLAGS 0x00000010

#define THIS ((EnYukabyun*)thisx)

void EnYukabyun_Init(Actor* thisx, GlobalContext* globalCtx);
void EnYukabyun_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnYukabyun_Update(Actor* thisx, GlobalContext* globalCtx);
void EnYukabyun_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B43A94(EnYukabyun* this, GlobalContext* globalCtx);
void func_80B43AD4(EnYukabyun* this, GlobalContext* globalCtx);
void func_80B43B6C(EnYukabyun* this, GlobalContext* globalCtx);

const ActorInit En_Yukabyun_InitVars = {
    ACTOR_EN_YUKABYUN,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_YUKABYUN,
    sizeof(EnYukabyun),
    (ActorFunc)EnYukabyun_Init,
    (ActorFunc)EnYukabyun_Destroy,
    (ActorFunc)EnYukabyun_Update,
    (ActorFunc)EnYukabyun_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_NO_PUSH | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x00, 0x04 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_HARD,
        BUMP_ON,
        OCELEM_ON,
    },
    { 28, 8, 0, { 0, 0, 0 } },
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F(scale, 1, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 16, ICHAIN_STOP),
};

static UNK_PTR D_80B43F64[] = { 0x06000AF0, 0x06000000 };

extern Gfx D_06000A60[];
extern Gfx D_06000970[];

void EnYukabyun_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnYukabyun* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 0.4f);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    this->actor.params++;
    this->unk_152 = 0;
    this->unk_150 = (u8)(this->actor.params) * 0xA + 0x14;
    this->actionfunc = func_80B43A94;
}

void EnYukabyun_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnYukabyun* this = THIS;
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80B43A94(EnYukabyun* this, GlobalContext* globalCtx) {
    if (this->unk_150 != 0) {
        this->unk_150--;
    }
    if (this->unk_150 == 0) {
        this->actor.flags |= 0x1005;
        this->actionfunc = func_80B43AD4;
    }
}

void func_80B43AD4(EnYukabyun* this, GlobalContext* globalCtx) {
    this->unk_150 += 0xA0;
    this->actor.shape.rot.y += this->unk_150;
    if (this->unk_150 >= 0x2000) {
        this->actor.posRot.rot.y = this->actor.yawTowardsLink;
        this->actor.speedXZ = 10.0f;
        this->actionfunc = func_80B43B6C;
    }
    Math_StepToF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y + 30.0f, 1.0f);
    func_8002F974(&this->actor, NA_SE_EN_YUKABYUN_FLY - SFX_FLAG);
}

void func_80B43B6C(EnYukabyun* this, GlobalContext* globalCtx) {
    this->actor.shape.rot.y += this->unk_150;
    if (this->actor.xzDistToLink > 5000.0f) {
        Actor_Kill(&this->actor);
        return;
    }
    func_8002F974(&this->actor, NA_SE_EN_YUKABYUN_FLY - SFX_FLAG);
}

void EnYukabyun_Break(EnYukabyun* this, GlobalContext* globalCtx) {
    EffectSsHahen_SpawnBurst(globalCtx, &this->actor.posRot.pos, 8.0f, 0, 1300, 300, 15, OBJECT_YUKABYUN, 10,
                             D_06000A60);
    Actor_Kill(&this->actor);
}

void EnYukabyun_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnYukabyun* this = THIS;
    s32 pad;

    if (((this->collider.base.atFlags & AT_HIT) || (this->collider.base.acFlags & AC_HIT) ||
         ((this->collider.base.ocFlags1 & OC1_HIT) && !(this->collider.base.oc->id == ACTOR_EN_YUKABYUN))) ||
        ((this->actionfunc == func_80B43B6C) && (this->actor.bgCheckFlags & 8))) {
        this->collider.base.atFlags &= ~AT_HIT;
        this->collider.base.acFlags &= ~AC_HIT;
        this->collider.base.ocFlags1 &= ~OC1_HIT;
        this->actor.flags &= ~0x5;
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 30, NA_SE_EN_OCTAROCK_ROCK);
        this->actionfunc = EnYukabyun_Break;
    }

    this->actionfunc(this, globalCtx);
    Actor_MoveForward(&this->actor);

    if (!(this->actionfunc == func_80B43A94 || this->actionfunc == EnYukabyun_Break)) {
        func_8002E4B4(globalCtx, &this->actor, 5.0f, 20.0f, 8.0f, 5);
        Collider_UpdateCylinder(&this->actor, &this->collider);

        this->actor.flags |= 0x1000000;

        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
    Actor_SetHeight(&this->actor, 4.0f);
}

void EnYukabyun_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnYukabyun* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_yukabyun.c", 366);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80B43F64[this->unk_152]));
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_yukabyun.c", 373),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, D_06000970);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_yukabyun.c", 378);
}
