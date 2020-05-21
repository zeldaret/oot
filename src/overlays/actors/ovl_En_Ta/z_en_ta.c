/*
 * File: z_en_ta.c
 * Overlay: ovl_En_Ta
 * Description: Talon
 */

#include "z_en_ta.h"

#define FLAGS 0x00000009

#define THIS ((EnTa*)thisx)

void EnTa_Init(Actor* thisx, GlobalContext* globalCtx);
void EnTa_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnTa_Update(Actor* thisx, GlobalContext* globalCtx);
void EnTa_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Ta_InitVars = {
    ACTOR_EN_TA,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_TA,
    sizeof(EnTa),
    (ActorFunc)EnTa_Init,
    (ActorFunc)EnTa_Destroy,
    (ActorFunc)EnTa_Update,
    (ActorFunc)EnTa_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B13AA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B13AAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/EnTa_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14248.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/EnTa_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B142F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14398.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B143D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14410.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B1448C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B144D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14570.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B145F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14634.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B146F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14754.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14818.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14898.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B1490C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B1496C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B149F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14A54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14AF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14B6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14C18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14C60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14CAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14D4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14D98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14DD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14E28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14EDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14F20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B14FAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B15034.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B150AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B15100.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B15260.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B152D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B15308.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B153D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B15424.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B154FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B1585C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B15AD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B15BF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B15CC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B15D90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B15E28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B15E80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B15F54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B15FE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B161C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B162E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B16364.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B1642C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B16504.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B16608.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B166CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B16700.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B167C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B167FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B16854.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B16938.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/EnTa_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B16B1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/func_80B16CA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ta/EnTa_Draw.s")
