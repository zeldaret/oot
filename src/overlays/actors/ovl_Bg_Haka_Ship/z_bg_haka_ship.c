#include "z_bg_haka_ship.h"

#define ROOM 0x00
#define FLAGS 0x00000030

void BgHakaShip_Init(BgHakaShip* this, GlobalContext* globalCtx);
void BgHakaShip_Destroy(BgHakaShip* this, GlobalContext* globalCtx);
void BgHakaShip_Update(BgHakaShip* this, GlobalContext* globalCtx);
void BgHakaShip_Draw(BgHakaShip* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Haka_Ship_InitVars = {
    ACTOR_BG_HAKA_SHIP,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_HAKA_OBJECTS,
    sizeof(BgHakaShip),
    (ActorFunc)BgHakaShip_Init,
    (ActorFunc)BgHakaShip_Destroy,
    (ActorFunc)BgHakaShip_Update,
    (ActorFunc)BgHakaShip_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/BgHakaShip_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/BgHakaShip_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/func_8087F27C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/func_8087F2D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/func_8087F364.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/func_8087F400.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/func_8087F5C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/func_8087F624.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/func_8087F6B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/BgHakaShip_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/BgHakaShip_Draw.s")
