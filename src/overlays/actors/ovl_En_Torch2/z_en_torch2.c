/*
 * File: z_en_torch2.c
 * Overlay: ovl_En_Torch2
 * Description: Dark Link
 */

#include "z_en_torch2.h"

#define FLAGS 0x00000035

#define THIS ((EnTorch2*)thisx)

void EnTorch2_Init(Actor* thisx, GlobalContext* globalCtx);
void EnTorch2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnTorch2_Update(Actor* thisx, GlobalContext* globalCtx);
void EnTorch2_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Torch2_InitVars = {
    ACTOR_EN_TORCH2,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_TORCH2,
    sizeof(EnTorch2),
    (ActorFunc)EnTorch2_Init,
    (ActorFunc)EnTorch2_Destroy,
    (ActorFunc)EnTorch2_Update,
    (ActorFunc)EnTorch2_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Torch2/EnTorch2_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Torch2/EnTorch2_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Torch2/func_80B1DB98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Torch2/func_80B1DBD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Torch2/func_80B1DD70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Torch2/EnTorch2_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Torch2/func_80B1F7A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Torch2/func_80B1F7D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Torch2/EnTorch2_Draw.s")
