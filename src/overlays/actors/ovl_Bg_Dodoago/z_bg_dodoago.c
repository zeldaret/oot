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
void BgDodoago_SetupAction(BgDodoago* this, BgDodoagoActionFunc actionFunc);

void func_80871A08(Vec3f* vec, GlobalContext* globalCtx); // Not 100% sure
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
Color_RGB8 D_8087259C = { 100, 100, 100 };
Color_RGB8 D_808725A0 = { 40, 40, 40 };
s32 D_808725A4[] = { 0x00000000, 0xBFC00000, 0x00000000 };
s32 D_808725B0[] = { 0x00000000, 0xBE4CCCCD, 0x00000000 };
s32 D_808725BC[] = { 0xC8500064, 0xB0F41388, 0xB0F803E8, 0x30FC0320 };
s32 D_808725CC[] = { 0x00000000, 0xC3480000, 0x43D70000, 0x41A00000, 0xC3480000, 0x43D20000, 0xC1A00000,
                     0xC3480000, 0x43D20000, 0x42200000, 0xC3480000, 0x43BE0000, 0xC2200000, 0xC3480000,
                     0x43BE0000, 0x42480000, 0xC3480000, 0x43AF0000, 0xC2480000, 0xC3480000, 0x43AF0000,
                     0x42700000, 0xC3480000, 0x43A00000, 0xC2700000, 0xC3480000, 0x43A00000, 0x428C0000,
                     0xC3480000, 0x43910000, 0xC28C0000, 0xC3480000, 0x43910000 };

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/BgDodoago_SetupAction.s")
void BgDodoago_SetupAction(BgDodoago* this, BgDodoagoActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/func_80871A08.s")
// void func_80871A08(Vec3f* vec, GlobalContext* param_2) {
//     Vec3f tempVec;
//     s32 counter;
//     Color_RGB8 color1 = D_8087259C;
//     Color_RGB8 color2 = D_808725A0;

//     for (counter = 4; counter != 0; counter--) {
//         tempVec.x = Math_Rand_CenteredFloat(20.0f) + vec->x;
//         tempVec.y = Math_Rand_CenteredFloat(10.0f) + vec->y;
//         tempVec.z = Math_Rand_CenteredFloat(20.0f) + vec->z;
//         func_80028B74(param_2, &tempVec, &D_808725A4, &D_808725B0, &color1, &color2);
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/BgDodoago_Init.s")
// void BgDodoago_Init(BgDodoago *this, GlobalContext *globalCtx) {
//     s32 sp2C;
//     ColliderCylinder *sp28;
//     ColliderCylinder *sp24;
//     ColliderCylinder *sp20;
//     ColliderCylinder *temp_a1;
//     ColliderCylinder *temp_a1_2;
//     ColliderCylinder *temp_a1_3;
//     sp2C = 0;
//     Actor_ProcessInitChain((Actor *) this, (InitChainEntry *) D_808725BC);
//     DynaPolyInfo_SetActorMove((DynaPolyActor *) this, 0);
//     DynaPolyInfo_Alloc((void *)0x6001DDC, (void *) &sp2C);
//     this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, (Actor *) this, sp2C);
//     ActorShape_Init(&this->dyna.actor.shape, 0.0f, NULL, 0.0f);
//     if (Flags_GetSwitch(globalCtx, (s32) (this->dyna.actor.params & 0x3F)) != 0) {
//         BgDodoago_SetupAction(this, (void (*)(struct BgDodoago *, GlobalContext *)) &func_8087227C);
//         this->dyna.actor.shape.rot.x = (u16)0x1333;
//         globalCtx->unk11D32 = (u16)0xFF;
//         globalCtx->unk_11D30 = (s16) globalCtx->unk11D32;
//         return;
//     }
//     temp_a1 = this + 0x168;
//     sp20 = temp_a1;
//     Collider_InitCylinder(globalCtx, temp_a1);
//     temp_a1_2 = this + 0x1B4;
//     sp24 = temp_a1_2;
//     Collider_InitCylinder(globalCtx, temp_a1_2);
//     temp_a1_3 = this + 0x200;
//     sp28 = temp_a1_3;
//     Collider_InitCylinder(globalCtx, temp_a1_3);
//     Collider_SetCylinder(globalCtx, temp_a1, (Actor *) this, (ColliderCylinderInit *) D_80872540);
//     Collider_SetCylinder(globalCtx, temp_a1_2, (Actor *) this, (ColliderCylinderInit *) D_8087256C);
//     Collider_SetCylinder(globalCtx, temp_a1_3, (Actor *) this, (ColliderCylinderInit *) D_8087256C);
//     BgDodoago_SetupAction(this, (void (*)(struct BgDodoago *, GlobalContext *)) &func_80871CF4);
//     D_808727C0 = (u8)0;
// }

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/BgDodoago_Destroy.s")
void BgDodoago_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgDodoago* this = THIS;


    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    Collider_DestroyCylinder(globalCtx, &this->colliders[0]);
    Collider_DestroyCylinder(globalCtx, &this->colliders[1]);
    Collider_DestroyCylinder(globalCtx, &this->colliders[2]);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/func_80871CF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/func_80871FB8.s")

void func_8087227C(BgDodoago *this, GlobalContext *globalCtx) {
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/func_80872288.s")
void func_80872288(BgDodoago *this, GlobalContext *globalCtx) {
    globalCtx->unk_11D30[this->unk_164] = globalCtx->unk_11D30[this->unk_164] + 5;
    if (globalCtx->unk_11D30[this->unk_164] == 0xFF) {
        BgDodoago_SetupAction(this, func_80871CF4);
    }
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/BgDodoago_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/BgDodoago_Draw.s")
