#include "z_en_bombf.h"

#define FLAGS 0x00000011

void EnBombf_Init(EnBombf* this, GlobalContext* globalCtx);
void EnBombf_Destroy(EnBombf* this, GlobalContext* globalCtx);
void EnBombf_Update(EnBombf* this, GlobalContext* globalCtx);
void EnBombf_Draw(EnBombf* this, GlobalContext* globalCtx);

/*
const ActorInit En_Bombf_InitVars = {
    ACTOR_EN_BOMBF,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_BOMBF,
    sizeof(EnBombf),
    (ActorFunc)EnBombf_Init,
    (ActorFunc)EnBombf_Destroy,
    (ActorFunc)EnBombf_Update,
    (ActorFunc)EnBombf_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bombf/func_809C6F60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bombf/EnBombf_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bombf/EnBombf_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bombf/func_809C7180.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bombf/func_809C71A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bombf/func_809C74AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bombf/func_809C75C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bombf/func_809C7624.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bombf/EnBombf_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bombf/func_809C7F24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bombf/EnBombf_Draw.s")
