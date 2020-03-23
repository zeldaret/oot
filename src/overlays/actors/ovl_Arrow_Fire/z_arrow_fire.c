#include "z_arrow_fire.h"

#define ROOM 0x00
#define FLAGS 0x02000010

void ArrowFire_Init(ArrowFire* this, GlobalContext* globalCtx);
void ArrowFire_Destroy(ArrowFire* this, GlobalContext* globalCtx);
void ArrowFire_Update(ArrowFire* this, GlobalContext* globalCtx);
void ArrowFire_Draw(ArrowFire* this, GlobalContext* globalCtx);

/*
const ActorInit Arrow_Fire_InitVars =
{
    ACTOR_ARROW_FIRE,
    ACTORTYPE_ITEMACTION,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ArrowFire),
    (ActorFunc)ArrowFire_Init,
    (ActorFunc)ArrowFire_Destroy,
    (ActorFunc)ArrowFire_Update,
    (ActorFunc)ArrowFire_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Fire/func_80865D10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Fire/ArrowFire_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Fire/ArrowFire_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Fire/func_80865DD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Fire/func_80865ECC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Fire/func_80865F1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Fire/func_808660E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Fire/ArrowFire_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Fire/ArrowFire_Draw.s")
