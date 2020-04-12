#include "z_efc_erupc.h"

#define FLAGS 0x00000030

void EfcErupc_Init(EfcErupc* this, GlobalContext* globalCtx);
void EfcErupc_Destroy(EfcErupc* this, GlobalContext* globalCtx);
void EfcErupc_Update(EfcErupc* this, GlobalContext* globalCtx);
void EfcErupc_Draw(EfcErupc* this, GlobalContext* globalCtx);

/*
const ActorInit Efc_Erupc_InitVars = {
    ACTOR_EFC_ERUPC,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_EFC_ERUPC,
    sizeof(EfcErupc),
    (ActorFunc)EfcErupc_Init,
    (ActorFunc)EfcErupc_Destroy,
    (ActorFunc)EfcErupc_Update,
    (ActorFunc)EfcErupc_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Efc_Erupc/func_8099CCB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Efc_Erupc/EfcErupc_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Efc_Erupc/EfcErupc_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Efc_Erupc/func_8099CD2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Efc_Erupc/EfcErupc_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Efc_Erupc/EfcErupc_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Efc_Erupc/func_8099D334.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Efc_Erupc/func_8099D52C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Efc_Erupc/func_8099D650.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Efc_Erupc/func_8099D71C.s")
