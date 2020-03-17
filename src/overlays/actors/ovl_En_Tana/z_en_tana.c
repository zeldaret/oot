#include "z_en_tana.h"

#define ROOM  0x00
#define FLAGS 0x00000009

void EnTana_Init(EnTana* this, GlobalContext* globalCtx);
void EnTana_Destroy(EnTana* this, GlobalContext* globalCtx);
void EnTana_Update(EnTana* this, GlobalContext* globalCtx);

/*
const ActorInit En_Tana_InitVars =
{
    ACTOR_EN_TANA,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_SHOP_DUNGEN,
    sizeof(EnTana),
    (ActorFunc)EnTana_Init,
    (ActorFunc)EnTana_Destroy,
    (ActorFunc)EnTana_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tana/EnTana_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tana/EnTana_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tana/EnTana_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tana/func_80B17FC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tana/func_80B1809C.s")
