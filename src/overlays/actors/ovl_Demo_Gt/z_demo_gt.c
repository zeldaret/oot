#include "z_demo_gt.h"
#include "vt.h"

#define FLAGS 0x00000030

#define THIS ((DemoGt*)thisx)

void DemoGt_Init(Actor* thisx, GlobalContext* globalCtx);
void DemoGt_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DemoGt_Update(Actor* thisx, GlobalContext* globalCtx);
void DemoGt_Draw(Actor* thisx, GlobalContext* globalCtx);

s32 D_809825C0 = 0x64506400;
s32 D_809825C4 = 0xFF6E6000;
s32 D_809825C8[] = { 0x00000000, 0x40C00000, 0x00000000 };
s32 D_809825D4[] = { 0x00000000, 0x00000000, 0x00000000 };
s32 D_809825E0[] = { 0x00000000, 0x00000000, 0x00000000 };
s32 D_809825EC[] = { 0x00000000, 0x00000000, 0x00000000 };

// s32 D_809825F8 = 0x48500064;
InitChainEntry D_809825F8[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

s32 D_809825FC[] = { 0x00000000, 0xC1800000, 0x00000000 };
s32 D_80982608[] = { 0x00000000, 0x3F99999A, 0x00000000 };
s32 D_80982614 = 0x00000000;
s32 D_80982618[] = { 0xC1400000, 0xC1880000, 0x40A00000 };
s32 D_80982624 = 0x00000000;
s32 D_80982628[] = { 0x3F800000, 0x00000000 };
s32 D_80982630 = 0x00000000;
s32 D_80982634[] = { 0x00000000, 0x00000000 };
s32 D_8098263C = 0x438C0000;
s32 D_80982640 = 0x41000000;
s32 D_80982644 = 0x0000000B;
s32 D_80982648 = 0x00000001;
s32 D_8098264C = 0x00030000;
s32 D_80982650[] = { 0x40A00000, 0xC1800000, 0xC1800000 };
s32 D_8098265C = 0x00000000;
s32 D_80982660 = 0x00000000;
s32 D_80982664[] = { 0x00000000, 0x00000000, 0xC1200000 };
s32 D_80982670[] = { 0x40A00000, 0xC0400000, 0x00000000 };
s32 D_8098267C[] = { 0x40A00000, 0xC0400000, 0x00000000 };
s32 D_80982688[] = { 0x40A00000, 0xC1800000, 0xC1800000 };
s32 D_80982694[] = { 0x41700000, 0xC1D00000, 0x00000000 };
s32 D_809826A0[] = { 0x40A00000, 0xC1800000, 0xC1800000 };
s32 D_809826AC[] = { 0x40A00000, 0xC1800000, 0xC1800000 };
s32 D_809826B8[] = { 0x41A00000, 0x40C00000, 0x00000000 };
s32 D_809826C4[] = { 0x00000000, 0x00000000, 0x00000000 };
s32 D_809826D0[] = { 0x00000000, 0xC1880000, 0x00000000 };
s32 D_809826DC[] = { 0x00000000, 0xC1F00000, 0x00000000 };

void func_8097F428(DemoGt* this, GlobalContext* globalCtx);
void func_8097FF14(DemoGt* this, GlobalContext* globalCtx);
void func_80980DB0(DemoGt* this, GlobalContext* globalCtx);
void func_809810A0(DemoGt* this, GlobalContext* globalCtx);
void func_80981588(DemoGt* this, GlobalContext* globalCtx);
void func_80981994(DemoGt* this, GlobalContext* globalCtx);
void func_80981E04(DemoGt* this, GlobalContext* globalCtx);
void func_809821C4(DemoGt* this, GlobalContext* globalCtx);
void func_8097F498(DemoGt* this, GlobalContext* globalCtx);
void func_8097FF5C(DemoGt* this, GlobalContext* globalCtx);
void func_80980DF0(DemoGt* this, GlobalContext* globalCtx);
void func_809810E0(DemoGt* this, GlobalContext* globalCtx);
void func_809815C8(DemoGt* this, GlobalContext* globalCtx);
void func_809819D4(DemoGt* this, GlobalContext* globalCtx);
void func_80981E44(DemoGt* this, GlobalContext* globalCtx);
void func_80982204(DemoGt* this, GlobalContext* globalCtx);
void func_80981114(DemoGt* this, GlobalContext* globalCtx);
void func_809815FC(DemoGt* this, GlobalContext* globalCtx);
void func_80981A08(DemoGt* this, GlobalContext* globalCtx);

void DemoGt_DoNothing(DemoGt* this, GlobalContext* globalCtx);
void func_8097F508(DemoGt* this, GlobalContext* globalCtx);
void func_8097FF9C(DemoGt* this, GlobalContext* globalCtx);
void func_80980E24(DemoGt* this, GlobalContext* globalCtx);
void func_809811AC(DemoGt* this, GlobalContext* globalCtx);
void func_80981694(DemoGt* this, GlobalContext* globalCtx);
void func_80981AA0(DemoGt* this, GlobalContext* globalCtx);
void func_80981E84(DemoGt* this, GlobalContext* globalCtx);
void func_80982244(DemoGt* this, GlobalContext* globalCtx);

DemoGtActionFunc D_809826E8[] = { func_8097F428, func_8097FF14, func_80980DB0, func_809810A0, func_80981588,
                                  func_80981994, func_80981E04, func_809821C4, func_8097F498, func_8097FF5C,
                                  func_80980DF0, func_809810E0, func_809815C8, func_809819D4, func_80981E44,
                                  func_80982204, func_80981114, func_809815FC, func_80981A08 };

DemoGtActionFunc D_80982734[] = { DemoGt_DoNothing, func_8097F508, func_8097FF9C, func_80980E24, func_809811AC,
                                  func_80981694,    func_80981AA0, func_80981E84, func_80982244 };

const ActorInit Demo_Gt_InitVars = {
    ACTOR_DEMO_GT,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GT,
    sizeof(DemoGt),
    (ActorFunc)DemoGt_Init,
    (ActorFunc)DemoGt_Destroy,
    (ActorFunc)DemoGt_Update,
    (ActorFunc)DemoGt_Draw,
};

extern UNK_TYPE D_06005CB8;
extern UNK_TYPE D_060091E4;
extern UNK_PTR D_60099700;

void DemoGt_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    DemoGt* this = THIS;

    if (this->dyna.actor.params == 1 || this->dyna.actor.params == 2) {
        DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097D6B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097D6D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097D6F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097D71C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097D74C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097D7D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097D964.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097D9C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097DA78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097DAC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097DD28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097DF70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097E1D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097E454.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097E69C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097E6BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097E704.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097E744.s")

void func_8097E824(DemoGt* this, s32 arg1);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097E824.s")
// void func_8097E824(DemoGt* this, s32 arg1) {
//     // f32 sp2C;
//     // f32 sp28;
//     // f32 sp24;
//     // f32 sp20;
//     // f32 sp1C;
//     // Vec3s* sp18;

//     // PosRot* temp_v0_10;
//     // Vec3s* temp_v0_9;
//     // f32 temp_f6;
//     s32 pad[4];
//     DemoGt** new_var;
//     s32 phi_a1;
//     s32 phi_a2;
//     s32 phi_a3;
//     f32 phi_f14;
//     f32 phi_f12;
//     f32 phi_f2;

//     if (arg1 == 1) {
//         phi_a1 = (s16)(kREG(19) + 0x8000);
//         phi_a2 = (s16)(kREG(20) + 0x8000);
//         phi_a3 = (s16)(kREG(21) + 0x8000);
//         phi_f14 = (f32)kREG(16) * 0.1f;
//         phi_f12 = ((f32)kREG(17) * 0.1f) + 0.5f;
//         phi_f2 = (f32)kREG(18) * 0.1f;
//     } else if (arg1 == 2) {
//         phi_a1 = (s16)(kREG(25) + 0x8000);
//         phi_a2 = (s16)(kREG(26) + 0x8000);
//         phi_a3 = (s16)(kREG(27) + 0x8000);
//         phi_f14 = (f32)kREG(22) * 0.1f;
//         phi_f12 = ((f32)kREG(23) * 0.1f) + 0.5f;
//         phi_f2 = (f32)kREG(24) * 0.1f;
//     } else if (arg1 == 3) {
//         phi_a1 = (s16)(kREG(31) + 0x8000);
//         phi_a2 = (s16)(kREG(32) + 0x8000);
//         phi_a3 = (s16)(kREG(33) + 0x8000);
//         phi_f14 = (f32)kREG(28) * 0.1f;
//         phi_f12 = ((f32)kREG(29) * 0.1f) + 0.5f;
//         phi_f2 = (f32)kREG(30) * 0.1f;
//     } else if (arg1 == 4) {
//         phi_a1 = (s16)(kREG(37) + 0x8000);
//         phi_a2 = (s16)(kREG(38) + 0x8000);
//         phi_a3 = (s16)(kREG(39) + 0x8000);
//         phi_f14 = (f32)kREG(34) * 0.1f;
//         phi_f12 = ((f32)kREG(35) * 0.1f) + 0.5f;
//         phi_f2 = (f32)kREG(36) * 0.1f;
//     } else if (arg1 == 5) {
//         phi_a1 = (s16)(kREG(43) + 0x8000);
//         phi_a2 = (s16)(kREG(44) + 0x8000);
//         phi_a3 = (s16)(kREG(45) + 0x8000);
//         phi_f14 = (f32)kREG(40) * 0.1f;
//         phi_f12 = ((f32)kREG(41) * 0.1f) + 0.5f;
//         phi_f2 = (f32)kREG(42) * 0.1f;
//     } else if (arg1 == 6) {
//         phi_a1 = (s16)(kREG(49) + 0x8000);
//         phi_a2 = (s16)(kREG(50) + 0x8000);
//         phi_a3 = (s16)(kREG(51) + 0x8000);
//         phi_f14 = (f32)kREG(46) * 0.1f;
//         phi_f12 = ((f32)kREG(47) * 0.1f) + 0.5f;
//         phi_f2 = (f32)kREG(48) * 0.1f;
//     } else if (arg1 == 7) {
//         phi_a1 = (s16)(kREG(85) + 0x8000);
//         phi_a2 = (s16)(kREG(86) + 0x8000);
//         phi_a3 = (s16)(kREG(87) + 0x8000);
//         phi_f14 = (f32)kREG(82) * 0.1f;
//         phi_f12 = ((f32)kREG(83) * 0.1f) + 0.5f;
//         phi_f2 = (f32)kREG(84) * 0.1f;
//     } else {
//         phi_a1 = (s16)(kREG(91) + 0x8000);
//         phi_a2 = (s16)(kREG(92) + 0x8000);
//         phi_a3 = (s16)(kREG(93) + 0x8000);
//         phi_f14 = (f32)kREG(88) * 0.1f;
//         phi_f12 = ((f32)kREG(89) * 0.1f) + 0.5f;
//         phi_f2 = (f32)kREG(90) * 0.1f;
//     }
//     new_var = &this;
//     (*new_var)->unk_16C.x = this->unk_16C.x + phi_a1;
//     (*new_var)->unk_16C.y = this->unk_16C.y + phi_a2;
//     (*new_var)->unk_16C.z = this->unk_16C.z + phi_a3;

//     (*new_var)->dyna.actor.posRot.pos.x = this->dyna.actor.posRot.pos.x + Math_Coss((*new_var)->unk_16C.x) * phi_f2;
//     (*new_var)->dyna.actor.posRot.pos.z += this->dyna.actor.posRot.pos.z + Math_Coss((*new_var)->unk_16C.z) *
//     phi_f14;
//     (*new_var)->dyna.actor.posRot.pos.y += this->dyna.actor.posRot.pos.y + Math_Coss((*new_var)->unk_16C.y) *
//     phi_f12;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097ED64.s")

u8 func_8097ED94() {
    if (kREG(2) != 0) {
        return true;
    }
    if (gSaveContext.sceneSetupIndex < 4) {
        return false;
    }
    return true;
}

void func_8097EDD8(DemoGt* this, GlobalContext* globalCtx, UNK_PTR arg0) {
    s32 pad[3];
    s32 localC;

    if (arg0 != 0) {
        Actor_ProcessInitChain(&this->dyna.actor, D_809825F8);
        DynaPolyInfo_SetActorMove(&this->dyna, 0);
        localC = 0;
        DynaPolyInfo_Alloc(arg0, &localC);
        this->dyna.dynaPolyId =
            DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, localC);
    }
}

u8 func_8097EE44(DemoGt* this, GlobalContext* globalCtx, s32 arg0, s32 arg1, UNK_PTR arg2) {

    if (func_8097ED94()) {
        this->unk_164 = arg0;
        this->unk_168 = arg1;
        func_8097EDD8(this, globalCtx, arg2);
        return true;
    } else {
        Actor_Kill(&this->dyna.actor);
        return false;
    }
}

void func_8097EEA8(DemoGt* this, GlobalContext* globalCtx) {
    this->dyna.actor.scale.x *= 10.0f;
    this->dyna.actor.scale.y *= 10.0f;
    this->dyna.actor.scale.z *= 10.0f;
    func_8097EE44(this, globalCtx, 0, 1, NULL);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097EF00.s")
void func_8097EF34(DemoGt* this, GlobalContext* globalCtx) {
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097EF40.s")

void func_8097F0AC(DemoGt* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097F0AC.s")

void func_8097F19C(DemoGt* this, GlobalContext* globalCtx) {
    func_8097EF34(this, globalCtx);
    func_8097EF40(this, globalCtx);
    func_8097F0AC(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097F1D8.s")
// f32 func_8097F1D8(DemoGt* this) {

//     this->unk_174 = kREG(72) + 10.0f + (this->unk_172 * (kREG(64) * 0.001f) + 0.048f);
//     this->unk_172 += this->unk_174;

//     if ((kREG(73) + 0x250) < this->unk_172) {
//         this->unk_172 = kREG(73) + 0x250;
//     }
//     return this->unk_172;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097F280.s")
// void func_8097F280(DemoGt* this, GlobalContext* globalCtx) {
//     f32 temp_f0;
//     s32 temp_v0;
//     Vec3i *currentVec;
//     s32 i;

//     if (globalCtx->csCtx.frames < 160) {
//         this->unk_178.x = 0x64;
//         this->unk_178.y = 0xFF;
//         this->unk_178.z = 0xC8;

//         this->unk_188.x = 0xFF;
//         this->unk_178.y = 0x78;
//         this->unk_178.z = 0x64;

//         this->unk_198.x++;
//         this->unk_178.y--;
//         this->unk_178.z = 0x64;

//         return;
//     }

//     if (globalCtx->csCtx.frames < 170) {
//         temp_f0 = func_8006F9BC(170, 160, globalCtx->csCtx.frames, 0, 0);
//         temp_v0 = ((temp_f0 * -155.0f) + 255.0f);

//         this->unk_178.x = ((temp_f0 * -63.0f) + 163.0f);
//         this->unk_178.y = temp_v0;
//         this->unk_178.z = ((temp_f0 * -100.0f) + 200.0f);

//         this->unk_188.z = 0x64;
//         this->unk_188.x = temp_v0;
//         this->unk_188.y = ((temp_f0 * -20.0f) + 120.0f);
//         return;
//     }

//     VEC_SET(this->unk_178, 0x64, 0x64, 0x64);
//     VEC_SET(this->unk_188, 0x64, 0x64, 0x64);
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097F3EC.s")

void func_8097F428(DemoGt* this, GlobalContext* globalCtx) {
    func_8097F280(this, globalCtx);
    func_8097E824(this, 1);
    func_8097F19C(this, globalCtx);
    func_8097F3EC(this, globalCtx);
    func_8097D6B4();
    func_8097D71C(globalCtx);
    func_8097EF00(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097F498.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097F508.s")

void func_8097F904(DemoGt* this, GlobalContext* globalCtx) {
    this->dyna.actor.scale.x *= 10.0f;
    this->dyna.actor.scale.y *= 10.0f;
    this->dyna.actor.scale.z *= 10.0f;
    func_8097EE44(this, globalCtx, 1, 2, &D_06005CB8);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097F904.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097F960.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097F96C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097FA1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097FAFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097FC1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097FCE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097FD70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097FDDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097FED8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097FF14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097FF5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097FF9C.s")

void func_80980110(DemoGt* this, GlobalContext* globalCtx) {
    this->dyna.actor.scale.x *= 10.0f;
    this->dyna.actor.scale.y *= 10.0f;
    this->dyna.actor.scale.z *= 10.0f;
    func_8097EE44(this, globalCtx, 2, 3, &D_060091E4);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8098016C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80980178.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80980184.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80980218.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_809802AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8098036C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80980430.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80980504.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_809805D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_809806B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8098078C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8098085C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_809809C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80980AD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80980B68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80980BFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80980C90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80980D74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80980DB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80980DF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80980E24.s")

void func_80980F00(DemoGt* this, GlobalContext* globalCtx) {
    this->dyna.actor.scale.x *= 10.0f;
    this->dyna.actor.scale.y *= 10.0f;
    this->dyna.actor.scale.z *= 10.0f;
    func_8097EE44(this, globalCtx, 3, 4, NULL);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80980F58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80980F8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8098103C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_809810A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_809810E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80981114.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_809811AC.s")

void func_809813CC(DemoGt* this, GlobalContext* globalCtx) {
    this->dyna.actor.scale.x *= 10.0f;
    this->dyna.actor.scale.y *= 10.0f;
    this->dyna.actor.scale.z *= 10.0f;
    func_8097EE44(this, globalCtx, 4, 5, NULL);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80981424.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80981458.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80981524.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80981588.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_809815C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_809815FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80981694.s")

void func_809818A4(DemoGt* this, GlobalContext* globalCtx) {
    this->dyna.actor.scale.x *= 10.0f;
    this->dyna.actor.scale.y *= 10.0f;
    this->dyna.actor.scale.z *= 10.0f;
    func_8097EE44(this, globalCtx, 5, 6, NULL);
}

void func_809818FC(DemoGt *this, GlobalContext *globalCtx) {
    u16 frames = globalCtx->csCtx.frames;
    if (frames == 845) {
        func_80078914(&this->dyna.actor.projectedPos, 0x20DE);
    }
}
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80981930.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80981994.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_809819D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80981A08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80981AA0.s")

void func_80981C94(DemoGt* this, GlobalContext* globalCtx) {
    this->dyna.actor.scale.x *= 10.0f;
    this->dyna.actor.scale.y *= 10.0f;
    this->dyna.actor.scale.z *= 10.0f;
    func_8097EE44(this, globalCtx, 6, 7, NULL);
}

void func_80981CEC(DemoGt* this, GlobalContext* globalCtx) {
    u16 frames = globalCtx->csCtx.frames;
    if (frames == 183) {
        func_80078914(&this->dyna.actor.projectedPos, 0x20DE);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80981D20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80981DC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80981E04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80981E44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80981E84.s")
// void func_80981E84(DemoGt* this, GlobalContext* globalCtx);
// void func_80981E84(DemoGt* this, GlobalContext* globalCtx) {
//     GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
//     // s32 pad;
//     Mtx* mtx;
//     s16 sp6E;
//     f32 sp68;
//     f32 sp64;
//     s16 sp62;
//     s16 sp60;
//     Vec3f sp50;
//     Vec3f sp44;
//     f32 sp40;
//     s16 temp_t8;

//     sp68 = fabsf(((f32)this->unk_172) * 0.0000958738f);
//     sp64 = (f32)kREG(75);
//     sp6E = this->unk_172;
//     temp_t8 = kREG(74) + 0x7FEC;
//     sp62 = temp_t8;
//     sp60 = (s16)(temp_t8 + 0x4000);

//     mtx = Graph_Alloc(gfxCtx, 0x40U);
//     sp40 = 1.0f - Math_Coss(sp6E);

//     OPEN_DISPS(gfxCtx, "../z_demo_gt_part5.c", 136);
//     sp50.x = Math_Coss(sp60);
//     sp50.y = 0.0f;
//     sp50.z = Math_Sins(sp60);
//     sp44.x = (Math_Coss(sp62) * sp64) * sp40;
//     sp44.y = Math_Sins(sp6E) * sp64;
//     sp44.z = (Math_Sins(sp62) * sp64) * sp40;

//     Matrix_Push();
//     func_800D23FC(sp68, &sp50, MTXMODE_APPLY);
//     Matrix_Translate(sp44.x, sp44.y, sp44.z, MTXMODE_APPLY);
//     Matrix_ToMtx(mtx, "../z_demo_gt_part5.c", 152);
//     Matrix_Pull();
//     func_80093D18(oGfxCtx);
//     gSPMatrix(oGfxCtx->polyOpa.p++, mtx,  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
//     gSPDisplayList(oGfxCtx->polyOpa.p++, D_60099700);

//     CLOSE_DISPS(gfxCtx, "../z_demo_gt_part5.c", 160);
// }

void func_80982054(DemoGt* this, GlobalContext* globalCtx) {
    this->dyna.actor.scale.x *= 10.0f;
    this->dyna.actor.scale.y *= 10.0f;
    this->dyna.actor.scale.z *= 10.0f;
    func_8097EE44(this, globalCtx, 7, 8, NULL);
}

void func_809820AC(DemoGt *this, GlobalContext *globalCtx) {
    u16 frames = globalCtx->csCtx.frames;
    if (frames == 0x9A) {
        func_80078914(&this->dyna.actor.projectedPos, 0x20DE);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_809820E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80982188.s")

void func_809821C4(DemoGt *this, GlobalContext *globalCtx) {
    func_8097E824(this, 9);
    func_809820AC(this, globalCtx);
    func_80982188(this, globalCtx);
}

void func_80982204(DemoGt *this, GlobalContext *globalCtx) {
    func_809820E0();
    func_8097ED64(this, globalCtx, 9);
    func_809820AC(this, globalCtx);
}
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80982244.s")

void DemoGt_Update(Actor* thisx, GlobalContext* globalCtx) {
    DemoGt* this = THIS;
    DemoGtActionFunc function;

    if (this->unk_164 < 0 || this->unk_164 >= 0x13 || (function = D_809826E8[this->unk_164]) == NULL) {
        // The main mode is strange!
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }

    function(this, globalCtx);
}

void DemoGt_Init(Actor* thisx, GlobalContext* globalCtx) {
    DemoGt* this = THIS;

    switch (this->dyna.actor.params) {
        case 0:
            func_8097EEA8(this, globalCtx);
            break;
        case 1:
            func_8097F904(this, globalCtx);
            break;
        case 2:
            func_80980110(this, globalCtx);
            break;
        case 5:
            func_80980F00(this, globalCtx);
            break;
        case 6:
            func_809813CC(this, globalCtx);
            break;
        case 7:
            func_809818A4(this, globalCtx);
            break;
        case 23:
            func_80981C94(this, globalCtx);
            break;
        case 24:
            func_80982054(this, globalCtx);
            break;
        default:
            // Demo_Gt_Actor_ct There is no such argument !
            osSyncPrintf("Demo_Gt_Actor_ct そんな引数は無い!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n");
            Actor_Kill(&this->dyna.actor);
    }
}

void DemoGt_DoNothing(DemoGt* this, GlobalContext* globalCtx) {
}

void DemoGt_Draw(Actor* thisx, GlobalContext* globalCtx) {
    DemoGt* this = THIS;
    DemoGtActionFunc function;

    if (this->unk_168 < 0 || this->unk_168 >= 9 || (function = D_80982734[this->unk_168]) == NULL) {
        // The drawing mode is strange !!!!!!!!!!!!!!!!!!!!!!!!!
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }

    function(this, globalCtx);
}
