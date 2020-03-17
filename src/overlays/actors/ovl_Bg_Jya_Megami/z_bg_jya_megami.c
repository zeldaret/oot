#include "z_bg_jya_megami.h"

#define ROOM  0x00
#define FLAGS 0x00000000

void BgJyaMegami_Init(BgJyaMegami* this, GlobalContext* globalCtx);
void BgJyaMegami_Destroy(BgJyaMegami* this, GlobalContext* globalCtx);
void BgJyaMegami_Update(BgJyaMegami* this, GlobalContext* globalCtx);
void BgJyaMegami_Draw(BgJyaMegami* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Jya_Megami_InitVars =
{
    ACTOR_BG_JYA_MEGAMI,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_JYA_OBJ,
    sizeof(BgJyaMegami),
    (ActorFunc)BgJyaMegami_Init,
    (ActorFunc)BgJyaMegami_Destroy,
    (ActorFunc)BgJyaMegami_Update,
    (ActorFunc)BgJyaMegami_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Megami/func_8089A130.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Megami/func_8089A188.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Megami/func_8089A1DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Megami/func_8089A41C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Megami/BgJyaMegami_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Megami/BgJyaMegami_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Megami/func_8089A5EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Megami/func_8089A604.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Megami/func_8089A78C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Megami/func_8089A820.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Megami/BgJyaMegami_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Megami/func_8089ABC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Megami/func_8089AD48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Megami/BgJyaMegami_Draw.s")
