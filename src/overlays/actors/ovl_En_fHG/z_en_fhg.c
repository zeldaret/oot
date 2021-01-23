/*
 * File: z_en_fhg.c
 * Overlay: ovl_En_fHG
 * Description: Phantom Ganon's Horse
 */

#include "z_en_fhg.h"

#define FLAGS 0x00000010

#define THIS ((EnfHG*)thisx)

void EnfHG_Init(Actor* thisx, GlobalContext* globalCtx);
void EnfHG_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnfHG_Update(Actor* thisx, GlobalContext* globalCtx);
void EnfHG_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_fHG_InitVars = {
    ACTOR_EN_FHG,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_FHG,
    sizeof(EnfHG),
    (ActorFunc)EnfHG_Init,
    (ActorFunc)EnfHG_Destroy,
    (ActorFunc)EnfHG_Update,
    (ActorFunc)EnfHG_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_fHG/EnfHG_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_fHG/EnfHG_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_fHG/func_80B62B04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_fHG/func_80B62B6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_fHG/func_80B63D84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_fHG/func_80B6404C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_fHG/func_80B6424C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_fHG/func_80B6476C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_fHG/func_80B64AA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_fHG/func_80B64CF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_fHG/EnfHG_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_fHG/func_80B64E94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_fHG/EnfHG_Draw.s")
