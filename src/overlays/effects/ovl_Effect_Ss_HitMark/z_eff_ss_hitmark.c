/*
 * File: z_eff_ss_hitmark.c
 * Overlay: ovl_Effect_Ss_HitMark
 * Description:
 */

#include "z_eff_ss_hitmark.h"

typedef enum {
    /* 0x00 */ SS_HITMARK_0,
    /* 0x01 */ SS_HITMARK_1,
    /* 0x02 */ SS_HITMARK_2,
    /* 0x03 */ SS_HITMARK_3,
    /* 0x04 */ SS_HITMARK_4,
    /* 0x05 */ SS_HITMARK_5,
    /* 0x06 */ SS_HITMARK_6,
    /* 0x07 */ SS_HITMARK_7,
    /* 0x08 */ SS_HITMARK_8,
    /* 0x09 */ SS_HITMARK_9,
    /* 0x0A */ SS_HITMARK_A,
    /* 0x0B */ SS_HITMARK_B,
    /* 0x0C */ SS_HITMARK_C,
} EffectSsHitMarkRegs;

u32 EffectSsHitMark_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void func_809A824C(GlobalContext* globalCtx, u32 index, EffectSs* this);
void func_809A8484(GlobalContext* globalCtx, u32 index, EffectSs* this);

typedef struct {
    /* 0x00 */ Color_RGB8 primColor;
    /* 0x03 */ Color_RGB8 envColor;
} HitMarkInfo;

s32 D_809A85B0[] = { 0xFFFFFFFF, 0xFF00FFFF, 0xFFFF0000, 0xFFC864C8, 0x96009664, 0x00643200,
                     0xFFFFFFFF, 0x0000FFFF, 0x00FF0000, 0xFFFFFF00, 0xFFC8FFFF, 0xFF9600FF };

UNK_PTR D_809A85E0[] = {
    0x0401F370, 0x0401F4F0, 0x0401F670, 0x0401F7F0, 0x0401F970, 0x0401FAF0, 0x0401FC70, 0x0401FDF0,
    0x0401FF70, 0x040200F0, 0x04020270, 0x040203F0, 0x04020570, 0x040206F0, 0x04020870, 0x040209F0,
    0x04020B70, 0x04020CF0, 0x04020E70, 0x04020FF0, 0x04021170, 0x040212F0, 0x04021470, 0x040215F0,
    0x0401F370, 0x0401F4F0, 0x0401F670, 0x0401F7F0, 0x0401F970, 0x0401FAF0, 0x0401FC70, 0x0401FDF0,
};

EffectSsInit Effect_Ss_HitMark_InitVars = {
    EFFECT_SS_HITMARK,
    EffectSsHitMark_Init,
};

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_HitMark/EffectSsHitMark_Init.s")
/*
u32 EffectSsHitMark_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    void* temp_v1;
    EffectSsHitMarkInitParams* initParams = (EffectSsHitMarkInitParams*)initParamsx;
    this->pos = initParams->pos;
    this->displayList = SEGMENTED_TO_VIRTUAL(D_04021770);

    if (initParams->unk_00 == 1) {
        this->life = 16;
    } else {
        this->life = 8;
    }

    this->draw = func_809A824C;
    this->update = func_809A8484;
    this->regs[SS_HITMARK_0] = 0;

    temp_v1 = (initParams->unk_00 * 0xC) + D_809A85B0;

    this->regs[SS_HITMARK_1] = initParams->unk_00;
    this->regs[SS_HITMARK_2] = temp_v1->unk0;
    this->regs[SS_HITMARK_3] = temp_v1->unk1;
    this->regs[SS_HITMARK_4] = temp_v1->unk2;
    this->regs[SS_HITMARK_5] = temp_v1->unk3;
    this->regs[SS_HITMARK_6] = temp_v1->unk4;
    this->regs[SS_HITMARK_7] = temp_v1->unk5;
    this->regs[SS_HITMARK_8] = initParams->scale;
    return 1;
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_HitMark/func_809A824C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_HitMark/func_809A8484.s")
