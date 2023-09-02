#include "ultra64.h"
#include "global.h"
#include "terminal.h"

typedef struct {
    /* 0x00 */ u16 sfxId;
    /* 0x04 */ Vec3f* pos;
    /* 0x08 */ u8 token;
    /* 0x0C */ f32* freqScale;
    /* 0x10 */ f32* vol;
    /* 0x14 */ s8* reverbAdd;
} SfxRequest; // size = 0x18

typedef struct {
    /* 0x00 */ f32 value;
    /* 0x04 */ f32 target;
    /* 0x08 */ f32 step;
    /* 0x0C */ u16 remainingFrames;
} UnusedBankLerp; // size = 0x10

SfxBankEntry D_8016BAD0[9];
SfxBankEntry D_8016BC80[12];
SfxBankEntry D_8016BEC0[22];
SfxBankEntry D_8016C2E0[20];
SfxBankEntry D_8016C6A0[8];
SfxBankEntry D_8016C820[3];
SfxBankEntry D_8016C8B0[5];
SfxRequest sSfxRequests[0x100];
u8 sSfxBankListEnd[7];
u8 sSfxBankFreeListStart[7];
u8 sSfxBankUnused[7];
ActiveSfx gActiveSfx[7][3];
u8 sCurSfxPlayerChannelIdx;
u8 gSfxBankMuted[7];
UnusedBankLerp sUnusedBankLerp[7];
u16 gAudioSfxSwapSource[10];
u16 gAudioSfxSwapTarget[10];
u8 gAudioSfxSwapMode[10];

void Audio_SetSfxBanksMute(u16 muteMask) {
    u8 bankId;

    for (bankId = 0; bankId < ARRAY_COUNT(gSfxBanks); bankId++) {
        if (muteMask & 1) {
            gSfxBankMuted[bankId] = true;
        } else {
            gSfxBankMuted[bankId] = false;
        }
        muteMask = muteMask >> 1;
    }
}

void Audio_QueueSeqCmdMute(u8 channelIdx) {
    D_801333D0 |= (1 << channelIdx);
    Audio_SetVolumeScale(SEQ_PLAYER_BGM_MAIN, VOL_SCALE_INDEX_SFX, 0x40, 0xF);
    Audio_SetVolumeScale(SEQ_PLAYER_BGM_SUB, VOL_SCALE_INDEX_SFX, 0x40, 0xF);
}

void Audio_ClearBGMMute(u8 channelIdx) {
    D_801333D0 &= ((1 << channelIdx) ^ 0xFFFF);
    if (D_801333D0 == 0) {
        Audio_SetVolumeScale(SEQ_PLAYER_BGM_MAIN, VOL_SCALE_INDEX_SFX, 0x7F, 0xF);
        Audio_SetVolumeScale(SEQ_PLAYER_BGM_SUB, VOL_SCALE_INDEX_SFX, 0x7F, 0xF);
    }
}

void Audio_PlaySfxGeneral(u16 sfxId, Vec3f* pos, u8 token, f32* freqScale, f32* vol, s8* reverbAdd) {
    u8 i;
    SfxRequest* req;

    if (!gSfxBankMuted[SFX_BANK_SHIFT(sfxId)]) {
        req = &sSfxRequests[gSfxRequestWriteIndex];
        if (!gAudioSfxSwapOff) {
            for (i = 0; i < 10; i++) {
                if (sfxId == gAudioSfxSwapSource[i]) {
                    if (gAudioSfxSwapMode[i] == 0) { // "SWAP"
                        sfxId = gAudioSfxSwapTarget[i];
                    } else { // "ADD"
                        req->sfxId = gAudioSfxSwapTarget[i];
                        req->pos = pos;
                        req->token = token;
                        req->freqScale = freqScale;
                        req->vol = vol;
                        req->reverbAdd = reverbAdd;
                        gSfxRequestWriteIndex++;
                        req = &sSfxRequests[gSfxRequestWriteIndex];
                    }
                    i = 10; // "break;"
                }
            }
        }
        req->sfxId = sfxId;
        req->pos = pos;
        req->token = token;
        req->freqScale = freqScale;
        req->vol = vol;
        req->reverbAdd = reverbAdd;
        gSfxRequestWriteIndex++;
    }
}

void Audio_RemoveMatchingSfxRequests(u8 aspect, SfxBankEntry* cmp) {
    SfxRequest* req;
    s32 remove;
    u8 i = gSfxRequestReadIndex;

    for (; i != gSfxRequestWriteIndex; i++) {
        remove = false;
        req = &sSfxRequests[i];
        switch (aspect) {
            case 0:
                if (SFX_BANK_MASK(req->sfxId) == SFX_BANK_MASK(cmp->sfxId)) {
                    remove = true;
                }
                break;
            case 1:
                if (SFX_BANK_MASK(req->sfxId) == SFX_BANK_MASK(cmp->sfxId) && (&req->pos->x == cmp->posX)) {
                    remove = true;
                }
                break;
            case 2:
                if (&req->pos->x == cmp->posX) {
                    remove = true;
                }
                break;
            case 3:
                if (&req->pos->x == cmp->posX && req->sfxId == cmp->sfxId) {
                    remove = true;
                }
                break;
            case 4:
                if (req->token == cmp->token && req->sfxId == cmp->sfxId) {
                    remove = true;
                }
                break;
            case 5:
                if (req->sfxId == cmp->sfxId) {
                    remove = true;
                }
                break;
        }
        if (remove) {
            req->sfxId = NA_SE_NONE;
        }
    }
}

void Audio_ProcessSfxRequest(void) {
    u16 sfxId;
    u8 count;
    u8 index;
    SfxRequest* req;
    SfxBankEntry* entry;
    SfxParams* sfxParams;
    s32 bankId;
    u8 evictImportance;
    u8 evictIndex;

    req = &sSfxRequests[gSfxRequestReadIndex];
    evictIndex = 0x80;

    if (req->sfxId == NA_SE_NONE) {
        return;
    }

    bankId = SFX_BANK(req->sfxId);
    if ((1 << bankId) & D_801333F0) {
        AudioDebug_ScrPrt("SE", req->sfxId);
        bankId = SFX_BANK(req->sfxId);
    }
    count = 0;
    index = gSfxBanks[bankId][0].next;
    while (index != 0xFF && index != 0) {
        if (gSfxBanks[bankId][index].posX == &req->pos->x) {
            if ((gSfxParams[SFX_BANK_SHIFT(req->sfxId)][SFX_INDEX(req->sfxId)].params & SFX_FLAG_5) &&
                gSfxParams[SFX_BANK_SHIFT(req->sfxId)][SFX_INDEX(req->sfxId)].importance ==
                    gSfxBanks[bankId][index].sfxImportance) {
                return;
            }
            if (gSfxBanks[bankId][index].sfxId == req->sfxId) {
                count = gUsedChannelsPerBank[gSfxChannelLayout][bankId];
            } else {
                if (count == 0) {
                    evictIndex = index;
                    sfxId = gSfxBanks[bankId][index].sfxId & 0xFFFF;
                    evictImportance = gSfxParams[SFX_BANK_SHIFT(sfxId)][SFX_INDEX(sfxId)].importance;
                } else if (gSfxBanks[bankId][index].sfxImportance < evictImportance) {
                    evictIndex = index;
                    sfxId = gSfxBanks[bankId][index].sfxId & 0xFFFF;
                    evictImportance = gSfxParams[SFX_BANK_SHIFT(sfxId)][SFX_INDEX(sfxId)].importance;
                }
                count++;
                if (count == gUsedChannelsPerBank[gSfxChannelLayout][bankId]) {
                    if (gSfxParams[SFX_BANK_SHIFT(req->sfxId)][SFX_INDEX(req->sfxId)].importance >= evictImportance) {
                        index = evictIndex;
                    } else {
                        index = 0;
                    }
                }
            }
            if (count == gUsedChannelsPerBank[gSfxChannelLayout][bankId]) {
                sfxParams = &gSfxParams[SFX_BANK_SHIFT(req->sfxId)][SFX_INDEX(req->sfxId)];
                if ((req->sfxId & 0xC00) || (sfxParams->params & SFX_FLAG_2) || (index == evictIndex)) {
                    if ((gSfxBanks[bankId][index].sfxParams & SFX_FLAG_3) &&
                        gSfxBanks[bankId][index].state != SFX_STATE_QUEUED) {
                        Audio_ClearBGMMute(gSfxBanks[bankId][index].channelIdx);
                    }
                    gSfxBanks[bankId][index].token = req->token;
                    gSfxBanks[bankId][index].sfxId = req->sfxId;
                    gSfxBanks[bankId][index].state = SFX_STATE_QUEUED;
                    gSfxBanks[bankId][index].freshness = 2;
                    gSfxBanks[bankId][index].freqScale = req->freqScale;
                    gSfxBanks[bankId][index].vol = req->vol;
                    gSfxBanks[bankId][index].reverbAdd = req->reverbAdd;
                    gSfxBanks[bankId][index].sfxParams = sfxParams->params;
                    gSfxBanks[bankId][index].sfxImportance = sfxParams->importance;
                } else if (gSfxBanks[bankId][index].state == SFX_STATE_PLAYING_2) {
                    gSfxBanks[bankId][index].state = SFX_STATE_PLAYING_1;
                }
                index = 0;
            }
        }
        if (index != 0) {
            index = gSfxBanks[bankId][index].next;
        }
    }
    if (gSfxBanks[bankId][sSfxBankFreeListStart[bankId]].next != 0xFF && index != 0) {
        index = sSfxBankFreeListStart[bankId];
        entry = &gSfxBanks[bankId][index];
        entry->posX = &req->pos->x;
        entry->posY = &req->pos->y;
        entry->posZ = &req->pos->z;
        entry->token = req->token;
        entry->freqScale = req->freqScale;
        entry->vol = req->vol;
        entry->reverbAdd = req->reverbAdd;
        sfxParams = &gSfxParams[SFX_BANK_SHIFT(req->sfxId)][SFX_INDEX(req->sfxId)];
        entry->sfxParams = sfxParams->params;
        entry->sfxImportance = sfxParams->importance;
        entry->sfxId = req->sfxId;
        entry->state = SFX_STATE_QUEUED;
        entry->freshness = 2;
        entry->prev = sSfxBankListEnd[bankId];
        gSfxBanks[bankId][sSfxBankListEnd[bankId]].next = sSfxBankFreeListStart[bankId];
        sSfxBankListEnd[bankId] = sSfxBankFreeListStart[bankId];
        sSfxBankFreeListStart[bankId] = gSfxBanks[bankId][sSfxBankFreeListStart[bankId]].next;
        gSfxBanks[bankId][sSfxBankFreeListStart[bankId]].prev = 0xFF;
        entry->next = 0xFF;
    }
}

void Audio_RemoveSfxBankEntry(u8 bankId, u8 entryIndex) {
    SfxBankEntry* entry = &gSfxBanks[bankId][entryIndex];
    u8 i;

    if (entry->sfxParams & SFX_FLAG_3) {
        Audio_ClearBGMMute(entry->channelIdx);
    }
    if (entryIndex == sSfxBankListEnd[bankId]) {
        sSfxBankListEnd[bankId] = entry->prev;
    } else {
        gSfxBanks[bankId][entry->next].prev = entry->prev;
    }
    gSfxBanks[bankId][entry->prev].next = entry->next;
    entry->next = sSfxBankFreeListStart[bankId];
    entry->prev = 0xFF;
    gSfxBanks[bankId][sSfxBankFreeListStart[bankId]].prev = entryIndex;
    sSfxBankFreeListStart[bankId] = entryIndex;
    entry->state = SFX_STATE_EMPTY;

    for (i = 0; i < gChannelsPerBank[gSfxChannelLayout][bankId]; i++) {
        if (gActiveSfx[bankId][i].entryIndex == entryIndex) {
            gActiveSfx[bankId][i].entryIndex = 0xFF;
            i = gChannelsPerBank[gSfxChannelLayout][bankId];
        }
    }
}

void Audio_ChooseActiveSfx(u8 bankId) {
    u8 numChosenSfx;
    u8 numChannels;
    u8 entryIndex;
    u8 i;
    u8 j;
    u8 k;
    u8 sfxImportance;
    u8 needNewSfx;
    u8 chosenEntryIndex;
    u16 temp3;
    f32 tempf1;
    SfxBankEntry* entry;
    ActiveSfx chosenSfx[MAX_CHANNELS_PER_BANK];
    ActiveSfx* activeSfx;
    s32 pad;

    numChosenSfx = 0;
    for (i = 0; i < MAX_CHANNELS_PER_BANK; i++) {
        chosenSfx[i].priority = 0x7FFFFFFF;
        chosenSfx[i].entryIndex = 0xFF;
    }
    entryIndex = gSfxBanks[bankId][0].next;
    k = 0;
    while (entryIndex != 0xFF) {
        if ((gSfxBanks[bankId][entryIndex].state == SFX_STATE_QUEUED) &&
            (gSfxBanks[bankId][entryIndex].sfxId & 0xC00)) {
            gSfxBanks[bankId][entryIndex].freshness--;
        } else if (!(gSfxBanks[bankId][entryIndex].sfxId & 0xC00) &&
                   (gSfxBanks[bankId][entryIndex].state == SFX_STATE_PLAYING_2)) {
            Audio_QueueCmdS8((gSfxBanks[bankId][entryIndex].channelIdx << 8) | 0x6020000, 0);
            Audio_RemoveSfxBankEntry(bankId, entryIndex);
        }
        if (gSfxBanks[bankId][entryIndex].freshness == 0) {
            Audio_RemoveSfxBankEntry(bankId, entryIndex);
        } else if (gSfxBanks[bankId][entryIndex].state != SFX_STATE_EMPTY) {
            entry = &gSfxBanks[bankId][entryIndex];

            if (&gSfxDefaultPos.x == entry[0].posX) {
                entry->dist = 0.0f;
            } else {
                tempf1 = *entry->posY * 1;
                entry->dist = (SQ(*entry->posX) + SQ(tempf1) + SQ(*entry->posZ)) * 1;
            }
            sfxImportance = entry->sfxImportance;
            if (entry->sfxParams & SFX_FLAG_4) {
                entry->priority = SQ(0xFF - sfxImportance) * SQ(76);
            } else {
                if (entry->dist > 0x7FFFFFD0) {
                    entry->dist = 0x70000008;
                    osSyncPrintf(VT_COL(RED, WHITE) "<INAGAKI CHECK> dist over! "
                                                    "flag:%04X ptr:%08X pos:%f-%f-%f" VT_RST "\n",
                                 entry->sfxId, entry->posX, entry->posZ, *entry->posX, *entry->posY, *entry->posZ);
                }
                temp3 = entry->sfxId; // fake
                entry->priority = (u32)entry->dist + (SQ(0xFF - sfxImportance) * SQ(76)) + temp3 - temp3;
                if (*entry->posZ < 0.0f) {
                    entry->priority += (s32)(-*entry->posZ * 6.0f);
                }
            }
            if (entry->dist > SQ(1e5f)) {
                if (entry->state == SFX_STATE_PLAYING_1) {
                    Audio_QueueCmdS8((entry->channelIdx << 8) | 0x6020000, 0);
                    if (entry->sfxId & 0xC00) {
                        Audio_RemoveSfxBankEntry(bankId, entryIndex);
                        entryIndex = k;
                    }
                }
            } else {
                numChannels = gChannelsPerBank[gSfxChannelLayout][bankId];
                for (i = 0; i < numChannels; i++) {
                    if (chosenSfx[i].priority >= entry->priority) {
                        if (numChosenSfx < gChannelsPerBank[gSfxChannelLayout][bankId]) {
                            numChosenSfx++;
                        }
                        for (j = numChannels - 1; j > i; j--) {
                            chosenSfx[j].priority = chosenSfx[j - 1].priority;
                            chosenSfx[j].entryIndex = chosenSfx[j - 1].entryIndex;
                        }
                        chosenSfx[i].priority = entry->priority;
                        chosenSfx[i].entryIndex = entryIndex;
                        i = numChannels; // "break;"
                    }
                }
            }
            k = entryIndex;
        }
        entryIndex = gSfxBanks[bankId][k].next;
    }
    for (i = 0; i < numChosenSfx; i++) {
        entry = &gSfxBanks[bankId][chosenSfx[i].entryIndex];
        if (entry->state == SFX_STATE_QUEUED) {
            entry->state = SFX_STATE_READY;
        } else if (entry->state == SFX_STATE_PLAYING_1) {
            entry->state = SFX_STATE_PLAYING_REFRESH;
        }
    }

    // Pick something to play for all channels.
    numChannels = gChannelsPerBank[gSfxChannelLayout][bankId];
    for (i = 0; i < numChannels; i++) {
        needNewSfx = false;
        activeSfx = &gActiveSfx[bankId][i];

        if (activeSfx->entryIndex == 0xFF) {
            needNewSfx = true;
        } else {
            entry = &gSfxBanks[bankId][activeSfx[0].entryIndex];
            if (entry->state == SFX_STATE_PLAYING_1) {
                if (entry->sfxId & 0xC00) {
                    Audio_RemoveSfxBankEntry(bankId, activeSfx->entryIndex);
                } else {
                    entry->state = SFX_STATE_QUEUED;
                }
                needNewSfx = true;
            } else if (entry->state == SFX_STATE_EMPTY) {
                activeSfx->entryIndex = 0xFF;
                needNewSfx = true;
            } else {
                // Sfx is already playing as it should, nothing to do.
                for (j = 0; j < numChannels; j++) {
                    if (activeSfx->entryIndex == chosenSfx[j].entryIndex) {
                        chosenSfx[j].entryIndex = 0xFF;
                        j = numChannels;
                    }
                }
                numChosenSfx--;
            }
        }

        if (needNewSfx == true) {
            for (j = 0; j < numChannels; j++) {
                chosenEntryIndex = chosenSfx[j].entryIndex;
                if ((chosenEntryIndex != 0xFF) &&
                    (gSfxBanks[bankId][chosenEntryIndex].state != SFX_STATE_PLAYING_REFRESH)) {
                    for (k = 0; k < numChannels; k++) {
                        if (chosenEntryIndex == gActiveSfx[bankId][k].entryIndex) {
                            needNewSfx = false;
                            k = numChannels; // "break;"
                        }
                    }
                    if (needNewSfx == true) {
                        activeSfx->entryIndex = chosenEntryIndex;
                        chosenSfx[j].entryIndex = 0xFF;
                        j = numChannels + 1;
                        numChosenSfx--;
                    }
                }
            }
            if (j == numChannels) {
                // nothing found
                activeSfx->entryIndex = 0xFF;
            }
        }
    }
}

void Audio_PlayActiveSfx(u8 bankId) {
    u8 entryIndex;
    SequenceChannel* channel;
    SfxBankEntry* entry;
    u8 i;

    for (i = 0; i < gChannelsPerBank[gSfxChannelLayout][bankId]; i++) {
        entryIndex = gActiveSfx[bankId][i].entryIndex;
        if (entryIndex != 0xFF) {
            entry = &gSfxBanks[bankId][entryIndex];
            channel = gAudioCtx.seqPlayers[SEQ_PLAYER_SFX].channels[sCurSfxPlayerChannelIdx];
            if (entry->state == SFX_STATE_READY) {
                entry->channelIdx = sCurSfxPlayerChannelIdx;
                if (entry->sfxParams & SFX_FLAG_3) {
                    Audio_QueueSeqCmdMute(sCurSfxPlayerChannelIdx);
                }
                if ((entry->sfxParams & SFX_PARAM_67_MASK) != (0 << SFX_PARAM_67_SHIFT)) {
                    switch (entry->sfxParams & SFX_PARAM_67_MASK) {
                        case (1 << SFX_PARAM_67_SHIFT):
                            entry->unk_2F = Audio_NextRandom() & 0xF;
                            break;
                        case (2 << SFX_PARAM_67_SHIFT):
                            entry->unk_2F = Audio_NextRandom() & 0x1F;
                            break;
                        case (3 << SFX_PARAM_67_SHIFT):
                            entry->unk_2F = Audio_NextRandom() & 0x3F;
                            break;
                        default:
                            entry->unk_2F = 0;
                            break;
                    }
                }
                Audio_SetSfxProperties(bankId, entryIndex, sCurSfxPlayerChannelIdx);
                Audio_QueueCmdS8(0x6 << 24 | SEQ_PLAYER_SFX << 16 | ((sCurSfxPlayerChannelIdx & 0xFF) << 8), 1);
                Audio_QueueCmdS8(0x6 << 24 | SEQ_PLAYER_SFX << 16 | ((sCurSfxPlayerChannelIdx & 0xFF) << 8) | 4,
                                 entry->sfxId & 0xFF);
                if (gIsLargeSfxBank[bankId]) {
                    Audio_QueueCmdS8(0x6 << 24 | SEQ_PLAYER_SFX << 16 | ((sCurSfxPlayerChannelIdx & 0xFF) << 8) | 5,
                                     (entry->sfxId & 0x100) >> 8);
                }
                if (entry->sfxId & 0xC00) {
                    entry->state = SFX_STATE_PLAYING_1;
                } else {
                    entry->state = SFX_STATE_PLAYING_2;
                }
            } else if ((u8)channel->soundScriptIO[1] == (u8)SEQ_IO_VAL_NONE) {
                Audio_RemoveSfxBankEntry(bankId, entryIndex);
            } else if (entry->state == SFX_STATE_PLAYING_REFRESH) {
                Audio_SetSfxProperties(bankId, entryIndex, sCurSfxPlayerChannelIdx);
                if (entry->sfxId & 0xC00) {
                    entry->state = SFX_STATE_PLAYING_1;
                } else {
                    entry->state = SFX_STATE_PLAYING_2;
                }
            }
        }
        sCurSfxPlayerChannelIdx++;
    }
}

void Audio_StopSfxByBank(u8 bankId) {
    SfxBankEntry* entry;
    s32 pad;
    SfxBankEntry cmp;
    u8 entryIndex = gSfxBanks[bankId][0].next;

    while (entryIndex != 0xFF) {
        entry = &gSfxBanks[bankId][entryIndex];
        if (entry->state >= SFX_STATE_PLAYING_REFRESH) {
            Audio_QueueCmdS8(0x6 << 24 | SEQ_PLAYER_SFX << 16 | ((entry->channelIdx & 0xFF) << 8), 0);
        }
        if (entry->state != SFX_STATE_EMPTY) {
            Audio_RemoveSfxBankEntry(bankId, entryIndex);
        }
        entryIndex = gSfxBanks[bankId][0].next;
    }
    cmp.sfxId = bankId << 12;
    Audio_RemoveMatchingSfxRequests(0, &cmp);
}

void func_800F8884(u8 bankId, Vec3f* pos) {
    SfxBankEntry* entry;
    u8 entryIndex = gSfxBanks[bankId][0].next;
    u8 prevEntryIndex = 0;

    while (entryIndex != 0xFF) {
        entry = &gSfxBanks[bankId][entryIndex];
        if (entry->posX == &pos->x) {
            if (entry->state >= SFX_STATE_PLAYING_REFRESH) {
                Audio_QueueCmdS8(0x6 << 24 | SEQ_PLAYER_SFX << 16 | ((entry->channelIdx & 0xFF) << 8), 0);
            }
            if (entry->state != SFX_STATE_EMPTY) {
                Audio_RemoveSfxBankEntry(bankId, entryIndex);
            }
        } else {
            prevEntryIndex = entryIndex;
        }
        entryIndex = gSfxBanks[bankId][prevEntryIndex].next;
    }
}

void Audio_StopSfxByPosAndBank(u8 bankId, Vec3f* pos) {
    SfxBankEntry cmp;

    func_800F8884(bankId, pos);
    cmp.sfxId = bankId << 12;
    cmp.posX = &pos->x;
    Audio_RemoveMatchingSfxRequests(1, &cmp);
}

void Audio_StopSfxByPos(Vec3f* pos) {
    u8 i;
    SfxBankEntry cmp;

    for (i = 0; i < ARRAY_COUNT(gSfxBanks); i++) {
        func_800F8884(i, pos);
    }
    cmp.posX = &pos->x;
    Audio_RemoveMatchingSfxRequests(2, &cmp);
}

void Audio_StopSfxByPosAndId(Vec3f* pos, u16 sfxId) {
    SfxBankEntry* entry;
    u8 entryIndex = gSfxBanks[SFX_BANK(sfxId)][0].next;
    u8 prevEntryIndex = 0;
    SfxBankEntry cmp;

    while (entryIndex != 0xFF) {
        entry = &gSfxBanks[SFX_BANK(sfxId)][entryIndex];
        if (entry->posX == &pos->x && entry->sfxId == sfxId) {
            if (entry->state >= SFX_STATE_PLAYING_REFRESH) {
                Audio_QueueCmdS8(0x6 << 24 | SEQ_PLAYER_SFX << 16 | ((entry->channelIdx & 0xFF) << 8), 0);
            }
            if (entry->state != SFX_STATE_EMPTY) {
                Audio_RemoveSfxBankEntry(SFX_BANK(sfxId), entryIndex);
            }
            entryIndex = 0xFF;
        } else {
            prevEntryIndex = entryIndex;
        }
        if (entryIndex != 0xFF) {
            entryIndex = gSfxBanks[SFX_BANK(sfxId)][prevEntryIndex].next;
        }
    }
    cmp.posX = &pos->x;
    cmp.sfxId = sfxId;
    Audio_RemoveMatchingSfxRequests(3, &cmp);
}

void Audio_StopSfxByTokenAndId(u8 token, u16 sfxId) {
    SfxBankEntry* entry;
    u8 entryIndex = gSfxBanks[SFX_BANK(sfxId)][0].next;
    u8 prevEntryIndex = 0;
    SfxBankEntry cmp;

    while (entryIndex != 0xFF) {
        entry = &gSfxBanks[SFX_BANK(sfxId)][entryIndex];
        if (entry->token == token && entry->sfxId == sfxId) {
            if (entry->state >= SFX_STATE_PLAYING_REFRESH) {
                Audio_QueueCmdS8(0x6 << 24 | SEQ_PLAYER_SFX << 16 | ((entry->channelIdx & 0xFF) << 8), 0);
            }
            if (entry->state != SFX_STATE_EMPTY) {
                Audio_RemoveSfxBankEntry(SFX_BANK(sfxId), entryIndex);
            }
        } else {
            prevEntryIndex = entryIndex;
        }
        if (entryIndex != 0xFF) {
            entryIndex = gSfxBanks[SFX_BANK(sfxId)][prevEntryIndex].next;
        }
    }
    cmp.token = token;
    cmp.sfxId = sfxId;
    Audio_RemoveMatchingSfxRequests(4, &cmp);
}

void Audio_StopSfxById(u32 sfxId) {
    SfxBankEntry* entry;
    u8 entryIndex = gSfxBanks[SFX_BANK(sfxId)][0].next;
    u8 prevEntryIndex = 0;
    SfxBankEntry cmp;

    while (entryIndex != 0xFF) {
        entry = &gSfxBanks[SFX_BANK(sfxId)][entryIndex];
        if (entry->sfxId == sfxId) {
            if (entry->state >= SFX_STATE_PLAYING_REFRESH) {
                Audio_QueueCmdS8(0x6 << 24 | SEQ_PLAYER_SFX << 16 | ((entry->channelIdx & 0xFF) << 8), 0);
            }
            if (entry->state != SFX_STATE_EMPTY) {
                Audio_RemoveSfxBankEntry(SFX_BANK(sfxId), entryIndex);
            }
        } else {
            prevEntryIndex = entryIndex;
        }
        entryIndex = gSfxBanks[SFX_BANK(sfxId)][prevEntryIndex].next;
    }
    cmp.sfxId = sfxId;
    Audio_RemoveMatchingSfxRequests(5, &cmp);
}

void Audio_ProcessSfxRequests(void) {
    while (gSfxRequestWriteIndex != gSfxRequestReadIndex) {
        Audio_ProcessSfxRequest();
        gSfxRequestReadIndex++;
    }
}

void Audio_SetUnusedBankLerp(u8 bankId, u8 target, u16 delay) {
    if (delay == 0) {
        delay++;
    }
    sUnusedBankLerp[bankId].target = target / 127.0f;
    sUnusedBankLerp[bankId].remainingFrames = delay;
    sUnusedBankLerp[bankId].step = ((sUnusedBankLerp[bankId].value - sUnusedBankLerp[bankId].target) / delay);
}

void Audio_StepUnusedBankLerp(u8 bankId) {
    if (sUnusedBankLerp[bankId].remainingFrames != 0) {
        sUnusedBankLerp[bankId].remainingFrames--;
        if (sUnusedBankLerp[bankId].remainingFrames != 0) {
            sUnusedBankLerp[bankId].value -= sUnusedBankLerp[bankId].step;
        } else {
            sUnusedBankLerp[bankId].value = sUnusedBankLerp[bankId].target;
        }
    }
}

void func_800F8F88(void) {
    u8 bankId;

    if (IS_SEQUENCE_CHANNEL_VALID(gAudioCtx.seqPlayers[SEQ_PLAYER_SFX].channels[0])) {
        sCurSfxPlayerChannelIdx = 0;
        for (bankId = 0; bankId < ARRAY_COUNT(gSfxBanks); bankId++) {
            Audio_ChooseActiveSfx(bankId);
            Audio_PlayActiveSfx(bankId);
            Audio_StepUnusedBankLerp(bankId);
        }
    }
}

u8 Audio_IsSfxPlaying(u32 sfxId) {
    SfxBankEntry* entry;
    u8 entryIndex = gSfxBanks[SFX_BANK(sfxId)][0].next;

    while (entryIndex != 0xFF) {
        entry = &gSfxBanks[SFX_BANK(sfxId)][entryIndex];
        if (entry->sfxId == sfxId) {
            return true;
        }
        entryIndex = entry->next;
    }
    return false;
}

void Audio_ResetSfx(void) {
    u8 bankId;
    u8 i;
    u8 entryIndex;

    gSfxRequestWriteIndex = 0;
    gSfxRequestReadIndex = 0;
    D_801333D0 = 0;
    for (bankId = 0; bankId < ARRAY_COUNT(gSfxBanks); bankId++) {
        sSfxBankListEnd[bankId] = 0;
        sSfxBankFreeListStart[bankId] = 1;
        sSfxBankUnused[bankId] = 0;
        gSfxBankMuted[bankId] = false;
        sUnusedBankLerp[bankId].value = 1.0f;
        sUnusedBankLerp[bankId].remainingFrames = 0;
    }
    for (bankId = 0; bankId < ARRAY_COUNT(gSfxBanks); bankId++) {
        for (i = 0; i < MAX_CHANNELS_PER_BANK; i++) {
            gActiveSfx[bankId][i].entryIndex = 0xFF;
        }
    }
    for (bankId = 0; bankId < ARRAY_COUNT(gSfxBanks); bankId++) {
        gSfxBanks[bankId][0].prev = 0xFF;
        gSfxBanks[bankId][0].next = 0xFF;
        for (i = 1; i < gSfxBankSizes[bankId] - 1; i++) {
            gSfxBanks[bankId][i].prev = i - 1;
            gSfxBanks[bankId][i].next = i + 1;
        }
        gSfxBanks[bankId][i].prev = i - 1;
        gSfxBanks[bankId][i].next = 0xFF;
    }
    if (D_801333F8 == 0) {
        for (bankId = 0; bankId < 10; bankId++) {
            gAudioSfxSwapSource[bankId] = 0;
            gAudioSfxSwapTarget[bankId] = 0;
            gAudioSfxSwapMode[bankId] = 0;
        }
        D_801333F8++;
    }
}
