#include "z_en_g_switch.h"

#define FLAGS 0x00000030

void EnGSwitch_Init(EnGSwitch* this, GlobalContext* globalCtx);
void EnGSwitch_Destroy(EnGSwitch* this, GlobalContext* globalCtx);
void EnGSwitch_Update(EnGSwitch* this, GlobalContext* globalCtx);

/*
const ActorInit En_G_Switch_InitVars = {
    ACTOR_EN_G_SWITCH,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnGSwitch),
    (ActorFunc)EnGSwitch_Init,
    (ActorFunc)EnGSwitch_Destroy,
    (ActorFunc)EnGSwitch_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_G_Switch/EnGSwitch_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_G_Switch/EnGSwitch_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_G_Switch/func_80A22250.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_G_Switch/func_80A223F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_G_Switch/func_80A2248C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_G_Switch/func_80A22598.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_G_Switch/func_80A22680.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_G_Switch/func_80A22764.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_G_Switch/func_80A22B1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_G_Switch/func_80A22E00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_G_Switch/EnGSwitch_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_G_Switch/func_80A22FDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_G_Switch/func_80A230A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_G_Switch/func_80A23204.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_G_Switch/func_80A23314.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_G_Switch/func_80A234D4.s")
