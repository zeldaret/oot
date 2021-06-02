#include "ultra64.h"
#include "global.h"

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
                note->playbackState.parentLayer->enabled = false;
                note->playbackState.parentLayer->finished = true;
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
                state->adsr.action.s.release = true;
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

void Audio_SeqAndBankPoolInit(AudioPoolSplit2* split) {
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
                for (i = 0; i < gAudioContext.gMaxSimultaneousNotes; i++) {
                    if (gAudioContext.gNotes[i].playbackState.bankId == tp->entries[0].id &&
                        gAudioContext.gNotes[i].noteSubEu.bitField0.s.enabled != 0) {
                        break;
                    }
                }

                if (i == gAudioContext.gMaxSimultaneousNotes) {
                    Audio_SetBankLoadStatus(tp->entries[0].id, 3);
                    firstVal = 3;
                }
            }

            if (secondVal == 4) {
                for (i = 0; i < gAudioContext.gMaxSimultaneousNotes; i++) {
                    if (gAudioContext.gNotes[i].playbackState.bankId == tp->entries[1].id &&
                        gAudioContext.gNotes[i].noteSubEu.bitField0.s.enabled != 0) {
                        break;
                    }
                }

                if (i == gAudioContext.gMaxSimultaneousNotes) {
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
                    for (i = 0; i < gAudioContext.gAudioBufferParameters.numSequencePlayers; i++) {
                        if (gAudioContext.gSequencePlayers[i].enabled != 0 &&
                            gAudioContext.gSequencePlayers[i].seqId == tp->entries[0].id) {
                            break;
                        }
                    }

                    if (i == gAudioContext.gAudioBufferParameters.numSequencePlayers) {
                        tp->nextSide = 0;
                        goto done;
                    }
                }

                if (secondVal == 2) {
                    for (i = 0; i < gAudioContext.gAudioBufferParameters.numSequencePlayers; i++) {
                        if (gAudioContext.gSequencePlayers[i].enabled != 0 &&
                            gAudioContext.gSequencePlayers[i].seqId == tp->entries[1].id) {
                            break;
                        }
                    }

                    if (i == gAudioContext.gAudioBufferParameters.numSequencePlayers) {
                        tp->nextSide = 1;
                        goto done;
                    }
                }
            } else if (poolIdx == 1) {
                if (firstVal == 2) {
                    for (i = 0; i < gAudioContext.gMaxSimultaneousNotes; i++) {
                        if (gAudioContext.gNotes[i].playbackState.bankId == tp->entries[0].id &&
                            gAudioContext.gNotes[i].noteSubEu.bitField0.s.enabled != 0) {
                            break;
                        }
                    }
                    if (i == gAudioContext.gMaxSimultaneousNotes) {
                        tp->nextSide = 0;
                        goto done;
                    }
                }

                if (secondVal == 2) {
                    for (i = 0; i < gAudioContext.gMaxSimultaneousNotes; i++) {
                        if (gAudioContext.gNotes[i].playbackState.bankId == tp->entries[1].id &&
                            gAudioContext.gNotes[i].noteSubEu.bitField0.s.enabled != 0) {
                            break;
                        }
                    }
                    if (i == gAudioContext.gMaxSimultaneousNotes) {
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
                func_800E0E6C(tp->entries[side].id);
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
                        func_800E0E6C(tp->entries[1].id);
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
                        func_800E0E6C(tp->entries[0].id);
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

void* func_800DF0CC(s32 poolIdx, s32 arg1, s32 bankId) {
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
        return func_800DF074(poolIdx, 0, bankId);
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

void func_800DF5AC(s16* arg0) {
    s32 i;

    for (i = 0; i < 8; i++) {
        arg0[i] = 0;
    }
}

void func_800DF5DC(s16* arg0, s32 arg1) {
    s32 i;
    s16* ptr = &D_80130228[8 * arg1];

    for (i = 0; i < 8; i++) {
        arg0[i] = ptr[i];
    }
}

void func_800DF630(s16* arg0, s32 arg1) {
    s32 i;
    s16* ptr = &D_80130328[8 * (arg1 - 1)];

    for (i = 0; i < 8; i++) {
        arg0[i] = ptr[i];
    }
}

void func_800DF688(s16* arg0, s32 arg1, s32 arg2) {
    s32 i;

    if (arg1 == 0 && arg2 == 0) {
        func_800DF5DC(arg0, 0);
    } else if (arg2 == 0) {
        func_800DF5DC(arg0, arg1);
    } else if (arg1 == 0) {
        func_800DF630(arg0, arg2);
    } else {
        s16* ptr1 = &D_80130228[8 * arg1];
        s16* ptr2 = &D_80130328[8 * (arg2 - 1)];
        for (i = 0; i < 8; i++) {
            arg0[i] = (ptr1[i] + ptr2[i]) / 2;
        }
    }
}

void func_800DF7BC(SynthesisReverb* reverb) {
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
                        gAudioContext.gNotes[i].playbackState.adsr.fadeOutVel =
                            gAudioContext.gAudioBufferParameters.updatesPerFrameInv;
                        gAudioContext.gNotes[i].playbackState.adsr.action.s.release = true;
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

void func_800DFBF8(void) {
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
    AudioSessionSettings* preset = &gAudioSessionPresets[gAudioContext.gAudioResetPresetIdToLoad];

    gAudioContext.gSampleDmaNumListItems = 0;
    gAudioContext.gAudioBufferParameters.frequency = preset->frequency;
    gAudioContext.gAudioBufferParameters.aiFrequency = osAiSetFrequency(gAudioContext.gAudioBufferParameters.frequency);
    gAudioContext.gAudioBufferParameters.samplesPerFrameTarget =
        ((gAudioContext.gAudioBufferParameters.frequency / gAudioContext.gRefreshRate) + 0xF) & 0xFFF0;
    gAudioContext.gAudioBufferParameters.minAiBufferLength =
        gAudioContext.gAudioBufferParameters.samplesPerFrameTarget - 0x10;
    gAudioContext.gAudioBufferParameters.maxAiBufferLength =
        gAudioContext.gAudioBufferParameters.samplesPerFrameTarget + 0x10;
    gAudioContext.gAudioBufferParameters.updatesPerFrame =
        ((gAudioContext.gAudioBufferParameters.samplesPerFrameTarget + 0x10) / 0xD0) + 1;
    gAudioContext.gAudioBufferParameters.samplesPerUpdate =
        (gAudioContext.gAudioBufferParameters.samplesPerFrameTarget /
         gAudioContext.gAudioBufferParameters.updatesPerFrame) &
        ~7;
    gAudioContext.gAudioBufferParameters.samplesPerUpdateMax =
        gAudioContext.gAudioBufferParameters.samplesPerUpdate + 8;
    gAudioContext.gAudioBufferParameters.samplesPerUpdateMin =
        gAudioContext.gAudioBufferParameters.samplesPerUpdate - 8;
    gAudioContext.gAudioBufferParameters.resampleRate = 32000.0f / (s32)gAudioContext.gAudioBufferParameters.frequency;
    gAudioContext.gAudioBufferParameters.unkUpdatesPerFrameScaled =
        (1.0f / 256.0f) / gAudioContext.gAudioBufferParameters.updatesPerFrame;
    gAudioContext.gAudioBufferParameters.unk_24 = gAudioContext.gAudioBufferParameters.updatesPerFrame * 0.25f;
    gAudioContext.gAudioBufferParameters.updatesPerFrameInv =
        1.0f / gAudioContext.gAudioBufferParameters.updatesPerFrame;
    gAudioContext.unk_2874 = preset->unk_10;
    gAudioContext.unk_2878 = preset->unk_12;

    gAudioContext.gMaxSimultaneousNotes = preset->maxSimultaneousNotes;
    gAudioContext.gAudioBufferParameters.numSequencePlayers = preset->numSequencePlayers;
    if (gAudioContext.gAudioBufferParameters.numSequencePlayers > 4) {
        gAudioContext.gAudioBufferParameters.numSequencePlayers = 4;
    }
    gAudioContext.unk_2 = preset->unk_14;
    gAudioContext.gTempoInternalToExternal = (u32)(gAudioContext.gAudioBufferParameters.updatesPerFrame * 2880000.0f /
                                                   gTatumsPerBeat / gAudioContext.unk_2960);

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

    gAudioContext.gMaxAudioCmds =
        gAudioContext.gMaxSimultaneousNotes * 0x10 * gAudioContext.gAudioBufferParameters.updatesPerFrame +
        preset->numReverbs * 0x18 + 0x140;

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
    gAudioContext.gNotes =
        Audio_AllocZeroed(&gAudioContext.gNotesAndBuffersPool, gAudioContext.gMaxSimultaneousNotes * sizeof(Note));
    Audio_NoteInitAll();
    Audio_InitNoteFreeList();
    gAudioContext.gNoteSubsEu = Audio_AllocZeroed(&gAudioContext.gNotesAndBuffersPool,
                                                  gAudioContext.gAudioBufferParameters.updatesPerFrame *
                                                      gAudioContext.gMaxSimultaneousNotes * sizeof(NoteSubEu));

    for (i = 0; i != 2; i++) {
        gAudioContext.gAudioCmdBuffers[i] =
            Audio_AllocDmaMemoryZeroed(&gAudioContext.gNotesAndBuffersPool, gAudioContext.gMaxAudioCmds * sizeof(u64));
    }

    gAudioContext.unk_3520 = Audio_Alloc(&gAudioContext.gNotesAndBuffersPool, 0x100 * sizeof(f32));
    func_800DDE3C();
    for (i = 0; i < 4; i++) {
        gAudioContext.gSynthesisReverbs[i].useReverb = 0;
    }

    gAudioContext.gNumSynthesisReverbs = preset->numReverbs;
    for (i = 0; i < gAudioContext.gNumSynthesisReverbs; i++) {
        ReverbSettings* settings = &preset->reverbSettings[i];
        SynthesisReverb* reverb = &gAudioContext.gSynthesisReverbs[i];
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
        reverb->unk_1C = 0;
        reverb->unk_20 = 0;
        reverb->unk_03 = 0;
        reverb->unk_24 = reverb->windowSize;
        reverb->unk_02 = 2;
        reverb->unk_00 = 1;
        reverb->sound.sample = &reverb->sample;
        reverb->sample.loop = &reverb->loop;
        reverb->sound.tuning = 1.0f;
        reverb->sample.bits4 = 4;
        reverb->sample.bits2 = 0;
        reverb->sample.bits24 = reverb->windowSize * 2;
        reverb->sample.sampleAddr = (u8*)reverb->unk_28;
        reverb->loop.start = 0;
        reverb->loop.count = 1;
        reverb->loop.end = reverb->windowSize;

        if (reverb->downsampleRate != 1) {
            reverb->unk_0E = 0x8000 / reverb->downsampleRate;
            reverb->unk_30 = Audio_AllocZeroed(&gAudioContext.gNotesAndBuffersPool, 0x20);
            reverb->unk_34 = Audio_AllocZeroed(&gAudioContext.gNotesAndBuffersPool, 0x20);
            reverb->unk_38 = Audio_AllocZeroed(&gAudioContext.gNotesAndBuffersPool, 0x20);
            reverb->unk_3C = Audio_AllocZeroed(&gAudioContext.gNotesAndBuffersPool, 0x20);
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
    for (j = 0; j < gAudioContext.gAudioBufferParameters.numSequencePlayers; j++) {
        func_800EC734(j);
        Audio_ResetSequencePlayer(&gAudioContext.gSequencePlayers[j]);
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

void* func_800E04E8(s32 poolIdx, s32 id) {
    s32 i;

    for (i = 0; i < gAudioContext.unk_2D50.unused; i++) {
        if (gAudioContext.unk_2D60[i].poolIndex == poolIdx && gAudioContext.unk_2D60[i].id == id) {
            return gAudioContext.unk_2D60[i].ptr;
        }
    }
    return NULL;
}

void* func_800E0540(s32 poolIdx, s32 id, u32 size) {
    void* ret;
    s32 sp18;

    sp18 = gAudioContext.unk_2D50.unused;

    ret = Audio_Alloc(&gAudioContext.unk_2D50, size);
    gAudioContext.unk_2D60[sp18].ptr = ret;
    if (ret == NULL) {
        return NULL;
    }
    gAudioContext.unk_2D60[sp18].poolIndex = poolIdx;
    gAudioContext.unk_2D60[sp18].id = id;
    gAudioContext.unk_2D60[sp18].size = size;
    // @bug UB: missing return. "ret" is in v0 at this point, but doing an
    // explicit return uses an additional register.
    // return ret;
}

void* func_800E05C4(u32 size, s32 arg1, void* arg2, s8 arg3, s32 arg4) {
    UnkHeapEntry* entry;

    if (arg4 == 0) {
        entry = func_800E06CC(size);
    } else {
        entry = func_800E0BF8(size);
    }
    if (entry != NULL) {
        entry->unk_02 = arg1;
        entry->unk_0C = arg2;
        entry->unk_01 = arg3;
        return entry->unk_08;
    }
    return NULL;
}

void func_800E0634(u32 arg0, u32 arg1) {
    void* mem;

    mem = func_800DE2B0(&gAudioContext.gNotesAndBuffersPool, arg0);
    if (mem == NULL) {
        gAudioContext.unk_2EE0.pool.size = 0;
    } else {
        Audio_SoundAllocPoolInit(&gAudioContext.unk_2EE0.pool, mem, arg0);
    }
    mem = func_800DE2B0(&gAudioContext.gNotesAndBuffersPool, arg1);
    if (mem == NULL) {
        gAudioContext.unk_3174.pool.size = 0;
    } else {
        Audio_SoundAllocPoolInit(&gAudioContext.unk_3174.pool, mem, arg1);
    }
    gAudioContext.unk_2EE0.size = 0;
    gAudioContext.unk_3174.size = 0;
}

UnkHeapEntry* func_800E06CC(u32 size) {
    u8* allocAfter;
    u8* allocBefore;
    void* mem;
    s32 index;
    s32 i;
    UnkHeapEntry* ret;
    AudioStruct0D68* thing;
    UnkPool* unkPool;
    u8* start;
    u8* end;

    unkPool = &gAudioContext.unk_3174;
    allocBefore = unkPool->pool.cur;
    mem = Audio_Alloc(&unkPool->pool, size);
    if (mem == NULL) {
        u8* old = unkPool->pool.cur;
        unkPool->pool.cur = unkPool->pool.start;
        mem = Audio_Alloc(&unkPool->pool, size);
        if (mem == NULL) {
            unkPool->pool.cur = old;
            return NULL;
        }
        allocBefore = unkPool->pool.start;
    }

    allocAfter = unkPool->pool.cur;

    index = -1;
    for (i = 0; i < gAudioContext.unk_176C; i++) {
        thing = &gAudioContext.unk_0D68[i];
        if (thing->unk_10 == 0) {
            start = thing->unk_08;
            end = thing->unk_08 + thing->sample->bits24 - 1;

            if (end < allocBefore && start < allocBefore) {
                continue;
            }
            if (end >= allocAfter && start >= allocAfter) {
                continue;
            }

            // Overlap
            thing->unk_10 = 1;
        }
    }

    for (i = 0; i < unkPool->size; i++) {
        if (unkPool->entries[i].unk_00 == 0) {
            continue;
        }

        start = unkPool->entries[i].unk_08;
        end = start + unkPool->entries[i].size - 1;

        if (end < allocBefore && start < allocBefore) {
            continue;
        }
        if (end >= allocAfter && start >= allocAfter) {
            continue;
        }

        // Overlap. Discard existing entry?
        func_800E0AD8(&unkPool->entries[i]);
        if (index == -1) {
            index = i;
        }
    }

    if (index == -1) {
        index = unkPool->size++;
    }

    ret = &unkPool->entries[index];
    ret->unk_00 = 1;
    ret->unk_08 = mem;
    ret->size = size;
    return ret;
}

void func_800E0964(UnkHeapEntry* entry, s32 bankId) {
    Drum* drum;
    Instrument* inst;
    AudioBankSound* sfx;
    s32 instId;
    s32 drumId;
    s32 sfxId;

    for (instId = 0; instId < gAudioContext.gCtlEntries[bankId].numInstruments; instId++) {
        inst = Audio_GetInstrumentInner(bankId, instId);
        if (inst != NULL) {
            if (inst->normalRangeLo != 0) {
                func_800E0BB4(entry, inst->lowNotesSound.sample);
            }
            if (inst->normalRangeHi != 0x7F) {
                func_800E0BB4(entry, inst->highNotesSound.sample);
            }
            func_800E0BB4(entry, inst->normalNotesSound.sample);
        }
    }

    for (drumId = 0; drumId < gAudioContext.gCtlEntries[bankId].numDrums; drumId++) {
        drum = Audio_GetDrum(bankId, drumId);
        if (drum != NULL) {
            func_800E0BB4(entry, drum->sound.sample);
        }
    }

    for (sfxId = 0; sfxId < gAudioContext.gCtlEntries[bankId].numSfx; sfxId++) {
        sfx = Audio_GetSfx(bankId, sfxId);
        if (sfx != NULL) {
            func_800E0BB4(entry, sfx->sample);
        }
    }
}

void func_800E0AD8(UnkHeapEntry* entry) {
    s32 numBanks;
    s32 unk2;
    s32 unk3;
    s32 bankId;

    numBanks = *gAudioContext.unk_2834;
    for (bankId = 0; bankId < numBanks; bankId++) {
        unk2 = gAudioContext.gCtlEntries[bankId].unk_02;
        unk3 = gAudioContext.gCtlEntries[bankId].unk_03;
        if (((unk2 != 0xFF) && (entry->unk_02 == unk2)) || ((unk3 != 0xFF) && (entry->unk_02 == unk3)) ||
            entry->unk_02 == 0) {
            if (func_800DF074(1, 2, bankId) != NULL) {
                if (Audio_IsBankLoadComplete(bankId) != 0) {
                    func_800E0964(entry, bankId);
                }
            }
        }
    }
}

void func_800E0BB4(UnkHeapEntry* entry, AudioBankSample* sample) {
    if (sample != NULL) {
        if (sample->sampleAddr == entry->unk_08) {
            sample->sampleAddr = entry->unk_0C;
            sample->bits2 = entry->unk_01;
        }
    }
}

UnkHeapEntry* func_800E0BF8(u32 size) {
    UnkPool* pool;
    UnkHeapEntry* entry;
    void* mem;

    pool = &gAudioContext.unk_2EE0;
    mem = Audio_Alloc(&pool->pool, size);
    if (mem == NULL) {
        return NULL;
    }
    entry = &pool->entries[pool->size];
    entry->unk_00 = 1;
    entry->unk_08 = mem;
    entry->size = size;
    pool->size++;
    return entry;
}

void func_800E0C80(UnkHeapEntry* entry, s32 arg1, s32 arg2, s32 bankId) {
    if ((entry->unk_02 == arg1) || (entry->unk_02 == arg2) || (entry->unk_02 == 0)) {
        func_800E0964(entry, bankId);
    }
}

void func_800E0CBC(void) {
    s32 numBanks;
    s32 unk2;
    s32 unk3;
    s32 bankId;
    s32 j;

    numBanks = *gAudioContext.unk_2834;
    for (bankId = 0; bankId < numBanks; bankId++) {
        unk2 = gAudioContext.gCtlEntries[bankId].unk_02;
        unk3 = gAudioContext.gCtlEntries[bankId].unk_03;
        if ((unk2 == 0xFF) && (unk3 == 0xFF)) {
            continue;
        }
        if (func_800DF074(1, 3, bankId) == NULL || !Audio_IsBankLoadComplete(bankId)) {
            continue;
        }

        for (j = 0; j < gAudioContext.unk_2EE0.size; j++) {
            func_800E0C80(&gAudioContext.unk_2EE0.entries[j], unk2, unk3, bankId);
        }
        for (j = 0; j < gAudioContext.unk_3174.size; j++) {
            func_800E0C80(&gAudioContext.unk_3174.entries[j], unk2, unk3, bankId);
        }
    }
}

typedef struct {
    u8* unk_0;
    u8* unk_4;
    u32 unk_8;
    u8 unk_C;
} Struct_800E0E0C;

void func_800E0E0C(Struct_800E0E0C* arg0, AudioBankSample* sample) {
    if (sample != NULL) {
        u8* start = arg0->unk_0;
        u8* end = arg0->unk_0 + arg0->unk_8;
        u8* sampleAddr = sample->sampleAddr;
        if (start <= sampleAddr && sampleAddr < end) {
            sample->sampleAddr = sampleAddr - start + arg0->unk_4;
            sample->bits2 = arg0->unk_C & 0xFF;
        }
    }
}

void func_800E0E6C(s32 id) {
    func_800E0EB4(0, id);
}

void func_800E0E90(s32 id) {
    func_800E0EB4(1, id);
}

void func_800E0EB4(s32 arg0, s32 id) {
    ManyStruct_800E0E0C_2* manyThing;
    Struct_800E0E0C_2* thing;
    s32 numBanks;
    s32 instId;
    s32 drumId;
    s32 sfxId;
    Struct_800E0E0C sp78;
    s32 unk2;
    s32 unk3;
    s32 bankId;
    Drum* drum;
    Instrument* inst;
    AudioBankSound* sfx;
    u8** fakematch;
    s32 pad[4];

    manyThing = gAudioContext.unk_2838;
    numBanks = *gAudioContext.unk_2834;
    sp78.unk_0 = func_800DF074(2, 2, id);
    if (sp78.unk_0 == NULL) {
        return;
    }

    thing = &manyThing->unk_C[id];
    sp78.unk_8 = thing->unk_8;
    sp78.unk_C = thing->unk_C;

    if ((sp78.unk_C == 2) || (sp78.unk_C == 3)) {
        sp78.unk_4 = thing->unk_4;
    } else {
        sp78.unk_4 = NULL;
    }

    fakematch = &sp78.unk_0;
    if ((arg0 != 0) && (arg0 == 1)) {
        u8* temp = sp78.unk_4;
        sp78.unk_4 = *fakematch;
        sp78.unk_0 = temp;
        sp78.unk_C = 0;
    }

    for (bankId = 0; bankId < numBanks; bankId++) {
        unk2 = gAudioContext.gCtlEntries[bankId].unk_02;
        unk3 = gAudioContext.gCtlEntries[bankId].unk_03;
        if ((unk2 != 0xFF) || (unk3 != 0xFF)) {
            if (!Audio_IsBankLoadComplete(bankId) || func_800DF074(1, 2, bankId) == NULL) {
                continue;
            }

            if (unk2 == id) {
            } else if (unk3 == id) {
            } else {
                continue;
            }

            for (instId = 0; instId < gAudioContext.gCtlEntries[bankId].numInstruments; instId++) {
                inst = Audio_GetInstrumentInner(bankId, instId);
                if (inst != NULL) {
                    if (inst->normalRangeLo != 0) {
                        func_800E0E0C(&sp78, inst->lowNotesSound.sample);
                    }
                    if (inst->normalRangeHi != 0x7F) {
                        func_800E0E0C(&sp78, inst->highNotesSound.sample);
                    }
                    func_800E0E0C(&sp78, inst->normalNotesSound.sample);
                }
            }

            for (drumId = 0; drumId < gAudioContext.gCtlEntries[bankId].numDrums; drumId++) {
                drum = Audio_GetDrum(bankId, drumId);
                if (drum != NULL) {
                    func_800E0E0C(&sp78, drum->sound.sample);
                }
            }

            for (sfxId = 0; sfxId < gAudioContext.gCtlEntries[bankId].numSfx; sfxId++) {
                sfx = Audio_GetSfx(bankId, sfxId);
                if (sfx != NULL) {
                    func_800E0E0C(&sp78, sfx->sample);
                }
            }
        }
    }
}

void func_800E1148(void) {
    SoundMultiPool* pool;
    PersistentPool* persistent;
    TemporaryPool* temporary;
    u32 i;

    pool = &gAudioContext.gUnusedLoadedPool;
    temporary = &pool->temporary;

    if (temporary->entries[0].id != -1) {
        func_800E0E6C(temporary->entries[0].id);
    }

    if (temporary->entries[1].id != -1) {
        func_800E0E6C(temporary->entries[1].id);
    }

    persistent = &pool->persistent;
    for (i = 0; i < persistent->numEntries; i++) {
        func_800E0E6C(persistent->entries[i].id);
    }
}
