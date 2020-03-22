#include "z_bg_jya_lift.h"

#define ROOM 0x00
#define FLAGS 0x00000010

void BgJyaLift_Init(BgJyaLift* this, GlobalContext* globalCtx);
void BgJyaLift_Destroy(BgJyaLift* this, GlobalContext* globalCtx);
void BgJyaLift_Update(BgJyaLift* this, GlobalContext* globalCtx);
void BgJyaLift_Draw(BgJyaLift* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Jya_Lift_InitVars =
{
    ACTOR_BG_JYA_LIFT,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_JYA_OBJ,
    sizeof(BgJyaLift),
    (ActorFunc)BgJyaLift_Init,
    (ActorFunc)BgJyaLift_Destroy,
    (ActorFunc)BgJyaLift_Update,
    (ActorFunc)BgJyaLift_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Lift/func_80899BA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Lift/BgJyaLift_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Lift/BgJyaLift_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Lift/func_80899D18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Lift/func_80899D38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Lift/func_80899DBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Lift/func_80899DCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Lift/func_80899EF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Lift/BgJyaLift_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Lift/BgJyaLift_Draw.s")
