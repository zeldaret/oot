#include "z_en_dy_extra.h"

#define FLAGS 0x00000030

#define THIS ((EnDyExtra*)thisx)

void EnDyExtra_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDyExtra_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDyExtra_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDyExtra_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Dy_Extra_InitVars = {
    ACTOR_EN_DY_EXTRA,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_DY_OBJ,
    sizeof(EnDyExtra),
    (ActorFunc)EnDyExtra_Init,
    (ActorFunc)EnDyExtra_Destroy,
    (ActorFunc)EnDyExtra_Update,
    (ActorFunc)EnDyExtra_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dy_Extra/EnDyExtra_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dy_Extra/EnDyExtra_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dy_Extra/func_809FF7AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dy_Extra/func_809FF840.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dy_Extra/EnDyExtra_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dy_Extra/EnDyExtra_Draw.s")
