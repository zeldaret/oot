/*
 * File: z_en_viewer.c
 * Overlay: ovl_En_Viewer
 * Description: Cutscene Actors
 */

#include "z_en_viewer.h"

#define FLAGS 0x00000010

#define THIS ((EnViewer*)thisx)

void EnViewer_Init(Actor* thisx, GlobalContext* globalCtx);
void EnViewer_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnViewer_Update(Actor* thisx, GlobalContext* globalCtx);
void EnViewer_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Viewer_InitVars = {
    ACTOR_EN_VIEWER,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnViewer),
    (ActorFunc)EnViewer_Init,
    (ActorFunc)EnViewer_Destroy,
    (ActorFunc)EnViewer_Update,
    (ActorFunc)EnViewer_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/func_80B2A200.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/EnViewer_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/EnViewer_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/func_80B2A300.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/func_80B2A448.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/func_80B2A4D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/func_80B2A570.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/func_80B2A75C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/EnViewer_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/func_80B2B2F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/func_80B2B364.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/func_80B2B468.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/func_80B2B4A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/func_80B2B8FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/func_80B2B928.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/func_80B2B9A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/func_80B2BA38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/func_80B2C10C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/func_80B2C130.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/EnViewer_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/func_80B2C398.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/func_80B2C768.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/func_80B2C8AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/func_80B2CC1C.s")
