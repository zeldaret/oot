#include "z_en_po_desert.h"

#define ROOM  0x00
#define FLAGS 0x00001090

void EnPoDesert_Init(EnPoDesert* this, GlobalContext* globalCtx);
void EnPoDesert_Destroy(EnPoDesert* this, GlobalContext* globalCtx);
void EnPoDesert_Update(EnPoDesert* this, GlobalContext* globalCtx);
void EnPoDesert_Draw(EnPoDesert* this, GlobalContext* globalCtx);

/*
const ActorInit En_Po_Desert_InitVars =
{
    ACTOR_EN_PO_DESERT,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_PO_FIELD,
    sizeof(EnPoDesert),
    (ActorFunc)EnPoDesert_Init,
    (ActorFunc)EnPoDesert_Destroy,
    (ActorFunc)EnPoDesert_Update,
    (ActorFunc)EnPoDesert_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Desert/EnPoDesert_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Desert/EnPoDesert_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Desert/func_80AD2E64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Desert/func_80AD2FBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Desert/func_80AD2FFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Desert/func_80AD305C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Desert/func_80AD30D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Desert/func_80AD3194.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Desert/func_80AD3328.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Desert/EnPoDesert_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Desert/func_80AD3504.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Desert/func_80AD3594.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Desert/EnPoDesert_Draw.s")
