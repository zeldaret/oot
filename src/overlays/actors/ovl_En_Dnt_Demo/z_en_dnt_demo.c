#include "z_en_dnt_demo.h"

#define FLAGS 0x00000000

void EnDntDemo_Init(EnDntDemo* this, GlobalContext* globalCtx);
void EnDntDemo_Destroy(EnDntDemo* this, GlobalContext* globalCtx);
void EnDntDemo_Update(EnDntDemo* this, GlobalContext* globalCtx);

/*
const ActorInit En_Dnt_Demo_InitVars = {
    ACTOR_EN_DNT_DEMO,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnDntDemo),
    (ActorFunc)EnDntDemo_Init,
    (ActorFunc)EnDntDemo_Destroy,
    (ActorFunc)EnDntDemo_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Demo/EnDntDemo_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Demo/EnDntDemo_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Demo/func_809F0AA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Demo/func_809F1100.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Demo/func_809F1374.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dnt_Demo/EnDntDemo_Update.s")
