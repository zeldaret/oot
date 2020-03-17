#include "z_eff_dust.h"

#define ROOM  0x00
#define FLAGS 0x00000030

void EffDust_Init(EffDust* this, GlobalContext* globalCtx);
void EffDust_Destroy(EffDust* this, GlobalContext* globalCtx);
void EffDust_Update(EffDust* this, GlobalContext* globalCtx);
void EffDust_Draw(EffDust* this, GlobalContext* globalCtx);

/*
const ActorInit Eff_Dust_InitVars =
{
    ACTOR_EFF_DUST,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EffDust),
    (ActorFunc)EffDust_Init,
    (ActorFunc)EffDust_Destroy,
    (ActorFunc)EffDust_Update,
    (ActorFunc)EffDust_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/func_8099D8D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/func_8099D8D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/func_8099D8E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/EffDust_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/EffDust_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/func_8099DB28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/func_8099DD74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/func_8099DFC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/EffDust_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/func_8099E4F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/func_8099E784.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/EffDust_Draw.s")
