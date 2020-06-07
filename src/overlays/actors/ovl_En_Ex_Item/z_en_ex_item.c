#include "z_en_ex_item.h"

#define FLAGS 0x00000030

#define THIS ((EnExItem*)thisx)

void EnExItem_Init(Actor* thisx, GlobalContext* globalCtx);
void EnExItem_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnExItem_Update(Actor* thisx, GlobalContext* globalCtx);
void EnExItem_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Ex_Item_InitVars = {
    ACTOR_EN_EX_ITEM,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnExItem),
    (ActorFunc)EnExItem_Init,
    (ActorFunc)EnExItem_Destroy,
    (ActorFunc)EnExItem_Update,
    (ActorFunc)EnExItem_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Item/EnExItem_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Item/EnExItem_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Item/func_80A09054.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Item/func_80A09434.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Item/func_80A0964C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Item/func_80A09670.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Item/func_80A096A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Item/func_80A09710.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Item/func_80A09724.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Item/func_80A09978.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Item/func_80A09A00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Item/EnExItem_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Item/EnExItem_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Item/func_80A09B6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Item/func_80A09BCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Item/func_80A09BFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Item/func_80A09C40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Item/func_80A09D6C.s")
