#include "z_en_nb.h"

#define FLAGS 0x00000010

void EnNb_Init(EnNb* this, GlobalContext* globalCtx);
void EnNb_Destroy(EnNb* this, GlobalContext* globalCtx);
void EnNb_Update(EnNb* this, GlobalContext* globalCtx);
void EnNb_Draw(EnNb* this, GlobalContext* globalCtx);

/*
const ActorInit En_Nb_InitVars = {
    ACTOR_EN_NB,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_NB,
    sizeof(EnNb),
    (ActorFunc)EnNb_Init,
    (ActorFunc)EnNb_Destroy,
    (ActorFunc)EnNb_Update,
    (ActorFunc)EnNb_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB0D90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB0DA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB0DAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB0F04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB0F50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/EnNb_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB0FBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1040.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB10C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1164.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB11EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1210.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1284.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB12CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB12EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1310.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1390.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB13D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1420.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB14A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1530.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1578.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB15D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1650.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB166C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB16FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB174C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1778.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB180C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1878.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB18C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB18E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1904.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB193C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB197C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB19BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB19FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1A2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1A74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1A94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1B14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1B68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1CBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1D54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1D84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1DD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1E2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1FA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB1FFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2030.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2064.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2148.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2180.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB21E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2254.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB22CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB23A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB23D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB242C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2484.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB24CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB250C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2570.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB25BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2610.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2688.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB26C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB26DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2774.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB27F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB285C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB28DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2948.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB29C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2A28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2A68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2AE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2AFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2BF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2C18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2C60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2CCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2D38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2D9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2E1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2E70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2FC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB2FE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3150.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB319C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3228.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3260.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB32AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB32EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3320.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB33C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB33E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3428.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3468.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB34A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB359C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3660.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3684.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB36DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB378C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB37E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3838.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB38AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3914.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3A7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3B04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3B7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3BC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3C1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3C74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3CD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3D34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3DB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3E10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/EnNb_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/EnNb_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB3FE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB4074.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB4100.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB410C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/EnNb_Draw.s")
