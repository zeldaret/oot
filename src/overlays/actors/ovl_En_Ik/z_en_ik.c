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

void func_80A77AEC(EnIk* this, GlobalContext* globalCtx);
void func_80A77B0C(EnIk* this, GlobalContext* globalCtx);
void func_80A77B3C(EnIk* this, GlobalContext* globalCtx);
void func_80A7748C(EnIk* this, GlobalContext* globalCtx);
void func_80A774BC(EnIk* this, GlobalContext* globalCtx);
void func_80A774F8(EnIk* this, GlobalContext* globalCtx);
void func_80A77ED0(EnIk* this, GlobalContext* globalCtx);
void func_80A77EDC(EnIk* this, GlobalContext* globalCtx);
void func_80A77844(EnIk* this, GlobalContext* globalCtx);

void func_80A74398(Actor* thisx, GlobalContext* globalCtx);
void func_80A74714(EnIk* this);
void func_80A7489C(EnIk* this);
void func_80A7492C(EnIk* this, GlobalContext* globalCtx);
void func_80A75FA0(Actor* thisx, GlobalContext* globalCtx);
void func_80A76798(Actor* thisx, GlobalContext* globalCtx);
void func_80A780D0(EnIk* this, GlobalContext* globalCtx);
void func_80A78160(EnIk* this, GlobalContext* globalCtx);

s32 EnIk_OverrideLimbDraw1(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* actor);
void EnIk_PostLimbDraw1(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* actor);

s32 EnIk_OverrideLimbDraw2(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* actor);
void EnIk_PostLimbDraw2(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* actor);

s32 EnIk_OverrideLimbDraw3(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* actor);
void EnIk_PostLimbDraw3(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* actor);

extern UNK_TYPE D_02003F80;
extern AnimationHeader D_0600C114;
extern AnimationHeader D_0600DD50;
extern SkeletonHeader D_0601E178;
extern AnimationHeader D_060203D8;
extern SkeletonHeader D_060205C0;

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x05, 0x01 },
    { 25, 80, 0, { 0, 0, 0 } },
};

static ColliderTrisItemInit sTrisItemsInit[] = {
    {
        { 0x02, { 0x00000000, 0x00, 0x00 }, { 0xFFC3FFFF, 0x00, 0x00 }, 0x00, 0x09, 0x00 },
        { { { -10.0f, 14.0f, 2.0f }, { -10.0f, -6.0f, 2.0f }, { 9.0f, 14.0f, 2.0f } } },
    },
    {
        { 0x02, { 0x00000000, 0x00, 0x00 }, { 0xFFC3FFFF, 0x00, 0x00 }, 0x00, 0x09, 0x00 },
        { { { -10.0f, -6.0f, 2.0f }, { 9.0f, -6.0f, 2.0f }, { 9.0f, 14.0f, 2.0f } } },
    },
};

static ColliderTrisInit sTrisInit = {
    { COLTYPE_METAL_SHIELD, 0x00, 0x0D, 0x00, 0x00, COLSHAPE_TRIS },
    ARRAY_COUNT(sTrisItemsInit),
    sTrisItemsInit,
};

static ColliderQuadInit sQuadInit = {
    { COLTYPE_UNK10, 0x11, 0x00, 0x00, 0x00, COLSHAPE_QUAD },
    { 0x00, { 0x20000000, 0x00, 0x40 }, { 0x00000000, 0x00, 0x00 }, 0x81, 0x00, 0x00 },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

static DamageTable sDamageTable = { {
    0xD0, 0xF2, 0xE1, 0xF2, 0xD0, 0xE2, 0xF2, 0xD0, 0xF1, 0xF2, 0xF4, 0xE2, 0xE2, 0xE2, 0xE2, 0xE2,
    0xEF, 0x60, 0x60, 0x60, 0x00, 0x00, 0xF1, 0xF4, 0xF2, 0xF2, 0xF8, 0xF4, 0xFA, 0x00, 0xF4, 0x00,
} };

UNK_TYPE D_80A78464[] = { 0x00000000, 0x3F000000, 0x00000000, 0x43960000, 0x00000000, 0x00000000 };
UNK_TYPE D_80A7847C[] = { 0x44480000, 0xC3480000, 0xC5A28000 };
UNK_TYPE D_80A78488[] = { 0x00000000, 0x00000000, 0x00000000 };
UNK_TYPE D_80A78494[] = { 0xC3480000, 0xC5098000, 0xC3480000 };
UNK_TYPE D_80A784A0[] = { 0xC5BB8000, 0x44FA0000, 0xC53B8000 };
UNK_TYPE D_80A784AC[] = { 0xC53B8000, 0xC42F0000, 0xC59C4000, 0xC53B8000, 0xC42F0000,
                          0x44FA0000, 0x457A0000, 0xC42F0000, 0x44FA0000 };
UNK_TYPE D_80A784D0[] = { 0x457A0000, 0xC42F0000, 0x44FA0000, 0x457A0000, 0xC42F0000,
                          0xC59C4000, 0xC53B8000, 0xC42F0000, 0xC59C4000 };
UNK_TYPE D_80A784F4[] = { 0x00000000, 0x00000000, 0x00000000 };
UNK_TYPE D_80A78500[] = { 0x00000000, 0x3E99999A, 0x00000000 };
UNK_TYPE D_80A7850C[] = { 0xC8C8C8FF };
UNK_TYPE D_80A78510[] = { 0x96969600 };
UNK_TYPE D_80A78514[] = { 0x447A0000, 0xC47A0000, 0x447A0000, 0x00000000, 0xC47A0000, 0x00000000, 0xC47A0000,
                          0xC59C4000, 0xC57A0000, 0x447A0000, 0xC59C4000, 0xC53B8000, 0xC47A0000, 0x447A0000,
                          0xC5BB8000, 0xC47A0000, 0x453B8000, 0xC59C4000, 0xC4480000, 0x447A0000, 0xC53B8000,
                          0x00000000, 0xC57A0000, 0xC4FA0000, 0xC47A0000, 0xC4FA0000, 0xC5BB8000, 0x447A0000,
                          0xC53B8000, 0x00000000, 0x44FA0000, 0xC4FA0000, 0xC57A0000, 0xC47A0000, 0x00000000,
                          0xC5BB8000, 0x447A0000, 0xC4FA0000, 0xC4FA0000, 0x00000000, 0xC4FA0000, 0x45034000,
                          0x00000000, 0x00000000, 0x00000000, 0x447A0000, 0xC47A0000, 0xC5BB8000, 0x44FA0000,
                          0x00000000, 0xC53B8000, 0xC47A0000, 0xC47A0000, 0xC57A0000, 0x44610000, 0xC4480000,
                          0x4528C000 };
UNK_TYPE D_80A785F8[] = { 0x44340000, 0x44610000, 0x451C4000 };

static EnIkActionFunc sActionFuncs[] = {
    func_80A77AEC, func_80A77B0C, func_80A77B3C, func_80A7748C, func_80A774BC, func_80A774F8,
};

static EnIkDrawFunc sDrawFuncs[] = { func_80A77ED0, func_80A77EDC, func_80A77844 };

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

void EnIk_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnIk* this = THIS;

    if (Actor_FindNearby(globalCtx, &this->actor, ACTOR_EN_IK, ACTORTYPE_ENEMY, 8000.0f) == NULL) {
        func_800F5B58();
    }

    Collider_DestroyTris(globalCtx, &this->unk_3EC);
    Collider_DestroyCylinder(globalCtx, &this->unk_320);
    Collider_DestroyQuad(globalCtx, &this->unk_36C);
}

void EnIk_SetupAction(EnIk* this, EnIkActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void func_80A74398(Actor* thisx, GlobalContext* globalCtx) {
    EnIk* this = THIS;
    s32 pad;
    EffectBlureInit1 blureInit;

    thisx->update = func_80A75FA0;
    thisx->draw = func_80A76798;
    thisx->flags |= 0x400;

    Collider_InitCylinder(globalCtx, &this->unk_320);
    Collider_SetCylinder(globalCtx, &this->unk_320, thisx, &sCylinderInit);
    Collider_InitTris(globalCtx, &this->unk_3EC);
    Collider_SetTris(globalCtx, &this->unk_3EC, thisx, &sTrisInit, this->unk_40C);
    Collider_InitQuad(globalCtx, &this->unk_36C);
    Collider_SetQuad(globalCtx, &this->unk_36C, thisx, &sQuadInit);

    thisx->colChkInfo.damageTable = &sDamageTable;
    thisx->colChkInfo.mass = 0xFE;
    this->unk_2FC = 0;
    thisx->colChkInfo.health = 30;
    thisx->gravity = -1.0f;
    this->switchFlags = (thisx->params >> 8) & 0xFF;
    thisx->params &= 0xFF;

    if (thisx->params == 0) {
        thisx->colChkInfo.health += 20;
        thisx->naviEnemyId = 52;
    } else {
        Actor_SetScale(thisx, 0.012f);
        thisx->naviEnemyId = 53;
        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, thisx, ACTORTYPE_ENEMY);
    }

    blureInit.p1StartColor[0] = blureInit.p1StartColor[1] = blureInit.p2StartColor[0] = blureInit.p2StartColor[1] =
        blureInit.p2StartColor[2] = blureInit.p1EndColor[0] = blureInit.p1EndColor[1] = blureInit.p2EndColor[0] =
            blureInit.p2EndColor[1] = blureInit.p2EndColor[2] = 255;

    blureInit.p2StartColor[3] = 64;
    blureInit.p1StartColor[3] = 200;
    blureInit.p1StartColor[2] = blureInit.p1EndColor[2] = 150;
    blureInit.p1EndColor[3] = blureInit.p2EndColor[3] = 0;

    blureInit.elemDuration = 8;
    blureInit.unkFlag = 0;
    blureInit.calcMode = 2;

    Effect_Add(globalCtx, &this->blureIdx, EFFECT_BLURE1, 0, 0, &blureInit);
    func_80A74714(this);

    if (this->switchFlags != 0xFF) {
        if (Flags_GetSwitch(globalCtx, this->switchFlags)) {
            Actor_Kill(thisx);
        }
    } else if (thisx->params != 0 && Flags_GetClear(globalCtx, globalCtx->roomCtx.curRoom.num)) {
        Actor_Kill(thisx);
    }
}

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
    EnIk_SetupAction(this, func_80A7492C);
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

Gfx* func_80A761B0(GraphicsContext* gfxCtx, u8 primR, u8 primG, u8 primB, u8 envR, u8 envG, u8 envB) {
    Gfx* displayList;
    Gfx* displayListHead;

    displayList = Graph_Alloc(gfxCtx, 4 * sizeof(Gfx));
    displayListHead = displayList;

    gDPPipeSync(displayListHead++);
    gDPSetPrimColor(displayListHead++, 0, 0, primR, primG, primB, 255);
    gDPSetEnvColor(displayListHead++, envR, envG, envB, 255);
    gSPEndDisplayList(displayListHead++);

    return displayList;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/EnIk_OverrideLimbDraw3.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/EnIk_PostLimbDraw3.s")

void func_80A76798(Actor* thisx, GlobalContext* globalCtx) {
    EnIk* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_ik_inFight.c", 1309);

    func_80093D18(globalCtx->state.gfxCtx);
    func_80093D84(globalCtx->state.gfxCtx);

    if (this->actor.params == 0) {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x08, func_80A761B0(globalCtx->state.gfxCtx, 245, 225, 155, 30, 30, 0));
        gSPSegment(oGfxCtx->polyOpa.p++, 0x09, func_80A761B0(globalCtx->state.gfxCtx, 255, 40, 0, 40, 0, 0));
        gSPSegment(oGfxCtx->polyOpa.p++, 0x0A, func_80A761B0(globalCtx->state.gfxCtx, 255, 255, 255, 20, 40, 30));
    } else if (this->actor.params == 1) {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x08, func_80A761B0(globalCtx->state.gfxCtx, 245, 255, 205, 30, 35, 0));
        gSPSegment(oGfxCtx->polyOpa.p++, 0x09, func_80A761B0(globalCtx->state.gfxCtx, 185, 135, 25, 20, 20, 0));
        gSPSegment(oGfxCtx->polyOpa.p++, 0x0A, func_80A761B0(globalCtx->state.gfxCtx, 255, 255, 255, 30, 40, 20));
    } else if (this->actor.params == 2) {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x08, func_80A761B0(globalCtx->state.gfxCtx, 55, 65, 55, 0, 0, 0));
        gSPSegment(oGfxCtx->polyOpa.p++, 0x09, func_80A761B0(globalCtx->state.gfxCtx, 205, 165, 75, 25, 20, 0));
        gSPSegment(oGfxCtx->polyOpa.p++, 0x0A, func_80A761B0(globalCtx->state.gfxCtx, 205, 165, 75, 25, 20, 0));
    } else {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x08, func_80A761B0(globalCtx->state.gfxCtx, 255, 255, 255, 180, 180, 180));
        gSPSegment(oGfxCtx->polyOpa.p++, 0x09, func_80A761B0(globalCtx->state.gfxCtx, 225, 205, 115, 25, 20, 0));
        gSPSegment(oGfxCtx->polyOpa.p++, 0x0A, func_80A761B0(globalCtx->state.gfxCtx, 225, 205, 115, 25, 20, 0));
    }
    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                     EnIk_OverrideLimbDraw3, EnIk_PostLimbDraw3, &this->actor);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_ik_inFight.c", 1351);
}

void EnIk_StartMusic(void) {
    func_800F5ACC(0x38);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A76C14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A76DDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A76E2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77034.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7707C.s")

CsCmdActorAction* EnIk_GetNpcAction(GlobalContext* globalCtx, s32 actionIdx) {
    if (globalCtx->csCtx.state != 0) {
        return globalCtx->csCtx.npcActions[actionIdx];
    } else {
        return NULL;
    }
}

void func_80A770C0(EnIk* this, GlobalContext* globalCtx, s32 actionIdx) {
    CsCmdActorAction* npcAction = EnIk_GetNpcAction(globalCtx, actionIdx);

    if (npcAction != NULL) {
        this->actor.posRot.pos.x = npcAction->startPos.x;
        this->actor.posRot.pos.y = npcAction->startPos.y;
        this->actor.posRot.pos.z = npcAction->startPos.z;
        this->actor.posRot.rot.y = this->actor.shape.rot.y = npcAction->rot.y;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77140.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77148.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77158.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A771E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77264.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A772A4.s")

void func_80A772EC(EnIk* this, GlobalContext* globalCtx) {
    static Vec3f D_80A78FA0;
    s32 pad[2];
    f32 wDest;

    SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, &this->actor.posRot.pos, &D_80A78FA0, &wDest);
    Audio_PlaySoundGeneral(NA_SE_EN_IRONNACK_DEAD, &D_80A78FA0, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}

void func_80A7735C(EnIk* this, GlobalContext* globalCtx) {
    s32 pad[3];
    f32 frames = (f32)SkelAnime_GetFrameCount(&D_060203D8.genericHeader);

    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_060205C0, NULL, this->limbDrawTable, this->transitionDrawTable,
                     30);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060203D8, 1.0f, 0.0f, frames, 2, 0.0f);
    this->action = 3;
    this->drawMode = 2;
    func_80A770C0(this, globalCtx, 4);
    func_80A772EC(this, globalCtx);
    this->actor.shape.unk_14 = 0xFF;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77434.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77474.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A7748C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A774BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A774F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/EnIk_OverrideLimbDraw2.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/EnIk_PostLimbDraw2.s")

void func_80A77844(EnIk* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    SkelAnime* skelAnime = &this->skelAnime;
    s32 pad[2];

    OPEN_DISPS(gfxCtx, "../z_en_ik_inAwake.c", 322);

    func_8002EBCC(&this->actor, globalCtx, 0);
    func_80093D18(gfxCtx);
    func_80093D84(gfxCtx);
    gSPSegment(oGfxCtx->polyOpa.p++, 0x08, func_80A761B0(gfxCtx, 245, 225, 155, 30, 30, 0));
    gSPSegment(oGfxCtx->polyOpa.p++, 0x09, func_80A761B0(gfxCtx, 255, 40, 0, 40, 0, 0));
    gSPSegment(oGfxCtx->polyOpa.p++, 0x0A, func_80A761B0(gfxCtx, 255, 255, 255, 20, 40, 30));
    SkelAnime_DrawSV(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount,
                     EnIk_OverrideLimbDraw2, EnIk_PostLimbDraw2, &this->actor);

    CLOSE_DISPS(gfxCtx, "../z_en_ik_inAwake.c", 345);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A779DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77AEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77B0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/func_80A77B3C.s")

void EnIk_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnIk* this = THIS;

    if (this->action < 0 || this->action >= ARRAY_COUNT(sActionFuncs) || sActionFuncs[this->action] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
    } else {
        sActionFuncs[this->action](this, globalCtx);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/EnIk_OverrideLimbDraw1.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ik/EnIk_PostLimbDraw1.s")

void func_80A77ED0(EnIk* this, GlobalContext* globalCtx) {
}

void func_80A77EDC(EnIk* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    SkelAnime* skelAnime = &this->skelAnime;
    s32 pad[2];

    OPEN_DISPS(gfxCtx, "../z_en_ik_inConfrontion.c", 630);

    func_8002EBCC(&this->actor, globalCtx, 0);
    func_80093D18(gfxCtx);
    func_80093D84(gfxCtx);
    gSPSegment(oGfxCtx->polyOpa.p++, 0x08, func_80A761B0(gfxCtx, 245, 225, 155, 30, 30, 0));
    gSPSegment(oGfxCtx->polyOpa.p++, 0x09, func_80A761B0(gfxCtx, 255, 40, 0, 40, 0, 0));
    gSPSegment(oGfxCtx->polyOpa.p++, 0x0A, func_80A761B0(gfxCtx, 255, 255, 255, 20, 40, 30));
    SkelAnime_DrawSV(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount,
                     EnIk_OverrideLimbDraw1, EnIk_PostLimbDraw1, &this->actor);

    CLOSE_DISPS(gfxCtx, "../z_en_ik_inConfrontion.c", 653);
}

void EnIk_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnIk* this = THIS;

    if (this->drawMode < 0 || this->drawMode >= ARRAY_COUNT(sDrawFuncs) || sDrawFuncs[this->drawMode] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
    } else {
        sDrawFuncs[this->drawMode](this, globalCtx);
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
            EnIk_StartMusic();
        }
    }
    osSyncPrintf("En_Ik_inConfrontion_Init : %d !!!!!!!!!!!!!!!!\n", this->actor.params);
}

void func_80A78160(EnIk* this, GlobalContext* globalCtx) {
    this->actor.update = func_80A75FA0;
    this->actor.draw = func_80A76798;
    this->actor.flags |= 5;
    gSaveContext.eventChkInf[3] |= 0x800;
    Actor_SetScale(&this->actor, 0.012f);
    func_80A7489C(this);
}

void func_80A781CC(Actor* thisx, GlobalContext* globalCtx) {
    EnIk* this = THIS;

    if (!Gameplay_InCsMode(globalCtx)) {
        this->actor.update = EnIk_Update;
        this->actor.draw = EnIk_Draw;
        Cutscene_SetSegment(globalCtx, &D_02003F80);
        gSaveContext.cutsceneTrigger = 1;
        Actor_SetScale(&this->actor, 0.01f);
        gSaveContext.eventChkInf[3] |= 0x1000;
        func_80A7735C(this, globalCtx);
    }
}

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
        func_80A74398(&this->actor, globalCtx);
        func_80A780D0(this, globalCtx);
    }
}
