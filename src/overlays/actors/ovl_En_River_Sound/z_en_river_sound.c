/*
 * File: z_en_river_sound.c
 * Overlay: ovl_En_River_Sound
 * Description: Ambient Sound Effects
 */

#include "z_en_river_sound.h"

#define FLAGS 0x00000030

#define THIS ((EnRiverSound*)thisx)

void EnRiverSound_Init(Actor* thisx, GlobalContext* globalCtx);
void EnRiverSound_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnRiverSound_Update(Actor* thisx, GlobalContext* globalCtx);
void EnRiverSound_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_River_Sound_InitVars = {
    ACTOR_EN_RIVER_SOUND,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnRiverSound),
    (ActorFunc)EnRiverSound_Init,
    (ActorFunc)EnRiverSound_Destroy,
    (ActorFunc)EnRiverSound_Update,
    (ActorFunc)EnRiverSound_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_River_Sound/EnRiverSound_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_River_Sound/EnRiverSound_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_River_Sound/func_80AE6A54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_River_Sound/func_80AE6BC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_River_Sound/EnRiverSound_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_River_Sound/EnRiverSound_Draw.s")
