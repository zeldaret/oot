/*
 * File: z_magic_fire.c
 * Overlay: ovl_Magic_Fire
 * Description: Din's Fire
 */

#include "z_magic_fire.h"

#define FLAGS 0x02000010

#define THIS ((MagicFire*)thisx)

void MagicFire_Init(Actor* thisx, GlobalContext* globalCtx);
void MagicFire_Destroy(Actor* thisx, GlobalContext* globalCtx);
void MagicFire_Update(Actor* thisx, GlobalContext* globalCtx);
void MagicFire_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Magic_Fire_InitVars = {
    ACTOR_MAGIC_FIRE,
    ACTORTYPE_ITEMACTION,
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
