#include "z_bg_spot17_funen.h"

#define ROOM  0x00
#define FLAGS 0x00000030

void BgSpot17Funen_Init(BgSpot17Funen* this, GlobalContext* globalCtx);
void BgSpot17Funen_Destroy(BgSpot17Funen* this, GlobalContext* globalCtx);
void BgSpot17Funen_Update(BgSpot17Funen* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Spot17_Funen_InitVars =
{
    ACTOR_BG_SPOT17_FUNEN,
    ACTORTYPE_SWITCH,
    ROOM,
    FLAGS,
    OBJECT_SPOT17_OBJ,
    sizeof(BgSpot17Funen),
    (ActorFunc)BgSpot17Funen_Init,
    (ActorFunc)BgSpot17Funen_Destroy,
    (ActorFunc)BgSpot17Funen_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot17_Funen/BgSpot17Funen_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot17_Funen/BgSpot17Funen_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot17_Funen/BgSpot17Funen_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot17_Funen/func_808B746C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot17_Funen/func_808B7478.s")
