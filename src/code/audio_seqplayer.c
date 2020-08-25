#include <ultra64.h>
#include <global.h>

extern u8 D_80130470[];
extern AudioListItem gLayerFreeList;

u8 Audio_M64ReadU8(M64ScriptState* state);

s16 Audio_M64ReadS16(M64ScriptState* state);

u16 Audio_M64ReadCompressedU16(M64ScriptState* state);

u16 func_800E9340(M64ScriptState* state, u8 arg1) {
    u8 temp_v0 = D_80130470[arg1];
    u8 loBits = temp_v0 & 3;
    u16 ret = 0;
    if (loBits == 1) {
        if ((temp_v0 & 0x80) == 0) {
            ret = Audio_M64ReadU8(state);
        } else {
            ret = Audio_M64ReadS16(state);
        }
    }
    return ret;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800E93A8.s")

void Audio_SequenceChannelInit(SequenceChannel* seqChannel) {
    s32 i;

    if (!IS_SEQUENCE_CHANNEL_VALID(seqChannel)) {
        return;
    }

    seqChannel->enabled = 0;
    seqChannel->finished = 0;
    seqChannel->stopScript = 0;
    seqChannel->stopSomething2 = 0;
    seqChannel->hasInstrument = 0;
    seqChannel->stereoHeadsetEffects = 0;
    seqChannel->transposition = 0;
    seqChannel->largeNotes = 0;
    seqChannel->bookOffset = 0;
    seqChannel->reverbBits.asByte = 0;
    seqChannel->changes.asByte = 0xff;
    seqChannel->scriptState.depth = 0;
    seqChannel->newPan = 0x40;
    seqChannel->panChannelWeight = 0x80;
    seqChannel->unk_0D = 0;
    seqChannel->unk_0E = 0;
    seqChannel->noteUnused = NULL;
    seqChannel->reverbIndex = 0;
    seqChannel->reverb = 0;
    seqChannel->unk_0C = 0;
    seqChannel->notePriority = 3;
    seqChannel->someOtherPriority = 1;
    seqChannel->delay = 0;
    seqChannel->adsr.envelope = gDefaultEnvelope;
    seqChannel->adsr.releaseRate = 0xf0;
    seqChannel->adsr.sustain = 0;
    seqChannel->vibratoRateTarget = 0x800;
    seqChannel->vibratoRateStart = 0x800;
    seqChannel->vibratoExtentTarget = 0;
    seqChannel->vibratoExtentStart = 0;
    seqChannel->vibratoRateChangeDelay = 0;
    seqChannel->vibratoExtentChangeDelay = 0;
    seqChannel->vibratoDelay = 0;
    seqChannel->unk_CC = NULL;
    seqChannel->unk_20 = 0;
    seqChannel->unk_0F = 0;
    seqChannel->volume = 1.0f;
    seqChannel->volumeScale = 1.0f;
    seqChannel->freqScale = 1.0f;

    for (i = 0; i < 8; i++) {
        seqChannel->soundScriptIO[i] = -1;
    }

    seqChannel->unused = 0;
    Audio_InitNoteLists(&seqChannel->notePool);
}

s32 Audio_SeqChannelSetLayer(struct SequenceChannel *seqChannel, s32 layerIndex) {
    struct SequenceChannelLayer *layer;

    if (seqChannel->layers[layerIndex] == NULL) {
        struct SequenceChannelLayer *layer;
        layer = Audio_AudioListPopBack(&gLayerFreeList);
        seqChannel->layers[layerIndex] = layer;
        if (layer == NULL) {
            seqChannel->layers[layerIndex] = NULL;
            return -1;
        }
    } else {
        Audio_SeqChanLayerNoteDecay(seqChannel->layers[layerIndex]);
    }

    layer = seqChannel->layers[layerIndex];
    layer->seqChannel = seqChannel;
    layer->adsr = seqChannel->adsr;
    layer->adsr.releaseRate = 0;
    layer->enabled = 1;
    layer->finished = 0;
    layer->stopSomething = 0;
    layer->continuousNotes = 0;

    // (these are wrong)
    layer->unusedEu0b8 = 0;
    layer->bit2 = 0;
    layer->ignoreDrumPan = 0;
    layer->notePropertiesNeedInit = 0;

    layer->reverbBits.asByte = 0;
    layer->portamento.mode = 0;
    layer->scriptState.depth = 0;
    layer->noteDuration = 0x80;
    layer->pan = 0x40;

    // (also wrong)
    layer->delay = 0;
    layer->portamentoTime = 0;
    layer->transposition = 0;
    layer->unk_0C = 0;

    layer->note = NULL;
    layer->instrument = NULL;
    layer->freqScale = 1.0f;
    layer->unk_34 = 1.0f;
    layer->velocitySquare = 0.0f;
    layer->instOrWave = 0xff;
    return 0;
}

void Audio_SeqChannelLayerDisable(SequenceChannelLayer* layer) {
    if (layer != NULL) {
        if (IS_SEQUENCE_CHANNEL_VALID(layer->seqChannel) && layer->seqChannel->seqPlayer->finished == 1) {
            Audio_SeqChanLayerNoteRelease(layer);
        } else {
            Audio_SeqChanLayerNoteDecay(layer);
        }
        layer->enabled = 0;
        layer->finished = 1;
    }
}

void Audio_SeqChannelLayerFree(SequenceChannel* seqChannel, s32 layerIndex) {
    SequenceChannelLayer* layer = seqChannel->layers[layerIndex];

    if (layer != NULL) {
        Audio_AudioListPushBack(&gLayerFreeList, &layer->listItem);
        Audio_SeqChannelLayerDisable(layer);
        seqChannel->layers[layerIndex] = NULL;
    }
}

void Audio_SequenceChannelDisable(SequenceChannel* seqChannel) {
    s32 i;
    for (i = 0; i < 4; i++) {
        Audio_SeqChannelLayerFree(seqChannel, i);
    }

    Audio_NotePoolClear(&seqChannel->notePool);
    seqChannel->enabled = 0;
    seqChannel->finished = 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/Audio_SequencePlayerInitChannels.s")

void Audio_SequencePlayerInitChannels(SequencePlayer* seqPlayer, u16 channelBits);

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/Audio_SequencePlayerDisableChannels.s")

void Audio_SequencePlayerDisableChannels(SequencePlayer* seqPlayer, u16 channelBitsUnused);

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/Audio_SequenceChannelEnable.s")

void Audio_SequenceChannelEnable(SequencePlayer* seqPlayer, u8 channelIndex, void* script);

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/Audio_SequencePlayerDisableAsFinished.s")

void Audio_SequencePlayerDisableAsFinished(SequencePlayer* seqPlayer);

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/Audio_SequencePlayerDisable.s")

void Audio_SequencePlayerDisable(SequencePlayer* seqPlayer);

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/Audio_AudioListPushBack.s")

void Audio_AudioListPushBack(AudioListItem* list, AudioListItem* item);

void* Audio_AudioListPopBack(AudioListItem* list) {
    struct AudioListItem *item = list->prev;
    if (item == list) {
        return NULL;
    }
    item->prev->next = list;
    list->prev = item->prev;
    item->prev = NULL;
    list->u.count--;
    return item->u.value;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/Audio_InitLayerFreelist.s")

void Audio_InitLayerFreelist(void);

u8 Audio_M64ReadU8(M64ScriptState* state) {
    return *(state->pc++);
}

s16 Audio_M64ReadS16(M64ScriptState* state) {
    s16 ret = *(state->pc++) << 8;
    ret = *(state->pc++) | ret;
    return ret;
}

u16 Audio_M64ReadCompressedU16(M64ScriptState* state) {
    u16 ret = *(state->pc++);
    if (ret & 0x80) {
        ret = (ret << 8) & 0x7f00;
        ret = *(state->pc++) | ret;
    }
    return ret;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800E9DD4.s")

void func_800E9DD4(SequenceChannelLayer* layer);

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800E9ED8.s")

void func_800E9ED8(SequenceChannelLayer* layer);

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800E9F64.s")

s32 func_800E9F64(SequenceChannelLayer *layer, s32 arg1);

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EA0C0.s")

s32 func_800EA0C0(SequenceChannelLayer* layer);

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EA440.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EAAE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EAEF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EAF24.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EAF98.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EB044.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EB068.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EBD58.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EC564.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EC618.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EC668.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EC734.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EC80C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EC8DC.s")
