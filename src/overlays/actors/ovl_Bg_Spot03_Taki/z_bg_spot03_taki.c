/*
 * File: z_bg_spot03_taki.c
 * Overlay: ovl_Bg_Spot03_Taki
 * Description: Zora's River Waterfall
 */

#include "z_bg_spot03_taki.h"

#define FLAGS 0x00000030

#define THIS ((BgSpot03Taki*)thisx)

void BgSpot03Taki_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot03Taki_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot03Taki_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot03Taki_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808ADEF0(BgSpot03Taki* this, GlobalContext* globalCtx);

const ActorInit Bg_Spot03_Taki_InitVars = {
    ACTOR_BG_SPOT03_TAKI,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT03_OBJECT,
    sizeof(BgSpot03Taki),
    (ActorFunc)BgSpot03Taki_Init,
    (ActorFunc)BgSpot03Taki_Destroy,
    (ActorFunc)BgSpot03Taki_Update,
    (ActorFunc)BgSpot03Taki_Draw,
};

// FIXME
// sInitChain
/*static*/ InitChainEntry D_808AE3B0[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

extern UNK_TYPE D_06000C98;

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot03_Taki/func_808ADAE0.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot03_Taki/BgSpot03Taki_Init.s")
void BgSpot03Taki_Init(Actor *thisx, GlobalContext *globalCtx) {
    BgSpot03Taki *this = THIS;
    s16 unused;
    s32 sp24 = 0;

    this->switchFlag = (this->dyna.actor.params & 0x3F);
    DynaPolyInfo_SetActorMove(&this->dyna.actor, 0);
    DynaPolyInfo_Alloc(&D_06000C98, &sp24);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, sp24);
    Actor_ProcessInitChain(&this->dyna.actor, D_808AE3B0);
    this->unk_174 = 0;
    this->unk_170 = 255.0f;
    func_808ADAE0(this, 0);
    func_808ADAE0(this, 1);
    this->actionFunc = func_808ADEF0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot03_Taki/BgSpot03Taki_Destroy.s")
void BgSpot03Taki_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    BgSpot03Taki *this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot03_Taki/func_808ADEF0.s")
void func_808ADEF0(BgSpot03Taki* this, GlobalContext* globalCtx) {
    if (this->unk_16A == 0) {
        if (Flags_GetSwitch(globalCtx, this->switchFlag) != 0) {
            this->unk_16A = 2;
            this->unk_168 = 0x28;
            func_800800F8(globalCtx, 0x1004, -0x63, NULL, 0);
        }
    } else if (this->unk_16A == 1) {
        this->unk_168--;
        if (this->unk_168 < 0) {
            this->unk_16A = 2;
        }
    } else if (this->unk_16A == 2) {
        if (this->unk_170 > 0) {
            this->unk_170 -= 5;
            if (this->unk_170 <= 0.0f) {
                func_8003EBF8(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
                this->unk_168 = 0x190;
                this->unk_16A = 3;
                this->unk_170 = 0;
            }
        }
    } else if (this->unk_16A == 3) {
        this->unk_168--;
        if (this->unk_168 < 0) {
            this->unk_16A = 4;
        }
    } else if (this->unk_16A == 4) {
        if (this->unk_170 < 255.0f) {
            this->unk_170 += 5.0f;
            if (this->unk_170 >= 255.0f) {
                func_8003EC50(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
                this->unk_16A = 0;
                this->unk_170 = 255.0f;
                Flags_UnsetSwitch(globalCtx, this->switchFlag);
            }
        }
    }
    func_808ADAE0(this, this->unk_174);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot03_Taki/BgSpot03Taki_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot03_Taki/BgSpot03Taki_Draw.s")
