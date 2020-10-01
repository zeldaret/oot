#include "z_en_kakasi3.h"
#include <vt.h>

#define FLAGS 0x02000009

#define THIS ((EnKakasi3*)thisx)

void EnKakasi3_Init(Actor* thisx, GlobalContext* globalCtx);
void EnKakasi3_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnKakasi3_Update(Actor* thisx, GlobalContext* globalCtx);
void EnKakasi3_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A911F0(EnKakasi3* thisx, GlobalContext* globalCtx);
void func_80A90E28(EnKakasi3* thisx, GlobalContext* globalCtx);
void func_80A90EBC(EnKakasi3* thisx, GlobalContext* globalCtx);
void func_80A911F0(EnKakasi3* thisx, GlobalContext* globalCtx);
void func_80A91284(EnKakasi3* thisx, GlobalContext* globalCtx);
void func_80A91348(EnKakasi3* thisx, GlobalContext* globalCtx);
void func_80A915B8(EnKakasi3* thisx, GlobalContext* globalCtx);
void func_80A91620(EnKakasi3* thisx, GlobalContext* globalCtx);
void func_80A91760(EnKakasi3* thisx, GlobalContext* globalCtx);
void func_80A917FC(EnKakasi3* thisx, GlobalContext* globalCtx);
void func_80A9187C(EnKakasi3* thisx, GlobalContext* globalCtx);
void func_80A918E4(EnKakasi3* thisx, GlobalContext* globalCtx);
void func_80A91A90(EnKakasi3* thisx, GlobalContext* globalCtx);

ColliderCylinderInit D_80A91D10 = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x05, 0x01 },
    { 20, 70, 0, { 0, 0, 0 } },
};

extern SkeletonHeader D_060065B0;
extern AnimationHeader D_06000214;

const ActorInit En_Kakasi3_InitVars = {
    ACTOR_EN_KAKASI3,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_KA,
    sizeof(EnKakasi3),
    (ActorFunc)EnKakasi3_Init,
    (ActorFunc)EnKakasi3_Destroy,
    (ActorFunc)EnKakasi3_Update,
    (ActorFunc)EnKakasi3_Draw,
};

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/EnKakasi3_Destroy.s")
void EnKakasi3_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnKakasi3* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/EnKakasi3_Init.s")
void EnKakasi3_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnKakasi3* this = THIS;

    osSyncPrintf("\n\n");
    // Obonur 
    osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ おーボヌール ☆☆☆☆☆ \n" VT_RST);
    this->actor.unk_1F = 6;

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80A91D10);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_060065B0, &D_06000214, 0, 0, 0);
    this->actor.flags |= 0x400;
    this->rot= this->actor.posRot.rot;
    this->actor.colChkInfo.mass = 0xFF;
    Actor_SetScale(&this->actor, 0.01f);
    this->actionFunc = func_80A911F0;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/func_80A90E28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/func_80A90EBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/func_80A911F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/func_80A91284.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/func_80A91348.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/func_80A915B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/func_80A91620.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/func_80A91760.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/func_80A917FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/func_80A9187C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/func_80A918E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/func_80A91A90.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/EnKakasi3_Update.s")
void EnKakasi3_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnKakasi3* this = THIS;
    s32 pad;
    s32 i;

    if (BREG(2) != 0) {
        osSyncPrintf("\n\n");
        // flag!
        osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ フラグ！ ☆☆☆☆☆ %d\n" VT_RST, gSaveContext.unk_12C5);
    }

    this->unk_198 += 1;
    this->actor.posRot.rot = this->actor.shape.rot;
    for (i = 0; i < 4; i++) {
        if (this->unk_19C[i] != 0) {
            this->unk_19C[i]--;
        }
    }

    Actor_SetHeight(&this->actor, 60.0f);
    this->actionFunc(this, globalCtx);
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 50.0f, 50.0f, 100.0f, 28);
    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi3/EnKakasi3_Draw.s")
void EnKakasi3_Draw(Actor *thisx, GlobalContext *globalCtx) {
    EnKakasi3 *this = THIS;
    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount, 0, 0, &this->actor);
}
