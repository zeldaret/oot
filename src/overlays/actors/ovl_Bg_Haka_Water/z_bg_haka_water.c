/*
 * File: z_bg_haka_water.c
 * Overlay: ovl_Bg_Haka_Water
 * Description: Bottom of the Well water level changer
 */

#include "z_bg_haka_water.h"

#define FLAGS 0x00000030

void BgHakaWater_Init(BgHakaWater* this, GlobalContext* globalCtx);
void BgHakaWater_Destroy(BgHakaWater* this, GlobalContext* globalCtx);
void BgHakaWater_Update(BgHakaWater* this, GlobalContext* globalCtx);
void BgHakaWater_Draw(BgHakaWater* this, GlobalContext* globalCtx);
// ? func_80881D94(BgHakaWater* this, GlobalContext* globalCtx) // not entirely sure on this one
void func_80881EDC(BgHakaWater* this, GlobalContext* globalCtx);
void func_80881F98(BgHakaWater* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Haka_Water_InitVars = {
    ACTOR_BG_HAKA_WATER,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_HAKACH_OBJECTS,
    sizeof(BgHakaWater),
    (ActorFunc)BgHakaWater_Init,
    (ActorFunc)BgHakaWater_Destroy,
    (ActorFunc)BgHakaWater_Update,
    (ActorFunc)BgHakaWater_Draw,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Water/BgHakaWater_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Water/BgHakaWater_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Water/func_80881D94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Water/func_80881EDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Water/func_80881F98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Water/BgHakaWater_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Water/BgHakaWater_Draw.s")
