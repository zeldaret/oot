#include "z_en_cow.h"

#define ROOM  0x00
#define FLAGS 0x00000009

void EnCow_Init(EnCow* this, GlobalContext* globalCtx);
void EnCow_Destroy(EnCow* this, GlobalContext* globalCtx);
void EnCow_Update(EnCow* this, GlobalContext* globalCtx);
void EnCow_Draw(EnCow* this, GlobalContext* globalCtx);

/*
const ActorInit En_Cow_InitVars =
{
    ACTOR_EN_COW,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_COW,
    sizeof(EnCow),
    (ActorFunc)EnCow_Init,
    (ActorFunc)EnCow_Destroy,
    (ActorFunc)EnCow_Update,
    (ActorFunc)EnCow_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cow/func_809DEE00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cow/func_809DEE9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cow/func_809DEF94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cow/EnCow_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cow/EnCow_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cow/func_809DF494.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cow/func_809DF6BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cow/func_809DF730.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cow/func_809DF778.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cow/func_809DF7D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cow/func_809DF870.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cow/func_809DF8FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cow/func_809DF96C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cow/func_809DFA84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cow/EnCow_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cow/func_809DFE98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cow/func_809DFF84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cow/func_809DFFD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cow/EnCow_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cow/func_809E0070.s")
