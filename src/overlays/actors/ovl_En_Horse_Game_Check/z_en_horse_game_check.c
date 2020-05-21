/*
 * File: z_en_horse_game_check.c
 * Overlay: ovl_En_Horse_Game_Check
 * Description: Horseback Minigames
 */

#include "z_en_horse_game_check.h"

#define FLAGS 0x00000010

#define THIS ((EnHorseGameCheck*)thisx)

void EnHorseGameCheck_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHorseGameCheck_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHorseGameCheck_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHorseGameCheck_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Horse_Game_Check_InitVars = {
    ACTOR_EN_HORSE_GAME_CHECK,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnHorseGameCheck),
    (ActorFunc)EnHorseGameCheck_Init,
    (ActorFunc)EnHorseGameCheck_Destroy,
    (ActorFunc)EnHorseGameCheck_Update,
    (ActorFunc)EnHorseGameCheck_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Game_Check/func_80A67550.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Game_Check/func_80A67608.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Game_Check/func_80A67618.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Game_Check/func_80A67764.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Game_Check/func_80A67BDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Game_Check/func_80A67BF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Game_Check/func_80A67C08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Game_Check/func_80A67C50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Game_Check/func_80A67C68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Game_Check/func_80A67C78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Game_Check/func_80A67C88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Game_Check/func_80A67CD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Game_Check/func_80A67CE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Game_Check/func_80A67DFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Game_Check/EnHorseGameCheck_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Game_Check/EnHorseGameCheck_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Game_Check/EnHorseGameCheck_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Game_Check/EnHorseGameCheck_Draw.s")
