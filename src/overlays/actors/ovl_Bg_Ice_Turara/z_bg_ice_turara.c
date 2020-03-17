#include "z_bg_ice_turara.h"

#define ROOM  0x00
#define FLAGS 0x00000000

void BgIceTurara_Init(BgIceTurara* this, GlobalContext* globalCtx);
void BgIceTurara_Destroy(BgIceTurara* this, GlobalContext* globalCtx);
void BgIceTurara_Update(BgIceTurara* this, GlobalContext* globalCtx);
void BgIceTurara_Draw(BgIceTurara* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Ice_Turara_InitVars =
{
    ACTOR_BG_ICE_TURARA,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_ICE_OBJECTS,
    sizeof(BgIceTurara),
    (ActorFunc)BgIceTurara_Init,
    (ActorFunc)BgIceTurara_Destroy,
    (ActorFunc)BgIceTurara_Update,
    (ActorFunc)BgIceTurara_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Turara/BgIceTurara_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Turara/BgIceTurara_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Turara/func_80892040.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Turara/func_80892220.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Turara/func_80892280.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Turara/func_808922B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Turara/func_80892424.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Turara/func_80892574.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Turara/BgIceTurara_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Turara/BgIceTurara_Draw.s")
