#include "z_arrow_light.h"

#define ROOM 0x00
#define FLAGS 0x02000010

void ArrowLight_Init(ArrowLight* this, GlobalContext* globalCtx);
void ArrowLight_Destroy(ArrowLight* this, GlobalContext* globalCtx);
void ArrowLight_Update(ArrowLight* this, GlobalContext* globalCtx);
void ArrowLight_Draw(ArrowLight* this, GlobalContext* globalCtx);

/*
const ActorInit Arrow_Light_InitVars =
{
    ACTOR_ARROW_LIGHT,
    ACTORTYPE_ITEMACTION,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ArrowLight),
    (ActorFunc)ArrowLight_Init,
    (ActorFunc)ArrowLight_Destroy,
    (ActorFunc)ArrowLight_Update,
    (ActorFunc)ArrowLight_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Light/func_80869CB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Light/ArrowLight_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Light/ArrowLight_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Light/func_80869D78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Light/func_80869E6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Light/func_80869EBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Light/func_8086A088.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Light/ArrowLight_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Light/ArrowLight_Draw.s")
