/*
 * File: z_fishing.c
 * Overlay: ovl_Fishing
 * Description: Fishing Pond man and Fish
 */

#include "z_fishing.h"

#define FLAGS 0x00000010

void Fishing_Init(Fishing* this, GlobalContext* globalCtx);
void Fishing_Destroy(Fishing* this, GlobalContext* globalCtx);
void Fishing_Update(Fishing* this, GlobalContext* globalCtx);
void Fishing_Draw(Fishing* this, GlobalContext* globalCtx);

/*
const ActorInit Fishing_InitVars = {
    ACTOR_FISHING,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_FISH,
    sizeof(Fishing),
    (ActorFunc)Fishing_Init,
    (ActorFunc)Fishing_Destroy,
    (ActorFunc)Fishing_Update,
    (ActorFunc)Fishing_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B699A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B69A44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B69A60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B69B84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B69C2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B69D88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B69ED0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B6A008.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B6A138.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B6A22C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/Fishing_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/Fishing_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B6AF28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B6B674.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B6C134.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B6C2EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B6C3E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B6C960.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B6CAF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B6D054.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B6D354.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B6D688.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B6DF30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B6E9E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B70A2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B70CF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B70ED4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B71278.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B71438.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/Fishing_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B75BAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B75CE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B75D20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B75DA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/Fishing_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B76028.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B760D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B761B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B76474.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B768FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B771CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B77404.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B7825C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B7A10C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B7A140.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Fishing/func_80B7A278.s")
