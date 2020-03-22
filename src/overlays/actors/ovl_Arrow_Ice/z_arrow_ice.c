#include "z_arrow_ice.h"

#define ROOM 0x00
#define FLAGS 0x02000010

void ArrowIce_Init(ArrowIce* this, GlobalContext* globalCtx);
void ArrowIce_Destroy(ArrowIce* this, GlobalContext* globalCtx);
void ArrowIce_Update(ArrowIce* this, GlobalContext* globalCtx);
void ArrowIce_Draw(ArrowIce* this, GlobalContext* globalCtx);

/*
const ActorInit Arrow_Ice_InitVars =
{
    ACTOR_ARROW_ICE,
    ACTORTYPE_ITEMACTION,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ArrowIce),
    (ActorFunc)ArrowIce_Init,
    (ActorFunc)ArrowIce_Destroy,
    (ActorFunc)ArrowIce_Update,
    (ActorFunc)ArrowIce_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Ice/func_80867CD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Ice/ArrowIce_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Ice/ArrowIce_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Ice/func_80867D98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Ice/func_80867E8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Ice/func_80867EDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Ice/func_808680A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Ice/ArrowIce_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Ice/ArrowIce_Draw.s")
