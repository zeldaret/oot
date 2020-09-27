/*
 * File: z_eff_ss_dead_db.c
 * Overlay: ovl_Effect_Ss_Dead_Db
 * Description:
 */

#include "z_eff_ss_dead_db.h"

typedef enum {
    /* 0x00 */ SS_DEAD_DB_0,
    /* 0x01 */ SS_DEAD_DB_1,
    /* 0x02 */ SS_DEAD_DB_2,
    /* 0x03 */ SS_DEAD_DB_3,
    /* 0x04 */ SS_DEAD_DB_4,
    /* 0x05 */ SS_DEAD_DB_5,
    /* 0x06 */ SS_DEAD_DB_6,
    /* 0x07 */ SS_DEAD_DB_7,
    /* 0x08 */ SS_DEAD_DB_8,
    /* 0x09 */ SS_DEAD_DB_9,
    /* 0x0A */ SS_DEAD_DB_A,
    /* 0x0B */ SS_DEAD_DB_B,
    /* 0x0C */ SS_DEAD_DB_C,
} EffectSsDead_DbRegs;

u32 EffectSsDeadDb_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsDeadDb_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsDeadDb_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_Dead_Db_InitVars = {
    EFFECT_SS_DEAD_DB,
    EffectSsDeadDb_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Dead_Db/EffectSsDeadDb_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Dead_Db/func_809A0BB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Dead_Db/func_809A0DB4.s")
