#include "z_bg_jya_zurerukabe.h"

#define FLAGS 0x00000010

#define THIS ((BgJyaZurerukabe*)thisx)

void BgJyaZurerukabe_Init(Actor* thisx, GlobalContext* globalCtx);
void BgJyaZurerukabe_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgJyaZurerukabe_Update(Actor* thisx, GlobalContext* globalCtx);
void BgJyaZurerukabe_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Bg_Jya_Zurerukabe_InitVars = {
    ACTOR_BG_JYA_ZURERUKABE,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_JYA_OBJ,
    sizeof(BgJyaZurerukabe),
    (ActorFunc)BgJyaZurerukabe_Init,
    (ActorFunc)BgJyaZurerukabe_Destroy,
    (ActorFunc)BgJyaZurerukabe_Update,
    (ActorFunc)BgJyaZurerukabe_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Zurerukabe/func_8089B440.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Zurerukabe/func_8089B4C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Zurerukabe/BgJyaZurerukabe_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Zurerukabe/BgJyaZurerukabe_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Zurerukabe/func_8089B7B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Zurerukabe/func_8089B7C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Zurerukabe/func_8089B80C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Zurerukabe/func_8089B870.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Zurerukabe/BgJyaZurerukabe_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Zurerukabe/BgJyaZurerukabe_Draw.s")
