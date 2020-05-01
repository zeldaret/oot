/*
 * File: z_en_cow.c
 * Overlay: ovl_En_Cow
 * Description: Cow
 */

#include "z_en_cow.h"

#define FLAGS 0x00000009

void EnCow_Init(EnCow* this, GlobalContext* globalCtx);
void EnCow_Destroy(EnCow* this, GlobalContext* globalCtx);
void EnCow_Update(EnCow* this, GlobalContext* globalCtx);
void EnCow_Draw(EnCow* this, GlobalContext* globalCtx);

void func_809DF494(EnCow* this, GlobalContext* globalCtx);
void func_809DF6BC(EnCow* this, GlobalContext* globalCtx);
void func_809DF778(EnCow* this, GlobalContext* globalCtx);
void func_809DF7D8(EnCow* this, GlobalContext* globalCtx);
void func_809DF870(EnCow* this, GlobalContext* globalCtx);
void func_809DF8FC(EnCow* this, GlobalContext* globalCtx);
void func_809DF96C(EnCow* this, GlobalContext* globalCtx);
void func_809DFA84(EnCow* this, GlobalContext* globalCtx);
void func_809DFE98(EnCow* this, GlobalContext* globalCtx);
void func_809E0070(EnCow* this, GlobalContext* globalCtx);

const ActorInit En_Cow_InitVars = {
    ACTOR_EN_COW,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_COW,
    sizeof(EnCow),
    (ActorFunc)EnCow_Init,
    (ActorFunc)EnCow_Destroy,
    (ActorFunc)EnCow_Update,
    (ActorFunc)EnCow_Draw,
};

static ColliderCylinderInit cylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x11, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 30, 40, 0, { 0, 0, 0 } },
};

Vec3f D_809E010C = {
    0.0f,
    -1300.0f,
    1100.0f,
};

extern AnimationHeader D_060001CC;
extern SkeletonHeader D_06004010;
extern AnimationHeader D_06004348;
extern SkeletonHeader D_06004C30;
extern AnimationHeader D_06004E98;

void func_809DEE00(Vec3f* vec, s16 rotY) {
    f32 xCalc;
    f32 rotCalcTemp;

    rotCalcTemp = Math_Coss(rotY);
    xCalc = (Math_Sins(rotY) * vec->z) + (rotCalcTemp * vec->x);
    rotCalcTemp = Math_Sins(rotY);
    vec->z = (Math_Coss(rotY) * vec->z) + (-rotCalcTemp * vec->x);
    vec->x = xCalc;
}

void func_809DEE9C(EnCow* this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cow/func_809DEE9C.s")

void func_809DEF94(EnCow* this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cow/func_809DEF94.s")
/*void func_809DEF94(EnCow *this) {
    Vec3f vec;
    vec.x = 0.0f;
    vec.y = 57.0f;
    vec.z = -36.0f;

    func_809DEE00(&vec, this->actor.shape.rot.y);
    this->actor.posRot.pos.x += vec.x;
    this->actor.posRot.pos.y += vec.y;
    this->actor.posRot.pos.z += vec.z;
}*/

void EnCow_Init(EnCow* this, GlobalContext* globalCtx) {
    s32 pad[2];

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 72.0f);
    switch (this->actor.params) {
        case 0:
            SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06004010, NULL, this->limbDrawTable,
                             this->transitionDrawTable, 6);
            SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_060001CC);
            Collider_InitCylinder(globalCtx, &this->colliders[0]);
            Collider_SetCylinder(globalCtx, &this->colliders[0], &this->actor, &cylinderInit);
            Collider_InitCylinder(globalCtx, &this->colliders[1]);
            Collider_SetCylinder(globalCtx, &this->colliders[1], &this->actor, &cylinderInit);
            func_809DEE9C(this);
            this->actionFunc = (ActorFunc)func_809DF96C;
            if (globalCtx->sceneNum == SCENE_LINK_HOME) {
                if (gSaveContext.linkAge != 0) {
                    Actor_Kill(&this->actor);
                    return;
                }
                if (!(gSaveContext.eventChkInf[1] & 0x4000)) {
                    Actor_Kill(&this->actor);
                    return;
                }
            }
            Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_COW, this->actor.posRot.pos.x,
                                this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, this->actor.shape.rot.y, 0, 1);
            this->unk_278 = Math_Rand_ZeroFloat(1000.0f) + 40.0f;
            this->unk_27A = 0;
            this->actor.unk_1F = 6;
            DREG(53) = 0;
            break;
        case 1:
            SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06004C30, NULL, this->limbDrawTable,
                             this->transitionDrawTable, 6);
            SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06004348);
            this->actor.update = (ActorFunc)func_809DFE98;
            this->actor.draw = (ActorFunc)func_809E0070;
            this->actionFunc = (ActorFunc)func_809DFA84;
            func_809DEF94(this);
            this->actor.flags &= ~0x1;
            this->unk_278 = ((u32)(Math_Rand_ZeroFloat(1000.0f)) & 0xFFFF) + 40.0f;
            break;
    }
    this->actor.colChkInfo.mass = 0xFF;
    Actor_SetScale(&this->actor, 0.01f);
    this->unk_276 = 0;
}

void EnCow_Destroy(EnCow* this, GlobalContext* globalCtx) {
    if (this->actor.params == 0) {
        Collider_DestroyCylinder(globalCtx, &this->colliders[0]);
        Collider_DestroyCylinder(globalCtx, &this->colliders[1]);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cow/func_809DF494.s")

void func_809DF6BC(EnCow* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
        this->actor.flags &= ~0x10000;
        func_80106CCC(globalCtx);
        this->actionFunc = (ActorFunc)func_809DF96C;
    }
}

void func_809DF730(EnCow* this, GlobalContext* globalCtx) {
    if (func_8002F334(&this->actor, globalCtx)) {
        this->actor.flags &= ~0x10000;
        this->actionFunc = (ActorFunc)func_809DF96C;
    }
}

void func_809DF778(EnCow* this, GlobalContext* globalCtx) {
    if (func_8002F410(&this->actor, globalCtx)) {
        this->actor.attachedA = NULL;
        this->actionFunc = (ActorFunc)func_809DF730;
    } else {
        func_8002F434(&this->actor, globalCtx, 0x50, 10000.0f, 100.0f);
    }
}

void func_809DF7D8(EnCow* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
        this->actor.flags &= ~0x10000;
        func_80106CCC(globalCtx);
        this->actionFunc = (ActorFunc)func_809DF778;
        func_8002F434(&this->actor, globalCtx, 0x50, 10000.0f, 100.0f);
    }
}

void func_809DF870(EnCow* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
        if (Inventory_HasEmptyBottle()) {
            func_8010B720(globalCtx, 0x2007);
            this->actionFunc = (ActorFunc)func_809DF7D8;
        } else {
            func_8010B720(globalCtx, 0x2013);
            this->actionFunc = (ActorFunc)func_809DF6BC;
        }
    }
}

void func_809DF8FC(EnCow* this, GlobalContext* globalCtx) {
    if (func_8002F194(&this->actor, globalCtx)) {
        this->actionFunc = (ActorFunc)func_809DF870;
    } else {
        this->actor.flags |= 0x10000;
        func_8002F2CC(&this->actor, globalCtx, 170.0f);
        this->actor.textId = (u16)0x2006U;
    }
    func_809DF494(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cow/func_809DF96C.s")

void func_809DFA84(EnCow* this, GlobalContext* globalCtx) {
    if (this->unk_278 > 0) {
        this->unk_278--;
    } else {
        this->unk_278 = Math_Rand_ZeroFloat(200.0f) + 40.0f;
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06004348, 1.0f, this->skelAnime.animCurrentFrame,
                             SkelAnime_GetFrameCount(&D_06004348.genericHeader), 2, 1.0f);
    }

    if ((this->actor.xzDistanceFromLink < 150.0f) &&
        (ABS((s16)(this->actor.rotTowardsLinkY - this->actor.shape.rot.y)) >= 0x61A9) && (!(this->unk_276 & 2))) {
        this->unk_276 |= 2;
        if (this->skelAnime.animCurrentSeg == &D_06004348) {
            this->unk_278 = 0;
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cow/EnCow_Update.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cow/func_809DFE98.s")
void func_809DFE98(EnCow *this, GlobalContext *globalCtx) {
    SkelAnime* skelAnime = &this->skelAnime;
    AnimationHeader* temp_a0 = &D_06004348;
    if (this->skelAnime.animCurrentSeg){} // necessary to match

    if (SkelAnime_FrameUpdateMatrix(skelAnime) != 0) {
        if (this->skelAnime.animCurrentSeg == temp_a0) {
            SkelAnime_ChangeAnim(skelAnime, &D_06004E98, 1.0f, 0.0f, (f32) SkelAnime_GetFrameCount(&D_06004E98.genericHeader), 2, 1.0f);
        } else {
            SkelAnime_ChangeAnim(skelAnime, temp_a0, 1.0f, 0.0f, (f32) SkelAnime_GetFrameCount(&temp_a0->genericHeader), 0, 1.0f);
        }
    }
    this->actionFunc(this, globalCtx);
}

s32 EnCow_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* this) {
    EnCow* thisx = (EnCow*)this;
    if (limbIndex == 2) {
        rot->y += thisx->someRot.y;
        rot->x += thisx->someRot.x;
    }
    if (limbIndex == 5) {
        *dList = NULL;
    }
    return 0;
}

void EnCow_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* this) {
    if (limbIndex == 2) {
        Matrix_MultVec3f(&D_809E010C, &this->posRot2.pos);
    }
}

void EnCow_Draw(EnCow* this, GlobalContext* globalCtx) {
    func_800943C8(globalCtx->state.gfxCtx);
    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                     EnCow_OverrideLimbDraw, EnCow_PostLimbDraw, &this->actor);
}

void func_809E0070(EnCow* this, GlobalContext* globalCtx) {
    func_800943C8(globalCtx->state.gfxCtx);
    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount, NULL,
                     NULL, &this->actor);
}
