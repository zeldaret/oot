#include "z_en_fz.h"

#define ROOM  0x00
#define FLAGS 0x00000415

void EnFz_Init(EnFz* this, GlobalContext* globalCtx);
void EnFz_Destroy(EnFz* this, GlobalContext* globalCtx);
void EnFz_Update(EnFz* this, GlobalContext* globalCtx);
void EnFz_Draw(EnFz* this, GlobalContext* globalCtx);

/*
const ActorInit En_Fz_InitVars =
{
    ACTOR_EN_FZ,
    ACTORTYPE_ENEMY,
    ROOM,
    FLAGS,
    OBJECT_FZ,
    sizeof(EnFz),
    (ActorFunc)EnFz_Init,
    (ActorFunc)EnFz_Destroy,
    (ActorFunc)EnFz_Update,
    (ActorFunc)EnFz_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/EnFz_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/EnFz_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A1FF8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A200B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20100.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A202FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A203DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A204A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20704.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20748.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20774.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A207F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20830.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20880.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A208A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20938.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20978.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A209B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A209E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20A20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20A4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20A88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20AC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20CAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20D4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20D7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20DBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20E84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20EC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/EnFz_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/EnFz_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A2145C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A21500.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A215BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A218A8.s")
