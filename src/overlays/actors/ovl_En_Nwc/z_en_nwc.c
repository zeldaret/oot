#include "z_en_nwc.h"

#define FLAGS 0x00000030

#define THIS ((EnNwc*)thisx)

void EnNwc_Init(Actor* thisx, GlobalContext* globalCtx);
void EnNwc_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnNwc_Update(Actor* thisx, GlobalContext* globalCtx);
void EnNwc_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Nwc_InitVars = {
    ACTOR_EN_NWC,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_NWC,
    sizeof(EnNwc),
    (ActorFunc)EnNwc_Init,
    (ActorFunc)EnNwc_Destroy,
    (ActorFunc)EnNwc_Update,
    (ActorFunc)EnNwc_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nwc/func_80ABC0E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nwc/func_80ABC0E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nwc/func_80ABC0F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nwc/func_80ABC1F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nwc/func_80ABC260.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nwc/func_80ABC460.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nwc/EnNwc_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nwc/EnNwc_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nwc/func_80ABC9D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nwc/EnNwc_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nwc/EnNwc_Draw.s")
