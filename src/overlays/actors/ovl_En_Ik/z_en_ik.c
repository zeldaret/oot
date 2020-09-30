/*
 * File: z_en_ik.c
 * Overlay: ovl_En_Ik
 * Description: Iron Knuckle
 */

#include "z_en_ik.h"

#include <vt.h>

#define FLAGS 0x00000010

#define THIS ((EnIk*)thisx)

typedef void (*EnIkDrawFunc)(struct EnIk*, GlobalContext*);

void EnIk_Init(Actor* thisx, GlobalContext* globalCtx);
void EnIk_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnIk_Update(Actor* thisx, GlobalContext* globalCtx);
void EnIk_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A74398(EnIk* this, GlobalContext* globalCtx);
void func_80A74714(EnIk* this);
void func_80A7489C(EnIk* this);
void func_80A7492C(EnIk* this, GlobalContext* globalCtx);
void func_80A75FA0(Actor* thisx, GlobalContext* globalCtx);
void func_80A76798(Actor* thisx, GlobalContext* globalCtx);
void func_80A76BF4();
void func_80A780D0(EnIk* this, GlobalContext* globalCtx);
void func_80A78160(EnIk* this, GlobalContext* globalCtx);

extern AnimationHeader D_0600C114;
extern AnimationHeader D_0600DD50;
extern SkeletonHeader D_0601E178;

extern ColliderCylinderInit D_80A78340;
extern ColliderTrisInit D_80A783E4;
extern ColliderQuadInit D_80A783F4;
extern DamageTable D_80A78444;
extern EnIkActionFunc D_80A78604[5]; // sActionFuncs
extern EnIkDrawFunc D_80A7861C[2];   // sDrawFuncs

/*
const ActorInit En_Ik_InitVars = {
    ACTOR_EN_IK,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_IK,
    sizeof(EnIk),
    (ActorFunc)EnIk_Init,
    (ActorFunc)EnIk_Destroy,
    (ActorFunc)EnIk_Update,
    (ActorFunc)EnIk_Draw,
};
*/

void EnIk_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnIk* this = THIS;

    if (Actor_FindNearby(globalCtx, &this->actor, ACTOR_EN_IK, ACTORTYPE_ENEMY, 8000.0f) == NULL) {
        func_800F5B58();
    }

    Collider_DestroyTris(globalCtx, &this->unk_3EC);
    Collider_DestroyCylinder(globalCtx, &this->unk_320);
    Collider_DestroyQuad(globalCtx, &this->unk_36C);
}

// EnIk_SetupAction
void func_80A74390(EnIk* this, EnIkActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

#ifdef NON_MATCHING
void func_80A74398(EnIk* this, GlobalContext* globalCtx) {
    EffectBlureInit1 blureInit;

    this->actor.update = func_80A75FA0;
    this->actor.draw = func_80A76798;
    this->actor.flags |= 0x400;
    Collider_InitCylinder(globalCtx, &this->unk_320);
    Collider_SetCylinder(globalCtx, &this->unk_320, &this->actor, &D_80A78340);
    Collider_InitTris(globalCtx, &this->unk_3EC);
    Collider_SetTris(globalCtx, &this->unk_3EC, &this->actor, &D_80A783E4, this->unk_40C);
    Collider_InitQuad(globalCtx, &this->unk_36C);
    Collider_SetQuad(globalCtx, &this->unk_36C, &this->actor, &D_80A783F4);
    this->actor.colChkInfo.damageTable = &D_80A78444;
    this->actor.params &= 0xFF;
    this->actor.colChkInfo.mass = 0xFE;
    this->unk_2FC = 0;
    this->actor.colChkInfo.health = 30;
    this->switchFlags = (this->actor.params >> 8) & 0xFF;
    this->actor.gravity = -1.0f;

    if (this->actor.params == 0) {
        this->actor.colChkInfo.health = 50;
        this->actor.naviEnemyId = 52;
    } else {
        Actor_SetScale(&this->actor, 0.012f);
        this->actor.naviEnemyId = 53;
        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_ENEMY);
    }

    blureInit.p1StartColor[0] = blureInit.p1StartColor[1] = blureInit.p2StartColor[0] = blureInit.p2StartColor[1] =
        blureInit.p2StartColor[2] = blureInit.p1EndColor[0] = blureInit.p1EndColor[1] = blureInit.p2EndColor[0] =
            blureInit.p2EndColor[1] = 255;

    blureInit.p2StartColor[3] = 64;
    blureInit.p1StartColor[3] = 200;
    blureInit.p1StartColor[2] = 150;
    blureInit.p1EndColor[3] = 0;
    blureInit.elemDuration = 8;
    blureInit.unkFlag = 0;
    blureInit.calcMode = 2;
    blureInit.p1EndColor[2] = 150;
    blureInit.p2EndColor[2] = 255;
    blureInit.p2EndColor[3] = 0;
    Effect_Add(globalCtx, this->blureIdx, EFFECT_BLURE1, 0, 0, &blureInit);
    func_80A74714(this);
    if (this->switchFlags != 0xFF) {
        if (Flags_GetSwitch(globalCtx, this->switchFlags)) {
            Actor_Kill(&this->actor);
        }
    } else if ((this->actor.params != 0) && Flags_GetClear(globalCtx, globalCtx->roomCtx.curRoom.num)) {
        Actor_Kill(&this->actor);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A74398.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A745E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A74674.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A74714.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A747C0.s")

void func_80A7489C(EnIk* this) {
    f32 frames = SkelAnime_GetFrameCount(&D_0600DD50.genericHeader);

    this->actor.flags |= 5;
    this->unk_2F8 = 4;
    this->actor.speedXZ = 0.0f;
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600DD50, 0.0f, 0.0f, frames, 0, 4.0f);
    func_80A74390(this, func_80A7492C);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7492C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A74AAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A74BA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A74E2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A74EBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7506C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7510C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A751C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A75260.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A753D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7545C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A754A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A75530.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A755F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7567C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A75790.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A758B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7598C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A75A38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A75C38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A75FA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A761B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7626C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A76330.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A76798.s")

// starts middle boss bgm
void func_80A76BF4() {
    // NA_BGM_MIDDLE_BOSS
    func_800F5ACC(0x38);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A76C14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A76DDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A76E2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77034.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7707C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7709C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A770C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77140.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77148.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77158.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A771E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77264.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A772A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A772EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7735C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77434.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77474.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7748C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A774BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A774F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77530.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7759C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77844.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A779DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77AEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77B0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77B3C.s")

void EnIk_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnIk* this = THIS;

    if (this->action < 0 || this->action > ARRAY_COUNT(D_80A78604) || D_80A78604[this->action] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
    } else {
        D_80A78604[this->action](this, globalCtx);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77BF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77C7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77ED0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77EDC.s")

void EnIk_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnIk* this = THIS;

    if (this->drawMode < 0 || this->drawMode > ARRAY_COUNT(D_80A7861C) || D_80A7861C[this->drawMode] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
    } else {
        D_80A7861C[this->drawMode](this, globalCtx);
    }
}

void func_80A780D0(EnIk* this, GlobalContext* globalCtx) {
    if (this->actor.params == 0) {
        if (!(gSaveContext.eventChkInf[3] & 0x800)) {
            this->actor.update = EnIk_Update;
            this->actor.draw = EnIk_Draw;
            Actor_SetScale(&this->actor, 0.01f);
        } else {
            func_80A78160(this, globalCtx);
            func_80A76BF4();
        }
    }
    osSyncPrintf("En_Ik_inConfrontion_Init : %d !!!!!!!!!!!!!!!!\n", this->actor.params);
}

void func_80A78160(EnIk* this, GlobalContext* globalCtx) {
    this->actor.update = func_80A75FA0;
    this->actor.draw = func_80A76798;
    this->actor.flags |= 5;
    gSaveContext.eventChkInf[3] |= 0x800;
    Actor_SetScale(this, 0.012f);
    func_80A7489C(this);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A781CC.s")

void EnIk_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnIk* this = THIS;
    s32 flag = this->actor.params & 0xFF00;

    if (((this->actor.params & 0xFF) == 0 && (gSaveContext.eventChkInf[3] & 0x1000)) ||
        (flag != 0 && Flags_GetSwitch(globalCtx, flag >> 8))) {
        Actor_Kill(&this->actor);
    } else {
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
        SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_0601E178, &D_0600C114, this->limbDrawTable,
                         this->transitionDrawTable, 30);
        func_80A74398(this, globalCtx);
        func_80A780D0(this, globalCtx);
    }
}
