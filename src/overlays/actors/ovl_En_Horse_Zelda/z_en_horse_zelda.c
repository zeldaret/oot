/*
 * File: z_en_horse_zelda.c
 * Overlay: ovl_En_Horse_Zelda
 * Description: Zelda's Horse
 */

#include "z_en_horse_zelda.h"

#define FLAGS 0x00000010

#define THIS ((EnHorseZelda*)thisx)

void EnHorseZelda_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHorseZelda_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHorseZelda_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHorseZelda_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Horse_Zelda_InitVars = {
    ACTOR_EN_HORSE_ZELDA,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HORSE_ZELDA,
    sizeof(EnHorseZelda),
    (ActorFunc)EnHorseZelda_Init,
    (ActorFunc)EnHorseZelda_Destroy,
    (ActorFunc)EnHorseZelda_Update,
    (ActorFunc)EnHorseZelda_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Zelda/func_80A6D8D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Zelda/func_80A6D918.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Zelda/EnHorseZelda_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Zelda/EnHorseZelda_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Zelda/func_80A6DC7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Zelda/func_80A6DCCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Zelda/func_80A6DD14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Zelda/func_80A6DDFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Zelda/func_80A6DE38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Zelda/EnHorseZelda_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Zelda/func_80A6DFD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Zelda/EnHorseZelda_Draw.s")
