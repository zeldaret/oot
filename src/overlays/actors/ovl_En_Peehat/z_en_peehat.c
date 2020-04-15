#include "z_en_peehat.h"

#define FLAGS 0x01000015

void EnPeehat_Init(EnPeehat* this, GlobalContext* globalCtx);
void EnPeehat_Destroy(EnPeehat* this, GlobalContext* globalCtx);
void EnPeehat_Update(EnPeehat* this, GlobalContext* globalCtx);
void EnPeehat_Draw(EnPeehat* this, GlobalContext* globalCtx);

/*
const ActorInit En_Peehat_InitVars = {
    ACTOR_EN_PEEHAT,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_PEEHAT,
    sizeof(EnPeehat),
    (ActorFunc)EnPeehat_Init,
    (ActorFunc)EnPeehat_Destroy,
    (ActorFunc)EnPeehat_Update,
    (ActorFunc)EnPeehat_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80ACF4A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/EnPeehat_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/EnPeehat_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80ACF788.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80ACF920.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80ACFB34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80ACFBCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80ACFD20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80ACFDAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80ACFEB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80ACFEF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80AD0070.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80AD0118.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80AD02E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80AD038C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80AD0558.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80AD05A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80AD0720.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80AD076C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80AD0B3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80AD0B84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80AD0D3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80AD0D84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80AD0F38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80AD0FC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80AD1220.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80AD1258.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80AD1440.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80AD14A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80AD167C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80AD1700.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80AD177C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80AD17E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80AD1AA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80AD1B00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80AD1BD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/EnPeehat_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80AD2224.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/func_80AD2438.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Peehat/EnPeehat_Draw.s")
