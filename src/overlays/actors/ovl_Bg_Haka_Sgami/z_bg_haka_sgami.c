/*
 * File: z_bg_haka_sgami.c
 * Overlay: ovl_Bg_Haka_Sgami
 * Description: Shadow Temple Spinning Scythe Trap
 */

#include "z_bg_haka_sgami.h"

#define FLAGS 0x00000011

void BgHakaSgami_Init(BgHakaSgami* this, GlobalContext* globalCtx);
void BgHakaSgami_Destroy(BgHakaSgami* this, GlobalContext* globalCtx);
void BgHakaSgami_Update(BgHakaSgami* this, GlobalContext* globalCtx);
void func_8087E7E4(BgHakaSgami* this, GlobalContext* globalCtx);
void func_8087E858(BgHakaSgami* this, GlobalContext* globalCtx);
void func_8087EDC0(BgHakaSgami* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Haka_Sgami_InitVars = {
    ACTOR_BG_HAKA_SGAMI,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(BgHakaSgami),
    (ActorFunc)BgHakaSgami_Init,
    (ActorFunc)BgHakaSgami_Destroy,
    (ActorFunc)BgHakaSgami_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Sgami/BgHakaSgami_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Sgami/BgHakaSgami_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Sgami/func_8087E7E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Sgami/func_8087E858.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Sgami/BgHakaSgami_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Sgami/func_8087EDC0.s")
