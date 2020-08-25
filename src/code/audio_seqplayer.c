#include <ultra64.h>
#include <global.h>

#define PORTAMENTO_IS_SPECIAL(x) ((x).mode & 0x80)
#define PORTAMENTO_MODE(x) ((x).mode & ~0x80)
#define PORTAMENTO_MODE_1 1
#define PORTAMENTO_MODE_2 2
#define PORTAMENTO_MODE_3 3
#define PORTAMENTO_MODE_4 4
#define PORTAMENTO_MODE_5 5

extern u8 D_80130470[];

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
// process m64 flow control commands

void Audio_SequenceChannelInit(SequenceChannel* seqChannel) {
    s32 i;

    if (seqChannel == &gAudioContext.gSequenceChannelNone) {
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

s32 Audio_SeqChannelSetLayer(SequenceChannel *seqChannel, s32 layerIndex) {
    SequenceChannelLayer *layer;

    if (seqChannel->layers[layerIndex] == NULL) {
        SequenceChannelLayer *layer;
        layer = Audio_AudioListPopBack(&gAudioContext.gLayerFreeList);
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
    layer->portamentoTime = 0;
    layer->delay = 0;
    layer->duration = 0;
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
        if (layer->seqChannel != &gAudioContext.gSequenceChannelNone &&
                layer->seqChannel->seqPlayer->finished == 1) {
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
        Audio_AudioListPushBack(&gAudioContext.gLayerFreeList, &layer->listItem);
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

void Audio_SequencePlayerInitChannels(SequencePlayer* seqPlayer, u16 channelBits) {
    SequenceChannel* seqChannel;
    s32 i;

    for (i = 0; i < 0x10; i++) {
        if (channelBits & 1) {
            seqChannel = seqPlayer->channels[i];
            seqChannel->bankId = seqPlayer->defaultBank;
            seqChannel->muteBehavior = seqPlayer->muteBehavior;
            seqChannel->noteAllocPolicy = seqPlayer->noteAllocPolicy;
        }
        channelBits = channelBits >> 1;
    }
}

void Audio_SequencePlayerDisableChannels(SequencePlayer* seqPlayer, u16 channelBitsUnused) {
    SequenceChannel* seqChannel;
    s32 i;

    for (i = 0; i < 0x10; i++) {
        seqChannel = seqPlayer->channels[i];
        if (IS_SEQUENCE_CHANNEL_VALID(seqChannel) == 1) {
            Audio_SequenceChannelDisable(seqChannel);
        }
    }
}

void Audio_SequenceChannelEnable(SequencePlayer* seqPlayer, u8 channelIndex, void* script) {
    SequenceChannel *seqChannel = seqPlayer->channels[channelIndex];
    s32 i;

    seqChannel->enabled = 1;
    seqChannel->finished = 0;
    seqChannel->scriptState.depth = 0;
    seqChannel->scriptState.pc = script;
    seqChannel->delay = 0;
    for (i = 0; i < 4; i++) {
        if (seqChannel->layers[i] != NULL) {
            Audio_SeqChannelLayerFree(seqChannel, i);
        }
    }
}

void Audio_SequencePlayerDisableAsFinished(SequencePlayer* seqPlayer) {
    seqPlayer->finished = 1;
    Audio_SequencePlayerDisable(seqPlayer);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/Audio_SequencePlayerDisable.s")

/*
// the gBankLoadedPool struct isn't done yet, annoying to put into gAudioContext
void Audio_SequencePlayerDisable(SequencePlayer* seqPlayer) {
    Audio_SequencePlayerDisableChannels(seqPlayer, 0xffff);
    Audio_NotePoolClear(&seqPlayer->notePool);
    seqPlayer->finished = 1;
    seqPlayer->enabled = 0;

    if (Audio_IsSeqLoadComplete(seqPlayer->seqId)) {
        Audio_SetSeqLoadStatus(seqPlayer->seqId, 3);
    }
    if (Audio_IsBankLoadComplete(seqPlayer->defaultBank)) {
        Audio_SetBankLoadStatus(seqPlayer->defaultBank, 4);
    }

    // (Note that if this is called from Audio_AllocBankOrSeq, the side will get swapped
    // later in that function. Thus, we signal that we want to load into the slot
    // of the bank that we no longer need.)
    if (seqPlayer->defaultBank == gAudioContext.gBankLoadedPool.temporary.entries[0].id) {
        gBankLoadedPool.temporary.nextSide = 1;
    } else if (seqPlayer->defaultBank == gAudioContext.gBankLoadedPool.temporary.entries[1].id) {
        gBankLoadedPool.temporary.nextSide = 0;
    }
}
*/

void Audio_AudioListPushBack(AudioListItem* list, AudioListItem* item) {
    if (item->prev == NULL) {
        list->prev->next = item;
        item->prev = list->prev;
        item->next = list;
        list->prev = item;
        list->u.count++;
        item->pool = list->pool;
    }
}

void* Audio_AudioListPopBack(AudioListItem* list) {
    AudioListItem *item = list->prev;
    if (item == list) {
        return NULL;
    }
    item->prev->next = list;
    list->prev = item->prev;
    item->prev = NULL;
    list->u.count--;
    return item->u.value;
}

void Audio_InitLayerFreelist(void) {
    s32 i;

    gAudioContext.gLayerFreeList.prev = &gAudioContext.gLayerFreeList;
    gAudioContext.gLayerFreeList.next = &gAudioContext.gLayerFreeList;
    gAudioContext.gLayerFreeList.u.count = 0;
    gAudioContext.gLayerFreeList.pool = NULL;

    for (i = 0; i < ARRAY_COUNT(gAudioContext.gSequenceLayers); i++) {
        gAudioContext.gSequenceLayers[i].listItem.u.value = &gAudioContext.gSequenceLayers[i];
        gAudioContext.gSequenceLayers[i].listItem.prev = NULL;
        Audio_AudioListPushBack(&gAudioContext.gLayerFreeList,
                &gAudioContext.gSequenceLayers[i].listItem);
    }
}

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

void func_800E9ED8(SequenceChannelLayer* layer);
s32 func_800E9F64(SequenceChannelLayer *layer, s32 arg1);
s32 func_800EA0C0(SequenceChannelLayer* layer);
s32 func_800EA440(SequenceChannelLayer* layer, s32 arg1);
s32 func_800EAAE0(SequenceChannelLayer* layer, s32 arg1);

void Audio_SeqChannelLayerProcessScript(SequenceChannelLayer *layer) {
    s32 val;

    if (layer->enabled == 0) {
        return;
    }

    if (layer->delay > 1) {
        layer->delay--;
        if (!layer->stopSomething && layer->delay <= layer->duration) {
            Audio_SeqChanLayerNoteDecay(layer);
            layer->stopSomething = 1;
        }
        return;
    }

    func_800E9ED8(layer);
    val = func_800EA0C0(layer);
    if (val == -1) {
        return;
    }

    val = func_800EAAE0(layer, val);
    if (val != -1) {
        val = func_800EA440(layer, val);
    }
    if (val != -1) {
        func_800E9F64(layer, val);
    }

    if (layer->stopSomething == 1) {
        if ((layer->note != NULL) || layer->continuousNotes) {
            Audio_SeqChanLayerNoteDecay(layer);
        }
    }
}

void func_800E9ED8(SequenceChannelLayer* layer) {
    if (!layer->continuousNotes) {
        Audio_SeqChanLayerNoteDecay(layer);
    } else if (layer->note != NULL && layer->note->playbackState.wantedParentLayer == layer) {
        Audio_SeqChanLayerNoteDecay(layer);
    }

    if (PORTAMENTO_MODE(layer->portamento) == PORTAMENTO_MODE_1 ||
        PORTAMENTO_MODE(layer->portamento) == PORTAMENTO_MODE_2) {
        layer->portamento.mode = 0;
    }
    layer->notePropertiesNeedInit = 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800E9F64.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EA0C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EA440.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EAAE0.s")

void func_800EAEF4(SequenceChannel *seqChannel, u8 arg1) {
    if ((arg1 & 0xF) != 0) {
        seqChannel->notePriority = arg1 & 0xF;
    }
    arg1 = arg1 >> 4;
    if (arg1 != 0) {
        seqChannel->someOtherPriority = arg1;
    }
}

u8 Audio_GetInstrument(SequenceChannel* seqChannel, u8 instId, Instrument** instOut, AdsrSettings *adsr) {
    Instrument *inst = Audio_GetInstrumentInner(seqChannel->bankId, instId);
    if (inst == NULL) {
        *instOut = NULL;
        return 0;
    }
    adsr->envelope = inst->envelope;
    adsr->releaseRate = inst->releaseRate;
    *instOut = inst;
    instId += 2;
    return instId;
}

void Audio_SetInstrument(SequenceChannel* seqChannel, u8 instId) {
    if (instId >= 0x80) {
        seqChannel->instOrWave = instId;
        seqChannel->instrument = NULL;
    } else if (instId == 0x7f) {
        seqChannel->instOrWave = 0;
        seqChannel->instrument = (Instrument *) 1;
    } else if (instId == 0x7e) {
        seqChannel->instOrWave = 1;
        seqChannel->instrument = (Instrument *) 2;
    } else if ((seqChannel->instOrWave =
            Audio_GetInstrument(seqChannel, instId, &seqChannel->instrument, &seqChannel->adsr)) == 0) {
        seqChannel->hasInstrument = 0;
        return;
    }
    seqChannel->hasInstrument = 1;
}

void Audio_SequenceChannelSetVolume(SequenceChannel* seqChannel, u8 volume) {
    seqChannel->volume = (f32) (s32) volume / 127.0f;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/Audio_SequenceChannelProcessScript.s")

void Audio_SequenceChannelProcessScript(SequenceChannel* seqChannel);

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/Audio_SequencePlayerProcessSequence.s")

void Audio_SequencePlayerProcessSequence(SequencePlayer* seqPlayer);

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/Audio_ProcessSequences.s")

void Audio_ProcessSequences(s32 arg0);

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/Audio_ProcessSequence.s")

void Audio_ProcessSequence(SequencePlayer* seqPlayer);

void Audio_ResetSequencePlayer(SequencePlayer *seqPlayer) {
    s32 i;

    Audio_SequencePlayerDisable(seqPlayer);
    seqPlayer->unk_0b2 = 0;
    seqPlayer->delay = 0;
    seqPlayer->state = 1;
    seqPlayer->fadeTimer = 0;
    seqPlayer->fadeTimerUnkEu = 0;
    seqPlayer->tempoAcc = 0;
    seqPlayer->tempo = 120 * TATUMS_PER_BEAT; // 120 BPM
    seqPlayer->transposition = 0;
    seqPlayer->unk_0E = 0;
    seqPlayer->noteAllocPolicy = 0;
    seqPlayer->shortNoteVelocityTable = gDefaultShortNoteVelocityTable;
    seqPlayer->shortNoteDurationTable = gDefaultShortNoteDurationTable;
    seqPlayer->unk_E0 = 0;
    seqPlayer->fadeVolume = 1.0f;
    seqPlayer->fadeVelocity = 0.0f;
    seqPlayer->volume = 0.0f;
    seqPlayer->muteVolumeScale = 0.5f;

    for (i = 0; i < 0x10; i++) {
        Audio_SequenceChannelInit(seqPlayer->channels[i]);
    }
}

void func_800EC734(s32 player) {
    SequenceChannel *seqChannel;
    SequencePlayer *seqPlayer;
    s32 i, j;

    seqPlayer = &gAudioContext.gSequencePlayers[player];
    for (i = 0; i < 0x10; i++) {
        seqPlayer->channels[i] = Audio_SoundAlloc(&gAudioContext.gNotesAndBuffersPool, sizeof(SequenceChannel));
        if (seqPlayer->channels[i] == NULL) {
            seqPlayer->channels[i] = &gAudioContext.gSequenceChannelNone;
        } else {
            seqChannel = seqPlayer->channels[i];
            seqChannel->seqPlayer = seqPlayer;
            seqChannel->enabled = 0;
            for (j = 0; j < 4; j++) {
                seqChannel->layers[j] = NULL;
            }
        }
        Audio_SequenceChannelInit(seqPlayer->channels[i]);
    }
}

void Audio_InitSequencePlayer(SequencePlayer* seqPlayer) {
    s32 i, j;

    for (i = 0; i < 0x10; i++) {
        seqPlayer->channels[i] = &gAudioContext.gSequenceChannelNone;
    }

    seqPlayer->enabled = 0;
    seqPlayer->muted = 0;
    seqPlayer->bankDmaInProgress = 0;
    seqPlayer->seqDmaInProgress = 0;
    seqPlayer->unk_0b1 = 0;

    for (j = 0; j < 8; j++) {
        seqPlayer->unk_158[j] = -1;
    }
    seqPlayer->muteBehavior = 0x40 | 0x20;
    seqPlayer->fadeVolumeScale = 1.0f;
    seqPlayer->unk_34 = 1.0f;
    Audio_InitNoteLists(&seqPlayer->notePool);
    Audio_ResetSequencePlayer(seqPlayer);
}

void Audio_InitSequencePlayers(void) {
    s32 i;

    Audio_InitLayerFreelist();
    for (i = 0; i < 64; i++) {
        gAudioContext.gSequenceLayers[i].seqChannel = NULL;
        gAudioContext.gSequenceLayers[i].enabled = 0;
    }

    for (i = 0; i < 4; i++) {
        Audio_InitSequencePlayer(&gAudioContext.gSequencePlayers[i]);
    }
}
