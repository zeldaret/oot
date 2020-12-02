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

extern UNK_TYPE D_01000000;
extern UNK_TYPE D_0404D4E0;
extern UNK_TYPE D_06000450;
extern UNK_TYPE D_060005B4;
extern UNK_TYPE D_060008A0;
extern UNK_TYPE D_06000BC8;
extern UNK_TYPE D_06000F54;
extern UNK_TYPE D_06001410;
extern UNK_TYPE D_060014F4;
extern UNK_TYPE D_06001D28;
extern UNK_TYPE D_06002574;
extern UNK_TYPE D_06002650;
extern UNK_TYPE D_06002928;
extern UNK_TYPE D_060029CC;
extern UNK_TYPE D_06002EF0;
extern UNK_TYPE D_06003284;
extern UNK_TYPE D_060032F0;
extern UNK_TYPE D_06003428;
extern UNK_TYPE D_060036F0;
extern UNK_TYPE D_06003858;
extern UNK_TYPE D_06003D84;
extern UNK_TYPE D_06003EF0;
extern UNK_TYPE D_0600420C;
extern UNK_TYPE D_060042F0;
extern UNK_TYPE D_06004534;
extern UNK_TYPE D_060048B0;
extern UNK_TYPE D_060048FC;
extern UNK_TYPE D_06004AA4;
extern UNK_TYPE D_06004EF0;
extern UNK_TYPE D_0600504C;
extern UNK_TYPE D_060050A8;
extern UNK_TYPE D_060052F0;
extern UNK_TYPE D_06007210;
extern UNK_TYPE D_0600A4E0;
extern UNK_TYPE D_0600BE90;
extern UNK_TYPE D_0600C410;
extern UNK_TYPE D_0600D0D8;
extern UNK_TYPE D_0600DE08;
extern UNK_TYPE D_0600E1A8;
extern UNK_TYPE D_0600F178;
extern UNK_TYPE D_0600F378;
extern UNK_TYPE D_0600F578;
extern UNK_TYPE D_0600F778;

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
