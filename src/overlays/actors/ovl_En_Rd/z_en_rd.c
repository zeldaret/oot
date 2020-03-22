#include "z_en_rd.h"

#define ROOM 0x00
#define FLAGS 0x00000415

void EnRd_Init(EnRd* this, GlobalContext* globalCtx);
void EnRd_Destroy(EnRd* this, GlobalContext* globalCtx);
void EnRd_Update(EnRd* this, GlobalContext* globalCtx);
void EnRd_Draw(EnRd* this, GlobalContext* globalCtx);

/*
const ActorInit En_Rd_InitVars =
{
    ACTOR_EN_RD,
    ACTORTYPE_ENEMY,
    ROOM,
    FLAGS,
    OBJECT_RD,
    sizeof(EnRd),
    (ActorFunc)EnRd_Init,
    (ActorFunc)EnRd_Destroy,
    (ActorFunc)EnRd_Update,
    (ActorFunc)EnRd_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE2400.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/EnRd_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/EnRd_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE2630.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE269C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE2744.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE2970.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE2A10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE2B90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE2C1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE2F50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE2FD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE31DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE3260.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE33F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE3454.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE37BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE3834.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE392C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE3978.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE39D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE3A54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE3A8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE3B18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE3C20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE3C98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE3DE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE3ECC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE3F9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE4114.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/EnRd_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE44C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE4520.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/EnRd_Draw.s")
