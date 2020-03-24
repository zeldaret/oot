#include "z_bg_haka_tubo.h"

#define ROOM 0x00
#define FLAGS 0x00000010

void BgHakaTubo_Init(BgHakaTubo* this, GlobalContext* globalCtx);
void BgHakaTubo_Destroy(BgHakaTubo* this, GlobalContext* globalCtx);
void BgHakaTubo_Update(BgHakaTubo* this, GlobalContext* globalCtx);
void BgHakaTubo_Draw(BgHakaTubo* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Haka_Tubo_InitVars = {
    ACTOR_BG_HAKA_TUBO,
    ACTORTYPE_BG,
    ROOM,
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
