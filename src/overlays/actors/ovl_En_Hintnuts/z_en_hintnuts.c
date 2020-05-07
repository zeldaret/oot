/*
 * File: z_en_hintnuts.c
 * Overlay: ovl_En_Hintnuts
 * Description: Hint Deku Scrubs (Deku Tree)
 */

#include "z_en_hintnuts.h"

#define FLAGS 0x00000005

#define THIS ((EnHintnuts*)thisx)

void EnHintnuts_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHintnuts_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHintnuts_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHintnuts_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Hintnuts_InitVars = {
    ACTOR_EN_HINTNUTS,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_HINTNUTS,
    sizeof(EnHintnuts),
    (ActorFunc)EnHintnuts_Init,
    (ActorFunc)EnHintnuts_Destroy,
    (ActorFunc)EnHintnuts_Update,
    (ActorFunc)EnHintnuts_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/EnHintnuts_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/EnHintnuts_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/func_80A573D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/func_80A57454.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/func_80A574D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/func_80A5751C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/func_80A57558.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/func_80A575C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/func_80A5760C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/func_80A576FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/func_80A57744.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/func_80A57790.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/func_80A57850.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/func_80A578FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/func_80A57B60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/func_80A57BE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/func_80A57CA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/func_80A57DE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/func_80A57EF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/func_80A57F5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/func_80A57F94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/func_80A58028.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/func_80A582B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/func_80A58320.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/func_80A584DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/func_80A58608.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/EnHintnuts_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/func_80A58838.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hintnuts/EnHintnuts_Draw.s")
