#include "z_en_cs.h"

#define ROOM 0x00
#define FLAGS 0x00000009

void EnCs_Init(EnCs* this, GlobalContext* globalCtx);
void EnCs_Destroy(EnCs* this, GlobalContext* globalCtx);
void EnCs_Update(EnCs* this, GlobalContext* globalCtx);
void EnCs_Draw(EnCs* this, GlobalContext* globalCtx);

/*
const ActorInit En_Cs_InitVars = {
    ACTOR_EN_CS,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_CS,
    sizeof(EnCs),
    (ActorFunc)EnCs_Init,
    (ActorFunc)EnCs_Destroy,
    (ActorFunc)EnCs_Update,
    (ActorFunc)EnCs_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/func_809E18B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/EnCs_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/EnCs_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/func_809E1B8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/func_809E1CB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/func_809E1D38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/func_809E1E80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/func_809E1E90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/func_809E1F20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/func_809E2134.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/func_809E22D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/func_809E2360.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/EnCs_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/EnCs_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/func_809E2784.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/func_809E2814.s")
