#include "z_bg_spot12_gate.h"

#define ROOM 0x00
#define FLAGS 0x00000000

void BgSpot12Gate_Init(BgSpot12Gate* this, GlobalContext* globalCtx);
void BgSpot12Gate_Destroy(BgSpot12Gate* this, GlobalContext* globalCtx);
void BgSpot12Gate_Update(BgSpot12Gate* this, GlobalContext* globalCtx);
void BgSpot12Gate_Draw(BgSpot12Gate* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Spot12_Gate_InitVars =
{
    ACTOR_BG_SPOT12_GATE,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_SPOT12_OBJ,
    sizeof(BgSpot12Gate),
    (ActorFunc)BgSpot12Gate_Init,
    (ActorFunc)BgSpot12Gate_Destroy,
    (ActorFunc)BgSpot12Gate_Update,
    (ActorFunc)BgSpot12Gate_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot12_Gate/func_808B2F90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot12_Gate/BgSpot12Gate_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot12_Gate/BgSpot12Gate_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot12_Gate/func_808B30C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot12_Gate/func_808B30D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot12_Gate/func_808B3134.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot12_Gate/func_808B314C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot12_Gate/func_808B317C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot12_Gate/func_808B318C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot12_Gate/func_808B3274.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot12_Gate/func_808B3298.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot12_Gate/BgSpot12Gate_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot12_Gate/BgSpot12Gate_Draw.s")
