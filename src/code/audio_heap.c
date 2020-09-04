#include <ultra64.h>
#include <global.h>

#define ALIGN16(val) (((val) + 0xF) & ~0xF)

f32 func_800DDE20(f32 arg0) {
    return 256.0f * gAudioContext.gAudioBufferParameters.unkUpdatesPerFrameScaled / arg0;
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
        gAudioContext.unk_3520[i] = func_800DDE20(4 * (143 - i));
    }

    for (i = 1; i < 16; i++) {
        gAudioContext.unk_3520[i] = func_800DDE20(60 * (23 - i));
    }

    gAudioContext.unk_3520[0] = 0.0f;
}

void Audio_ResetLoadStatus(void) {
    s32 i;

    for (i = 0; i < 0x30; i++) {
        if (gAudioContext.gBankLoadStatus[i] != 5) {
            gAudioContext.gBankLoadStatus[i] = 0;
        }
    }

    for (i = 0; i < 0x30; i++) {
        if (gAudioContext.gUnusedLoadStatus[i] != 5) {
            gAudioContext.gUnusedLoadStatus[i] = 0;
        }
    }

    for (i = 0; i < 0x80; i++) {
        if (gAudioContext.gSeqLoadStatus[i] != 5) {
            gAudioContext.gSeqLoadStatus[i] = 0;
        }
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

    for (i = 0; i < gAudioContext.gAudioBufferParameters.numSequencePlayers; i++) {
        if (gAudioContext.gSequencePlayers[i].enabled && gAudioContext.gSequencePlayers[i].seqId == seqId) {
            Audio_SequencePlayerDisable(&gAudioContext.gSequencePlayers[i]);
        }
    }
}

void func_800DE238(void* mem, u32 size) {
    func_800E6880(mem, size);
}

void* func_800DE258(SoundAllocPool* pool, u32 size) {
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

void* Audio_AllocDmaMemoryZeroed(SoundAllocPool* pool, u32 size) {
    void* ret;

    ret = Audio_AllocZeroed(pool, size);
    if (ret != NULL) {
        func_800DE238(ret, size);
    }
    return ret;
}

void* Audio_AllocZeroed(SoundAllocPool* pool, u32 size) {
    u8* ret = Audio_Alloc(pool, size);
    u8* ptr;

    if (ret != NULL) {
        for (ptr = ret; ptr < pool->cur; ptr++) {
            *ptr = 0;
        }
    }

    return ret;
}

void* Audio_Alloc(SoundAllocPool* pool, u32 size) {
    u32 aligned = ALIGN16(size);
    u8* ret = pool->cur;

    if (pool->start + pool->size >= pool->cur + aligned) {
        pool->cur += aligned;
    } else {
        return NULL;
    }
    pool->unused++;
    return ret;
}

void Audio_SoundAllocPoolInit(SoundAllocPool* pool, void* memAddr, u32 size) {
    pool->cur = pool->start = (u8*)ALIGN16((u32)memAddr);
    pool->size = size - ((u32)memAddr & 0xF);
    pool->unused = 0;
}

void Audio_PersistentPoolClear(PersistentPool* persistent) {
    persistent->pool.unused = 0;
    persistent->numEntries = 0;
    persistent->pool.cur = persistent->pool.start;
}

void Audio_TemporaryPoolClear(TemporaryPool* temporary) {
    temporary->pool.unused = 0;
    temporary->pool.cur = temporary->pool.start;
    temporary->nextSide = 0;
    temporary->entries[0].ptr = temporary->pool.start;
    temporary->entries[1].ptr = temporary->pool.start + temporary->pool.size;
    temporary->entries[0].id = -1;
    temporary->entries[1].id = -1;
}

void func_800DE4A0(SoundAllocPool* pool) {
    pool->unused = 0;
    pool->cur = pool->start;
}

void func_800DE4B0(s32 poolIdx) {
    SoundMultiPool* loadedPool;
    SoundAllocPool* persistentPool;
    PersistentPool* persistent;
    void* entryPtr;
    u8* table;

    switch (poolIdx) {
        case 0:
            loadedPool = &gAudioContext.gSeqLoadedPool;
            table = gAudioContext.gSeqLoadStatus;
            break;
        case 1:
            loadedPool = &gAudioContext.gBankLoadedPool;
            table = gAudioContext.gBankLoadStatus;
            break;
        case 2:
            loadedPool = &gAudioContext.gUnusedLoadedPool;
            table = gAudioContext.gUnusedLoadStatus;
            break;
    }

    persistent = &loadedPool->persistent;
    persistentPool = &persistent->pool;

    if (persistent->numEntries == 0) {
        return;
    }

    entryPtr = persistent->entries[persistent->numEntries - 1].ptr;
    persistentPool->cur = entryPtr;
    persistentPool->unused--;

    if (poolIdx == 2) {
        func_800E0E6C(persistent->entries[persistent->numEntries - 1].id);
    }
    if (poolIdx == 1) {
        Audio_DiscardBank(persistent->entries[persistent->numEntries - 1].id);
    }
    table[persistent->entries[persistent->numEntries - 1].id] = 0;
    persistent->numEntries--;
}

void Audio_InitMainPools(s32 sizeForAudioInitPool) {
    Audio_SoundAllocPoolInit(&gAudioContext.gAudioInitPool, gAudioContext.gAudioHeap, sizeForAudioInitPool);
    Audio_SoundAllocPoolInit(&gAudioContext.gAudioSessionPool, gAudioContext.gAudioHeap + sizeForAudioInitPool,
                             gAudioContext.gAudioHeapSize - sizeForAudioInitPool);
    gAudioContext.gUnkPool.start = NULL;
}

void Audio_SessionPoolsInit(AudioPoolSplit4* split) {
    gAudioContext.gAudioSessionPool.cur = gAudioContext.gAudioSessionPool.start;
    Audio_SoundAllocPoolInit(&gAudioContext.gNotesAndBuffersPool,
                             Audio_Alloc(&gAudioContext.gAudioSessionPool, split->wantSeq), split->wantSeq);
    Audio_SoundAllocPoolInit(&gAudioContext.gSeqAndBankPool,
                             Audio_Alloc(&gAudioContext.gAudioSessionPool, split->wantCustom), split->wantCustom);
}

void Audio_SeqAndBankPoolInit(AudioPoolSplit2 *split) {
    gAudioContext.gSeqAndBankPool.cur = gAudioContext.gSeqAndBankPool.start;
    Audio_SoundAllocPoolInit(&gAudioContext.gPersistentCommonPool,
                             Audio_Alloc(&gAudioContext.gSeqAndBankPool, split->wantPersistent), split->wantPersistent);
    Audio_SoundAllocPoolInit(&gAudioContext.gTemporaryCommonPool,
                             Audio_Alloc(&gAudioContext.gSeqAndBankPool, split->wantTemporary), split->wantTemporary);
}

void Audio_PersistentPoolsInit(AudioPoolSplit3* split) {
    gAudioContext.gPersistentCommonPool.cur = gAudioContext.gPersistentCommonPool.start;
    Audio_SoundAllocPoolInit(&gAudioContext.gSeqLoadedPool.persistent.pool,
                             Audio_Alloc(&gAudioContext.gPersistentCommonPool, split->wantSeq), split->wantSeq);
    Audio_SoundAllocPoolInit(&gAudioContext.gBankLoadedPool.persistent.pool,
                             Audio_Alloc(&gAudioContext.gPersistentCommonPool, split->wantBank), split->wantBank);
    Audio_SoundAllocPoolInit(&gAudioContext.gUnusedLoadedPool.persistent.pool,
                             Audio_Alloc(&gAudioContext.gPersistentCommonPool, split->wantUnused), split->wantUnused);
    Audio_PersistentPoolClear(&gAudioContext.gSeqLoadedPool.persistent);
    Audio_PersistentPoolClear(&gAudioContext.gBankLoadedPool.persistent);
    Audio_PersistentPoolClear(&gAudioContext.gUnusedLoadedPool.persistent);
}

void Audio_TemporaryPoolsInit(AudioPoolSplit3* split) {
    gAudioContext.gTemporaryCommonPool.cur = gAudioContext.gTemporaryCommonPool.start;
    Audio_SoundAllocPoolInit(&gAudioContext.gSeqLoadedPool.temporary.pool,
                             Audio_Alloc(&gAudioContext.gTemporaryCommonPool, split->wantSeq), split->wantSeq);
    Audio_SoundAllocPoolInit(&gAudioContext.gBankLoadedPool.temporary.pool,
                             Audio_Alloc(&gAudioContext.gTemporaryCommonPool, split->wantBank), split->wantBank);
    Audio_SoundAllocPoolInit(&gAudioContext.gUnusedLoadedPool.temporary.pool,
                             Audio_Alloc(&gAudioContext.gTemporaryCommonPool, split->wantUnused), split->wantUnused);
    Audio_TemporaryPoolClear(&gAudioContext.gSeqLoadedPool.temporary);
    Audio_TemporaryPoolClear(&gAudioContext.gBankLoadedPool.temporary);
    Audio_TemporaryPoolClear(&gAudioContext.gUnusedLoadedPool.temporary);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/Audio_AllocBankOrSeq.s")

void* func_800DF074(s32 poolIdx, s32 arg1, s32 id) {
    void* ret;

    ret = func_800E04E8(poolIdx, id);
    if (ret != NULL) {
        return ret;
    }
    if (arg1 == 3) {
        return NULL;
    }
    return func_800DF0CC(poolIdx, arg1, id);
}

void* func_800DF0CC(s32 poolIdx, s32 arg1, s32 id) {
    u32 i;
    SoundMultiPool* loadedPool;
    TemporaryPool* temporary;
    PersistentPool* persistent;

    switch (poolIdx) {
        case 0:
            loadedPool = &gAudioContext.gSeqLoadedPool;
            break;
        case 1:
            loadedPool = &gAudioContext.gBankLoadedPool;
            break;
        case 2:
            loadedPool = &gAudioContext.gUnusedLoadedPool;
            break;
    }


    temporary = &loadedPool->temporary;
    if (arg1 == 0) {
        if (temporary->entries[0].id == id) {
            temporary->nextSide = 1;
            return temporary->entries[0].ptr;
        } else if (temporary->entries[1].id == id) {
            temporary->nextSide = 0;
            return temporary->entries[1].ptr;
        } else {
            return NULL;
        }
    }

    persistent = &loadedPool->persistent;
    for (i = 0; i < persistent->numEntries; i++) {
        if (persistent->entries[i].id == id) {
            return persistent->entries[i].ptr;
        }
    }

    if (arg1 == 2) {
        return func_800DF074(poolIdx, 0, id);
    }
    return NULL;
}

void func_800DF1D8(f32 arg0, f32 arg1, u16* arg2) {
    s32 i;
    f32 tmp[16];

    tmp[0] = (f32) (arg1 * 262159.0f);
    tmp[8] = (f32) (arg0 * 262159.0f);
    tmp[1] = (f32) ((arg1 * arg0) * 262159.0f);
    tmp[9] = (f32) (((arg0 * arg0) + arg1) * 262159.0f);

    for (i = 2; i < 8; i++) {
        //! @bug they probably meant to store the value to tmp[i] and tmp[8 + i]
        arg2[i] = arg1 * tmp[i - 2] + arg0 * tmp[i - 1];
        arg2[8 + i] = arg1 * tmp[6 + i] + arg0 * tmp[7 + i];
    }

    for (i = 0; i < 16; i++) {
        arg2[i] = tmp[i];
    }
}

// somewhat big
#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800DF5AC.s")

void func_800DF5DC(s16 *arg0, s32 arg1) {
    s32 i;
    s16* ptr = &D_80130228[8 * arg1];

    for (i = 0; i < 8; i++) {
        arg0[i] = ptr[i];
    }
}

void func_800DF630(s16 *arg0, s32 arg1) {
    s32 i;
    s16* ptr = &D_80130328[8 * (arg1 - 1)];

    for (i = 0; i < 8; i++) {
        arg0[i] = ptr[i];
    }
}

void func_800DF688(s16 *arg0, s32 arg1, s32 arg2) {
    s32 i;

    if (arg1 == 0 && arg2 == 0) {
        func_800DF5DC(arg0, 0);
    }
    else if (arg2 == 0) {
        func_800DF5DC(arg0, arg1);
    }
    else if (arg1 == 0) {
        func_800DF630(arg0, arg2);
    }
    else {
        s16* ptr1 = &D_80130228[8 * arg1];
        s16* ptr2 = &D_80130328[8 * (arg2 - 1)];
        for (i = 0; i < 8; i++) {
            arg0[i] = (ptr1[i] + ptr2[i]) / 2;
        }
    }
}

void func_800DF7BC(SynthesisReverb* arg0) {
}

void func_800DF7C4(void) {
    s32 count;
    s32 i;
    s32 j;

    if (gAudioContext.gAudioBufferParameters.presetUnk4 == 2) {
        count = 2;
    } else {
        count = 1;
    }

    for (i = 0; i < gAudioContext.gNumSynthesisReverbs; i++) {
        for (j = 0; j < count; j++) {
            func_800DF7BC(&gAudioContext.gSynthesisReverbs[i]);
        }
    }
}

void func_800DF888(void) {
    s32 ind;
    s32 i;

    ind = gAudioContext.unk_28A8;
    gAudioContext.unk_2974[ind] = gAudioContext.gAudioBufferParameters.minAiBufferLength;

    for (i = 0; i < 0x580; i++) {
        gAudioContext.unk_2968[ind][i] = 0;
    }
}

s32 Audio_ResetStep(void) {
    s32 i;
    s32 j;
    s32 sp24;

    if (gAudioContext.gAudioBufferParameters.presetUnk4 == 2) {
        sp24 = 2;
    } else {
        sp24 = 1;
    }

    switch (gAudioContext.gAudioResetStatus) {
        case 5:
            for (i = 0; i < gAudioContext.gAudioBufferParameters.numSequencePlayers; i++) {
                Audio_SequencePlayerDisableAsFinished(&gAudioContext.gSequencePlayers[i]);
            }
            gAudioContext.gAudioResetFadeOutFramesLeft = 2 / sp24;
            gAudioContext.gAudioResetStatus--;
            break;

        case 4:
            if (gAudioContext.gAudioResetFadeOutFramesLeft != 0) {
                gAudioContext.gAudioResetFadeOutFramesLeft--;
                func_800DF7C4();
            } else {
                for (i = 0; i < gAudioContext.gMaxSimultaneousNotes; i++) {
                    if (gAudioContext.gNotes[i].noteSubEu.bitField0.s.enabled &&
                            gAudioContext.gNotes[i].playbackState.adsr.action.s.state != ADSR_STATE_DISABLED) {
                        gAudioContext.gNotes[i].playbackState.adsr.fadeOutVel = gAudioContext.gAudioBufferParameters.updatesPerFrameInv;
                        gAudioContext.gNotes[i].playbackState.adsr.action.s.release = 1;
                    }
                }
                gAudioContext.gAudioResetFadeOutFramesLeft = 8 / sp24;
                gAudioContext.gAudioResetStatus--;
            }
            break;

        case 3:
            if (gAudioContext.gAudioResetFadeOutFramesLeft != 0) {
                gAudioContext.gAudioResetFadeOutFramesLeft--;
                func_800DF7C4();
            } else {
                gAudioContext.gAudioResetFadeOutFramesLeft = 2 / sp24;
                gAudioContext.gAudioResetStatus--;
            }
            break;

        case 2:
            func_800DF888();
            if (gAudioContext.gAudioResetFadeOutFramesLeft != 0) {
                gAudioContext.gAudioResetFadeOutFramesLeft--;
            } else {
                gAudioContext.gAudioResetStatus--;
                func_800E0CBC();
                func_800E1148();
            }
            break;

        case 1:
            func_800DFBF8();
            gAudioContext.gAudioResetStatus = 0;
            for (i = 0; i < 3; i++) {
                gAudioContext.unk_2974[i] = gAudioContext.gAudioBufferParameters.maxAiBufferLength;
                for (j = 0; j < 0x580; j++) {
                    gAudioContext.unk_2968[i][j] = 0;
                }
            }
            break;
    }

    if (gAudioContext.gAudioResetStatus < 3) {
        return 0;
    }

    return 1;
}

#ifdef NON_MATCHING
void func_800DFBF8(void) {
    s32 pad[6];
    s32 i;
    s32 j;
    s16* mem;
    u16 windowSize;
    s32 persistentMem;
    s32 temporaryMem;
    s32 totalMem;
    AudioSessionSettings *preset;
    s32 wantMisc;
    u32 intMask;

    preset = &gAudioSessionPresets[gAudioContext.gAudioResetPresetIdToLoad];
    gAudioContext.gSampleDmaNumListItems = 0;
    gAudioContext.gAudioBufferParameters.frequency = preset->frequency;
    gAudioContext.gAudioBufferParameters.aiFrequency = osAiSetFrequency(gAudioContext.gAudioBufferParameters.frequency);
    gAudioContext.gAudioBufferParameters.samplesPerFrameTarget = ((gAudioContext.gAudioBufferParameters.frequency / gAudioContext.gRefreshRate) + 0xF) & 0xFFF0;
    gAudioContext.gAudioBufferParameters.minAiBufferLength = gAudioContext.gAudioBufferParameters.samplesPerFrameTarget - 0x10;
    gAudioContext.gAudioBufferParameters.maxAiBufferLength = gAudioContext.gAudioBufferParameters.samplesPerFrameTarget + 0x10;
    gAudioContext.gAudioBufferParameters.updatesPerFrame = ((gAudioContext.gAudioBufferParameters.samplesPerFrameTarget + 0x10) / 0xD0) + 1;
    gAudioContext.gAudioBufferParameters.samplesPerUpdate = (gAudioContext.gAudioBufferParameters.samplesPerFrameTarget / gAudioContext.gAudioBufferParameters.updatesPerFrame) & ~7;
    gAudioContext.gAudioBufferParameters.samplesPerUpdateMax = gAudioContext.gAudioBufferParameters.samplesPerUpdate + 8;
    gAudioContext.gAudioBufferParameters.samplesPerUpdateMin = gAudioContext.gAudioBufferParameters.samplesPerUpdate - 8;
    gAudioContext.gAudioBufferParameters.resampleRate = 32000.0f / (s32) gAudioContext.gAudioBufferParameters.frequency;
    gAudioContext.gAudioBufferParameters.unkUpdatesPerFrameScaled = (1.0f / 256.0f) / gAudioContext.gAudioBufferParameters.updatesPerFrame;
    gAudioContext.gAudioBufferParameters.unk_24 = gAudioContext.gAudioBufferParameters.updatesPerFrame * 0.25f;
    gAudioContext.gAudioBufferParameters.updatesPerFrameInv = 1.0f / gAudioContext.gAudioBufferParameters.updatesPerFrame;
    gAudioContext.unk_2874 = preset->unk_10;
    gAudioContext.unk_2878 = preset->unk_12;

    gAudioContext.gMaxSimultaneousNotes = preset->maxSimultaneousNotes;
    gAudioContext.gAudioBufferParameters.numSequencePlayers = preset->numSequencePlayers;
    if (gAudioContext.gAudioBufferParameters.numSequencePlayers > 4) {
        gAudioContext.gAudioBufferParameters.numSequencePlayers = 4;
    }
    gAudioContext.unk_2 = preset->unk_14;
    gAudioContext.gTempoInternalToExternal = (u32) (gAudioContext.gAudioBufferParameters.updatesPerFrame * 2880000.0f / gTatumsPerBeat / gAudioContext.unk_2960);

    gAudioContext.unk_2870 = gAudioContext.gRefreshRate;
    gAudioContext.unk_2870 *= gAudioContext.gAudioBufferParameters.updatesPerFrame;
    gAudioContext.unk_2870 /= gAudioContext.gAudioBufferParameters.aiFrequency;
    gAudioContext.unk_2870 /= gAudioContext.gTempoInternalToExternal;

    gAudioContext.gAudioBufferParameters.presetUnk4 = preset->unk_04;
    gAudioContext.gAudioBufferParameters.samplesPerFrameTarget *= gAudioContext.gAudioBufferParameters.presetUnk4;
    gAudioContext.gAudioBufferParameters.maxAiBufferLength *= gAudioContext.gAudioBufferParameters.presetUnk4;
    gAudioContext.gAudioBufferParameters.minAiBufferLength *= gAudioContext.gAudioBufferParameters.presetUnk4;
    gAudioContext.gAudioBufferParameters.updatesPerFrame *= gAudioContext.gAudioBufferParameters.presetUnk4;

    if (gAudioContext.gAudioBufferParameters.presetUnk4 >= 2) {
        gAudioContext.gAudioBufferParameters.maxAiBufferLength -= 0x10;
    }

    gAudioContext.gMaxAudioCmds = gAudioContext.gMaxSimultaneousNotes * 0x10 * gAudioContext.gAudioBufferParameters.updatesPerFrame + preset->numReverbs * 0x18 + 0x140;

    persistentMem = preset->persistentSeqMem + preset->persistentBankMem + preset->persistentUnusedMem + 0x10;
    temporaryMem = preset->temporarySeqMem + preset->temporaryBankMem + preset->temporaryUnusedMem + 0x10;
    totalMem = persistentMem + temporaryMem;
    wantMisc = gAudioContext.gAudioSessionPool.size - totalMem - 0x100;

    if (gAudioContext.gUnkPool.start != NULL) {
        gAudioContext.gUnkPool.cur = gAudioContext.gUnkPool.start;
    }

    gAudioContext.sSessionPoolSplit.wantSeq = wantMisc;
    gAudioContext.sSessionPoolSplit.wantCustom = totalMem;
    Audio_SessionPoolsInit(&gAudioContext.sSessionPoolSplit);
    gAudioContext.sSeqAndBankPoolSplit.wantPersistent = persistentMem;
    gAudioContext.sSeqAndBankPoolSplit.wantTemporary = temporaryMem;
    Audio_SeqAndBankPoolInit(&gAudioContext.sSeqAndBankPoolSplit);
    gAudioContext.sPersistentCommonPoolSplit.wantSeq = preset->persistentSeqMem;
    gAudioContext.sPersistentCommonPoolSplit.wantBank = preset->persistentBankMem;
    gAudioContext.sPersistentCommonPoolSplit.wantUnused = preset->persistentUnusedMem;
    Audio_PersistentPoolsInit(&gAudioContext.sPersistentCommonPoolSplit);
    gAudioContext.sTemporaryCommonPoolSplit.wantSeq = preset->temporarySeqMem;
    gAudioContext.sTemporaryCommonPoolSplit.wantBank = preset->temporaryBankMem;
    gAudioContext.sTemporaryCommonPoolSplit.wantUnused = preset->temporaryUnusedMem;
    Audio_TemporaryPoolsInit(&gAudioContext.sTemporaryCommonPoolSplit);

    Audio_ResetLoadStatus();
    gAudioContext.gNotes = Audio_AllocZeroed(&gAudioContext.gNotesAndBuffersPool, gAudioContext.gMaxSimultaneousNotes * sizeof(Note));
    Audio_NoteInitAll();
    Audio_InitNoteFreeList();
    gAudioContext.gNoteSubsEu = Audio_AllocZeroed(&gAudioContext.gNotesAndBuffersPool, gAudioContext.gAudioBufferParameters.updatesPerFrame * gAudioContext.gMaxSimultaneousNotes * sizeof(NoteSubEu));

    for (i = 0; i != 2; i++) {
        gAudioContext.gAudioCmdBuffers[i] = Audio_AllocDmaMemoryZeroed(&gAudioContext.gNotesAndBuffersPool, gAudioContext.gMaxAudioCmds * sizeof(u64));
    }

    gAudioContext.unk_3520 = Audio_Alloc(&gAudioContext.gNotesAndBuffersPool, 0x100 * sizeof(f32));
    func_800DDE3C();
    for (i = 0; i < 4; i++) {
        gAudioContext.gSynthesisReverbs[i].useReverb = 0;
    }

    gAudioContext.gNumSynthesisReverbs = preset->numReverbs;
    for (i = 0; i < gAudioContext.gNumSynthesisReverbs; i++) {
        SynthesisReverb* reverb = &gAudioContext.gSynthesisReverbs[i];
        ReverbSettings* settings = &preset->reverbSettings[i];
        reverb->downsampleRate = settings->downsampleRate;
        reverb->windowSize = settings->windowSize * 64;
        reverb->windowSize /= reverb->downsampleRate;
        reverb->unk_0C = settings->unk_4;
        reverb->unk_0A = settings->unk_A;
        reverb->unk_14 = settings->unk_6 * 64;
        reverb->unk_16 = settings->unk_8;
        reverb->unk_18 = 0;
        reverb->unk_10 = settings->unk_C;
        reverb->unk_12 = settings->unk_E;
        reverb->unk_05 = settings->unk_10;
        reverb->unk_08 = settings->unk_12;
        reverb->useReverb = 8;
        reverb->unk_28 = func_800DE258(&gAudioContext.gNotesAndBuffersPool, reverb->windowSize * sizeof(s16));
        reverb->unk_2C = func_800DE258(&gAudioContext.gNotesAndBuffersPool, reverb->windowSize * sizeof(s16));
        // windowSize = reverb->windowSize;
        reverb->unk_1C = 0;
        reverb->unk_20 = 0;
        reverb->unk_03 = 0;
        reverb->unk_02 = 2;
        reverb->unk_00 = 1;
        reverb->unk_24 = reverb->windowSize;
        reverb->sound.sample = &reverb->sample;
        reverb->sample.loop = &reverb->loop;
        reverb->sample.bits4 = 4;
        reverb->sample.bits2 = 0;
        reverb->sample.bits24 = reverb->windowSize * 2;
        reverb->loop.start = 0;
        reverb->loop.count = 1;
        reverb->loop.end = reverb->windowSize;
        reverb->sound.tuning = 1.0f;
        reverb->sample.sampleAddr = (u8*) reverb->unk_28;

        if (reverb->downsampleRate != 1) {
            reverb->unk_0E = 0x8000 / reverb->downsampleRate;
            reverb->unk_30 = Audio_AllocZeroed(&gAudioContext.gNotesAndBuffersPool, 0x20);
            reverb->unk_34 = Audio_AllocZeroed(&gAudioContext.gNotesAndBuffersPool, 0x20);
            reverb->unk_38 = Audio_AllocZeroed(&gAudioContext.gNotesAndBuffersPool, 0x20);
            reverb->unk_3C = Audio_AllocZeroed(&gAudioContext.gNotesAndBuffersPool, 0x20);
            reverb = reverb;
            for (j = 0; j < gAudioContext.gAudioBufferParameters.updatesPerFrame; j++) {
                mem = func_800DE258(&gAudioContext.gNotesAndBuffersPool, 0x340);
                reverb->items[0][j].toDownsampleLeft = mem;
                reverb->items[0][j].toDownsampleRight = mem + 0x1A0 / sizeof(s16);
                mem = func_800DE258(&gAudioContext.gNotesAndBuffersPool, 0x340);
                reverb->items[1][j].toDownsampleLeft = mem;
                reverb->items[1][j].toDownsampleRight = mem + 0x1A0 / sizeof(s16);
            }
        }

        if (settings->unk_14 != 0) {
            reverb->unk_278 = Audio_AllocDmaMemoryZeroed(&gAudioContext.gNotesAndBuffersPool, 0x40);
            reverb->unk_270 = Audio_AllocDmaMemory(&gAudioContext.gNotesAndBuffersPool, 8 * sizeof(s16));
            func_800DF5DC(reverb->unk_270, settings->unk_14);
        } else {
            reverb->unk_270 = NULL;
        }

        if (settings->unk_16 != 0) {
            reverb->unk_27C = Audio_AllocDmaMemoryZeroed(&gAudioContext.gNotesAndBuffersPool, 0x40);
            reverb->unk_274 = Audio_AllocDmaMemory(&gAudioContext.gNotesAndBuffersPool, 8 * sizeof(s16));
            func_800DF5DC(reverb->unk_274, settings->unk_16);
        } else {
            reverb->unk_274 = NULL;
        }
    }

    Audio_InitSequencePlayers();
    for (i = 0; i < gAudioContext.gAudioBufferParameters.numSequencePlayers; i++) {
        func_800EC734(i);
        Audio_ResetSequencePlayer(&gAudioContext.gSequencePlayers[i]);
    }

    func_800E0634(preset->unk_30, preset->unk_34);
    func_800E1618(gAudioContext.gMaxSimultaneousNotes);
    gAudioContext.unk_176C = 0;
    func_800E3400();
    func_800E4FB0();
    func_800E3A14();
    gAudioContext.unk_4 = 0x1000;
    func_800E4D94();
    intMask = osSetIntMask(1);
    osWritebackDCacheAll();
    osSetIntMask(intMask);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800DFBF8.s")
#endif

void* func_800E04E8(s32 poolIdx, s32 id) {
    s32 i;

    for (i = 0; i < gAudioContext.unk_2D5C; i++) {
        if (gAudioContext.unk_2D60[i].poolIndex == poolIdx && gAudioContext.unk_2D60[i].id == id) {
            return gAudioContext.unk_2D60[i].ptr;
        }
    }
    return NULL;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800E0540.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800E05C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800E0634.s")

// somewhat big
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

// somewhat big
#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800E0EB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800E1148.s")
