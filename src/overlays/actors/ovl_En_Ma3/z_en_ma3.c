#include "z_en_ma3.h"

#define ROOM  0x00
#define FLAGS 0x00000039

void EnMa3_Init(EnMa3* this, GlobalContext* globalCtx);
void EnMa3_Destroy(EnMa3* this, GlobalContext* globalCtx);
void EnMa3_Update(EnMa3* this, GlobalContext* globalCtx);
void EnMa3_Draw(EnMa3* this, GlobalContext* globalCtx);

/*
const ActorInit En_Ma3_InitVars =
{
    ACTOR_EN_MA3,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_MA2,
    sizeof(EnMa3),
    (ActorFunc)EnMa3_Init,
    (ActorFunc)EnMa3_Destroy,
    (ActorFunc)EnMa3_Update,
    (ActorFunc)EnMa3_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma3/func_80AA2AA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma3/func_80AA2BD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma3/func_80AA2E54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma3/func_80AA2EC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma3/func_80AA2F28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma3/func_80AA2F80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma3/func_80AA3004.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma3/EnMa3_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma3/EnMa3_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma3/func_80AA3200.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma3/EnMa3_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma3/func_80AA3344.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma3/func_80AA3580.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma3/EnMa3_Draw.s")
