/*
 * File: z_en_js.c
 * Overlay: ovl_En_Js
 * Description: Magic Carpet Salesman
 */

#include "z_en_js.h"

#define FLAGS 0x00000009

#define THIS ((EnJs*)thisx)

void EnJs_Init(Actor* thisx, GlobalContext* globalCtx);
void EnJs_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnJs_Update(Actor* thisx, GlobalContext* globalCtx);
void EnJs_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A89304(EnJs* this, GlobalContext* globalCtx);

const ActorInit En_Js_InitVars = {
    ACTOR_EN_JS,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_JS,
    sizeof(EnJs),
    (ActorFunc)EnJs_Init,
    (ActorFunc)EnJs_Destroy,
    (ActorFunc)EnJs_Update,
    (ActorFunc)EnJs_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x11, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 30, 40, 0, { 0, 0, 0 } },
};

extern SkeletonHeader D_06005EA0;
extern AnimationHeader D_0600045C;
extern AnimationHeader D_0600018C;

void En_Js_SetupAction(EnJs* this, EnJsActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnJs_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnJs* this = THIS;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, NULL, 36.0f);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06005EA0, &D_0600045C, this->limbDrawTable,
                     this->transitionDrawTable, 13);
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_0600045C);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    this->actor.colChkInfo.mass = 0xFF;
    Actor_SetScale(&this->actor, 0.01f);
    En_Js_SetupAction(this, func_80A89304);
    this->unk_284 = 0;
    this->actor.gravity = -1.0f;
    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_JSJUTAN, this->actor.posRot.pos.x,
                       this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
}

void EnJs_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnJs* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

u8 func_80A88F64(EnJs* this, GlobalContext* globalCtx, u16 textId) {
    s16 yawDiff;

    if (func_8002F194(&this->actor, globalCtx)) {
        return 1;
    } else {
        this->actor.textId = textId;
        yawDiff = this->actor.yawTowardsLink - this->actor.shape.rot.y;

        if (ABS(yawDiff) <= 0x1800 && this->actor.xzDistFromLink < 100.0f) {
            this->unk_284 |= 1;
            func_8002F2CC(&this->actor, globalCtx, 100.0f);
        }
        return 0;
    }
}

void func_80A89008(EnJs* this) {
    En_Js_SetupAction(this, func_80A89304);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600045C, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_0600045C.genericHeader),
                         2, -4.0f);
}

void func_80A89078(EnJs* this, GlobalContext* globalCtx) {
    if (func_8002F334(&this->actor, globalCtx)) {
        func_80A89008(this);
        this->actor.flags &= ~0x10000;
    }
}

void func_80A890C0(EnJs* this, GlobalContext* globalCtx) {
    if (func_8002F194(&this->actor, globalCtx)) {
        En_Js_SetupAction(this, func_80A89078);
    } else {
        func_8002F2CC(&this->actor, globalCtx, 1000.0f);
    }
}

void func_80A8910C(EnJs* this, GlobalContext* globalCtx) {
    if (func_8002F334(&this->actor, globalCtx)) {
        this->actor.textId = 0x6078;
        En_Js_SetupAction(this, func_80A890C0);
        this->actor.flags |= 0x10000;
    }
}

void func_80A89160(EnJs* this, GlobalContext* globalCtx) {
    if (Actor_HasParent(&this->actor, globalCtx)) {
        this->actor.parent = NULL;
        En_Js_SetupAction(this, func_80A8910C);
    } else {
        func_8002F434(&this->actor, globalCtx, GI_BOMBCHUS_10, 10000.0f, 50.0f);
    }
}

void func_80A891C4(EnJs* this, GlobalContext* globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 4 && func_80106BC8(globalCtx)) {
        switch (globalCtx->msgCtx.choiceIndex) {
            case 0: // yes
                if (gSaveContext.rupees < 200) {
                    func_8010B720(globalCtx, 0x6075);
                    func_80A89008(this);
                } else {
                    Rupees_ChangeBy(-200);
                    En_Js_SetupAction(this, func_80A89160);
                }
                break;
            case 1: // no
                func_8010B720(globalCtx, 0x6074);
                func_80A89008(this);
        }
    }
}

void func_80A89294(EnJs* this) {
    En_Js_SetupAction(this, func_80A891C4);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600018C, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_0600018C.genericHeader),
                         2, -4.0f);
}

void func_80A89304(EnJs* this, GlobalContext* globalCtx) {
    if (func_80A88F64(this, globalCtx, 0x6077)) {
        func_80A89294(this);
    }
}

void EnJs_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnJs* this = THIS;
    s32 pad;
    s32 pad2;

    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);

    if (this->actor.bgCheckFlags & 1) {
        if (func_80041F34(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorPolySource) == 1) {
            Math_SmoothScaleMaxF(&this->actor.shape.unk_08, sREG(80) + -2000.0f, 1.0f, (sREG(81) / 10.0f) + 50.0f);
        }
    } else {
        Math_SmoothDownscaleMaxF(&this->actor.shape.unk_08, 1.0f, (sREG(81) / 10.0f) + 50.0f);
    }
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        this->skelAnime.animCurrentFrame = 0.0f;
    }
    this->actionFunc(this, globalCtx);
    if (this->unk_284 & 1) {
        func_80038290(globalCtx, &this->actor, &this->unk_278, &this->unk_27E, this->actor.posRot2.pos);
    } else {
        Math_SmoothScaleMaxMinS(&this->unk_278.x, 0, 6, 0x1838, 0x64);
        Math_SmoothScaleMaxMinS(&this->unk_278.y, 0, 6, 0x1838, 0x64);
        Math_SmoothScaleMaxMinS(&this->unk_27E.x, 0, 6, 0x1838, 0x64);
        Math_SmoothScaleMaxMinS(&this->unk_27E.y, 0, 6, 0x1838, 0x64);
    }
    this->unk_284 &= ~0x1;

    if (DECR(this->unk_288) == 0) {
        this->unk_288 = Math_Rand_S16Offset(0x3C, 0x3C);
    }

    this->unk_286 = this->unk_288;

    if (this->unk_286 >= 3) {
        this->unk_286 = 0;
    }
}

s32 EnJs_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* pos, Vec3s* rot, Actor* thisx) {
    EnJs* this = THIS;

    if (limbIndex == 12) {
        rot->y -= this->unk_278.y;
    }
    return 0;
}

void EnJs_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    static Vec3f D_80A896DC = { 0.0f, 0.0f, 0.0f };

    if (limbIndex == 12) {
        Matrix_MultVec3f(&D_80A896DC, &thisx->posRot2.pos);
    }
}
void EnJs_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnJs* this = THIS;

    func_800943C8(globalCtx->state.gfxCtx);
    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                     EnJs_OverrideLimbDraw, EnJs_PostLimbDraw, &this->actor);
}
