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
    ACTORCAT_ITEMACTION,
    FLAGS,
    OBJECT_LINK_CHILD,
    sizeof(ItemShield),
    (ActorFunc)ItemShield_Init,
    (ActorFunc)ItemShield_Destroy,
    (ActorFunc)ItemShield_Update,
    (ActorFunc)ItemShield_Draw,
};

static ColliderCylinderInit D_80B871A0 = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000004, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_ON,
    },
    { 15, 15, 0, { 0, 0, 0 } },
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
