/*
 * File: z_bg_dodoago.c
 * Overlay: ovl_Bg_Dodoago
 * Description: Dodongo Head Statue in Dodongo's Cavern
 */

#include "z_bg_dodoago.h"

#define FLAGS 0x00000000

#define THIS ((BgDodoago*)thisx)

void BgDodoago_Init(Actor* thisx, GlobalContext* globalCtx);
void BgDodoago_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgDodoago_Update(Actor* thisx, GlobalContext* globalCtx);
void BgDodoago_Draw(Actor* thisx, GlobalContext* globalCtx);

// void func_80871A08(Vec3f* vec, GlobalContext* globalCtx); // Not 100% sure
void func_80871CF4(BgDodoago* this, GlobalContext* globalCtx);
void func_80871FB8(BgDodoago* this, GlobalContext* globalCtx);
void func_8087227C(BgDodoago* this, GlobalContext* globalCtx);
void func_80872288(BgDodoago* this, GlobalContext* globalCtx);

const ActorInit Bg_Dodoago_InitVars = {
    ACTOR_BG_DODOAGO,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_DDAN_OBJECTS,
    sizeof(BgDodoago),
    (ActorFunc)BgDodoago_Init,
    (ActorFunc)BgDodoago_Destroy,
    (ActorFunc)BgDodoago_Update,
    (ActorFunc)BgDodoago_Draw,
};

s32 D_80872540[] = { 0x0A003900, 0x00010000, 0x02000000, 0x00000000, 0x00000000, 0xFFCFFFFF,
                     0x00000000, 0x00010000, 0x0050001E, 0x00500000, 0x00000000 };
s32 D_8087256C[] = { 0x0A00003D, 0x20010000, 0x02000000, 0x00000000, 0x00000000, 0x00000000,
                     0x00000000, 0x00000100, 0x0032003C, 0x01180000, 0x00000000 };
s32 D_80872598 = 0x00000000;
s32 D_8087259C = 0x64646400;
s32 D_808725A0 = 0x28282800;
s32 D_808725A4[] = { 0x00000000, 0xBFC00000, 0x00000000 };
s32 D_808725B0[] = { 0x00000000, 0xBE4CCCCD, 0x00000000 };
s32 D_808725BC[] = { 0xC8500064, 0xB0F41388, 0xB0F803E8, 0x30FC0320 };
s32 D_808725CC[] = { 0x00000000, 0xC3480000, 0x43D70000, 0x41A00000, 0xC3480000, 0x43D20000, 0xC1A00000,
                     0xC3480000, 0x43D20000, 0x42200000, 0xC3480000, 0x43BE0000, 0xC2200000, 0xC3480000,
                     0x43BE0000, 0x42480000, 0xC3480000, 0x43AF0000, 0xC2480000, 0xC3480000, 0x43AF0000,
                     0x42700000, 0xC3480000, 0x43A00000, 0xC2700000, 0xC3480000, 0x43A00000, 0x428C0000,
                     0xC3480000, 0x43910000, 0xC28C0000, 0xC3480000, 0x43910000 };

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/BgDodoago_SetupAction.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/func_80871A08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/BgDodoago_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/BgDodoago_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/func_80871CF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/func_80871FB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/func_8087227C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/func_80872288.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/BgDodoago_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/BgDodoago_Draw.s")
