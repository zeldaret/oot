#include "z_en_kakasi.h"
#include "vt.h"

#define FLAGS 0x02000009

#define THIS ((EnKakasi*)thisx)

void EnKakasi_Init(Actor* thisx, GlobalContext* globalCtx);
void EnKakasi_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnKakasi_Update(Actor* thisx, GlobalContext* globalCtx);
void EnKakasi_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A8F660(EnKakasi* this, GlobalContext* globalCtx);
void func_80A8F75C(EnKakasi* this, GlobalContext* globalCtx);

ColliderCylinderInit D_80A8FDE0 =
{
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x04, 0x01 },
    { 20, 70, 0, { 0, 0, 0 } },
};

extern SkeletonHeader D_060065B0;
extern AnimationHeader D_06000214;

const ActorInit En_Kakasi_InitVars = {
    ACTOR_EN_KAKASI,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_KA,
    sizeof(EnKakasi),
    (ActorFunc)EnKakasi_Init,
    (ActorFunc)EnKakasi_Destroy,
    (ActorFunc)EnKakasi_Update,
    (ActorFunc)EnKakasi_Draw,
};

void EnKakasi_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    EnKakasi *this = THIS;
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void EnKakasi_Init(Actor *thisx,GlobalContext *globalCtx) {
    EnKakasi *this = THIS;

    osSyncPrintf("\n\n");
    osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ Ｌｅｔ’ｓ ＤＡＮＣＥ！ ☆☆☆☆☆ %f\n" VT_RST, this->actor.posRot.pos.y);
   
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80A8FDE0);
    this->actor.unk_1F = 6;
    SkelAnime_InitSV(globalCtx, &this->skelanime, &D_060065B0, &D_06000214, NULL, NULL, 0);
    
    this->rot = this->actor.posRot.rot;
    this->actor.flags |= 0x400;
    this->actor.colChkInfo.mass = 0xFF;

    Actor_SetScale(&this->actor, 0.01);
    this->actionFunc = &func_80A8F660;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi/func_80A8F28C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi/func_80A8F320.s")

void func_80A8F660(EnKakasi *this, GlobalContext *globalCtx) {
    f32 frameCount = SkelAnime_GetFrameCount(&D_06000214);
    SkelAnime_ChangeAnim(&this->skelanime, &D_06000214, 1.0f, 0.0f, (s16)frameCount, 0, -10.0f);

    this->actor.textId = 0x4076;
    this->unk_196 = 6;
    if (gSaveContext.linkAge != 0) {
        this->unk_194 = 0;
        if (gSaveContext.unk_F3C[4] != 0) {
            this->actor.textId = 0x407A;
            this->unk_196 = 5;
        }
    } else {
        this->unk_194 = 1;
        if (gSaveContext.unk_F3C[4] != 0) {
            this->actor.textId = 0x4079;
            this->unk_196 = 5;
        }
    }
    this->actionFunc = &func_80A8F75C;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi/func_80A8F75C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi/func_80A8F8D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi/func_80A8F9C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi/func_80A8FAA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi/func_80A8FBB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi/EnKakasi_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kakasi/EnKakasi_Draw.s")
