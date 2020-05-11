#include "z_en_kz.h"

#define FLAGS 0x00000009

#define THIS ((EnKz*)thisx)

void EnKz_Init(Actor* thisx, GlobalContext* globalCtx);
void EnKz_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnKz_Update(Actor* thisx, GlobalContext* globalCtx);
void EnKz_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Kz_InitVars = {
    ACTOR_EN_KZ,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_KZ,
    sizeof(EnKz),
    (ActorFunc)EnKz_Init,
    (ActorFunc)EnKz_Destroy,
    (ActorFunc)EnKz_Update,
    (ActorFunc)EnKz_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9C550.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9C5AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9C658.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9C6C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9C8E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9C95C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9CB18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9CCD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9CE44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/EnKz_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/EnKz_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9D0C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9D130.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9D25C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9D3C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9D42C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9D490.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9D520.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/EnKz_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9D670.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9D744.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/EnKz_Draw.s")
