#include <ultra64.h>
#include <global.h>

f32 func_800DDE20(f32 arg0) {
    return 256.0f * gAudioContext.gAudioBufferParameters.unk_1C / arg0;
}

void func_800DDE3C(void) {
    s32 i;

    gAudioContext.unk_3520[255] = func_800DDE20(0.25f);
    gAudioContext.unk_3520[254] = func_800DDE20(0.33f);
    gAudioContext.unk_3520[253] = func_800DDE20(0.5f);
    gAudioContext.unk_3520[252] = func_800DDE20(0.66f);
    gAudioContext.unk_3520[251] = func_800DDE20(0.75f);

    for (i = 128; i < 251; i++) {
        gAudioContext.unk_3520[i] = func_800DDE20(251 - i);
    }

    for (i = 16; i < 128; i++) {
        gAudioContext.unk_3520[i] = func_800DDE20(572 - 4 * i);
    }

    for (i = 1; i < 16; i++) {
        gAudioContext.unk_3520[i] = func_800DDE20(1380 - 60 * i);
    }

    gAudioContext.unk_3520[0] = 0.0f;
}

void Audio_ResetLoadStatus(void) {
    s32 i;

    for (i = 0; i < 0x30; i++) {
        if (gAudioContext.unk_3468[i] != 5)
            gAudioContext.unk_3468[i] = 0;
    }

    for (i = 0; i < 0x30; i++) {
        if (gAudioContext.unk_3438[i] != 5)
            gAudioContext.unk_3438[i] = 0;
    }

    for (i = 0; i < 0x80; i++) {
        if (gAudioContext.unk_3498[i] != 5)
            gAudioContext.unk_3498[i] = 0;
    }
}

void Audio_DiscardBank(s32 bankId) {
    s32 i;

    for (i = 0; i < gAudioContext.gMaxSimultaneousNotes; i++) {
        Note* note = &gAudioContext.gNotes[i];

        if (note->playbackState.bankId == bankId) {
            if (note->playbackState.unk_04 == 0 && note->playbackState.priority != 0) {
                note->playbackState.parentLayer->enabled = 0;
                note->playbackState.parentLayer->finished = 1;
            }
            Audio_NoteDisable(note);
            Audio_AudioListRemove(&note->listItem);
            Audio_AudioListPushBack(&gNoteFreeLists.disabled, &note->listItem);
        }
    }
}

void func_800DE12C(s32 bankId) {
    s32 i;

    for (i = 0; i < gAudioContext.gMaxSimultaneousNotes; i++) {
        Note* note = &gAudioContext.gNotes[i];
        NotePlaybackState* state = &note->playbackState;

        if (state->bankId == bankId) {
            if (state->priority != 0 && state->adsr.action.s.state == ADSR_STATE_DECAY) {
                state->priority = 1;
                state->adsr.fadeOutVel = gAudioContext.gAudioBufferParameters.updatesPerFrameInv;
                state->adsr.action.s.release = 1;
            }
        }
    }
}

void Audio_DiscardSequence(s32 seqId) {
    s32 i;

    for (i = 0; i < gAudioContext.gAudioBufferParameters.unk_10; i++) {
        if (gAudioContext.gSequencePlayers[i].enabled &&
                gAudioContext.gSequencePlayers[i].seqId == seqId) {
            Audio_SequencePlayerDisable(&gAudioContext.gSequencePlayers[i]);
        }
    }
}

void func_800DE238(void* mem, u32 size) {
    func_800E6880(mem, size);
}

void* func_800DE258(SoundAllocPool *pool, u32 size) {
    void* ret = NULL;

    if (gAudioContext.gUnkPool.start != 0) {
        ret = Audio_AllocZeroed(&gAudioContext.gUnkPool, size);
    }
    if (ret == NULL) {
        ret = Audio_AllocZeroed(pool, size);
    }
    return ret;
}

void* func_800DE2B0(SoundAllocPool* pool, u32 size) {
    void* ret = NULL;

    if (gAudioContext.gUnkPool.start != NULL) {
        ret = Audio_Alloc(&gAudioContext.gUnkPool, size);
    }
    if (ret == NULL) {
        ret = Audio_Alloc(pool, size);
    }
    return ret;
}

void* Audio_AllocDmaMemory(SoundAllocPool* pool, u32 size) {
    void* ret;

    ret = Audio_Alloc(pool, size);
    if (ret != NULL) {
        func_800DE238(ret, size);
    }
    return ret;
}

void* Audio_AllocDmaMemoryZeroed(SoundAllocPool *pool, u32 size) {
    void* ret;

    ret = Audio_AllocZeroed(pool, size);
    if (ret != NULL) {
        func_800DE238(ret, size);
    }
    return ret;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/Audio_AllocZeroed.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/Audio_Alloc.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/Audio_SoundAllocPoolInit.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/Audio_PersistentPoolClear.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/Audio_TemporaryPoolClear.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800DE4A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800DE4B0.s")

void Audio_InitMainPools(s32 sizeForAudioInitPool) {
    Audio_SoundAllocPoolInit(&gAudioContext.gAudioInitPool, gAudioContext.gAudioHeap, sizeForAudioInitPool);
    Audio_SoundAllocPoolInit(&gAudioContext.gAudioSessionPool, gAudioContext.gAudioHeap + sizeForAudioInitPool, gAudioContext.gAudioHeapSize - sizeForAudioInitPool);
    gAudioContext.gUnkPool.start = NULL;
}

void Audio_SessionPoolsInit(AudioPoolSplit *split) {
    gAudioContext.gAudioSessionPool.cur = gAudioContext.gAudioSessionPool.start;
    Audio_SoundAllocPoolInit(&gAudioContext.gNotesAndBuffersPool, Audio_Alloc(&gAudioContext.gAudioSessionPool, split->wantSeq), split->wantSeq);
    Audio_SoundAllocPoolInit(&gAudioContext.gSeqAndBankPool, Audio_Alloc(&gAudioContext.gAudioSessionPool, split->wantCustom), split->wantCustom);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/Audio_SeqAndBankPoolInit.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/Audio_PersistentPoolsInit.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/Audio_TemporaryPoolsInit.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/Audio_AllocBankOrSeq.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800DF074.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800DF0CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800DF1D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800DF5AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800DF5DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800DF630.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800DF688.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800DF7BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800DF7C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800DF888.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800DF8F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800DFBF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800E04E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800E0540.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800E05C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800E0634.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800E06CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800E0964.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800E0AD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800E0BB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800E0BF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800E0C80.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800E0CBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800E0E0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800E0E6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800E0E90.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800E0EB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800E1148.s")
