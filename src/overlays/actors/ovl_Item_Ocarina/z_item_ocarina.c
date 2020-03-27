#include "z_item_ocarina.h"

#define ROOM 0x00
#define FLAGS 0x00000010

void ItemOcarina_Init(ItemOcarina* this, GlobalContext* globalCtx);
void ItemOcarina_Destroy(ItemOcarina* this, GlobalContext* globalCtx);
void ItemOcarina_Update(ItemOcarina* this, GlobalContext* globalCtx);
void ItemOcarina_Draw(ItemOcarina* this, GlobalContext* globalCtx);

/*
const ActorInit Item_Ocarina_InitVars = {
    ACTOR_ITEM_OCARINA,
    ACTORTYPE_ITEMACTION,
    ROOM,
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
