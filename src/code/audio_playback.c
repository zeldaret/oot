#include <ultra64.h>
#include <global.h>

void Audio_NoteSetVelPanReverb(Note* note, NoteSubEu* sub, Reverb* reverb) {
    f32 volRight, volLeft;
    s32 smallPanIndex;
    u64 pad;
    u8 strongLeft;
    u8 strongRight;
    f32 vel;
    u8 pan;
    u8 reverbVol;
    ReverbBits sp24;
    s32 stereoHeadsetEffects = note->playbackState.stereoHeadsetEffects;
    vel = reverb->unk_8;

    pan = reverb->pan;
    reverbVol = reverb->reverb;
    sp24 = reverb->reverbBits;

    sub->bitField0.asByte = note->noteSubEu.bitField0.asByte & 0xFF;
    sub->bitField1.asByte = note->noteSubEu.bitField1.asByte & 0xFF;
    sub->sound.samples = note->noteSubEu.sound.samples;
    sub->unk_06 = note->noteSubEu.unk_06;

    Audio_NoteSetResamplingRate(sub, reverb->velocity);

    pan &= 0x7F;

    sub->bitField0.asBitfields.stereoStrongRight = 0;
    sub->bitField0.asBitfields.stereoStrongLeft = 0;
    sub->bitField0.asBitfields.stereoHeadsetEffects = sp24.stereoHeadsetEffects;
    sub->bitField0.asBitfields.usesHeadsetPanEffects = sp24.usesHeadsetPanEffects;
    if (stereoHeadsetEffects && gSoundMode == 1) {
        smallPanIndex = pan >> 1;
        if (smallPanIndex > 0x3f) {
            smallPanIndex = 0x3f;
        }

        sub->headsetPanLeft = gHeadsetPanQuantization[smallPanIndex];
        sub->headsetPanRight = gHeadsetPanQuantization[0x3f - smallPanIndex];
        sub->bitField1.asBitfields.hasTwoAdpcmParts = 1;

        volLeft = gHeadsetPanVolume[pan];
        volRight = gHeadsetPanVolume[0x7f - pan];
    } else if (stereoHeadsetEffects && gSoundMode == 0) {
        strongLeft = strongRight = 0;
        sub->headsetPanRight = 0;
        sub->headsetPanLeft = 0;
        sub->bitField1.asBitfields.hasTwoAdpcmParts = 0;

        volLeft = gStereoPanVolume[pan];
        volRight = gStereoPanVolume[0x7f - pan];
        if (pan < 0x20) {
            strongLeft = 1;
        } else if (pan > 0x60) {
            strongRight = 1;
        }

        sub->bitField0.asBitfields.stereoStrongRight = strongRight;
        sub->bitField0.asBitfields.stereoStrongLeft = strongLeft;

        switch (sp24.bit2) {
            case 0:
                break;
            case 1:
                sub->bitField0.asBitfields.stereoStrongRight = sp24.strongRight;
                sub->bitField0.asBitfields.stereoStrongLeft = sp24.strongLeft;
                break;
            case 2:
                sub->bitField0.asBitfields.stereoStrongRight = sp24.strongRight | strongRight;
                sub->bitField0.asBitfields.stereoStrongLeft = sp24.strongLeft | strongLeft;
                break;
            case 3:
                sub->bitField0.asBitfields.stereoStrongRight = sp24.strongRight ^ strongRight;
                sub->bitField0.asBitfields.stereoStrongLeft = sp24.strongLeft ^ strongLeft;
                break;
        }

    } else if (gSoundMode == 3) {
        sub->bitField0.asBitfields.stereoHeadsetEffects = 0;
        sub->bitField0.asBitfields.usesHeadsetPanEffects = 0;
        volLeft = 0.707f;
        volRight = 0.707f;
    } else {
        sub->bitField0.asBitfields.stereoStrongRight = sp24.strongRight;
        sub->bitField0.asBitfields.stereoStrongLeft = sp24.strongLeft;
        volLeft = gDefaultPanVolume[pan];
        volRight = gDefaultPanVolume[0x7f - pan];
    }

    vel = 0.0f > vel ? 0.0f : vel;
    vel = 1.0f < vel ? 1.0f : vel;

    sub->targetVolLeft = (s32)((vel * volLeft) * 4095.999f);
    sub->targetVolRight = (s32)((vel * volRight) * 4095.999f);

    sub->bankId = reverb->bankId;
    sub->unk_14 = reverb->unk_10;
    sub->unk_07 = reverb->unk_14;
    sub->unk_10 = reverb->unk_16;
    sub->reverbVol = reverbVol;
}

void Audio_NoteSetResamplingRate(NoteSubEu* noteSubEu, f32 resamplingRateInput) {
    f32 resamplingRate = 0.0f;

    if (resamplingRateInput < 2.0f) {
        noteSubEu->bitField1.asBitfields.isSyntheticWave = 0;

        if (1.99998f < resamplingRateInput) {
            resamplingRate = 1.99998f;
        } else {
            resamplingRate = resamplingRateInput;
        }

    } else {
        noteSubEu->bitField1.asBitfields.isSyntheticWave = 1;
        if (3.99996f < resamplingRateInput) {
            resamplingRate = 1.99998f;
        } else {
            resamplingRate = resamplingRateInput * 0.5f;
        }
    }
    noteSubEu->resamplingRateFixedPoint = (s32)(resamplingRate * 32768.0f);
}

void Audio_NoteInit(Note* note) {
    if (note->playbackState.parentLayer->adsr.releaseRate == 0) {
        Audio_AdsrInit(&note->playbackState.adsr, note->playbackState.parentLayer->seqChannel->adsr.envelope,
                       &note->playbackState.adsrVolScale);
    } else {
        Audio_AdsrInit(&note->playbackState.adsr, note->playbackState.parentLayer->adsr.envelope,
                       &note->playbackState.adsrVolScale);
    }

    note->playbackState.unk_04 = 0;
    note->playbackState.adsr.adsrAction.adsrBits.bits0 = 1;
    note->noteSubEu = gDefaultNoteSub;
}

void Audio_NoteDisable(Note* note) {
    if (note->noteSubEu.bitField0.asBitfields.needsInit == 1) {
        note->noteSubEu.bitField0.asBitfields.needsInit = 0;
    }
    note->playbackState.priority = 0;
    note->noteSubEu.bitField0.asBitfields.enabled = 0;
    note->playbackState.unk_04 = 0;
    note->noteSubEu.bitField0.asBitfields.finished = 0;
    note->playbackState.parentLayer = NO_LAYER;
    note->playbackState.prevParentLayer = NO_LAYER;
    note->playbackState.adsr.adsrAction.adsrBits.bits0 = 0;
    note->playbackState.adsr.fadeOutVel = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_playback/Audio_ProcessNotes.s")

AudioBankSound* Audio_InstrumentGetAudioBankSound(Instrument* instrument, s32 semitone) {
    AudioBankSound* sound;
    if (semitone < instrument->normalRangeLo) {
        sound = &instrument->lowNotesSound;
    } else if (semitone <= instrument->normalRangeHi) {
        sound = &instrument->normalNotesSound;
    } else {
        sound = &instrument->highNotesSound;
    }
    return sound;
}

Instrument* Audio_GetInstrumentInner(s32 bankId, s32 instId) {
    Instrument* inst;

    if (bankId == 0xFF) {
        return NULL;
    }

    if (func_800E18B0(bankId) == 0) {
        gAudioContext.gAudioErrorFlags = bankId + 0x10000000;
        return NULL;
    }

    if (instId >= gAudioContext.gCtlEntries[bankId].numInstruments) {
        gAudioContext.gAudioErrorFlags = ((bankId << 8) + instId) + 0x3000000;
        return NULL;
    }

    inst = gAudioContext.gCtlEntries[bankId].instruments[instId];
    if (inst == NULL) {
        gAudioContext.gAudioErrorFlags = ((bankId << 8) + instId) + 0x1000000;
        return inst;
    }

    return inst;
}

Drum* Audio_GetDrum(s32 bankId, s32 drumId) {
    Drum* drum;

    if (bankId == 0xFF) {
        return NULL;
    }

    if (func_800E18B0(bankId) == 0) {
        gAudioContext.gAudioErrorFlags = bankId + 0x10000000;
        return NULL;
    }

    if (drumId >= gAudioContext.gCtlEntries[bankId].numDrums) {
        gAudioContext.gAudioErrorFlags = ((bankId << 8) + drumId) + 0x4000000;
        return NULL;
    }
    if ((u32)gAudioContext.gCtlEntries[bankId].drums < 0x80000000U) {
        return NULL;
    }
    drum = gAudioContext.gCtlEntries[bankId].drums[drumId];

    if (drum == NULL) {
        gAudioContext.gAudioErrorFlags = ((bankId << 8) + drumId) + 0x5000000;
    }

    return drum;
}

UnkInstrument* Audio_GetUnkInstrument(s32 bankId, s32 unkInstrumentId) {
    UnkInstrument* unkInstrument;

    if (bankId == 0xFF) {
        return NULL;
    }

    if (func_800E18B0(bankId) == 0) {
        gAudioContext.gAudioErrorFlags = bankId + 0x10000000;
        return NULL;
    }

    if (unkInstrumentId >= gAudioContext.gCtlEntries[bankId].numUnkInstruments) {
        gAudioContext.gAudioErrorFlags = ((bankId << 8) + unkInstrumentId) + 0x4000000;
        return NULL;
    }

    if ((u32)gAudioContext.gCtlEntries[bankId].unkInstruments < 0x80000000U) {
        return NULL;
    }

    unkInstrument = &gAudioContext.gCtlEntries[bankId].unkInstruments[unkInstrumentId];

    if (unkInstrument == NULL) {
        gAudioContext.gAudioErrorFlags = ((bankId << 8) + unkInstrumentId) + 0x5000000;
    }

    if (unkInstrument->unk_0 == 0) {
        return NULL;
    }

    return unkInstrument;
}

s32 func_800E7744(s32 instrument, s32 bankId, s32 instId, UnkInstrument* arg3) {
    UnkInstrument* temp_t7;

    if (bankId == 0xFF) {
        return -1;
    }

    if (func_800E18B0(bankId) == 0) {
        return -2;
    }

    switch (instrument) {
        case 0:
            if (instId >= (gAudioContext.gCtlEntries[bankId].numDrums)) {
                return -3;
            }
            gAudioContext.gCtlEntries[bankId].drums[instId] = arg3;
            break;

        case 1:
            if (instId >= (gAudioContext.gCtlEntries[bankId].numUnkInstruments)) {
                return -3;
            }
            gAudioContext.gCtlEntries[bankId].unkInstruments[instId] = *arg3;
            break;

        default:
            if (instId >= (gAudioContext.gCtlEntries[bankId].numInstruments)) {
                return -3;
            }
            gAudioContext.gCtlEntries[bankId].instruments[instId] = arg3;
            break;
    }

    return 0;
}

#if 0
// This code is SM64 PAL's version with changes made to build here (and a couple legitimate changes made in the function).
// This function needs massive work, hence why it is not set for NON_MATCHING
void Audio_SeqChanLayerDecayRelease(SequenceChannelLayer* seqLayer, s32 target) {
    Note* note;
    NoteAttributes* attributes;

    if (seqLayer == NO_LAYER) {
        return;
    }
    
    seqLayer->unusedEu0b8 = 0;

    if (seqLayer->note == NULL) {
        return;
    }

    note = seqLayer->note;
    attributes = &note->playbackState.attributes;

    if (note->playbackState.wantedParentLayer == seqLayer) {
        note->playbackState.wantedParentLayer = NO_LAYER;
    }

    if (note->playbackState.parentLayer != seqLayer) {
        if (note->playbackState.parentLayer == NO_LAYER && note->playbackState.wantedParentLayer == NO_LAYER && note->playbackState.prevParentLayer == seqLayer && target != 6) {
            note->playbackState.adsr.fadeOutVel = gAudioContext.gAudioBufferParameters.updatesPerFrameInv;
            note->playbackState.adsr.adsrAction.action |= 0x10;
        }
        return;
    }

    seqLayer->status = 0;
    if (note->playbackState.adsr.state != 6) {
        attributes->freqScale = seqLayer->noteFreqScale;
        attributes->velocity = seqLayer->noteVelocity;
        attributes->pan = seqLayer->notePan;
        if (seqLayer->seqChannel != NULL) {
            attributes->reverb = seqLayer->seqChannel->reverb;
        }
        note->playbackState.priority = 1;
        note->playbackState.prevParentLayer = note->playbackState.parentLayer;
        note->playbackState.parentLayer = NO_LAYER;
        if (target == 7) {
            note->playbackState.adsr.fadeOutVel = gAudioContext.gAudioBufferParameters.updatesPerFrameInv;
            note->playbackState.adsr.adsrAction.action |= 0x10;
        } else {
            note->playbackState.adsr.adsrAction.action |= 0x20;
            if (seqLayer->adsr.releaseRate == 0) {
                note->playbackState.adsr.fadeOutVel = seqLayer->seqChannel->adsr.releaseRate * gAudioContext.gAudioBufferParameters.unkUpdatesPerFrameScaled;
            } else {
                note->playbackState.adsr.fadeOutVel = seqLayer->adsr.releaseRate * gAudioContext.gAudioBufferParameters.unkUpdatesPerFrameScaled;
            }
            note->playbackState.adsr.sustain = ((f32) (s32) (seqLayer->seqChannel->adsr.sustain) * note->playbackState.adsr.current) / 256.0f;
        }
    }

    if (target == 6) {
        Audio_AudioListRemove(&note->listItem);
        Audio_AudioListPushFront(&note->listItem.pool->decaying, &note->listItem);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/audio_playback/Audio_SeqChanLayerDecayRelease.s")
#endif

void Audio_SeqChanLayerNoteDecay(SequenceChannelLayer* seqLayer) {
    Audio_SeqChanLayerDecayRelease(seqLayer, 6);
}

void Audio_SeqChanLayerNoteRelease(SequenceChannelLayer* seqLayer) {
    Audio_SeqChanLayerDecayRelease(seqLayer, 7);
}

s32 Audio_BuildSyntheticWave(Note* note, SequenceChannelLayer* seqLayer, s32 waveId) {
    f32 freqScale;
    f32 ratio;
    u8 sampleCountIndex;

    if (waveId < 128) {
        waveId = 128;
    }

    freqScale = seqLayer->noteFreqScale;
    if (seqLayer->portamento.mode != 0 && 0.0f < seqLayer->portamento.speed) {
        freqScale *= (seqLayer->portamento.speed + 1.0f);
    }
    if (freqScale < 0.99999f) {
        sampleCountIndex = 0;
        ratio = 1.0465f;
    } else if (freqScale < 1.99999f) {
        sampleCountIndex = 1;
        ratio = 0.52325f;
    } else if (freqScale < 3.99999f) {
        sampleCountIndex = 2;
        ratio = 0.26263f;
    } else {
        sampleCountIndex = 3;
        ratio = 0.13081f;
    }
    seqLayer->noteFreqScale *= ratio;
    note->playbackState.waveId = waveId;
    note->playbackState.sampleCountIndex = sampleCountIndex;

    note->noteSubEu.sound.samples = &gWaveSamples[waveId - 128][sampleCountIndex * 64];

    return sampleCountIndex;
}

void Audio_InitSyntheticWave(Note* note, SequenceChannelLayer* seqLayer) {
    s32 sampleCountIndex;
    s32 waveSampleCountIndex;
    s32 waveId = seqLayer->instOrWave;

    if (waveId == 0xff) {
        waveId = seqLayer->seqChannel->instOrWave;
    }

    sampleCountIndex = note->playbackState.sampleCountIndex;
    waveSampleCountIndex = Audio_BuildSyntheticWave(note, seqLayer, waveId);

    if (waveSampleCountIndex != sampleCountIndex) {
        note->noteSubEu.unk_06 = waveSampleCountIndex * 4 + sampleCountIndex;
    }
}

void Audio_InitNoteList(AudioListItem* list) {
    list->prev = list;
    list->next = list;
    list->u.count = 0;
}

void Audio_InitNoteLists(NotePool* pool) {
    Audio_InitNoteList(&pool->disabled);
    Audio_InitNoteList(&pool->decaying);
    Audio_InitNoteList(&pool->releasing);
    Audio_InitNoteList(&pool->active);
    pool->disabled.pool = pool;
    pool->decaying.pool = pool;
    pool->releasing.pool = pool;
    pool->active.pool = pool;
}

void Audio_InitNoteFreeList(void) {
    s32 i;

    Audio_InitNoteLists(&gNoteFreeLists);
    for (i = 0; i < gAudioContext.gMaxSimultaneousNotes; i++) {
        gAudioContext.gNotes[i].listItem.u.value = &gAudioContext.gNotes[i];
        gAudioContext.gNotes[i].listItem.prev = NULL;
        Audio_AudioListPushBack(&gNoteFreeLists.disabled, &gAudioContext.gNotes[i].listItem);
    }
}

void Audio_NotePoolClear(NotePool* pool) {
    s32 i;
    AudioListItem* source;
    AudioListItem* cur;
    AudioListItem* dest;

    for (i = 0; i < 4; i++) {
        switch (i) {
            case 0:
                source = &pool->disabled;
                dest = &gNoteFreeLists.disabled;
                break;

            case 1:
                source = &pool->decaying;
                dest = &gNoteFreeLists.decaying;
                break;

            case 2:
                source = &pool->releasing;
                dest = &gNoteFreeLists.releasing;
                break;

            case 3:
                source = &pool->active;
                dest = &gNoteFreeLists.active;
                break;
        }

        for (;;) {
            cur = source->next;
            if (cur == source || cur == NULL) {
                break;
            }
            Audio_AudioListRemove(cur);
            Audio_AudioListPushBack(dest, cur);
        }
    }
}

void Audio_NotePoolFill(NotePool* pool, s32 count) {
    s32 i;
    s32 j;
    Note* note;
    AudioListItem* source;
    AudioListItem* dest;

    Audio_NotePoolClear(pool);

    for (i = 0, j = 0; j < count; i++) {
        if (i == 4) {
            return;
        }

        switch (i) {
            case 0:
                source = &gNoteFreeLists.disabled;
                dest = &pool->disabled;
                break;

            case 1:
                source = &gNoteFreeLists.decaying;
                dest = &pool->decaying;
                break;

            case 2:
                source = &gNoteFreeLists.releasing;
                dest = &pool->releasing;
                break;

            case 3:
                source = &gNoteFreeLists.active;
                dest = &pool->active;
                break;
        }

        while (j < count) {
            note = Audio_AudioListPopBack(source);
            if (note == NULL) {
                break;
            }
            Audio_AudioListPushBack(dest, &note->listItem);
            j++;
        }
    }
}

void Audio_AudioListPushFront(AudioListItem* list, AudioListItem* item) {
    // add 'item' to the front of the list given by 'list', if it's not in any list
    if (item->prev == NULL) {
        item->prev = list;
        item->next = list->next;
        list->next->prev = item;
        list->next = item;
        list->u.count++;
        item->pool = list->pool;
    }
}

void Audio_AudioListRemove(AudioListItem* item) {
    // remove 'item' from the list it's in, if any
    if (item->prev != NULL) {
        item->prev->next = item->next;
        item->next->prev = item->prev;
        item->prev = NULL;
    }
}

Note* Audio_PopNodeWithValueLessEqual(AudioListItem* list, s32 limit) {
    AudioListItem* cur = list->next;
    AudioListItem* best;

    if (cur == list) {
        return NULL;
    }

    for (best = cur; cur != list; cur = cur->next) {
        if (((Note*)best->u.value)->playbackState.priority >= ((Note*)cur->u.value)->playbackState.priority) {
            best = cur;
        }
    }

    if (best == NULL) {
        return NULL;
    }

    if (limit <= ((Note*)best->u.value)->playbackState.priority) {
        return NULL;
    }

    return best->u.value;
}

void Audio_NoteInitForLayer(Note* note, SequenceChannelLayer* seqLayer) {
    s32 pad[3];
    s16 instId;
    NotePlaybackState* playback = &note->playbackState;
    NoteSubEu* sub = &note->noteSubEu;

    note->playbackState.prevParentLayer = NO_LAYER;
    note->playbackState.parentLayer = seqLayer;
    playback->priority = seqLayer->seqChannel->notePriority;
    seqLayer->bit0 = 1;
    seqLayer->unusedEu0b8 = 1;
    seqLayer->note = note;
    seqLayer->seqChannel->noteUnused = note;
    seqLayer->seqChannel->layerUnused = seqLayer;
    seqLayer->unk_40 = 0.0f;
    Audio_NoteInit(note);
    instId = seqLayer->instOrWave;

    if (instId == 0xff) {
        instId = seqLayer->seqChannel->instOrWave;
    }
    sub->sound.audioBankSound = seqLayer->sound;

    if (instId >= 0x80 && instId < 0xC0) {
        sub->bitField1.asBitfields.bit2 = 1;
    } else {
        sub->bitField1.asBitfields.bit2 = 0;
    }

    if (sub->bitField1.asBitfields.bit2) {
        Audio_BuildSyntheticWave(note, seqLayer, instId);
    }

    playback->bankId = seqLayer->seqChannel->bankId;
    playback->stereoHeadsetEffects = seqLayer->seqChannel->stereoHeadsetEffects;
    sub->bitField1.asBitfields.reverbIndex = seqLayer->seqChannel->reverbIndex & 3;
}

void func_800E82C0(Note* note, SequenceChannelLayer* seqLayer) {
    Audio_SeqChanLayerNoteRelease(note->playbackState.parentLayer);
    note->playbackState.wantedParentLayer = seqLayer;
}

void Audio_NoteReleaseAndTakeOwnership(Note* note, SequenceChannelLayer* seqLayer) {
    note->playbackState.wantedParentLayer = seqLayer;
    note->playbackState.priority = seqLayer->seqChannel->notePriority;

    note->playbackState.adsr.velocity = gAudioContext.gAudioBufferParameters.updatesPerFrameInv;
    note->playbackState.adsr.adsrAction.adsrBits.bits4 = 1;
}

Note* Audio_AllocNoteFromDisabled(NotePool* pool, SequenceChannelLayer* seqLayer) {
    Note* note = Audio_AudioListPopBack(&pool->disabled);
    if (note != NULL) {
        Audio_NoteInitForLayer(note, seqLayer);
        Audio_AudioListPushFront(&pool->active, &note->listItem);
    }
    return note;
}

Note* Audio_AllocNoteFromDecaying(NotePool* pool, SequenceChannelLayer* seqLayer) {
    Note* note = Audio_AudioListPopBack(&pool->decaying);
    if (note != NULL) {
        Audio_NoteReleaseAndTakeOwnership(note, seqLayer);
        Audio_AudioListPushBack(&pool->releasing, &note->listItem);
    }
    return note;
}

Note* Audio_AllocNoteFromActive(NotePool* pool, SequenceChannelLayer* seqLayer) {
    Note* rNote;
    Note* aNote;
    s32 rPriority, aPriority;
    rPriority = aPriority = 0x10;

    rNote = Audio_PopNodeWithValueLessEqual(&pool->releasing, seqLayer->seqChannel->notePriority);

    if (rNote != NULL) {
        rPriority = rNote->playbackState.priority;
    }

    aNote = Audio_PopNodeWithValueLessEqual(&pool->active, seqLayer->seqChannel->notePriority);

    if (aNote != NULL) {
        aPriority = aNote->playbackState.priority;
    }

    if (rNote == NULL && aNote == NULL) {
        return NULL;
    }

    if (aPriority < rPriority) {
        Audio_AudioListRemove(&aNote->listItem);
        func_800E82C0(aNote, seqLayer);
        Audio_AudioListPushBack(&pool->releasing, &aNote->listItem);
        aNote->playbackState.priority = seqLayer->seqChannel->notePriority;
        return aNote;
    }
    rNote->playbackState.wantedParentLayer = seqLayer;
    rNote->playbackState.priority = seqLayer->seqChannel->notePriority;
    return rNote;
}

Note* Audio_AllocNote(SequenceChannelLayer* seqLayer) {
    Note* ret;
    u32 policy = seqLayer->seqChannel->noteAllocPolicy;

    if (policy & 1) {
        ret = seqLayer->note;
        if (ret != NULL && ret->playbackState.prevParentLayer == seqLayer &&
            ret->playbackState.wantedParentLayer == NO_LAYER) {
            Audio_NoteReleaseAndTakeOwnership(ret, seqLayer);
            Audio_AudioListRemove(&ret->listItem);
            Audio_AudioListPushBack(&ret->listItem.pool->releasing, &ret->listItem);
            return ret;
        }
    }

    if (policy & 2) {
        if (!(ret = Audio_AllocNoteFromDisabled(&seqLayer->seqChannel->notePool, seqLayer)) &&
            !(ret = Audio_AllocNoteFromDecaying(&seqLayer->seqChannel->notePool, seqLayer)) &&
            !(ret = Audio_AllocNoteFromActive(&seqLayer->seqChannel->notePool, seqLayer))) {
            goto null_return;
        }
        return ret;
    }

    if (policy & 4) {
        if (!(ret = Audio_AllocNoteFromDisabled(&seqLayer->seqChannel->notePool, seqLayer)) &&
            !(ret = Audio_AllocNoteFromDisabled(&seqLayer->seqChannel->seqPlayer->notePool, seqLayer)) &&
            !(ret = Audio_AllocNoteFromDecaying(&seqLayer->seqChannel->notePool, seqLayer)) &&
            !(ret = Audio_AllocNoteFromDecaying(&seqLayer->seqChannel->seqPlayer->notePool, seqLayer)) &&
            !(ret = Audio_AllocNoteFromActive(&seqLayer->seqChannel->notePool, seqLayer)) &&
            !(ret = Audio_AllocNoteFromActive(&seqLayer->seqChannel->seqPlayer->notePool, seqLayer))) {
            goto null_return;
        }
        return ret;
    }

    if (policy & 8) {
        if (!(ret = Audio_AllocNoteFromDisabled(&gNoteFreeLists, seqLayer)) &&
            !(ret = Audio_AllocNoteFromDecaying(&gNoteFreeLists, seqLayer)) &&
            !(ret = Audio_AllocNoteFromActive(&gNoteFreeLists, seqLayer))) {
            goto null_return;
        }
        return ret;
    }

    if (!(ret = Audio_AllocNoteFromDisabled(&seqLayer->seqChannel->notePool, seqLayer)) &&
        !(ret = Audio_AllocNoteFromDisabled(&seqLayer->seqChannel->seqPlayer->notePool, seqLayer)) &&
        !(ret = Audio_AllocNoteFromDisabled(&gNoteFreeLists, seqLayer)) &&
        !(ret = Audio_AllocNoteFromDecaying(&seqLayer->seqChannel->notePool, seqLayer)) &&
        !(ret = Audio_AllocNoteFromDecaying(&seqLayer->seqChannel->seqPlayer->notePool, seqLayer)) &&
        !(ret = Audio_AllocNoteFromDecaying(&gNoteFreeLists, seqLayer)) &&
        !(ret = Audio_AllocNoteFromActive(&seqLayer->seqChannel->notePool, seqLayer)) &&
        !(ret = Audio_AllocNoteFromActive(&seqLayer->seqChannel->seqPlayer->notePool, seqLayer)) &&
        !(ret = Audio_AllocNoteFromActive(&gNoteFreeLists, seqLayer))) {
        goto null_return;
    }
    return ret;

null_return:
    seqLayer->unusedEu0b8 = 1;
    return NULL;
}

void Audio_NoteInitAll(void) {
    Note* note;
    s32 i;

    for (i = 0; i < gAudioContext.gMaxSimultaneousNotes; i++) {
        note = &gAudioContext.gNotes[i];
        note->noteSubEu = gZeroNoteSub;
        note->playbackState.priority = 0;
        note->playbackState.unk_04 = 0;
        note->playbackState.parentLayer = NO_LAYER;
        note->playbackState.wantedParentLayer = NO_LAYER;
        note->playbackState.prevParentLayer = NO_LAYER;
        note->playbackState.waveId = 0;
        note->playbackState.attributes.velocity = 0.0f;
        note->playbackState.adsrVolScale = 0;
        note->playbackState.adsr.adsrAction.action = 0;
        note->unk_B0 = 0;
        note->unk_92 = 0;
        note->unk_94 = 0;
        note->playbackState.stereoHeadsetEffects = 0;
        note->unk_BC = 0;
        note->synthesisState.synthesisBuffers = Audio_SoundAlloc(&gAudioContext.gNotesAndBuffersPool, 0x1E0);
    }
}
