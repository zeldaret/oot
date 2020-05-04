#include "z_en_part.h"

#define FLAGS 0x00000010

#define THIS ((EnPart*)thisx)

void EnPart_Init(Actor* thisx, GlobalContext* globalCtx);
void EnPart_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnPart_Update(Actor* thisx, GlobalContext* globalCtx);
void EnPart_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Part_InitVars = {
    ACTOR_EN_PART,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnPart),
    (ActorFunc)EnPart_Init,
    (ActorFunc)EnPart_Destroy,
    (ActorFunc)EnPart_Update,
    (ActorFunc)EnPart_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Part/EnPart_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Part/EnPart_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Part/func_80ACDDE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Part/func_80ACE13C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Part/func_80ACE5B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Part/func_80ACE5C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Part/func_80ACE7E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Part/EnPart_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Part/func_80ACEAC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Part/EnPart_Draw.s")
