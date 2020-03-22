#include "z_en_sth.h"

#define ROOM 0x00
#define FLAGS 0x00000019

void EnSth_Init(EnSth* this, GlobalContext* globalCtx);
void EnSth_Destroy(EnSth* this, GlobalContext* globalCtx);
void EnSth_Update(EnSth* this, GlobalContext* globalCtx);

/*
const ActorInit En_Sth_InitVars =
{
    ACTOR_EN_STH,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnSth),
    (ActorFunc)EnSth_Init,
    (ActorFunc)EnSth_Destroy,
    (ActorFunc)EnSth_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07540.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/EnSth_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B076B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07734.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/EnSth_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07878.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B078C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B079E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07AF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07B68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07BEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07C88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07D00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07D7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07E18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/EnSth_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07EE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07FE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B0813C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B081EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B08258.s")
