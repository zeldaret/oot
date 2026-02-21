/*
 * File: z_eff_ss_dead_sound.c
 * Overlay: ovl_Effect_Ss_Dead_Sound
 * Description: Plays a sound effect
 */

#include "z_eff_ss_dead_sound.h"
#include "printf.h"
#include "sfx.h"
#include "translation.h"
#include "effect.h"
#include "play_state.h"

#define rSfxId regs[10]
#define rRepeatMode regs[11] // sound is replayed every update. unused in the original game

u32 EffectSsDeadSound_Init(PlayState* play, u32 index, EffectSs* this, void* initParamsx);
void EffectSsDeadSound_Update(PlayState* play, u32 index, EffectSs* this);

EffectSsProfile Effect_Ss_Dead_Sound_Profile = {
    EFFECT_SS_DEAD_SOUND,
    EffectSsDeadSound_Init,
};

u32 EffectSsDeadSound_Init(PlayState* play, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsDeadSoundInitParams* initParams = (EffectSsDeadSoundInitParams*)initParamsx;

    this->pos = initParams->pos;
    this->velocity = initParams->velocity;
    this->accel = initParams->accel;
    this->flags = 2;
    this->life = initParams->life;
    this->draw = NULL;
    this->update = EffectSsDeadSound_Update;
    this->rRepeatMode = initParams->repeatMode;
    this->rSfxId = initParams->sfxId;
    PRINTF(T("コンストラクター3\n", "Constructor 3\n"));

    return 1;
}

void EffectSsDeadSound_Update(PlayState* play, u32 index, EffectSs* this) {
    switch (this->rRepeatMode) {
        case DEADSOUND_REPEAT_MODE_OFF:
            this->rRepeatMode--; // decrement to 0 so sound only plays once
            break;
        case DEADSOUND_REPEAT_MODE_ON:
            break;
        default:
            return;
    }

    SFX_PLAY_AT_POS(&this->pos, this->rSfxId);
}
