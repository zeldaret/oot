/*
 * File: z_en_zo.c
 * Overlay: ovl_En_Zo
 * Description: Zora
 */

#include "z_en_zo.h"

#define FLAGS 0x00000009

#define THIS ((EnZo*)thisx)

void EnZo_Init(Actor* thisx, GlobalContext* globalCtx);
void EnZo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnZo_Update(Actor* thisx, GlobalContext* globalCtx);
void EnZo_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Zo_InitVars = {
    ACTOR_EN_ZO,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_ZO,
    sizeof(EnZo),
    (ActorFunc)EnZo_Init,
    (ActorFunc)EnZo_Destroy,
    (ActorFunc)EnZo_Update,
    (ActorFunc)EnZo_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zo/func_80B60220.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zo/func_80B602B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zo/func_80B603E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zo/func_80B60550.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zo/func_80B6060C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zo/func_80B6073C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zo/func_80B60874.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zo/func_80B60A60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zo/func_80B60C44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zo/func_80B60E34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zo/func_80B60EB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zo/func_80B61024.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zo/func_80B61298.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zo/func_80B613F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zo/func_80B61470.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zo/func_80B6154C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zo/func_80B615E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zo/EnZo_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zo/EnZo_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zo/func_80B618F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zo/func_80B619D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zo/func_80B61A14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zo/func_80B61AF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zo/func_80B61CA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zo/EnZo_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zo/func_80B61FCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zo/func_80B621E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zo/EnZo_Draw.s")
