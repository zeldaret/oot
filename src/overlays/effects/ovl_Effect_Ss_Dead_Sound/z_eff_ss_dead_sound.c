/*
 * File: z_eff_ss_dead_sound.c
 * Overlay: ovl_Effect_Ss_Dead_Sound
 * Description: Pitches a sound effect down while it plays // might be wrong
 */

#include <ultra64.h>
#include <global.h>

#include "z_eff_ss_dead_sound.h"

u32 EffectSsDeadSound_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsDeadSound_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Dead_Sound_InitVars = {
    EFFECT_SS_DEAD_SOUND,
    EffectSsDeadSound_Init,
};

u32 EffectSsDeadSound_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsDeadSoundInitParams* initParams = (EffectSsDeadSoundInitParams*)initParamsx;
    this->pos = initParams->pos;
    this->velocity = initParams->velocity;
    this->accel = initParams->accel;
    this->flags = 2;
    this->life = initParams->life;
    this->draw = NULL;
    this->update = EffectSsDeadSound_Update;
    this->regs[11] = initParams->unk_28;
    this->regs[10] = initParams->sfxId;
    // "constructor 3"
    osSyncPrintf("コンストラクター3\n");
    return 1;
}

void EffectSsDeadSound_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    switch (this->regs[11]) {
        case 1:
            this->regs[11]--;
            break;
        case 2:
            break;
        default: 
            return;
    }
    Audio_PlaySoundGeneral(this->regs[10], &this->pos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}
