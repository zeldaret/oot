#include "z_item_etcetera.h"

#define ROOM  0x00
#define FLAGS 0x00000010

void ItemEtcetera_Init(ItemEtcetera* this, GlobalContext* globalCtx);
void ItemEtcetera_Destroy(ItemEtcetera* this, GlobalContext* globalCtx);
void ItemEtcetera_Update(ItemEtcetera* this, GlobalContext* globalCtx);

/*
const ActorInit Item_Etcetera_InitVars =
{
    ACTOR_ITEM_ETCETERA,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ItemEtcetera),
    (ActorFunc)ItemEtcetera_Init,
    (ActorFunc)ItemEtcetera_Destroy,
    (ActorFunc)ItemEtcetera_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Etcetera/func_80B855F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Etcetera/ItemEtcetera_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Etcetera/ItemEtcetera_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Etcetera/func_80B857D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Etcetera/func_80B85824.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Etcetera/func_80B858B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Etcetera/func_80B8598C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Etcetera/func_80B85A98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Etcetera/func_80B85B28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Etcetera/func_80B85B6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Etcetera/ItemEtcetera_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Etcetera/func_80B85C64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Etcetera/func_80B85CB8.s")
