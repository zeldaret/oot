/*
 * File: z_en_ge3.c
 * Overlay: ovl_En_Ge3
 * Description: Gerudo giving you membership card
 */

#include "z_en_ge3.h"

#define FLAGS 0x00000019

#define THIS ((EnGe3*)thisx)

void EnGe3_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGe3_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGe3_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGe3_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A34D68(Actor* thisx, GlobalContext* globalCtx);
void func_80A34B90(EnGe3* this, GlobalContext* globalCtx);
void func_80A34A80(EnGe3* this, GlobalContext* globalCtx);

extern SkeletonHeader D_0600A458;
extern AnimationHeader D_0600B07C;

const ActorInit En_Ge3_InitVars = {
    ACTOR_EN_GE3,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_GELDB,
    sizeof(EnGe3),
    (ActorFunc)EnGe3_Init,
    (ActorFunc)EnGe3_Destroy,
    (ActorFunc)EnGe3_Update,
    (ActorFunc)EnGe3_Draw,
};

static ColliderCylinderInit D_80A35190 = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000722, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 20, 50, 0, { 0, 0, 0 } },
};

void func_80A34620(EnGe3* this, s32 arg1) {
    static EnGe3ActionFunc D_80A351BC[] = { func_80A34A80 };
    static AnimationHeader* D_80A351C0[] = { 0x0600B07C };
    static u8 D_80A351C4[] = { 0x00 };

    this->actionFunc = D_80A351BC[arg1];
    SkelAnime_ChangeAnim(&this->skelAnime, D_80A351C0[arg1], 1.0f, 0.0f,
                         SkelAnime_GetFrameCount(&D_80A351C0[arg1]->genericHeader), D_80A351C4[arg1], -8.0f);
    this->unk_30C &= ~2;
}

void EnGe3_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnGe3* this = THIS;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 36.0f);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_0600A458, NULL, this->limbDrawTable, this->transitionDrawTable,
                     24);
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_0600B07C);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80A35190);
    this->actor.colChkInfo.mass = 0xFF;
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.posRot.rot.z = 0;
    this->actor.shape.rot.z = 0;
    func_80A34620(this, 0);
    this->actionFunc = func_80A34B90;
    this->unk_30C = 0;
    this->actor.unk_1F = 6;
    this->actor.minVelocityY = -4.0f;
    this->actor.gravity = -1.0f;
}

void EnGe3_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnGe3* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80A347F4(EnGe3* this, GlobalContext* globalCtx) {
    s32 tmp = (s16)(this->actor.yawTowardsLink - this->actor.shape.rot.y);
    s32 pad;

    if (ABS(tmp) < 0x4001) {
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 6, 0xFA0, 0x64);
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
        func_80038290(globalCtx, &this->actor, &this->unk_300, &this->unk_306, this->actor.posRot2.pos);
    } else {
        if (tmp < 0) {
            Math_SmoothScaleMaxMinS(&this->unk_300.y, -0x2000, 6, 0x1838, 0x100);
        } else {
            Math_SmoothScaleMaxMinS(&this->unk_300.y, 0x2000, 6, 0x1838, 0x100);
        }

        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 0xC, 0x3E8, 0x64);
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
    }
}

void func_80A3490C(EnGe3* this, GlobalContext* globalCtx) {
    s32 tmp = (s16)(this->actor.yawTowardsLink - this->actor.shape.rot.y);
    s32 pad;

    if ((ABS(tmp) < 0x2301) && (this->actor.xzDistFromLink < 100.0f)) {
        func_80038290(globalCtx, &this->actor, &this->unk_300, &this->unk_306, this->actor.posRot2.pos);
    } else {
        Math_SmoothScaleMaxMinS(&this->unk_300.x, 0, 6, 0x1838, 0x64);
        Math_SmoothScaleMaxMinS(&this->unk_300.y, 0, 6, 0x1838, 0x64);
        Math_SmoothScaleMaxMinS(&this->unk_306.x, 0, 6, 0x1838, 0x64);
        Math_SmoothScaleMaxMinS(&this->unk_306.y, 0, 6, 0x1838, 0x64);
    }
}

void func_80A34A20(EnGe3* this, GlobalContext* globalCtx) {
    if (func_8002F334(&this->actor, globalCtx)) {
        this->actionFunc = func_80A34A80;
        this->actor.update = func_80A34D68;
        this->actor.flags &= ~0x10000;
    }

    func_80A347F4(this, globalCtx);
}

void func_80A34A80(EnGe3* this, GlobalContext* globalCtx) {
    func_80A3490C(this, globalCtx);
}

void func_80A34AA0(EnGe3* this, GlobalContext* globalCtx) {
    if (func_8002F410(&this->actor, globalCtx)) {
        this->actor.attachedA = NULL;
        this->actionFunc = func_80A34A20;
    } else {
        func_8002F434(&this->actor, globalCtx, GI_GERUDO_CARD, 10000.0f, 50.0f);
    }
}

void func_80A34B00(EnGe3* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
        func_80106CCC(globalCtx);
        this->actor.flags &= ~0x10000;
        this->actionFunc = func_80A34AA0;
        func_8002F434(&this->actor, globalCtx, GI_GERUDO_CARD, 10000.0f, 50.0f);
    }
}

void func_80A34B90(EnGe3* this, GlobalContext* globalCtx) {
    if (func_8002F194(&this->actor, globalCtx)) {
        this->actionFunc = func_80A34B00;
    } else {
        if (!(this->unk_30C & 4)) {
            func_8002DF54(globalCtx, &this->actor, 7);
            this->unk_30C |= 4;
        }

        this->actor.textId = 0x6004;
        this->actor.flags |= 0x10000;
        func_8002F1C4(&this->actor, globalCtx, 300.0f, 300.0f, 0);
    }

    func_80A3490C(this, globalCtx);
}

void func_80A34C40(EnGe3* this, GlobalContext* globalCtx) {
    ColliderCylinder* collider = &this->collider;
    Collider* colliderBase = &this->collider.base;

    Collider_CylinderUpdate(&this->actor, collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, colliderBase);
    func_8002E4B4(globalCtx, &this->actor, 40.0f, 25.0f, 40.0f, 5);
    if (!(this->unk_30C & 2) && SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        this->unk_30C |= 2;
    }
}

void func_80A34CE4(EnGe3* this, GlobalContext* globalCtx) {
    Actor_MoveForward(&this->actor);
    if (DECR(this->unk_2FE) == 0) {
        this->unk_2FE = Math_Rand_S16Offset(0x3C, 0x3C);
    }

    this->unk_2FC = this->unk_2FE;
    if (this->unk_2FC >= 3) {
        this->unk_2FC = 0;
    }
}

void func_80A34D68(Actor* thisx, GlobalContext* globalCtx) {
    EnGe3* this = THIS;

    func_80A34C40(this, globalCtx);
    this->actionFunc(this, globalCtx);
    if (func_8002F194(&this->actor, globalCtx)) {
        this->actionFunc = func_80A34A20;
        this->actor.update = EnGe3_Update;
    } else {
        this->actor.textId = 0x6005;
        if (this->actor.xzDistFromLink < 100.0f) {
            func_8002F2CC(&this->actor, globalCtx, 100.0f);
        }
    }

    func_80A34CE4(this, globalCtx);
}

void EnGe3_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnGe3* this = THIS;

    func_80A34C40(this, globalCtx);
    this->actionFunc(this, globalCtx);
    func_80A34CE4(this, globalCtx);
}

s32 EnGe3_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnGe3* this = THIS;

    switch (limbIndex) {
        case 5:
        case 11:
        case 16:
            *dList = NULL;
            return 0;

        case 6:
            rot->x += this->unk_300.y;
        default: {
            GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
            Gfx* dispRefs[4];

            Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_ge3.c", 547);
            switch (limbIndex) {
                case 3:
                    break;

                case 6:
                    gDPPipeSync(gfxCtx->polyOpa.p++);
                    gDPSetEnvColor(gfxCtx->polyOpa.p++, 80, 60, 10, 255);
                    break;

                case 11:
                case 16:
                    gDPPipeSync(gfxCtx->polyOpa.p++);
                    gDPSetEnvColor(gfxCtx->polyOpa.p++, 140, 170, 230, 255);
                    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 255, 255, 255, 255);
                    break;

                default:
                    gDPPipeSync(gfxCtx->polyOpa.p++);
                    gDPSetEnvColor(gfxCtx->polyOpa.p++, 140, 0, 0, 255);
                    break;
            }

            Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_ge3.c", 566);
        } break;
    }

    return 0;
}

void EnGe3_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    EnGe3* this = THIS;
    Vec3f sp18 = { 600.0f, 700.0f, 0.0f };

    if (limbIndex == 6) {
        Matrix_MultVec3f(&sp18, &this->actor.posRot2.pos);
    }
}

void EnGe3_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static UNK_TYPE D_80A351D4[] = { 0x06005FE8, 0x060065A8, 0x06006D28 };

    EnGe3* this = THIS;
    s32 pad;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_ge3.c", 614);
    func_800943C8(globalCtx->state.gfxCtx);
    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_80A351D4[this->unk_2FC]));
    func_8002EBCC(&this->actor, globalCtx, 0);
    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                     EnGe3_OverrideLimbDraw, EnGe3_PostLimbDraw, &this->actor);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_ge3.c", 631);
}
