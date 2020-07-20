/*
 * File: z_eff_ss_dead_sound.c
 * Overlay: ovl_Effect_Ss_Dead_Sound
 * Description:
 */

#include "z_eff_ss_dead_sound.h"

typedef enum {
    /* 0x00 */ SS_DEAD_SOUND_0,
    /* 0x01 */ SS_DEAD_SOUND_1,
    /* 0x02 */ SS_DEAD_SOUND_2,
    /* 0x03 */ SS_DEAD_SOUND_3,
    /* 0x04 */ SS_DEAD_SOUND_4,
    /* 0x05 */ SS_DEAD_SOUND_5,
    /* 0x06 */ SS_DEAD_SOUND_6,
    /* 0x07 */ SS_DEAD_SOUND_7,
    /* 0x08 */ SS_DEAD_SOUND_8,
    /* 0x09 */ SS_DEAD_SOUND_9,
    /* 0x0A */ SS_DEAD_SOUND_A,
    /* 0x0B */ SS_DEAD_SOUND_B,
    /* 0x0C */ SS_DEAD_SOUND_C,
} EffectSsDead_SoundRegs;

u32 EffectSsDeadSound_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsDeadSound_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsDeadSound_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_Dead_Sound_InitVars = {
    EFFECT_SS_DEAD_SOUND,
    EffectSsDeadSound_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Dead_Sound/EffectSsDeadSound_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Dead_Sound/func_809A1BD8.s")
