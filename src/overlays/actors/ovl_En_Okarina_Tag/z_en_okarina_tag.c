#include "z_en_okarina_tag.h"

#define ROOM 0x00
#define FLAGS 0x02000010

void EnOkarinaTag_Init(EnOkarinaTag* this, GlobalContext* globalCtx);
void EnOkarinaTag_Destroy(EnOkarinaTag* this, GlobalContext* globalCtx);
void EnOkarinaTag_Update(EnOkarinaTag* this, GlobalContext* globalCtx);

/*
const ActorInit En_Okarina_Tag_InitVars =
{
    ACTOR_EN_OKARINA_TAG,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnOkarinaTag),
    (ActorFunc)EnOkarinaTag_Init,
    (ActorFunc)EnOkarinaTag_Destroy,
    (ActorFunc)EnOkarinaTag_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okarina_Tag/EnOkarinaTag_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okarina_Tag/EnOkarinaTag_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okarina_Tag/func_80ABEF2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okarina_Tag/func_80ABF0CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okarina_Tag/func_80ABF28C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okarina_Tag/func_80ABF4C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okarina_Tag/func_80ABF708.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okarina_Tag/func_80ABF7CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Okarina_Tag/EnOkarinaTag_Update.s")
