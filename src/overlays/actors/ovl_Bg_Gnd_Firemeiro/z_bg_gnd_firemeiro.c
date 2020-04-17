/*
 * File: z_bg_gnd_firemeiro.c
 * Overlay: ovl_Bg_Gnd_Firemeiro
 * Description: Sinking lava platform (Ganon's Castle)
 */

#include "z_bg_gnd_firemeiro.h"

#define FLAGS 0x00000030

void BgGndFiremeiro_Init(BgGndFiremeiro* this, GlobalContext* globalCtx);
void BgGndFiremeiro_Destroy(BgGndFiremeiro* this, GlobalContext* globalCtx);
void BgGndFiremeiro_Update(BgGndFiremeiro* this, GlobalContext* globalCtx);
void BgGndFiremeiro_Draw(BgGndFiremeiro* this, GlobalContext* globalCtx);
void func_808795AC(BgGndFiremeiro* this, GlobalContext* globalCtx);
void func_80879668(BgGndFiremeiro* this, GlobalContext* globalCtx);
void func_80879808(BgGndFiremeiro* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Gnd_Firemeiro_InitVars = {
    ACTOR_BG_GND_FIREMEIRO,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_DEMO_KEKKAI,
    sizeof(BgGndFiremeiro),
    (ActorFunc)BgGndFiremeiro_Init,
    (ActorFunc)BgGndFiremeiro_Destroy,
    (ActorFunc)BgGndFiremeiro_Update,
    (ActorFunc)BgGndFiremeiro_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Firemeiro/BgGndFiremeiro_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Firemeiro/BgGndFiremeiro_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Firemeiro/func_808795AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Firemeiro/func_80879668.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Firemeiro/func_80879808.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Firemeiro/BgGndFiremeiro_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Firemeiro/BgGndFiremeiro_Draw.s")
