#include "z_bg_jya_bombiwa.h"

#define FLAGS 0x00000000

void BgJyaBombiwa_Init(BgJyaBombiwa* this, GlobalContext* globalCtx);
void BgJyaBombiwa_Destroy(BgJyaBombiwa* this, GlobalContext* globalCtx);
void BgJyaBombiwa_Update(BgJyaBombiwa* this, GlobalContext* globalCtx);
void BgJyaBombiwa_Draw(BgJyaBombiwa* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Jya_Bombiwa_InitVars = {
    ACTOR_BG_JYA_BOMBIWA,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_JYA_OBJ,
    sizeof(BgJyaBombiwa),
    (ActorFunc)BgJyaBombiwa_Init,
    (ActorFunc)BgJyaBombiwa_Destroy,
    (ActorFunc)BgJyaBombiwa_Update,
    (ActorFunc)BgJyaBombiwa_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bombiwa/func_808951A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bombiwa/func_80895228.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bombiwa/BgJyaBombiwa_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bombiwa/BgJyaBombiwa_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bombiwa/func_8089539C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bombiwa/BgJyaBombiwa_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bombiwa/BgJyaBombiwa_Draw.s")
