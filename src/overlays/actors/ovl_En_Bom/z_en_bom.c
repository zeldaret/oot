#include "z_en_bom.h"

#define FLAGS 0x00000030

#define THIS ((EnBom*)thisx)

void EnBom_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBom_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBom_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBom_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Bom_InitVars = {
    ACTOR_EN_BOM,
    ACTORTYPE_EXPLOSIVES,
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
