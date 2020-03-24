#include "z_en_eiyer.h"

#define ROOM 0x00
#define FLAGS 0x00000005

void EnEiyer_Init(EnEiyer* this, GlobalContext* globalCtx);
void EnEiyer_Destroy(EnEiyer* this, GlobalContext* globalCtx);
void EnEiyer_Update(EnEiyer* this, GlobalContext* globalCtx);
void EnEiyer_Draw(EnEiyer* this, GlobalContext* globalCtx);

/*
const ActorInit En_Eiyer_InitVars = {
    ACTOR_EN_EIYER,
    ACTORTYPE_ENEMY,
    ROOM,
    FLAGS,
    OBJECT_EI,
    sizeof(EnEiyer),
    (ActorFunc)EnEiyer_Init,
    (ActorFunc)EnEiyer_Destroy,
    (ActorFunc)EnEiyer_Update,
    (ActorFunc)EnEiyer_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/EnEiyer_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/EnEiyer_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A001A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A00218.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A00358.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A003B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A003DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A004BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A00534.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A00544.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A00588.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A00600.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A006B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A0076C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A00794.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A00858.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A008A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A008D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A00950.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A00A84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A00B18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A00C70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A00E8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A00F84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A01010.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A01104.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A01240.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A012F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A01374.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A0142C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/EnEiyer_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A0178C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/EnEiyer_Draw.s")
