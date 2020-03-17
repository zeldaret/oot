#include "z_bg_haka_megane.h"

#define ROOM  0x00
#define FLAGS 0x000000B0

void BgHakaMegane_Init(BgHakaMegane* this, GlobalContext* globalCtx);
void BgHakaMegane_Destroy(BgHakaMegane* this, GlobalContext* globalCtx);
void BgHakaMegane_Update(BgHakaMegane* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Haka_Megane_InitVars =
{
    ACTOR_BG_HAKA_MEGANE,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(BgHakaMegane),
    (ActorFunc)BgHakaMegane_Init,
    (ActorFunc)BgHakaMegane_Destroy,
    (ActorFunc)BgHakaMegane_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Megane/BgHakaMegane_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Megane/BgHakaMegane_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Megane/func_8087DB24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Megane/func_8087DBF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Megane/func_8087DC64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Megane/BgHakaMegane_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Megane/func_8087DC94.s")



