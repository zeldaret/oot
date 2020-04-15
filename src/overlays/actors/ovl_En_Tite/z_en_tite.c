/*
 * File: z_en_tite.c
 * Overlay: ovl_En_Tite
 * Description: Tektite
 */

#include "z_en_tite.h"

#define FLAGS 0x00000015

void EnTite_Init(EnTite* this, GlobalContext* globalCtx);
void EnTite_Destroy(EnTite* this, GlobalContext* globalCtx);
void EnTite_Update(EnTite* this, GlobalContext* globalCtx);
void EnTite_Draw(EnTite* this, GlobalContext* globalCtx);

/*
const ActorInit En_Tite_InitVars = {
    ACTOR_EN_TITE,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_TITE,
    sizeof(EnTite),
    (ActorFunc)EnTite_Init,
    (ActorFunc)EnTite_Destroy,
    (ActorFunc)EnTite_Update,
    (ActorFunc)EnTite_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B18A80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/EnTite_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/EnTite_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B18C5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B18CC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B18E08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B18E7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B19524.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B195C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1985C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B19918.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B19E28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B19E94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1A1EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1A2A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1A63C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1A670.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1A6E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1A76C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1A888.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1AA44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1AA94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1ABBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/EnTite_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1B178.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/EnTite_Draw.s")
