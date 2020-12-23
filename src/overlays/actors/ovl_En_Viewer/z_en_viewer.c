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

void func_80B2A300(EnViewer* this, GlobalContext* globalCtx);
void func_80B2A4D8(EnViewer* this, GlobalContext* globalCtx);
void func_80B2A448(EnViewer* this, GlobalContext* globalCtx);
void func_80B2B4A8(EnViewer* this, GlobalContext* globalCtx);
void func_80B2B8FC(EnViewer* this, GlobalContext* globalCtx);
void func_80B2BA38(EnViewer* this, GlobalContext* globalCtx);
void func_80B2C130(EnViewer* this, GlobalContext* globalCtx);

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

s32 D_80B2CEC0[] = { 0x00000000 };

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



s32 D_80B2CEE4[] = { 0x30F8012C };
s32 D_80B2CEE8[] = { 0x00460046, 0x01000214, 0x01000000, 0x06006B2C, 0x06007148, 0x00870047, 0x0100000A, 0x03000000, 0x0600F788, 0x060029CC, 0x01910047, 0x0100000A, 0x02000000, 0x0600E038, 0x06000450, 0x009B009B, 0x01FA000A, 0x00000000, 0x060119E8, 0x06002928, 0x002D002D, 0x01000214, 0x01000000, 0x06008668, 0x06003858, 0x009B009B, 0x01FA000A, 0x00000000, 0x060119E8, 0x060005B4, 0x002D002D, 0x01000214, 0x01000000, 0x06008668, 0x06002650, 0x009B009B, 0x01FA000A, 0x00000000, 0x060119E8, 0x06004260, 0x009B009B, 0x01FA000A, 0x00000000, 0x060119E8, 0x060050A8, 0x00E100E1, 0x01FA000A, 0x00000000, 0x060114E8, 0x06011348 };
void* D_80B2CFB0[] = { func_80B2A300, func_80B2A4D8, func_80B2A300, func_80B2A448 };
void* D_80B2CFC0[] = { NULL, ActorShadow_DrawFunc_Circle, ActorShadow_DrawFunc_Squiggly };
s32 D_80B2CFCC[] = { 0x00000000 };
s32 D_80B2CFD0[] = { 0x00000000, 0x00000000, 0x00000000 };
void* D_80B2CFDC[] = { func_80B2B4A8, func_80B2B8FC, func_80B2BA38, func_80B2C130 };
s32 D_80B2CFEC[] = { 0x00000000 };


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/func_80B2A200.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Viewer/EnViewer_Init.s")
void EnViewer_Init(Actor* thisx, GlobalContext *globalCtx) {
    EnViewer* this = THIS;

    s32 temp_v1;
    Actor_ProcessInitChain(&this->actor, (InitChainEntry *) D_80B2CEE4);
    func_80B2A200(this, func_80B2A570);
    *D_80B2CEC0 = (u8)0;
    this->unk1E4 = (u8)0;
    temp_v1 = ((s32) this->actor.params >> 8) & 0xFF;
    this->unk1E5 = (u8)0;
    this->unk1E6 = (u8)0;
    if ((temp_v1 == 3) || (temp_v1 == 5) || (temp_v1 == 7) || (temp_v1 == 8) || (temp_v1 == 9)) {
        D_80B2D440 = Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_GANON_MANT, 0.0f, 0.0f, 0.0f, 0, 0, 0, 35);
    }
}

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
