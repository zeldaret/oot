#include "z_item_shield.h"

#define ROOM  0x00
#define FLAGS 0x00000010

void ItemShield_Init(ItemShield* this, GlobalContext* globalCtx);
void ItemShield_Destroy(ItemShield* this, GlobalContext* globalCtx);
void ItemShield_Update(ItemShield* this, GlobalContext* globalCtx);
void ItemShield_Draw(ItemShield* this, GlobalContext* globalCtx);

/*
const ActorInit Item_Shield_InitVars =
{
    ACTOR_ITEM_SHIELD,
    ACTORTYPE_ITEMACTION,
    ROOM,
    FLAGS,
    OBJECT_LINK_CHILD,
    sizeof(ItemShield),
    (ActorFunc)ItemShield_Init,
    (ActorFunc)ItemShield_Destroy,
    (ActorFunc)ItemShield_Update,
    (ActorFunc)ItemShield_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Shield/func_80B86920.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Shield/ItemShield_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Shield/ItemShield_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Shield/func_80B86AC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Shield/func_80B86BC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Shield/func_80B86CA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Shield/func_80B86F68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Shield/ItemShield_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_Shield/ItemShield_Draw.s")
