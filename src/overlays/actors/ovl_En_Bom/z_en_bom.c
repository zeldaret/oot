#include "z_en_bom.h"

#define ROOM  0x00
#define FLAGS 0x00000030

void EnBom_Init(EnBom* this, GlobalContext* globalCtx);
void EnBom_Destroy(EnBom* this, GlobalContext* globalCtx);
void EnBom_Update(EnBom* this, GlobalContext* globalCtx);
void EnBom_Draw(EnBom* this, GlobalContext* globalCtx);

/*
const ActorInit En_Bom_InitVars =
{
    ACTOR_EN_BOM,
    ACTORTYPE_EXPLOSIVES,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnBom),
    (ActorFunc)EnBom_Init,
    (ActorFunc)EnBom_Destroy,
    (ActorFunc)EnBom_Update,
    (ActorFunc)EnBom_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom/func_809C26D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom/EnBom_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom/EnBom_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom/func_809C282C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom/func_809C29F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom/func_809C2A38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom/EnBom_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom/EnBom_Draw.s")
