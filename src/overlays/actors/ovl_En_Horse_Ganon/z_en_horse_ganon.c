/*
 * File: z_en_horse_ganon.c
 * Overlay: ovl_En_Horse_Ganon
 * Description: Ganondorf's Horse
 */

#include "z_en_horse_ganon.h"

#define FLAGS 0x00000010

#define THIS ((EnHorseGanon*)thisx)

void EnHorseGanon_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHorseGanon_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHorseGanon_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHorseGanon_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Horse_Ganon_InitVars = {
    ACTOR_EN_HORSE_GANON,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HORSE_GANON,
    sizeof(EnHorseGanon),
    (ActorFunc)EnHorseGanon_Init,
    (ActorFunc)EnHorseGanon_Destroy,
    (ActorFunc)EnHorseGanon_Update,
    (ActorFunc)EnHorseGanon_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/func_80A68660.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/func_80A686A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/func_80A68870.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/EnHorseGanon_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/EnHorseGanon_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/func_80A68AC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/func_80A68AF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/func_80A68B20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/func_80A68DB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/func_80A68E14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/EnHorseGanon_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/func_80A68FA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/EnHorseGanon_Draw.s")
