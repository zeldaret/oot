#include "ultra64.h"
#include "global.h"

void Audio_InitSampleCaches(u32 persistentSize, u32 temporarySize);
void Audio_ApplyCachesForSampleBankInternal(s32 toRam, s32 id);

f32 func_800DDE20(f32 arg0) {
    return 256.0f * gAudioContext.audioBufferParameters.unkUpdatesPerFrameScaled / arg0;
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
        if (gAudioContext.bankLoadStatus[i] != 5) {
            gAudioContext.bankLoadStatus[i] = 0;
        }
    }

    for (i = 0; i < 0x30; i++) {
        if (gAudioContext.sampleBankLoadStatus[i] != 5) {
            gAudioContext.sampleBankLoadStatus[i] = 0;
        }
    }

    for (i = 0; i < 0x80; i++) {
        if (gAudioContext.seqLoadStatus[i] != 5) {
            gAudioContext.seqLoadStatus[i] = 0;
        }
    }
}

void Audio_DiscardBank(s32 bankId) {
    s32 i;

    for (i = 0; i < gAudioContext.numNotes; i++) {
        Note* note = &gAudioContext.notes[i];

        if (note->playbackState.bankId == bankId) {
            if (note->playbackState.unk_04 == 0 && note->playbackState.priority != 0) {
                note->playbackState.parentLayer->enabled = false;
                note->playbackState.parentLayer->finished = true;
            }
            Audio_NoteDisable(note);
            Audio_AudioListRemove(&note->listItem);
            Audio_AudioListPushBack(&gAudioContext.noteFreeLists.disabled, &note->listItem);
        }
    }
}

void func_800DE12C(s32 bankId) {
    s32 i;

    for (i = 0; i < gAudioContext.numNotes; i++) {
        Note* note = &gAudioContext.notes[i];
        NotePlaybackState* state = &note->playbackState;

        if (state->bankId == bankId) {
            if (state->priority != 0 && state->adsr.action.s.state == ADSR_STATE_DECAY) {
                state->priority = 1;
                state->adsr.fadeOutVel = gAudioContext.audioBufferParameters.updatesPerFrameInv;
                state->adsr.action.s.release = true;
            }
        }
    }
}

void Audio_DiscardSequence(s32 seqId) {
    s32 i;

    for (i = 0; i < gAudioContext.audioBufferParameters.numSequencePlayers; i++) {
        if (gAudioContext.seqPlayers[i].enabled && gAudioContext.seqPlayers[i].seqId == seqId) {
            Audio_SequencePlayerDisable(&gAudioContext.seqPlayers[i]);
        }
    }
}

void func_800DE238(void* mem, u32 size) {
    Audio_osWritebackDCache(mem, size);
}

void* func_800DE258(SoundAllocPool* pool, u32 size) {
    void* ret = NULL;

    if (gAudioContext.unkPool.start != 0) {
        ret = Audio_AllocZeroed(&gAudioContext.unkPool, size);
    }
    if (ret == NULL) {
        ret = Audio_AllocZeroed(pool, size);
    }
    return ret;
}

void* func_800DE2B0(SoundAllocPool* pool, u32 size) {
    void* ret = NULL;

    if (gAudioContext.unkPool.start != NULL) {
        ret = Audio_Alloc(&gAudioContext.unkPool, size);
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
    pool->count++;
    return ret;
}

void Audio_SoundAllocPoolInit(SoundAllocPool* pool, void* mem, u32 size) {
    pool->cur = pool->start = (u8*)ALIGN16((u32)mem);
    pool->size = size - ((u32)mem & 0xF);
    pool->count = 0;
}

void Audio_PersistentPoolClear(PersistentPool* persistent) {
    persistent->pool.count = 0;
    persistent->numEntries = 0;
    persistent->pool.cur = persistent->pool.start;
}

void Audio_TemporaryPoolClear(TemporaryPool* temporary) {
    temporary->pool.count = 0;
    temporary->pool.cur = temporary->pool.start;
    temporary->nextSide = 0;
    temporary->entries[0].ptr = temporary->pool.start;
    temporary->entries[1].ptr = temporary->pool.start + temporary->pool.size;
    temporary->entries[0].id = -1;
    temporary->entries[1].id = -1;
}

void func_800DE4A0(SoundAllocPool* pool) {
    pool->count = 0;
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
            loadedPool = &gAudioContext.seqLoadedPool;
            table = gAudioContext.seqLoadStatus;
            break;
        case 1:
            loadedPool = &gAudioContext.bankLoadedPool;
            table = gAudioContext.bankLoadStatus;
            break;
        case 2:
            loadedPool = &gAudioContext.sampleLoadedPool;
            table = gAudioContext.sampleBankLoadStatus;
            break;
    }

    persistent = &loadedPool->persistent;
    persistentPool = &persistent->pool;

    if (persistent->numEntries == 0) {
        return;
    }

    entryPtr = persistent->entries[persistent->numEntries - 1].ptr;
    persistentPool->cur = entryPtr;
    persistentPool->count--;

    if (poolIdx == 2) {
        Audio_DiscardSampleBank(persistent->entries[persistent->numEntries - 1].id);
    }
    if (poolIdx == 1) {
        Audio_DiscardBank(persistent->entries[persistent->numEntries - 1].id);
    }
    table[persistent->entries[persistent->numEntries - 1].id] = 0;
    persistent->numEntries--;
}

void Audio_InitMainPools(s32 sizeForAudioInitPool) {
    Audio_SoundAllocPoolInit(&gAudioContext.audioInitPool, gAudioContext.audioHeap, sizeForAudioInitPool);
    Audio_SoundAllocPoolInit(&gAudioContext.audioSessionPool, gAudioContext.audioHeap + sizeForAudioInitPool,
                             gAudioContext.audioHeapSize - sizeForAudioInitPool);
    gAudioContext.unkPool.start = NULL;
}

void Audio_SessionPoolsInit(AudioPoolSplit4* split) {
    gAudioContext.audioSessionPool.cur = gAudioContext.audioSessionPool.start;
    Audio_SoundAllocPoolInit(&gAudioContext.notesAndBuffersPool,
                             Audio_Alloc(&gAudioContext.audioSessionPool, split->wantSeq), split->wantSeq);
    Audio_SoundAllocPoolInit(&gAudioContext.seqAndBankPool,
                             Audio_Alloc(&gAudioContext.audioSessionPool, split->wantCustom), split->wantCustom);
}

void Audio_SeqAndBankPoolInit(AudioPoolSplit2* split) {
    gAudioContext.seqAndBankPool.cur = gAudioContext.seqAndBankPool.start;
    Audio_SoundAllocPoolInit(&gAudioContext.persistentCommonPool,
                             Audio_Alloc(&gAudioContext.seqAndBankPool, split->wantPersistent), split->wantPersistent);
    Audio_SoundAllocPoolInit(&gAudioContext.temporaryCommonPool,
                             Audio_Alloc(&gAudioContext.seqAndBankPool, split->wantTemporary), split->wantTemporary);
}

void Audio_PersistentPoolsInit(AudioPoolSplit3* split) {
    gAudioContext.persistentCommonPool.cur = gAudioContext.persistentCommonPool.start;
    Audio_SoundAllocPoolInit(&gAudioContext.seqLoadedPool.persistent.pool,
                             Audio_Alloc(&gAudioContext.persistentCommonPool, split->wantSeq), split->wantSeq);
    Audio_SoundAllocPoolInit(&gAudioContext.bankLoadedPool.persistent.pool,
                             Audio_Alloc(&gAudioContext.persistentCommonPool, split->wantBank), split->wantBank);
    Audio_SoundAllocPoolInit(&gAudioContext.sampleLoadedPool.persistent.pool,
                             Audio_Alloc(&gAudioContext.persistentCommonPool, split->wantSample), split->wantSample);
    Audio_PersistentPoolClear(&gAudioContext.seqLoadedPool.persistent);
    Audio_PersistentPoolClear(&gAudioContext.bankLoadedPool.persistent);
    Audio_PersistentPoolClear(&gAudioContext.sampleLoadedPool.persistent);
}

void Audio_TemporaryPoolsInit(AudioPoolSplit3* split) {
    gAudioContext.temporaryCommonPool.cur = gAudioContext.temporaryCommonPool.start;
    Audio_SoundAllocPoolInit(&gAudioContext.seqLoadedPool.temporary.pool,
                             Audio_Alloc(&gAudioContext.temporaryCommonPool, split->wantSeq), split->wantSeq);
    Audio_SoundAllocPoolInit(&gAudioContext.bankLoadedPool.temporary.pool,
                             Audio_Alloc(&gAudioContext.temporaryCommonPool, split->wantBank), split->wantBank);
    Audio_SoundAllocPoolInit(&gAudioContext.sampleLoadedPool.temporary.pool,
                             Audio_Alloc(&gAudioContext.temporaryCommonPool, split->wantSample), split->wantSample);
    Audio_TemporaryPoolClear(&gAudioContext.seqLoadedPool.temporary);
    Audio_TemporaryPoolClear(&gAudioContext.bankLoadedPool.temporary);
    Audio_TemporaryPoolClear(&gAudioContext.sampleLoadedPool.temporary);
}

void* Audio_AllocBankOrSeq(s32 poolIdx, s32 size, s32 arg2, s32 id) {
    SoundMultiPool* loadedPool;
    TemporaryPool* tp;
    SoundAllocPool* pool;
    void* mem;
    void* ret;
    u8 firstVal;
    u8 secondVal;
    s32 i;
    u8* table;
    s32 side;

    switch (poolIdx) {
        case 0:
            loadedPool = &gAudioContext.seqLoadedPool;
            table = gAudioContext.seqLoadStatus;
            break;
        case 1:
            loadedPool = &gAudioContext.bankLoadedPool;
            table = gAudioContext.bankLoadStatus;
            break;
        case 2:
            loadedPool = &gAudioContext.sampleLoadedPool;
            table = gAudioContext.sampleBankLoadStatus;
            break;
    }

    if (arg2 == 0) {
        tp = &loadedPool->temporary;
        pool = &tp->pool;

        if (pool->size < size) {
            return NULL;
        }

        firstVal = (tp->entries[0].id == -1) ? 0 : table[tp->entries[0].id];
        secondVal = (tp->entries[1].id == -1) ? 0 : table[tp->entries[1].id];

        if (poolIdx == 1) {
            if (firstVal == 4) {
                for (i = 0; i < gAudioContext.numNotes; i++) {
                    if (gAudioContext.notes[i].playbackState.bankId == tp->entries[0].id &&
                        gAudioContext.notes[i].noteSubEu.bitField0.s.enabled != 0) {
                        break;
                    }
                }

                if (i == gAudioContext.numNotes) {
                    Audio_SetBankLoadStatus(tp->entries[0].id, 3);
                    firstVal = 3;
                }
            }

            if (secondVal == 4) {
                for (i = 0; i < gAudioContext.numNotes; i++) {
                    if (gAudioContext.notes[i].playbackState.bankId == tp->entries[1].id &&
                        gAudioContext.notes[i].noteSubEu.bitField0.s.enabled != 0) {
                        break;
                    }
                }

                if (i == gAudioContext.numNotes) {
                    Audio_SetBankLoadStatus(tp->entries[1].id, 3);
                    secondVal = 3;
                }
            }
        }

        if (firstVal == 0) {
            tp->nextSide = 0;
        } else if (secondVal == 0) {
            tp->nextSide = 1;
        } else if (firstVal == 3 && secondVal == 3) {
            // Use the opposite side from last time.
        } else if (firstVal == 3) {
            tp->nextSide = 0;
        } else if (secondVal == 3) {
            tp->nextSide = 1;
        } else {
            // Check if there is a side which isn't in active use, if so, evict that one.
            if (poolIdx == 0) {
                if (firstVal == 2) {
                    for (i = 0; i < gAudioContext.audioBufferParameters.numSequencePlayers; i++) {
                        if (gAudioContext.seqPlayers[i].enabled != 0 &&
                            gAudioContext.seqPlayers[i].seqId == tp->entries[0].id) {
                            break;
                        }
                    }

                    if (i == gAudioContext.audioBufferParameters.numSequencePlayers) {
                        tp->nextSide = 0;
                        goto done;
                    }
                }

                if (secondVal == 2) {
                    for (i = 0; i < gAudioContext.audioBufferParameters.numSequencePlayers; i++) {
                        if (gAudioContext.seqPlayers[i].enabled != 0 &&
                            gAudioContext.seqPlayers[i].seqId == tp->entries[1].id) {
                            break;
                        }
                    }

                    if (i == gAudioContext.audioBufferParameters.numSequencePlayers) {
                        tp->nextSide = 1;
                        goto done;
                    }
                }
            } else if (poolIdx == 1) {
                if (firstVal == 2) {
                    for (i = 0; i < gAudioContext.numNotes; i++) {
                        if (gAudioContext.notes[i].playbackState.bankId == tp->entries[0].id &&
                            gAudioContext.notes[i].noteSubEu.bitField0.s.enabled != 0) {
                            break;
                        }
                    }
                    if (i == gAudioContext.numNotes) {
                        tp->nextSide = 0;
                        goto done;
                    }
                }

                if (secondVal == 2) {
                    for (i = 0; i < gAudioContext.numNotes; i++) {
                        if (gAudioContext.notes[i].playbackState.bankId == tp->entries[1].id &&
                            gAudioContext.notes[i].noteSubEu.bitField0.s.enabled != 0) {
                            break;
                        }
                    }
                    if (i == gAudioContext.numNotes) {
                        tp->nextSide = 1;
                        goto done;
                    }
                }
            }

            // No such luck. Evict the side that wasn't chosen last time, except
            // if it is being loaded into.
            if (tp->nextSide == 0) {
                if (firstVal == 1) {
                    if (secondVal == 1) {
                        goto fail;
                    }
                    tp->nextSide = 1;
                }
            } else {
                if (secondVal == 1) {
                    if (firstVal == 1) {
                        goto fail;
                    }
                    tp->nextSide = 0;
                }
            }

            if (0) {
            fail:
                // Both sides are being loaded into.
                return NULL;
            }
        }
    done:

        side = tp->nextSide;

        if (tp->entries[side].id != -1) {
            if (poolIdx == 2) {
                Audio_DiscardSampleBank(tp->entries[side].id);
            }
            table[tp->entries[side].id] = 0;
            if (poolIdx == 1) {
                Audio_DiscardBank(tp->entries[side].id);
            }
        }

        switch (side) {
            case 0:
                tp->entries[0].ptr = pool->start;
                tp->entries[0].id = id;
                tp->entries[0].size = size;
                pool->cur = pool->start + size;

                if (tp->entries[1].id != -1 && tp->entries[1].ptr < pool->cur) {
                    if (poolIdx == 2) {
                        Audio_DiscardSampleBank(tp->entries[1].id);
                    }

                    table[tp->entries[1].id] = 0;
                    switch (poolIdx) {
                        case 0:
                            Audio_DiscardSequence((s32)tp->entries[1].id);
                            break;
                        case 1:
                            Audio_DiscardBank((s32)tp->entries[1].id);
                            break;
                    }

                    tp->entries[1].id = -1;
                    tp->entries[1].ptr = pool->start + pool->size;
                }

                ret = tp->entries[0].ptr;
                break;

            case 1:
                tp->entries[1].ptr = (u8*)((u32)(pool->start + pool->size - size) & ~0xF);
                tp->entries[1].id = id;
                tp->entries[1].size = size;
                if (tp->entries[0].id != -1 && tp->entries[1].ptr < pool->cur) {
                    if (poolIdx == 2) {
                        Audio_DiscardSampleBank(tp->entries[0].id);
                    }

                    table[tp->entries[0].id] = 0;
                    switch (poolIdx) {
                        case 0:
                            Audio_DiscardSequence(tp->entries[0].id);
                            break;
                        case 1:
                            Audio_DiscardBank(tp->entries[0].id);
                            break;
                    }

                    tp->entries[0].id = -1;
                    pool->cur = pool->start;
                }
                ret = tp->entries[1].ptr;
                break;

            default:
                return NULL;
        }

        tp->nextSide ^= 1;
        return ret;
    }

    mem = Audio_Alloc(&loadedPool->persistent.pool, size);
    loadedPool->persistent.entries[loadedPool->persistent.numEntries].ptr = mem;

    if (mem == NULL) {
        switch (arg2) {
            case 2:
                return Audio_AllocBankOrSeq(poolIdx, size, 0, id);

            case 0:
            case 1:
                return NULL;
        }
    }

    loadedPool->persistent.entries[loadedPool->persistent.numEntries].id = id;
    loadedPool->persistent.entries[loadedPool->persistent.numEntries].size = size;
    return loadedPool->persistent.entries[loadedPool->persistent.numEntries++].ptr;
}

void* Audio_SearchPools(s32 poolIdx, s32 arg1, s32 id) {
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

void* func_800DF0CC(s32 poolIdx, s32 arg1, s32 bankId) {
    u32 i;
    SoundMultiPool* loadedPool;
    TemporaryPool* temporary;
    PersistentPool* persistent;

    switch (poolIdx) {
        case 0:
            loadedPool = &gAudioContext.seqLoadedPool;
            break;
        case 1:
            loadedPool = &gAudioContext.bankLoadedPool;
            break;
        case 2:
            loadedPool = &gAudioContext.sampleLoadedPool;
            break;
    }

    temporary = &loadedPool->temporary;
    if (arg1 == 0) {
        if (temporary->entries[0].id == bankId) {
            temporary->nextSide = 1;
            return temporary->entries[0].ptr;
        } else if (temporary->entries[1].id == bankId) {
            temporary->nextSide = 0;
            return temporary->entries[1].ptr;
        } else {
            return NULL;
        }
    }

    persistent = &loadedPool->persistent;
    for (i = 0; i < persistent->numEntries; i++) {
        if (persistent->entries[i].id == bankId) {
            return persistent->entries[i].ptr;
        }
    }

    if (arg1 == 2) {
        return Audio_SearchPools(poolIdx, 0, bankId);
    }
    return NULL;
}

void func_800DF1D8(f32 arg0, f32 arg1, u16* arg2) {
    s32 i;
    f32 tmp[16];

    tmp[0] = (f32)(arg1 * 262159.0f);
    tmp[8] = (f32)(arg0 * 262159.0f);
    tmp[1] = (f32)((arg1 * arg0) * 262159.0f);
    tmp[9] = (f32)(((arg0 * arg0) + arg1) * 262159.0f);

    for (i = 2; i < 8; i++) {
        //! @bug value was probably meant to be stored to tmp[i] and tmp[8 + i]
        arg2[i] = arg1 * tmp[i - 2] + arg0 * tmp[i - 1];
        arg2[8 + i] = arg1 * tmp[6 + i] + arg0 * tmp[7 + i];
    }

    for (i = 0; i < 16; i++) {
        arg2[i] = tmp[i];
    }
}

void Audio_ClearFilter(s16* filter) {
    s32 i;

    for (i = 0; i < 8; i++) {
        filter[i] = 0;
    }
}

void Audio_LoadLowPassFilter(s16* filter, s32 cutoff) {
    s32 i;
    s16* ptr = &sLowPassFilterData[8 * cutoff];

    for (i = 0; i < 8; i++) {
        filter[i] = ptr[i];
    }
}

void Audio_LoadHighPassFilter(s16* filter, s32 cutoff) {
    s32 i;
    s16* ptr = &sHighPassFilterData[8 * (cutoff - 1)];

    for (i = 0; i < 8; i++) {
        filter[i] = ptr[i];
    }
}

void Audio_LoadFilter(s16* filter, s32 lowPassCutoff, s32 highPassCutoff) {
    s32 i;

    if (lowPassCutoff == 0 && highPassCutoff == 0) {
        // Identity filter
        Audio_LoadLowPassFilter(filter, 0);
    } else if (highPassCutoff == 0) {
        Audio_LoadLowPassFilter(filter, lowPassCutoff);
    } else if (lowPassCutoff == 0) {
        Audio_LoadHighPassFilter(filter, highPassCutoff);
    } else {
        s16* ptr1 = &sLowPassFilterData[8 * lowPassCutoff];
        s16* ptr2 = &sHighPassFilterData[8 * (highPassCutoff - 1)];
        for (i = 0; i < 8; i++) {
            filter[i] = (ptr1[i] + ptr2[i]) / 2;
        }
    }
}

void func_800DF7BC(SynthesisReverb* reverb) {
}

void func_800DF7C4(void) {
    s32 count;
    s32 i;
    s32 j;

    if (gAudioContext.audioBufferParameters.specUnk4 == 2) {
        count = 2;
    } else {
        count = 1;
    }

    for (i = 0; i < gAudioContext.numSynthesisReverbs; i++) {
        for (j = 0; j < count; j++) {
            func_800DF7BC(&gAudioContext.synthesisReverbs[i]);
        }
    }
}

void func_800DF888(void) {
    s32 ind;
    s32 i;

    ind = gAudioContext.curAIBufIdx;
    gAudioContext.aiBufLengths[ind] = gAudioContext.audioBufferParameters.minAiBufferLength;

    for (i = 0; i < 0x580; i++) {
        gAudioContext.aiBuffers[ind][i] = 0;
    }
}

s32 Audio_ResetStep(void) {
    s32 i;
    s32 j;
    s32 sp24;

    if (gAudioContext.audioBufferParameters.specUnk4 == 2) {
        sp24 = 2;
    } else {
        sp24 = 1;
    }

    switch (gAudioContext.resetStatus) {
        case 5:
            for (i = 0; i < gAudioContext.audioBufferParameters.numSequencePlayers; i++) {
                Audio_SequencePlayerDisableAsFinished(&gAudioContext.seqPlayers[i]);
            }
            gAudioContext.audioResetFadeOutFramesLeft = 2 / sp24;
            gAudioContext.resetStatus--;
            break;

        case 4:
            if (gAudioContext.audioResetFadeOutFramesLeft != 0) {
                gAudioContext.audioResetFadeOutFramesLeft--;
                func_800DF7C4();
            } else {
                for (i = 0; i < gAudioContext.numNotes; i++) {
                    if (gAudioContext.notes[i].noteSubEu.bitField0.s.enabled &&
                        gAudioContext.notes[i].playbackState.adsr.action.s.state != ADSR_STATE_DISABLED) {
                        gAudioContext.notes[i].playbackState.adsr.fadeOutVel =
                            gAudioContext.audioBufferParameters.updatesPerFrameInv;
                        gAudioContext.notes[i].playbackState.adsr.action.s.release = true;
                    }
                }
                gAudioContext.audioResetFadeOutFramesLeft = 8 / sp24;
                gAudioContext.resetStatus--;
            }
            break;

        case 3:
            if (gAudioContext.audioResetFadeOutFramesLeft != 0) {
                gAudioContext.audioResetFadeOutFramesLeft--;
                func_800DF7C4();
            } else {
                gAudioContext.audioResetFadeOutFramesLeft = 2 / sp24;
                gAudioContext.resetStatus--;
            }
            break;

        case 2:
            func_800DF888();
            if (gAudioContext.audioResetFadeOutFramesLeft != 0) {
                gAudioContext.audioResetFadeOutFramesLeft--;
            } else {
                gAudioContext.resetStatus--;
                Audio_DiscardSampleCaches();
                Audio_DiscardSampleBanks();
            }
            break;

        case 1:
            Audio_InitHeap();
            gAudioContext.resetStatus = 0;
            for (i = 0; i < 3; i++) {
                gAudioContext.aiBufLengths[i] = gAudioContext.audioBufferParameters.maxAiBufferLength;
                for (j = 0; j < 0x580; j++) {
                    gAudioContext.aiBuffers[i][j] = 0;
                }
            }
            break;
    }

    if (gAudioContext.resetStatus < 3) {
        return 0;
    }

    return 1;
}

void Audio_InitHeap(void) {
    s32 pad1[4];
    s16* mem;
    s32 persistentMem;
    s32 temporaryMem;
    s32 totalMem;
    s32 wantMisc;
    u32 intMask;
    s32 i;
    s32 j;
    s32 pad2;
    AudioSpec* spec;

    spec = &gAudioSpecs[gAudioContext.audioResetSpecIdToLoad];
    gAudioContext.sampleDmaReqCnt = 0;
    gAudioContext.audioBufferParameters.frequency = spec->frequency;
    gAudioContext.audioBufferParameters.aiFrequency = osAiSetFrequency(gAudioContext.audioBufferParameters.frequency);
    gAudioContext.audioBufferParameters.samplesPerFrameTarget =
        ((gAudioContext.audioBufferParameters.frequency / gAudioContext.refreshRate) + 0xF) & 0xFFF0;
    gAudioContext.audioBufferParameters.minAiBufferLength =
        gAudioContext.audioBufferParameters.samplesPerFrameTarget - 0x10;
    gAudioContext.audioBufferParameters.maxAiBufferLength =
        gAudioContext.audioBufferParameters.samplesPerFrameTarget + 0x10;
    gAudioContext.audioBufferParameters.updatesPerFrame =
        ((gAudioContext.audioBufferParameters.samplesPerFrameTarget + 0x10) / 0xD0) + 1;
    gAudioContext.audioBufferParameters.samplesPerUpdate = (gAudioContext.audioBufferParameters.samplesPerFrameTarget /
                                                            gAudioContext.audioBufferParameters.updatesPerFrame) &
                                                           ~7;
    gAudioContext.audioBufferParameters.samplesPerUpdateMax = gAudioContext.audioBufferParameters.samplesPerUpdate + 8;
    gAudioContext.audioBufferParameters.samplesPerUpdateMin = gAudioContext.audioBufferParameters.samplesPerUpdate - 8;
    gAudioContext.audioBufferParameters.resampleRate = 32000.0f / (s32)gAudioContext.audioBufferParameters.frequency;
    gAudioContext.audioBufferParameters.unkUpdatesPerFrameScaled =
        (1.0f / 256.0f) / gAudioContext.audioBufferParameters.updatesPerFrame;
    gAudioContext.audioBufferParameters.unk_24 = gAudioContext.audioBufferParameters.updatesPerFrame * 0.25f;
    gAudioContext.audioBufferParameters.updatesPerFrameInv = 1.0f / gAudioContext.audioBufferParameters.updatesPerFrame;
    gAudioContext.unk_2874 = spec->unk_10;
    gAudioContext.unk_2878 = spec->unk_12;

    gAudioContext.numNotes = spec->numNotes;
    gAudioContext.audioBufferParameters.numSequencePlayers = spec->numSequencePlayers;
    if (gAudioContext.audioBufferParameters.numSequencePlayers > 4) {
        gAudioContext.audioBufferParameters.numSequencePlayers = 4;
    }
    gAudioContext.unk_2 = spec->unk_14;
    gAudioContext.tempoInternalToExternal = (u32)(gAudioContext.audioBufferParameters.updatesPerFrame * 2880000.0f /
                                                  gTatumsPerBeat / gAudioContext.unk_2960);

    gAudioContext.unk_2870 = gAudioContext.refreshRate;
    gAudioContext.unk_2870 *= gAudioContext.audioBufferParameters.updatesPerFrame;
    gAudioContext.unk_2870 /= gAudioContext.audioBufferParameters.aiFrequency;
    gAudioContext.unk_2870 /= gAudioContext.tempoInternalToExternal;

    gAudioContext.audioBufferParameters.specUnk4 = spec->unk_04;
    gAudioContext.audioBufferParameters.samplesPerFrameTarget *= gAudioContext.audioBufferParameters.specUnk4;
    gAudioContext.audioBufferParameters.maxAiBufferLength *= gAudioContext.audioBufferParameters.specUnk4;
    gAudioContext.audioBufferParameters.minAiBufferLength *= gAudioContext.audioBufferParameters.specUnk4;
    gAudioContext.audioBufferParameters.updatesPerFrame *= gAudioContext.audioBufferParameters.specUnk4;

    if (gAudioContext.audioBufferParameters.specUnk4 >= 2) {
        gAudioContext.audioBufferParameters.maxAiBufferLength -= 0x10;
    }

    gAudioContext.maxAudioCmds =
        gAudioContext.numNotes * 0x10 * gAudioContext.audioBufferParameters.updatesPerFrame +
        spec->numReverbs * 0x18 + 0x140;

    persistentMem = spec->persistentSeqMem + spec->persistentBankMem + spec->persistentSampleMem + 0x10;
    temporaryMem = spec->temporarySeqMem + spec->temporaryBankMem + spec->temporarySampleMem + 0x10;
    totalMem = persistentMem + temporaryMem;
    wantMisc = gAudioContext.audioSessionPool.size - totalMem - 0x100;

    if (gAudioContext.unkPool.start != NULL) {
        gAudioContext.unkPool.cur = gAudioContext.unkPool.start;
    }

    gAudioContext.sessionPoolSplit.wantSeq = wantMisc;
    gAudioContext.sessionPoolSplit.wantCustom = totalMem;
    Audio_SessionPoolsInit(&gAudioContext.sessionPoolSplit);
    gAudioContext.seqAndBankPoolSplit.wantPersistent = persistentMem;
    gAudioContext.seqAndBankPoolSplit.wantTemporary = temporaryMem;
    Audio_SeqAndBankPoolInit(&gAudioContext.seqAndBankPoolSplit);
    gAudioContext.persistentCommonPoolSplit.wantSeq = spec->persistentSeqMem;
    gAudioContext.persistentCommonPoolSplit.wantBank = spec->persistentBankMem;
    gAudioContext.persistentCommonPoolSplit.wantSample = spec->persistentSampleMem;
    Audio_PersistentPoolsInit(&gAudioContext.persistentCommonPoolSplit);
    gAudioContext.temporaryCommonPoolSplit.wantSeq = spec->temporarySeqMem;
    gAudioContext.temporaryCommonPoolSplit.wantBank = spec->temporaryBankMem;
    gAudioContext.temporaryCommonPoolSplit.wantSample = spec->temporarySampleMem;
    Audio_TemporaryPoolsInit(&gAudioContext.temporaryCommonPoolSplit);

    Audio_ResetLoadStatus();
    gAudioContext.notes =
        Audio_AllocZeroed(&gAudioContext.notesAndBuffersPool, gAudioContext.numNotes * sizeof(Note));
    Audio_NoteInitAll();
    Audio_InitNoteFreeList();
    gAudioContext.noteSubsEu = Audio_AllocZeroed(&gAudioContext.notesAndBuffersPool,
                                                 gAudioContext.audioBufferParameters.updatesPerFrame *
                                                     gAudioContext.numNotes * sizeof(NoteSubEu));

    for (i = 0; i != 2; i++) {
        gAudioContext.abiCmdBufs[i] =
            Audio_AllocDmaMemoryZeroed(&gAudioContext.notesAndBuffersPool, gAudioContext.maxAudioCmds * sizeof(u64));
    }

    gAudioContext.unk_3520 = Audio_Alloc(&gAudioContext.notesAndBuffersPool, 0x100 * sizeof(f32));
    func_800DDE3C();
    for (i = 0; i < 4; i++) {
        gAudioContext.synthesisReverbs[i].useReverb = 0;
    }

    gAudioContext.numSynthesisReverbs = spec->numReverbs;
    for (i = 0; i < gAudioContext.numSynthesisReverbs; i++) {
        ReverbSettings* settings = &spec->reverbSettings[i];
        SynthesisReverb* reverb = &gAudioContext.synthesisReverbs[i];
        reverb->downsampleRate = settings->downsampleRate;
        reverb->windowSize = settings->windowSize * 64;
        reverb->windowSize /= reverb->downsampleRate;
        reverb->unk_0C = settings->unk_4;
        reverb->unk_0A = settings->unk_A;
        reverb->unk_14 = settings->unk_6 * 64;
        reverb->unk_16 = settings->unk_8;
        reverb->unk_18 = 0;
        reverb->leakRtl = settings->leakRtl;
        reverb->leakLtr = settings->leakLtr;
        reverb->unk_05 = settings->unk_10;
        reverb->unk_08 = settings->unk_12;
        reverb->useReverb = 8;
        reverb->leftRingBuf = func_800DE258(&gAudioContext.notesAndBuffersPool, reverb->windowSize * sizeof(s16));
        reverb->rightRingBuf = func_800DE258(&gAudioContext.notesAndBuffersPool, reverb->windowSize * sizeof(s16));
        reverb->nextRingBufPos = 0;
        reverb->unk_20 = 0;
        reverb->curFrame = 0;
        reverb->bufSizePerChan = reverb->windowSize;
        reverb->framesToIgnore = 2;
        reverb->resampleFlags = 1;
        reverb->sound.sample = &reverb->sample;
        reverb->sample.loop = &reverb->loop;
        reverb->sound.tuning = 1.0f;
        reverb->sample.codec = 4;
        reverb->sample.medium = MEDIUM_RAM;
        reverb->sample.size = reverb->windowSize * 2;
        reverb->sample.sampleAddr = (u8*)reverb->leftRingBuf;
        reverb->loop.start = 0;
        reverb->loop.count = 1;
        reverb->loop.end = reverb->windowSize;

        if (reverb->downsampleRate != 1) {
            reverb->unk_0E = 0x8000 / reverb->downsampleRate;
            reverb->unk_30 = Audio_AllocZeroed(&gAudioContext.notesAndBuffersPool, 0x20);
            reverb->unk_34 = Audio_AllocZeroed(&gAudioContext.notesAndBuffersPool, 0x20);
            reverb->unk_38 = Audio_AllocZeroed(&gAudioContext.notesAndBuffersPool, 0x20);
            reverb->unk_3C = Audio_AllocZeroed(&gAudioContext.notesAndBuffersPool, 0x20);
            for (j = 0; j < gAudioContext.audioBufferParameters.updatesPerFrame; j++) {
                mem = func_800DE258(&gAudioContext.notesAndBuffersPool, 0x340);
                reverb->items[0][j].toDownsampleLeft = mem;
                reverb->items[0][j].toDownsampleRight = mem + 0x1A0 / sizeof(s16);
                mem = func_800DE258(&gAudioContext.notesAndBuffersPool, 0x340);
                reverb->items[1][j].toDownsampleLeft = mem;
                reverb->items[1][j].toDownsampleRight = mem + 0x1A0 / sizeof(s16);
            }
        }

        if (settings->lowPassFilterCutoffLeft != 0) {
            reverb->filterLeftState = Audio_AllocDmaMemoryZeroed(&gAudioContext.notesAndBuffersPool, 0x40);
            reverb->filterLeft = Audio_AllocDmaMemory(&gAudioContext.notesAndBuffersPool, 8 * sizeof(s16));
            Audio_LoadLowPassFilter(reverb->filterLeft, settings->lowPassFilterCutoffLeft);
        } else {
            reverb->filterLeft = NULL;
        }

        if (settings->lowPassFilterCutoffRight != 0) {
            reverb->filterRightState = Audio_AllocDmaMemoryZeroed(&gAudioContext.notesAndBuffersPool, 0x40);
            reverb->filterRight = Audio_AllocDmaMemory(&gAudioContext.notesAndBuffersPool, 8 * sizeof(s16));
            Audio_LoadLowPassFilter(reverb->filterRight, settings->lowPassFilterCutoffRight);
        } else {
            reverb->filterRight = NULL;
        }
    }

    Audio_InitSequencePlayers();
    for (j = 0; j < gAudioContext.audioBufferParameters.numSequencePlayers; j++) {
        func_800EC734(j);
        Audio_ResetSequencePlayer(&gAudioContext.seqPlayers[j]);
    }

    Audio_InitSampleCaches(spec->persistentSampleCacheMem, spec->temporarySampleCacheMem);
    func_800E1618(gAudioContext.numNotes);
    gAudioContext.unk_176C = 0;
    Audio_SlowLoadsInit();
    func_800E4FB0();
    Audio_AsyncLoadReqInit();
    gAudioContext.unk_4 = 0x1000;
    func_800E4D94();
    intMask = osSetIntMask(1);
    osWritebackDCacheAll();
    osSetIntMask(intMask);
}

void* func_800E04E8(s32 poolIdx, s32 id) {
    s32 i;

    for (i = 0; i < gAudioContext.unk_2D50.count; i++) {
        if (gAudioContext.unk_2D60[i].poolIndex == poolIdx && gAudioContext.unk_2D60[i].id == id) {
            return gAudioContext.unk_2D60[i].ptr;
        }
    }
    return NULL;
}

void* func_800E0540(s32 poolIdx, s32 id, u32 size) {
    void* ret;
    s32 sp18;

    sp18 = gAudioContext.unk_2D50.count;

    ret = Audio_Alloc(&gAudioContext.unk_2D50, size);
    gAudioContext.unk_2D60[sp18].ptr = ret;
    if (ret == NULL) {
        return NULL;
    }
    gAudioContext.unk_2D60[sp18].poolIndex = poolIdx;
    gAudioContext.unk_2D60[sp18].id = id;
    gAudioContext.unk_2D60[sp18].size = size;
    //! @bug UB: missing return. "ret" is in v0 at this point, but doing an
    // explicit return uses an additional register.
    // return ret;
}

void* Audio_AllocSampleCacheEntry(u32 size, s32 bankId, void* sampleAddr, s8 medium, s32 persistent) {
    SampleCacheEntry* entry;

    if (persistent == false) {
        entry = Audio_AllocTemporarySampleCacheEntry(size);
    } else {
        entry = Audio_AllocPersistentSampleCacheEntry(size);
    }
    if (entry != NULL) {
        //! @bug?? This uses bankId instead of sampleBankId, and I can't make sense of why
        entry->sampleBankId = bankId;
        entry->sampleAddr = sampleAddr;
        entry->medium = medium;
        return entry->allocatedAddr;
    }
    return NULL;
}

void Audio_InitSampleCaches(u32 persistentSize, u32 temporarySize) {
    void* mem;

    mem = func_800DE2B0(&gAudioContext.notesAndBuffersPool, persistentSize);
    if (mem == NULL) {
        gAudioContext.persistentSampleCache.pool.size = 0;
    } else {
        Audio_SoundAllocPoolInit(&gAudioContext.persistentSampleCache.pool, mem, persistentSize);
    }
    mem = func_800DE2B0(&gAudioContext.notesAndBuffersPool, temporarySize);
    if (mem == NULL) {
        gAudioContext.temporarySampleCache.pool.size = 0;
    } else {
        Audio_SoundAllocPoolInit(&gAudioContext.temporarySampleCache.pool, mem, temporarySize);
    }
    gAudioContext.persistentSampleCache.size = 0;
    gAudioContext.temporarySampleCache.size = 0;
}

SampleCacheEntry* Audio_AllocTemporarySampleCacheEntry(u32 size) {
    u8* allocAfter;
    u8* allocBefore;
    void* mem;
    s32 index;
    s32 i;
    SampleCacheEntry* ret;
    AudioStruct0D68* item;
    SampleCachePool* pool;
    u8* start;
    u8* end;

    pool = &gAudioContext.temporarySampleCache;
    allocBefore = pool->pool.cur;
    mem = Audio_Alloc(&pool->pool, size);
    if (mem == NULL) {
        // Reset the pool and try again. We still keep pointers to within the
        // pool, so we have to be careful to discard existing overlapping
        // allocations further down.
        u8* old = pool->pool.cur;
        pool->pool.cur = pool->pool.start;
        mem = Audio_Alloc(&pool->pool, size);
        if (mem == NULL) {
            pool->pool.cur = old;
            return NULL;
        }
        allocBefore = pool->pool.start;
    }

    allocAfter = pool->pool.cur;

    index = -1;
    for (i = 0; i < gAudioContext.unk_176C; i++) {
        item = &gAudioContext.unk_0D68[i];
        if (item->isFree == false) {
            start = item->ramAddr;
            end = item->ramAddr + item->sample->size - 1;

            if (end < allocBefore && start < allocBefore) {
                continue;
            }
            if (end >= allocAfter && start >= allocAfter) {
                continue;
            }

            // Overlap
            item->isFree = true;
        }
    }

    for (i = 0; i < pool->size; i++) {
        if (pool->entries[i].inUse == false) {
            continue;
        }

        start = pool->entries[i].allocatedAddr;
        end = start + pool->entries[i].size - 1;

        if (end < allocBefore && start < allocBefore) {
            continue;
        }
        if (end >= allocAfter && start >= allocAfter) {
            continue;
        }

        // Overlap. Discard existing entry.
        Audio_DiscardSampleCacheEntry(&pool->entries[i]);
        if (index == -1) {
            index = i;
        }
    }

    if (index == -1) {
        index = pool->size++;
    }

    ret = &pool->entries[index];
    ret->inUse = true;
    ret->allocatedAddr = mem;
    ret->size = size;
    return ret;
}

void Audio_UnapplySampleCacheForBank(SampleCacheEntry* entry, s32 bankId) {
    Drum* drum;
    Instrument* inst;
    AudioBankSound* sfx;
    s32 instId;
    s32 drumId;
    s32 sfxId;

    for (instId = 0; instId < gAudioContext.ctlEntries[bankId].numInstruments; instId++) {
        inst = Audio_GetInstrumentInner(bankId, instId);
        if (inst != NULL) {
            if (inst->normalRangeLo != 0) {
                Audio_UnapplySampleCache(entry, inst->lowNotesSound.sample);
            }
            if (inst->normalRangeHi != 0x7F) {
                Audio_UnapplySampleCache(entry, inst->highNotesSound.sample);
            }
            Audio_UnapplySampleCache(entry, inst->normalNotesSound.sample);
        }
    }

    for (drumId = 0; drumId < gAudioContext.ctlEntries[bankId].numDrums; drumId++) {
        drum = Audio_GetDrum(bankId, drumId);
        if (drum != NULL) {
            Audio_UnapplySampleCache(entry, drum->sound.sample);
        }
    }

    for (sfxId = 0; sfxId < gAudioContext.ctlEntries[bankId].numSfx; sfxId++) {
        sfx = Audio_GetSfx(bankId, sfxId);
        if (sfx != NULL) {
            Audio_UnapplySampleCache(entry, sfx->sample);
        }
    }
}

void Audio_DiscardSampleCacheEntry(SampleCacheEntry* entry) {
    s32 numBanks;
    s32 sampleBankId1;
    s32 sampleBankId2;
    s32 bankId;

    numBanks = gAudioContext.audioBankTable->header.entryCnt;
    for (bankId = 0; bankId < numBanks; bankId++) {
        sampleBankId1 = gAudioContext.ctlEntries[bankId].sampleBankId1;
        sampleBankId2 = gAudioContext.ctlEntries[bankId].sampleBankId2;
        if (((sampleBankId1 != 0xFF) && (entry->sampleBankId == sampleBankId1)) || ((sampleBankId2 != 0xFF) && (entry->sampleBankId == sampleBankId2)) ||
            entry->sampleBankId == 0) {
            if (Audio_SearchPools(1, 2, bankId) != NULL) {
                if (Audio_IsBankLoadComplete(bankId) != 0) {
                    Audio_UnapplySampleCacheForBank(entry, bankId);
                }
            }
        }
    }
}

void Audio_UnapplySampleCache(SampleCacheEntry* entry, AudioBankSample* sample) {
    if (sample != NULL) {
        if (sample->sampleAddr == entry->allocatedAddr) {
            sample->sampleAddr = entry->sampleAddr;
            sample->medium = entry->medium;
        }
    }
}

SampleCacheEntry* Audio_AllocPersistentSampleCacheEntry(u32 size) {
    SampleCachePool* pool;
    SampleCacheEntry* entry;
    void* mem;

    pool = &gAudioContext.persistentSampleCache;
    mem = Audio_Alloc(&pool->pool, size);
    if (mem == NULL) {
        return NULL;
    }
    entry = &pool->entries[pool->size];
    entry->inUse = true;
    entry->allocatedAddr = mem;
    entry->size = size;
    pool->size++;
    return entry;
}

void Audio_DiscardSampleCacheForBank(SampleCacheEntry* entry, s32 sampleBankId1, s32 sampleBankId2, s32 bankId) {
    if ((entry->sampleBankId == sampleBankId1) || (entry->sampleBankId == sampleBankId2) || (entry->sampleBankId == 0)) {
        Audio_UnapplySampleCacheForBank(entry, bankId);
    }
}

void Audio_DiscardSampleCaches(void) {
    s32 numBanks;
    s32 sampleBankId1;
    s32 sampleBankId2;
    s32 bankId;
    s32 j;

    numBanks = gAudioContext.audioBankTable->header.entryCnt;
    for (bankId = 0; bankId < numBanks; bankId++) {
        sampleBankId1 = gAudioContext.ctlEntries[bankId].sampleBankId1;
        sampleBankId2 = gAudioContext.ctlEntries[bankId].sampleBankId2;
        if ((sampleBankId1 == 0xFF) && (sampleBankId2 == 0xFF)) {
            continue;
        }
        if (Audio_SearchPools(1, 3, bankId) == NULL || !Audio_IsBankLoadComplete(bankId)) {
            continue;
        }

        for (j = 0; j < gAudioContext.persistentSampleCache.size; j++) {
            Audio_DiscardSampleCacheForBank(&gAudioContext.persistentSampleCache.entries[j], sampleBankId1, sampleBankId2, bankId);
        }
        for (j = 0; j < gAudioContext.temporarySampleCache.size; j++) {
            Audio_DiscardSampleCacheForBank(&gAudioContext.temporarySampleCache.entries[j], sampleBankId1, sampleBankId2, bankId);
        }
    }
}

typedef struct {
    u8* oldAddr;
    u8* newAddr;
    u32 size;
    u8 newMedium;
} StorageChange;

void Audio_ChangeStorage(StorageChange* change, AudioBankSample* sample) {
    if (sample != NULL) {
        u8* start = change->oldAddr;
        u8* end = change->oldAddr + change->size;
        u8* sampleAddr = sample->sampleAddr;
        if (start <= sampleAddr && sampleAddr < end) {
            sample->sampleAddr = sampleAddr - start + change->newAddr;
            sample->medium = change->newMedium & 0xFF;
        }
    }
}

void Audio_DiscardSampleBank(s32 sampleBankId) {
    Audio_ApplyCachesForSampleBankInternal(false, sampleBankId);
}

void Audio_ApplyCachesForSampleBank(s32 sampleBankId) {
    Audio_ApplyCachesForSampleBankInternal(true, sampleBankId);
}

void Audio_ApplyCachesForSampleBankInternal(s32 toRam, s32 sampleBankId) {
    SampleBankTable* sampleBankTable;
    SampleBankTableEntry* entry;
    s32 numBanks;
    s32 instId;
    s32 drumId;
    s32 sfxId;
    StorageChange change;
    s32 sampleBankId1;
    s32 sampleBankId2;
    s32 bankId;
    Drum* drum;
    Instrument* inst;
    AudioBankSound* sfx;
    u8** fakematch;
    s32 pad[4];

    sampleBankTable = gAudioContext.sampleBankTable;
    numBanks = gAudioContext.audioBankTable->header.entryCnt;
    change.oldAddr = Audio_SearchPools(2, 2, sampleBankId);
    if (change.oldAddr == NULL) {
        return;
    }

    entry = &sampleBankTable->entries[sampleBankId];
    change.size = entry->size;
    change.newMedium = entry->medium;

    if ((change.newMedium == MEDIUM_CART) || (change.newMedium == MEDIUM_DISK_DRIVE)) {
        change.newAddr = entry->romAddr;
    } else {
        change.newAddr = NULL;
    }

    fakematch = &change.oldAddr;
    if ((toRam != false) && (toRam == true)) {
        u8* temp = change.newAddr;
        change.newAddr = *fakematch; // = change.oldAddr
        change.oldAddr = temp;
        change.newMedium = MEDIUM_RAM;
    }

    for (bankId = 0; bankId < numBanks; bankId++) {
        sampleBankId1 = gAudioContext.ctlEntries[bankId].sampleBankId1;
        sampleBankId2 = gAudioContext.ctlEntries[bankId].sampleBankId2;
        if ((sampleBankId1 != 0xFF) || (sampleBankId2 != 0xFF)) {
            if (!Audio_IsBankLoadComplete(bankId) || Audio_SearchPools(1, 2, bankId) == NULL) {
                continue;
            }

            if (sampleBankId1 == sampleBankId) {
            } else if (sampleBankId2 == sampleBankId) {
            } else {
                continue;
            }

            for (instId = 0; instId < gAudioContext.ctlEntries[bankId].numInstruments; instId++) {
                inst = Audio_GetInstrumentInner(bankId, instId);
                if (inst != NULL) {
                    if (inst->normalRangeLo != 0) {
                        Audio_ChangeStorage(&change, inst->lowNotesSound.sample);
                    }
                    if (inst->normalRangeHi != 0x7F) {
                        Audio_ChangeStorage(&change, inst->highNotesSound.sample);
                    }
                    Audio_ChangeStorage(&change, inst->normalNotesSound.sample);
                }
            }

            for (drumId = 0; drumId < gAudioContext.ctlEntries[bankId].numDrums; drumId++) {
                drum = Audio_GetDrum(bankId, drumId);
                if (drum != NULL) {
                    Audio_ChangeStorage(&change, drum->sound.sample);
                }
            }

            for (sfxId = 0; sfxId < gAudioContext.ctlEntries[bankId].numSfx; sfxId++) {
                sfx = Audio_GetSfx(bankId, sfxId);
                if (sfx != NULL) {
                    Audio_ChangeStorage(&change, sfx->sample);
                }
            }
        }
    }
}

void Audio_DiscardSampleBanks(void) {
    SoundMultiPool* pool;
    PersistentPool* persistent;
    TemporaryPool* temporary;
    u32 i;

    pool = &gAudioContext.sampleLoadedPool;
    temporary = &pool->temporary;

    if (temporary->entries[0].id != -1) {
        Audio_DiscardSampleBank(temporary->entries[0].id);
    }

    if (temporary->entries[1].id != -1) {
        Audio_DiscardSampleBank(temporary->entries[1].id);
    }

    persistent = &pool->persistent;
    for (i = 0; i < persistent->numEntries; i++) {
        Audio_DiscardSampleBank(persistent->entries[i].id);
    }
}
