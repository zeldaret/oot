#include "z_en_dnt_nomal.h"

#define ROOM 0x00
#define FLAGS 0x00000030

void EnDntNomal_Init(EnDntNomal* this, GlobalContext* globalCtx);
void EnDntNomal_Destroy(EnDntNomal* this, GlobalContext* globalCtx);
void EnDntNomal_Update(EnDntNomal* this, GlobalContext* globalCtx);

/*
const ActorInit En_Dnt_Nomal_InitVars =
{
    ACTOR_EN_DNT_NOMAL,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnDntNomal),
    (ActorFunc)EnDntNomal_Init,
    (ActorFunc)EnDntNomal_Destroy,
    (ActorFunc)EnDntNomal_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/EnDntNomal_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/EnDntNomal_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F3480.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F35CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F3624.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F36CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F39B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F3AD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F3B40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F3BE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F3CD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F3D84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F3E30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F3ED4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F3F6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F40D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F42A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F4310.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F43C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F43F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F44FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F4730.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F4824.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F48FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F49A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F4BA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F4CB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F4E18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F4EF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F50B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F50EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F51B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F5478.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F551C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/EnDntNomal_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F58E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F59E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F5A6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Nomal/func_809F5C98.s")
