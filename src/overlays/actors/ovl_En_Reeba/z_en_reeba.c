#include "z_en_reeba.h"

#define ROOM 0x00
#define FLAGS 0x08000015

void EnReeba_Init(EnReeba* this, GlobalContext* globalCtx);
void EnReeba_Destroy(EnReeba* this, GlobalContext* globalCtx);
void EnReeba_Update(EnReeba* this, GlobalContext* globalCtx);
void EnReeba_Draw(EnReeba* this, GlobalContext* globalCtx);

/*
const ActorInit En_Reeba_InitVars =
{
    ACTOR_EN_REEBA,
    ACTORTYPE_MISC,
    ROOM,
    FLAGS,
    OBJECT_REEBA,
    sizeof(EnReeba),
    (ActorFunc)EnReeba_Init,
    (ActorFunc)EnReeba_Destroy,
    (ActorFunc)EnReeba_Update,
    (ActorFunc)EnReeba_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/EnReeba_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/EnReeba_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/func_80AE4F40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/func_80AE5054.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/func_80AE5270.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/func_80AE538C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/func_80AE53AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/func_80AE561C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/func_80AE5688.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/func_80AE56E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/func_80AE57F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/func_80AE5854.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/func_80AE58EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/func_80AE5938.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/func_80AE5A9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/func_80AE5BC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/func_80AE5C38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/func_80AE5E48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/func_80AE5EDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/EnReeba_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Reeba/EnReeba_Draw.s")
