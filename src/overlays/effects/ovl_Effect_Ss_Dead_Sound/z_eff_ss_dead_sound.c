/*
 * File: z_eff_ss_dead_sound.c
 * Overlay: ovl_Effect_Ss_Dead_Sound
 * Description: Plays a sound effect.
 *
 * If repeat mode is on, the sound is replayed every update for the duration of life.
 * Repeat mode is unused in the original game.
 */

#include "z_eff_ss_dead_sound.h"

typedef enum {
    /* 0x0A */ SS_DEADSOUND_SFX_ID = 10,
    /* 0x0B */ SS_DEADSOUND_REPEAT_MODE,
} EffectSsDeadSoundRegs;

#define REPEAT_MODE_OFF 1
#define REPEAT_MODE_ON 2

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
    this->regs[SS_DEADSOUND_REPEAT_MODE] = initParams->repeatMode;
    this->regs[SS_DEADSOUND_SFX_ID] = initParams->sfxId;
    // "constructor 3"
    osSyncPrintf("コンストラクター3\n");
    return 1;
}

void EffectSsDeadSound_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    switch (this->regs[SS_DEADSOUND_REPEAT_MODE]) {
        case REPEAT_MODE_OFF:
            this->regs[SS_DEADSOUND_REPEAT_MODE]--;
            break;
        case REPEAT_MODE_ON:
            break;
        default:
            return;
    }
    Audio_PlaySoundGeneral(this->regs[SS_DEADSOUND_SFX_ID], &this->pos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}
