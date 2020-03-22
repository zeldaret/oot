#include "z_en_bom_bowl_man.h"

#define ROOM 0x00
#define FLAGS 0x08000039

void EnBomBowlMan_Init(EnBomBowlMan* this, GlobalContext* globalCtx);
void EnBomBowlMan_Destroy(EnBomBowlMan* this, GlobalContext* globalCtx);
void EnBomBowlMan_Update(EnBomBowlMan* this, GlobalContext* globalCtx);
void EnBomBowlMan_Draw(EnBomBowlMan* this, GlobalContext* globalCtx);

/*
const ActorInit En_Bom_Bowl_Man_InitVars =
{
    ACTOR_EN_BOM_BOWL_MAN,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_BG,
    sizeof(EnBomBowlMan),
    (ActorFunc)EnBomBowlMan_Init,
    (ActorFunc)EnBomBowlMan_Destroy,
    (ActorFunc)EnBomBowlMan_Update,
    (ActorFunc)EnBomBowlMan_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Man/EnBomBowlMan_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Man/EnBomBowlMan_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Man/func_809C3820.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Man/func_809C38A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Man/func_809C395C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Man/func_809C39D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Man/func_809C3A54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Man/func_809C3B50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Man/func_809C3C7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Man/func_809C3CD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Man/func_809C3D40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Man/func_809C3DC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Man/func_809C4040.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Man/func_809C41FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Man/func_809C4318.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Man/func_809C441C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Man/func_809C4664.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Man/EnBomBowlMan_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Man/func_809C48A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Bowl_Man/EnBomBowlMan_Draw.s")
