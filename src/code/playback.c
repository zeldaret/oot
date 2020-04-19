#include <ultra64.h>
#include <global.h>

#ifdef NON_MATCHING
// 630 score, primarily regalloc left. Issues seem based around the usage of pan.
// Currently the array of pan and reverb solves a lot, but doesn't make a ton of logical sense.
void note_set_vel_pan_reverb(Note* note, NoteSubEu* sub, Reverb* reverb) {
    f32 volRight, volLeft;
    // u16 unkMask = 0x7F;
    s32 oot3 = note->playbackState.ootNew3;
    // u8 reverbT = reverb->reverb;
    Note* tNote = note;
    ReverbBits sp24;
    u8 pan[2];
    f32 vel = reverb->unk8;
    u32 temp;

    pan[1] = reverb->pan;
    pan[0] = reverb->reverb;
    sp24 = reverb->reverbBits;

    sub->bitField0.asByte = tNote->noteSubEu.bitField0.asByte & 0xFF;
    sub->bitField1.asByte = tNote->noteSubEu.bitField1.asByte & 0xFF;
    sub->sound.samples = tNote->noteSubEu.sound.samples;
    sub->ootNew = tNote->noteSubEu.ootNew;

    note_set_resampling_rate(sub, reverb->velocity);

    pan[1] &= 0x7F;

    sub->bitField0.asBitfields.stereoStrongRight = 0;
    sub->bitField0.asBitfields.stereoStrongLeft = 0;
    sub->bitField0.asBitfields.stereoHeadsetEffects = sp24.bit6;
    sub->bitField0.asBitfields.usesHeadsetPanEffects = sp24.bit7;
    if (oot3 && gSoundMode == 1) {
        s32 smallPanIndex = pan[1] >> 1;
        if (smallPanIndex >= 0x40) {
            smallPanIndex = 0x3f;
        }

        sub->headsetPanLeft = gHeadsetPanQuantization[smallPanIndex];
        sub->headsetPanRight = gHeadsetPanQuantization[15 - smallPanIndex];
        sub->bitField1.asBitfields.hasTwoAdpcmParts = 1;

        volLeft = gHeadsetPanVolume[pan[1]];
        volRight = gHeadsetPanVolume[127 - pan[1]];
    } else if (oot3 && gSoundMode == 0) {
        u8 strongLeft = 0;
        u8 strongRight = 0;
        sub->headsetPanRight = 0;
        sub->headsetPanLeft = 0;
        sub->bitField1.asBitfields.hasTwoAdpcmParts = 0;

        volLeft = gStereoPanVolume[pan[1]];
        volRight = gStereoPanVolume[127 - pan[1]];
        temp = pan[1];
        if ((s32)temp < 0x20) {
            strongLeft = 1;
        } else if ((s32)(u8)temp > 0x60) {
            strongRight = 1;
        }

        sub->bitField0.asBitfields.stereoStrongRight = strongRight;
        sub->bitField0.asBitfields.stereoStrongLeft = strongLeft;

        switch (sp24.bit2) {
            case 0:
                break;
            case 1:
                sub->bitField0.asBitfields.stereoStrongRight = sp24.bit4;
                sub->bitField0.asBitfields.stereoStrongLeft = sp24.bit5;
                break;
            case 2:
                sub->bitField0.asBitfields.stereoStrongRight = sp24.bit4 | strongRight;
                sub->bitField0.asBitfields.stereoStrongLeft = sp24.bit5 | strongLeft;
                break;
            case 3:
                sub->bitField0.asBitfields.stereoStrongRight = sp24.bit4 ^ strongRight;
                sub->bitField0.asBitfields.stereoStrongLeft = sp24.bit5 ^ strongLeft;
                break;
        }

    } else if (gSoundMode == 3) {
        sub->bitField0.asBitfields.stereoHeadsetEffects = 0;
        sub->bitField0.asBitfields.usesHeadsetPanEffects = 0;
        volLeft = 0.707f;
        volRight = 0.707f;
    } else {
        sub->bitField0.asBitfields.stereoStrongRight = sp24.bit4;
        sub->bitField0.asBitfields.stereoStrongLeft = sp24.bit5;
        volLeft = gDefaultPanVolume[pan[1]];
        volRight = gDefaultPanVolume[127 - pan[1]];
    }

    vel = 0.0f > vel ? 0.0f : vel;
    vel = 1.0f < vel ? 1.0f : vel;

    sub->targetVolLeft = (s32)((vel * volLeft) * 4095.999f);
    sub->targetVolRight = (s32)((vel * volRight) * 4095.999f);

    sub->bankId = reverb->bankId;
    sub->oot14 = reverb->unk10;
    sub->ootNew2 = reverb->unk14;
    sub->ootPad2 = reverb->unk16;
    sub->reverbVol = pan[1];
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/playback/note_set_vel_pan_reverb.s")
#endif

void note_set_resampling_rate(NoteSubEu* noteSubEu, f32 resamplingRateInput) {
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

void note_init(Note* note) {
    if (note->playbackState.parentLayer->adsr.releaseRate == 0) {
        adsr_init(&note->playbackState.adsr, note->playbackState.parentLayer->seqChannel->adsr.envelope,
                  &note->playbackState.adsrVolScale);
    } else {
        adsr_init(&note->playbackState.adsr, note->playbackState.parentLayer->adsr.envelope,
                  &note->playbackState.adsrVolScale);
    }

    note->playbackState.ootNew2 = 0;
    note->playbackState.adsr.adsrAction.adsrBits.bits0 = 1;
    note->noteSubEu = gDefaultNoteSub;
}

void note_disable(Note* note) {
    if (note->noteSubEu.bitField0.asBitfields.needsInit == 1) {
        note->noteSubEu.bitField0.asBitfields.needsInit = 0;
    }
    note->playbackState.priority = 0;
    note->noteSubEu.bitField0.asBitfields.enabled = 0;
    note->playbackState.ootNew2 = 0;
    note->noteSubEu.bitField0.asBitfields.finished = 0;
    note->playbackState.parentLayer = NO_LAYER;
    note->playbackState.prevParentLayer = NO_LAYER;
    note->playbackState.adsr.adsrAction.adsrBits.bits0 = 0;
    note->playbackState.adsr.fadeOutVel = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/playback/process_notes.s")

AudioBankSound* instrument_get_audio_bank_sound(Instrument* instrument, s32 semitone) {
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

Instrument* get_instrument_inner(s32 bankId, s32 instId) {
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

Drum* get_drum(s32 bankId, s32 drumId) {
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

UnkInstrument* get_unknown_instrument(s32 bankId, s32 unkInstrumentId) {
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

    if (unkInstrument->ootNew == 0) {
        return NULL;
    }

    return unkInstrument;
}

#ifdef NON_MATCHING
// Regalloc in case 1.
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
            temp_t7 = &gAudioContext.gCtlEntries[bankId].unkInstruments[instId];
            temp_t7->ootNew = arg3->ootNew;
            temp_t7->ootNew2 = arg3->ootNew2;
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
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/playback/func_800E7744.s")
#endif

#if 0
// This code is SM64 PAL's version with changes made to build here (and a couple legitimate changes made in the function).
// This function needs massive work, hence why it is not set for NON_MATCHING
void seq_channel_layer_decay_release_internal(SequenceChannelLayer* seqLayer, s32 target) {
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
        audio_list_remove(&note->listItem);
        audio_list_push_front(&note->listItem.pool->decaying, &note->listItem);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/playback/seq_channel_layer_decay_release_internal.s")
#endif

void seq_channel_layer_note_decay(SequenceChannelLayer* seqLayer) {
    seq_channel_layer_decay_release_internal(seqLayer, 6);
}

void seq_channel_layer_note_release(SequenceChannelLayer* seqLayer) {
    seq_channel_layer_decay_release_internal(seqLayer, 7);
}

s32 build_synthetic_wave(Note* note, SequenceChannelLayer* seqLayer, s32 waveId) {
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

void init_synthetic_wave(Note* note, SequenceChannelLayer* seqLayer) {
    s32 sampleCountIndex;
    s32 waveSampleCountIndex;
    s32 waveId = seqLayer->instOrWave;

    if (waveId == 0xff) {
        waveId = seqLayer->seqChannel->instOrWave;
    }

    sampleCountIndex = note->playbackState.sampleCountIndex;
    waveSampleCountIndex = build_synthetic_wave(note, seqLayer, waveId);

    if (waveSampleCountIndex != sampleCountIndex) {
        note->noteSubEu.ootNew = waveSampleCountIndex * 4 + sampleCountIndex;
    }
}

void init_note_list(AudioListItem* list) {
    list->prev = list;
    list->next = list;
    list->u.count = 0;
}

void init_note_lists(NotePool* pool) {
    init_note_list(&pool->disabled);
    init_note_list(&pool->decaying);
    init_note_list(&pool->releasing);
    init_note_list(&pool->active);
    pool->disabled.pool = pool;
    pool->decaying.pool = pool;
    pool->releasing.pool = pool;
    pool->active.pool = pool;
}

void init_note_free_list(void) {
    s32 i;

    init_note_lists(&gNoteFreeLists);
    for (i = 0; i < gAudioContext.gMaxSimultaneousNotes; i++) {
        gAudioContext.gNotes[i].listItem.u.value = &gAudioContext.gNotes[i];
        gAudioContext.gNotes[i].listItem.prev = NULL;
        audio_list_push_back(&gNoteFreeLists.disabled, &gAudioContext.gNotes[i].listItem);
    }
}

void note_pool_clear(NotePool* pool) {
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
            audio_list_remove(cur);
            audio_list_push_back(dest, cur);
        }
    }
}

void note_pool_fill(NotePool* pool, s32 count) {
    s32 i;
    s32 j;
    Note* note;
    AudioListItem* source;
    AudioListItem* dest;

    note_pool_clear(pool);

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
            note = audio_list_pop_back(source);
            if (note == NULL) {
                break;
            }
            audio_list_push_back(dest, &note->listItem);
            j++;
        }
    }
}

void audio_list_push_front(AudioListItem* list, AudioListItem* item) {
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

void audio_list_remove(AudioListItem* item) {
    // remove 'item' from the list it's in, if any
    if (item->prev != NULL) {
        item->prev->next = item->next;
        item->next->prev = item->prev;
        item->prev = NULL;
    }
}

Note* pop_node_with_value_less_equal(AudioListItem* list, s32 limit) {
    AudioListItem* cur = list->next;
    AudioListItem* best;

    if (cur == list) {
        return NULL;
    }

    for (best = cur; cur != list; cur = cur->next) {
        if (((Note*)best->u.value)->playbackState.priority >=
            ((Note*)cur->u.value)->playbackState.priority) {
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

void note_init_for_layer(Note* note, SequenceChannelLayer* seqLayer) {
    s32 pad[3];
    s16 instId;
    NotePlaybackState* playback = &note->playbackState;
    NoteSubEu* sub = &note->noteSubEu;

    note->playbackState.prevParentLayer = NO_LAYER;
    note->playbackState.parentLayer = seqLayer;
    playback->priority = seqLayer->seqChannel->notePriority;
    seqLayer->ootNew = 1;
    seqLayer->unusedEu0b8 = 1;
    seqLayer->note = note;
    seqLayer->seqChannel->noteUnused = note;
    seqLayer->seqChannel->layerUnused = seqLayer;
    seqLayer->ootNew2 = 0.0f;
    note_init(note);
    instId = seqLayer->instOrWave;

    if (instId == 0xff) {
        instId = seqLayer->seqChannel->instOrWave;
    }
    sub->sound.audioBankSound = seqLayer->sound;

    if (instId >= 0x80 && instId < 0xC0) {
        sub->bitField1.asBitfields.ootField = 1;
    } else {
        sub->bitField1.asBitfields.ootField = 0;
    }

    if (sub->bitField1.asBitfields.ootField) {
        build_synthetic_wave(note, seqLayer, instId);
    }

    playback->ootNew = seqLayer->seqChannel->bankId;
    playback->ootNew3 = seqLayer->seqChannel->stereoHeadsetEffects;
    sub->bitField1.asBitfields.reverbIndex = seqLayer->seqChannel->reverbIndex & 3;
}

void func_800E82C0(Note* note, SequenceChannelLayer* seqLayer) {
    seq_channel_layer_note_release(note->playbackState.parentLayer);
    note->playbackState.wantedParentLayer = seqLayer;
}

void note_release_and_take_ownership(Note* note, SequenceChannelLayer* seqLayer) {
    note->playbackState.wantedParentLayer = seqLayer;
    note->playbackState.priority = seqLayer->seqChannel->notePriority;

    note->playbackState.adsr.velocity = gAudioContext.gAudioBufferParameters.updatesPerFrameInv;
    note->playbackState.adsr.adsrAction.adsrBits.bits10 = 1;
}

Note* alloc_note_from_disabled(NotePool* pool, SequenceChannelLayer* seqLayer) {
    Note* note = audio_list_pop_back(&pool->disabled);
    if (note != NULL) {
        note_init_for_layer(note, seqLayer);
        audio_list_push_front(&pool->active, &note->listItem);
    }
    return note;
}

Note* alloc_note_from_decaying(NotePool* pool, SequenceChannelLayer* seqLayer) {
    Note* note = audio_list_pop_back(&pool->decaying);
    if (note != NULL) {
        note_release_and_take_ownership(note, seqLayer);
        audio_list_push_back(&pool->releasing, &note->listItem);
    }
    return note;
}

Note* alloc_note_from_active(NotePool* pool, SequenceChannelLayer* seqLayer) {
    Note* rNote;
    Note* aNote;
    s32 rPriority, aPriority;
    rPriority = aPriority = 0x10;

    rNote = pop_node_with_value_less_equal(&pool->releasing, seqLayer->seqChannel->notePriority);

    if (rNote != NULL) {
        rPriority = rNote->playbackState.priority;
    }

    aNote = pop_node_with_value_less_equal(&pool->active, seqLayer->seqChannel->notePriority);

    if (aNote != NULL) {
        aPriority = aNote->playbackState.priority;
    }

    if (rNote == NULL && aNote == NULL) {
        return NULL;
    }

    if (aPriority < rPriority) {
        audio_list_remove(&aNote->listItem);
        func_800E82C0(aNote, seqLayer);
        audio_list_push_back(&pool->releasing, &aNote->listItem);
        aNote->playbackState.priority = seqLayer->seqChannel->notePriority;
        return aNote;
    }
    rNote->playbackState.wantedParentLayer = seqLayer;
    rNote->playbackState.priority = seqLayer->seqChannel->notePriority;
    return rNote;
}

Note* alloc_note(SequenceChannelLayer* seqLayer) {
    Note* ret;
    u32 policy = seqLayer->seqChannel->noteAllocPolicy;

    if (policy & 1) {
        ret = seqLayer->note;
        if (ret != NULL && ret->playbackState.prevParentLayer == seqLayer &&
            ret->playbackState.wantedParentLayer == NO_LAYER) {
            note_release_and_take_ownership(ret, seqLayer);
            audio_list_remove(&ret->listItem);
            audio_list_push_back(&ret->listItem.pool->releasing, &ret->listItem);
            return ret;
        }
    }

    if (policy & 2) {
        if (!(ret = alloc_note_from_disabled(&seqLayer->seqChannel->notePool, seqLayer)) &&
            !(ret = alloc_note_from_decaying(&seqLayer->seqChannel->notePool, seqLayer)) &&
            !(ret = alloc_note_from_active(&seqLayer->seqChannel->notePool, seqLayer))) {
            goto null_return;
        }
        return ret;
    }

    if (policy & 4) {
        if (!(ret = alloc_note_from_disabled(&seqLayer->seqChannel->notePool, seqLayer)) &&
            !(ret = alloc_note_from_disabled(&seqLayer->seqChannel->seqPlayer->notePool, seqLayer)) &&
            !(ret = alloc_note_from_decaying(&seqLayer->seqChannel->notePool, seqLayer)) &&
            !(ret = alloc_note_from_decaying(&seqLayer->seqChannel->seqPlayer->notePool, seqLayer)) &&
            !(ret = alloc_note_from_active(&seqLayer->seqChannel->notePool, seqLayer)) &&
            !(ret = alloc_note_from_active(&seqLayer->seqChannel->seqPlayer->notePool, seqLayer))) {
            goto null_return;
        }
        return ret;
    }

    if (policy & 8) {
        if (!(ret = alloc_note_from_disabled(&gNoteFreeLists, seqLayer)) &&
            !(ret = alloc_note_from_decaying(&gNoteFreeLists, seqLayer)) &&
            !(ret = alloc_note_from_active(&gNoteFreeLists, seqLayer))) {
            goto null_return;
        }
        return ret;
    }

    if (!(ret = alloc_note_from_disabled(&seqLayer->seqChannel->notePool, seqLayer)) &&
        !(ret = alloc_note_from_disabled(&seqLayer->seqChannel->seqPlayer->notePool, seqLayer)) &&
        !(ret = alloc_note_from_disabled(&gNoteFreeLists, seqLayer)) &&
        !(ret = alloc_note_from_decaying(&seqLayer->seqChannel->notePool, seqLayer)) &&
        !(ret = alloc_note_from_decaying(&seqLayer->seqChannel->seqPlayer->notePool, seqLayer)) &&
        !(ret = alloc_note_from_decaying(&gNoteFreeLists, seqLayer)) &&
        !(ret = alloc_note_from_active(&seqLayer->seqChannel->notePool, seqLayer)) &&
        !(ret = alloc_note_from_active(&seqLayer->seqChannel->seqPlayer->notePool, seqLayer)) &&
        !(ret = alloc_note_from_active(&gNoteFreeLists, seqLayer))) {
        goto null_return;
    }
    return ret;

null_return:
    seqLayer->unusedEu0b8 = 1;
    return NULL;
}

void note_init_all(void) {
    Note* note;
    s32 i;

    for (i = 0; i < gAudioContext.gMaxSimultaneousNotes; i++) {
        note = &gAudioContext.gNotes[i];
        note->noteSubEu = gZeroNoteSub;
        note->playbackState.priority = 0;
        note->playbackState.ootNew2 = 0;
        note->playbackState.parentLayer = NO_LAYER;
        note->playbackState.wantedParentLayer = NO_LAYER;
        note->playbackState.prevParentLayer = NO_LAYER;
        note->playbackState.waveId = 0;
        note->playbackState.attributes.velocity = 0.0f;
        note->playbackState.adsrVolScale = 0;
        note->playbackState.adsr.adsrAction.action = 0;
        note->ootNew10 = 0;
        note->ootNew8 = 0;
        note->ootNew9 = 0;
        note->playbackState.ootNew3 = 0;
        note->ootNew4 = 0;
        note->synthesisState.synthesisBuffers = sound_alloc(&gAudioContext.gNotesAndBuffersPool, 0x1E0);
    }
}
