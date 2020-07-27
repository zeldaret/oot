/*
 * File: z_eff_ss_blast.c
 * Overlay: ovl_Effect_Ss_Blast
 * Description:
 */

#include "z_eff_ss_blast.h"

typedef enum {
    /* 0x00 */ SS_BLAST_0,
    /* 0x01 */ SS_BLAST_1,
    /* 0x02 */ SS_BLAST_2,
    /* 0x03 */ SS_BLAST_3,
    /* 0x04 */ SS_BLAST_4,
    /* 0x05 */ SS_BLAST_5,
    /* 0x06 */ SS_BLAST_6,
    /* 0x07 */ SS_BLAST_7,
    /* 0x08 */ SS_BLAST_8,
    /* 0x09 */ SS_BLAST_9,
    /* 0x0A */ SS_BLAST_A,
    /* 0x0B */ SS_BLAST_B,
    /* 0x0C */ SS_BLAST_C,
} EffectSsBlastRegs;

u32 EffectSsBlast_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsBlast_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsBlast_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_Blast_InitVars = {
    EFFECT_SS_BLAST,
    EffectSsBlast_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Blast/EffectSsBlast_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Blast/func_8099EF08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Blast/func_8099F0AC.s")
