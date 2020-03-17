#include "z_magic_fire.h"

#define ROOM  0x00
#define FLAGS 0x02000010

void MagicFire_Init(MagicFire* this, GlobalContext* globalCtx);
void MagicFire_Destroy(MagicFire* this, GlobalContext* globalCtx);
void MagicFire_Update(MagicFire* this, GlobalContext* globalCtx);
void MagicFire_Draw(MagicFire* this, GlobalContext* globalCtx);

/*
const ActorInit Magic_Fire_InitVars =
{
    ACTOR_MAGIC_FIRE,
    ACTORTYPE_ITEMACTION,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(MagicFire),
    (ActorFunc)MagicFire_Init,
    (ActorFunc)MagicFire_Destroy,
    (ActorFunc)MagicFire_Update,
    (ActorFunc)MagicFire_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Fire/MagicFire_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Fire/MagicFire_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Fire/func_80B88E3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Fire/MagicFire_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Magic_Fire/MagicFire_Draw.s")
