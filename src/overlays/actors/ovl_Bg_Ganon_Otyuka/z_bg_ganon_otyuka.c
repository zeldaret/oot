/*
 * File: z_bg_ganon_otyka.c
 * Overlay: ovl_Bg_Ganon_Otyka
 * Description: Falling Platform (Ganondorf Fight)
 */

#include "z_bg_ganon_otyuka.h"

#define FLAGS 0x00000030

#define THIS ((BgGanonOtyuka*)thisx)

void BgGanonOtyuka_Init(Actor* thisx, GlobalContext* globalCtx);
void BgGanonOtyuka_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgGanonOtyuka_Update(Actor* thisx, GlobalContext* globalCtx);
void BgGanonOtyuka_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80875A0C(BgGanonOtyuka* this, GlobalContext* globalCtx);
void func_80875C88(BgGanonOtyuka* this, GlobalContext* globalCtx);
void func_808760DC(BgGanonOtyuka* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Ganon_Otyuka_InitVars = {
    ACTOR_BG_GANON_OTYUKA,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GANON,
    sizeof(BgGanonOtyuka),
    (ActorFunc)BgGanonOtyuka_Init,
    (ActorFunc)BgGanonOtyuka_Destroy,
    (ActorFunc)BgGanonOtyuka_Update,
    (ActorFunc)BgGanonOtyuka_Draw,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ganon_Otyuka/BgGanonOtyuka_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ganon_Otyuka/BgGanonOtyuka_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ganon_Otyuka/func_80875A0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ganon_Otyuka/func_80875C88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ganon_Otyuka/func_808760DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ganon_Otyuka/BgGanonOtyuka_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ganon_Otyuka/BgGanonOtyuka_Draw.s")
