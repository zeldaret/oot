#include "ultra64.h"
#include "global.h"

#define MK_ASYNC_MSG(retData, tableType, id, status) (((retData) << 24) | ((tableType) << 16) | ((id) << 8) | (status))
#define ASYNC_TBLTYPE(v) ((u8)(v >> 16))
#define ASYNC_ID(v) ((u8)(v >> 8))
#define ASYNC_STATUS(v) ((u8)(v >> 0))

typedef enum {
    /* 0 */ LOAD_STATUS_WAITING,
    /* 1 */ LOAD_STATUS_START,
    /* 2 */ LOAD_STATUS_LOADING,
    /* 3 */ LOAD_STATUS_DONE
} SlowLoadStatus;

typedef struct {
    /* 0x00 */ s32 sampleBankId1;
    /* 0x04 */ s32 sampleBankId2;
    /* 0x08 */ s32 baseAddr1;
    /* 0x0C */ s32 baseAddr2;
    /* 0x10 */ u32 medium1;
    /* 0x14 */ u32 medium2;
} RelocInfo; // size = 0x18

// opaque type for unpatched audio bank data (should maybe get rid of this?)
typedef void AudioBankData;

/* forward declarations */
s32 AudioLoad_SyncInitSeqPlayerInternal(s32 playerIdx, s32 seqId, s32 skipTicks);
AudioBankData* AudioLoad_SyncLoadBank(u32 bankId);
AudioBankSample* AudioLoad_GetBankSample(s32 bankId, s32 instId);
void AudioLoad_ProcessAsyncLoads(s32 resetStatus);
void AudioLoad_ProcessAsyncLoadUnkMedium(AudioAsyncLoad* asyncLoad, s32 resetStatus);
void AudioLoad_ProcessAsyncLoad(AudioAsyncLoad* asyncLoad, s32 resetStatus);
void AudioLoad_RelocateBankAndPreloadSamples(s32 bankId, AudioBankData* mem, RelocInfo* relocInfo, s32 temporary);
void AudioLoad_RelocateSample(AudioBankSound* sound, AudioBankData* mem, RelocInfo* relocInfo);
void AudioLoad_DiscardBank(s32 bankId);
u32 AudioLoad_TrySyncLoadSampleBank(u32 sampleBankId, u32* outMedium, s32 noLoad);
void* AudioLoad_SyncLoad(u32 tableType, u32 tableId, s32* didAllocate);
u32 AudioLoad_GetRealTableIndex(s32 tableType, u32 tableId);
void* AudioLoad_SearchCaches(s32 tableType, s32 id);
AudioTable* AudioLoad_GetLoadTable(s32 tableType);
void AudioLoad_SyncDma(u32 devAddr, u8* addr, u32 size, s32 medium);
void AudioLoad_SyncDmaUnkMedium(u32 devAddr, u8* addr, u32 size, s32 unkMediumThing);
s32 AudioLoad_Dma(OSIoMesg* mesg, u32 priority, s32 direction, u32 devAddr, void* ramAddr, u32 size, OSMesgQueue* reqQueue,
              s32 medium, const char* dmaFuncType);
void* AudioLoad_AsyncLoadInner(s32 tableType, s32 id, s32 nChunks, s32 retData, OSMesgQueue* retQueue);
AudioAsyncLoad* AudioLoad_StartAsyncLoadUnkMedium(s32 unkMediumThing, u32 devAddr, void* ramAddr, s32 size, s32 medium, s32 nChunks,
                            OSMesgQueue* retQueue, s32 retMsg);
AudioAsyncLoad* AudioLoad_StartAsyncLoad(u32 devAddr, void* ramAddr, u32 size, s32 medium, s32 nChunks, OSMesgQueue* retQueue,
                                 s32 retMsg);
void AudioLoad_AsyncDma(AudioAsyncLoad* asyncLoad, u32 size);
void AudioLoad_AsyncDmaUnkMedium(u32 devAddr, void* ramAddr, u32 size, s16 arg3);
u8* AudioLoad_SyncLoadSeq(s32 seqId);
s32 AudioLoad_ProcessSamplePreloads(s32 resetStatus);
void AudioLoad_DmaSlowCopy(AudioSlowLoad* slowLoad, s32 size);
void AudioLoad_ProcessSlowLoads(s32 resetStatus);
void AudioLoad_DmaSlowCopyUnkMedium(s32 devAddr, u8* ramAddr, s32 size, s32 arg3);

OSMesgQueue sScriptLoadQueue;
OSMesg sScriptLoadMesgBuf[0x10];
s8* sScriptLoadDonePointers[0x10];
s32 sAudioLoadPad1[2]; // file padding

s32 D_8016B780;
s32 sAudioLoadPad2[4]; // double file padding?

DmaHandler sDmaHandler = osEPiStartDma;
void* sUnusedHandler = NULL;

s32 gAudioContextInitalized = false;

void AudioLoad_DecreaseSampleDmaTtls(void) {
    u32 i;

    for (i = 0; i < gAudioContext.sampleDmaListSize1; i++) {
        SampleDma* dma = &gAudioContext.sampleDmas[i];

        if (dma->ttl != 0) {
            dma->ttl--;
            if (dma->ttl == 0) {
                dma->reuseIndex = gAudioContext.sampleDmaReuseQueue1WrPos;
                gAudioContext.sampleDmaReuseQueue1[gAudioContext.sampleDmaReuseQueue1WrPos] = i;
                gAudioContext.sampleDmaReuseQueue1WrPos++;
            }
        }
    }

    for (i = gAudioContext.sampleDmaListSize1; i < gAudioContext.sampleDmaCount; i++) {
        SampleDma* dma = &gAudioContext.sampleDmas[i];

        if (dma->ttl != 0) {
            dma->ttl--;
            if (dma->ttl == 0) {
                dma->reuseIndex = gAudioContext.sampleDmaReuseQueue2WrPos;
                gAudioContext.sampleDmaReuseQueue2[gAudioContext.sampleDmaReuseQueue2WrPos] = i;
                gAudioContext.sampleDmaReuseQueue2WrPos++;
            }
        }
    }

    gAudioContext.unused2628 = 0;
}

void* AudioLoad_DmaSampleData(u32 devAddr, u32 size, s32 arg2, u8* dmaIndexRef, s32 medium) {
    s32 pad1;
    SampleDma* dma;
    s32 hasDma = false;
    u32 dmaDevAddr;
    u32 pad2;
    u32 dmaIndex;
    u32 transfer;
    s32 bufferPos;
    u32 i;

    if (arg2 != 0 || *dmaIndexRef >= gAudioContext.sampleDmaListSize1) {
        for (i = gAudioContext.sampleDmaListSize1; i < gAudioContext.sampleDmaCount; i++) {
            dma = &gAudioContext.sampleDmas[i];
            bufferPos = devAddr - dma->devAddr;
            if (0 <= bufferPos && (u32)bufferPos <= dma->size - size) {
                // We already have a DMA request for this memory range.
                if (dma->ttl == 0 &&
                    gAudioContext.sampleDmaReuseQueue2RdPos != gAudioContext.sampleDmaReuseQueue2WrPos) {
                    // Move the DMA out of the reuse queue, by swapping it with the
                    // read pos, and then incrementing the read pos.
                    if (dma->reuseIndex != gAudioContext.sampleDmaReuseQueue2RdPos) {
                        gAudioContext.sampleDmaReuseQueue2[dma->reuseIndex] =
                            gAudioContext.sampleDmaReuseQueue2[gAudioContext.sampleDmaReuseQueue2RdPos];
                        gAudioContext
                            .sampleDmas[gAudioContext.sampleDmaReuseQueue2[gAudioContext.sampleDmaReuseQueue2RdPos]]
                            .reuseIndex = dma->reuseIndex;
                    }
                    gAudioContext.sampleDmaReuseQueue2RdPos++;
                }
                dma->ttl = 32;
                *dmaIndexRef = (u8)i;
                return &dma->ramAddr[devAddr - dma->devAddr];
            }
        }

        if (arg2 == 0) {
            goto search_short_lived;
        }

        if (gAudioContext.sampleDmaReuseQueue2RdPos != gAudioContext.sampleDmaReuseQueue2WrPos && arg2 != 0) {
            // Allocate a DMA from reuse queue 2, unless full.
            dmaIndex = gAudioContext.sampleDmaReuseQueue2[gAudioContext.sampleDmaReuseQueue2RdPos];
            gAudioContext.sampleDmaReuseQueue2RdPos++;
            dma = gAudioContext.sampleDmas + dmaIndex;
            hasDma = true;
        }
    } else {
    search_short_lived:
        dma = gAudioContext.sampleDmas + *dmaIndexRef;
        i = 0;
    again:
        bufferPos = devAddr - dma->devAddr;
        if (0 <= bufferPos && (u32)bufferPos <= dma->size - size) {
            // We already have DMA for this memory range.
            if (dma->ttl == 0) {
                // Move the DMA out of the reuse queue, by swapping it with the
                // read pos, and then incrementing the read pos.
                if (dma->reuseIndex != gAudioContext.sampleDmaReuseQueue1RdPos) {
                    gAudioContext.sampleDmaReuseQueue1[dma->reuseIndex] =
                        gAudioContext.sampleDmaReuseQueue1[gAudioContext.sampleDmaReuseQueue1RdPos];
                    gAudioContext
                        .sampleDmas[gAudioContext.sampleDmaReuseQueue1[gAudioContext.sampleDmaReuseQueue1RdPos]]
                        .reuseIndex = dma->reuseIndex;
                }
                gAudioContext.sampleDmaReuseQueue1RdPos++;
            }
            dma->ttl = 2;
            return dma->ramAddr + (devAddr - dma->devAddr);
        }
        dma = gAudioContext.sampleDmas + i++;
        if (i <= gAudioContext.sampleDmaListSize1) {
            goto again;
        }
    }

    if (!hasDma) {
        if (gAudioContext.sampleDmaReuseQueue1RdPos == gAudioContext.sampleDmaReuseQueue1WrPos) {
            return NULL;
        }
        // Allocate a DMA from reuse queue 1.
        dmaIndex = gAudioContext.sampleDmaReuseQueue1[gAudioContext.sampleDmaReuseQueue1RdPos++];
        dma = gAudioContext.sampleDmas + dmaIndex;
        hasDma = true;
    }

    transfer = dma->size;
    dmaDevAddr = devAddr & ~0xF;
    dma->ttl = 3;
    dma->devAddr = dmaDevAddr;
    dma->sizeUnused = transfer;
    AudioLoad_Dma(&gAudioContext.currAudioFrameDmaIoMesgBuf[gAudioContext.curAudioFrameDmaCount++], OS_MESG_PRI_NORMAL,
              OS_READ, dmaDevAddr, dma->ramAddr, transfer, &gAudioContext.currAudioFrameDmaQueue, medium, "SUPERDMA");
    *dmaIndexRef = dmaIndex;
    return (devAddr - dmaDevAddr) + dma->ramAddr;
}

void AudioLoad_InitSampleDmaBuffers(s32 arg0) {
    SampleDma* dma;
    s32 i;
    s32 t2;
    s32 j;

    gAudioContext.sampleDmaBufSize = gAudioContext.sampleDmaBufSize1;
    gAudioContext.sampleDmas =
        AudioHeap_Alloc(&gAudioContext.notesAndBuffersPool, 4 * gAudioContext.numNotes * sizeof(SampleDma) *
                                                                gAudioContext.audioBufferParameters.specUnk4);
    t2 = 3 * gAudioContext.numNotes * gAudioContext.audioBufferParameters.specUnk4;
    for (i = 0; i < t2; i++) {
        dma = &gAudioContext.sampleDmas[gAudioContext.sampleDmaCount];
        dma->ramAddr = AudioHeap_AllocMaybeExternal(&gAudioContext.notesAndBuffersPool, gAudioContext.sampleDmaBufSize);
        if (dma->ramAddr == NULL) {
            break;
        } else {
            AudioHeap_WritebackDCache(dma->ramAddr, gAudioContext.sampleDmaBufSize);
            dma->size = gAudioContext.sampleDmaBufSize;
            dma->devAddr = 0;
            dma->sizeUnused = 0;
            dma->unused = 0;
            dma->ttl = 0;
            gAudioContext.sampleDmaCount++;
        }
    }

    for (i = 0; (u32)i < gAudioContext.sampleDmaCount; i++) {
        gAudioContext.sampleDmaReuseQueue1[i] = i;
        gAudioContext.sampleDmas[i].reuseIndex = i;
    }

    for (i = gAudioContext.sampleDmaCount; i < 0x100; i++) {
        gAudioContext.sampleDmaReuseQueue1[i] = 0;
    }

    gAudioContext.sampleDmaReuseQueue1RdPos = 0;
    gAudioContext.sampleDmaReuseQueue1WrPos = gAudioContext.sampleDmaCount;
    gAudioContext.sampleDmaListSize1 = gAudioContext.sampleDmaCount;
    gAudioContext.sampleDmaBufSize = gAudioContext.sampleDmaBufSize2;

    for (j = 0; j < gAudioContext.numNotes; j++) {
        dma = &gAudioContext.sampleDmas[gAudioContext.sampleDmaCount];
        dma->ramAddr = AudioHeap_AllocMaybeExternal(&gAudioContext.notesAndBuffersPool, gAudioContext.sampleDmaBufSize);
        if (dma->ramAddr == NULL) {
            break;
        } else {
            AudioHeap_WritebackDCache(dma->ramAddr, gAudioContext.sampleDmaBufSize);
            dma->size = gAudioContext.sampleDmaBufSize;
            dma->devAddr = 0U;
            dma->sizeUnused = 0;
            dma->unused = 0;
            dma->ttl = 0;
            gAudioContext.sampleDmaCount++;
        }
    }

    for (i = gAudioContext.sampleDmaListSize1; (u32)i < gAudioContext.sampleDmaCount; i++) {
        gAudioContext.sampleDmaReuseQueue2[i - gAudioContext.sampleDmaListSize1] = i;
        gAudioContext.sampleDmas[i].reuseIndex = i - gAudioContext.sampleDmaListSize1;
    }

    for (i = gAudioContext.sampleDmaCount; i < 0x100; i++) {
        gAudioContext.sampleDmaReuseQueue2[i] = gAudioContext.sampleDmaListSize1;
    }

    gAudioContext.sampleDmaReuseQueue2RdPos = 0;
    gAudioContext.sampleDmaReuseQueue2WrPos = gAudioContext.sampleDmaCount - gAudioContext.sampleDmaListSize1;
}

s32 AudioLoad_IsBankLoadComplete(s32 bankId) {
    if (bankId == 0xFF) {
        return true;
    } else if (gAudioContext.bankLoadStatus[bankId] >= 2) {
        return true;
    } else if (gAudioContext.bankLoadStatus[AudioLoad_GetRealTableIndex(BANK_TABLE, bankId)] >= 2) {
        return true;
    } else {
        return false;
    }
}

s32 AudioLoad_IsSeqLoadComplete(s32 seqId) {
    if (seqId == 0xFF) {
        return true;
    } else if (gAudioContext.seqLoadStatus[seqId] >= 2) {
        return true;
    } else if (gAudioContext.seqLoadStatus[AudioLoad_GetRealTableIndex(SEQUENCE_TABLE, seqId)] >= 2) {
        return true;
    } else {
        return false;
    }
}

s32 AudioLoad_IsSampleLoadComplete(s32 sampleBankId) {
    if (sampleBankId == 0xFF) {
        return true;
    } else if (gAudioContext.sampleBankLoadStatus[sampleBankId] >= 2) {
        return true;
    } else if (gAudioContext.sampleBankLoadStatus[AudioLoad_GetRealTableIndex(SAMPLE_TABLE, sampleBankId)] >= 2) {
        return true;
    } else {
        return false;
    }
}

void AudioLoad_SetBankLoadStatus(s32 bankId, s32 status) {
    if ((bankId != 0xFF) && (gAudioContext.bankLoadStatus[bankId] != 5)) {
        gAudioContext.bankLoadStatus[bankId] = status;
    }
}

void AudioLoad_SetSeqLoadStatus(s32 seqId, s32 status) {
    if ((seqId != 0xFF) && (gAudioContext.seqLoadStatus[seqId] != 5)) {
        gAudioContext.seqLoadStatus[seqId] = status;
    }
}

void AudioLoad_SetSampleBankLoadStatusAndApplyCaches(s32 sampleBankId, s32 status) {
    if (sampleBankId != 0xFF) {
        if (gAudioContext.sampleBankLoadStatus[sampleBankId] != 5) {
            gAudioContext.sampleBankLoadStatus[sampleBankId] = status;
        }

        if ((gAudioContext.sampleBankLoadStatus[sampleBankId] == 5) ||
            (gAudioContext.sampleBankLoadStatus[sampleBankId] == 2)) {
            AudioHeap_ApplySampleBankCache(sampleBankId);
        }
    }
}

void AudioLoad_SetSampleBankLoadStatus(s32 sampleBankId, s32 status) {
    if ((sampleBankId != 0xFF) && (gAudioContext.sampleBankLoadStatus[sampleBankId] != 5)) {
        gAudioContext.sampleBankLoadStatus[sampleBankId] = status;
    }
}

void AudioLoad_InitTable(AudioTable* table, u32 romAddr, u16 unkMediumThing) {
    s32 i;

    table->unkMediumThing = unkMediumThing;
    table->romAddr = romAddr;

    for (i = 0; i < table->entryCnt; i++) {
        if ((table->entries[i].size != 0) && (table->entries[i].medium == MEDIUM_CART)) {
            table->entries[i].romAddr += romAddr;
        }
    }
}

AudioBankData* AudioLoad_SyncLoadSeqBanks(s32 seqId, u32* outDefaultBankId) {
    char pad[0x8];
    s32 index;
    AudioBankData* bank;
    s32 remaining;
    s32 bankId;
    s32 i;

    if (seqId >= gAudioContext.numSequences) {
        return NULL;
    }

    bankId = 0xFF;
    index = ((u16*)gAudioContext.sequenceBankTable)[seqId];
    remaining = gAudioContext.sequenceBankTable[index++];

    while (remaining > 0) {
        bankId = gAudioContext.sequenceBankTable[index++];
        bank = AudioLoad_SyncLoadBank(bankId);
        remaining--;
    }

    *outDefaultBankId = bankId;
    return bank;
}

void AudioLoad_SyncLoadSeqParts(s32 seqId, s32 arg1) {
    s32 pad;
    u32 defaultBankId;

    if (seqId < gAudioContext.numSequences) {
        if (arg1 & 2) {
            AudioLoad_SyncLoadSeqBanks(seqId, &defaultBankId);
        }
        if (arg1 & 1) {
            AudioLoad_SyncLoadSeq(seqId);
        }
    }
}

s32 AudioLoad_SyncLoadSample(AudioBankSample* sample, s32 bankId) {
    void* sampleAddr;

    if (sample->unk_bit25 == 1) {
        if (sample->medium != MEDIUM_RAM) {
            sampleAddr = AudioHeap_AllocSampleCache(sample->size, bankId, (void*)sample->sampleAddr, sample->medium, 1);
            if (sampleAddr == NULL) {
                return -1;
            }

            if (sample->medium == MEDIUM_UNK) {
                AudioLoad_SyncDmaUnkMedium(sample->sampleAddr, sampleAddr, sample->size,
                                      gAudioContext.sampleBankTable->unkMediumThing);
            } else {
                AudioLoad_SyncDma(sample->sampleAddr, sampleAddr, sample->size, sample->medium);
            }
            sample->medium = MEDIUM_RAM;
            sample->sampleAddr = sampleAddr;
        }
    }
}

s32 AudioLoad_SyncLoadInstrument(s32 bankId, s32 instId, s32 drumId) {
    if (instId < 0x7F) {
        Instrument* instrument = Audio_GetInstrumentInner(bankId, instId);

        if (instrument == NULL) {
            return -1;
        }
        if (instrument->normalRangeLo != 0) {
            AudioLoad_SyncLoadSample(instrument->lowNotesSound.sample, bankId);
        }
        AudioLoad_SyncLoadSample(instrument->normalNotesSound.sample, bankId);
        if (instrument->normalRangeHi != 0x7F) {
            return AudioLoad_SyncLoadSample(instrument->highNotesSound.sample, bankId);
        }
    } else if (instId == 0x7F) {
        Drum* drum = Audio_GetDrum(bankId, drumId);

        if (drum == NULL) {
            return -1;
        }
        AudioLoad_SyncLoadSample(drum->sound.sample, bankId);
        return 0;
    }
}

void AudioLoad_AsyncLoad(s32 tableType, s32 id, s32 nChunks, s32 retData, OSMesgQueue* retQueue) {
    if (AudioLoad_AsyncLoadInner(tableType, id, nChunks, retData, retQueue) == NULL) {
        osSendMesg(retQueue, 0xFFFFFFFF, OS_MESG_NOBLOCK);
    }
}

void AudioLoad_AsyncLoadSeq(s32 seqId, s32 arg1, s32 retData, OSMesgQueue* retQueue) {
    AudioLoad_AsyncLoad(SEQUENCE_TABLE, seqId, 0, retData, retQueue);
}

void AudioLoad_AsyncLoadSampleBank(s32 sampleBankId, s32 arg1, s32 retData, OSMesgQueue* retQueue) {
    AudioLoad_AsyncLoad(SAMPLE_TABLE, sampleBankId, 0, retData, retQueue);
}

void AudioLoad_AsyncLoadBank(s32 bankId, s32 arg1, s32 retData, OSMesgQueue* retQueue) {
    AudioLoad_AsyncLoad(BANK_TABLE, bankId, 0, retData, retQueue);
}

u8* AudioLoad_GetBanksForSequence(s32 seqId, u32* outNumBanks) {
    s32 index;

    index = ((u16*)gAudioContext.sequenceBankTable)[seqId];

    *outNumBanks = gAudioContext.sequenceBankTable[index++];
    if (*outNumBanks == 0) {
        return NULL;
    }
    return &gAudioContext.sequenceBankTable[index];
}

void AudioLoad_DiscardSeqBanks(s32 seqId) {
    s32 bankId;
    s32 index;
    s32 remaining;

    index = ((u16*)gAudioContext.sequenceBankTable)[seqId];
    remaining = gAudioContext.sequenceBankTable[index++];

    while (remaining > 0) {
        remaining--;
        bankId = AudioLoad_GetRealTableIndex(BANK_TABLE, gAudioContext.sequenceBankTable[index++]);
        if (AudioHeap_SearchPermanentCache(BANK_TABLE, bankId) == NULL) {
            AudioLoad_DiscardBank(bankId);
            AudioLoad_SetBankLoadStatus(bankId, 0);
        }
    }
}

void AudioLoad_DiscardBank(s32 bankId) {
    u32 i;
    AudioCache* pool = &gAudioContext.bankCache;
    AudioPersistentCache* persistent;

    if (bankId == pool->temporary.entries[0].id) {
        pool->temporary.entries[0].id = -1;
    } else if (bankId == pool->temporary.entries[1].id) {
        pool->temporary.entries[1].id = -1;
    }

    persistent = &pool->persistent;
    for (i = 0; i < persistent->numEntries; i++) {
        if (bankId == persistent->entries[i].id) {
            persistent->entries[i].id = -1;
        }
    }

    AudioHeap_DiscardBank(bankId);
}

s32 AudioLoad_SyncInitSeqPlayer(s32 playerIdx, s32 seqId, s32 arg2) {
    if (gAudioContext.resetTimer != 0) {
        return 0;
    }

    gAudioContext.seqPlayers[playerIdx].skipTicks = 0;
    AudioLoad_SyncInitSeqPlayerInternal(playerIdx, seqId, arg2);
    // Intentionally missing return. Returning the result of the above function
    // call matches but is UB because it too is missing a return, and using the
    // result of a non-void function that has failed to return a value is UB.
    // The callers of this function do not use the return value, so it's fine.
}

s32 AudioLoad_SyncInitSeqPlayerSkipTicks(s32 playerIdx, s32 seqId, s32 skipTicks) {
    if (gAudioContext.resetTimer != 0) {
        return 0;
    }

    gAudioContext.seqPlayers[playerIdx].skipTicks = skipTicks;
    AudioLoad_SyncInitSeqPlayerInternal(playerIdx, seqId, 0);
    // Missing return, see above.
}

s32 AudioLoad_SyncInitSeqPlayerInternal(s32 playerIdx, s32 seqId, s32 arg2) {
    SequencePlayer* seqPlayer = &gAudioContext.seqPlayers[playerIdx];
    u8* seqData;
    s32 index;
    s32 remaining;
    s32 bankId;

    if (seqId >= gAudioContext.numSequences) {
        return 0;
    }

    Audio_SequencePlayerDisable(seqPlayer);

    bankId = 0xFF;
    index = ((u16*)gAudioContext.sequenceBankTable)[seqId];
    remaining = gAudioContext.sequenceBankTable[index++];

    while (remaining > 0) {
        bankId = gAudioContext.sequenceBankTable[index++];
        AudioLoad_SyncLoadBank(bankId);
        remaining--;
    }

    seqData = AudioLoad_SyncLoadSeq(seqId);
    if (seqData == NULL) {
        return 0;
    }

    Audio_ResetSequencePlayer(seqPlayer);
    seqPlayer->seqId = seqId;
    seqPlayer->defaultBank = AudioLoad_GetRealTableIndex(BANK_TABLE, bankId);
    seqPlayer->seqData = seqData;
    seqPlayer->enabled = 1;
    seqPlayer->scriptState.pc = seqData;
    seqPlayer->scriptState.depth = 0;
    seqPlayer->delay = 0;
    seqPlayer->finished = 0;
    seqPlayer->playerIdx = playerIdx;
    Audio_SkipForwardSequence(seqPlayer);
    //! @bug missing return (but the return value is not used so it's not UB)
}

u8* AudioLoad_SyncLoadSeq(s32 seqId) {
    s32 pad;
    s32 didAllocate;

    if (gAudioContext.seqLoadStatus[AudioLoad_GetRealTableIndex(SEQUENCE_TABLE, seqId)] == 1) {
        return NULL;
    }

    return AudioLoad_SyncLoad(SEQUENCE_TABLE, seqId, &didAllocate);
}

u32 AudioLoad_GetSampleBank(u32 sampleBankId, u32* outMedium) {
    return AudioLoad_TrySyncLoadSampleBank(sampleBankId, outMedium, true);
}

u32 AudioLoad_TrySyncLoadSampleBank(u32 sampleBankId, u32* outMedium, s32 noLoad) {
    void* ret;
    AudioTable* sampleBankTable;
    u32 realTableId = AudioLoad_GetRealTableIndex(SAMPLE_TABLE, sampleBankId);
    s8 alloc;

    sampleBankTable = AudioLoad_GetLoadTable(SAMPLE_TABLE);
    ret = AudioLoad_SearchCaches(SAMPLE_TABLE, realTableId);
    if (ret != NULL) {
        if (gAudioContext.sampleBankLoadStatus[realTableId] != 1) {
            AudioLoad_SetSampleBankLoadStatus(realTableId, 2);
        }
        *outMedium = MEDIUM_RAM;
        return ret;
    }

    alloc = sampleBankTable->entries[sampleBankId].alloc;
    if (alloc == 4 || noLoad == true) {
        *outMedium = sampleBankTable->entries[sampleBankId].medium;
        return sampleBankTable->entries[realTableId].romAddr;
    }

    ret = AudioLoad_SyncLoad(SAMPLE_TABLE, sampleBankId, &noLoad);
    if (ret != NULL) {
        *outMedium = MEDIUM_RAM;
        return ret;
    }

    *outMedium = sampleBankTable->entries[sampleBankId].medium;
    return sampleBankTable->entries[realTableId].romAddr;
}

AudioBankData* AudioLoad_SyncLoadBank(u32 bankId) {
    AudioBankData* ret;
    s32 sampleBankId1;
    s32 sampleBankId2;
    s32 didAllocate;
    RelocInfo relocInfo;
    s32 realBankId = AudioLoad_GetRealTableIndex(BANK_TABLE, bankId);

    if (gAudioContext.bankLoadStatus[realBankId] == 1) {
        return NULL;
    }
    sampleBankId1 = gAudioContext.ctlEntries[realBankId].sampleBankId1;
    sampleBankId2 = gAudioContext.ctlEntries[realBankId].sampleBankId2;

    relocInfo.sampleBankId1 = sampleBankId1;
    relocInfo.sampleBankId2 = sampleBankId2;
    if (sampleBankId1 != 0xFF) {
        relocInfo.baseAddr1 = AudioLoad_TrySyncLoadSampleBank(sampleBankId1, &relocInfo.medium1, false);
    } else {
        relocInfo.baseAddr1 = 0;
    }

    if (sampleBankId2 != 0xFF) {
        relocInfo.baseAddr2 = AudioLoad_TrySyncLoadSampleBank(sampleBankId2, &relocInfo.medium2, false);
    } else {
        relocInfo.baseAddr2 = 0;
    }

    ret = AudioLoad_SyncLoad(BANK_TABLE, bankId, &didAllocate);
    if (ret == NULL) {
        return NULL;
    }
    if (didAllocate == true) {
        AudioLoad_RelocateBankAndPreloadSamples(realBankId, ret, &relocInfo, false);
    }

    return ret;
}

void* AudioLoad_SyncLoad(u32 tableType, u32 id, s32* didAllocate) {
    u32 size;
    AudioTable* table;
    s32 pad;
    u32 medium;
    s32 status;
    u32 romAddr;
    s32 alloc;
    void* ret;
    u32 realId;

    realId = AudioLoad_GetRealTableIndex(tableType, id);
    ret = AudioLoad_SearchCaches(tableType, realId);
    if (ret != NULL) {
        *didAllocate = false;
        status = 2;
    } else {
        table = AudioLoad_GetLoadTable(tableType);
        size = table->entries[realId].size;
        size = ALIGN16(size);
        medium = table->entries[id].medium;
        alloc = table->entries[id].alloc;
        romAddr = table->entries[realId].romAddr;
        switch (alloc) {
            case 0:
                ret = AudioHeap_AllocPermanent(tableType, realId, size);
                if (ret == NULL) {
                    return ret;
                }
                break;
            case 1:
                ret = AudioHeap_AllocCached(tableType, size, 1, realId);
                if (ret == NULL) {
                    return ret;
                }
                break;
            case 2:
                ret = AudioHeap_AllocCached(tableType, size, 0, realId);
                if (ret == NULL) {
                    return ret;
                }
                break;
            case 3:
            case 4:
                ret = AudioHeap_AllocCached(tableType, size, 2, realId);
                if (ret == NULL) {
                    return ret;
                }
                break;
        }

        *didAllocate = true;
        if (medium == MEDIUM_UNK) {
            AudioLoad_SyncDmaUnkMedium(romAddr, ret, size, (s16)table->unkMediumThing);
        } else {
            AudioLoad_SyncDma(romAddr, ret, size, medium);
        }

        status = alloc == 0 ? 5 : 2;
    }

    switch (tableType) {
        case SEQUENCE_TABLE:
            AudioLoad_SetSeqLoadStatus(realId, status);
            break;
        case BANK_TABLE:
            AudioLoad_SetBankLoadStatus(realId, status);
            break;
        case SAMPLE_TABLE:
            AudioLoad_SetSampleBankLoadStatusAndApplyCaches(realId, status);
            break;
        default:
            break;
    }

    return ret;
}

u32 AudioLoad_GetRealTableIndex(s32 tableType, u32 id) {
    AudioTable* table = AudioLoad_GetLoadTable(tableType);

    if (table->entries[id].size == 0) {
        id = table->entries[id].romAddr;
    }

    return id;
}

void* AudioLoad_SearchCaches(s32 tableType, s32 id) {
    void* ret;

    ret = AudioHeap_SearchPermanentCache(tableType, id);
    if (ret != NULL) {
        return ret;
    }

    ret = AudioHeap_SearchCaches(tableType, 2, id);
    if (ret != NULL) {
        return ret;
    }

    return NULL;
}

AudioTable* AudioLoad_GetLoadTable(s32 tableType) {
    AudioTable* ret;

    switch (tableType) {
        case SEQUENCE_TABLE:
            ret = gAudioContext.sequenceTable;
            break;
        case BANK_TABLE:
            ret = gAudioContext.audioBankTable;
            break;
        default:
            ret = NULL;
            break;
        case SAMPLE_TABLE:
            ret = gAudioContext.sampleBankTable;
            break;
    }
    return ret;
}

void AudioLoad_RelocateBank(s32 bankId, AudioBankData* mem, RelocInfo* relocInfo) {
    u32 reloc;
    u32 reloc2;
    Instrument* inst;
    Drum* drum;
    AudioBankSound* sfx;
    s32 i;
    s32 numDrums = gAudioContext.ctlEntries[bankId].numDrums;
    s32 numInstruments = gAudioContext.ctlEntries[bankId].numInstruments;
    s32 numSfx = gAudioContext.ctlEntries[bankId].numSfx;
    void** ptrs = (void**)mem;

#define BASE_OFFSET(x) (void*)((u32)(x) + (u32)(mem))

    reloc2 = ptrs[0];
    if (1) {}
    if ((reloc2 != 0) && (numDrums != 0)) {
        ptrs[0] = BASE_OFFSET(reloc2);
        for (i = 0; i < numDrums; i++) {
            reloc = ((Drum**)ptrs[0])[i];
            if (reloc != 0) {
                reloc = BASE_OFFSET(reloc);
                ((Drum**)ptrs[0])[i] = drum = reloc;
                if (!drum->loaded) {
                    AudioLoad_RelocateSample(&drum->sound, mem, relocInfo);
                    reloc = drum->envelope;
                    drum->envelope = BASE_OFFSET(reloc);
                    drum->loaded = 1;
                }
            }
        }
    }

    reloc2 = ptrs[1];
    if (1) {}
    if ((reloc2 != 0) && (numSfx != 0)) {
        ptrs[1] = BASE_OFFSET(reloc2);
        for (i = 0; i < numSfx; i++) {
            reloc = (AudioBankSound*)ptrs[1] + i;
            if (reloc != 0) {
                sfx = reloc;
                if (sfx->sample != NULL) {
                    AudioLoad_RelocateSample(sfx, mem, relocInfo);
                }
            }
        }
    }

    if (numInstruments > 0x7E) {
        numInstruments = 0x7E;
    }

    for (i = 2; i <= 2 + numInstruments - 1; i++) {
        if (ptrs[i] != NULL) {
            ptrs[i] = BASE_OFFSET(ptrs[i]);
            inst = ptrs[i];
            if (!inst->loaded) {
                if (inst->normalRangeLo != 0) {
                    AudioLoad_RelocateSample(&inst->lowNotesSound, mem, relocInfo);
                }
                AudioLoad_RelocateSample(&inst->normalNotesSound, mem, relocInfo);
                if (inst->normalRangeHi != 0x7F) {
                    AudioLoad_RelocateSample(&inst->highNotesSound, mem, relocInfo);
                }

                reloc = inst->envelope;
                inst->envelope = BASE_OFFSET(reloc);
                inst->loaded = 1;
            }
        }
    }

#undef BASE_OFFSET

    gAudioContext.ctlEntries[bankId].drums = ptrs[0];
    gAudioContext.ctlEntries[bankId].soundEffects = ptrs[1];
    gAudioContext.ctlEntries[bankId].instruments = (Instrument**)(ptrs + 2);
}

void AudioLoad_SyncDma(u32 devAddr, u8* addr, u32 size, s32 medium) {
    OSMesgQueue* msgQueue = &gAudioContext.syncDmaQueue;
    OSIoMesg* ioMesg = &gAudioContext.syncDmaIoMesg;
    size = ALIGN16(size);

    Audio_osInvalDCache(addr, size);

    while (true) {
        if (size < 0x400) {
            break;
        }
        AudioLoad_Dma(ioMesg, OS_MESG_PRI_HIGH, OS_READ, devAddr, addr, 0x400, msgQueue, medium, "FastCopy");
        osRecvMesg(msgQueue, NULL, OS_MESG_BLOCK);
        size -= 0x400;
        devAddr += 0x400;
        addr += 0x400;
    }

    if (size != 0) {
        AudioLoad_Dma(ioMesg, OS_MESG_PRI_HIGH, OS_READ, devAddr, addr, size, msgQueue, medium, "FastCopy");
        osRecvMesg(msgQueue, NULL, OS_MESG_BLOCK);
    }
}

void AudioLoad_SyncDmaUnkMedium(u32 devAddr, u8* addr, u32 size, s32 unkMediumThing) {
}

s32 AudioLoad_Dma(OSIoMesg* mesg, u32 priority, s32 direction, u32 devAddr, void* ramAddr, u32 size, OSMesgQueue* reqQueue,
              s32 medium, const char* dmaFuncType) {
    OSPiHandle* handle;

    if (gAudioContext.resetTimer > 0x10) {
        return -1;
    }

    switch (medium) {
        case MEDIUM_CART:
            handle = gAudioContext.cartHandle;
            break;
        case MEDIUM_DISK_DRIVE:
            handle = gAudioContext.driveHandle;
            break;
        default:
            return 0;
    }

    if ((size % 0x10) != 0) {
        size = ALIGN16(size);
    }

    mesg->hdr.pri = priority;
    mesg->hdr.retQueue = reqQueue;
    mesg->dramAddr = ramAddr;
    mesg->devAddr = devAddr;
    mesg->size = size;
    handle->transferInfo.cmdType = 2;
    sDmaHandler(handle, mesg, direction);
    return 0;
}

void AudioLoad_Unused1(void) {
}

void AudioLoad_SyncLoadSimple(u32 tableType, u32 bankId) {
    s32 didAllocate;

    AudioLoad_SyncLoad(tableType, bankId, &didAllocate);
}

void* AudioLoad_AsyncLoadInner(s32 tableType, s32 id, s32 nChunks, s32 retData, OSMesgQueue* retQueue) {
    u32 size;
    AudioTable* sp50;
    void* ret;
    s32 medium;
    s8 alloc;
    u32 devAddr;
    s32 status;
    u32 temp_v0;
    u32 realId;

    realId = AudioLoad_GetRealTableIndex(tableType, id);
    switch (tableType) {
        case SEQUENCE_TABLE:
            if (gAudioContext.seqLoadStatus[realId] == 1) {
                return NULL;
            }
            break;
        case BANK_TABLE:
            if (gAudioContext.bankLoadStatus[realId] == 1) {
                return NULL;
            }
            break;
        case SAMPLE_TABLE:
            if (gAudioContext.sampleBankLoadStatus[realId] == 1) {
                return NULL;
            }
            break;
    }

    ret = AudioLoad_SearchCaches(tableType, realId);
    if (ret != NULL) {
        status = 2;
        osSendMesg(retQueue, MK_ASYNC_MSG(retData, 0, 0, 0), 0);
    } else {
        sp50 = AudioLoad_GetLoadTable(tableType);
        size = sp50->entries[realId].size;
        size = ALIGN16(size);
        medium = sp50->entries[id].medium;
        alloc = sp50->entries[id].alloc;
        devAddr = sp50->entries[realId].romAddr;
        status = 2;
        switch (alloc) {
            case 0:
                ret = AudioHeap_AllocPermanent(tableType, realId, size);
                if (ret == NULL) {
                    return ret;
                }
                status = 5;
                break;
            case 1:
                ret = AudioHeap_AllocCached(tableType, size, 1, realId);
                if (ret == NULL) {
                    return ret;
                }
                break;
            case 2:
                ret = AudioHeap_AllocCached(tableType, size, 0, realId);
                if (ret == NULL) {
                    return ret;
                }
                break;
            case 3:
            case 4:
                ret = AudioHeap_AllocCached(tableType, size, 2, realId);
                if (ret == NULL) {
                    return ret;
                }
                break;
        }

        if (medium == MEDIUM_UNK) {
            AudioLoad_StartAsyncLoadUnkMedium((s16)sp50->unkMediumThing, devAddr, ret, size, medium, nChunks, retQueue,
                          MK_ASYNC_MSG(retData, tableType, id, status));
        } else {
            AudioLoad_StartAsyncLoad(devAddr, ret, size, medium, nChunks, retQueue,
                               MK_ASYNC_MSG(retData, tableType, realId, status));
        }
        status = 1;
    }

    switch (tableType) {
        case SEQUENCE_TABLE:
            AudioLoad_SetSeqLoadStatus(realId, status);
            break;
        case BANK_TABLE:
            AudioLoad_SetBankLoadStatus(realId, status);
            break;
        case SAMPLE_TABLE:
            AudioLoad_SetSampleBankLoadStatusAndApplyCaches(realId, status);
            break;
        default:
            break;
    }

    return ret;
}

void AudioLoad_ProcessLoads(s32 resetStatus) {
    AudioLoad_ProcessSlowLoads(resetStatus);
    AudioLoad_ProcessSamplePreloads(resetStatus);
    AudioLoad_ProcessAsyncLoads(resetStatus);
}

void AudioLoad_SetDmaHandler(DmaHandler callback) {
    sDmaHandler = callback;
}

void AudioLoad_SetUnusedHandler(void* callback) {
    sUnusedHandler = callback;
}

void AudioLoad_InitCtlEntry(s32 bankId) {
    CtlEntry* entry = &gAudioContext.ctlEntries[bankId];
    AudioTableEntry* tableEntry = &gAudioContext.audioBankTable->entries[bankId];

    entry->sampleBankId1 = (tableEntry->shortData1 >> 8) & 0xFF;
    entry->sampleBankId2 = (tableEntry->shortData1) & 0xFF;
    entry->numInstruments = (tableEntry->shortData2 >> 8) & 0xFF;
    entry->numDrums = tableEntry->shortData2 & 0xFF;
    entry->numSfx = tableEntry->shortData3;
}

void AudioLoad_Init(void* heap, u32 heapSize) {
    char pad[0x48];
    s32 numBanks;
    void* temp_v0_3;
    s32 i;
    u64* heapP;
    u8* ctxP;
    s16* u2974p;

    D_801755D0 = NULL;
    gAudioContext.resetTimer = 0;

    {
        s32 i;
        u8* ctxP = (u8*)&gAudioContext;
        for (i = sizeof(gAudioContext); i >= 0; i--) {
            *ctxP++ = 0;
        }
    }

    switch (osTvType) {
        case OS_TV_PAL:
            gAudioContext.unk_2960 = 20.03042f;
            gAudioContext.refreshRate = 50;
            break;
        case OS_TV_MPAL:
            gAudioContext.unk_2960 = 16.546f;
            gAudioContext.refreshRate = 60;
            break;
        case OS_TV_NTSC:
        default:
            gAudioContext.unk_2960 = 16.713f;
            gAudioContext.refreshRate = 60;
    }

    Audio_InitMesgQueues();

    for (i = 0; i < 3; i++) {
        gAudioContext.aiBufLengths[i] = 0xA0;
    }

    gAudioContext.totalTaskCnt = 0;
    gAudioContext.rspTaskIdx = 0;
    gAudioContext.curAIBufIdx = 0;
    gAudioContext.soundMode = 0;
    gAudioContext.currTask = NULL;
    gAudioContext.rspTask[0].task.t.data_size = 0;
    gAudioContext.rspTask[1].task.t.data_size = 0;
    osCreateMesgQueue(&gAudioContext.syncDmaQueue, &gAudioContext.syncDmaMesg, 1);
    osCreateMesgQueue(&gAudioContext.currAudioFrameDmaQueue, gAudioContext.currAudioFrameDmaMesgBuf, 0x40);
    osCreateMesgQueue(&gAudioContext.externalLoadQueue, gAudioContext.externalLoadMesgBuf, 0x10);
    osCreateMesgQueue(&gAudioContext.preloadSampleQueue, gAudioContext.preloadSampleMesgBuf, 0x10);
    gAudioContext.curAudioFrameDmaCount = 0;
    gAudioContext.sampleDmaCount = 0;
    gAudioContext.cartHandle = osCartRomInit();

    if (heap == NULL) {
        gAudioContext.audioHeap = gAudioHeap;
        gAudioContext.audioHeapSize = D_8014A6C4.heapSize;
    } else {
        void** hp = &heap;
        gAudioContext.audioHeap = *hp;
        gAudioContext.audioHeapSize = heapSize;
    }

    for (i = 0; i < (s32)gAudioContext.audioHeapSize / 8; i++) {
        ((u64*)gAudioContext.audioHeap)[i] = 0;
    }

    AudioHeap_InitMainPools(D_8014A6C4.initPoolSize);

    for (i = 0; i < 3; i++) {
        gAudioContext.aiBuffers[i] = AudioHeap_AllocZeroed(&gAudioContext.audioInitPool, AIBUF_LEN);
    }

    gAudioContext.sequenceTable = (AudioTable*)gSequenceTable;
    gAudioContext.audioBankTable = (AudioTable*)gAudioBankTable;
    gAudioContext.sampleBankTable = (AudioTable*)gSampleBankTable;
    gAudioContext.sequenceBankTable = gSequenceBankTable;
    gAudioContext.numSequences = gAudioContext.sequenceTable->entryCnt;

    gAudioContext.audioResetSpecIdToLoad = 0;
    gAudioContext.resetStatus = 1;

    AudioHeap_ResetStep();
    AudioLoad_InitTable(gAudioContext.sequenceTable, _AudioseqSegmentRomStart, 0);
    AudioLoad_InitTable(gAudioContext.audioBankTable, _AudiobankSegmentRomStart, 0);
    AudioLoad_InitTable(gAudioContext.sampleBankTable, _AudiotableSegmentRomStart, 0);
    numBanks = gAudioContext.audioBankTable->entryCnt;
    gAudioContext.ctlEntries = AudioHeap_Alloc(&gAudioContext.audioInitPool, numBanks * sizeof(CtlEntry));

    for (i = 0; i < numBanks; i++) {
        AudioLoad_InitCtlEntry(i);
    }

    if (temp_v0_3 = AudioHeap_Alloc(&gAudioContext.audioInitPool, D_8014A6C4.permanentPoolSize), temp_v0_3 == NULL) {
        // cast away const from D_8014A6C4
        *((u32*)&D_8014A6C4.permanentPoolSize) = 0;
    }

    AudioHeap_AllocPoolInit(&gAudioContext.permanentPool, temp_v0_3, D_8014A6C4.permanentPoolSize);
    gAudioContextInitalized = true;
    osSendMesg(gAudioContext.taskStartQueueP, (void*)gAudioContext.totalTaskCnt, 0);
}

void AudioLoad_InitSlowLoads(void) {
    gAudioContext.slowLoads[0].status = 0;
    gAudioContext.slowLoads[1].status = 0;
}

s32 AudioLoad_SlowLoadSample(s32 bankId, s32 instId, s8* isDone) {
    AudioBankSample* sample;
    AudioSlowLoad* slowLoad;

    sample = AudioLoad_GetBankSample(bankId, instId);
    if (sample == NULL) {
        *isDone = 0;
        return -1;
    }

    if (sample->medium == MEDIUM_RAM) {
        *isDone = 2;
        return 0;
    }

    slowLoad = &gAudioContext.slowLoads[gAudioContext.slowLoadPos];
    if (slowLoad->status == LOAD_STATUS_DONE) {
        slowLoad->status = LOAD_STATUS_WAITING;
    }

    slowLoad->sample = *sample;
    slowLoad->isDone = isDone;
    slowLoad->ramAddr = AudioHeap_AllocSampleCache(sample->size, bankId, sample->sampleAddr, sample->medium, 0);

    if (slowLoad->ramAddr == NULL) {
        if (sample->medium == MEDIUM_UNK || sample->codec == CODEC_S16_INMEMORY) {
            *isDone = 0;
            return -1;
        } else {
            *isDone = 3;
            return -1;
        }
    }

    slowLoad->status = LOAD_STATUS_START;
    slowLoad->bytesRemaining = ALIGN16(sample->size);
    slowLoad->ramSampleAddr = slowLoad->ramAddr;
    slowLoad->devAddr = sample->sampleAddr;
    slowLoad->medium = sample->medium;
    slowLoad->seqOrBankId = bankId;
    slowLoad->instId = instId;
    if (slowLoad->medium == MEDIUM_UNK) {
        slowLoad->unkMediumThing = gAudioContext.sampleBankTable->unkMediumThing;
    }

    gAudioContext.slowLoadPos ^= 1;
    return 0;
}

AudioBankSample* AudioLoad_GetBankSample(s32 bankId, s32 instId) {
    AudioBankSample* ret;

    if (instId < 0x80) {
        Instrument* instrument = Audio_GetInstrumentInner(bankId, instId);
        if (instrument == NULL) {
            return NULL;
        }
        ret = instrument->normalNotesSound.sample;
    } else if (instId < 0x100) {
        Drum* drum = Audio_GetDrum(bankId, instId - 0x80);
        if (drum == NULL) {
            return NULL;
        }
        ret = drum->sound.sample;
    } else {
        AudioBankSound* bankSound = Audio_GetSfx(bankId, instId - 0x100);
        if (bankSound == NULL) {
            return NULL;
        }
        ret = bankSound->sample;
    }
    return ret;
}

void AudioLoad_Unused2(void) {
}

void AudioLoad_FinishSlowLoad(AudioSlowLoad* slowLoad) {
    AudioBankSample* sample;

    if (slowLoad->sample.sampleAddr == NULL) {
        return;
    }

    sample = AudioLoad_GetBankSample(slowLoad->seqOrBankId, slowLoad->instId);
    if (sample == NULL) {
        return;
    }

    slowLoad->sample = *sample;
    sample->sampleAddr = slowLoad->ramSampleAddr;
    sample->medium = MEDIUM_RAM;
}

void AudioLoad_ProcessSlowLoads(s32 resetStatus) {
    AudioSlowLoad* slowLoad;
    s32 i;

    for (i = 0; i < ARRAY_COUNT(gAudioContext.slowLoads); i++) {
        slowLoad = &gAudioContext.slowLoads[i];
        switch (gAudioContext.slowLoads[i].status) {
            case LOAD_STATUS_LOADING:
                if (slowLoad->medium != MEDIUM_UNK) {
                    osRecvMesg(&slowLoad->msgqueue, NULL, OS_MESG_BLOCK);
                }

                if (resetStatus != 0) {
                    slowLoad->status = LOAD_STATUS_DONE;
                    continue;
                }
            case LOAD_STATUS_START:
                slowLoad->status = LOAD_STATUS_LOADING;
                if (slowLoad->bytesRemaining == 0) {
                    AudioLoad_FinishSlowLoad(slowLoad);
                    slowLoad->status = LOAD_STATUS_DONE;
                    *slowLoad->isDone = 1;
                } else if (slowLoad->bytesRemaining < 0x400) {
                    if (slowLoad->medium == MEDIUM_UNK) {
                        u32 size = slowLoad->bytesRemaining;
                        AudioLoad_DmaSlowCopyUnkMedium(slowLoad->devAddr, slowLoad->ramAddr, size, slowLoad->unkMediumThing);
                    } else {
                        AudioLoad_DmaSlowCopy(slowLoad, slowLoad->bytesRemaining);
                    }
                    slowLoad->bytesRemaining = 0;
                } else {
                    if (slowLoad->medium == MEDIUM_UNK) {
                        AudioLoad_DmaSlowCopyUnkMedium(slowLoad->devAddr, slowLoad->ramAddr, 0x400, slowLoad->unkMediumThing);
                    } else {
                        AudioLoad_DmaSlowCopy(slowLoad, 0x400);
                    }
                    slowLoad->bytesRemaining -= 0x400;
                    slowLoad->ramAddr += 0x400;
                    slowLoad->devAddr += 0x400;
                }
                break;
        }
    }
}

void AudioLoad_DmaSlowCopy(AudioSlowLoad* slowLoad, s32 size) {
    Audio_osInvalDCache(slowLoad->ramAddr, size);
    osCreateMesgQueue(&slowLoad->msgqueue, &slowLoad->msg, 1);
    AudioLoad_Dma(&slowLoad->ioMesg, 0U, 0, slowLoad->devAddr, slowLoad->ramAddr, size, &slowLoad->msgqueue,
              slowLoad->medium, "SLOWCOPY");
}

void AudioLoad_DmaSlowCopyUnkMedium(s32 devAddr, u8* ramAddr, s32 size, s32 arg3) {
}

s32 AudioLoad_SlowLoadSeq(s32 seqId, u8* ramAddr, s8* isDone) {
    AudioSlowLoad* slowLoad;
    AudioTable* seqTable;
    u32 size;

    if (seqId >= gAudioContext.numSequences) {
        *isDone = 0;
        return -1;
    }

    seqId = AudioLoad_GetRealTableIndex(SEQUENCE_TABLE, seqId);
    seqTable = AudioLoad_GetLoadTable(SEQUENCE_TABLE);
    slowLoad = &gAudioContext.slowLoads[gAudioContext.slowLoadPos];
    if (slowLoad->status == LOAD_STATUS_DONE) {
        slowLoad->status = LOAD_STATUS_WAITING;
    }

    slowLoad->sample.sampleAddr = NULL;
    slowLoad->isDone = isDone;
    size = seqTable->entries[seqId].size;
    size = ALIGN16(size);
    slowLoad->ramAddr = ramAddr;
    slowLoad->status = LOAD_STATUS_START;
    slowLoad->bytesRemaining = size;
    slowLoad->ramSampleAddr = ramAddr;
    slowLoad->devAddr = seqTable->entries[seqId].romAddr;
    slowLoad->medium = seqTable->entries[seqId].medium;
    slowLoad->seqOrBankId = seqId;

    if (slowLoad->medium == MEDIUM_UNK) {
        slowLoad->unkMediumThing = seqTable->unkMediumThing;
    }

    gAudioContext.slowLoadPos ^= 1;
    return 0;
}

void AudioLoad_InitAsyncLoads(void) {
    s32 i;

    for (i = 0; i < ARRAY_COUNT(gAudioContext.asyncLoads); i++) {
        gAudioContext.asyncLoads[i].status = 0;
    }
}

AudioAsyncLoad* AudioLoad_StartAsyncLoadUnkMedium(s32 unkMediumThing, u32 devAddr, void* ramAddr, s32 size, s32 medium, s32 nChunks,
                            OSMesgQueue* retQueue, s32 retMsg) {
    AudioAsyncLoad* asyncLoad;

    asyncLoad = AudioLoad_StartAsyncLoad(devAddr, ramAddr, size, medium, nChunks, retQueue, retMsg);

    if (asyncLoad == NULL) {
        return NULL;
    }

    osSendMesg(&gAudioContext.asyncLoadUnkMediumQueue, asyncLoad, OS_MESG_NOBLOCK);
    asyncLoad->unkMediumThing = unkMediumThing;
    return asyncLoad;
}

AudioAsyncLoad* AudioLoad_StartAsyncLoad(u32 devAddr, void* ramAddr, u32 size, s32 medium, s32 nChunks, OSMesgQueue* retQueue,
                                 s32 retMsg) {
    AudioAsyncLoad* asyncLoad;
    s32 i;

    for (i = 0; i < ARRAY_COUNT(gAudioContext.asyncLoads); i++) {
        if (gAudioContext.asyncLoads[i].status == 0) {
            asyncLoad = &gAudioContext.asyncLoads[i];
            break;
        }
    }

    // no more available async loads
    if (i == ARRAY_COUNT(gAudioContext.asyncLoads)) {
        return NULL;
    }

    asyncLoad->status = LOAD_STATUS_START;
    asyncLoad->devAddr = devAddr;
    asyncLoad->ramAddr2 = ramAddr;
    asyncLoad->ramAddr = ramAddr;
    asyncLoad->bytesRemaining = size;

    if (nChunks == 0) {
        asyncLoad->chunkSize = 0x1000;
    } else if (nChunks == 1) {
        asyncLoad->chunkSize = size;
    } else {
        asyncLoad->chunkSize = (((s32)size / nChunks) + 0xFF) & ~0xFF;
        if (asyncLoad->chunkSize < 0x100) {
            asyncLoad->chunkSize = 0x100;
        }
    }

    asyncLoad->retQueue = retQueue;
    asyncLoad->delay = 3;
    asyncLoad->medium = medium;
    asyncLoad->retMsg = retMsg;
    osCreateMesgQueue(&asyncLoad->msgQueue, &asyncLoad->msg, 1);
    return asyncLoad;
}

void AudioLoad_ProcessAsyncLoads(s32 resetStatus) {
    AudioAsyncLoad* asyncLoad;
    s32 i;

    if (gAudioContext.resetTimer == 1) {
        return;
    }

    if (gAudioContext.curUnkMediumLoad == NULL) {
        if (resetStatus != 0) {
            // Clear and ignore queue if resetting.
            do {
            } while (osRecvMesg(&gAudioContext.asyncLoadUnkMediumQueue, (OSMesg*)&asyncLoad, OS_MESG_NOBLOCK) != -1);
        } else if (osRecvMesg(&gAudioContext.asyncLoadUnkMediumQueue, (OSMesg*)&asyncLoad, OS_MESG_NOBLOCK) == -1) {
            gAudioContext.curUnkMediumLoad = NULL;
        } else {
            gAudioContext.curUnkMediumLoad = asyncLoad;
        }
    }

    if (gAudioContext.curUnkMediumLoad != NULL) {
        AudioLoad_ProcessAsyncLoadUnkMedium(gAudioContext.curUnkMediumLoad, resetStatus);
    }

    for (i = 0; i < ARRAY_COUNT(gAudioContext.asyncLoads); i++) {
        if (gAudioContext.asyncLoads[i].status == 1) {
            asyncLoad = &gAudioContext.asyncLoads[i];
            if (asyncLoad->medium != MEDIUM_UNK) {
                AudioLoad_ProcessAsyncLoad(asyncLoad, resetStatus);
            }
        }
    }
}

void AudioLoad_ProcessAsyncLoadUnkMedium(AudioAsyncLoad* asyncLoad, s32 resetStatus) {
}

void AudioLoad_FinishAsyncLoad(AudioAsyncLoad* asyncLoad) {
    u32 retMsg = asyncLoad->retMsg;
    u32 bankId;
    u32 pad;
    OSMesg doneMsg;
    u32 sampleBankId1;
    u32 sampleBankId2;
    RelocInfo relocInfo;

    if (1) {}
    switch (ASYNC_TBLTYPE(retMsg)) {
        case SEQUENCE_TABLE:
            AudioLoad_SetSeqLoadStatus(ASYNC_ID(retMsg), ASYNC_STATUS(retMsg));
            break;
        case SAMPLE_TABLE:
            AudioLoad_SetSampleBankLoadStatusAndApplyCaches(ASYNC_ID(retMsg), ASYNC_STATUS(retMsg));
            break;
        case BANK_TABLE:
            bankId = ASYNC_ID(retMsg);
            sampleBankId1 = gAudioContext.ctlEntries[bankId].sampleBankId1;
            sampleBankId2 = gAudioContext.ctlEntries[bankId].sampleBankId2;
            relocInfo.sampleBankId1 = sampleBankId1;
            relocInfo.sampleBankId2 = sampleBankId2;
            relocInfo.baseAddr1 = sampleBankId1 != 0xFF ? AudioLoad_GetSampleBank(sampleBankId1, &relocInfo.medium1) : 0;
            relocInfo.baseAddr2 = sampleBankId2 != 0xFF ? AudioLoad_GetSampleBank(sampleBankId2, &relocInfo.medium2) : 0;
            AudioLoad_SetBankLoadStatus(bankId, ASYNC_STATUS(retMsg));
            AudioLoad_RelocateBankAndPreloadSamples(bankId, asyncLoad->ramAddr2, &relocInfo, true);
            break;
    }

    doneMsg = asyncLoad->retMsg;
    if (1) {}
    asyncLoad->status = LOAD_STATUS_WAITING;
    osSendMesg(asyncLoad->retQueue, doneMsg, OS_MESG_NOBLOCK);
}

void AudioLoad_ProcessAsyncLoad(AudioAsyncLoad* asyncLoad, s32 resetStatus) {
    AudioTable* sampleBankTable = gAudioContext.sampleBankTable;

    if (asyncLoad->delay >= 2) {
        asyncLoad->delay--;
        return;
    }

    if (asyncLoad->delay == 1) {
        asyncLoad->delay = 0;
    } else if (resetStatus != 0) {
        // Await the previous DMA response synchronously, then return.
        osRecvMesg(&asyncLoad->msgQueue, NULL, OS_MESG_BLOCK);
        asyncLoad->status = LOAD_STATUS_WAITING;
        return;
    } else if (osRecvMesg(&asyncLoad->msgQueue, NULL, OS_MESG_NOBLOCK) == -1) {
        // If the previous DMA step isn't done, return.
        return;
    }

    if (asyncLoad->bytesRemaining == 0) {
        AudioLoad_FinishAsyncLoad(asyncLoad);
        return;
    }

    if (asyncLoad->bytesRemaining < asyncLoad->chunkSize) {
        if (asyncLoad->medium == MEDIUM_UNK) {
            AudioLoad_AsyncDmaUnkMedium(asyncLoad->devAddr, asyncLoad->ramAddr, asyncLoad->bytesRemaining, sampleBankTable->unkMediumThing);
        } else {
            AudioLoad_AsyncDma(asyncLoad, asyncLoad->bytesRemaining);
        }
        asyncLoad->bytesRemaining = 0;
        return;
    }

    if (asyncLoad->medium == MEDIUM_UNK) {
        AudioLoad_AsyncDmaUnkMedium(asyncLoad->devAddr, asyncLoad->ramAddr, asyncLoad->chunkSize, sampleBankTable->unkMediumThing);
    } else {
        AudioLoad_AsyncDma(asyncLoad, asyncLoad->chunkSize);
    }

    asyncLoad->bytesRemaining -= asyncLoad->chunkSize;
    asyncLoad->devAddr += asyncLoad->chunkSize;
    asyncLoad->ramAddr = asyncLoad->ramAddr + asyncLoad->chunkSize;
}

void AudioLoad_AsyncDma(AudioAsyncLoad* asyncLoad, u32 size) {
    size = ALIGN16(size);
    Audio_osInvalDCache(asyncLoad->ramAddr, size);
    osCreateMesgQueue(&asyncLoad->msgQueue, &asyncLoad->msg, 1);
    AudioLoad_Dma(&asyncLoad->ioMesg, 0, 0, asyncLoad->devAddr, asyncLoad->ramAddr, size, &asyncLoad->msgQueue, asyncLoad->medium, "BGCOPY");
}

void AudioLoad_AsyncDmaUnkMedium(u32 devAddr, void* ramAddr, u32 size, s16 arg3) {
}

#define RELOC(v, base) (reloc = (void*)((u32)(v) + (u32)(base)))

void AudioLoad_RelocateSample(AudioBankSound* sound, AudioBankData* mem, RelocInfo* relocInfo) {
    AudioBankSample* sample;
    void* reloc;

    if ((u32)sound->sample <= 0x80000000) {
        sample = sound->sample = RELOC(sound->sample, mem);
        if (sample->size != 0 && sample->unk_bit25 != 1) {
            sample->loop = RELOC(sample->loop, mem);
            sample->book = RELOC(sample->book, mem);
            switch (sample->medium) {
                case 0:
                    sample->sampleAddr = RELOC(sample->sampleAddr, relocInfo->baseAddr1);
                    sample->medium = relocInfo->medium1;
                    break;
                case 1:
                    sample->sampleAddr = RELOC(sample->sampleAddr, relocInfo->baseAddr2);
                    sample->medium = relocInfo->medium2;
                    break;
                case 2:
                case 3:
                    break;
            }

            sample->unk_bit25 = 1;
            if (sample->unk_bit26 && (sample->medium != MEDIUM_RAM)) {
                gAudioContext.usedSamples[gAudioContext.usedSamplesCount++] = sample;
            }
        }
    }
}

#undef RELOC

void AudioLoad_RelocateBankAndPreloadSamples(s32 bankId, AudioBankData* mem, RelocInfo* relocInfo, s32 async) {
    AudioPreloadReq* preload;
    AudioPreloadReq* topPreload;
    AudioBankSample* sample;
    s32 size;
    s32 nChunks;
    u8* addr;
    s32 preloadInProgress;
    s32 i;

    preloadInProgress = false;
    if (gAudioContext.preloadSampleStackTop != 0) {
        preloadInProgress = true;
    } else {
        D_8016B780 = 0;
    }

    gAudioContext.usedSamplesCount = 0;
    AudioLoad_RelocateBank(bankId, mem, relocInfo);

    size = 0;
    for (i = 0; i < gAudioContext.usedSamplesCount; i++) {
        size += ALIGN16(gAudioContext.usedSamples[i]->size);
    }
    if (size && size) {}

    for (i = 0; i < gAudioContext.usedSamplesCount; i++) {
        if (gAudioContext.preloadSampleStackTop == 120) {
            break;
        }

        sample = gAudioContext.usedSamples[i];
        addr = NULL;
        switch (async) {
            case false:
                // Load into persistent pool
                if (sample->medium == relocInfo->medium1) {
                    addr = AudioHeap_AllocSampleCache(sample->size, relocInfo->sampleBankId1, sample->sampleAddr,
                                                      sample->medium, true);
                } else if (sample->medium == relocInfo->medium2) {
                    addr = AudioHeap_AllocSampleCache(sample->size, relocInfo->sampleBankId2, sample->sampleAddr,
                                                      sample->medium, true);
                } else if (sample->medium == MEDIUM_DISK_DRIVE) {
                    addr = AudioHeap_AllocSampleCache(sample->size, 0xFE, sample->sampleAddr, sample->medium, true);
                }
                break;

            case true:
                // Load into temporary pool
                if (sample->medium == relocInfo->medium1) {
                    addr = AudioHeap_AllocSampleCache(sample->size, relocInfo->sampleBankId1, sample->sampleAddr,
                                                      sample->medium, false);
                } else if (sample->medium == relocInfo->medium2) {
                    addr = AudioHeap_AllocSampleCache(sample->size, relocInfo->sampleBankId2, sample->sampleAddr,
                                                      sample->medium, false);
                } else if (sample->medium == MEDIUM_DISK_DRIVE) {
                    addr = AudioHeap_AllocSampleCache(sample->size, 0xFE, sample->sampleAddr, sample->medium, false);
                }
                break;
        }
        if (addr == NULL) {
            continue;
        }

        switch (async) {
            case false:
                if (sample->medium == MEDIUM_UNK) {
                    AudioLoad_SyncDmaUnkMedium((u32)sample->sampleAddr, addr, sample->size,
                                          gAudioContext.sampleBankTable->unkMediumThing);
                    sample->sampleAddr = addr;
                    sample->medium = MEDIUM_RAM;
                } else {
                    AudioLoad_SyncDma((u32)sample->sampleAddr, addr, sample->size, sample->medium);
                    sample->sampleAddr = addr;
                    sample->medium = MEDIUM_RAM;
                }
                if (sample->medium == MEDIUM_DISK_DRIVE) {}
                break;

            case true:
                preload = &gAudioContext.preloadSampleStack[gAudioContext.preloadSampleStackTop];
                preload->sample = sample;
                preload->ramAddr = addr;
                preload->encodedInfo = (gAudioContext.preloadSampleStackTop << 24) | 0xFFFFFF;
                preload->isFree = false;
                preload->endAndMediumKey = (u32)sample->sampleAddr + sample->size + sample->medium;
                gAudioContext.preloadSampleStackTop++;
                break;
        }
    }
    gAudioContext.usedSamplesCount = 0;

    if (gAudioContext.preloadSampleStackTop != 0 && !preloadInProgress) {
        topPreload = &gAudioContext.preloadSampleStack[gAudioContext.preloadSampleStackTop - 1];
        sample = topPreload->sample;
        nChunks = (sample->size >> 12) + 1;
        AudioLoad_StartAsyncLoad((u32)sample->sampleAddr, topPreload->ramAddr, sample->size, sample->medium, nChunks,
                           &gAudioContext.preloadSampleQueue, topPreload->encodedInfo);
    }
}

s32 AudioLoad_ProcessSamplePreloads(s32 resetStatus) {
    AudioBankSample* sample;
    AudioPreloadReq* preload;
    u32 preloadIndex;
    u32 key;
    u32 nChunks;
    s32 pad;

    if (gAudioContext.preloadSampleStackTop > 0) {
        if (resetStatus != 0) {
            // Clear result queue and preload stack and return.
            osRecvMesg(&gAudioContext.preloadSampleQueue, (OSMesg*)&preloadIndex, OS_MESG_NOBLOCK);
            gAudioContext.preloadSampleStackTop = 0;
            return 0;
        }
        if (osRecvMesg(&gAudioContext.preloadSampleQueue, (OSMesg*)&preloadIndex, OS_MESG_NOBLOCK) == -1) {
            // Previous preload is not done yet.
            return 0;
        }

        preloadIndex >>= 24;
        preload = &gAudioContext.preloadSampleStack[preloadIndex];

        if (preload->isFree == false) {
            sample = preload->sample;
            key = (u32)sample->sampleAddr + sample->size + sample->medium;
            if (key == preload->endAndMediumKey) {
                // Change storage for sample to the preloaded version.
                sample->sampleAddr = preload->ramAddr;
                sample->medium = MEDIUM_RAM;
            }
            preload->isFree = true;
        }

        // Pop requests with isFree = true off the stack, as far as possible,
        // and dispatch the next DMA.
        for (;;) {
            if (gAudioContext.preloadSampleStackTop <= 0) {
                break;
            }
            preload = &gAudioContext.preloadSampleStack[gAudioContext.preloadSampleStackTop - 1];
            if (preload->isFree == true) {
                gAudioContext.preloadSampleStackTop--;
                continue;
            }

            sample = preload->sample;
            nChunks = (sample->size >> 12) + 1;
            key = (u32)sample->sampleAddr + sample->size + sample->medium;
            if (key != preload->endAndMediumKey) {
                preload->isFree = true;
                gAudioContext.preloadSampleStackTop--;
            } else {
                AudioLoad_StartAsyncLoad((u32)sample->sampleAddr, preload->ramAddr, sample->size, sample->medium, nChunks,
                                   &gAudioContext.preloadSampleQueue, preload->encodedInfo);
                break;
            }
        }
    }
    return 1;
}

s32 AudioLoad_AddToSampleSet(AudioBankSample* sample, s32 sampleCnt, AudioBankSample** sampleSet) {
    s32 i;

    for (i = 0; i < sampleCnt; i++) {
        if (sample->sampleAddr == sampleSet[i]->sampleAddr) {
            break;
        }
    }

    if (i == sampleCnt) {
        sampleSet[sampleCnt] = sample;
        sampleCnt++;
    }

    return sampleCnt;
}

s32 AudioLoad_GetSamplesForBank(s32 bankId, AudioBankSample** sampleSet) {
    s32 i;
    s32 drumCnt;
    s32 instrumentCnt;
    s32 sampleCnt = 0;

    drumCnt = gAudioContext.ctlEntries[bankId].numDrums;
    instrumentCnt = gAudioContext.ctlEntries[bankId].numInstruments;

    for (i = 0; i < drumCnt; i++) {
        Drum* drum = Audio_GetDrum(bankId, i);
        if (1) {}
        if (drum != NULL) {
            sampleCnt = AudioLoad_AddToSampleSet(drum->sound.sample, sampleCnt, sampleSet);
        }
    }

    for (i = 0; i < instrumentCnt; i++) {
        Instrument* instrument = Audio_GetInstrumentInner(bankId, i);
        if (instrument != NULL) {
            if (instrument->normalRangeLo != 0) {
                sampleCnt = AudioLoad_AddToSampleSet(instrument->lowNotesSound.sample, sampleCnt, sampleSet);
            }
            if (instrument->normalRangeHi != 0x7F) {
                sampleCnt = AudioLoad_AddToSampleSet(instrument->highNotesSound.sample, sampleCnt, sampleSet);
            }
            sampleCnt = AudioLoad_AddToSampleSet(instrument->normalNotesSound.sample, sampleCnt, sampleSet);
        }
    }

    // Should really also process sfx, but this method is never called, so whatever.
    return sampleCnt;
}

void AudioLoad_AddUsedSample(AudioBankSound* sound) {
    AudioBankSample* sample = sound->sample;

    if ((sample->size != 0) && (sample->unk_bit26) && (sample->medium != MEDIUM_RAM)) {
        gAudioContext.usedSamples[gAudioContext.usedSamplesCount++] = sample;
    }
}

void AudioLoad_PreloadSamplesForBank(s32 bankId, s32 async, RelocInfo* relocInfo) {
    s32 numDrums;
    s32 numInstruments;
    s32 numSfx;
    Drum* drum;
    Instrument* instrument;
    AudioBankSound* sound;
    AudioPreloadReq* preload;
    AudioPreloadReq* topPreload;
    u8* addr;
    s32 size;
    s32 i;
    AudioBankSample* sample;
    s32 preloadInProgress;
    s32 nChunks;

    preloadInProgress = false;
    if (gAudioContext.preloadSampleStackTop != 0) {
        preloadInProgress = true;
    }

    gAudioContext.usedSamplesCount = 0;

    numDrums = gAudioContext.ctlEntries[bankId].numDrums;
    numInstruments = gAudioContext.ctlEntries[bankId].numInstruments;
    numSfx = gAudioContext.ctlEntries[bankId].numSfx;

    for (i = 0; i < numInstruments; i++) {
        instrument = Audio_GetInstrumentInner(bankId, i);
        if (instrument != NULL) {
            if (instrument->normalRangeLo != 0) {
                AudioLoad_AddUsedSample(&instrument->lowNotesSound);
            }
            if (instrument->normalRangeHi != 0x7F) {
                AudioLoad_AddUsedSample(&instrument->highNotesSound);
            }
            AudioLoad_AddUsedSample(&instrument->normalNotesSound);
        }
    }

    for (i = 0; i < numDrums; i++) {
        drum = Audio_GetDrum(bankId, i);
        if (drum != NULL) {
            AudioLoad_AddUsedSample(&drum->sound);
        }
    }

    for (i = 0; i < numSfx; i++) {
        sound = Audio_GetSfx(bankId, i);
        if (sound != NULL) {
            AudioLoad_AddUsedSample(sound);
        }
    }

    if (gAudioContext.usedSamplesCount == 0) {
        return;
    }

    size = 0;
    for (i = 0; i < gAudioContext.usedSamplesCount; i++) {
        size += ALIGN16(gAudioContext.usedSamples[i]->size);
    }
    if (size) {}

    for (i = 0; i < gAudioContext.usedSamplesCount; i++) {
        if (gAudioContext.preloadSampleStackTop == 120) {
            break;
        }

        sample = gAudioContext.usedSamples[i];
        if (sample->medium == MEDIUM_RAM) {
            continue;
        }

        switch (async) {
            case false:
                // Load into persistent pool
                if (sample->medium == relocInfo->medium1) {
                    addr = AudioHeap_AllocSampleCache(sample->size, relocInfo->sampleBankId1, sample->sampleAddr,
                                                      sample->medium, true);
                } else if (sample->medium == relocInfo->medium2) {
                    addr = AudioHeap_AllocSampleCache(sample->size, relocInfo->sampleBankId2, sample->sampleAddr,
                                                      sample->medium, true);
                }
                break;

            case true:
                // Load into temporary pool
                if (sample->medium == relocInfo->medium1) {
                    addr = AudioHeap_AllocSampleCache(sample->size, relocInfo->sampleBankId1, sample->sampleAddr,
                                                      sample->medium, false);
                } else if (sample->medium == relocInfo->medium2) {
                    addr = AudioHeap_AllocSampleCache(sample->size, relocInfo->sampleBankId2, sample->sampleAddr,
                                                      sample->medium, false);
                }
                break;
        }
        if (addr == NULL) {
            continue;
        }

        switch (async) {
            case false:
                if (sample->medium == MEDIUM_UNK) {
                    AudioLoad_SyncDmaUnkMedium((u32)sample->sampleAddr, addr, sample->size,
                                          gAudioContext.sampleBankTable->unkMediumThing);
                    sample->sampleAddr = addr;
                    sample->medium = MEDIUM_RAM;
                } else {
                    AudioLoad_SyncDma((u32)sample->sampleAddr, addr, sample->size, sample->medium);
                    sample->sampleAddr = addr;
                    sample->medium = MEDIUM_RAM;
                }
                break;

            case true:
                preload = &gAudioContext.preloadSampleStack[gAudioContext.preloadSampleStackTop];
                preload->sample = sample;
                preload->ramAddr = addr;
                preload->encodedInfo = (gAudioContext.preloadSampleStackTop << 24) | 0xFFFFFF;
                preload->isFree = false;
                preload->endAndMediumKey = (u32)sample->sampleAddr + sample->size + sample->medium;
                gAudioContext.preloadSampleStackTop++;
                break;
        }
    }
    gAudioContext.usedSamplesCount = 0;

    if (gAudioContext.preloadSampleStackTop != 0 && !preloadInProgress) {
        topPreload = &gAudioContext.preloadSampleStack[gAudioContext.preloadSampleStackTop - 1];
        sample = topPreload->sample;
        nChunks = (sample->size >> 12) + 1;
        AudioLoad_StartAsyncLoad((u32)sample->sampleAddr, topPreload->ramAddr, sample->size, sample->medium, nChunks,
                           &gAudioContext.preloadSampleQueue, topPreload->encodedInfo);
    }
}

void AudioLoad_LoadPermanentSamples(void) {
    s32 pad;
    u32 bankId;
    AudioTable* sampleBankTable;
    s32 pad2;
    s32 i;

    sampleBankTable = AudioLoad_GetLoadTable(SAMPLE_TABLE);
    for (i = 0; i < gAudioContext.permanentPool.count; i++) {
        RelocInfo relocInfo;
        if (gAudioContext.permanentCache[i].tableType == BANK_TABLE) {
            bankId = AudioLoad_GetRealTableIndex(BANK_TABLE, gAudioContext.permanentCache[i].id);
            relocInfo.sampleBankId1 = gAudioContext.ctlEntries[bankId].sampleBankId1;
            relocInfo.sampleBankId2 = gAudioContext.ctlEntries[bankId].sampleBankId2;

            if (relocInfo.sampleBankId1 != 0xFF) {
                relocInfo.sampleBankId1 = AudioLoad_GetRealTableIndex(SAMPLE_TABLE, relocInfo.sampleBankId1);
                relocInfo.medium1 = sampleBankTable->entries[relocInfo.sampleBankId1].medium;
            }

            if (relocInfo.sampleBankId2 != 0xFF) {
                relocInfo.sampleBankId2 = AudioLoad_GetRealTableIndex(SAMPLE_TABLE, relocInfo.sampleBankId2);
                relocInfo.medium2 = sampleBankTable->entries[relocInfo.sampleBankId2].medium;
            }
            AudioLoad_PreloadSamplesForBank(bankId, false, &relocInfo);
        }
    }
}

void AudioLoad_Unused3(void) {
}

void AudioLoad_Unused4(void) {
}

void AudioLoad_Unused5(void) {
}

void AudioLoad_ScriptLoad(s32 tableType, s32 id, s8* isDone) {
    static u32 sLoadIndex = 0;
    sScriptLoadDonePointers[sLoadIndex] = isDone;
    AudioLoad_AsyncLoad(tableType, id, 0, sLoadIndex, &sScriptLoadQueue);
    sLoadIndex++;
    if (sLoadIndex == 0x10) {
        sLoadIndex = 0;
    }
}

void AudioLoad_ProcessScriptLoads(void) {
    u32 temp;
    u32 sp20;
    s8* isDone;

    if (osRecvMesg(&sScriptLoadQueue, (OSMesg*)&sp20, OS_MESG_NOBLOCK) != -1) {
        temp = sp20 >> 24;
        isDone = sScriptLoadDonePointers[temp];
        if (isDone != NULL) {
            *isDone = 0;
        }
    }
}

void AudioLoad_InitScriptLoads(void) {
    osCreateMesgQueue(&sScriptLoadQueue, sScriptLoadMesgBuf, 0x10);
}
