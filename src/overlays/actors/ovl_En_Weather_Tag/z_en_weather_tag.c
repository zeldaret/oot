/*
 * File: z_en_weather_tag.c
 * Overlay: ovl_En_Weather_Tag
 * Description: Proximity Rain/Weather Effects
 */

#include "z_en_weather_tag.h"

#define FLAGS 0x00000010

#define THIS ((EnWeatherTag*)thisx)

void EnWeatherTag_Init(Actor* thisx, GlobalContext* globalCtx);
void EnWeatherTag_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnWeatherTag_Update(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Weather_Tag_InitVars = {
    ACTOR_EN_WEATHER_TAG,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnWeatherTag),
    (ActorFunc)EnWeatherTag_Init,
    (ActorFunc)EnWeatherTag_Destroy,
    (ActorFunc)EnWeatherTag_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Weather_Tag/func_80B31020.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Weather_Tag/EnWeatherTag_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Weather_Tag/EnWeatherTag_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Weather_Tag/func_80B312C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Weather_Tag/func_80B3149C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Weather_Tag/func_80B31658.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Weather_Tag/func_80B316B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Weather_Tag/func_80B31700.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Weather_Tag/func_80B31758.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Weather_Tag/func_80B317A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Weather_Tag/func_80B31800.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Weather_Tag/func_80B31850.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Weather_Tag/func_80B318C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Weather_Tag/func_80B31924.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Weather_Tag/func_80B319A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Weather_Tag/func_80B31A10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Weather_Tag/func_80B31AA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Weather_Tag/func_80B31B24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Weather_Tag/func_80B31C20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Weather_Tag/func_80B31CC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Weather_Tag/EnWeatherTag_Update.s")
