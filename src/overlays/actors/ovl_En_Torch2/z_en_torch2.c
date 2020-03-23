#include "z_en_torch2.h"

#define ROOM 0x00
#define FLAGS 0x00000035

void EnTorch2_Init(EnTorch2* this, GlobalContext* globalCtx);
void EnTorch2_Destroy(EnTorch2* this, GlobalContext* globalCtx);
void EnTorch2_Update(EnTorch2* this, GlobalContext* globalCtx);
void EnTorch2_Draw(EnTorch2* this, GlobalContext* globalCtx);

/*
const ActorInit En_Torch2_InitVars =
{
    ACTOR_EN_TORCH2,
    ACTORTYPE_BOSS,
    ROOM,
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
