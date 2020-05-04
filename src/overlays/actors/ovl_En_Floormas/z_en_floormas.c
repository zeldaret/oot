#include "z_en_floormas.h"

#define FLAGS 0x00000405

#define THIS ((EnFloormas*)thisx)

void EnFloormas_Init(Actor* thisx, GlobalContext* globalCtx);
void EnFloormas_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnFloormas_Update(Actor* thisx, GlobalContext* globalCtx);
void EnFloormas_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Floormas_InitVars = {
    ACTOR_EN_FLOORMAS,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_WALLMASTER,
    sizeof(EnFloormas),
    (ActorFunc)EnFloormas_Init,
    (ActorFunc)EnFloormas_Destroy,
    (ActorFunc)EnFloormas_Update,
    (ActorFunc)EnFloormas_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/EnFloormas_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/EnFloormas_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A17748.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A17768.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A17780.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A177C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A17808.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A17894.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A178DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A17908.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A17A38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A17B10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A17B40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A17BEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A17D4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A17D9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A17DFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A17ED4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A17F3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A17FA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A1817C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A181D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A18254.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A18310.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A18364.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A18464.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A18500.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A185C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A18650.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A187AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A187E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A188F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A18AB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A18B38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A18C78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A18D68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A18F50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A18FD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A190C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A19230.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A1928C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A193C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A196DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A198EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A19B9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A19BA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A19C6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A19CA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A19D18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/EnFloormas_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A1A128.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A1A160.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/EnFloormas_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A1A350.s")
