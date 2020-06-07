/*
 * File: z_item_ocarina.c
 * Overlay: ovl_Item_Ocarina
 * Description: Ocarina of Time
 */

#include "z_item_ocarina.h"

#define FLAGS 0x00000010

#define THIS ((ItemOcarina*)thisx)

void ItemOcarina_Init(Actor* thisx, GlobalContext* globalCtx);
void ItemOcarina_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ItemOcarina_Update(Actor* thisx, GlobalContext* globalCtx);
void ItemOcarina_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Item_Ocarina_InitVars = {
    ACTOR_ITEM_OCARINA,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GI_OCARINA,
    sizeof(ItemOcarina),
    (ActorFunc)ItemOcarina_Init,
    (ActorFunc)ItemOcarina_Destroy,
    (ActorFunc)ItemOcarina_Update,
    (ActorFunc)ItemOcarina_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Ocarina/func_80B86130.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Ocarina/ItemOcarina_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Ocarina/ItemOcarina_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Ocarina/func_80B862EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Ocarina/func_80B86494.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Ocarina/func_80B864EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Ocarina/func_80B865E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Ocarina/func_80B86640.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Ocarina/func_80B8664C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Ocarina/func_80B866BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Ocarina/ItemOcarina_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Ocarina/ItemOcarina_Draw.s")
