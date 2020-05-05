/*
 * File: z_bg_breakwall.c
 * Overlay: Bg_Breakwall
 * Description: Bombable Wall
 */

#include "z_bg_breakwall.h"

#define FLAGS 0x00000010

#define THIS ((BgBreakwall*)thisx)

void BgBreakwall_Init(Actor* thisx, GlobalContext* globalCtx);
void BgBreakwall_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgBreakwall_Update(Actor* thisx, GlobalContext* globalCtx);

void func_80870290(BgBreakwall* this, GlobalContext* globalCtx);
void func_80870394(BgBreakwall* this, GlobalContext* globalCtx);
void func_80870564(BgBreakwall* this, GlobalContext* globalCtx);
void func_808705D8(BgBreakwall* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Breakwall_InitVars = {
    ACTOR_BG_BREAKWALL,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(BgBreakwall),
    (ActorFunc)BgBreakwall_Init,
    (ActorFunc)BgBreakwall_Destroy,
    (ActorFunc)BgBreakwall_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Breakwall/BgBreakwall_SetupAction.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Breakwall/BgBreakwall_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Breakwall/BgBreakwall_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Breakwall/func_8086FDC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Breakwall/func_80870290.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Breakwall/func_80870394.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Breakwall/func_80870564.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Breakwall/BgBreakwall_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Breakwall/func_808705D8.s")
