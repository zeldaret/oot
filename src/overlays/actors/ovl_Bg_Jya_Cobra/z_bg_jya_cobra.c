#include "z_bg_jya_cobra.h"

#define ROOM 0x00
#define FLAGS 0x00000010

void BgJyaCobra_Init(BgJyaCobra* this, GlobalContext* globalCtx);
void BgJyaCobra_Destroy(BgJyaCobra* this, GlobalContext* globalCtx);
void BgJyaCobra_Update(BgJyaCobra* this, GlobalContext* globalCtx);
void BgJyaCobra_Draw(BgJyaCobra* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Jya_Cobra_InitVars = {
    ACTOR_BG_JYA_COBRA,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_JYA_OBJ,
    sizeof(BgJyaCobra),
    (ActorFunc)BgJyaCobra_Init,
    (ActorFunc)BgJyaCobra_Destroy,
    (ActorFunc)BgJyaCobra_Update,
    (ActorFunc)BgJyaCobra_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_808958F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_8089593C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_808959C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_80895A70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_80895BEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_80895C74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_80895EF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_80896518.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/BgJyaCobra_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/BgJyaCobra_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_80896918.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_80896950.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_808969F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_80896ABC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/BgJyaCobra_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_80896CB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_80896D78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_80896EE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/BgJyaCobra_Draw.s")
