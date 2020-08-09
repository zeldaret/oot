#include <ultra64.h>
#include <global.h>

void Audio_SequenceChannelProcessSound(SequenceChannel *seqChannel, s32 recalculateVolume, s32 b) {
    f32 channelVolume;
    f32 chanFreqScale;
    s32 i;

    if (seqChannel->changes.asBitfields.volume || recalculateVolume) {
        channelVolume = seqChannel->volume * seqChannel->volumeScale * seqChannel->seqPlayer->appliedFadeVolume;
        if (seqChannel->seqPlayer->muted && (seqChannel->muteBehavior & 0x20)) {
            channelVolume = seqChannel->seqPlayer->muteVolumeScale * channelVolume;
        }
        seqChannel->appliedVolume = channelVolume * channelVolume;
    }

    if (seqChannel->changes.asBitfields.pan) {
        seqChannel->pan = seqChannel->newPan * seqChannel->panChannelWeight;
    }

    chanFreqScale = seqChannel->freqScale;
    if (b != 0) {
        chanFreqScale *= seqChannel->seqPlayer->unk_34;
        seqChannel->changes.asBitfields.freqScale = 1;
    }

    for (i = 0; i < 4; ++i) {
        SequenceChannelLayer* layer = seqChannel->layers[i];
        if (layer != NULL && layer->enabled && layer->note != NULL) {
            if (layer->notePropertiesNeedInit) {
                layer->noteFreqScale = layer->freqScale * chanFreqScale;
                layer->noteVelocity = layer->velocitySquare * seqChannel->appliedVolume;
                layer->notePan = (seqChannel->pan + layer->pan * (0x80 - seqChannel->panChannelWeight)) >> 7;
                layer->notePropertiesNeedInit = 0;
            } else {
                if (seqChannel->changes.asBitfields.freqScale) {
                    layer->noteFreqScale = layer->freqScale * chanFreqScale;
                }
                if (seqChannel->changes.asBitfields.volume || recalculateVolume) {
                    layer->noteVelocity = layer->velocitySquare * seqChannel->appliedVolume;
                }
                if (seqChannel->changes.asBitfields.pan) {
                    layer->notePan = (seqChannel->pan + layer->pan * (0x80 - seqChannel->panChannelWeight)) >> 7;
                }
            }
        }
    }
    seqChannel->changes.asByte = 0;
}

void Audio_SequencePlayerProcessSound(SequencePlayer *seqPlayer) {
    s32 i;

    if (seqPlayer->fadeTimer != 0) {
        seqPlayer->fadeVolume += seqPlayer->fadeVelocity;
        seqPlayer->recalculateVolume = 1;

        if (seqPlayer->fadeVolume > 1.0f) {
            seqPlayer->fadeVolume = 1.0f;
        }
        if (seqPlayer->fadeVolume < 0) {
            seqPlayer->fadeVolume = 0;
        }

        if (--seqPlayer->fadeTimer == 0 && seqPlayer->state == 2) {
            Audio_SequencePlayerDisable(seqPlayer);
            return;
        }
    }

    if (seqPlayer->recalculateVolume) {
        seqPlayer->appliedFadeVolume = seqPlayer->fadeVolume * seqPlayer->fadeVolumeScale;
    }

    for (i = 0; i < 16; i++) {
        if (seqPlayer->channels[i]->enabled == 1) {
            Audio_SequenceChannelProcessSound(seqPlayer->channels[i], seqPlayer->recalculateVolume, seqPlayer->unk_0b1);
        }
    }

    seqPlayer->recalculateVolume = 0;
}

f32 Audio_GetPortamentoFreqScale(Portamento *p) {
    u32 loResCur;
    f32 result;

    p->cur += p->speed;
    loResCur = (p->cur >> 8) & 0xff;

    if (loResCur >= 127) {
        loResCur = 127;
        p->mode = 0;
    }

    result = 1.0f + p->extent * (gPitchBendFrequencyScale[loResCur + 128] - 1.0f);
    return result;
}

s16 Audio_GetVibratoPitchChange(VibratoState *vib) {
    s32 index;
    vib->time += (s32) vib->rate;
    index = (vib->time >> 10) & 0x3F;
    return vib->curve[index];
}

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_effects/Audio_GetVibratoFreqScale.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_effects/Audio_NoteVibratoUpdate.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_effects/Audio_NoteVibratoInit.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_effects/func_800E8FB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_effects/Audio_AdsrInit.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_effects/Audio_AdsrUpdate.s")
