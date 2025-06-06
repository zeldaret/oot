#include "alignment.h"
#include "ultra64.h"
#include "versions.h"
#include "audio.h"

void AudioHeap_InitSampleCaches(u32 persistentSampleCacheSize, u32 temporarySampleCacheSize);
SampleCacheEntry* AudioHeap_AllocTemporarySampleCacheEntry(u32 size);
SampleCacheEntry* AudioHeap_AllocPersistentSampleCacheEntry(u32 size);
void AudioHeap_DiscardSampleCacheEntry(SampleCacheEntry* entry);
void AudioHeap_UnapplySampleCache(SampleCacheEntry* entry, Sample* sample);
void AudioHeap_DiscardSampleCaches(void);
void AudioHeap_DiscardSampleBank(s32 sampleBankId);
void AudioHeap_DiscardSampleBanks(void);

/**
 * Effectively scales `ticksPerUpdateInv` by the reciprocal of `scaleInv`
 */
f32 AudioHeap_CalculateAdsrDecay(f32 scaleInv) {
    return (256.0f * gAudioCtx.audioBufferParameters.ticksPerUpdateInvScaled) / scaleInv;
}

/**
 * Initialize the decay rate table used for decaying notes as part of adsr
 */
void AudioHeap_InitAdsrDecayTable(void) {
    s32 i;

    gAudioCtx.adsrDecayTable[255] = AudioHeap_CalculateAdsrDecay(0.25f);
    gAudioCtx.adsrDecayTable[254] = AudioHeap_CalculateAdsrDecay(0.33f);
    gAudioCtx.adsrDecayTable[253] = AudioHeap_CalculateAdsrDecay(0.5f);
    gAudioCtx.adsrDecayTable[252] = AudioHeap_CalculateAdsrDecay(0.66f);
    gAudioCtx.adsrDecayTable[251] = AudioHeap_CalculateAdsrDecay(0.75f);

    for (i = 128; i < 251; i++) {
        gAudioCtx.adsrDecayTable[i] = AudioHeap_CalculateAdsrDecay(251 - i);
    }

    for (i = 16; i < 128; i++) {
        gAudioCtx.adsrDecayTable[i] = AudioHeap_CalculateAdsrDecay(4 * (143 - i));
    }

    for (i = 1; i < 16; i++) {
        gAudioCtx.adsrDecayTable[i] = AudioHeap_CalculateAdsrDecay(60 * (23 - i));
    }

    gAudioCtx.adsrDecayTable[0] = 0.0f;
}

void AudioHeap_ResetLoadStatus(void) {
    s32 i;

    for (i = 0; i < 0x30; i++) {
        if (gAudioCtx.fontLoadStatus[i] != LOAD_STATUS_PERMANENTLY_LOADED) {
            gAudioCtx.fontLoadStatus[i] = LOAD_STATUS_NOT_LOADED;
        }
    }

    for (i = 0; i < 0x30; i++) {
        if (gAudioCtx.sampleFontLoadStatus[i] != LOAD_STATUS_PERMANENTLY_LOADED) {
            gAudioCtx.sampleFontLoadStatus[i] = LOAD_STATUS_NOT_LOADED;
        }
    }

    for (i = 0; i < 0x80; i++) {
        if (gAudioCtx.seqLoadStatus[i] != LOAD_STATUS_PERMANENTLY_LOADED) {
            gAudioCtx.seqLoadStatus[i] = LOAD_STATUS_NOT_LOADED;
        }
    }
}

void AudioHeap_DiscardFont(s32 fontId) {
    s32 i;

    for (i = 0; i < gAudioCtx.numNotes; i++) {
        Note* note = &gAudioCtx.notes[i];

        if (note->playbackState.fontId == fontId) {
            if (note->playbackState.unk_04 == 0 && note->playbackState.priority != 0) {
                note->playbackState.parentLayer->enabled = false;
                note->playbackState.parentLayer->finished = true;
            }
            Audio_NoteDisable(note);
            Audio_AudioListRemove(&note->listItem);
            AudioSeq_AudioListPushBack(&gAudioCtx.noteFreeLists.disabled, &note->listItem);
        }
    }
}

void AudioHeap_ReleaseNotesForFont(s32 fontId) {
    s32 i;

    for (i = 0; i < gAudioCtx.numNotes; i++) {
        Note* note = &gAudioCtx.notes[i];
        NotePlaybackState* playbackState = &note->playbackState;

        if (playbackState->fontId == fontId) {
            if ((playbackState->priority != 0) && (playbackState->adsr.action.s.state == ADSR_STATE_DECAY)) {
                playbackState->priority = 1;
                playbackState->adsr.fadeOutVel = gAudioCtx.audioBufferParameters.ticksPerUpdateInv;
                playbackState->adsr.action.s.release = true;
            }
        }
    }
}

void AudioHeap_DiscardSequence(s32 seqId) {
    s32 i;

    for (i = 0; i < gAudioCtx.audioBufferParameters.numSequencePlayers; i++) {
        if (gAudioCtx.seqPlayers[i].enabled && gAudioCtx.seqPlayers[i].seqId == seqId) {
            AudioSeq_SequencePlayerDisable(&gAudioCtx.seqPlayers[i]);
        }
    }
}

/**
 * Perform a writeback from the data cache to the ram.
 */
void AudioHeap_WritebackDCache(void* ramAddr, u32 size) {
    Audio_WritebackDCache(ramAddr, size);
}

/**
 * Attempt to allocate space externally to the audio heap. If no external pool is available,
 * then allocate space on the pool provided in the argument.
 * The newly allocated space is zero'ed
 */
void* AudioHeap_AllocZeroedAttemptExternal(AudioAllocPool* pool, u32 size) {
    void* ramAddr = NULL;

    if (gAudioCtx.externalPool.startRamAddr != NULL) {
        ramAddr = AudioHeap_AllocZeroed(&gAudioCtx.externalPool, size);
    }
    if (ramAddr == NULL) {
        ramAddr = AudioHeap_AllocZeroed(pool, size);
    }
    return ramAddr;
}

void* AudioHeap_AllocAttemptExternal(AudioAllocPool* pool, u32 size) {
    void* ramAddr = NULL;

    if (gAudioCtx.externalPool.startRamAddr != NULL) {
        ramAddr = AudioHeap_Alloc(&gAudioCtx.externalPool, size);
    }
    if (ramAddr == NULL) {
        ramAddr = AudioHeap_Alloc(pool, size);
    }
    return ramAddr;
}

void* AudioHeap_AllocDmaMemory(AudioAllocPool* pool, u32 size) {
    void* ramAddr = AudioHeap_Alloc(pool, size);

    if (ramAddr != NULL) {
        AudioHeap_WritebackDCache(ramAddr, size);
    }
    return ramAddr;
}

void* AudioHeap_AllocDmaMemoryZeroed(AudioAllocPool* pool, u32 size) {
    void* ramAddr;

    ramAddr = AudioHeap_AllocZeroed(pool, size);
    if (ramAddr != NULL) {
        AudioHeap_WritebackDCache(ramAddr, size);
    }
    return ramAddr;
}

/**
 * Allocates space on a pool contained within the heap and sets all the allocated space to 0
 */
void* AudioHeap_AllocZeroed(AudioAllocPool* pool, u32 size) {
    u8* ramAddr = AudioHeap_Alloc(pool, size);
    u8* ptr;

    if (ramAddr != NULL) {
        for (ptr = ramAddr; ptr < pool->curRamAddr; ptr++) {
            *ptr = 0;
        }
    }

    return ramAddr;
}

void* AudioHeap_Alloc(AudioAllocPool* pool, u32 size) {
    u32 aligned = ALIGN16(size);
    u8* ramAddr = pool->curRamAddr;

    if (pool->startRamAddr + pool->size >= pool->curRamAddr + aligned) {
        pool->curRamAddr += aligned;
    } else {
        return NULL;
    }
    pool->numEntries++;
    return ramAddr;
}

/**
 * Initialize a pool to allocate memory from the specified address, up to the specified size.
 * Store the metadata of this pool in AudioAllocPool* pool
 */
void AudioHeap_InitPool(AudioAllocPool* pool, void* ramAddr, u32 size) {
    pool->curRamAddr = pool->startRamAddr = (u8*)ALIGN16((u32)ramAddr);
    pool->size = size - ((u32)ramAddr & 0xF);
    pool->numEntries = 0;
}

void AudioHeap_InitPersistentCache(AudioPersistentCache* persistent) {
    persistent->pool.numEntries = 0;
    persistent->numEntries = 0;
    persistent->pool.curRamAddr = persistent->pool.startRamAddr;
}

void AudioHeap_InitTemporaryCache(AudioTemporaryCache* temporary) {
    temporary->pool.numEntries = 0;
    temporary->pool.curRamAddr = temporary->pool.startRamAddr;
    temporary->nextSide = 0;
    temporary->entries[0].ramAddr = temporary->pool.startRamAddr;
    temporary->entries[1].ramAddr = temporary->pool.startRamAddr + temporary->pool.size;
    temporary->entries[0].id = -1;
    temporary->entries[1].id = -1;
}

void AudioHeap_ResetPool(AudioAllocPool* pool) {
    pool->numEntries = 0;
    pool->curRamAddr = pool->startRamAddr;
}

void AudioHeap_PopPersistentCache(s32 tableType) {
    AudioCache* loadedCache;
    AudioAllocPool* persistentPool;
    AudioPersistentCache* persistent;
    void* entryRamAddr;
    u8* loadStatus;

    switch (tableType) {
        case SEQUENCE_TABLE:
            loadedCache = &gAudioCtx.seqCache;
            loadStatus = gAudioCtx.seqLoadStatus;
            break;

        case FONT_TABLE:
            loadedCache = &gAudioCtx.fontCache;
            loadStatus = gAudioCtx.fontLoadStatus;
            break;

        case SAMPLE_TABLE:
            loadedCache = &gAudioCtx.sampleBankCache;
            loadStatus = gAudioCtx.sampleFontLoadStatus;
            break;
    }

    persistent = &loadedCache->persistent;
    persistentPool = &persistent->pool;

    if (persistent->numEntries == 0) {
        return;
    }

    entryRamAddr = persistent->entries[persistent->numEntries - 1].ramAddr;
    persistentPool->curRamAddr = entryRamAddr;
    persistentPool->numEntries--;

    if (tableType == SAMPLE_TABLE) {
        AudioHeap_DiscardSampleBank(persistent->entries[persistent->numEntries - 1].id);
    }
    if (tableType == FONT_TABLE) {
        AudioHeap_DiscardFont(persistent->entries[persistent->numEntries - 1].id);
    }

    loadStatus[persistent->entries[persistent->numEntries - 1].id] = LOAD_STATUS_NOT_LOADED;
    persistent->numEntries--;
}

void AudioHeap_InitMainPools(s32 initPoolSize) {
    AudioHeap_InitPool(&gAudioCtx.initPool, gAudioCtx.audioHeap, initPoolSize);
    AudioHeap_InitPool(&gAudioCtx.sessionPool, gAudioCtx.audioHeap + initPoolSize,
                       gAudioCtx.audioHeapSize - initPoolSize);
    gAudioCtx.externalPool.startRamAddr = NULL;
}

void AudioHeap_InitSessionPools(AudioSessionPoolSplit* split) {
    gAudioCtx.sessionPool.curRamAddr = gAudioCtx.sessionPool.startRamAddr;
    AudioHeap_InitPool(&gAudioCtx.miscPool, AudioHeap_Alloc(&gAudioCtx.sessionPool, split->miscPoolSize),
                       split->miscPoolSize);
    AudioHeap_InitPool(&gAudioCtx.cachePool, AudioHeap_Alloc(&gAudioCtx.sessionPool, split->cachePoolSize),
                       split->cachePoolSize);
}

void AudioHeap_InitCachePools(AudioCachePoolSplit* split) {
    gAudioCtx.cachePool.curRamAddr = gAudioCtx.cachePool.startRamAddr;
    AudioHeap_InitPool(&gAudioCtx.persistentCommonPool,
                       AudioHeap_Alloc(&gAudioCtx.cachePool, split->persistentCommonPoolSize),
                       split->persistentCommonPoolSize);
    AudioHeap_InitPool(&gAudioCtx.temporaryCommonPool,
                       AudioHeap_Alloc(&gAudioCtx.cachePool, split->temporaryCommonPoolSize),
                       split->temporaryCommonPoolSize);
}

void AudioHeap_InitPersistentPoolsAndCaches(AudioCommonPoolSplit* split) {
    gAudioCtx.persistentCommonPool.curRamAddr = gAudioCtx.persistentCommonPool.startRamAddr;
    AudioHeap_InitPool(&gAudioCtx.seqCache.persistent.pool,
                       AudioHeap_Alloc(&gAudioCtx.persistentCommonPool, split->seqCacheSize), split->seqCacheSize);
    AudioHeap_InitPool(&gAudioCtx.fontCache.persistent.pool,
                       AudioHeap_Alloc(&gAudioCtx.persistentCommonPool, split->fontCacheSize), split->fontCacheSize);
    AudioHeap_InitPool(&gAudioCtx.sampleBankCache.persistent.pool,
                       AudioHeap_Alloc(&gAudioCtx.persistentCommonPool, split->sampleBankCacheSize),
                       split->sampleBankCacheSize);
    AudioHeap_InitPersistentCache(&gAudioCtx.seqCache.persistent);
    AudioHeap_InitPersistentCache(&gAudioCtx.fontCache.persistent);
    AudioHeap_InitPersistentCache(&gAudioCtx.sampleBankCache.persistent);
}

void AudioHeap_InitTemporaryPoolsAndCaches(AudioCommonPoolSplit* split) {
    gAudioCtx.temporaryCommonPool.curRamAddr = gAudioCtx.temporaryCommonPool.startRamAddr;
    AudioHeap_InitPool(&gAudioCtx.seqCache.temporary.pool,
                       AudioHeap_Alloc(&gAudioCtx.temporaryCommonPool, split->seqCacheSize), split->seqCacheSize);
    AudioHeap_InitPool(&gAudioCtx.fontCache.temporary.pool,
                       AudioHeap_Alloc(&gAudioCtx.temporaryCommonPool, split->fontCacheSize), split->fontCacheSize);
    AudioHeap_InitPool(&gAudioCtx.sampleBankCache.temporary.pool,
                       AudioHeap_Alloc(&gAudioCtx.temporaryCommonPool, split->sampleBankCacheSize),
                       split->sampleBankCacheSize);
    AudioHeap_InitTemporaryCache(&gAudioCtx.seqCache.temporary);
    AudioHeap_InitTemporaryCache(&gAudioCtx.fontCache.temporary);
    AudioHeap_InitTemporaryCache(&gAudioCtx.sampleBankCache.temporary);
}

void* AudioHeap_AllocCached(s32 tableType, s32 size, s32 cache, s32 id) {
    AudioCache* loadedCache;
    AudioTemporaryCache* temporaryCache;
    AudioAllocPool* temporaryPool;
    void* persistentRamAddr;
    void* temporaryRamAddr;
    u8 loadStatusEntry0;
    u8 loadStatusEntry1;
    s32 i;
    u8* loadStatus;
    s32 side;

    switch (tableType) {
        case SEQUENCE_TABLE:
            loadedCache = &gAudioCtx.seqCache;
            loadStatus = gAudioCtx.seqLoadStatus;
            break;

        case FONT_TABLE:
            loadedCache = &gAudioCtx.fontCache;
            loadStatus = gAudioCtx.fontLoadStatus;
            break;

        case SAMPLE_TABLE:
            loadedCache = &gAudioCtx.sampleBankCache;
            loadStatus = gAudioCtx.sampleFontLoadStatus;
            break;
    }

    if (cache == CACHE_TEMPORARY) {
        temporaryCache = &loadedCache->temporary;
        temporaryPool = &temporaryCache->pool;

        if (temporaryPool->size < size) {
            return NULL;
        }

        loadStatusEntry0 =
            (temporaryCache->entries[0].id == -1) ? LOAD_STATUS_NOT_LOADED : loadStatus[temporaryCache->entries[0].id];
        loadStatusEntry1 =
            (temporaryCache->entries[1].id == -1) ? LOAD_STATUS_NOT_LOADED : loadStatus[temporaryCache->entries[1].id];

        if (tableType == FONT_TABLE) {
            if (loadStatusEntry0 == LOAD_STATUS_MAYBE_DISCARDABLE) {
                for (i = 0; i < gAudioCtx.numNotes; i++) {
                    if (gAudioCtx.notes[i].playbackState.fontId == temporaryCache->entries[0].id &&
                        gAudioCtx.notes[i].noteSubEu.bitField0.enabled) {
                        break;
                    }
                }

                if (i == gAudioCtx.numNotes) {
                    AudioLoad_SetFontLoadStatus(temporaryCache->entries[0].id, LOAD_STATUS_DISCARDABLE);
                    loadStatusEntry0 = LOAD_STATUS_DISCARDABLE;
                }
            }

            if (loadStatusEntry1 == LOAD_STATUS_MAYBE_DISCARDABLE) {
                for (i = 0; i < gAudioCtx.numNotes; i++) {
                    if (gAudioCtx.notes[i].playbackState.fontId == temporaryCache->entries[1].id &&
                        gAudioCtx.notes[i].noteSubEu.bitField0.enabled) {
                        break;
                    }
                }

                if (i == gAudioCtx.numNotes) {
                    AudioLoad_SetFontLoadStatus(temporaryCache->entries[1].id, LOAD_STATUS_DISCARDABLE);
                    loadStatusEntry1 = LOAD_STATUS_DISCARDABLE;
                }
            }
        }

        if (loadStatusEntry0 == LOAD_STATUS_NOT_LOADED) {
            temporaryCache->nextSide = 0;
        } else if (loadStatusEntry1 == LOAD_STATUS_NOT_LOADED) {
            temporaryCache->nextSide = 1;
        } else if (loadStatusEntry0 == LOAD_STATUS_DISCARDABLE && loadStatusEntry1 == LOAD_STATUS_DISCARDABLE) {
            // Use the opposite side from last time.
        } else if (loadStatusEntry0 == LOAD_STATUS_DISCARDABLE) {
            temporaryCache->nextSide = 0;
        } else if (loadStatusEntry1 == LOAD_STATUS_DISCARDABLE) {
            temporaryCache->nextSide = 1;
        } else {
            // Check if there is a side which isn't in active use, if so, evict that one.
            if (tableType == SEQUENCE_TABLE) {
                if (loadStatusEntry0 == LOAD_STATUS_COMPLETE) {
                    for (i = 0; i < gAudioCtx.audioBufferParameters.numSequencePlayers; i++) {
                        if (gAudioCtx.seqPlayers[i].enabled &&
                            gAudioCtx.seqPlayers[i].seqId == temporaryCache->entries[0].id) {
                            break;
                        }
                    }

                    if (i == gAudioCtx.audioBufferParameters.numSequencePlayers) {
                        temporaryCache->nextSide = 0;
                        goto done;
                    }
                }

                if (loadStatusEntry1 == LOAD_STATUS_COMPLETE) {
                    for (i = 0; i < gAudioCtx.audioBufferParameters.numSequencePlayers; i++) {
                        if (gAudioCtx.seqPlayers[i].enabled &&
                            gAudioCtx.seqPlayers[i].seqId == temporaryCache->entries[1].id) {
                            break;
                        }
                    }

                    if (i == gAudioCtx.audioBufferParameters.numSequencePlayers) {
                        temporaryCache->nextSide = 1;
                        goto done;
                    }
                }
            } else if (tableType == FONT_TABLE) {
                if (loadStatusEntry0 == LOAD_STATUS_COMPLETE) {
                    for (i = 0; i < gAudioCtx.numNotes; i++) {
                        if (gAudioCtx.notes[i].playbackState.fontId == temporaryCache->entries[0].id &&
                            gAudioCtx.notes[i].noteSubEu.bitField0.enabled) {
                            break;
                        }
                    }
                    if (i == gAudioCtx.numNotes) {
                        temporaryCache->nextSide = 0;
                        goto done;
                    }
                }

                if (loadStatusEntry1 == LOAD_STATUS_COMPLETE) {
                    for (i = 0; i < gAudioCtx.numNotes; i++) {
                        if (gAudioCtx.notes[i].playbackState.fontId == temporaryCache->entries[1].id &&
                            gAudioCtx.notes[i].noteSubEu.bitField0.enabled) {
                            break;
                        }
                    }
                    if (i == gAudioCtx.numNotes) {
                        temporaryCache->nextSide = 1;
                        goto done;
                    }
                }
            }

            // No such luck. Evict the side that wasn't chosen last time, except
            // if it is being loaded into.
            if (temporaryCache->nextSide == 0) {
                if (loadStatusEntry0 == LOAD_STATUS_IN_PROGRESS) {
                    if (loadStatusEntry1 == LOAD_STATUS_IN_PROGRESS) {
                        goto fail;
                    }
                    temporaryCache->nextSide = 1;
                }
            } else {
                if (loadStatusEntry1 == LOAD_STATUS_IN_PROGRESS) {
                    if (loadStatusEntry0 == LOAD_STATUS_IN_PROGRESS) {
                        goto fail;
                    }
                    temporaryCache->nextSide = 0;
                }
            }

            if (0) {
            fail:
                // Both sides are being loaded into.
                return NULL;
            }
        }
    done:

        side = temporaryCache->nextSide;

        if (temporaryCache->entries[side].id != -1) {
            if (tableType == SAMPLE_TABLE) {
                AudioHeap_DiscardSampleBank(temporaryCache->entries[side].id);
            }

            loadStatus[temporaryCache->entries[side].id] = LOAD_STATUS_NOT_LOADED;

            if (tableType == FONT_TABLE) {
                AudioHeap_DiscardFont(temporaryCache->entries[side].id);
            }
        }

        switch (side) {
            case 0:
                temporaryCache->entries[0].ramAddr = temporaryPool->startRamAddr;
                temporaryCache->entries[0].id = id;
                temporaryCache->entries[0].size = size;
                temporaryPool->curRamAddr = temporaryPool->startRamAddr + size;

                if (temporaryCache->entries[1].id != -1 &&
                    temporaryCache->entries[1].ramAddr < temporaryPool->curRamAddr) {
                    if (tableType == SAMPLE_TABLE) {
                        AudioHeap_DiscardSampleBank(temporaryCache->entries[1].id);
                    }

                    loadStatus[temporaryCache->entries[1].id] = LOAD_STATUS_NOT_LOADED;

                    switch (tableType) {
                        case SEQUENCE_TABLE:
                            AudioHeap_DiscardSequence((s32)temporaryCache->entries[1].id);
                            break;

                        case FONT_TABLE:
                            AudioHeap_DiscardFont((s32)temporaryCache->entries[1].id);
                            break;
                    }

                    temporaryCache->entries[1].id = -1;
                    temporaryCache->entries[1].ramAddr = temporaryPool->startRamAddr + temporaryPool->size;
                }

                temporaryRamAddr = temporaryCache->entries[0].ramAddr;
                break;

            case 1:
                temporaryCache->entries[1].ramAddr =
                    (u8*)((u32)(temporaryPool->startRamAddr + temporaryPool->size - size) & ~0xF);
                temporaryCache->entries[1].id = id;
                temporaryCache->entries[1].size = size;
                if (temporaryCache->entries[0].id != -1 &&
                    temporaryCache->entries[1].ramAddr < temporaryPool->curRamAddr) {
                    if (tableType == SAMPLE_TABLE) {
                        AudioHeap_DiscardSampleBank(temporaryCache->entries[0].id);
                    }

                    loadStatus[temporaryCache->entries[0].id] = LOAD_STATUS_NOT_LOADED;
                    switch (tableType) {
                        case SEQUENCE_TABLE:
                            AudioHeap_DiscardSequence(temporaryCache->entries[0].id);
                            break;

                        case FONT_TABLE:
                            AudioHeap_DiscardFont(temporaryCache->entries[0].id);
                            break;
                    }

                    temporaryCache->entries[0].id = -1;
                    temporaryPool->curRamAddr = temporaryPool->startRamAddr;
                }
                temporaryRamAddr = temporaryCache->entries[1].ramAddr;
                break;

            default:
                return NULL;
        }

        temporaryCache->nextSide ^= 1;
        return temporaryRamAddr;
    }

    persistentRamAddr = AudioHeap_Alloc(&loadedCache->persistent.pool, size);
    loadedCache->persistent.entries[loadedCache->persistent.numEntries].ramAddr = persistentRamAddr;

    if (persistentRamAddr == NULL) {
        switch (cache) {
            case CACHE_EITHER:
                return AudioHeap_AllocCached(tableType, size, CACHE_TEMPORARY, id);

            case CACHE_TEMPORARY:
            case CACHE_PERSISTENT:
                return NULL;
        }
    }

    loadedCache->persistent.entries[loadedCache->persistent.numEntries].id = id;
    loadedCache->persistent.entries[loadedCache->persistent.numEntries].size = size;

    return loadedCache->persistent.entries[loadedCache->persistent.numEntries++].ramAddr;
}

void* AudioHeap_SearchCaches(s32 tableType, s32 cache, s32 id) {
    void* ramAddr;

    // Always search the permanent cache in addition to the regular ones.
    ramAddr = AudioHeap_SearchPermanentCache(tableType, id);
    if (ramAddr != NULL) {
        return ramAddr;
    }
    if (cache == CACHE_PERMANENT) {
        return NULL;
    }
    return AudioHeap_SearchRegularCaches(tableType, cache, id);
}

void* AudioHeap_SearchRegularCaches(s32 tableType, s32 cache, s32 id) {
    u32 i;
    AudioCache* loadedCache;
    AudioTemporaryCache* temporary;
    AudioPersistentCache* persistent;

    switch (tableType) {
        case SEQUENCE_TABLE:
            loadedCache = &gAudioCtx.seqCache;
            break;

        case FONT_TABLE:
            loadedCache = &gAudioCtx.fontCache;
            break;

        case SAMPLE_TABLE:
            loadedCache = &gAudioCtx.sampleBankCache;
            break;
    }

    temporary = &loadedCache->temporary;
    if (cache == CACHE_TEMPORARY) {
        if (temporary->entries[0].id == id) {
            temporary->nextSide = 1;
            return temporary->entries[0].ramAddr;
        } else if (temporary->entries[1].id == id) {
            temporary->nextSide = 0;
            return temporary->entries[1].ramAddr;
        } else {
            return NULL;
        }
    }

    persistent = &loadedCache->persistent;
    for (i = 0; i < persistent->numEntries; i++) {
        if (persistent->entries[i].id == id) {
            return persistent->entries[i].ramAddr;
        }
    }

    if (cache == CACHE_EITHER) {
        return AudioHeap_SearchCaches(tableType, CACHE_TEMPORARY, id);
    }
    return NULL;
}

void func_800DF1D8(f32 p, f32 q, u16* out) {
    // With the bug below fixed, this mysterious unused function computes two recurrences
    // out[0..7] = a_i, out[8..15] = b_i, where
    // a_{-2} = b_{-1} = 262159 = 2^18 + 15
    // a_{-1} = b_{-2} = 0
    // a_i = q * a_{i-1} + p * a_{i-2}
    // b_i = q * b_{i-1} + p * b_{i-2}
    // These grow exponentially if p < -1 or p + |q| > 1.
    s32 i;
    f32 tmp[16];

    tmp[0] = (f32)(q * 262159.0f);
    tmp[8] = (f32)(p * 262159.0f);
    tmp[1] = (f32)((q * p) * 262159.0f);
    tmp[9] = (f32)(((p * p) + q) * 262159.0f);

    for (i = 2; i < 8; i++) {
        //! @bug value should be stored to tmp[i] and tmp[8 + i], otherwise we read
        //! garbage in later loop iterations.
        out[i] = q * tmp[i - 2] + p * tmp[i - 1];
        out[8 + i] = q * tmp[6 + i] + p * tmp[7 + i];
    }

    for (i = 0; i < 16; i++) {
        out[i] = tmp[i];
    }
}

void AudioHeap_ClearFilter(s16* filter) {
    s32 i;

    for (i = 0; i < 8; i++) {
        filter[i] = 0;
    }
}

void AudioHeap_LoadLowPassFilter(s16* filter, s32 cutoff) {
    s32 i;
    s16* ptr = &gLowPassFilterData[8 * cutoff];

    for (i = 0; i < 8; i++) {
        filter[i] = ptr[i];
    }
}

void AudioHeap_LoadHighPassFilter(s16* filter, s32 cutoff) {
    s32 i;
    s16* ptr = &gHighPassFilterData[8 * (cutoff - 1)];

    for (i = 0; i < 8; i++) {
        filter[i] = ptr[i];
    }
}

void AudioHeap_LoadFilter(s16* filter, s32 lowPassCutoff, s32 highPassCutoff) {
    s32 i;

    if (lowPassCutoff == 0 && highPassCutoff == 0) {
        // Identity filter
        AudioHeap_LoadLowPassFilter(filter, 0);
    } else if (highPassCutoff == 0) {
        AudioHeap_LoadLowPassFilter(filter, lowPassCutoff);
    } else if (lowPassCutoff == 0) {
        AudioHeap_LoadHighPassFilter(filter, highPassCutoff);
    } else {
        s16* ptr1 = &gLowPassFilterData[8 * lowPassCutoff];
        s16* ptr2 = &gHighPassFilterData[8 * (highPassCutoff - 1)];

        for (i = 0; i < 8; i++) {
            filter[i] = (ptr1[i] + ptr2[i]) / 2;
        }
    }
}

void AudioHeap_UpdateReverb(SynthesisReverb* reverb) {
}

void AudioHeap_UpdateReverbs(void) {
    s32 count;
    s32 i;
    s32 j;

    if (gAudioCtx.audioBufferParameters.specUnk4 == 2) {
        count = 2;
    } else {
        count = 1;
    }

    for (i = 0; i < gAudioCtx.numSynthesisReverbs; i++) {
        for (j = 0; j < count; j++) {
            AudioHeap_UpdateReverb(&gAudioCtx.synthesisReverbs[i]);
        }
    }
}

/**
 * Clear the current Audio Interface Buffer
 */
void AudioHeap_ClearCurrentAiBuffer(void) {
    s32 curAiBufferIndex = gAudioCtx.curAiBufIndex;
    s32 i;

    gAudioCtx.aiBufLengths[curAiBufferIndex] = gAudioCtx.audioBufferParameters.minAiBufferLength;

    for (i = 0; i < AIBUF_LEN; i++) {
        gAudioCtx.aiBuffers[curAiBufferIndex][i] = 0;
    }
}

s32 AudioHeap_ResetStep(void) {
    s32 i;
    s32 j;
    s32 sp24;

    if (gAudioCtx.audioBufferParameters.specUnk4 == 2) {
        sp24 = 2;
    } else {
        sp24 = 1;
    }

    switch (gAudioCtx.resetStatus) {
        case 5:
            for (i = 0; i < gAudioCtx.audioBufferParameters.numSequencePlayers; i++) {
                AudioSeq_SequencePlayerDisableAsFinished(&gAudioCtx.seqPlayers[i]);
            }
            gAudioCtx.audioResetFadeOutFramesLeft = 2 / sp24;
            gAudioCtx.resetStatus--;
            break;

        case 4:
            if (gAudioCtx.audioResetFadeOutFramesLeft != 0) {
                gAudioCtx.audioResetFadeOutFramesLeft--;
                AudioHeap_UpdateReverbs();
            } else {
                for (i = 0; i < gAudioCtx.numNotes; i++) {
                    if (gAudioCtx.notes[i].noteSubEu.bitField0.enabled &&
                        gAudioCtx.notes[i].playbackState.adsr.action.s.state != ADSR_STATE_DISABLED) {
                        gAudioCtx.notes[i].playbackState.adsr.fadeOutVel =
                            gAudioCtx.audioBufferParameters.ticksPerUpdateInv;
                        gAudioCtx.notes[i].playbackState.adsr.action.s.release = true;
                    }
                }
                gAudioCtx.audioResetFadeOutFramesLeft = 8 / sp24;
                gAudioCtx.resetStatus--;
            }
            break;

        case 3:
            if (gAudioCtx.audioResetFadeOutFramesLeft != 0) {
                gAudioCtx.audioResetFadeOutFramesLeft--;
                AudioHeap_UpdateReverbs();
            } else {
                gAudioCtx.audioResetFadeOutFramesLeft = 2 / sp24;
                gAudioCtx.resetStatus--;
            }
            break;

        case 2:
            AudioHeap_ClearCurrentAiBuffer();
            if (gAudioCtx.audioResetFadeOutFramesLeft != 0) {
                gAudioCtx.audioResetFadeOutFramesLeft--;
            } else {
                gAudioCtx.resetStatus--;
                AudioHeap_DiscardSampleCaches();
                AudioHeap_DiscardSampleBanks();
            }
            break;

        case 1:
            AudioHeap_Init();
            gAudioCtx.resetStatus = 0;
            for (i = 0; i < 3; i++) {
                gAudioCtx.aiBufLengths[i] = gAudioCtx.audioBufferParameters.maxAiBufferLength;
                for (j = 0; j < AIBUF_LEN; j++) {
                    gAudioCtx.aiBuffers[i][j] = 0;
                }
            }
            break;
    }

    if (gAudioCtx.resetStatus < 3) {
        return false;
    }

    return true;
}

void AudioHeap_Init(void) {
    s32 pad1[4];
    s16* ramAddr;
    s32 persistentSize;
    s32 temporarySize;
    s32 cachePoolSize;
    s32 miscPoolSize;
    OSIntMask intMask;
    s32 i;
    s32 j;
    s32 pad2;
    AudioSpec* spec = &gAudioSpecs[gAudioCtx.specId]; // Audio Specifications

    gAudioCtx.sampleDmaCount = 0;

    // audio buffer parameters
    gAudioCtx.audioBufferParameters.samplingFrequency = spec->samplingFrequency;
    gAudioCtx.audioBufferParameters.aiSamplingFrequency =
        osAiSetFrequency(gAudioCtx.audioBufferParameters.samplingFrequency);
    gAudioCtx.audioBufferParameters.samplesPerFrameTarget =
        ALIGN16(gAudioCtx.audioBufferParameters.samplingFrequency / gAudioCtx.refreshRate);
    gAudioCtx.audioBufferParameters.minAiBufferLength = gAudioCtx.audioBufferParameters.samplesPerFrameTarget - 0x10;
    gAudioCtx.audioBufferParameters.maxAiBufferLength = gAudioCtx.audioBufferParameters.samplesPerFrameTarget + 0x10;
    gAudioCtx.audioBufferParameters.ticksPerUpdate =
        ((gAudioCtx.audioBufferParameters.samplesPerFrameTarget + 0x10) / 0xD0) + 1;
    gAudioCtx.audioBufferParameters.samplesPerTick =
        (gAudioCtx.audioBufferParameters.samplesPerFrameTarget / gAudioCtx.audioBufferParameters.ticksPerUpdate) & ~7;
    gAudioCtx.audioBufferParameters.samplesPerTickMax = gAudioCtx.audioBufferParameters.samplesPerTick + 8;
    gAudioCtx.audioBufferParameters.samplesPerTickMin = gAudioCtx.audioBufferParameters.samplesPerTick - 8;
    gAudioCtx.audioBufferParameters.resampleRate = 32000.0f / (s32)gAudioCtx.audioBufferParameters.samplingFrequency;
    gAudioCtx.audioBufferParameters.ticksPerUpdateInvScaled =
        (1.0f / 256.0f) / gAudioCtx.audioBufferParameters.ticksPerUpdate;
    gAudioCtx.audioBufferParameters.ticksPerUpdateScaled = gAudioCtx.audioBufferParameters.ticksPerUpdate / 4.0f;
    gAudioCtx.audioBufferParameters.ticksPerUpdateInv = 1.0f / gAudioCtx.audioBufferParameters.ticksPerUpdate;

    // SampleDma buffer size
    gAudioCtx.sampleDmaBufSize1 = spec->sampleDmaBufSize1;
    gAudioCtx.sampleDmaBufSize2 = spec->sampleDmaBufSize2;

    gAudioCtx.numNotes = spec->numNotes;
    gAudioCtx.audioBufferParameters.numSequencePlayers = spec->numSequencePlayers;
    if (gAudioCtx.audioBufferParameters.numSequencePlayers > 4) {
        gAudioCtx.audioBufferParameters.numSequencePlayers = 4;
    }
    gAudioCtx.unk_2 = spec->unk_14;

    // (ticks / min)
    // 60 * 1000 is a conversion from milliseconds to minutes
    gAudioCtx.maxTempo = (u32)(gAudioCtx.audioBufferParameters.ticksPerUpdate * (f32)(60 * 1000 * SEQTICKS_PER_BEAT) /
                               gTempoData.seqTicksPerBeat / gAudioCtx.maxTempoTvTypeFactors);

    gAudioCtx.unk_2870 = gAudioCtx.refreshRate;
    gAudioCtx.unk_2870 *= gAudioCtx.audioBufferParameters.ticksPerUpdate;
    gAudioCtx.unk_2870 /= gAudioCtx.audioBufferParameters.aiSamplingFrequency;
    gAudioCtx.unk_2870 /= gAudioCtx.maxTempo;

    gAudioCtx.audioBufferParameters.specUnk4 = spec->unk_04;
    gAudioCtx.audioBufferParameters.samplesPerFrameTarget *= gAudioCtx.audioBufferParameters.specUnk4;
    gAudioCtx.audioBufferParameters.maxAiBufferLength *= gAudioCtx.audioBufferParameters.specUnk4;
    gAudioCtx.audioBufferParameters.minAiBufferLength *= gAudioCtx.audioBufferParameters.specUnk4;
    gAudioCtx.audioBufferParameters.ticksPerUpdate *= gAudioCtx.audioBufferParameters.specUnk4;

    if (gAudioCtx.audioBufferParameters.specUnk4 >= 2) {
        gAudioCtx.audioBufferParameters.maxAiBufferLength -= 0x10;
    }

    // Determine the length of the buffer for storing the audio command list passed to the rsp audio microcode
    gAudioCtx.maxAudioCmds = gAudioCtx.numNotes * 0x10 * gAudioCtx.audioBufferParameters.ticksPerUpdate +
                             spec->numReverbs * 0x18 + FRAMERATE_CONST(0x140, 0x1C0);

    // Calculate sizes for various caches on the audio heap
    persistentSize =
        spec->persistentSeqCacheSize + spec->persistentFontCacheSize + spec->persistentSampleBankCacheSize + 0x10;
    temporarySize =
        spec->temporarySeqCacheSize + spec->temporaryFontCacheSize + spec->temporarySampleBankCacheSize + 0x10;
    cachePoolSize = persistentSize + temporarySize;
    miscPoolSize = gAudioCtx.sessionPool.size - cachePoolSize - 0x100;

    if (gAudioCtx.externalPool.startRamAddr != NULL) {
        gAudioCtx.externalPool.curRamAddr = gAudioCtx.externalPool.startRamAddr;
    }

    // Session Pool Split (split into Cache and Misc pools)
    gAudioCtx.sessionPoolSplit.miscPoolSize = miscPoolSize;
    gAudioCtx.sessionPoolSplit.cachePoolSize = cachePoolSize;
    AudioHeap_InitSessionPools(&gAudioCtx.sessionPoolSplit);

    // Cache Pool Split (split into Persistent and Temporary pools)
    gAudioCtx.cachePoolSplit.persistentCommonPoolSize = persistentSize;
    gAudioCtx.cachePoolSplit.temporaryCommonPoolSize = temporarySize;
    AudioHeap_InitCachePools(&gAudioCtx.cachePoolSplit);

    // Persistent Pool Split (split into Sequences, SoundFonts, Samples pools)
    gAudioCtx.persistentCommonPoolSplit.seqCacheSize = spec->persistentSeqCacheSize;
    gAudioCtx.persistentCommonPoolSplit.fontCacheSize = spec->persistentFontCacheSize;
    gAudioCtx.persistentCommonPoolSplit.sampleBankCacheSize = spec->persistentSampleBankCacheSize;
    AudioHeap_InitPersistentPoolsAndCaches(&gAudioCtx.persistentCommonPoolSplit);

    // Temporary Pool Split (split into Sequences, SoundFonts, Samples pools)
    gAudioCtx.temporaryCommonPoolSplit.seqCacheSize = spec->temporarySeqCacheSize;
    gAudioCtx.temporaryCommonPoolSplit.fontCacheSize = spec->temporaryFontCacheSize;
    gAudioCtx.temporaryCommonPoolSplit.sampleBankCacheSize = spec->temporarySampleBankCacheSize;
    AudioHeap_InitTemporaryPoolsAndCaches(&gAudioCtx.temporaryCommonPoolSplit);

    AudioHeap_ResetLoadStatus();

    // Initialize notes
    gAudioCtx.notes = AudioHeap_AllocZeroed(&gAudioCtx.miscPool, gAudioCtx.numNotes * sizeof(Note));
    Audio_NoteInitAll();
    Audio_InitNoteFreeList();
    gAudioCtx.noteSubsEu = AudioHeap_AllocZeroed(&gAudioCtx.miscPool, gAudioCtx.audioBufferParameters.ticksPerUpdate *
                                                                          gAudioCtx.numNotes * sizeof(NoteSubEu));
    // Initialize audio binary interface command list buffers
    for (i = 0; i != 2; i++) {
        gAudioCtx.abiCmdBufs[i] =
            AudioHeap_AllocDmaMemoryZeroed(&gAudioCtx.miscPool, gAudioCtx.maxAudioCmds * sizeof(Acmd));
    }

    // Initialize the decay rate table for adsr
    gAudioCtx.adsrDecayTable = AudioHeap_Alloc(&gAudioCtx.miscPool, 256 * sizeof(f32));
    AudioHeap_InitAdsrDecayTable();

    // Initialize reverbs
    for (i = 0; i < 4; i++) {
        gAudioCtx.synthesisReverbs[i].useReverb = 0;
    }

    gAudioCtx.numSynthesisReverbs = spec->numReverbs;
    for (i = 0; i < gAudioCtx.numSynthesisReverbs; i++) {
        ReverbSettings* settings = &spec->reverbSettings[i];
        SynthesisReverb* reverb = &gAudioCtx.synthesisReverbs[i];

        reverb->downsampleRate = settings->downsampleRate;
        reverb->windowSize = settings->windowSize * 64;
        reverb->windowSize /= reverb->downsampleRate;
        reverb->decayRatio = settings->decayRatio;
        reverb->volume = settings->volume;
        reverb->unk_14 = settings->unk_6 * 64;
        reverb->unk_16 = settings->unk_8;
        reverb->unk_18 = 0;
        reverb->leakRtl = settings->leakRtl;
        reverb->leakLtr = settings->leakLtr;
        reverb->unk_05 = settings->unk_10;
        reverb->unk_08 = settings->unk_12;
        reverb->useReverb = 8;
        reverb->leftRingBuf =
            AudioHeap_AllocZeroedAttemptExternal(&gAudioCtx.miscPool, reverb->windowSize * SAMPLE_SIZE);
        reverb->rightRingBuf =
            AudioHeap_AllocZeroedAttemptExternal(&gAudioCtx.miscPool, reverb->windowSize * SAMPLE_SIZE);
        reverb->nextRingBufPos = 0;
        reverb->unk_20 = 0;
        reverb->curFrame = 0;
        reverb->bufSizePerChan = reverb->windowSize;
        reverb->framesToIgnore = 2;
        reverb->resampleFlags = 1;
        reverb->tunedSample.sample = &reverb->sample;
        reverb->sample.loop = &reverb->loop;
        reverb->tunedSample.tuning = 1.0f;
        reverb->sample.codec = CODEC_REVERB;
        reverb->sample.medium = MEDIUM_RAM;
        reverb->sample.size = reverb->windowSize * SAMPLE_SIZE;
        reverb->sample.sampleAddr = (u8*)reverb->leftRingBuf;
        reverb->loop.header.start = 0;
        reverb->loop.header.count = 1;
        reverb->loop.header.end = reverb->windowSize;

        if (reverb->downsampleRate != 1) {
            reverb->unk_0E = 0x8000 / reverb->downsampleRate;
            reverb->unk_30 = AudioHeap_AllocZeroed(&gAudioCtx.miscPool, sizeof(RESAMPLE_STATE));
            reverb->unk_34 = AudioHeap_AllocZeroed(&gAudioCtx.miscPool, sizeof(RESAMPLE_STATE));
            reverb->unk_38 = AudioHeap_AllocZeroed(&gAudioCtx.miscPool, sizeof(RESAMPLE_STATE));
            reverb->unk_3C = AudioHeap_AllocZeroed(&gAudioCtx.miscPool, sizeof(RESAMPLE_STATE));
            for (j = 0; j < gAudioCtx.audioBufferParameters.ticksPerUpdate; j++) {
                ramAddr = AudioHeap_AllocZeroedAttemptExternal(&gAudioCtx.miscPool, DMEM_2CH_SIZE);
                reverb->items[0][j].toDownsampleLeft = ramAddr;
                reverb->items[0][j].toDownsampleRight = ramAddr + DMEM_1CH_SIZE / SAMPLE_SIZE;

                ramAddr = AudioHeap_AllocZeroedAttemptExternal(&gAudioCtx.miscPool, DMEM_2CH_SIZE);
                reverb->items[1][j].toDownsampleLeft = ramAddr;
                reverb->items[1][j].toDownsampleRight = ramAddr + DMEM_1CH_SIZE / SAMPLE_SIZE;
            }
        }

        if (settings->lowPassFilterCutoffLeft != 0) {
            reverb->filterLeftState =
                AudioHeap_AllocDmaMemoryZeroed(&gAudioCtx.miscPool, 2 * (FILTER_BUF_PART1 + FILTER_BUF_PART2));
            reverb->filterLeft = AudioHeap_AllocDmaMemory(&gAudioCtx.miscPool, FILTER_SIZE);
            AudioHeap_LoadLowPassFilter(reverb->filterLeft, settings->lowPassFilterCutoffLeft);
        } else {
            reverb->filterLeft = NULL;
        }

        if (settings->lowPassFilterCutoffRight != 0) {
            reverb->filterRightState =
                AudioHeap_AllocDmaMemoryZeroed(&gAudioCtx.miscPool, 2 * (FILTER_BUF_PART1 + FILTER_BUF_PART2));
            reverb->filterRight = AudioHeap_AllocDmaMemory(&gAudioCtx.miscPool, FILTER_SIZE);
            AudioHeap_LoadLowPassFilter(reverb->filterRight, settings->lowPassFilterCutoffRight);
        } else {
            reverb->filterRight = NULL;
        }
    }

    // Initialize sequence players
    AudioSeq_InitSequencePlayers();
    for (j = 0; j < gAudioCtx.audioBufferParameters.numSequencePlayers; j++) {
        AudioSeq_InitSequencePlayerChannels(j);
        AudioSeq_ResetSequencePlayer(&gAudioCtx.seqPlayers[j]);
    }

    // Initialize two additional sample caches for individual samples
    AudioHeap_InitSampleCaches(spec->persistentSampleCacheSize, spec->temporarySampleCacheSize);
    AudioLoad_InitSampleDmaBuffers(gAudioCtx.numNotes);

    // Initialize Loads
    gAudioCtx.preloadSampleStackTop = 0;
    AudioLoad_InitSlowLoads();
    AudioLoad_InitScriptLoads();
    AudioLoad_InitAsyncLoads();
    gAudioCtx.unk_4 = 0x1000;
    AudioLoad_LoadPermanentSamples();

    intMask = osSetIntMask(OS_IM_NONE);
    osWritebackDCacheAll();
    osSetIntMask(intMask);
}

void* AudioHeap_SearchPermanentCache(s32 tableType, s32 id) {
    s32 i;

    for (i = 0; i < gAudioCtx.permanentPool.numEntries; i++) {
        if (gAudioCtx.permanentCache[i].tableType == tableType && gAudioCtx.permanentCache[i].id == id) {
            return gAudioCtx.permanentCache[i].ramAddr;
        }
    }
    return NULL;
}

void* AudioHeap_AllocPermanent(s32 tableType, s32 id, u32 size) {
    void* ramAddr;
    s32 index = gAudioCtx.permanentPool.numEntries;

    ramAddr = AudioHeap_Alloc(&gAudioCtx.permanentPool, size);
    gAudioCtx.permanentCache[index].ramAddr = ramAddr;
    if (ramAddr == NULL) {
        return NULL;
    }
    gAudioCtx.permanentCache[index].tableType = tableType;
    gAudioCtx.permanentCache[index].id = id;
    gAudioCtx.permanentCache[index].size = size;

    //! @bug UB: missing return. "ramAddr" is in v0 at this point, but doing an
    //! explicit return uses an additional register.
#ifdef AVOID_UB
    return ramAddr;
#endif
}

void* AudioHeap_AllocSampleCache(u32 size, s32 fontId, void* sampleAddr, s8 medium, s32 cache) {
    SampleCacheEntry* entry;

    if (cache == CACHE_TEMPORARY) {
        entry = AudioHeap_AllocTemporarySampleCacheEntry(size);
    } else {
        entry = AudioHeap_AllocPersistentSampleCacheEntry(size);
    }
    if (entry != NULL) {
        //! @bug Should use sampleBankId, not fontId
        entry->sampleBankId = fontId;
        entry->sampleAddr = sampleAddr;
        entry->origMedium = medium;
        return entry->allocatedAddr;
    }
    return NULL;
}

/**
 * Initializes the persistent and temporary caches used for individual samples. Will attempt to use heap space available
 * on the external pool. If no external pool is provided, then default to using space on the misc pool.
 */
void AudioHeap_InitSampleCaches(u32 persistentSampleCacheSize, u32 temporarySampleCacheSize) {
    void* ramAddr;

    ramAddr = AudioHeap_AllocAttemptExternal(&gAudioCtx.miscPool, persistentSampleCacheSize);
    if (ramAddr == NULL) {
        gAudioCtx.persistentSampleCache.pool.size = 0;
    } else {
        AudioHeap_InitPool(&gAudioCtx.persistentSampleCache.pool, ramAddr, persistentSampleCacheSize);
    }
    ramAddr = AudioHeap_AllocAttemptExternal(&gAudioCtx.miscPool, temporarySampleCacheSize);
    if (ramAddr == NULL) {
        gAudioCtx.temporarySampleCache.pool.size = 0;
    } else {
        AudioHeap_InitPool(&gAudioCtx.temporarySampleCache.pool, ramAddr, temporarySampleCacheSize);
    }
    gAudioCtx.persistentSampleCache.numEntries = 0;
    gAudioCtx.temporarySampleCache.numEntries = 0;
}

SampleCacheEntry* AudioHeap_AllocTemporarySampleCacheEntry(u32 size) {
    u8* allocAfter;
    u8* allocBefore;
    void* ramAddr;
    s32 index;
    s32 i;
    SampleCacheEntry* entry;
    AudioPreloadReq* preload;
    AudioSampleCache* cache;
    u8* startRamAddr;
    u8* endRamAddr;

    cache = &gAudioCtx.temporarySampleCache;
    allocBefore = cache->pool.curRamAddr;
    ramAddr = AudioHeap_Alloc(&cache->pool, size);
    if (ramAddr == NULL) {
        // Reset the pool and try again. We still keep pointers to within the
        // pool, so we have to be careful to discard existing overlapping
        // allocations further down.
        u8* old = cache->pool.curRamAddr;

        cache->pool.curRamAddr = cache->pool.startRamAddr;
        ramAddr = AudioHeap_Alloc(&cache->pool, size);
        if (ramAddr == NULL) {
            cache->pool.curRamAddr = old;
            return NULL;
        }
        allocBefore = cache->pool.startRamAddr;
    }

    allocAfter = cache->pool.curRamAddr;

    index = -1;
    for (i = 0; i < gAudioCtx.preloadSampleStackTop; i++) {
        preload = &gAudioCtx.preloadSampleStack[i];
        if (!preload->isFree) {
            startRamAddr = preload->ramAddr;
            endRamAddr = preload->ramAddr + preload->sample->size - 1;

            if (endRamAddr < allocBefore && startRamAddr < allocBefore) {
                continue;
            }
            if (endRamAddr >= allocAfter && startRamAddr >= allocAfter) {
                continue;
            }

            // Overlap, skip this preload.
            preload->isFree = true;
        }
    }

    for (i = 0; i < cache->numEntries; i++) {
        if (!cache->entries[i].inUse) {
            continue;
        }

        startRamAddr = cache->entries[i].allocatedAddr;
        endRamAddr = startRamAddr + cache->entries[i].size - 1;

        if (endRamAddr < allocBefore && startRamAddr < allocBefore) {
            continue;
        }
        if (endRamAddr >= allocAfter && startRamAddr >= allocAfter) {
            continue;
        }

        // Overlap, discard existing entry.
        AudioHeap_DiscardSampleCacheEntry(&cache->entries[i]);
        if (index == -1) {
            index = i;
        }
    }

    if (index == -1) {
        index = cache->numEntries++;
    }

    entry = &cache->entries[index];
    entry->inUse = true;
    entry->allocatedAddr = ramAddr;
    entry->size = size;

    return entry;
}

void AudioHeap_UnapplySampleCacheForFont(SampleCacheEntry* entry, s32 fontId) {
    Drum* drum;
    Instrument* inst;
    SoundEffect* soundEffect;
    s32 instId;
    s32 drumId;
    s32 sfxId;

    for (instId = 0; instId < gAudioCtx.soundFontList[fontId].numInstruments; instId++) {
        inst = Audio_GetInstrumentInner(fontId, instId);
        if (inst != NULL) {
            if (inst->normalRangeLo != 0) {
                AudioHeap_UnapplySampleCache(entry, inst->lowPitchTunedSample.sample);
            }
            if (inst->normalRangeHi != 0x7F) {
                AudioHeap_UnapplySampleCache(entry, inst->highPitchTunedSample.sample);
            }
            AudioHeap_UnapplySampleCache(entry, inst->normalPitchTunedSample.sample);
        }
    }

    for (drumId = 0; drumId < gAudioCtx.soundFontList[fontId].numDrums; drumId++) {
        drum = Audio_GetDrum(fontId, drumId);
        if (drum != NULL) {
            AudioHeap_UnapplySampleCache(entry, drum->tunedSample.sample);
        }
    }

    for (sfxId = 0; sfxId < gAudioCtx.soundFontList[fontId].numSfx; sfxId++) {
        soundEffect = Audio_GetSoundEffect(fontId, sfxId);
        if (soundEffect != NULL) {
            AudioHeap_UnapplySampleCache(entry, soundEffect->tunedSample.sample);
        }
    }
}

void AudioHeap_DiscardSampleCacheEntry(SampleCacheEntry* entry) {
    s32 numFonts;
    s32 sampleBankId1;
    s32 sampleBankId2;
    s32 fontId;

    numFonts = gAudioCtx.soundFontTable->header.numEntries;
    for (fontId = 0; fontId < numFonts; fontId++) {
        sampleBankId1 = gAudioCtx.soundFontList[fontId].sampleBankId1;
        sampleBankId2 = gAudioCtx.soundFontList[fontId].sampleBankId2;
        if (((sampleBankId1 != 0xFF) && (entry->sampleBankId == sampleBankId1)) ||
            ((sampleBankId2 != 0xFF) && (entry->sampleBankId == sampleBankId2)) || entry->sampleBankId == 0) {
            if (AudioHeap_SearchCaches(FONT_TABLE, CACHE_EITHER, fontId) != NULL) {
                if (AudioLoad_IsFontLoadComplete(fontId) != 0) {
                    AudioHeap_UnapplySampleCacheForFont(entry, fontId);
                }
            }
        }
    }
}

void AudioHeap_UnapplySampleCache(SampleCacheEntry* entry, Sample* sample) {
    if (sample != NULL) {
        if (sample->sampleAddr == entry->allocatedAddr) {
            sample->sampleAddr = entry->sampleAddr;
            sample->medium = entry->origMedium;
        }
    }
}

SampleCacheEntry* AudioHeap_AllocPersistentSampleCacheEntry(u32 size) {
    AudioSampleCache* cache;
    SampleCacheEntry* entry;
    void* ramAddr;

    cache = &gAudioCtx.persistentSampleCache;
    ramAddr = AudioHeap_Alloc(&cache->pool, size);
    if (ramAddr == NULL) {
        return NULL;
    }
    entry = &cache->entries[cache->numEntries];
    entry->inUse = true;
    entry->allocatedAddr = ramAddr;
    entry->size = size;
    cache->numEntries++;

    return entry;
}

void AudioHeap_DiscardSampleCacheForFont(SampleCacheEntry* entry, s32 sampleBankId1, s32 sampleBankId2, s32 fontId) {
    if ((entry->sampleBankId == sampleBankId1) || (entry->sampleBankId == sampleBankId2) ||
        (entry->sampleBankId == 0)) {
        AudioHeap_UnapplySampleCacheForFont(entry, fontId);
    }
}

void AudioHeap_DiscardSampleCaches(void) {
    s32 numFonts;
    s32 sampleBankId1;
    s32 sampleBankId2;
    s32 fontId;
    s32 j;

    numFonts = gAudioCtx.soundFontTable->header.numEntries;
    for (fontId = 0; fontId < numFonts; fontId++) {
        sampleBankId1 = gAudioCtx.soundFontList[fontId].sampleBankId1;
        sampleBankId2 = gAudioCtx.soundFontList[fontId].sampleBankId2;
        if ((sampleBankId1 == 0xFF) && (sampleBankId2 == 0xFF)) {
            continue;
        }
        if (AudioHeap_SearchCaches(FONT_TABLE, CACHE_PERMANENT, fontId) == NULL ||
            !AudioLoad_IsFontLoadComplete(fontId)) {
            continue;
        }

        for (j = 0; j < gAudioCtx.persistentSampleCache.numEntries; j++) {
            AudioHeap_DiscardSampleCacheForFont(&gAudioCtx.persistentSampleCache.entries[j], sampleBankId1,
                                                sampleBankId2, fontId);
        }
        for (j = 0; j < gAudioCtx.temporarySampleCache.numEntries; j++) {
            AudioHeap_DiscardSampleCacheForFont(&gAudioCtx.temporarySampleCache.entries[j], sampleBankId1,
                                                sampleBankId2, fontId);
        }
    }
}

typedef struct StorageChange {
    u32 oldAddr;
    u32 newAddr;
    u32 size;
    u8 newMedium;
} StorageChange;

void AudioHeap_ChangeStorage(StorageChange* change, Sample* sample) {
    if (sample != NULL) {
        u32 startAddr = change->oldAddr;
        u32 endAddr = change->oldAddr + change->size;

        if (((u32)sample->sampleAddr >= startAddr) && ((u32)sample->sampleAddr < endAddr)) {
            sample->sampleAddr += -startAddr + change->newAddr;
            sample->medium = change->newMedium;
        }
    }
}

void AudioHeap_ApplySampleBankCacheInternal(s32 apply, s32 sampleBankId);

void AudioHeap_DiscardSampleBank(s32 sampleBankId) {
    AudioHeap_ApplySampleBankCacheInternal(false, sampleBankId);
}

void AudioHeap_ApplySampleBankCache(s32 sampleBankId) {
    AudioHeap_ApplySampleBankCacheInternal(true, sampleBankId);
}

void AudioHeap_ApplySampleBankCacheInternal(s32 apply, s32 sampleBankId) {
    AudioTable* sampleBankTable;
    AudioTableEntry* entry;
    s32 numFonts;
    s32 instId;
    s32 drumId;
    s32 sfxId;
    StorageChange change;
    s32 sampleBankId1;
    s32 sampleBankId2;
    s32 fontId;
    Drum* drum;
    Instrument* inst;
    SoundEffect* soundEffect;
    u32* fakematch;
    s32 pad[4];

    sampleBankTable = gAudioCtx.sampleBankTable;
    numFonts = gAudioCtx.soundFontTable->header.numEntries;
    change.oldAddr = (u32)AudioHeap_SearchCaches(SAMPLE_TABLE, CACHE_EITHER, sampleBankId);
    if (change.oldAddr == 0) {
        return;
    }

    entry = &sampleBankTable->entries[sampleBankId];
    change.size = entry->size;
    change.newMedium = entry->medium;

    if ((change.newMedium == MEDIUM_CART) || (change.newMedium == MEDIUM_DISK_DRIVE)) {
        change.newAddr = entry->romAddr;
    } else {
        change.newAddr = 0;
    }

    fakematch = &change.oldAddr;
    if (apply && (apply == true)) {
        u32 temp = change.newAddr;

        change.newAddr = *fakematch; // = change.oldAddr
        change.oldAddr = temp;
        change.newMedium = MEDIUM_RAM;
    }

    for (fontId = 0; fontId < numFonts; fontId++) {
        sampleBankId1 = gAudioCtx.soundFontList[fontId].sampleBankId1;
        sampleBankId2 = gAudioCtx.soundFontList[fontId].sampleBankId2;
        if ((sampleBankId1 != 0xFF) || (sampleBankId2 != 0xFF)) {
            if (!AudioLoad_IsFontLoadComplete(fontId) ||
                AudioHeap_SearchCaches(FONT_TABLE, CACHE_EITHER, fontId) == NULL) {
                continue;
            }

            if (sampleBankId1 == sampleBankId) {
            } else if (sampleBankId2 == sampleBankId) {
            } else {
                continue;
            }

            for (instId = 0; instId < gAudioCtx.soundFontList[fontId].numInstruments; instId++) {
                inst = Audio_GetInstrumentInner(fontId, instId);
                if (inst != NULL) {
                    if (inst->normalRangeLo != 0) {
                        AudioHeap_ChangeStorage(&change, inst->lowPitchTunedSample.sample);
                    }
                    if (inst->normalRangeHi != 0x7F) {
                        AudioHeap_ChangeStorage(&change, inst->highPitchTunedSample.sample);
                    }
                    AudioHeap_ChangeStorage(&change, inst->normalPitchTunedSample.sample);
                }
            }

            for (drumId = 0; drumId < gAudioCtx.soundFontList[fontId].numDrums; drumId++) {
                drum = Audio_GetDrum(fontId, drumId);
                if (drum != NULL) {
                    AudioHeap_ChangeStorage(&change, drum->tunedSample.sample);
                }
            }

            for (sfxId = 0; sfxId < gAudioCtx.soundFontList[fontId].numSfx; sfxId++) {
                soundEffect = Audio_GetSoundEffect(fontId, sfxId);
                if (soundEffect != NULL) {
                    AudioHeap_ChangeStorage(&change, soundEffect->tunedSample.sample);
                }
            }
        }
    }
}

void AudioHeap_DiscardSampleBanks(void) {
    AudioCache* cache;
    AudioPersistentCache* persistent;
    AudioTemporaryCache* temporary;
    u32 i;

    cache = &gAudioCtx.sampleBankCache;
    temporary = &cache->temporary;

    if (temporary->entries[0].id != -1) {
        AudioHeap_DiscardSampleBank(temporary->entries[0].id);
    }

    if (temporary->entries[1].id != -1) {
        AudioHeap_DiscardSampleBank(temporary->entries[1].id);
    }

    persistent = &cache->persistent;
    for (i = 0; i < persistent->numEntries; i++) {
        AudioHeap_DiscardSampleBank(persistent->entries[i].id);
    }
}
