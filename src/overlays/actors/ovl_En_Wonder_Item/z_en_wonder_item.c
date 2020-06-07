/*
 * File: z_en_wonder_item.c
 * Overlay: ovl_En_Wonder_Item
 * Description: Invisible Collectable; Used in MQ to create "Cow" switches
 */

#include "z_en_wonder_item.h"

#define FLAGS 0x00000000

#define THIS ((EnWonderItem*)thisx)

void EnWonderItem_Init(Actor* thisx, GlobalContext* globalCtx);
void EnWonderItem_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnWonderItem_Update(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Wonder_Item_InitVars = {
    ACTOR_EN_WONDER_ITEM,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnWonderItem),
    (ActorFunc)EnWonderItem_Init,
    (ActorFunc)EnWonderItem_Destroy,
    (ActorFunc)EnWonderItem_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wonder_Item/EnWonderItem_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wonder_Item/func_80B380A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wonder_Item/EnWonderItem_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wonder_Item/func_80B38570.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wonder_Item/func_80B38788.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wonder_Item/func_80B387F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wonder_Item/func_80B38824.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wonder_Item/func_80B388AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wonder_Item/func_80B38AD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wonder_Item/func_80B38B78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wonder_Item/EnWonderItem_Update.s")
