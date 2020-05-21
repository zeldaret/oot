#include "z_en_clear_tag.h"

#define FLAGS 0x00000035

#define THIS ((EnClearTag*)thisx)

void EnClearTag_Init(Actor* thisx, GlobalContext* globalCtx);
void EnClearTag_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnClearTag_Update(Actor* thisx, GlobalContext* globalCtx);
void EnClearTag_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Clear_Tag_InitVars = {
    ACTOR_EN_CLEAR_TAG,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnClearTag),
    (ActorFunc)EnClearTag_Init,
    (ActorFunc)EnClearTag_Destroy,
    (ActorFunc)EnClearTag_Update,
    (ActorFunc)EnClearTag_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Clear_Tag/func_809D35B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Clear_Tag/func_809D36A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Clear_Tag/func_809D3798.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Clear_Tag/func_809D38BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Clear_Tag/EnClearTag_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Clear_Tag/EnClearTag_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Clear_Tag/func_809D3B80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Clear_Tag/EnClearTag_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Clear_Tag/EnClearTag_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Clear_Tag/func_809D5004.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Clear_Tag/func_809D53CC.s")
