#include "z_en_arrow.h"

#define ROOM  0x00
#define FLAGS 0x00000030

void EnArrow_Init(EnArrow* this, GlobalContext* globalCtx);
void EnArrow_Destroy(EnArrow* this, GlobalContext* globalCtx);
void EnArrow_Update(EnArrow* this, GlobalContext* globalCtx);
void EnArrow_Draw(EnArrow* this, GlobalContext* globalCtx);

/*
const ActorInit En_Arrow_InitVars =
{
    ACTOR_EN_ARROW,
    ACTORTYPE_ITEMACTION,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnArrow),
    (ActorFunc)EnArrow_Init,
    (ActorFunc)EnArrow_Destroy,
    (ActorFunc)EnArrow_Update,
    (ActorFunc)EnArrow_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B3920.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/EnArrow_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/EnArrow_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B3BD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B3CEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B3DD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B3FDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B45E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B4640.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/EnArrow_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B4800.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/EnArrow_Draw.s")
