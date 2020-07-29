/*
 * File: z_bg_spot01_idomizu.c
 * Overlay: ovl_Bg_Spot01_Idomizu
 * Description: Kakariko Village Well Water
 */

#include "z_bg_spot01_idomizu.h"

#define FLAGS 0x00000020

#define THIS ((BgSpot01Idomizu*)thisx)

void BgSpot01Idomizu_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot01Idomizu_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot01Idomizu_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot01Idomizu_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808ABB84(BgSpot01Idomizu* this, GlobalContext* globalCtx);

const ActorInit Bg_Spot01_Idomizu_InitVars = {
    ACTOR_BG_SPOT01_IDOMIZU,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT01_OBJECTS,
    sizeof(BgSpot01Idomizu),
    (ActorFunc)BgSpot01Idomizu_Init,
    (ActorFunc)BgSpot01Idomizu_Destroy,
    (ActorFunc)BgSpot01Idomizu_Update,
    (ActorFunc)BgSpot01Idomizu_Draw,
};

// sInitChain
InitChainEntry D_808ABDB0[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idomizu/BgSpot01Idomizu_Init.s")
void BgSpot01Idomizu_Init(Actor *thisx, GlobalContext *globalCtx) {
    BgSpot01Idomizu *this = THIS;
    Actor_ProcessInitChain(&this->actor, D_808ABDB0);
    if ((gSaveContext.eventChkInf[6] & 0x80) == 0) {
        if (LINK_AGE_IN_YEARS == YEARS_ADULT) {
            drained:
            this->unk_150 = -550.0f;
        } else {
            this->unk_150 = 52.0f;
        }
    } else {
        goto drained;
    }
    this->actionFunc = func_808ABB84;
    this->actor.posRot.pos.y = this->unk_150;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idomizu/BgSpot01Idomizu_Destroy.s")
void BgSpot01Idomizu_Destroy(Actor *thisx, GlobalContext *globalCtx) {

}


// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idomizu/func_808ABB84.s")
void func_808ABB84(BgSpot01Idomizu *this, GlobalContext *globalCtx) {
    if ((gSaveContext.eventChkInf[6] & 0x80) != 0) {
        this->unk_150 = -550.0f;
    }
    globalCtx->colCtx.stat.colHeader->waterBoxes[0].unk_02 = this->actor.posRot.pos.y;
    if (this->unk_150 < this->actor.posRot.pos.y) {
        Audio_PlaySoundGeneral(NA_SE_EV_WATER_LEVEL_DOWN - SFX_FLAG, &D_801333D4, 4U, &D_801333E0, &D_801333E0, &D_801333E8);
    }
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, this->unk_150, 1.0f, 2.0f);
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idomizu/BgSpot01Idomizu_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idomizu/BgSpot01Idomizu_Draw.s")
