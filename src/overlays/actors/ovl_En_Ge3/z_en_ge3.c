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

void func_80A34A80(EnGe3* this, GlobalContext* globalCtx);
void func_80A34B90(EnGe3* this, GlobalContext* globalCtx);
void func_80A34D68(Actor* thisx, GlobalContext* globalCtx);


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


// D_80A35190;
static ColliderCylinderInit sCylinderInit =
{
    { COLTYPE_UNK10, 0x00, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000722, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 20, 50, 0, { 0, 0, 0 } },
};
static EnGe3ActionFunc D_80A351BC[] = { func_80A34A80 };

static AnimationHeader* D_80A351C0[] = { 0x0600B07C };

static u8 D_80A351C4[] = { 0 };

static Vec3f D_80A351C8 = { 600.0f, 700.0f, 0.0f };

static Gfx* D_80A351D4[] = { 0x06005FE8, 0x060065A8, 0x06006D28 };

// extern ColliderCylinderInit D_80A35190;
// extern AnimationHeader* D_80A351C0[];
// extern EnGe3ActionFunc D_80A351BC[];
// extern u8 D_80A351C4[];
// extern Vec3f D_80A351C8;
// extern Gfx* D_80A351D4[];


extern FlexSkeletonHeader D_0600A458;
extern AnimationHeader D_0600B07C;

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/func_80A34620.s")
void func_80A34620(EnGe3* this, s32 i) {
    this->actionFunc = D_80A351BC[i];
    SkelAnime_ChangeAnim(&this->skelAnime, D_80A351C0[i], 1.0f, 0.0f, (f32)SkelAnime_GetFrameCount(D_80A351C0[i]),
                         D_80A351C4[i], -8.0f);
    this->unk_30C &= ~2;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/EnGe3_Init.s")
void EnGe3_Init(Actor* thisx, GlobalContext* globalCtx2) {
    EnGe3* this = THIS;
    GlobalContext* globalCtx = globalCtx2;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 36.0f);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_0600A458, NULL, this->limbDrawTable, this->transitionDrawTable,
                       0x18);
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_0600B07C);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    this->actor.colChkInfo.mass = 0xFF;
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.posRot.rot.z = 0;
    this->actor.shape.rot.z = 0;
    func_80A34620(this, 0);
    this->actionFunc = func_80A34B90;
    this->unk_30C = (u16)0;
    this->actor.unk_1F = 6;
    this->actor.minVelocityY = -4.0f;
    this->actor.gravity = -1.0f;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/EnGe3_Destroy.s")
void EnGe3_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnGe3* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/func_80A347F4.s")
void func_80A347F4(EnGe3* this, GlobalContext* globalCtx) {
    s32 pad;
    s16 angle_diff = this->actor.yawTowardsLink - this->actor.shape.rot.y;

    if (ABS(angle_diff) < 0x4001) {
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 6, 4000, 100);
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
        func_80038290(globalCtx, &this->actor, &this->unk_300, &this->unk_306, this->actor.posRot2.pos);
    } else {
        if (angle_diff < 0) {
            Math_SmoothScaleMaxMinS(&this->unk_300.y, -0x2000, 6, 6200, 0x100);
        } else {
            Math_SmoothScaleMaxMinS(&this->unk_300.y, 0x2000, 6, 6200, 0x100);
        }
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 12, 1000, 100);
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/func_80A3490C.s")
void func_80A3490C(EnGe3* this, GlobalContext* globalCtx) {
    if ((ABS((s16)(this->actor.yawTowardsLink - this->actor.shape.rot.y)) < 0x2301) &&
        (this->actor.xzDistFromLink < 100.0f)) {
        func_80038290(globalCtx, &this->actor, &this->unk_300, &this->unk_306, this->actor.posRot2.pos);
    } else {
        Math_SmoothScaleMaxMinS(&this->unk_300.x, 0, 6, 6200, 100);
        Math_SmoothScaleMaxMinS(&this->unk_300.y, 0, 6, 6200, 100);
        Math_SmoothScaleMaxMinS(&this->unk_306.x, 0, 6, 6200, 100);
        Math_SmoothScaleMaxMinS(&this->unk_306.y, 0, 6, 6200, 100);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/func_80A34A20.s")
void func_80A34A20(EnGe3* this, GlobalContext* globalCtx) {
    if (func_8002F334(&this->actor, globalCtx)) {
        this->actionFunc = func_80A34A80;
        this->actor.update = func_80A34D68;
        this->actor.flags = this->actor.flags & ~0x10000;
    }
    func_80A347F4(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/func_80A34A80.s")
void func_80A34A80(EnGe3* this, GlobalContext* globalCtx) {
    func_80A3490C(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/func_80A34AA0.s")
void func_80A34AA0(EnGe3* this, GlobalContext* globalCtx) {
    if (Actor_HasParent(&this->actor, globalCtx)) {
        this->actor.parent = NULL;
        this->actionFunc = func_80A34A20;
    } else {
        func_8002F434(&this->actor, globalCtx, GI_GERUDO_CARD, 10000.0f, 50.0f);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/func_80A34B00.s")
void func_80A34B00(EnGe3* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
        func_80106CCC(globalCtx);
        this->actor.flags &= ~0x10000;
        this->actionFunc = func_80A34AA0;
        func_8002F434(&this->actor, globalCtx, GI_GERUDO_CARD, 10000.0f, 50.0f);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/func_80A34B90.s")
void func_80A34B90(EnGe3* this, GlobalContext* globalCtx) {
    if (func_8002F194(&this->actor, globalCtx)) {
        this->actionFunc = func_80A34B00;
    } else {
        if ((this->unk_30C & 4) == 0) {
            func_8002DF54(globalCtx, &this->actor, 7);
            this->unk_30C |= 4;
        }
        this->actor.textId = 0x6004;
        this->actor.flags |= 0x10000;
        func_8002F1C4(&this->actor, globalCtx, 300.0f, 300.0f, 0);
    }
    func_80A3490C(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/func_80A34C40.s")
void func_80A34C40(EnGe3* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 pad2;

    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    func_8002E4B4(globalCtx, &this->actor, 40.0f, 25.0f, 40.0f, 5);
    if (((this->unk_30C & 2) == 0) && (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0)) {
        this->unk_30C |= 2;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/func_80A34CE4.s")
void func_80A34CE4(EnGe3* this, GlobalContext* globalCtx) {
    s32 phi_v0;

    Actor_MoveForward(&this->actor);
    if (this->unk_2FE == 0) {
        phi_v0 = 0;
    } else {
        this->unk_2FE--;
        phi_v0 = this->unk_2FE;
    }
    if (phi_v0 == 0) {
        this->unk_2FE = Math_Rand_S16Offset(60, 60);
    }
    this->unk_2FC = this->unk_2FE;
    if (this->unk_2FC >= 3) {
        this->unk_2FC = 0;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/func_80A34D68.s")
void func_80A34D68(Actor* thisx, GlobalContext* globalCtx) {
    EnGe3* this = THIS;

    func_80A34C40(this, globalCtx);
    this->actionFunc(this, globalCtx);
    if (func_8002F194(&this->actor, globalCtx) != 0) {
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

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/EnGe3_Update.s")
void EnGe3_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnGe3* this = THIS;

    func_80A34C40(this, globalCtx);
    this->actionFunc(this, globalCtx);
    func_80A34CE4(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/func_80A34E58.s")
s32 func_80A34E58(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnGe3* this = THIS;

    switch (limbIndex) {
        case 5:
        case 11:
        case 16:
            *dList = NULL;
            return 0;
        case 6:
            rot->x += this->unk_300.y;
        default:
            OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_ge3.c", 547);
            switch (limbIndex) {
                case 3:
                    break;
                case 6:
                    gDPPipeSync(POLY_OPA_DISP++);
                    gDPSetEnvColor(POLY_OPA_DISP++, 80, 60, 10, 255);
                    break;
                case 11:
                case 16:
                    gDPPipeSync(POLY_OPA_DISP++);
                    gDPSetEnvColor(POLY_OPA_DISP++, 140, 170, 230, 255);
                    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);
                    break;
                default:
                    gDPPipeSync(POLY_OPA_DISP++);
                    gDPSetEnvColor(POLY_OPA_DISP++, 140, 0, 0, 255);
                    break;
            }
            CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_ge3.c", 566);
            return 0;
    }

}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/func_80A35004.s")
void func_80A35004(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnGe3* this = THIS;
    Vec3f sp18;

    sp18 = D_80A351C8;
    if (limbIndex == 6) {
        Matrix_MultVec3f(&sp18, &this->actor.posRot2.pos);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/EnGe3_Draw.s")
void EnGe3_Draw(Actor* thisx, GlobalContext* globalCtx2) {
    EnGe3* this = THIS;
    GlobalContext* globalCtx = globalCtx2;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_ge3.c", 614);
    func_800943C8(globalCtx->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80A351D4[this->unk_2FC]));
    func_8002EBCC(&this->actor, globalCtx, 0);
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                          (s32)this->skelAnime.dListCount, func_80A34E58, func_80A35004, this);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_ge3.c", 631);
}
