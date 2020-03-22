#include "z_en_butte.h"

#define ROOM 0x00
#define FLAGS 0x00000000

void EnButte_Init(EnButte* this, GlobalContext* globalCtx);
void EnButte_Destroy(EnButte* this, GlobalContext* globalCtx);
void EnButte_Update(EnButte* this, GlobalContext* globalCtx);
void EnButte_Draw(EnButte* this, GlobalContext* globalCtx);

/*
const ActorInit En_Butte_InitVars =
{
    ACTOR_EN_BUTTE,
    ACTORTYPE_ITEMACTION,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_FIELD_KEEP,
    sizeof(EnButte),
    (ActorFunc)EnButte_Init,
    (ActorFunc)EnButte_Destroy,
    (ActorFunc)EnButte_Update,
    (ActorFunc)EnButte_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Butte/func_809CD070.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Butte/func_809CD0F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Butte/func_809CD110.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Butte/func_809CD144.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Butte/EnButte_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Butte/EnButte_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Butte/func_809CD56C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Butte/func_809CD634.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Butte/func_809CD6FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Butte/func_809CD79C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Butte/func_809CD7E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Butte/func_809CDBCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Butte/func_809CDC18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Butte/func_809CDFC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Butte/func_809CE014.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Butte/func_809CE0D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Butte/func_809CE0EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Butte/EnButte_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Butte/EnButte_Draw.s")
