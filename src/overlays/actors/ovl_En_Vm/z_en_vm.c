#include "z_en_vm.h"

#define ROOM 0x00
#define FLAGS 0x00000011

void EnVm_Init(EnVm* this, GlobalContext* globalCtx);
void EnVm_Destroy(EnVm* this, GlobalContext* globalCtx);
void EnVm_Update(EnVm* this, GlobalContext* globalCtx);
void EnVm_Draw(EnVm* this, GlobalContext* globalCtx);

/*
const ActorInit En_Vm_InitVars = {
    ACTOR_EN_VM,
    ACTORTYPE_ENEMY,
    ROOM,
    FLAGS,
    OBJECT_VM,
    sizeof(EnVm),
    (ActorFunc)EnVm_Init,
    (ActorFunc)EnVm_Destroy,
    (ActorFunc)EnVm_Update,
    (ActorFunc)EnVm_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/func_80B2D460.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/EnVm_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/EnVm_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/func_80B2D600.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/func_80B2D68C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/func_80B2D9D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/func_80B2DA7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/func_80B2DCC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/func_80B2DD70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/func_80B2DE7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/func_80B2DF84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/func_80B2E034.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/EnVm_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/func_80B2E2D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/func_80B2E340.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/EnVm_Draw.s")
