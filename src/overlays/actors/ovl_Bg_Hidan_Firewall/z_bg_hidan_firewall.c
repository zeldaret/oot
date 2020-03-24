#include "z_bg_hidan_firewall.h"

#define ROOM 0x00
#define FLAGS 0x00000000

void BgHidanFirewall_Init(BgHidanFirewall* this, GlobalContext* globalCtx);
void BgHidanFirewall_Destroy(BgHidanFirewall* this, GlobalContext* globalCtx);
void BgHidanFirewall_Update(BgHidanFirewall* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Hidan_Firewall_InitVars = {
    ACTOR_BG_HIDAN_FIREWALL,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_HIDAN_OBJECTS,
    sizeof(BgHidanFirewall),
    (ActorFunc)BgHidanFirewall_Init,
    (ActorFunc)BgHidanFirewall_Destroy,
    (ActorFunc)BgHidanFirewall_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Firewall/BgHidanFirewall_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Firewall/BgHidanFirewall_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Firewall/func_80886728.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Firewall/func_80886794.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Firewall/func_808867DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Firewall/func_80886810.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Firewall/func_80886898.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Firewall/func_808868FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Firewall/BgHidanFirewall_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Firewall/func_80886B34.s")
