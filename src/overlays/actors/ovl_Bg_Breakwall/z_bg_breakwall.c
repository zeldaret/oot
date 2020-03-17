#include "z_bg_breakwall.h"

#define ROOM  0x00
#define FLAGS 0x00000010

void BgBreakwall_Init(BgBreakwall* this, GlobalContext* globalCtx);
void BgBreakwall_Destroy(BgBreakwall* this, GlobalContext* globalCtx);
void BgBreakwall_Update(BgBreakwall* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Breakwall_InitVars =
{
    ACTOR_BG_BREAKWALL,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(BgBreakwall),
    (ActorFunc)BgBreakwall_Init,
    (ActorFunc)BgBreakwall_Destroy,
    (ActorFunc)BgBreakwall_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Breakwall/func_8086FBE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Breakwall/BgBreakwall_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Breakwall/BgBreakwall_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Breakwall/func_8086FDC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Breakwall/func_80870290.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Breakwall/func_80870394.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Breakwall/func_80870564.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Breakwall/BgBreakwall_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Breakwall/func_808705D8.s")
