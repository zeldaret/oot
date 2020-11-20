#include "z_en_dns.h"

#define FLAGS 0x00000009

#define THIS ((EnDns*)thisx)

void EnDns_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDns_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDns_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDns_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Dns_InitVars = {
    ACTOR_EN_DNS,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SHOPNUTS,
    sizeof(EnDns),
    (ActorFunc)EnDns_Init,
    (ActorFunc)EnDns_Destroy,
    (ActorFunc)EnDns_Update,
    (ActorFunc)EnDns_Draw,
};

static ColliderCylinderInit_Set3 sCylinderInit = {
    { COLTYPE_NONE, AT_OFF, AC_ON | AC_PLAYER, OC_ON | OC_ALL, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_ON },
    { 18, 32, 0, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/EnDns_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/EnDns_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/func_809EF51C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/func_809EF5A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/func_809EF658.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/func_809EF70C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/func_809EF73C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/func_809EF800.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/func_809EF854.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/func_809EF8F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/func_809EF9A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/func_809EF9F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/func_809EFA28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/func_809EFA58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/func_809EFA9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/func_809EFACC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/func_809EFAFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/func_809EFB40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/func_809EFB84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/func_809EFBC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/func_809EFC9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/func_809EFDD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/func_809EFEE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/func_809EFF50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/func_809EFF98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/func_809F008C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/func_809F0100.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/func_809F017C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/EnDns_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dns/EnDns_Draw.s")
