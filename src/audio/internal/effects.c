#include "ultra64.h"
#include "attributes.h"
#include "audio.h"

void Audio_SequenceChannelProcessSound(SequenceChannel* channel, s32 recalculateVolume, s32 applyBend) {
    f32 channelVolume;
    f32 chanFreqScale;
    s32 i;

    if (channel->changes.s.volume || recalculateVolume) {
        channelVolume = channel->volume * channel->volumeScale * channel->seqPlayer->appliedFadeVolume;
        if (channel->seqPlayer->muted && (channel->muteBehavior & MUTE_BEHAVIOR_SOFTEN)) {
            channelVolume = channel->seqPlayer->muteVolumeScale * channelVolume;
        }
        channel->appliedVolume = channelVolume * channelVolume;
    }

    if (channel->changes.s.pan) {
        channel->pan = channel->newPan * channel->panChannelWeight;
    }

    chanFreqScale = channel->freqScale;
    if (applyBend) {
        chanFreqScale *= channel->seqPlayer->bend;
        channel->changes.s.freqScale = true;
    }

    for (i = 0; i < 4; i++) {
        SequenceLayer* layer = channel->layers[i];

        if (layer != NULL && layer->enabled && layer->note != NULL) {
            if (layer->notePropertiesNeedInit) {
                layer->noteFreqScale = layer->freqScale * chanFreqScale;
                layer->noteVelocity = layer->velocitySquare2 * channel->appliedVolume;
                layer->notePan = (channel->pan + layer->pan * (0x80 - channel->panChannelWeight)) >> 7;
                layer->notePropertiesNeedInit = false;
            } else {
                if (channel->changes.s.freqScale) {
                    layer->noteFreqScale = layer->freqScale * chanFreqScale;
                }
                if (channel->changes.s.volume || recalculateVolume) {
                    layer->noteVelocity = layer->velocitySquare2 * channel->appliedVolume;
                }
                if (channel->changes.s.pan) {
                    layer->notePan = (channel->pan + layer->pan * (0x80 - channel->panChannelWeight)) >> 7;
                }
            }
        }
    }
    channel->changes.asByte = 0;
}

void Audio_SequencePlayerProcessSound(SequencePlayer* seqPlayer) {
    s32 i;

    if (seqPlayer->fadeTimer != 0) {
        seqPlayer->fadeVolume += seqPlayer->fadeVelocity;
        seqPlayer->recalculateVolume = true;

        if (seqPlayer->fadeVolume > 1.0f) {
            seqPlayer->fadeVolume = 1.0f;
        }
        if (seqPlayer->fadeVolume < 0.0f) {
            seqPlayer->fadeVolume = 0.0f;
        }

        seqPlayer->fadeTimer--;
        if (seqPlayer->fadeTimer == 0 && seqPlayer->state == 2) {
            AudioSeq_SequencePlayerDisable(seqPlayer);
            return;
        }
    }

    if (seqPlayer->recalculateVolume) {
        seqPlayer->appliedFadeVolume = seqPlayer->fadeVolume * seqPlayer->fadeVolumeScale;
    }

    for (i = 0; i < 16; i++) {
        if (seqPlayer->channels[i]->enabled == 1) {
            Audio_SequenceChannelProcessSound(seqPlayer->channels[i], seqPlayer->recalculateVolume,
                                              seqPlayer->applyBend);
        }
    }

    seqPlayer->recalculateVolume = false;
}

f32 Audio_GetPortamentoFreqScale(Portamento* portamento) {
    u32 loResCur;
    f32 portamentoFreq;

    portamento->cur += portamento->speed;
    loResCur = (portamento->cur >> 8) & 0xFF;

    if (loResCur >= 127) {
        loResCur = 127;
        portamento->mode = 0;
    }

    portamentoFreq = 1.0f + portamento->extent * (gBendPitchOneOctaveFrequencies[loResCur + 128] - 1.0f);

    return portamentoFreq;
}

s16 Audio_GetVibratoPitchChange(VibratoState* vib) {
    s32 index;

    vib->time += (s32)vib->rate;
    index = (vib->time >> 10) & 0x3F;
    return vib->curve[index];
}

f32 Audio_GetVibratoFreqScale(VibratoState* vib) {
    static f32 D_80130510 = 0.0f;
    static s32 D_80130514 = 0;
    f32 pitchChange;
    f32 depth;
    f32 invDepth;
    f32 result;
    f32 temp;
    SequenceChannel* channel = vib->channel;

    if (vib->delay != 0) {
        vib->delay--;
        return 1.0f;
    }

    //! @bug this probably meant to compare with gAudioCtx.sequenceChannelNone.
    //! -1 isn't used as a channel pointer anywhere else.
    if (channel != ((SequenceChannel*)(-1))) {
        if (vib->depthChangeTimer) {
            if (vib->depthChangeTimer == 1) {
                vib->depth = (s32)channel->vibratoDepthTarget;
            } else {
                vib->depth += ((s32)channel->vibratoDepthTarget - vib->depth) / (s32)vib->depthChangeTimer;
            }

            vib->depthChangeTimer--;
        } else if (channel->vibratoDepthTarget != (s32)vib->depth) {
            if ((vib->depthChangeTimer = channel->vibratoDepthChangeDelay) == 0) {
                vib->depth = (s32)channel->vibratoDepthTarget;
            }
        }

        if (vib->rateChangeTimer) {
            if (vib->rateChangeTimer == 1) {
                vib->rate = (s32)channel->vibratoRateTarget;
            } else {
                vib->rate += ((s32)channel->vibratoRateTarget - vib->rate) / (s32)vib->rateChangeTimer;
            }

            vib->rateChangeTimer--;
        } else if (channel->vibratoRateTarget != (s32)vib->rate) {
            if ((vib->rateChangeTimer = channel->vibratoRateChangeDelay) == 0) {
                vib->rate = (s32)channel->vibratoRateTarget;
            }
        }
    }

    if (vib->depth == 0.0f) {
        return 1.0f;
    }

    pitchChange = Audio_GetVibratoPitchChange(vib) + 32768.0f;
    temp = vib->depth / 4096.0f;
    depth = temp + 1.0f;
    invDepth = 1.0f / depth;

    result = 1.0f / ((depth - invDepth) * pitchChange / 65536.0f + invDepth);

    D_80130510 += result;
    D_80130514++;

    return result;
}

void Audio_NoteVibratoUpdate(Note* note) {
    if (note->playbackState.portamento.mode != 0) {
        note->playbackState.portamentoFreqScale = Audio_GetPortamentoFreqScale(&note->playbackState.portamento);
    }
    if (note->playbackState.vibratoState.active) {
        note->playbackState.vibratoFreqScale = Audio_GetVibratoFreqScale(&note->playbackState.vibratoState);
    }
}

void Audio_NoteVibratoInit(Note* note) {
    VibratoState* vib;
    SequenceChannel* channel;

    note->playbackState.vibratoFreqScale = 1.0f;

    vib = &note->playbackState.vibratoState;

    vib->active = true;
    vib->time = 0;
    vib->curve = gWaveSamples[2]; // gSineWaveSample[0..63]

    vib->channel = note->playbackState.parentLayer->channel;
    channel = vib->channel;
    if ((vib->depthChangeTimer = channel->vibratoDepthChangeDelay) == 0) {
        vib->depth = (s32)channel->vibratoDepthTarget;
    } else {
        vib->depth = (s32)channel->vibratoDepthStart;
    }

    if ((vib->rateChangeTimer = channel->vibratoRateChangeDelay) == 0) {
        vib->rate = (s32)channel->vibratoRateTarget;
    } else {
        vib->rate = (s32)channel->vibratoRateStart;
    }
    vib->delay = channel->vibratoDelay;
}

void Audio_NotePortamentoInit(Note* note) {
    note->playbackState.portamentoFreqScale = 1.0f;
    note->playbackState.portamento = note->playbackState.parentLayer->portamento;
}

void Audio_AdsrInit(AdsrState* adsr, EnvelopePoint* envelope, s16* volOut) {
    adsr->action.asByte = 0;
    adsr->delay = 0;
    adsr->envelope = envelope;
    adsr->sustain = 0.0f;
    adsr->current = 0.0f;
    // (An older versions of the audio engine used in Super Mario 64 did
    // adsr->volOut = volOut. That line and associated struct member were
    // removed, but the function parameter was forgotten and remains.)
}

f32 Audio_AdsrUpdate(AdsrState* adsr) {
    u8 state = adsr->action.s.state;

    switch (state) {
        case ADSR_STATE_DISABLED:
            return 0.0f;

        case ADSR_STATE_INITIAL:
            if (adsr->action.s.hang) {
                adsr->action.s.state = ADSR_STATE_HANG;
                break;
            }
            FALLTHROUGH;
        case ADSR_STATE_START_LOOP:
            adsr->envIndex = 0;
            adsr->action.s.state = ADSR_STATE_LOOP;
        retry:;
            FALLTHROUGH;
        case ADSR_STATE_LOOP:
            adsr->delay = adsr->envelope[adsr->envIndex].delay;
            switch (adsr->delay) {
                case ADSR_DISABLE:
                    adsr->action.s.state = ADSR_STATE_DISABLED;
                    break;

                case ADSR_HANG:
                    adsr->action.s.state = ADSR_STATE_HANG;
                    break;

                case ADSR_GOTO:
                    adsr->envIndex = adsr->envelope[adsr->envIndex].arg;
                    goto retry;

                case ADSR_RESTART:
                    adsr->action.s.state = ADSR_STATE_INITIAL;
                    break;

                default:
                    adsr->delay *= gAudioCtx.audioBufferParameters.ticksPerUpdateScaled;
                    if (adsr->delay == 0) {
                        adsr->delay = 1;
                    }
                    adsr->target = adsr->envelope[adsr->envIndex].arg / 32767.0f;
                    adsr->target = SQ(adsr->target);
                    adsr->velocity = (adsr->target - adsr->current) / adsr->delay;
                    adsr->action.s.state = ADSR_STATE_FADE;
                    adsr->envIndex++;
                    break;
            }
            if (adsr->action.s.state != ADSR_STATE_FADE) {
                break;
            }
            FALLTHROUGH;
        case ADSR_STATE_FADE:
            adsr->current += adsr->velocity;
            adsr->delay--;
            if (adsr->delay <= 0) {
                adsr->action.s.state = ADSR_STATE_LOOP;
            }
            FALLTHROUGH;
        case ADSR_STATE_HANG:
            break;

        case ADSR_STATE_DECAY:
        case ADSR_STATE_RELEASE:
            adsr->current -= adsr->fadeOutVel;
            if (adsr->sustain != 0.0f && state == ADSR_STATE_DECAY) {
                if (adsr->current < adsr->sustain) {
                    adsr->current = adsr->sustain;
                    adsr->delay = 128;
                    adsr->action.s.state = ADSR_STATE_SUSTAIN;
                }
                break;
            }

            if (adsr->current < 0.00001f) {
                adsr->current = 0.0f;
                adsr->action.s.state = ADSR_STATE_DISABLED;
            }
            break;

        case ADSR_STATE_SUSTAIN:
            adsr->delay--;
            if (adsr->delay == 0) {
                adsr->action.s.state = ADSR_STATE_RELEASE;
            }
            break;
    }

    if (adsr->action.s.decay) {
        adsr->action.s.state = ADSR_STATE_DECAY;
        adsr->action.s.decay = false;
    }

    if (adsr->action.s.release) {
        adsr->action.s.state = ADSR_STATE_RELEASE;
        adsr->action.s.release = false;
    }

    if (adsr->current < 0.0f) {
        return 0.0f;
    }

    if (adsr->current > 1.0f) {
        return 1.0f;
    }

    return adsr->current;
}
