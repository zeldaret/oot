#include "z_item_b_heart.h"

#define ROOM  0x00
#define FLAGS 0x00000000

void ItemBHeart_Init(ItemBHeart* this, GlobalContext* globalCtx);
void ItemBHeart_Destroy(ItemBHeart* this, GlobalContext* globalCtx);
void ItemBHeart_Update(ItemBHeart* this, GlobalContext* globalCtx);
void ItemBHeart_Draw(ItemBHeart* this, GlobalContext* globalCtx);

/*
const ActorInit Item_B_Heart_InitVars =
{
    ACTOR_ITEM_B_HEART,
    ACTORTYPE_MISC,
    ROOM,
    FLAGS,
    OBJECT_GI_HEARTS,
    sizeof(ItemBHeart),
    (ActorFunc)ItemBHeart_Init,
    (ActorFunc)ItemBHeart_Destroy,
    (ActorFunc)ItemBHeart_Update,
    (ActorFunc)ItemBHeart_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_B_Heart/ItemBHeart_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_B_Heart/ItemBHeart_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_B_Heart/ItemBHeart_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_B_Heart/func_80B85264.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Item_B_Heart/ItemBHeart_Draw.s")
