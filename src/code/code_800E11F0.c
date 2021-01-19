#include "ultra64.h"
#include "global.h"

/* forward declarations */
s32 func_800E217C(s32 playerIdx, s32, s32);
unk_ldr* func_800E2454(u32 arg0);
AudioBankSample* func_800E35E0(s32 bankId, s32 sfxId);
void func_800E3BEC(s32 arg0);
void func_800E3D10(u32 arg0, s32 arg1);
void func_800E3E58(AsyncLoadReq* arg0, s32 arg1);
void func_800E4198(s32, unk_ldr*, unk_4C*, s32);
void func_800E4058(AudioBankSound* sound, u32, unk_4C*);
void func_800E202C(s32 arg0);
u32 func_800E2338(u32 arg0, u32* arg1, s32 arg2);
u8* func_800E2558(u32 tableType, u32 bankId, s32* didAllocate);
u32 func_800E2768(s32 tableType, u32 tableIdx);
void* func_800E27A4(s32 tableType, s32 id);
void* func_800E27F8(s32 tableType);
void func_800E2AA8(u32 devAddr, u8* addr, u32 size, s32 handleType);
void func_800E2BCC(u32 devAddr, u8* addr, u32 size, s32 handleType);
s32 func_800E2BE0(OSIoMesg* mesg, u32 priority, s32 direction, u32 devAddr, void* ramAddr, u32 size,
                  OSMesgQueue* reqQueue, s32 handleType, const char* dmaFuncType);
void* func_800E2CE0(s32 tableType, s32 arg1, s32 arg2, s32 arg3, OSMesgQueue* retQueue);
AsyncLoadReq* func_800E3A44(s32 arg0, s32 devAddr, void* ramAddr, s32 size, s32 arg4, s32 nChunks,
                            OSMesgQueue* retQueue, s32 retMsg);
AsyncLoadReq* func_800E3AC8(s32 devAddr, void* ramAddr, s32 size, s32 arg3, s32 nChunks, OSMesgQueue* retQueue,
                            s32 retMsg);
void func_800E3FB4(AsyncLoadReq* req, u32 size);
void func_800E4044(u32 devAddr, void* ramAddr, u32 size, s16 arg3);
u8* func_800E22C4(s32 seqId);
s32 func_800E4590(s32 resetStatus);
void func_800E3874(unk_1D50_s* arg0, s32 size);
void func_800E36EC(s32 resetStatus);
void func_800E38F8(s32 arg0, s32 arg1, s32 arg2, s32 arg3);

OSMesgQueue D_8016B6E0;
u8 D_8016B6F8[0x40];
u8* D_8016B738[0x12];
u32 D_8016B780[8];

void func_800E11F0(void) {
    s32 i;

    for (i = 0; i < gAudioContext.unk_2624; i++) {
        SampleDmaReq* req = &gAudioContext.sampleDmaReqs[i];
        if (req->unk_0E != 0) {
            req->unk_0E--;
            if ((req->unk_0E) == 0) {
                req->unk_0D = gAudioContext.unk_282E;
                gAudioContext.unk_262C[gAudioContext.unk_282E] = i;
                gAudioContext.unk_282E++;
            }
        }
    }

    for (i = gAudioContext.unk_2624; i < gAudioContext.sampleDmaReqCnt; i++) {
        SampleDmaReq* req = &gAudioContext.sampleDmaReqs[i];
        if (req->unk_0E != 0) {
            req->unk_0E--;
            if (req->unk_0E == 0) {
                req->unk_0D = gAudioContext.unk_282F;
                gAudioContext.unk_272C[gAudioContext.unk_282F] = i;
                gAudioContext.unk_282F++;
            }
        }
    }

    gAudioContext.unk_2628 = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E12DC.s")

#ifdef NON_MATCHING
void func_800E1618(s32 arg0) {
    SampleDmaReq* temp_s0;
    s32 i;
    s32 t2;

    gAudioContext.unk_288C = gAudioContext.unk_2874;
    gAudioContext.sampleDmaReqs =
        Audio_Alloc(&gAudioContext.gNotesAndBuffersPool,
                    (gAudioContext.gMaxSimultaneousNotes * 0x40) * gAudioContext.gAudioBufferParameters.presetUnk4);
    t2 = gAudioContext.gMaxSimultaneousNotes * 3 * gAudioContext.gAudioBufferParameters.presetUnk4;
    for (i = 0; i < t2; i++) {
        SampleDmaReq* temp_s0 = &gAudioContext.sampleDmaReqs[gAudioContext.sampleDmaReqCnt];
        temp_s0->ramAddr = func_800DE2B0(&gAudioContext.gNotesAndBuffersPool, gAudioContext.unk_288C);
        if (temp_s0->ramAddr == NULL) {
            break;
        } else {
            func_800DE238(temp_s0->ramAddr, gAudioContext.unk_288C);
            temp_s0->size = gAudioContext.unk_288C;
            temp_s0->devAddr = 0;
            temp_s0->unk_08 = 0;
            temp_s0->unk_0C = 0;
            temp_s0->unk_0E = 0;
            gAudioContext.sampleDmaReqCnt++;
        }
    }

    for (i = 0; i < gAudioContext.sampleDmaReqCnt; i++) {
        gAudioContext.unk_262C[i] = i;
        gAudioContext.sampleDmaReqs[i].unk_0D = i;
    }

    for (i = gAudioContext.sampleDmaReqCnt; i < 0x100; i++) {
        gAudioContext.unk_262C[i] = 0;
    }

    gAudioContext.unk_282C = 0;
    gAudioContext.unk_282E = gAudioContext.sampleDmaReqCnt;
    gAudioContext.unk_2624 = gAudioContext.sampleDmaReqCnt;
    gAudioContext.unk_288C = gAudioContext.unk_2878;

    for (i = 0; i < gAudioContext.gMaxSimultaneousNotes; i++) {
        SampleDmaReq* temp_s0 = &gAudioContext.sampleDmaReqs[gAudioContext.sampleDmaReqCnt];
        temp_s0->ramAddr = func_800DE2B0(&gAudioContext.gNotesAndBuffersPool, gAudioContext.unk_288C);
        if (temp_s0->ramAddr == NULL) {
            break;
        } else {
            func_800DE238(temp_s0->ramAddr, gAudioContext.unk_288C);
            temp_s0->size = gAudioContext.unk_288C;
            temp_s0->devAddr = 0U;
            temp_s0->unk_08 = 0;
            temp_s0->unk_0C = 0;
            temp_s0->unk_0E = 0;
            gAudioContext.sampleDmaReqCnt++;
        }
    }

    for (i = gAudioContext.unk_2624; i < gAudioContext.sampleDmaReqCnt; i++) {
        SampleDmaReq* temp_s0 = &gAudioContext.sampleDmaReqs[i + gAudioContext.unk_2624];
        gAudioContext.unk_272C[i - gAudioContext.unk_2624] = gAudioContext.unk_2624;
        temp_s0->unk_0D = i - gAudioContext.unk_2624;
    }

    for (i = gAudioContext.sampleDmaReqCnt; i < 0x100; i++) {
        gAudioContext.unk_272C[i] = gAudioContext.unk_2624;
    }

    gAudioContext.unk_282D = 0;
    gAudioContext.unk_282F = gAudioContext.sampleDmaReqCnt - gAudioContext.unk_2624;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E1618.s")
#endif

s32 Audio_IsBankLoadComplete(s32 bankId) {
    if (bankId == 0xFF) {
        return true;
    } else if (gAudioContext.gBankLoadStatus[bankId] >= 2) {
        return true;
    } else if (gAudioContext.gBankLoadStatus[func_800E2768(1, bankId)] >= 2) {
        return true;
    } else {
        return false;
    }
}

s32 Audio_IsSeqLoadComplete(s32 seqId) {
    if (seqId == 0xFF) {
        return 1;
    } else if (gAudioContext.gSeqLoadStatus[seqId] >= 2) {
        return 1;
    } else if (gAudioContext.gSeqLoadStatus[func_800E2768(0, seqId)] >= 2) {
        return true;
    } else {
        return false;
    }
}

// unused
s32 func_800E19A0(s32 arg0) {
    if (arg0 == 0xFF) {
        return true;
    } else if (gAudioContext.gUnusedLoadStatus[arg0] >= 2) {
        return true;
    } else if (gAudioContext.gUnusedLoadStatus[func_800E2768(2, arg0)] >= 2) {
        return true;
    } else {
        return false;
    }
}

void Audio_SetBankLoadStatus(s32 bankId, s32 status) {
    if ((bankId != 0xFF) && (gAudioContext.gBankLoadStatus[bankId] != 5)) {
        gAudioContext.gBankLoadStatus[bankId] = status;
    }
}

void Audio_SetSeqLoadStatus(s32 seqId, s32 status) {
    if ((seqId != 0xFF) && (gAudioContext.gSeqLoadStatus[seqId] != 5)) {
        gAudioContext.gSeqLoadStatus[seqId] = status;
    }
}

void func_800E1A78(s32 arg0, s32 arg1) {
    if (arg0 != 0xFF) {
        if (gAudioContext.gUnusedLoadStatus[arg0] != 5) {
            gAudioContext.gUnusedLoadStatus[arg0] = arg1;
        }

        if ((gAudioContext.gUnusedLoadStatus[arg0] == 5) || (gAudioContext.gUnusedLoadStatus[arg0] == 2)) {
            func_800E0E90(arg0);
        }
    }
}

void func_800E1AD8(s32 arg0, s32 arg1) {
    if ((arg0 != 0xFF) && (gAudioContext.gUnusedLoadStatus[arg0] != 5)) {
        gAudioContext.gUnusedLoadStatus[arg0] = arg1;
    }
}

// InitTable
void func_800E1B08(AudioTable* table, u32 romAddr, u16 arg2) {
    s32 i;

    table->header.unk_02 = arg2;
    table->header.romAddr = romAddr;

    for (i = 0; i < table->header.entryCnt; i++) {
        if ((table->entries[i].size != 0) && (table->entries[i].unk_08 == 2)) {
            table->entries[i].romAddr += romAddr;
        }
    }
}

unk_ldr* func_800E1B68(s32 arg0, u32* arg1) {
    char pad[0x8];
    s32 phi_s0;
    unk_ldr* sp28;
    s32 phi_s1;
    s32 phi_s2;
    s32 i;

    if (arg0 >= gAudioContext.unk_2840) {
        return 0;
    }

    phi_s2 = 0xFF;
    phi_s0 = gAudioContext.unk_283C[arg0]; // ofset into unk_283C for cnt?
    phi_s1 = *(phi_s0 + gAudioContext.unk_283Cb);
    phi_s0++;

    while (phi_s1 > 0) {
        phi_s2 = gAudioContext.unk_283Cb[phi_s0++];
        sp28 = func_800E2454(phi_s2);
        phi_s1--;
    }

    *arg1 = phi_s2;
    return sp28;
}

void func_800E1C18(s32 channelIdx, s32 arg1) {
    s32 pad;
    u32 sp18;

    if (channelIdx < gAudioContext.unk_2840) {
        if (arg1 & 2) {
            func_800E1B68(channelIdx, &sp18);
        }
        if (arg1 & 1) {
            func_800E22C4(channelIdx);
        }
    }
}

s32 func_800E1C78(AudioBankSample* sample, s32 arg1) {
    void* sampleAddr;

    if (sample->unk_bits25 == 1) {
        if (sample->bits2 != 0) {
            sampleAddr = func_800E05C4(sample->bits24, arg1, (void*)sample->sampleAddr, sample->bits2, 1);
            if (sampleAddr == NULL) {
                return -1;
            }

            if (sample->bits2 == 1) {
                func_800E2BCC(sample->sampleAddr, sampleAddr, sample->bits24, gAudioContext.audioTable->header.unk_02);
            } else {
                func_800E2AA8(sample->sampleAddr, sampleAddr, sample->bits24, sample->bits2);
            }
            sample->bits2 = 0;
            sample->sampleAddr = sampleAddr;
        }
    }
}

s32 func_800E1D64(s32 arg0, s32 arg1, s32 arg2) {
    if (arg1 < 0x7F) {
        Instrument* instrument = Audio_GetInstrumentInner(arg0, arg1);

        if (instrument == NULL) {
            return -1;
        }
        if (instrument->normalRangeLo != 0) {
            func_800E1C78(instrument->lowNotesSound.sample, arg0);
        }
        func_800E1C78(instrument->normalNotesSound.sample, arg0);
        if (instrument->normalRangeHi != 0x7F) {
            func_800E1C78(instrument->highNotesSound.sample, arg0);
            return;
        }
    } else if (arg1 == 0x7F) {
        Drum* drum = Audio_GetDrum(arg0, arg2);

        if (drum == 0) {
            return -1;
        }
        func_800E1C78(drum->sound.sample, arg0);
        return 0;
    }
}

void func_800E1E34(s32 arg0, s32 arg1, s32 arg2, s32 arg3, OSMesgQueue* arg4) {
    if (func_800E2CE0(arg0, arg1, arg2, arg3, arg4) == NULL) {
        osSendMesg(arg4, -1, OS_MESG_NOBLOCK);
    }
}

// AudioSeqAsyncLoad
void func_800E1E6C(s32 arg0, s32 arg1, s32 arg2, OSMesgQueue* arg3) {
    func_800E1E34(SEQUENCE_TABLE, arg0, 0, arg2, arg3);
}

// AudioTableAsyncLoad
void func_800E1EB0(s32 arg0, s32 arg1, s32 arg2, OSMesgQueue* arg3) {
    func_800E1E34(AUDIO_TABLE, arg0, 0, arg2, arg3);
}

// AudioBankASyncLoad
void func_800E1EF4(s32 arg0, s32 arg1, s32 arg2, OSMesgQueue* arg3) {
    func_800E1E34(BANK_TABLE, arg0, 0, arg2, arg3);
}

u8* func_800E1F38(s32 arg0, u32* arg1) {
    s32 temp_v1;

    temp_v1 = gAudioContext.unk_283C[arg0];

    *arg1 = *(temp_v1 + gAudioContext.unk_283Cb);
    temp_v1++;
    if (*arg1 == 0) {
        return NULL;
    }
    return &gAudioContext.unk_283Cb[temp_v1];
}

void func_800E1F7C(s32 arg0) {
    s32 temp_s0;
    s32 phi_s1;
    s32 phi_s2;

    phi_s1 = gAudioContext.unk_283C[arg0];
    phi_s2 = *(phi_s1 + gAudioContext.unk_283Cb);
    phi_s1++;

    while (phi_s2 > 0) {
        phi_s2--;
        temp_s0 = func_800E2768(1, gAudioContext.unk_283Cb[phi_s1++]);
        if (func_800E04E8(1, temp_s0) == NULL) {
            func_800E202C(temp_s0);
            Audio_SetBankLoadStatus(temp_s0, 0);
        }
    }
}

void func_800E202C(s32 arg0) {
    s32 i;
    SoundMultiPool* pool = &gAudioContext.gBankLoadedPool;
    PersistentPool* persistent;

    if (arg0 == pool->temporary.entries[0].id) {
        pool->temporary.entries[0].id = -1;
    } else if (arg0 == pool->temporary.entries[1].id) {
        pool->temporary.entries[1].id = -1;
    }

    persistent = &pool->persistent;
    for (i = 0; i < persistent->numEntries; i++) {
        if (arg0 == persistent->entries[i].id) {
            persistent->entries[i].id = -1;
        }
    }

    Audio_DiscardBank(arg0);
}

s32 func_800E20D4(s32 playerIdx, s32 seqId, s32 arg2) {
    if (gAudioContext.unk_2984 != 0) {
        return 0;
    } else {
        gAudioContext.gSequencePlayers[playerIdx].unk_DC = 0;
        return func_800E217C(playerIdx, seqId, arg2);
    }
}

s32 func_800E2124(s32 playerIdx, s32 seqId, s32 arg2) {
    if (gAudioContext.unk_2984 != 0) {
        return 0;
    }

    gAudioContext.gSequencePlayers[playerIdx].unk_DC = arg2;
    return func_800E217C(playerIdx, seqId, 0);
}

// InitSeqPlayer
s32 func_800E217C(s32 playerIdx, s32 seqId, s32 arg2) {
    SequencePlayer* seqPlayer = &gAudioContext.gSequencePlayers[playerIdx];
    u8* seqData;
    s32 phi_s0;
    s32 phi_s1;
    s32 phi_s2;

    if (seqId >= gAudioContext.unk_2840) {
        return 0;
    }

    Audio_SequencePlayerDisable(seqPlayer);

    phi_s2 = 0xFF;
    phi_s0 = gAudioContext.unk_283C[seqId];
    phi_s1 = gAudioContext.unk_283Cb[phi_s0++];

    while (phi_s1 > 0) {
        phi_s2 = gAudioContext.unk_283Cb[phi_s0++];
        func_800E2454(phi_s2);
        phi_s1--;
    }

    seqData = func_800E22C4(seqId);
    if (seqData == NULL) {
        return 0;
    }

    Audio_ResetSequencePlayer(seqPlayer);
    seqPlayer->seqId = seqId;
    seqPlayer->defaultBank = func_800E2768(1, phi_s2);
    seqPlayer->seqData = seqData;
    seqPlayer->enabled = 1;
    seqPlayer->scriptState.pc = seqData;
    seqPlayer->scriptState.depth = 0;
    seqPlayer->delay = 0;
    seqPlayer->finished = 0;
    seqPlayer->seqVariationEu[0] = playerIdx;
    Audio_ProcessSequence(seqPlayer);
}

// LoadSequence
u8* func_800E22C4(s32 seqId) {
    s32 pad;
    s32 sp20;

    if (gAudioContext.gSeqLoadStatus[func_800E2768(0, seqId)] == 1) {
        return NULL;
    }

    return func_800E2558(0, seqId, &sp20);
}

u32 func_800E2318(u32 arg0, u32* arg1) {
    return func_800E2338(arg0, arg1, 1);
}

u32 func_800E2338(u32 arg0, u32* arg1, s32 arg2) {
    void* temp_v0;
    AudioTable* audioTable;
    u32 temp_s0;
    s8 tmp;

    temp_s0 = func_800E2768(2, arg0);
    audioTable = func_800E27F8(2);
    if (temp_v0 = func_800E27A4(2, temp_s0), temp_v0 != NULL) {
        if (gAudioContext.gUnusedLoadStatus[temp_s0] != 1) {
            func_800E1AD8(temp_s0, 2);
        }
        *arg1 = 0;
        return temp_v0;
    } else if (tmp = audioTable->entries[arg0].unk_09, tmp == 4 || arg2 == 1) {
        *arg1 = audioTable->entries[arg0].unk_08;
        return audioTable->entries[temp_s0].romAddr;
    } else if (temp_v0 = func_800E2558(2, arg0, &arg2), temp_v0 != NULL) {
        *arg1 = 0;
        return temp_v0;
    } else {
        *arg1 = audioTable->entries[arg0].unk_08;
        return audioTable->entries[temp_s0].romAddr;
    }
}

#ifdef NON_MATCHING
unk_ldr* func_800E2454(u32 arg0) {
    s32 sp38;
    unk_4C sp20;
    u32 sp1C;
    CtlEntry* temp_v1;
    u8* temp_ret;

    sp1C = func_800E2768(1, arg0);
    if (gAudioContext.gBankLoadStatus[sp1C] == 1) {
        return NULL;
    }
    temp_v1 = &gAudioContext.gCtlEntries[sp1C];
    sp20.unk_00 = temp_v1->unk_02;
    sp20.unk_04 = temp_v1->unk_03;
    if (temp_v1->unk_02 != 0xFF) {
        sp20.unk_08 = func_800E2338(temp_v1->unk_02, &sp20.unk_10, 0);
    } else {
        sp20.unk_08 = 0;
    }

    if (temp_v1->unk_03 != 0xFF) {
        sp20.unk_0C = func_800E2338(temp_v1->unk_03, &sp20.unk_14, 0);
    } else {
        sp20.unk_0C = 0;
    }

    temp_ret = func_800E2558(1, arg0, &sp38);
    if (temp_ret == 0) {
        return NULL;
    }
    if (sp38 == 1) {
        func_800E4198(sp1C, temp_ret, &sp20, 0);
    }
    return temp_ret;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E2454.s")
#endif

u8* func_800E2558(u32 tableType, u32 bankId, s32* didAllocate) {
    u32 size;
    AudioTable* table;
    s32 pad;
    u32 sp40;
    s32 status;
    u32 romAddr;
    s32 sp24;
    u8* ret;
    u32 id;

    id = func_800E2768(tableType, bankId);
    ret = func_800E27A4(tableType, id);
    if (ret != NULL) {
        *didAllocate = false;
        status = 2;
    } else {
        table = func_800E27F8(tableType);
        size = table->entries[id].size;
        size = ALIGN16(size);
        sp40 = table->entries[bankId].unk_08;
        sp24 = table->entries[bankId].unk_09;
        romAddr = table->entries[id].romAddr;
        switch (sp24) {
            case 0:
                ret = func_800E0540(tableType, id, size);
                if (ret == NULL) {
                    return ret;
                }
                break;
            case 1:
                ret = Audio_AllocBankOrSeq(tableType, size, 1, id);
                if (ret == NULL) {
                    return ret;
                }
                break;
            case 2:
                ret = Audio_AllocBankOrSeq(tableType, size, 0, id);
                if (ret == NULL) {
                    return ret;
                }
                break;
            case 3:
            case 4:
                ret = Audio_AllocBankOrSeq(tableType, size, 2, id);
                if (ret == NULL) {
                    return ret;
                }
                break;
        }

        *didAllocate = true;
        if (sp40 == 1) {
            func_800E2BCC(romAddr, ret, size, (s16)table->header.unk_02);
        } else {
            func_800E2AA8(romAddr, ret, size, sp40);
        }

        status = sp24 == 0 ? 5 : 2;
    }

    switch (tableType) {
        case 0:
            Audio_SetSeqLoadStatus(id, status);
            break;
        case 1:
            Audio_SetBankLoadStatus(id, status);
            break;
        case 2:
            func_800E1A78(id, status);
            break;
        default:
            break;
    }

    return ret;
}

// GetTableIdx
u32 func_800E2768(s32 tableType, u32 tableIdx) {
    AudioTable* table = func_800E27F8(tableType);

    if (table->entries[tableIdx].size == 0) {
        tableIdx = table->entries[tableIdx].romAddr;
    }

    return tableIdx;
}

void* func_800E27A4(s32 tableType, s32 id) {
    void* ret;

    ret = func_800E04E8(tableType, id);
    if (ret != NULL) {
        return ret;
    }

    ret = func_800DF074(tableType, 2, id);
    if (ret != NULL) {
        return ret;
    }

    return NULL;
}

// GetLoadTable
void* func_800E27F8(s32 tableType) {
    void* ret;
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
        case AUDIO_TABLE:
            ret = gAudioContext.audioTable;
            break;
    }
    return ret;
}

#ifdef NON_MATCHING
void func_800E283C(s32 arg0, unk_ldr* arg1, unk_4C* arg2) {
    s32 sp54;
    s32 sp50;
    s32 sp44;
    s32 sp3C;
    AudioBankSound** temp_v1_2;
    CtlEntry* temp_v0;
    Drum** temp_v1;
    Instrument** temp_s2_2;
    s32 temp_s1;
    s32 temp_s2;
    s32 temp_v1_3;
    u16 temp_s5;
    u8 temp_a3;
    void* temp_s0;
    void* temp_s0_2;
    void* temp_t0;
    void* temp_v0_2;
    void* temp_v0_3;
    s32 phi_s2;
    s32 phi_v1;
    s32 phi_a3;
    s32 phi_s1;
    Instrument** phi_s2_2;
    s32 i;
    Drum* drumP;
    AudioBankSound* soundP;
    s32 numDrums;
    s32 numSfx;
    u32 numInstruments;

    numDrums = gAudioContext.gCtlEntries[arg0].numDrums;
    numSfx = gAudioContext.gCtlEntries[arg0].numSfx;
    numInstruments = gAudioContext.gCtlEntries[arg0].numInstruments;

    if (arg1->drums != NULL && numDrums != 0) {
        arg1->drums = (u32)arg1 + (u32)arg1->drums;
        for (i = 0; i < numDrums; i++) {
            drumP = arg1->drums[i];
            drumP = (u32)drumP + (u32)arg1;
            if (drumP != NULL) {
                arg1->drums[i] = drumP;
                func_800E4058(&drumP->sound, arg1, arg2);
                drumP->envelope = (u32)arg1 + (u32)drumP->envelope;
                drumP->loaded = 1;
            }
        }
    }

    if (arg1->sfx != NULL & numSfx != 0) {
        arg1->sfx = (u32)arg1 + (u32)arg1->sfx;
        for (i = 0; i < numSfx; i++) {
            soundP = arg1->sfx[i];
            if (soundP != NULL && soundP->sample != NULL) {
                func_800E4058(soundP, arg1, arg2);
            }
        }
    }

    if (numInstruments >= 0x7F) {
        numInstruments = 0x7E;
    }

    if ((numInstruments + 1) >= 2) {
        for (i = 0; i < numInstruments; i++) {
            arg1->instruments[i] = (u32)arg1 + (u32)arg1->instruments[i];
            if (arg1->instruments[i]->loaded == 0) {
                if (arg1->instruments[i]->normalRangeLo != 0) {
                    func_800E4058(&arg1->instruments[i]->lowNotesSound, arg1, arg2);
                }
                func_80034058(&arg1->instruments[i]->normalNotesSound, arg1, arg2);
                if (arg1->instruments[i]->normalRangeHi != 0x7F) {
                    func_800E4058(&arg1->instruments[i]->highNotesSound, arg1, arg2);
                }
                arg1->instruments[i]->loaded = 1;
                arg1->instruments[i]->envelope = (u32)arg1->instruments[i]->envelope + (u32)arg1;
            }
        }
    }

    gAudioContext.gCtlEntries[arg0].drums = arg1->drums;
    gAudioContext.gCtlEntries[arg0].soundEffects = arg1->sfx;
    gAudioContext.gCtlEntries[arg0].instruments = arg1->instruments;
}
#else
void func_800E283C(s32 arg0, unk_ldr* arg1, unk_4C* arg2);
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E283C.s")
#endif

// SyncLoad
void func_800E2AA8(u32 devAddr, u8* addr, u32 size, s32 handleType) {
    OSMesgQueue* msgQueue = &gAudioContext.unk_25E8;
    OSIoMesg* ioMesg = &gAudioContext.unk_2604;
    size = ALIGN16(size);

    func_800E6840(addr, size);

    while (true) {
        if (size < 0x400) {
            break;
        }
        func_800E2BE0(ioMesg, OS_MESG_PRI_HIGH, OS_READ, devAddr, addr, 0x400, msgQueue, handleType, "FastCopy");
        osRecvMesg(msgQueue, NULL, OS_MESG_BLOCK);
        size -= 0x400;
        devAddr += 0x400;
        addr += 0x400;
    }

    if (size != 0) {
        func_800E2BE0(ioMesg, OS_MESG_PRI_HIGH, OS_READ, devAddr, addr, size, msgQueue, handleType, "FastCopy");
        osRecvMesg(msgQueue, NULL, OS_MESG_BLOCK);
    }
}

void func_800E2BCC(u32 devAddr, u8* addr, u32 size, s32 handleType) {
}

s32 (*sDmaHandler)(OSPiHandle* handle, OSIoMesg* mb, s32 direction) = osEPiStartDma;

s32 func_800E2BE0(OSIoMesg* mesg, u32 priority, s32 direction, u32 devAddr, void* ramAddr, u32 size,
                  OSMesgQueue* reqQueue, s32 handleType, const char* dmaFuncType) {
    OSPiHandle* handle;

    if (gAudioContext.unk_2984 > 0x10) {
        return -1;
    }

    switch (handleType) {
        case 2:
            handle = gAudioContext.cartHandle;
            break;
        case 3:
            handle = gAudioContext.unk_1E1C;
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

void func_800E2CB8(void) {
}

void func_800E2CC0(u32 arg0, u32 arg1) {
    s32 sp1C;

    func_800E2558(arg0, arg1, &sp1C);
}

// AsyncLoad
void* func_800E2CE0(s32 tableType, s32 arg1, s32 arg2, s32 arg3, OSMesgQueue* retQueue) {
    u32 sp54;
    AudioTable* sp50;
    void* sp4C;
    s32 sp48;
    s8 temp_a1;
    u32 sp40;
    s32 sp3C;
    u32 temp_v0;
    u32 sp34;

    sp34 = func_800E2768(tableType, arg1);
    switch (tableType) {
        case 0:
            if (gAudioContext.gSeqLoadStatus[sp34] == 1) {
                return NULL;
            }
            break;
        case 1:
            if (gAudioContext.gBankLoadStatus[sp34] == 1) {
                return NULL;
            }
            break;
        case 2:
            if (gAudioContext.gUnusedLoadStatus[sp34] == 1) {
                return NULL;
            }
            break;
    }

    sp4C = func_800E27A4(tableType, sp34);
    if (sp4C != NULL) {
        sp3C = 2;
        osSendMesg(retQueue, arg3 << 0x18, 0);
    } else {
        sp50 = func_800E27F8(tableType);
        sp54 = sp50->entries[sp34].size;
        sp54 = ALIGN16(sp54);
        sp48 = sp50->entries[arg1].unk_08;
        temp_a1 = sp50->entries[arg1].unk_09;
        sp40 = sp50->entries[sp34].romAddr;
        sp3C = 2;
        switch (temp_a1) {
            case 0:
                sp4C = func_800E0540(tableType, sp34, sp54);
                if (sp4C == NULL) {
                    return sp4C;
                }
                sp3C = 5;
                break;
            case 1:
                sp4C = Audio_AllocBankOrSeq(tableType, sp54, 1, sp34);
                if (sp4C == NULL) {
                    return sp4C;
                }
                break;
            case 2:
                sp4C = Audio_AllocBankOrSeq(tableType, sp54, 0, sp34);
                if (sp4C == NULL) {
                    return sp4C;
                }
                break;
            case 3:
            case 4:
                sp4C = Audio_AllocBankOrSeq(tableType, sp54, 2, sp34);
                if (sp4C == NULL) {
                    return sp4C;
                }
                break;
        }

        if (sp48 == 1) {
            func_800E3A44((s16)sp50->header.unk_02, sp40, sp4C, sp54, sp48, arg2, retQueue,
                          (arg3 << 0x18) | (tableType << 0x10) | (arg1 << 8) | sp3C);
        } else {
            func_800E3AC8(sp40, sp4C, sp54, sp48, arg2, retQueue, MK_ASYNC_MSG(arg3, tableType, sp34, sp3C));
        }
        sp3C = 1;
    }

    switch (tableType) {
        case 0:
            Audio_SetSeqLoadStatus(sp34, sp3C);
            break;
        case 1:
            Audio_SetBankLoadStatus(sp34, sp3C);
            break;
        case 2:
            func_800E1A78(sp34, sp3C);
            break;
        default:
            break;
    }

    return sp4C;
}

void func_800E2FEC(s32 resetStatus) {
    func_800E36EC(resetStatus);
    func_800E4590(resetStatus);
    func_800E3BEC(resetStatus);
}

// SetDmaCallback
void func_800E301C(void* callback) {
    sDmaHandler = callback;
}

u32 D_801304D4 = 0;
void func_800E3028(u32 arg0) {
    D_801304D4 = arg0;
}

// InitCtlTable
void func_800E3034(s32 arg0) {
    CtlEntry* ctlEnt = &gAudioContext.gCtlEntries[arg0];
    AudioBankTableEntry* tableEnt = &gAudioContext.audioBankTable->entries[arg0];

    ctlEnt->unk_02 = (tableEnt->unk_0A >> 8) & 0xFF;
    ctlEnt->unk_03 = (tableEnt->unk_0A) & 0xFF;
    ctlEnt->numInstruments = (tableEnt->unk_0C >> 8) & 0xFF;
    ctlEnt->numDrums = tableEnt->unk_0C & 0xFF;
    ctlEnt->numSfx = tableEnt->unk_0E;
}

u32 D_801304D8 = 0;

// AudioContext_Init
void func_800E3094(void* heap, u32 heapSize) {
    char pad[0x48];
    s32 sp24;
    void* temp_v0_3;
    s32 i;
    u64* heapP;
    u8* ctxP;
    s16* u2974p;

    D_801755D0 = NULL;
    gAudioContext.unk_2984 = 0;

    {
        s32 i;
        u8* ctxP = &gAudioContext;
        for (i = sizeof(gAudioContext); i >= 0; i--) {
            *ctxP++ = 0;
        }
    }

    switch (osTvType) {
        case OS_TV_PAL:
            gAudioContext.unk_2960 = 20.03042f;
            gAudioContext.gRefreshRate = 50;
            break;
        case OS_TV_MPAL:
            gAudioContext.unk_2960 = 16.546f;
            gAudioContext.gRefreshRate = 60;
            break;
        case OS_TV_NTSC:
        default:
            gAudioContext.unk_2960 = 16.713f;
            gAudioContext.gRefreshRate = 60;
    }

    func_800E6818();

    for (i = 0; i < 3; i++) {
        gAudioContext.aiBufLengths[i] = 0xA0;
    }

    gAudioContext.totalTaskCnt = 0;
    gAudioContext.rspTaskIdx = 0;
    gAudioContext.curAIBufIdx = 0;
    gAudioContext.gSoundMode = 0;
    gAudioContext.currTask = NULL;
    gAudioContext.rspTask[0].task.t.data_size = 0;
    gAudioContext.rspTask[1].task.t.data_size = 0;
    osCreateMesgQueue(&gAudioContext.unk_25E8, &gAudioContext.unk_2600, 1);
    osCreateMesgQueue(&gAudioContext.unk_1ED0, &gAudioContext.unk_1EE8, 0x40);
    osCreateMesgQueue(&gAudioContext.unk_1E20, &gAudioContext.unk_1E38, 0x10);
    osCreateMesgQueue(&gAudioContext.unk_1E78, &gAudioContext.unk_1E90, 0x10);
    gAudioContext.sampleIoReqIdx = 0;
    gAudioContext.sampleDmaReqCnt = 0;
    gAudioContext.cartHandle = osCartRomInit();

    if (heap == NULL) {
        gAudioContext.gAudioHeap = gAudioHeap;
        gAudioContext.gAudioHeapSize = D_8014A6C4.heap;
    } else {
        void** hp = &heap;
        gAudioContext.gAudioHeap = *hp;
        gAudioContext.gAudioHeapSize = heapSize;
    }

    for (i = 0; i < (s32)gAudioContext.gAudioHeapSize / 8; i++) {
        ((u64*)gAudioContext.gAudioHeap)[i] = 0;
    }

    Audio_InitMainPools(D_8014A6C4.mainPool);

    for (i = 0; i < 3; i++) {
        gAudioContext.aiBuffers[i] = Audio_AllocZeroed(&gAudioContext.gAudioInitPool, AIBUF_LEN);
    }

    gAudioContext.sequenceTable = &gSequenceTable;
    gAudioContext.audioBankTable = &gAudioBankTable;
    gAudioContext.audioTable = &gAudioTable;
    gAudioContext.unk_283C = &D_80155340;
    gAudioContext.unk_2840 = gAudioContext.sequenceTable->header.entryCnt;

    gAudioContext.gAudioResetPresetIdToLoad = 0;
    gAudioContext.gAudioResetStatus = 1;

    Audio_ResetStep();
    func_800E1B08(gAudioContext.sequenceTable, _AudioseqSegmentRomStart, 0);
    func_800E1B08(gAudioContext.audioBankTable, _AudiobankSegmentRomStart, 0);
    func_800E1B08(gAudioContext.audioTable, _AudiotableSegmentRomStart, 0);
    sp24 = gAudioContext.audioBankTable->header.entryCnt;
    gAudioContext.gCtlEntries = Audio_Alloc(&gAudioContext.gAudioInitPool, sp24 * sizeof(CtlEntry));

    for (i = 0; i < sp24; i++) {
        func_800E3034(i);
    }

    if (temp_v0_3 = Audio_Alloc(&gAudioContext.gAudioInitPool, D_8014A6C4.initPool), temp_v0_3 == NULL) {

        *((u32*)&D_8014A6C4.initPool) = 0;
    }

    Audio_SoundAllocPoolInit(&gAudioContext.unk_2D50, temp_v0_3, D_8014A6C4.initPool);
    D_801304D8 = 1;
    osSendMesg(gAudioContext.unk_5BE8, (void*)gAudioContext.totalTaskCnt, 0);
}

void func_800E3400(void) {
    gAudioContext.unk_1D50[0].unk_14 = 0;
    gAudioContext.unk_1D50[1].unk_14 = 0;
}

s32 func_800E3414(s32 arg0, s32 arg1, u8* arg2) {
    AudioBankSample* temp_v0;
    unk_1D50_s* temp_v1;

    temp_v0 = func_800E35E0(arg0, arg1);
    if (temp_v0 == 0) {
        *arg2 = 0;
        return -1;
    }

    if (temp_v0->bits2 == 0) {
        *arg2 = 2;
        return 0;
    }

    temp_v1 = &gAudioContext.unk_1D50[gAudioContext.unk_1D4C];
    if (temp_v1->unk_14 == 3) {
        temp_v1->unk_14 = 0;
    }

    temp_v1->sample = *temp_v0;
    temp_v1->unk_1C = arg2;
    temp_v1->ramAddr = func_800E05C4(temp_v0->bits24, arg0, temp_v0->sampleAddr, temp_v0->bits2, 0);

    if (temp_v1->ramAddr == NULL) {
        if (temp_v0->bits2 == 1 || temp_v0->bits4 == 2) {
            *arg2 = 0;
            return -1;
        } else {
            *arg2 = 3;
            return -1;
        }
    }

    temp_v1->unk_14 = 1;
    temp_v1->unk_18 = ALIGN16(temp_v0->bits24);
    temp_v1->unk_10 = temp_v1->ramAddr;
    temp_v1->devAddr = temp_v0->sampleAddr;
    temp_v1->unk_00 = temp_v0->bits2;
    temp_v1->unk_01 = arg0;
    temp_v1->unk_02 = arg1;
    if (temp_v1->unk_00 == 1) {
        temp_v1->unk_04 = gAudioContext.audioTable->header.unk_02;
    }

    gAudioContext.unk_1D4C ^= 1;
    return 0;
}

AudioBankSample* func_800E35E0(s32 bankId, s32 sfxId) {
    AudioBankSample* ret;

    if (sfxId < 0x80) {
        Instrument* instrument = Audio_GetInstrumentInner(bankId, sfxId);
        if (instrument == NULL) {
            return NULL;
        }
        ret = instrument->normalNotesSound.sample;
    } else if (sfxId < 0x100) {
        Drum* drum = Audio_GetDrum(bankId, sfxId - 0x80);
        if (drum == NULL) {
            return NULL;
        }
        ret = drum->sound.sample;
    } else {
        AudioBankSound* bankSound = Audio_GetSfx(bankId, sfxId - 0x100);
        if (bankSound == NULL) {
            return NULL;
        }
        ret = bankSound->sample;
    }
    return ret;
}

void func_800E3670(void) {
}

void func_800E3678(unk_1D50_s* arg0) {
    AudioBankSample* temp_v0;

    if (arg0->sample.sampleAddr == NULL) {
        return;
    }

    temp_v0 = func_800E35E0(arg0->unk_01, arg0->unk_02);
    if (temp_v0 == NULL) {
        return;
    }

    arg0->sample = *temp_v0;
    temp_v0->sampleAddr = arg0->unk_10;
    temp_v0->bits2 = 0;
}

void func_800E36EC(s32 resetStatus) {
    unk_1D50_s* temp_s0;
    s32 i;

    for (i = 0; i < ARRAY_COUNT(gAudioContext.unk_1D50); i++) {
        temp_s0 = &gAudioContext.unk_1D50[i];
        switch (gAudioContext.unk_1D50[i].unk_14) {
            case 2:
                if (temp_s0->unk_00 != 1) {
                    osRecvMesg(&temp_s0->msgqueue, NULL, OS_MESG_BLOCK);
                }

                if (resetStatus != 0) {
                    temp_s0->unk_14 = 3;
                    continue;
                }
            case 1:
                temp_s0->unk_14 = 2;
                if (temp_s0->unk_18 == 0) {
                    func_800E3678(temp_s0);
                    temp_s0->unk_14 = 3;
                    *temp_s0->unk_1C = 1;
                } else if (temp_s0->unk_18 < 0x400) {
                    if (temp_s0->unk_00 == 1) {
                        u32 size = temp_s0->unk_18;
                        func_800E38F8(temp_s0->devAddr, temp_s0->ramAddr, size, temp_s0->unk_04);
                    } else {
                        func_800E3874(temp_s0, temp_s0->unk_18);
                    }
                    temp_s0->unk_18 = 0;
                } else {
                    if (temp_s0->unk_00 == 1) {
                        func_800E38F8(temp_s0->devAddr, temp_s0->ramAddr, 0x400, temp_s0->unk_04);
                    } else {
                        func_800E3874(temp_s0, 0x400);
                    }
                    temp_s0->unk_18 -= 0x400;
                    temp_s0->ramAddr += 0x400;
                    temp_s0->devAddr += 0x400;
                }
                break;
        }
    }
}

void func_800E3874(unk_1D50_s* arg0, s32 size) {
    func_800E6840(arg0->ramAddr, size);
    osCreateMesgQueue(&arg0->msgqueue, &arg0->msg, 1);
    func_800E2BE0(&arg0->ioMesg, 0U, 0, arg0->devAddr, arg0->ramAddr, size, &arg0->msgqueue, arg0->unk_00, "SLOWCOPY");
}

void func_800E38F8(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
}

s32 func_800E390C(s32 seqIdx, u8* ramAddr, u8* arg2) {
    unk_1D50_s* temp_v1;
    SequenceTable* seqTable;
    u32 size;

    if (seqIdx >= gAudioContext.unk_2840) {
        *arg2 = 0;
        return -1;
    }

    seqIdx = func_800E2768(0, seqIdx);
    seqTable = func_800E27F8(0);
    temp_v1 = &gAudioContext.unk_1D50[gAudioContext.unk_1D4C];
    if (temp_v1->unk_14 == 3) {
        temp_v1->unk_14 = 0;
    }

    temp_v1->sample.sampleAddr = NULL;
    temp_v1->unk_1C = arg2;
    size = seqTable->entries[seqIdx].size;
    size = ALIGN16(size);
    temp_v1->ramAddr = ramAddr;
    temp_v1->unk_14 = 1;
    temp_v1->unk_18 = size;
    temp_v1->unk_10 = ramAddr;
    temp_v1->devAddr = seqTable->entries[seqIdx].romAddr;
    temp_v1->unk_00 = seqTable->entries[seqIdx].unk_08;
    temp_v1->unk_01 = seqIdx;

    if (temp_v1->unk_00 == 1) {
        temp_v1->unk_04 = seqTable->header.unk_02;
    }

    gAudioContext.unk_1D4C ^= 1;
    return 0;
}

// InitLoadReqs
void func_800E3A14(void) {
    s32 i;

    for (i = 0; i < ARRAY_COUNT(gAudioContext.asyncReqs); i++) {
        gAudioContext.asyncReqs[i].status = 0;
    }
}

AsyncLoadReq* func_800E3A44(s32 arg0, s32 devAddr, void* ramAddr, s32 size, s32 arg4, s32 nChunks,
                            OSMesgQueue* retQueue, s32 retMsg) {
    AsyncLoadReq* loadReq;

    loadReq = func_800E3AC8(devAddr, ramAddr, size, arg4, nChunks, retQueue, retMsg);

    if (loadReq == NULL) {
        return NULL;
    }

    osSendMesg(&gAudioContext.unk_queue_1CF0, loadReq, 0);
    loadReq->unk_18 = arg0;
    return loadReq;
}

AsyncLoadReq* func_800E3AC8(s32 devAddr, void* ramAddr, s32 size, s32 arg3, s32 nChunks, OSMesgQueue* retQueue,
                            s32 retMsg) {
    AsyncLoadReq* loadReq;
    s32 i;

    for (i = 0; i < ARRAY_COUNT(gAudioContext.asyncReqs); i++) {
        if (gAudioContext.asyncReqs[i].status == 0) {
            loadReq = &gAudioContext.asyncReqs[i];
            break;
        }
    }

    // no more available async reqs
    if (i == ARRAY_COUNT(gAudioContext.asyncReqs)) {
        return NULL;
    }

    loadReq->status = 1;
    loadReq->devAddr = devAddr;
    loadReq->unk_04 = ramAddr;
    loadReq->ramAddr = ramAddr;
    loadReq->bytesRemaining = size;

    if (nChunks == 0) {
        loadReq->chunkSize = 0x1000;
    } else if (nChunks == 1) {
        loadReq->chunkSize = size;
    } else {
        loadReq->chunkSize = ((size / nChunks) + 0xFF) & ~0xFF;
        if (loadReq->chunkSize < 0x100) {
            loadReq->chunkSize = 0x100;
        }
    }

    loadReq->retQueue = retQueue;
    loadReq->unk_01 = 3;
    loadReq->unk_02 = arg3;
    loadReq->retMsg = retMsg;
    osCreateMesgQueue(&loadReq->msgQueue, &loadReq->msg, 1);
    return loadReq;
}
void func_800E3BEC(s32 resetStatus) {
    AsyncLoadReq* sp34;
    s32 i;

    if (gAudioContext.unk_2984 == 1) {
        return;
    }

    if (gAudioContext.unk_1D48 == 0) {
        if (resetStatus != 0) {
            do {
            } while (osRecvMesg(&gAudioContext.unk_queue_1CF0, &sp34, OS_MESG_NOBLOCK) != -1);
        } else if (osRecvMesg(&gAudioContext.unk_queue_1CF0, &sp34, OS_MESG_NOBLOCK) == -1) {
            gAudioContext.unk_1D48 = 0;
        } else {
            gAudioContext.unk_1D48 = sp34;
        }
    }

    if (gAudioContext.unk_1D48 != 0) {
        func_800E3D10(gAudioContext.unk_1D48, resetStatus);
    }

    for (i = 0; i < ARRAY_COUNT(gAudioContext.asyncReqs); i++) {
        if (gAudioContext.asyncReqs[i].status == 1) {
            sp34 = &gAudioContext.asyncReqs[i];
            if (sp34->unk_02 != 1) {
                func_800E3E58(sp34, resetStatus);
            }
        }
    }
}

void func_800E3D10(u32 arg0, s32 arg1) {
}

void func_800E3D1C(AsyncLoadReq* arg0) {
    u32 retMsg = arg0->retMsg;
    u32 b2;
    u32 pad;
    u32 t1;
    u32 pad2;
    u32 t2;
    unk_4C sp30;

    if (1) {}
    switch (ASYNC_TBLTYPE(retMsg)) {
        case 0:
            Audio_SetSeqLoadStatus(ASYNC_B2(retMsg), ASYNC_B3(retMsg));
            break;
        case 2:
            func_800E1A78(ASYNC_B2(retMsg), ASYNC_B3(retMsg));
            break;
        case 1:
            b2 = ASYNC_B2(retMsg);
            t1 = gAudioContext.gCtlEntries[b2].unk_02;
            t2 = gAudioContext.gCtlEntries[b2].unk_03;
            sp30.unk_00 = t1;
            sp30.unk_04 = t2;
            sp30.unk_08 = t1 != 0xFF ? func_800E2318(t1, &sp30.unk_10) : 0;
            sp30.unk_0C = t2 != 0xFF ? func_800E2318(t2, &sp30.unk_14) : 0;
            Audio_SetBankLoadStatus(b2, ASYNC_B3(retMsg));
            func_800E4198(b2, arg0->unk_04, &sp30, 1);
            break;
    }

    pad2 = arg0->retMsg;
    if (1) {}
    arg0->status = 0;
    osSendMesg(arg0->retQueue, pad2, OS_MESG_NOBLOCK);
}

void func_800E3E58(AsyncLoadReq* req, s32 resetStatus) {
    AudioTable* audioTable = gAudioContext.audioTable;
    if (req->unk_01 >= 2) {
        req->unk_01--;
        return;
    }

    if (req->unk_01 == 1) {
        req->unk_01 = 0;
    } else if (resetStatus != 0) {
        osRecvMesg(&req->msgQueue, NULL, OS_MESG_BLOCK);
        req->status = 0;
        return;
    } else if (osRecvMesg(&req->msgQueue, NULL, OS_MESG_NOBLOCK) == -1) {
        return;
    }

    if (req->bytesRemaining == 0) {
        func_800E3D1C(req);
        return;
    }

    if (req->bytesRemaining < req->chunkSize) {
        if (req->unk_02 == 1) {
            func_800E4044(req->devAddr, req->ramAddr, req->bytesRemaining, audioTable->header.unk_02);
        } else {
            func_800E3FB4(req, req->bytesRemaining);
        }
        req->bytesRemaining = 0;
        return;
    }

    if (req->unk_02 == 1) {
        func_800E4044(req->devAddr, req->ramAddr, req->chunkSize, audioTable->header.unk_02);
    } else {
        func_800E3FB4(req, req->chunkSize);
    }

    req->bytesRemaining -= req->chunkSize;
    req->devAddr += req->chunkSize;
    req->ramAddr = req->ramAddr + req->chunkSize;
}

void func_800E3FB4(AsyncLoadReq* req, u32 size) {
    size = ALIGN16(size);
    func_800E6840(req->ramAddr, size); // invalDCache
    osCreateMesgQueue(&req->msgQueue, &req->msg, 1);
    func_800E2BE0(&req->ioMesg, 0, 0, req->devAddr, req->ramAddr, size, &req->msgQueue, req->unk_02, "BGCOPY");
}

void func_800E4044(u32 devAddr, void* ramAddr, u32 size, s16 arg3) {
}

#ifdef NON_MATCHING
// reloc
void func_800E4058(AudioBankSound* sound, u32 arg1, unk_4C* arg2) {
    AudioBankSample* temp_v1;
    AudioBankSample* a2;

    if ((u32)sound->sample > 0x80000000) {
        return;
    }

    temp_v1 = (u32)sound->sample + arg1;
    sound->sample = temp_v1;
    a2 = sound->sample;
    if (temp_v1->bits24 != 0) {
        if (temp_v1->unk_bits25 != 1) {
            a2->loop = (u32)temp_v1->loop + arg1;
            a2->book = (u32)temp_v1->book + arg1;
            switch (a2->bits2) {
                case 0:
                    a2->sampleAddr = &temp_v1->sampleAddr[arg2->unk_08];
                    a2->bits2 = arg2->unk_10 * 4;
                    break;
                case 1:
                    a2->sampleAddr = &temp_v1->sampleAddr[arg2->unk_0C];
                    a2->bits2 = arg2->unk_14 * 4;
                    break;
                case 2:
                case 3:
                    break;
            }

            a2->unk_bits25 = 1;
            if (a2->unk_bits26 && (a2->bits2 != 0)) {
                gAudioContext.unk_B68[gAudioContext.unk_1768] = a2;
                gAudioContext.unk_1768++;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E4058.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E4198.s")

#ifdef NON_MATCHING
s32 func_800E4590(s32 resetStatus) {
    u32 sp4C;
    AudioStruct0D68* temp_a2;
    AudioBankSample* sample;
    s32 size;
    u32 addr;
    u32 b24;

    if (gAudioContext.unk_176C > 0) {
        if (resetStatus != 0) {
            osRecvMesg(&gAudioContext.unk_1E78, &sp4C, OS_MESG_NOBLOCK);
            gAudioContext.unk_176C = 0;
            return 0;
        }

        if (osRecvMesg(&gAudioContext.unk_1E78, &sp4C, OS_MESG_NOBLOCK) == -1) {
            return 0;
        }

        sp4C = sp4C >> 0x18;
        temp_a2 = &gAudioContext.unk_0D54[sp4C + 1];
        if (temp_a2->unk_10 == 0) {
            sample = temp_a2->sample;
            addr = sample->sampleAddr + sample->bits24 + sample->bits2;
            if (addr == temp_a2->unk_00) {
                sample->sampleAddr = temp_a2->unk_08;
                sample->bits2 = 0;
            }
            temp_a2->unk_10 = 1;
        }

        while (true) {
            if (gAudioContext.unk_176C <= 0) {
                break;
            }

            temp_a2 = &gAudioContext.unk_0D54[gAudioContext.unk_176C];
            if (temp_a2->unk_10 == 1) {
                gAudioContext.unk_176C--;
                continue;
            }

            b24 = temp_a2->sample->bits24;
            size = (temp_a2->sample->bits24 / 0x1000) + 1;
            addr = temp_a2->sample->sampleAddr;
            if (addr + b24 + temp_a2->sample->bits2 != temp_a2->unk_00) {
                temp_a2->unk_10 = 1;
                gAudioContext.unk_176C--;
            } else {
                func_800E3AC8(addr, temp_a2->unk_08, b24, temp_a2->sample->bits2, size, &gAudioContext.unk_1E78,
                              temp_a2->pad);
                break;
            }
        }
    }
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E4590.s")
#endif

s32 func_800E4744(AudioBankSample* sample, s32 sampleCnt, AudioBankSample** sampleList) {
    s32 i;

    for (i = 0; i < sampleCnt; i++) {
        if (sample->sampleAddr == sampleList[i]->sampleAddr) {
            break;
        }
    }

    if (i == sampleCnt) {
        sampleList[sampleCnt] = sample;
        sampleCnt++;
    }

    return sampleCnt;
}

s32 func_800E478C(s32 bankId, AudioBankSample** sampleList) {
    s32 i;
    s32 drumCnt;
    s32 instrumentCnt;
    s32 sampleCnt = 0;

    drumCnt = gAudioContext.gCtlEntries[bankId].numDrums;
    instrumentCnt = gAudioContext.gCtlEntries[bankId].numInstruments;

    for (i = 0; i < drumCnt; i++) {
        Drum* drum = Audio_GetDrum(bankId, i);
        if (1) {}
        if (drum != NULL) {
            sampleCnt = func_800E4744(drum->sound.sample, sampleCnt, sampleList);
        }
    }

    for (i = 0; i < instrumentCnt; i++) {
        Instrument* instrument = Audio_GetInstrumentInner(bankId, i);
        if (instrument != NULL) {
            if (instrument->normalRangeLo != 0) {
                sampleCnt = func_800E4744(instrument->lowNotesSound.sample, sampleCnt, sampleList);
            }
            if (instrument->normalRangeHi != 0x7F) {
                sampleCnt = func_800E4744(instrument->highNotesSound.sample, sampleCnt, sampleList);
            }
            sampleCnt = func_800E4744(instrument->normalNotesSound.sample, sampleCnt, sampleList);
        }
    }
    return sampleCnt;
}

void func_800E48C0(AudioBankSound* sound) {
    AudioBankSample* sample = sound->sample;

    if ((sample->bits24 != 0) && (sample->unk_bits26) && (sample->bits2)) {
        gAudioContext.unk_B68[gAudioContext.unk_1768++] = sample;
    }
}

// large
void func_800E4918(s32, s32, unk_4C*);
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E4918.s")

void func_800E4D94(void) {
    s32 pad;
    u32 temp_s2;
    AudioTable* temp_s3;
    s32 pad2;
    s32 i;

    temp_s3 = func_800E27F8(2);
    for (i = 0; i < gAudioContext.unk_2D50.unused; i++) {
        unk_4C sp4C;
        if (gAudioContext.unk_2D60[i].poolIndex == 1) {
            temp_s2 = func_800E2768(1, gAudioContext.unk_2D60[i].id);
            sp4C.unk_00 = gAudioContext.gCtlEntries[temp_s2].unk_02;
            sp4C.unk_04 = gAudioContext.gCtlEntries[temp_s2].unk_03;

            if (sp4C.unk_00 != 0xFF) {
                sp4C.unk_00 = func_800E2768(2, sp4C.unk_00);
                sp4C.unk_10 = temp_s3->entries[sp4C.unk_00].unk_08;
            }

            if (sp4C.unk_04 != 0xFF) {
                sp4C.unk_04 = func_800E2768(2, sp4C.unk_04);
                sp4C.unk_14 = temp_s3->entries[sp4C.unk_04].unk_08;
            }
            func_800E4918(temp_s2, 0, &sp4C);
        }
    }
}

void func_800E4ED4(void) {
}

void func_800E4EDC(void) {
}

void func_800E4EE4(void) {
}

void func_800E4EEC(s32 arg0, s32 arg1, u8* arg2) {
    static u32 D_801304DC = 0;
    D_8016B738[D_801304DC] = arg2;
    func_800E1E34(arg0, arg1, 0, D_801304DC, &D_8016B6E0);
    D_801304DC++;
    if (D_801304DC == 0x10) {
        D_801304DC = 0;
    }
}

void func_800E4F58(void) {
    u32 pad;
    u32 sp20;
    u8* temp_v0;

    if (osRecvMesg(&D_8016B6E0, &sp20, OS_MESG_NOBLOCK) != -1) {
        pad = sp20 >> 0x18;
        temp_v0 = D_8016B738[pad];
        if (temp_v0 != NULL) {
            *temp_v0 = 0;
        }
    }
}

void func_800E4FB0(void) {
    osCreateMesgQueue(&D_8016B6E0, &D_8016B6F8, 0x10);
}
