#include "z_en_insect.h"

#define FLAGS 0x00000000

void EnInsect_Init(EnInsect* this, GlobalContext* globalCtx);
void EnInsect_Destroy(EnInsect* this, GlobalContext* globalCtx);
void EnInsect_Update(EnInsect* this, GlobalContext* globalCtx);
void EnInsect_Draw(EnInsect* this, GlobalContext* globalCtx);

/*
const ActorInit En_Insect_InitVars = {
    ACTOR_EN_INSECT,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnInsect),
    (ActorFunc)EnInsect_Init,
    (ActorFunc)EnInsect_Destroy,
    (ActorFunc)EnInsect_Update,
    (ActorFunc)EnInsect_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7BE20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7BE40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7BE6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7BF58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7BFA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7C058.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/EnInsect_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/EnInsect_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7C3A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7C3F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7C598.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7C5EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7C818.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7C86C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7CA64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7CAD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7CBC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7CC3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7CE60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7CEC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7D1F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7D26C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7D39C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7D460.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/EnInsect_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/EnInsect_Draw.s")
