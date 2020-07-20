/*
 * File: z_item_etcetera.c
 * Overlay: ovl_Item_Etcetera
 * Description: Collectible Items
 */

#include "z_item_etcetera.h"

#define FLAGS 0x00000010

#define THIS ((ItemEtcetera*)thisx)

void ItemEtcetera_Init(Actor* thisx, GlobalContext* globalCtx);
void ItemEtcetera_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ItemEtcetera_Update(Actor* thisx, GlobalContext* globalCtx);

const ActorInit Item_Etcetera_InitVars = {
    ACTOR_ITEM_ETCETERA,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ItemEtcetera),
    (ActorFunc)ItemEtcetera_Init,
    (ActorFunc)ItemEtcetera_Destroy,
    (ActorFunc)ItemEtcetera_Update,
    NULL,
};

s16 D_80B85D20[] = {
    OBJECT_GI_BOTTLE, OBJECT_GI_BOTTLE_LETTER, OBJECT_GI_SHIELD_2, OBJECT_GI_ARROWCASE, OBJECT_GI_SCALE,
    OBJECT_GI_SCALE,  OBJECT_GI_KEY,           OBJECT_GI_M_ARROW,  OBJECT_GI_RUPY,      OBJECT_GI_RUPY,
    OBJECT_GI_RUPY,   OBJECT_GI_RUPY,          OBJECT_GI_HEARTS,   OBJECT_GI_KEY,
};

s16 D_80B85D3C[] = {
    0x0000, 0x0044, 0x002B, 0x0015, 0x0029, 0x002A, 0x0001, 0x005F, 0x006C, 0x006D, 0x006E, 0x0070, 0x0013, 0x0001,
};

s16 D_80B85D58[] = {
    GI_BOTTLE,     GI_LETTER_RUTO, GI_SHIELD_HYLIAN, GI_QUIVER_40, GI_SCALE_SILVER, GI_SCALE_GOLD, GI_KEY_SMALL,
    GI_ARROW_FIRE, GI_INVALID,     GI_INVALID,       GI_INVALID,   GI_INVALID,      GI_INVALID,    GI_INVALID,
};

Vec3f D_80B85D74 = { 0.0f, 0.2f, 0.0f };

Vec3f D_80B85D80 = { 0.0f, 0.05f, 0.0f };

Color_RGB8 D_80B85D8C = { 255, 255, 255 };

Color_RGB8 D_80B85D90 = { 255, 50, 50};

void ItemEtcetera_SetupAction(ItemEtcetera* this, ItemEtceteraActionFunc actionFunc)
{
	this->actionFunc_15C = actionFunc;
}

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
