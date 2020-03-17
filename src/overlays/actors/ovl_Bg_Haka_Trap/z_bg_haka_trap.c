#include "z_bg_haka_trap.h"

#define ROOM  0x00
#define FLAGS 0x00000000

void BgHakaTrap_Init(BgHakaTrap* this, GlobalContext* globalCtx);
void BgHakaTrap_Destroy(BgHakaTrap* this, GlobalContext* globalCtx);
void BgHakaTrap_Update(BgHakaTrap* this, GlobalContext* globalCtx);
void BgHakaTrap_Draw(BgHakaTrap* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Haka_Trap_InitVars =
{
    ACTOR_BG_HAKA_TRAP,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_HAKA_OBJECTS,
    sizeof(BgHakaTrap),
    (ActorFunc)BgHakaTrap_Init,
    (ActorFunc)BgHakaTrap_Destroy,
    (ActorFunc)BgHakaTrap_Update,
    (ActorFunc)BgHakaTrap_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Trap/BgHakaTrap_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Trap/BgHakaTrap_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Trap/func_8087FFC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Trap/func_808801B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Trap/func_808802D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Trap/func_80880484.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Trap/func_808805C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Trap/func_808806BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Trap/func_808808F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Trap/func_808809B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Trap/func_808809E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Trap/func_80880AE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Trap/func_80880C0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Trap/BgHakaTrap_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Trap/func_80880D68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Trap/BgHakaTrap_Draw.s")
