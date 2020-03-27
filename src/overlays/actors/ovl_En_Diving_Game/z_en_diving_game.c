#include "z_en_diving_game.h"

#define ROOM 0x00
#define FLAGS 0x00000019

void EnDivingGame_Init(EnDivingGame* this, GlobalContext* globalCtx);
void EnDivingGame_Destroy(EnDivingGame* this, GlobalContext* globalCtx);
void EnDivingGame_Update(EnDivingGame* this, GlobalContext* globalCtx);
void EnDivingGame_Draw(EnDivingGame* this, GlobalContext* globalCtx);

/*
const ActorInit En_Diving_Game_InitVars = {
    ACTOR_EN_DIVING_GAME,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_ZO,
    sizeof(EnDivingGame),
    (ActorFunc)EnDivingGame_Init,
    (ActorFunc)EnDivingGame_Destroy,
    (ActorFunc)EnDivingGame_Update,
    (ActorFunc)EnDivingGame_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Diving_Game/EnDivingGame_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Diving_Game/EnDivingGame_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Diving_Game/func_809ED9E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Diving_Game/func_809EDB08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Diving_Game/func_809EDCB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Diving_Game/func_809EDD4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Diving_Game/func_809EDEDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Diving_Game/func_809EE048.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Diving_Game/func_809EE0FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Diving_Game/func_809EE194.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Diving_Game/func_809EE1F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Diving_Game/func_809EE408.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Diving_Game/func_809EE6C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Diving_Game/func_809EE780.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Diving_Game/func_809EE800.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Diving_Game/func_809EE8F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Diving_Game/func_809EE96C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Diving_Game/func_809EEA00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Diving_Game/func_809EEA90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Diving_Game/func_809EEAF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Diving_Game/EnDivingGame_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Diving_Game/func_809EEDB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Diving_Game/func_809EEDE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Diving_Game/EnDivingGame_Draw.s")
