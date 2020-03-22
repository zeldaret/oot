#include "z_en_ani.h"

#define ROOM 0x00
#define FLAGS 0x00000009

void EnAni_Init(EnAni* this, GlobalContext* globalCtx);
void EnAni_Destroy(EnAni* this, GlobalContext* globalCtx);
void EnAni_Update(EnAni* this, GlobalContext* globalCtx);
void EnAni_Draw(EnAni* this, GlobalContext* globalCtx);

/*
const ActorInit En_Ani_InitVars =
{
    ACTOR_EN_ANI,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_ANI,
    sizeof(EnAni),
    (ActorFunc)EnAni_Init,
    (ActorFunc)EnAni_Destroy,
    (ActorFunc)EnAni_Update,
    (ActorFunc)EnAni_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ani/func_809B0370.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ani/EnAni_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ani/EnAni_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ani/func_809B04B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ani/func_809B04F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ani/func_809B0524.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ani/func_809B0558.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ani/func_809B05F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ani/func_809B064C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ani/func_809B07F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ani/func_809B0988.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ani/func_809B0994.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ani/func_809B0A28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ani/func_809B0A6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ani/EnAni_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ani/func_809B0D90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ani/func_809B0DD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ani/EnAni_Draw.s")
