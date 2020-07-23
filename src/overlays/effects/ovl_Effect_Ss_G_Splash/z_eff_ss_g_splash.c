/*
 * File: z_eff_ss_g_splash.c
 * Overlay: ovl_Effect_Ss_G_Splash
 * Description:
 */

#include "z_eff_ss_g_splash.h"

typedef enum {
    /* 0x00 */ SS_G_SPLASH_0,
    /* 0x01 */ SS_G_SPLASH_SCALE,
    /* 0x02 */ SS_G_SPLASH_2,
    /* 0x03 */ SS_G_SPLASH_PRIM_R,
    /* 0x04 */ SS_G_SPLASH_PRIM_G,
    /* 0x05 */ SS_G_SPLASH_PRIM_B,
    /* 0x06 */ SS_G_SPLASH_PRIM_A,
    /* 0x07 */ SS_G_SPLASH_ENV_R,
    /* 0x08 */ SS_G_SPLASH_ENV_G,
    /* 0x09 */ SS_G_SPLASH_ENV_B,
    /* 0x0A */ SS_G_SPLASH_ENV_A,
    /* 0x0B */ SS_G_SPLASH_OBJ_BANK_IDX,
    /* 0x0C */ SS_G_SPLASH_C,
} EffectSsG_SplashRegs;

u32 EffectSsGSplash_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParams);
void EffectSsGSplash_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsGSplash_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_G_Splash_InitVars = {
    EFFECT_SS_G_SPLASH,
    EffectSsGSplash_Init,
};

Vec3f D_809A7948 = { 0.0f, 0.0f, 0.0f };

UNK_PTR D_809A7954[] = {
    0x040255F0, 0x04025AF0, 0x04025FF0, 0x040264F0, 0x040269F0, 0x04026EF0, 0x040273F0, 0x040278F0,
};

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Splash/EffectSsGSplash_Init.s")
/*
u32 EffectSsGSplash_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    ? sp10;
    ? sp4;
    s16 phi_v1;
    EffectSsGSplashInitParams* initParams = (EffectSsGSplashInitParams*)initParamsx

    sp10.unk0 = (s32)D_809A7948.unk0;
    sp10.unk4 = (s32)D_809A7948.unk4;
    sp4.unk0 = (s32)sp10.unk0;
    sp4.unk4 = (s32)D_809A7948.unk4;
    sp10.unk8 = (s32)D_809A7948.unk8;
    sp4.unk8 = (s32)D_809A7948.unk8;
    this->accel.x = (bitwise f32)sp4.unk0;
    this->accel.y = (bitwise f32)sp4.unk4;
    this->accel.z = (bitwise f32)sp4.unk8;
    this->velocity.x = (bitwise f32)sp4.unk0;
    this->velocity.y = (bitwise f32)sp4.unk4;
    this->velocity.z = (bitwise f32)sp4.unk8;
    this->pos.x = (bitwise f32)(bitwise s32)initParams->pos.x;
    this->pos.y = (bitwise f32)(bitwise s32)initParams->pos.y;
    this->draw = &func_809A7760;
    this->update = &func_809A7864;
    this->pos.z = (bitwise f32)(bitwise s32)initParams->pos.z;
    if (initParams->unkE == 0) {
        initParams->unkE = (u16)0x258;
    }
    this->life = (u16)8;
    this->displayList = (Gfx*)((gSegments[((u32)(0x4027DF0 * 0x10) >> 0x1C)] + (0x4027DF0 & 0xFFFFFF)) + 0x80000000);
    this->regs = (u16)0;
    this->unk44 = (u16)0x64;
    this->unk42 = (s16)initParams->unkE;
    if (initParams->unkD != 0) {
        this->unk46 = (s16)initParams->unk10;
        this->unk48 = (s16)initParams->unk11;
        this->unk4A = (s16)initParams->unk12;
        this->unk4C = (s16)initParams->unk13;
        this->unk4E = (s16)initParams->unk14;
        this->unk50 = (s16)initParams->unk15;
        this->unk52 = (s16)initParams->unk16;
        this->unk54 = (s16)initParams->unk17;
        this->unk56 = (s16)initParams->unkC;
    } else {
        if (initParams->unkC != 0) {
            if (initParams->unkC != (u16)1) {
                if (initParams->unkC != (u16)2) {

                } else {
                    this->unk46 = (u16)0xFF;
                    this->unk48 = (u16)0xFF;
                    this->unk4A = (u16)0xFF;
                    this->unk4C = (u16)0xC8;
                    this->unk4E = (u16)0xFF;
                    this->unk50 = (u16)0xFF;
                    this->unk52 = (u16)0xFF;
                    this->unk54 = (u16)0xC8;
                    this->unk56 = (u16)2;
                }
            } else {
                this->unk46 = (u16)0xFF;
                this->unk48 = (u16)0xFF;
                this->unk4A = (u16)0xFF;
                this->unk4C = (u16)0xFF;
                this->unk4E = (u16)0xFF;
                this->unk50 = (u16)0xFF;
                this->unk52 = (u16)0xFF;
                this->unk54 = (u16)0xFF;
                this->unk56 = (u16)1;
            }
        } else {
            this->unk46 = (u16)0xFF;
            this->unk48 = (u16)0xFF;
            this->unk4A = (u16)0xFF;
            this->unk4C = (u16)0xC8;
            this->unk4E = (u16)0xFF;
            this->unk50 = (u16)0xFF;
            this->unk52 = (u16)0xFF;
            this->unk54 = (u16)0xC8;
            this->unk56 = (u16)0;
        }
    }
    return 1U;
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Splash/func_809A7760.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Splash/func_809A7864.s")
