#include "z_en_mb.h"

#define FLAGS 0x00000015

#define THIS ((EnMb*)thisx)

void EnMb_Init(Actor* thisx, GlobalContext* globalCtx);
void EnMb_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnMb_Update(Actor* thisx, GlobalContext* globalCtx);
void EnMb_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Mb_InitVars = {
    ACTOR_EN_MB,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_MB,
    sizeof(EnMb),
    (ActorFunc)EnMb_Init,
    (ActorFunc)EnMb_Destroy,
    (ActorFunc)EnMb_Update,
    (ActorFunc)EnMb_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6050.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/EnMb_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/EnMb_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6408.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6444.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA652C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA66A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6830.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6898.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA68FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6974.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6A18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6AC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6B80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6BF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6CC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6D20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6DA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6E1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6E7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6F04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6F8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA702C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA7134.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA71AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA7310.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA7478.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA74BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA77D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA7938.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA7CAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA800C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8378.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA840C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8514.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA87D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8AEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8DD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8E88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8F50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8FC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA90A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA92B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA9440.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA94D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/EnMb_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA9870.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/EnMb_Draw.s")
