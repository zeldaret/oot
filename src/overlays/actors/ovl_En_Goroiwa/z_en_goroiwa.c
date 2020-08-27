/*
 * File: z_en_goroiwa.c
 * Overlay: ovl_En_Goroiwa
 * Description: Rolling boulders
 */

#include "z_en_goroiwa.h"

#define FLAGS 0x00000010

#define THIS ((EnGoroiwa*)thisx)

void EnGoroiwa_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGoroiwa_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGoroiwa_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGoroiwa_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Goroiwa_InitVars = {
    ACTOR_EN_GOROIWA,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GOROIWA,
    sizeof(EnGoroiwa),
    (ActorFunc)EnGoroiwa_Init,
    (ActorFunc)EnGoroiwa_Destroy,
    (ActorFunc)EnGoroiwa_Update,
    (ActorFunc)EnGoroiwa_Draw,
};
*/

extern CollisionCheckInfoInit D_80A4DEB4;
extern InitChainEntry D_80A4DEF8;
extern f32 D_80A4DF10[];

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4BCA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4BD04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4BD70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4BD8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4BE10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4BE54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4BF28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4C080.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4C134.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4C164.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4C188.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4C1C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4C264.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4C27C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4C3A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4C594.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4C6C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4C814.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4CA50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4CB78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4CED8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4D074.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4D0FC.s")

void EnGoroiwa_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnGoroiwa* this = THIS;
    s32 params;

    Actor_ProcessInitChain(&this->actor, &D_80A4DEF8);
    func_80A4BD04(this, globalCtx);
    params = this->actor.params & 0xFF;
    if (params == 0xFF) {
        // Translation: Error: Invalid arg_data
        osSyncPrintf("Ｅｒｒｏｒ : arg_data が不正(%s %d)(arg_data 0x%04x)\n", "../z_en_gr.c", 0x409, this->actor.params);
        Actor_Kill(&this->actor);
        return;
    }
    if (globalCtx->setupPathList[params].count < 2) {
        // Translation: Error: Invalid Path Data
        osSyncPrintf("Ｅｒｒｏｒ : レールデータ が不正(%s %d)\n", "../z_en_gr.c", 0x413);
        Actor_Kill(&this->actor);
        return;
    }
    func_80061ED4(&this->actor.colChkInfo, NULL, &D_80A4DEB4);
    ActorShape_Init(&this->actor.shape, D_80A4DF10[(this->actor.params >> 10) & 1], ActorShadow_DrawFunc_Circle, 9.4f);
    this->actor.shape.unk_14 = 200;
    func_80A4BE10(this, globalCtx);
    func_80A4C188(this, globalCtx);
    func_80A4C1C4(this, globalCtx, 0);
    func_80A4C264(this);
    func_80A4BE54(this, globalCtx);
    func_80A4D5E0(this);
    // Translation: (Goroiwa)
    osSyncPrintf("(ごろ岩)(arg 0x%04x)(rail %d)(end %d)(bgc %d)(hit %d)\n", this->actor.params, this->actor.params & 0xFF, (this->actor.params >> 8) & 3, (this->actor.params >> 10) & 1, this->actor.initPosRot.rot.z & 1);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/EnGoroiwa_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4D5E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4D624.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4D8CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4D944.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4D9DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4DA3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4DA7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4DAD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4DB90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4DC00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/EnGoroiwa_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/EnGoroiwa_Draw.s")
