/*
 * File: z_eff_ss_g_spk.c
 * Overlay: ovl_Effect_Ss_G_Spk
 * Description: Sparks
 */

#include "z_eff_ss_g_spk.h"

typedef enum {
    /* 0x00 */ SS_G_SPK_PRIM_R,
    /* 0x01 */ SS_G_SPK_PRIM_G,
    /* 0x02 */ SS_G_SPK_PRIM_B,
    /* 0x03 */ SS_G_SPK_PRIM_A,
    /* 0x04 */ SS_G_SPK_EVN_R,
    /* 0x05 */ SS_G_SPK_EVN_G,
    /* 0x06 */ SS_G_SPK_EVN_B,
    /* 0x07 */ SS_G_SPK_EVN_A,
    /* 0x08 */ SS_G_SPK_1,
    /* 0x09 */ SS_G_SPK_2,
    /* 0x0A */ SS_G_SPK_3,
    /* 0x0B */ SS_G_SPK_4,
} EffectSsBlastRegs;

u32 func_809A6F30(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void func_809A72C0(GlobalContext* globalCtx, u32 index, EffectSs* this);
void func_809A73C8(GlobalContext* globalCtx, u32 index, EffectSs* this);
void func_809A70A0(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_G_Spk_InitVars = {
    EFFECT_SS_G_SPK,
    func_809A6F30,
};

UNK_PTR D_809A7498[] = {
    0x04055FB0,
    0x040561B0,
    0x040563B0,
    0x040565B0,
};

extern Gfx D_04025550[];

u32 func_809A6F30(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsGSpkInitParams* initParams = (EffectSsGSpkInitParams*)initParamsx;

    Math_Vec3f_Copy(&this->pos, &initParams->pos);
    Math_Vec3f_Copy(&this->velocity, &initParams->velocity);
    Math_Vec3f_Copy(&this->accel, &initParams->accel);
    this->unk_38 = SEGMENTED_TO_VIRTUAL(&D_04025550);

    if (initParams->unk_34 == 0) {
        this->life = 10;
        this->unk_2C.x = initParams->pos.x - initParams->actor->posRot.pos.x;
        this->unk_2C.y = initParams->pos.y - initParams->actor->posRot.pos.y;
        this->unk_2C.z = initParams->pos.z - initParams->actor->posRot.pos.z;
        this->update = func_809A72C0;
    } else {
        this->life = 5;
        this->update = func_809A73C8;
    }

    this->draw = func_809A70A0;
    this->regs[SS_G_SPK_PRIM_R] = initParams->primColor.r; // unk40
    this->regs[SS_G_SPK_PRIM_G] = initParams->primColor.g; // unk42
    this->regs[SS_G_SPK_PRIM_B] = initParams->primColor.b; // unk44
    this->regs[SS_G_SPK_PRIM_A] = initParams->primColor.a; // unk46
    this->regs[SS_G_SPK_EVN_R] = initParams->envColor.r;   // unk48
    this->regs[SS_G_SPK_EVN_G] = initParams->envColor.g;   // unk4A
    this->regs[SS_G_SPK_EVN_B] = initParams->envColor.b;   // unk4C
    this->regs[SS_G_SPK_EVN_A] = initParams->envColor.a;   // unk4E
    this->regs[8] = 0;                                     // unk50
    this->regs[9] = initParams->unk_30;                    // unk52
    this->regs[10] = initParams->unk_32;                   // unk54
    this->unk_3C = initParams->actor;

    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Spk/func_809A70A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Spk/func_809A72C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Spk/func_809A73C8.s")
