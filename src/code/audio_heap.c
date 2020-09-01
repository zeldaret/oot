#include <ultra64.h>
#include <global.h>

#define ALIGN16(val) (((val) + 0xF) & ~0xF)

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

    for (i = 0; i < gAudioContext.gAudioBufferParameters.unk_10; i++) {
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
    Audio_SoundAllocPoolInit(&gAudioContext.gTemporaryCommonPool,
                             Audio_Alloc(&gAudioContext.gSeqAndBankPool, split->wantSeq), split->wantSeq);
    Audio_SoundAllocPoolInit(&gAudioContext.gPersistentCommonPool,
                             Audio_Alloc(&gAudioContext.gSeqAndBankPool, split->wantBank), split->wantBank);
}

void Audio_PersistentPoolsInit(AudioPoolSplit3* split) {
    gAudioContext.gTemporaryCommonPool.cur = gAudioContext.gTemporaryCommonPool.start;
    Audio_SoundAllocPoolInit(&gAudioContext.gSeqLoadedPool.persistent.pool,
                             Audio_Alloc(&gAudioContext.gTemporaryCommonPool, split->wantSeq), split->wantSeq);
    Audio_SoundAllocPoolInit(&gAudioContext.gBankLoadedPool.persistent.pool,
                             Audio_Alloc(&gAudioContext.gTemporaryCommonPool, split->wantBank), split->wantBank);
    Audio_SoundAllocPoolInit(&gAudioContext.gUnusedLoadedPool.persistent.pool,
                             Audio_Alloc(&gAudioContext.gTemporaryCommonPool, split->wantUnused), split->wantUnused);
    Audio_PersistentPoolClear(&gAudioContext.gSeqLoadedPool.persistent);
    Audio_PersistentPoolClear(&gAudioContext.gBankLoadedPool.persistent);
    Audio_PersistentPoolClear(&gAudioContext.gUnusedLoadedPool.persistent);
}

void Audio_TemporaryPoolsInit(AudioPoolSplit3* split) {
    gAudioContext.gPersistentCommonPool.cur = gAudioContext.gPersistentCommonPool.start;
    Audio_SoundAllocPoolInit(&gAudioContext.gSeqLoadedPool.temporary.pool,
                             Audio_Alloc(&gAudioContext.gPersistentCommonPool, split->wantSeq), split->wantSeq);
    Audio_SoundAllocPoolInit(&gAudioContext.gBankLoadedPool.temporary.pool,
                             Audio_Alloc(&gAudioContext.gPersistentCommonPool, split->wantBank), split->wantBank);
    Audio_SoundAllocPoolInit(&gAudioContext.gUnusedLoadedPool.temporary.pool,
                             Audio_Alloc(&gAudioContext.gPersistentCommonPool, split->wantUnused), split->wantUnused);
    Audio_TemporaryPoolClear(&gAudioContext.gSeqLoadedPool.temporary);
    Audio_TemporaryPoolClear(&gAudioContext.gBankLoadedPool.temporary);
    Audio_TemporaryPoolClear(&gAudioContext.gUnusedLoadedPool.temporary);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/Audio_AllocBankOrSeq.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_heap/func_800DF074.s")
void* func_800DF074(s32 poolIdx, s32 arg1, s32 id);

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
