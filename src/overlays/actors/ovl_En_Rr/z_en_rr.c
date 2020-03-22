#include "z_en_rr.h"

#define ROOM 0x00
#define FLAGS 0x00000435

void EnRr_Init(EnRr* this, GlobalContext* globalCtx);
void EnRr_Destroy(EnRr* this, GlobalContext* globalCtx);
void EnRr_Update(EnRr* this, GlobalContext* globalCtx);
void EnRr_Draw(EnRr* this, GlobalContext* globalCtx);

/*
const ActorInit En_Rr_InitVars =
{
    ACTOR_EN_RR,
    ACTORTYPE_ENEMY,
    ROOM,
    FLAGS,
    OBJECT_RR,
    sizeof(EnRr),
    (ActorFunc)EnRr_Init,
    (ActorFunc)EnRr_Destroy,
    (ActorFunc)EnRr_Update,
    (ActorFunc)EnRr_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rr/EnRr_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rr/EnRr_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rr/func_80AE861C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rr/func_80AE8644.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rr/func_80AE8744.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rr/func_80AE8810.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rr/func_80AE8918.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rr/func_80AE8968.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rr/func_80AE8B78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rr/func_80AE8C44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rr/func_80AE8CF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rr/func_80AE8D9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rr/func_80AE8EA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rr/func_80AE926C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rr/func_80AE942C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rr/func_80AE95B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rr/func_80AE9670.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rr/func_80AE978C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rr/func_80AE9880.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rr/func_80AE98F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rr/func_80AE9C88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rr/func_80AE9D1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rr/EnRr_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rr/EnRr_Draw.s")
