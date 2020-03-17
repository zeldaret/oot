#include "z_en_bom_bowl_pit.h"

#define ROOM  0x00
#define FLAGS 0x00000010

void EnBomBowlPit_Init(EnBomBowlPit* this, GlobalContext* globalCtx);
void EnBomBowlPit_Destroy(EnBomBowlPit* this, GlobalContext* globalCtx);
void EnBomBowlPit_Update(EnBomBowlPit* this, GlobalContext* globalCtx);

/*
const ActorInit En_Bom_Bowl_Pit_InitVars =
{
    ACTOR_EN_BOM_BOWL_PIT,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnBomBowlPit),
    (ActorFunc)EnBomBowlPit_Init,
    (ActorFunc)EnBomBowlPit_Destroy,
    (ActorFunc)EnBomBowlPit_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Pit/EnBomBowlPit_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Pit/EnBomBowlPit_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Pit/func_809C4E60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Pit/func_809C4E8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Pit/func_809C5184.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Pit/func_809C5360.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Pit/func_809C53F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Pit/func_809C54A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Pit/func_809C55B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Pit/func_809C5608.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Pit/EnBomBowlPit_Update.s")
