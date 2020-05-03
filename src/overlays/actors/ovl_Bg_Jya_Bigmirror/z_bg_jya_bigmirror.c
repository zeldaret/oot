#include "z_bg_jya_bigmirror.h"

#define FLAGS 0x00000030

#define THIS ((BgJyaBigmirror*)thisx)

void BgJyaBigmirror_Init(Actor* thisx, GlobalContext* globalCtx);
void BgJyaBigmirror_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgJyaBigmirror_Update(Actor* thisx, GlobalContext* globalCtx);
void BgJyaBigmirror_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Bg_Jya_Bigmirror_InitVars = {
    ACTOR_BG_JYA_BIGMIRROR,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_JYA_OBJ,
    sizeof(BgJyaBigmirror),
    (ActorFunc)BgJyaBigmirror_Init,
    (ActorFunc)BgJyaBigmirror_Destroy,
    (ActorFunc)BgJyaBigmirror_Update,
    (ActorFunc)BgJyaBigmirror_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bigmirror/func_808936E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bigmirror/func_80893750.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bigmirror/func_8089394C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bigmirror/func_8089399C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bigmirror/BgJyaBigmirror_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bigmirror/BgJyaBigmirror_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bigmirror/BgJyaBigmirror_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bigmirror/func_80893C68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bigmirror/BgJyaBigmirror_Draw.s")
