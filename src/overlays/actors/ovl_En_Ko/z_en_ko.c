#include "z_en_ko.h"

#define FLAGS 0x00000019

#define THIS ((EnKo*)thisx)

void EnKo_Init(Actor* thisx, GlobalContext* globalCtx);
void EnKo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnKo_Update(Actor* thisx, GlobalContext* globalCtx);
void EnKo_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Ko_InitVars = {
    ACTOR_EN_KO,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnKo),
    (ActorFunc)EnKo_Init,
    (ActorFunc)EnKo_Destroy,
    (ActorFunc)EnKo_Update,
    (ActorFunc)EnKo_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A96DB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A96EC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A96F48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A96F94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A96FD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97338.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97610.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97738.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97B38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97BC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97C7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97D00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97D68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97E18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97EB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97F20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A97F70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98034.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98124.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98174.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98254.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A9835C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98464.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A9856C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98674.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A9877C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98934.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98C18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98CD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98D2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98DB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A98ECC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/EnKo_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/EnKo_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A99048.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A99384.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A99438.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A99504.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A99560.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A995CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/EnKo_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A99864.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A99BC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/func_80A99C94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ko/EnKo_Draw.s")
