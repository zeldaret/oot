#include "z_magic_wind.h"

#define ROOM 0x00
#define FLAGS 0x02000010

void MagicWind_Init(MagicWind* this, GlobalContext* globalCtx);
void MagicWind_Destroy(MagicWind* this, GlobalContext* globalCtx);
void MagicWind_Update(MagicWind* this, GlobalContext* globalCtx);
void MagicWind_Draw(MagicWind* this, GlobalContext* globalCtx);

/*
const ActorInit Magic_Wind_InitVars =
{
    ACTOR_MAGIC_WIND,
    ACTORTYPE_ITEMACTION,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(MagicWind),
    (ActorFunc)MagicWind_Init,
    (ActorFunc)MagicWind_Destroy,
    (ActorFunc)MagicWind_Update,
    (ActorFunc)MagicWind_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Wind/func_80B8B100.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Wind/MagicWind_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Wind/MagicWind_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Wind/func_80B8B2A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Wind/func_80B8B3C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Wind/func_80B8B468.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Wind/func_80B8B4B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Wind/func_80B8B500.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Wind/func_80B8B564.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Wind/MagicWind_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Wind/func_80B8B5F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Wind/MagicWind_Draw.s")
