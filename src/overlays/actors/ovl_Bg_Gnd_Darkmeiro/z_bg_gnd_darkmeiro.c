/*
 * File: z_bg_gnd_darkmeiro.c
 * Overlay: ovl_Bg_Gnd_Darkmeiro
 * Description: Clear block
 */

#include "z_bg_gnd_darkmeiro.h"

#define FLAGS 0x00000030

#define THIS ((BgGndDarkmeiro*)thisx)

void BgGndDarkmeiro_Init(Actor* thisx, GlobalContext* globalCtx);
void BgGndDarkmeiro_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgGndDarkmeiro_Update(Actor* thisx, GlobalContext* globalCtx);

void func_80878C30(BgGndDarkmeiro* this, GlobalContext* globalCtx);
void func_80878F28(BgGndDarkmeiro* this, GlobalContext* globalCtx);
void func_80878F34(BgGndDarkmeiro* this, GlobalContext* globalCtx);
void func_80879128(BgGndDarkmeiro* this, GlobalContext* globalCtx);
void func_80879134(BgGndDarkmeiro* this, GlobalContext* globalCtx);
void func_808791BC(BgGndDarkmeiro* this, GlobalContext* globalCtx);
void func_808791E8(BgGndDarkmeiro* this, GlobalContext* globalCtx);
void func_80879334(BgGndDarkmeiro* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Gnd_Darkmeiro_InitVars = {
    ACTOR_BG_GND_DARKMEIRO,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_DEMO_KEKKAI,
    sizeof(BgGndDarkmeiro),
    (ActorFunc)BgGndDarkmeiro_Init,
    (ActorFunc)BgGndDarkmeiro_Destroy,
    (ActorFunc)BgGndDarkmeiro_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Darkmeiro/func_80878C30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Darkmeiro/BgGndDarkmeiro_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Darkmeiro/BgGndDarkmeiro_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Darkmeiro/func_80878F28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Darkmeiro/func_80878F34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Darkmeiro/func_80879128.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Darkmeiro/func_80879134.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Darkmeiro/BgGndDarkmeiro_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Darkmeiro/func_808791BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Darkmeiro/func_808791E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Darkmeiro/func_80879334.s")
