#include "z_bg_spot12_saku.h"

#define ROOM 0x00
#define FLAGS 0x00000000

void BgSpot12Saku_Init(BgSpot12Saku* this, GlobalContext* globalCtx);
void BgSpot12Saku_Destroy(BgSpot12Saku* this, GlobalContext* globalCtx);
void BgSpot12Saku_Update(BgSpot12Saku* this, GlobalContext* globalCtx);
void BgSpot12Saku_Draw(BgSpot12Saku* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Spot12_Saku_InitVars = {
    ACTOR_BG_SPOT12_SAKU,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_SPOT12_OBJ,
    sizeof(BgSpot12Saku),
    (ActorFunc)BgSpot12Saku_Init,
    (ActorFunc)BgSpot12Saku_Destroy,
    (ActorFunc)BgSpot12Saku_Update,
    (ActorFunc)BgSpot12Saku_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot12_Saku/func_808B3420.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot12_Saku/BgSpot12Saku_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot12_Saku/BgSpot12Saku_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot12_Saku/func_808B3550.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot12_Saku/func_808B357C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot12_Saku/func_808B35E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot12_Saku/func_808B3604.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot12_Saku/func_808B3714.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot12_Saku/func_808B37AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot12_Saku/BgSpot12Saku_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot12_Saku/BgSpot12Saku_Draw.s")
