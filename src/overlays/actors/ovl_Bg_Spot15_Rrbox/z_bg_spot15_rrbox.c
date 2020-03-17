#include "z_bg_spot15_rrbox.h"

#define ROOM  0x00
#define FLAGS 0x00000000

void BgSpot15Rrbox_Init(BgSpot15Rrbox* this, GlobalContext* globalCtx);
void BgSpot15Rrbox_Destroy(BgSpot15Rrbox* this, GlobalContext* globalCtx);
void BgSpot15Rrbox_Update(BgSpot15Rrbox* this, GlobalContext* globalCtx);
void BgSpot15Rrbox_Draw(BgSpot15Rrbox* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Spot15_Rrbox_InitVars =
{
    ACTOR_BG_SPOT15_RRBOX,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_SPOT15_OBJ,
    sizeof(BgSpot15Rrbox),
    (ActorFunc)BgSpot15Rrbox_Init,
    (ActorFunc)BgSpot15Rrbox_Destroy,
    (ActorFunc)BgSpot15Rrbox_Update,
    (ActorFunc)BgSpot15Rrbox_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B3960.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B39E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B3A34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B3A40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B3AAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/BgSpot15Rrbox_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/BgSpot15Rrbox_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B3CA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B3DDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B3F58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B4010.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B4084.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B40AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B4178.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B4194.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B4380.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B43D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B44B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B44CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/BgSpot15Rrbox_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/BgSpot15Rrbox_Draw.s")
