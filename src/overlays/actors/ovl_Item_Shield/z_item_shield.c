/*
 * File: z_item_shield.c
 * Overlay: ovl_Item_Shield
 * Description: Deku Shield
 */

#include "z_item_shield.h"

#define FLAGS 0x00000010

#define THIS ((ItemShield*)thisx)

void ItemShield_Init(Actor* thisx, GlobalContext* globalCtx);
void ItemShield_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ItemShield_Update(Actor* thisx, GlobalContext* globalCtx);
void ItemShield_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_060224F8;

/*
const ActorInit Item_Shield_InitVars = {
    ACTOR_ITEM_SHIELD,
    ACTORTYPE_ITEMACTION,
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
