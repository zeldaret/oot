#include "z_en_dha.h"

#define ROOM 0x00
#define FLAGS 0x00000015

void EnDha_Init(EnDha* this, GlobalContext* globalCtx);
void EnDha_Destroy(EnDha* this, GlobalContext* globalCtx);
void EnDha_Update(EnDha* this, GlobalContext* globalCtx);
void EnDha_Draw(EnDha* this, GlobalContext* globalCtx);

/*
const ActorInit En_Dha_InitVars =
{
    ACTOR_EN_DHA,
    ACTORTYPE_ENEMY,
    ROOM,
    FLAGS,
    OBJECT_DH,
    sizeof(EnDha),
    (ActorFunc)EnDha_Init,
    (ActorFunc)EnDha_Destroy,
    (ActorFunc)EnDha_Update,
    (ActorFunc)EnDha_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dha/func_809EC880.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dha/EnDha_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dha/EnDha_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dha/func_809EC9C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dha/func_809ECA50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dha/func_809ECF60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dha/func_809ECF8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dha/func_809ED054.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dha/func_809ED0C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dha/func_809ED27C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dha/EnDha_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dha/func_809ED414.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dha/func_809ED4B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dha/EnDha_Draw.s")
