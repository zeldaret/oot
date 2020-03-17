#include "z_en_siofuki.h"

#define ROOM  0x00
#define FLAGS 0x00000030

void EnSiofuki_Init(EnSiofuki* this, GlobalContext* globalCtx);
void EnSiofuki_Destroy(EnSiofuki* this, GlobalContext* globalCtx);
void EnSiofuki_Update(EnSiofuki* this, GlobalContext* globalCtx);
void EnSiofuki_Draw(EnSiofuki* this, GlobalContext* globalCtx);

/*
const ActorInit En_Siofuki_InitVars =
{
    ACTOR_EN_SIOFUKI,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_SIOFUKI,
    sizeof(EnSiofuki),
    (ActorFunc)EnSiofuki_Init,
    (ActorFunc)EnSiofuki_Destroy,
    (ActorFunc)EnSiofuki_Update,
    (ActorFunc)EnSiofuki_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Siofuki/EnSiofuki_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Siofuki/EnSiofuki_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Siofuki/func_80AFBDC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Siofuki/func_80AFBE8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Siofuki/func_80AFC1D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Siofuki/func_80AFC218.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Siofuki/func_80AFC34C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Siofuki/func_80AFC3C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Siofuki/func_80AFC478.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Siofuki/func_80AFC544.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Siofuki/EnSiofuki_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Siofuki/EnSiofuki_Draw.s")
