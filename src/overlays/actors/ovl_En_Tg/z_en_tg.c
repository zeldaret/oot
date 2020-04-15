/*
 * File: z_en_tg.c
 * Overlay: ovl_En_Tg
 * Description: Honey & Darling
 */

#include "z_en_tg.h"

#define FLAGS 0x00000009

void EnTg_Init(EnTg* this, GlobalContext* globalCtx);
void EnTg_Destroy(EnTg* this, GlobalContext* globalCtx);
void EnTg_Update(EnTg* this, GlobalContext* globalCtx);
void EnTg_Draw(EnTg* this, GlobalContext* globalCtx);

/*
const ActorInit En_Tg_InitVars = {
    ACTOR_EN_TG,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_MU,
    sizeof(EnTg),
    (ActorFunc)EnTg_Init,
    (ActorFunc)EnTg_Destroy,
    (ActorFunc)EnTg_Update,
    (ActorFunc)EnTg_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tg/func_80B18360.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tg/func_80B183F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tg/EnTg_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tg/EnTg_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tg/func_80B185C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tg/EnTg_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tg/func_80B18704.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tg/func_80B1871C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tg/func_80B18778.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tg/EnTg_Draw.s")
