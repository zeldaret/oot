/*
 * File: z_bg_haka_tubo.c
 * Overlay: ovl_Bg_Haka_Tubo
 * Description: Shadow Temple Giant Skull Jar
 */

#include "z_bg_haka_tubo.h"

#define FLAGS 0x00000010

#define THIS ((BgHakaTubo*)thisx)

void BgHakaTubo_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHakaTubo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHakaTubo_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHakaTubo_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808813A0(BgHakaTubo* this, GlobalContext* globalCtx);
void func_80881608(BgHakaTubo* this, GlobalContext* globalCtx);
void func_80881904(BgHakaTubo* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Haka_Tubo_InitVars = {
    ACTOR_BG_HAKA_TUBO,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HAKA_OBJECTS,
    sizeof(BgHakaTubo),
    (ActorFunc)BgHakaTubo_Init,
    (ActorFunc)BgHakaTubo_Destroy,
    (ActorFunc)BgHakaTubo_Update,
    (ActorFunc)BgHakaTubo_Draw,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Tubo/BgHakaTubo_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Tubo/BgHakaTubo_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Tubo/func_808813A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Tubo/func_80881608.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Tubo/BgHakaTubo_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Tubo/func_80881904.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Tubo/BgHakaTubo_Draw.s")
