#include "z_en_ge2.h"
#include <vt.h>

#define FLAGS 0x00000019

#define THIS ((EnGe2*)thisx)

void EnGe2_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGe2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGe2_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGe2_Draw(Actor* thisx, GlobalContext* globalCtx);

s32 func_80A330A0(void);

void func_80A33D10(Actor* thisx, GlobalContext* globalCtx);
void func_80A33DE0(Actor* thisx, GlobalContext* globalCtx);
void func_80A3402C(Actor* thisx, GlobalContext* globalCtx);

void func_80A33AFC(EnGe2* this, GlobalContext* globalCtx);
void func_80A33600(EnGe2* this, GlobalContext* globalCtx);
void func_80A3354C(EnGe2* this, GlobalContext* globalCtx);
void func_80A33444(EnGe2* this, GlobalContext* globalCtx);
void func_80A3334C(EnGe2* this, GlobalContext* globalCtx);
void func_80A332D4(EnGe2* this, GlobalContext* globalCtx);
void func_80A331A0(EnGe2* this, GlobalContext* globalCtx);
void func_80A330CC(EnGe2* this, GlobalContext* globalCtx);
void func_80A336C4(EnGe2* this, GlobalContext* globalCtx);
void func_80A339EC(EnGe2* this, GlobalContext* globalCtx);

extern SkeletonHeader D_06008968;
extern AnimationHeader D_06009ED4;

const ActorInit En_Ge2_InitVars = {
    ACTOR_EN_GE2,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_GLA,
    sizeof(EnGe2),
    (ActorFunc)EnGe2_Init,
    (ActorFunc)EnGe2_Destroy,
    (ActorFunc)EnGe2_Update,
    (ActorFunc)EnGe2_Draw,
};

static ColliderCylinderInit D_80A34310 = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x000007A2, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 20, 60, 0, { 0, 0, 0 } },
};

EnGe2ActionFunc D_80A3433C[] = { func_80A33600, func_80A3354C, func_80A33444, func_80A3334C, func_80A332D4,
                                 func_80A331A0, func_80A330CC, func_80A336C4, func_80A339EC };

u32 D_80A34360[] = { 0x06009ED4, 0x060098AC, 0x060098AC, 0x060011F4, 0x060098AC,
                     0x06008D60, 0x060098AC, 0x060098AC, 0x060098AC };

u8 D_80A34384[] = { 0x00, 0x02, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x02 };

Vec3f D_80A34390 = { 0.0f, -0.05f, 0.0f };

Vec3f D_80A3439C = { 0.0f, -0.025f, 0.0f };

Color_RGB8 D_80A343A8 = { 0xFF, 0xFF, 0xFF };
Color_RGB8 D_80A343AC = { 0xFF, 0x96, 0x00 };

Vec3f D_80A343B0 = { 600.0f, 700.0f, 0.0f };

u32 D_80A343BC[] = { 0x06004F78, 0x06005578, 0x06005BF8, 0x00000000, 0x00000000 };

void func_80A32BD0(EnGe2* this, s32 arg1) {
    this->actionFunc = D_80A3433C[arg1];
    SkelAnime_ChangeAnim(&this->skelAnime, (AnimationHeader*)D_80A34360[arg1], 1.0f, 0.0f,
                         SkelAnime_GetFrameCount(&((AnimationHeader*)D_80A34360[arg1])->genericHeader),
                         D_80A34384[arg1], -8.0f);
    this->unk_2F4 &= ~2;
}

void EnGe2_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnGe2* this = THIS;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 36.0f);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06008968, NULL, &this->limbDrawTbl, &this->unk_260, 0x16);
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06009ED4);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80A34310);
    this->actor.colChkInfo.mass = 0xFF;
    Actor_SetScale(&this->actor, 0.01f);
    if (globalCtx->sceneNum == SCENE_SPOT09) {
        this->actor.uncullZoneForward = 1000.0f;
    } else {
        this->actor.uncullZoneForward = 1200.0f;
    }

    this->unk_2FC = 40.0f * (this->actor.posRot.rot.z + 1);
    this->actor.posRot.rot.z = 0;
    this->actor.shape.rot.z = 0;

    switch (this->actor.params & 0xFF) {
        case 0:
            func_80A32BD0(this, 0);
            if (func_80A330A0()) {
                this->actor.update = func_80A33D10;
                this->actor.unk_1F = 6;
            }
            break;
        case 1:
            func_80A32BD0(this, 7);
            if (func_80A330A0()) {
                this->actor.update = func_80A33D10;
                this->actor.unk_1F = 6;
            }
            break;
        case 2:
            func_80A32BD0(this, 8);
            this->actor.update = func_80A33DE0;
            this->actionFunc = func_80A33AFC;
            this->actor.unk_1F = 6;
            break;
        default:
            __assert("0", "../z_en_ge2.c", 418);
            break;
    }

    this->unk_2F4 = 0;
    this->unk_304 = 0;
    this->unk_302 = 0;
    this->unk_306 = 0;

    this->actor.minVelocityY = -4.0f;
    this->actor.gravity = -1.0f;

    this->unk_2F6 = this->actor.posRot.rot.y;
    this->unk_300 = ((this->actor.params & 0xFF00) >> 8) * 10;
}

void EnGe2_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnGe2* this = THIS;
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

s32 func_80A32ECC(GlobalContext* globalCtx, EnGe2* this) {
    f32 phi_f0;

    if (gSaveContext.nightFlag != 0) {
        phi_f0 = 0.75f;
    } else {
        phi_f0 = 1.5f;
    }
    if ((250.0f * phi_f0) < this->actor.xzDistFromLink) {
        return 0;
    }
    if (this->actor.xzDistFromLink < 50.0f) {
        return 2;
    }
    if (func_8002DDE4(globalCtx)) {
        return 1;
    }
    return 0;
}

s32 func_80A32F74(GlobalContext* globalCtx, EnGe2* this, Vec3f* arg2, s16 arg3, f32 arg4) {
    Player* player = PLAYER;
    Vec3f a;
    CollisionPoly* b;
    f32 phi_f0;
    f32 phi_f2;

    if (gSaveContext.nightFlag != 0) {
        phi_f0 = 0.75f;
    } else {
        phi_f0 = 1.5f;
    }
    if ((250.0f * phi_f0) < this->actor.xzDistFromLink) {
        return 0;
    }
    if (0.0f <= this->actor.yDistFromLink) {
        phi_f2 = this->actor.yDistFromLink;
    } else {
        phi_f2 = -this->actor.yDistFromLink;
    }
    if (arg4 < phi_f2) {
        return 0;
    }

    if (ABS((s16)(this->actor.yawTowardsLink - arg3)) >= 0x2001) {
        return 0;
    }
    if (func_8003E0B8(&globalCtx->colCtx, arg2, &player->unk_95C, &a, &b, 0) != 0) {
        return 0;
    }
    return 1;
}

s32 func_80A330A0(void) {
    if (((gSaveContext.eventChkInf[9] & 0xFFFF) & 0xF) == 0xF) {
        return 1;
    }
    return 0;
}

void func_80A330CC(EnGe2* this, GlobalContext* globalCtx) {

    if (this->unk_305 > 0) {
        this->unk_305--;
        return;
    }
    func_8006D074(globalCtx);
    if ((0xFF == gSaveContext.items[gItemSlots[0xA]]) || (0xFF == gSaveContext.items[gItemSlots[0xB]])) {
        globalCtx->nextEntranceIndex = 0x1A5;
    } else if (gSaveContext.eventChkInf[12] & 0x80) {
        globalCtx->nextEntranceIndex = 0x5F8;
    } else {
        globalCtx->nextEntranceIndex = 0x3B4;
    }
    globalCtx->fadeTransition = 0x26U;
    globalCtx->sceneLoadFlag = 0x14;
}

void func_80A331A0(EnGe2* this, GlobalContext* globalCtx) {

    Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 2, 0x400, 0x100);
    this->actor.shape.rot.y = this->actor.posRot.rot.y;
    if (this->actor.xzDistFromLink < 50.0f) {
        func_80A32BD0(this, 6);
        this->actor.speedXZ = 0.0f;
    }
    if (this->unk_305 > 0) {
        this->unk_305--;
        return;
    }
    func_8006D074(globalCtx);
    if ((0xFF == gSaveContext.items[gItemSlots[0xA]]) || (0xFF == gSaveContext.items[gItemSlots[0xB]])) {
        globalCtx->nextEntranceIndex = 0x1A5;
    } else if ((gSaveContext.eventChkInf[12] & 0x80) != 0) {
        globalCtx->nextEntranceIndex = 0x5F8;
    } else {
        globalCtx->nextEntranceIndex = 0x3B4;
    }
    globalCtx->fadeTransition = 0x26U;
    globalCtx->sceneLoadFlag = 0x14;
}

void func_80A332D4(EnGe2* this, GlobalContext* globalCtx) {
    Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 2, 0x400, 0x100);
    this->actor.shape.rot.y = this->actor.posRot.rot.y;
    if (this->actor.posRot.rot.y == this->actor.yawTowardsLink) {
        func_80A32BD0(this, 5);
        this->unk_305 = 0x32;
        this->actor.speedXZ = 4.0f;
    }
}

void func_80A3334C(EnGe2* this, GlobalContext* globalCtx) {
    s32 temp_a0;
    Vec3f sp38;

    this->actor.flags &= -2;
    if (this->unk_2F4 & 2) {
        temp_a0 = globalCtx->state.frames * 10240;
        sp38.x = (Math_Coss(temp_a0) * 5.0f) + this->actor.posRot2.pos.x;
        sp38.y = this->actor.posRot2.pos.y + 10.0f;
        sp38.z = (Math_Sins(temp_a0) * 5.0f) + this->actor.posRot2.pos.z;
        func_80028BB0(globalCtx, &sp38, &D_80A34390, &D_80A3439C, &D_80A343A8, &D_80A343AC, 0x3E8, 0x10);
    }
}

void func_80A33444(EnGe2* this, GlobalContext* globalCtx) {
    s32 temp_v0;

    this->actor.speedXZ = 0.0f;
    if (this->unk_2F4 & 0x10) {
        this->unk_2F4 &= ~0x10;
    } else {
        temp_v0 = func_80A32ECC(globalCtx, this);
        if (temp_v0 != 0) {
            this->unk_305 = 0x64;
            this->unk_2F8 = this->actor.yawTowardsLink;
            if (this->unk_306 < temp_v0) {
                this->unk_306 = temp_v0;
            }
        } else if (this->actor.posRot.rot.y == this->unk_2F8) {
            this->unk_306 = 0;
            func_80A32BD0(this, 1);
            return;
        }
    }

    switch (this->unk_306) {
        case 1:
            Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->unk_2F8, 2, 0x200, 0x100);
            break;
        case 2:
            Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->unk_2F8, 2, 0x600, 0x180);
            break;
    }

    this->actor.shape.rot.y = this->actor.posRot.rot.y;
}

void func_80A3354C(EnGe2* this, GlobalContext* globalCtx) {
    s32 temp_v0;

    this->actor.speedXZ = 0.0f;
    temp_v0 = func_80A32ECC(globalCtx, this);
    if (temp_v0 != 0) {
        func_80A32BD0(this, 2);
        this->unk_305 = 0x64;
        this->unk_306 = temp_v0;
        this->unk_2F8 = this->actor.yawTowardsLink;
    } else if (this->unk_2F4 & 2) {
        Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->unk_2F6, 2, 0x400, 0x200);
        this->actor.shape.rot.y = this->actor.posRot.rot.y;
    }
    if (this->actor.shape.rot.y == this->unk_2F6) {
        func_80A32BD0(this, 0);
    }
}

void func_80A33600(EnGe2* this, GlobalContext* globalCtx) {
    u8 temp_v0;

    temp_v0 = func_80A32ECC(globalCtx, this);
    if (temp_v0 != 0) {
        this->actor.speedXZ = 0.0f;
        func_80A32BD0(this, 2);
        this->unk_305 = 0x64;
        this->unk_306 = temp_v0;
        this->unk_2F8 = this->actor.yawTowardsLink;
        return;
    }

    if (this->unk_302 >= this->unk_300) {
        this->unk_302 = 0;
        this->unk_2F6 += 0x8000;
        func_80A32BD0(this, 1);
        this->actor.speedXZ = 0.0f;
        return;
    }

    this->unk_302++;
    this->actor.speedXZ = 2.0f;
}

void func_80A336C4(EnGe2* this, GlobalContext* globalCtx) {
    Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->unk_2F6, 2, 0x400, 0x200);
}

void func_80A33704(EnGe2* this, GlobalContext* globalCtx) {
    s32 tmp = (s16)(this->actor.yawTowardsLink - this->actor.shape.rot.y);
    s32 pad;

    if (ABS(tmp) < 0x4001) {
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 6, 0xFA0, 0x64);
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
        func_80038290(globalCtx, &this->actor, &this->unk_2E8, &this->unk_2EE, this->actor.posRot2.pos);
    } else {
        if (tmp < 0) {
            Math_SmoothScaleMaxMinS(&this->unk_2E8.y, -0x2000, 6, 0x1838, 0x100);
        } else {
            Math_SmoothScaleMaxMinS(&this->unk_2E8.y, 0x2000, 6, 0x1838, 0x100);
        }
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 0xC, 0x3E8, 0x64);
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
    }
}

void func_80A3381C(EnGe2* this, GlobalContext* globalCtx) {
    s32 tmp = (s16)(this->actor.yawTowardsLink - this->actor.shape.rot.y);
    s32 pad;

    if ((ABS(tmp) < 0x4301) && (this->actor.xzDistFromLink < 200.0f)) {
        func_80038290(globalCtx, &this->actor, &this->unk_2E8, &this->unk_2EE, this->actor.posRot2.pos);
    } else {
        Math_SmoothScaleMaxMinS(&this->unk_2E8.x, 0, 6, 0x1838, 0x64);
        Math_SmoothScaleMaxMinS(&this->unk_2E8.y, 0, 6, 0x1838, 0x64);
        Math_SmoothScaleMaxMinS(&this->unk_2EE.x, 0, 6, 0x1838, 0x64);
        Math_SmoothScaleMaxMinS(&this->unk_2EE.y, 0, 6, 0x1838, 0x64);
    }
}

void func_80A33930(EnGe2* this, GlobalContext* globalCtx) {
    if (func_8002F334(&this->actor, globalCtx) != 0) {
        switch (this->actor.params & 0xFF) {
            case 0:
                func_80A32BD0(this, 1);
                break;
            case 1:
                func_80A32BD0(this, 7);
                break;
            case 2:
                this->actionFunc = func_80A339EC;
                break;
        }
        this->actor.update = func_80A33D10;
        this->actor.flags &= ~0x10000;
    }
    func_80A33704(this, globalCtx);
}

void func_80A339EC(EnGe2* this, GlobalContext* globalCtx) {
    func_80A3381C(this, globalCtx);
}

void func_80A33A0C(EnGe2* this, GlobalContext* globalCtx) {
    if (func_8002F410(&this->actor, globalCtx)) {
        this->actor.attachedA = NULL;
        this->actionFunc = func_80A33930;
        return;
    }
    func_8002F434(&this->actor, globalCtx, 0x3A, 10000.0f, 50.0f);
}

void func_80A33A6C(EnGe2* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
        func_80106CCC(globalCtx);
        this->actor.flags &= ~0x10000;
        this->actionFunc = func_80A33A0C;
        func_8002F434(&this->actor, globalCtx, 0x3A, 10000.0f, 50.0f);
    }
}

void func_80A33AFC(EnGe2* this, GlobalContext* globalCtx) {
    if (func_8002F194(&this->actor, globalCtx)) {
        this->actionFunc = func_80A33A6C;
    } else {
        this->actor.textId = 0x6004;
        this->actor.flags |= 0x10000;
        func_8002F1C4(&this->actor, globalCtx, 300.0f, 300.0f, 0);
    }
    func_80A3381C(this, globalCtx);
}

void func_80A33B7C(EnGe2* this, GlobalContext* globalCtx) {
    this->unk_2F4 |= 8;
    this->actor.speedXZ = 0.0f;
    func_80A32BD0(this, 4);
    func_8002DF54(globalCtx, &this->actor, 0x5F);
    func_80078884(0x482C);
    func_8010B680(globalCtx, 0x6000, &this->actor);
}

void func_80A33BE8(EnGe2* this, GlobalContext* globalCtx) {
    ColliderCylinder* collider = &this->collider;
    Collider* colliderBase = &this->collider.base;

    Collider_CylinderUpdate(&this->actor, collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, colliderBase);
    func_8002E4B4(globalCtx, &this->actor, 40.0f, 25.0f, 40.0f, 5);
    if (!(this->unk_2F4 & 2) && SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        this->unk_2F4 |= 2;
    }
}

void func_80A33C8C(EnGe2* this, GlobalContext* globalCtx) {
    Actor_MoveForward(&this->actor);
    if (DECR(this->unk_2E6) == 0) {
        this->unk_2E6 = Math_Rand_S16Offset(0x3C, 0x3C);
    }
    this->unk_2E4 = this->unk_2E6;
    if (this->unk_2E4 >= 3) {
        this->unk_2E4 = 0;
    }
}

void func_80A33D10(Actor* thisx, GlobalContext* globalCtx) {
    EnGe2* this = THIS;
    func_80A33BE8(this, globalCtx);
    this->actionFunc(this, globalCtx);
    if (func_8002F194(&this->actor, globalCtx)) {
        if ((this->actor.params & 0xFF) == 0) {
            this->actor.speedXZ = 0.0f;
            func_80A32BD0(this, 8);
        }
        this->actionFunc = func_80A33930;
        this->actor.update = func_80A33DE0;
    } else {
        this->actor.textId = 0x6005U;
        if (this->actor.xzDistFromLink < 100.0f) {
            func_8002F2CC(&this->actor, globalCtx, 100.0f);
        }
    }
    func_80A33C8C(this, globalCtx);
}

void func_80A33DE0(Actor* thisx, GlobalContext* globalCtx) {
    EnGe2* this = THIS;
    this->unk_2F4 |= 0x10;
    func_80A33BE8(this, globalCtx);
    this->actionFunc(this, globalCtx);
    func_80A33C8C(this, globalCtx);
}

void EnGe2_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnGe2* this = THIS;

    func_80A33BE8(this, globalCtx);
    if ((this->unk_2F4 & 4) || (this->unk_2F4 & 8)) {
        this->actionFunc(this, globalCtx);
    } else {
        if (this->collider.base.acFlags & 2) {
            if ((this->collider.body.acHitItem != NULL) && (this->collider.body.acHitItem->toucher.flags & 0x80)) {
                func_8003426C(&this->actor, 0, 0x78, 0, 0x190);
                this->actor.update = func_80A3402C;
                return;
            }
            func_80A32BD0(this, 3);
            this->unk_305 = 0x64;
            this->unk_2F4 |= 4;
            this->actor.speedXZ = 0.0f;
            Audio_PlayActorSound2(&this->actor, NA_SE_VO_SK_CRASH);
        } else {
            this->actionFunc(this, globalCtx);
            if (func_80A32F74(globalCtx, this, &this->actor.posRot2.pos, this->actor.shape.rot.y, this->unk_2FC)) {
                osSyncPrintf(VT_FGCOL(GREEN) "発見!!!!!!!!!!!!\n" VT_RST);
                func_80A33B7C(this, globalCtx);
            }
            if (((this->actor.params & 0xFF) == 1) && (this->actor.xzDistFromLink < 100.0f)) {
                osSyncPrintf(VT_FGCOL(GREEN) "発見!!!!!!!!!!!!\n" VT_RST);
                func_80A33B7C(this, globalCtx);
            }
        }
    }
    if (!(this->unk_2F4 & 4) && (((this->actor.params & 0xFF) == 0) || ((this->actor.params & 0xFF) == 1))) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
    func_80A33C8C(this, globalCtx);
    if (func_80A330A0() && !(this->unk_2F4 & 4)) {
        this->actor.update = func_80A33D10;
        this->actor.unk_1F = 6;
    }
}

void func_80A3402C(Actor* thisx, GlobalContext* globalCtx) {
    EnGe2* this = THIS;
    Collider* colliderBase = &this->collider.base;

    if (globalCtx) {};
    Collider_CylinderUpdate(thisx, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    if (globalCtx) {};
    func_8002E4B4(globalCtx, &this->actor, 40.0f, 25.0f, 40.0f, 5);
    if ((this->collider.base.acFlags & 2) &&
        ((this->collider.body.acHitItem == NULL) || !(this->collider.body.acHitItem->toucher.flags & 0x80))) {
        thisx->dmgEffectTimer = 0;
        func_80A32BD0(this, 3);
        this->unk_305 = 0x64;
        this->unk_2F4 |= 4;
        thisx->speedXZ = 0.0f;
        Audio_PlayActorSound2(&this->actor, NA_SE_VO_SK_CRASH);
    }

    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, colliderBase);

    if (func_80A330A0()) {
        thisx->update = func_80A33D10;
        thisx->unk_1F = 6;
        thisx->dmgEffectTimer = 0;
    } else if (thisx->dmgEffectTimer == 0) {
        thisx->update = EnGe2_Update;
    }
}

s32 func_80A3415C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnGe2* this = THIS;
    if (limbIndex == 3) {
        rot->x += this->unk_2E8.y;
        rot->z += this->unk_2E8.x;
    }
    return 0;
}

void func_80A341A0(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    EnGe2* this = THIS;
    if (limbIndex == 6) {
        Matrix_MultVec3f(&D_80A343B0, &this->actor.posRot2.pos);
    }
}

void EnGe2_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnGe2* this = THIS;
    SkelAnime* skelAnime;

    {
        GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
        Gfx* dispRefs[4];

        Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_ge2.c", 1274);
        func_800943C8(globalCtx->state.gfxCtx);

        gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_80A343BC[this->unk_2E4]));

        func_8002EBCC(thisx, globalCtx, 0);
        skelAnime = &this->skelAnime;
        SkelAnime_DrawSV(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount, func_80A3415C,
                         func_80A341A0, &this->actor);
        Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_ge2.c", 1291);
    }
}
