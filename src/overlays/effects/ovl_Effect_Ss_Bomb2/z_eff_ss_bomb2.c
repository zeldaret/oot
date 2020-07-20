/*
 * File: z_eff_ss_bomb2.c
 * Overlay: ovl_Effect_Ss_Bomb2
 * Description: Bomb Blast
 */

#include "z_eff_ss_bomb2.h"

typedef enum {
    /* 0x00 */ SS_BOMB2_0,
    /* 0x01 */ SS_BOMB2_1,
    /* 0x02 */ SS_BOMB2_2,
    /* 0x03 */ SS_BOMB2_3,
    /* 0x04 */ SS_BOMB2_4,
    /* 0x05 */ SS_BOMB2_5,
    /* 0x06 */ SS_BOMB2_6,
    /* 0x07 */ SS_BOMB2_7,
    /* 0x08 */ SS_BOMB2_8,
    /* 0x09 */ SS_BOMB2_9,
    /* 0x0A */ SS_BOMB2_A,
    /* 0x0B */ SS_BOMB2_B,
    /* 0x0C */ SS_BOMB2_C
} EffectSsBomb2Regs;

u32 EffectSsBomb2_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void func_8099F748(GlobalContext* globalCtx, u32 index, EffectSs* this);
void func_8099F960(GlobalContext* globalCtx, u32 index, EffectSs* this);
void func_8099FCCC(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Bomb2_InitVars = {
    EFFECT_SS_BOMB2,
    EffectSsBomb2_Init,
};

void* D_8099FED8[] = {
    func_8099F748,
    func_8099F960
};

s32 D_8099FEE0[] = {
    0x04007F80, 0x04008780, 0x04008F80, 0x04009780, 0x04009F80, 0x0400A780, 0x0400AF80, 0x0400B780,
};

s32 D_8099FF00[] = {
    0x04007F80, 0x04008780, 0x04008F80, 0x04009780, 0x04009F80, 0x0400A780, 0x0400AF80, 0x0400B780
};


//#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Bomb2/EffectSsBomb2_Init.s")
void EffectSsBomb2_Init(GlobalContext *globalCtx, u32 index, EffectSs *this, EffectSsBomb2InitParams *initParams) {
    Math_Vec3f_Copy((&this->pos, &initParams->pos);
    Math_Vec3f_Copy(&this->velocity, &initParams->velocity);
    Math_Vec3f_Copy(&this->accel, &initParams->accel);
    this->displayList = (Gfx *) ((gSegments[((u32) (0x0400BF80 * 0x10) >> 0x1C)] + (0x400BF80 & 0xFFFFFF)) + 0x80000000);
    this->life = (u16)0x18;
    this->update = &func_8099FCCC;
    this->draw = (void (*)(struct GlobalContext *globalCtx, u32 index, struct EffectSs *effectSs)) *(&D_8099FED8 + (initParams->unk28 * 4));
    this->regs = (s16) initParams->unk24;
    this->unk44 = (u16)0xFF;
    this->unk46 = (u16)0xFF;
    this->unk48 = (u16)0xFF;
    this->unk4A = (u16)0xFF;
    this->unk4C = (u16)0;
    this->unk4E = (u16)0;
    this->unk50 = (u16)0xC8;
    this->unk52 = (s16) initParams->unk26;
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Bomb2/func_8099F748.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Bomb2/func_8099F960.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Bomb2/func_8099FCCC.s")
