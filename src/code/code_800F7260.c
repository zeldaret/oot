#include "ultra64.h"
#include "global.h"
#include "vt.h"

typedef struct {
    /* 0x00 */ u16 sfxId;
    /* 0x04 */ Vec3f* pos;
    /* 0x08 */ u8 token;
    /* 0x0C */ f32* freqScale;
    /* 0x10 */ f32* vol;
    /* 0x14 */ s8* reverbAdd;
} SoundRequest; // size = 0x18

typedef struct {
    /* 0x00 */ f32 unk_0;
    /* 0x04 */ f32 unk_4;
    /* 0x08 */ f32 unk_8;
    /* 0x0C */ u16 unk_C;
} Struct_800F8EA0; // size = 0x10

// rodata for Audio_ProcessSoundRequest (this file)
// (probably moved to .data due to -use_readwrite_const)
char D_80133340[] = "SE";

// rodata for func_800F7CEC (this file)
char D_80133344[] = VT_COL(RED, WHITE) "<INAGAKI CHECK> dist over! flag:%04X ptr:%08X pos:%f-%f-%f" VT_RST "\n";

// file padding
s32 D_8013338C = 0;

// rodata for Audio_ProcessSeqCmd (code_800F9280.c)
char D_80133390[] = "SEQ H";
char D_80133398[] = "    L";

// bss
extern SoundRequest sSoundRequests[0x100];
extern SoundBankEntry D_8016BAD0[9];
extern SoundBankEntry D_8016BC80[12];
extern SoundBankEntry D_8016BEC0[22];
extern SoundBankEntry D_8016C2E0[20];
extern SoundBankEntry D_8016C6A0[8];
extern SoundBankEntry D_8016C820[3];
extern SoundBankEntry D_8016C8B0[5];
extern u8 sSoundBankListEnd[7];
extern u8 sSoundBankFreeListStart[7];
extern u8 sSoundBankUnused[7];
extern u8 sCurSfxPlayerChannel;
extern Struct_800F8EA0 D_8016E270[7];

// data

// sSoundRequests ring buffer endpoints. read index <= write index, wrapping around mod 256.
u8 sSoundRequestWriteIndex = 0;
u8 sSoundRequestReadIndex = 0;

/**
 * Array of pointers to arrays of SoundBankEntry of sizes: 9, 12, 22, 20, 8, 3, 5
 *
 * 0 : Player Bank          size 9
 * 1 : Item Bank            size 12
 * 2 : Environment Bank     size 22
 * 3 : Enemy Bank           size 20
 * 4 : System Bank          size 8
 * 5 : Ocarina Bank         size 3
 * 6 : Voice Bank           size 5
 */
SoundBankEntry* gSoundBanks[7] = {
    D_8016BAD0, D_8016BC80, D_8016BEC0, D_8016C2E0, D_8016C6A0, D_8016C820, D_8016C8B0,
};

u8 sBankSizes[ARRAY_COUNT(gSoundBanks)] = {
    ARRAY_COUNT(D_8016BAD0), ARRAY_COUNT(D_8016BC80), ARRAY_COUNT(D_8016BEC0), ARRAY_COUNT(D_8016C2E0),
    ARRAY_COUNT(D_8016C6A0), ARRAY_COUNT(D_8016C820), ARRAY_COUNT(D_8016C8B0),
};

u8 gSfxChannelLayout = 0;

u16 D_801333D0 = 0;

Vec3f D_801333D4 = { 0.0f, 0.0f, 0.0f }; // default pos

f32 D_801333E0 = 1.0f; // default freqScale

s32 D_801333E4 = 0; // unused

s8 D_801333E8 = 0; // default reverbAdd

s32 D_801333EC = 0; // unused

u8 D_801333F0 = 0;

u8 gAudioSEFlagSwapOff = 0;

u8 D_801333F8 = 0;

void Audio_SetSoundBanksMute(u16 muteMask) {
    u8 bankId;

    for (bankId = 0; bankId < ARRAY_COUNT(gSoundBanks); bankId++) {
        if (muteMask & 1) {
            gSoundBankMuted[bankId] = true;
        } else {
            gSoundBankMuted[bankId] = false;
        }
        muteMask = muteMask >> 1;
    }
}

void Audio_QueueSeqCmdMute(u8 arg0) {
    D_801333D0 |= (1 << arg0);
    Audio_SetVolScale(0, 2, 0x40, 0xF);
    Audio_SetVolScale(3, 2, 0x40, 0xF);
}

void Audio_ClearBGMMute(u8 arg0) {
    D_801333D0 &= ((1 << arg0) ^ 0xFFFF);
    if (D_801333D0 == 0) {
        Audio_SetVolScale(0, 2, 0x7F, 0xF);
        Audio_SetVolScale(3, 2, 0x7F, 0xF);
    }
}

void Audio_PlaySoundGeneral(u16 sfxId, Vec3f* pos, u8 token, f32* freqScale, f32* vol, s8* reverbAdd) {
    u8 i;
    SoundRequest* req;

    if (!gSoundBankMuted[SFX_BANK_SHIFT(sfxId)]) {
        req = &sSoundRequests[sSoundRequestWriteIndex];
        if (!gAudioSEFlagSwapOff) {
            for (i = 0; i < 10; i++) {
                if (sfxId == gAudioSEFlagSwapSource[i]) {
                    if (gAudioSEFlagSwapMode[i] == 0) { // "SWAP"
                        sfxId = gAudioSEFlagSwapTarget[i];
                    } else { // "ADD"
                        req->sfxId = gAudioSEFlagSwapTarget[i];
                        req->pos = pos;
                        req->token = token;
                        req->freqScale = freqScale;
                        req->vol = vol;
                        req->reverbAdd = reverbAdd;
                        sSoundRequestWriteIndex++;
                        req = &sSoundRequests[sSoundRequestWriteIndex];
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
        sSoundRequestWriteIndex++;
    }
}

void Audio_RemoveMatchingSoundRequests(u8 aspect, SoundBankEntry* cmp) {
    SoundRequest* req;
    s32 remove;
    u8 i = sSoundRequestReadIndex;

    for (; i != sSoundRequestWriteIndex; i++) {
        remove = false;
        req = &sSoundRequests[i];
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
            req->sfxId = 0;
        }
    }
}

void Audio_ProcessSoundRequest(void) {
    u16 sfxId;
    u8 count;
    u8 index;
    SoundRequest* req;
    SoundBankEntry* entry;
    SoundParams* soundParams;
    s32 bankId;
    u8 evictImportance;
    u8 evictIndex;

    req = &sSoundRequests[sSoundRequestReadIndex];
    evictIndex = 0x80;
    if (req->sfxId == 0) {
        return;
    }
    bankId = SFX_BANK(req->sfxId);
    if ((1 << bankId) & D_801333F0) {
        AudioDebug_ScrPrt((const s8*)D_80133340, req->sfxId);
        bankId = SFX_BANK(req->sfxId);
    }
    count = 0;
    index = gSoundBanks[bankId][0].next;
    while (index != 0xFF && index != 0) {
        if (gSoundBanks[bankId][index].posX == &req->pos->x) {
            if ((gSoundParams[SFX_BANK_SHIFT(req->sfxId)][SFX_INDEX(req->sfxId)].params & 0x20) &&
                gSoundParams[SFX_BANK_SHIFT(req->sfxId)][SFX_INDEX(req->sfxId)].importance ==
                    gSoundBanks[bankId][index].sfxImportance) {
                return;
            }
            if (gSoundBanks[bankId][index].sfxId == req->sfxId) {
                count = gUsedChannelsPerBank[gSfxChannelLayout][bankId];
            } else {
                if (count == 0) {
                    evictIndex = index;
                    sfxId = gSoundBanks[bankId][index].sfxId & 0xFFFF;
                    evictImportance = gSoundParams[SFX_BANK_SHIFT(sfxId)][SFX_INDEX(sfxId)].importance;
                } else if (gSoundBanks[bankId][index].sfxImportance < evictImportance) {
                    evictIndex = index;
                    sfxId = gSoundBanks[bankId][index].sfxId & 0xFFFF;
                    evictImportance = gSoundParams[SFX_BANK_SHIFT(sfxId)][SFX_INDEX(sfxId)].importance;
                }
                count++;
                if (count == gUsedChannelsPerBank[gSfxChannelLayout][bankId]) {
                    if (gSoundParams[SFX_BANK_SHIFT(req->sfxId)][SFX_INDEX(req->sfxId)].importance >= evictImportance) {
                        index = evictIndex;
                    } else {
                        index = 0;
                    }
                }
            }
            if (count == gUsedChannelsPerBank[gSfxChannelLayout][bankId]) {
                soundParams = &gSoundParams[SFX_BANK_SHIFT(req->sfxId)][SFX_INDEX(req->sfxId)];
                if ((req->sfxId & 0xC00) || (soundParams->params & 4) || (index == evictIndex)) {
                    if ((gSoundBanks[bankId][index].sfxParams & 8) && gSoundBanks[bankId][index].state != SFX_STATE_QUEUED) {
                        Audio_ClearBGMMute(gSoundBanks[bankId][index].channel);
                    }
                    gSoundBanks[bankId][index].token = req->token;
                    gSoundBanks[bankId][index].sfxId = req->sfxId;
                    gSoundBanks[bankId][index].state = SFX_STATE_QUEUED;
                    gSoundBanks[bankId][index].freshness = 2;
                    gSoundBanks[bankId][index].freqScale = req->freqScale;
                    gSoundBanks[bankId][index].vol = req->vol;
                    gSoundBanks[bankId][index].reverbAdd = req->reverbAdd;
                    gSoundBanks[bankId][index].sfxParams = soundParams->params;
                    gSoundBanks[bankId][index].sfxImportance = soundParams->importance;
                } else if (gSoundBanks[bankId][index].state == SFX_STATE_PLAYING_2) {
                    gSoundBanks[bankId][index].state = SFX_STATE_PLAYING_1;
                }
                index = 0;
            }
        }
        if (index != 0) {
            index = gSoundBanks[bankId][index].next;
        }
    }
    if (gSoundBanks[bankId][sSoundBankFreeListStart[bankId]].next != 0xFF && index != 0) {
        index = sSoundBankFreeListStart[bankId];
        entry = &gSoundBanks[bankId][index];
        entry->posX = &req->pos->x;
        entry->posY = &req->pos->y;
        entry->posZ = &req->pos->z;
        entry->token = req->token;
        entry->freqScale = req->freqScale;
        entry->vol = req->vol;
        entry->reverbAdd = req->reverbAdd;
        soundParams = &gSoundParams[SFX_BANK_SHIFT(req->sfxId)][SFX_INDEX(req->sfxId)];
        entry->sfxParams = soundParams->params;
        entry->sfxImportance = soundParams->importance;
        entry->sfxId = req->sfxId;
        entry->state = SFX_STATE_QUEUED;
        entry->freshness = 2;
        entry->prev = sSoundBankListEnd[bankId];
        gSoundBanks[bankId][sSoundBankListEnd[bankId]].next = sSoundBankFreeListStart[bankId];
        sSoundBankListEnd[bankId] = sSoundBankFreeListStart[bankId];
        sSoundBankFreeListStart[bankId] = gSoundBanks[bankId][sSoundBankFreeListStart[bankId]].next;
        gSoundBanks[bankId][sSoundBankFreeListStart[bankId]].prev = 0xFF;
        entry->next = 0xFF;
    }
}

void Audio_RemoveSoundBankEntry(u8 bankId, u8 entryIndex) {
    SoundBankEntry* entry = &gSoundBanks[bankId][entryIndex];
    u8 i;

    if (entry->sfxParams & 8) {
        Audio_ClearBGMMute(entry->channel);
    }
    if (entryIndex == sSoundBankListEnd[bankId]) {
        sSoundBankListEnd[bankId] = entry->prev;
    } else {
        gSoundBanks[bankId][entry->next].prev = entry->prev;
    }
    gSoundBanks[bankId][entry->prev].next = entry->next;
    entry->next = sSoundBankFreeListStart[bankId];
    entry->prev = 0xFF;
    gSoundBanks[bankId][sSoundBankFreeListStart[bankId]].prev = entryIndex;
    sSoundBankFreeListStart[bankId] = entryIndex;
    entry->state = SFX_STATE_EMPTY;

    for (i = 0; i < gChannelsPerBank[gSfxChannelLayout][bankId]; i++) {
        if (D_8016E1B8[bankId][i].unk_4 == entryIndex) {
            D_8016E1B8[bankId][i].unk_4 = 0xFF;
            i = gChannelsPerBank[gSfxChannelLayout][bankId];
        }
    }
}

void func_800F7CEC(u8 bankId) {
    u8 phi_s3;
    u8 spAE;
    u8 phi_s4;
    u8 i;
    u8 j;
    u8 phi_s0;
    u8 sfxImportance;
    u8 phi_v1_5;
    u8 temp2;
    u16 temp3;
    f32 tempf1;
    SoundBankEntry* entry;
    Struct_800F7CEC sp84[MAX_CHANNELS_PER_BANK];
    Struct_800F7CEC* temp_s4_3;
    s32 pad;

    phi_s3 = 0;
    for (i = 0; i < MAX_CHANNELS_PER_BANK; i++) {
        sp84[i].priority = 0x7FFFFFFF;
        sp84[i].unk_4 = 0xFF;
    }
    phi_s4 = gSoundBanks[bankId][0].next;
    phi_s0 = 0;
    while (phi_s4 != 0xFF) {
        if ((gSoundBanks[bankId][phi_s4].state == SFX_STATE_QUEUED) && (gSoundBanks[bankId][phi_s4].sfxId & 0xC00)) {
            gSoundBanks[bankId][phi_s4].freshness--;
        } else if (!(gSoundBanks[bankId][phi_s4].sfxId & 0xC00) && (gSoundBanks[bankId][phi_s4].state == SFX_STATE_PLAYING_2)) {
            Audio_QueueCmdS8((gSoundBanks[bankId][phi_s4].channel << 8) | 0x6020000, 0);
            Audio_RemoveSoundBankEntry(bankId, phi_s4);
        }
        if (gSoundBanks[bankId][phi_s4].freshness == 0) {
            Audio_RemoveSoundBankEntry(bankId, phi_s4);
        } else if (gSoundBanks[bankId][phi_s4].state != SFX_STATE_EMPTY) {
            entry = &gSoundBanks[bankId][phi_s4];

            if (&D_801333D4.x == entry[0].posX) {
                entry->dist = 0.0f;
            } else {
                tempf1 = *entry->posY * 1;
                entry->dist = (SQ(*entry->posX) + SQ(tempf1) + SQ(*entry->posZ)) * 1;
            }
            sfxImportance = entry->sfxImportance;
            if (entry->sfxParams & 0x10) {
                entry->priority = SQ(0xFF - sfxImportance) * SQ(76);
            } else {
                if (entry->dist > 0x7FFFFFD0) {
                    entry->dist = 0x70000008;
                    osSyncPrintf(D_80133344, entry->sfxId, entry->posX, entry->posZ, *entry->posX, *entry->posY,
                                 *entry->posZ);
                }
                temp3 = entry->sfxId;
                entry->priority = (u32)entry->dist + (SQ(0xFF - sfxImportance) * SQ(76)) + temp3 - temp3;
                if (*entry->posZ < 0.0f) {
                    entry->priority += (s32)(-*entry->posZ * 6.0f);
                }
            }
            if (entry->dist > SQ(1e5f)) {
                if (entry->state == SFX_STATE_PLAYING_1) {
                    Audio_QueueCmdS8((entry->channel << 8) | 0x6020000, 0);
                    if (entry->sfxId & 0xC00) {
                        Audio_RemoveSoundBankEntry(bankId, phi_s4);
                        phi_s4 = phi_s0;
                    }
                }
            } else {
                spAE = gChannelsPerBank[gSfxChannelLayout][bankId];
                for (i = 0; i < spAE; i++) {
                    if (sp84[i].priority >= entry->priority) {
                        if (phi_s3 < gChannelsPerBank[gSfxChannelLayout][bankId]) {
                            phi_s3++;
                        }
                        for (j = spAE - 1; j > i; j--) {
                            sp84[j].priority = sp84[j - 1].priority;
                            sp84[j].unk_4 = sp84[j - 1].unk_4;
                        }
                        sp84[i].priority = entry->priority;
                        sp84[i].unk_4 = phi_s4;
                        i = spAE; // "break;"
                    }
                }
            }
            phi_s0 = phi_s4;
        }
        phi_s4 = gSoundBanks[bankId][phi_s0].next;
    }
    for (i = 0; i < phi_s3; i++) {
        entry = &gSoundBanks[bankId][sp84[i].unk_4];
        if (entry->state == SFX_STATE_QUEUED) {
            entry->state = SFX_STATE_READY;
        } else if (entry->state == SFX_STATE_PLAYING_1) {
            entry->state = SFX_STATE_PLAYING_REFRESH;
        }
    }

    spAE = gChannelsPerBank[gSfxChannelLayout][bankId];
    for (i = 0; i < spAE; i++) {
        phi_v1_5 = 0;
        temp_s4_3 = &D_8016E1B8[bankId][i];

        if (temp_s4_3->unk_4 == 0xFF) {
            phi_v1_5 = 1;
        } else {
            entry = &gSoundBanks[bankId][temp_s4_3[0].unk_4];
            if (entry->state == SFX_STATE_PLAYING_1) {
                if (entry->sfxId & 0xC00) {
                    Audio_RemoveSoundBankEntry(bankId, temp_s4_3->unk_4);
                } else {
                    entry->state = SFX_STATE_QUEUED;
                }
                phi_v1_5 = 1;
            } else if (entry->state == SFX_STATE_EMPTY) {
                temp_s4_3->unk_4 = 0xFF;
                phi_v1_5 = 1;
            } else {
                for (j = 0; j < spAE; j++) {
                    if (temp_s4_3->unk_4 == sp84[j].unk_4) {
                        sp84[j].unk_4 = 0xFF;
                        j = spAE;
                    }
                }
                phi_s3--;
            }
        }

        if (phi_v1_5 == 1) {
            for (j = 0; j < spAE; j++) {
                temp2 = sp84[j].unk_4;
                if ((temp2 != 0xFF) && (gSoundBanks[bankId][temp2].state != SFX_STATE_PLAYING_REFRESH)) {
                    for (phi_s0 = 0; phi_s0 < spAE; phi_s0++) {
                        if (temp2 == D_8016E1B8[bankId][phi_s0].unk_4) {
                            phi_v1_5 = 0;
                            phi_s0 = spAE;
                        }
                    }
                    if (phi_v1_5 == 1) {
                        temp_s4_3->unk_4 = temp2;

                        sp84[j].unk_4 = 0xFF;

                        j = spAE + 1;
                        phi_s3--;
                    }
                }
            }
            if (j == spAE) {
                temp_s4_3->unk_4 = 0xFF;
            }
        }
    }
}

void func_800F8480(u8 bankId) {
    u8 entryIndex;
    SequenceChannel* seqChannel;
    SoundBankEntry* entry;
    u8 i;

    for (i = 0; i < gChannelsPerBank[gSfxChannelLayout][bankId]; i++) {
        entryIndex = D_8016E1B8[bankId][i].unk_4;
        if (entryIndex != 0xFF) {
            entry = &gSoundBanks[bankId][entryIndex];
            seqChannel = gAudioContext.seqPlayers[2].channels[sCurSfxPlayerChannel];
            if (entry->state == SFX_STATE_READY) {
                entry->channel = sCurSfxPlayerChannel;
                if (entry->sfxParams & 8) {
                    Audio_QueueSeqCmdMute(sCurSfxPlayerChannel);
                }
                if (entry->sfxParams & 0xC0) {
                    switch (entry->sfxParams & 0xC0) {
                        case 0x40:
                            entry->unk_2F = Audio_NextRandom() & 0xF;
                            break;
                        case 0x80:
                            entry->unk_2F = Audio_NextRandom() & 0x1F;
                            break;
                        case 0xC0:
                            entry->unk_2F = Audio_NextRandom() & 0x3F;
                            break;
                        default:
                            entry->unk_2F = 0;
                            break;
                    }
                }
                Audio_SetSoundProperties(bankId, entryIndex, sCurSfxPlayerChannel);
                Audio_QueueCmdS8(0x06020000 | ((sCurSfxPlayerChannel & 0xFF) << 8), 1);
                Audio_QueueCmdS8(0x06020000 | ((sCurSfxPlayerChannel & 0xFF) << 8) | 4, entry->sfxId & 0xFF);
                if (gIsLargeSoundBank[bankId]) {
                    Audio_QueueCmdS8(0x06020000 | ((sCurSfxPlayerChannel & 0xFF) << 8) | 5, (entry->sfxId & 0x100) >> 8);
                }
                if (entry->sfxId & 0xC00) {
                    entry->state = SFX_STATE_PLAYING_1;
                } else {
                    entry->state = SFX_STATE_PLAYING_2;
                }
            } else if ((u8)seqChannel->soundScriptIO[1] == 0xFF) {
                Audio_RemoveSoundBankEntry(bankId, entryIndex);
            } else if (entry->state == SFX_STATE_PLAYING_REFRESH) {
                Audio_SetSoundProperties(bankId, entryIndex, sCurSfxPlayerChannel);
                if (entry->sfxId & 0xC00) {
                    entry->state = SFX_STATE_PLAYING_1;
                } else {
                    entry->state = SFX_STATE_PLAYING_2;
                }
            }
        }
        sCurSfxPlayerChannel++;
    }
}

void Audio_StopSfxByBank(u8 bankId) {
    SoundBankEntry* entry;
    s32 pad;
    SoundBankEntry cmp;
    u8 entryIndex = gSoundBanks[bankId][0].next;

    while (entryIndex != 0xFF) {
        entry = &gSoundBanks[bankId][entryIndex];
        if (entry->state >= SFX_STATE_PLAYING_REFRESH) {
            Audio_QueueCmdS8(0x06020000 | ((entry->channel & 0xFF) << 8), 0);
        }
        if (entry->state != SFX_STATE_EMPTY) {
            Audio_RemoveSoundBankEntry(bankId, entryIndex);
        }
        entryIndex = gSoundBanks[bankId][0].next;
    }
    cmp.sfxId = bankId << 12;
    Audio_RemoveMatchingSoundRequests(0, &cmp);
}

void func_800F8884(u8 bankId, Vec3f* pos) {
    SoundBankEntry* entry;
    u8 entryIndex = gSoundBanks[bankId][0].next;
    u8 prevEntryIndex = 0;

    while (entryIndex != 0xFF) {
        entry = &gSoundBanks[bankId][entryIndex];
        if (entry->posX == &pos->x) {
            if (entry->state >= SFX_STATE_PLAYING_REFRESH) {
                Audio_QueueCmdS8(0x06020000 | ((entry->channel & 0xFF) << 8), 0);
            }
            if (entry->state != SFX_STATE_EMPTY) {
                Audio_RemoveSoundBankEntry(bankId, entryIndex);
            }
        } else {
            prevEntryIndex = entryIndex;
        }
        entryIndex = gSoundBanks[bankId][prevEntryIndex].next;
    }
}

void Audio_StopSfxByPosAndBank(u8 bankId, Vec3f* pos) {
    SoundBankEntry cmp;

    func_800F8884(bankId, pos);
    cmp.sfxId = bankId << 12;
    cmp.posX = &pos->x;
    Audio_RemoveMatchingSoundRequests(1, &cmp);
}

void Audio_StopSfxByPos(Vec3f* pos) {
    u8 i;
    SoundBankEntry cmp;

    for (i = 0; i < ARRAY_COUNT(gSoundBanks); i++) {
        func_800F8884(i, pos);
    }
    cmp.posX = &pos->x;
    Audio_RemoveMatchingSoundRequests(2, &cmp);
}

void Audio_StopSfxByPosAndId(Vec3f* pos, u16 sfxId) {
    SoundBankEntry* entry;
    u8 entryIndex = gSoundBanks[SFX_BANK(sfxId)][0].next;
    u8 prevEntryIndex = 0;
    SoundBankEntry cmp;

    while (entryIndex != 0xFF) {
        entry = &gSoundBanks[SFX_BANK(sfxId)][entryIndex];
        if (entry->posX == &pos->x && entry->sfxId == sfxId) {
            if (entry->state >= SFX_STATE_PLAYING_REFRESH) {
                Audio_QueueCmdS8(0x06020000 | ((entry->channel & 0xFF) << 8), 0);
            }
            if (entry->state != SFX_STATE_EMPTY) {
                Audio_RemoveSoundBankEntry(SFX_BANK(sfxId), entryIndex);
            }
            entryIndex = 0xFF;
        } else {
            prevEntryIndex = entryIndex;
        }
        if (entryIndex != 0xFF) {
            entryIndex = gSoundBanks[SFX_BANK(sfxId)][prevEntryIndex].next;
        }
    }
    cmp.posX = &pos->x;
    cmp.sfxId = sfxId;
    Audio_RemoveMatchingSoundRequests(3, &cmp);
}

void Audio_StopSfxByTokenAndId(u8 token, u16 sfxId) {
    SoundBankEntry* entry;
    u8 entryIndex = gSoundBanks[SFX_BANK(sfxId)][0].next;
    u8 prevEntryIndex = 0;
    SoundBankEntry cmp;

    while (entryIndex != 0xFF) {
        entry = &gSoundBanks[SFX_BANK(sfxId)][entryIndex];
        if (entry->token == token && entry->sfxId == sfxId) {
            if (entry->state >= SFX_STATE_PLAYING_REFRESH) {
                Audio_QueueCmdS8(0x06020000 | ((entry->channel & 0xFF) << 8), 0);
            }
            if (entry->state != SFX_STATE_EMPTY) {
                Audio_RemoveSoundBankEntry(SFX_BANK(sfxId), entryIndex);
            }
        } else {
            prevEntryIndex = entryIndex;
        }
        if (entryIndex != 0xFF) {
            entryIndex = gSoundBanks[SFX_BANK(sfxId)][prevEntryIndex].next;
        }
    }
    cmp.token = token;
    cmp.sfxId = sfxId;
    Audio_RemoveMatchingSoundRequests(4, &cmp);
}

void Audio_StopSfxById(u32 sfxId) {
    SoundBankEntry* entry;
    u8 entryIndex = gSoundBanks[SFX_BANK(sfxId)][0].next;
    u8 prevEntryIndex = 0;
    SoundBankEntry cmp;

    while (entryIndex != 0xFF) {
        entry = &gSoundBanks[SFX_BANK(sfxId)][entryIndex];
        if (entry->sfxId == sfxId) {
            if (entry->state >= SFX_STATE_PLAYING_REFRESH) {
                Audio_QueueCmdS8(0x06020000 | ((entry->channel & 0xFF) << 8), 0);
            }
            if (entry->state != SFX_STATE_EMPTY) {
                Audio_RemoveSoundBankEntry(SFX_BANK(sfxId), entryIndex);
            }
        } else {
            prevEntryIndex = entryIndex;
        }
        entryIndex = gSoundBanks[SFX_BANK(sfxId)][prevEntryIndex].next;
    }
    cmp.sfxId = sfxId;
    Audio_RemoveMatchingSoundRequests(5, &cmp);
}

void Audio_ProcessSoundRequests(void) {
    while (sSoundRequestWriteIndex != sSoundRequestReadIndex) {
        Audio_ProcessSoundRequest();
        sSoundRequestReadIndex++;
    }
}

void func_800F8EA0(u8 bankId, u8 arg1, u16 arg2) {
    if (arg2 == 0) {
        arg2++;
    }
    D_8016E270[bankId].unk_4 = arg1 / 127.0f;
    D_8016E270[bankId].unk_C = arg2;
    D_8016E270[bankId].unk_8 = ((D_8016E270[bankId].unk_0 - D_8016E270[bankId].unk_4) / arg2);
}

void func_800F8F34(u8 bankId) {
    if (D_8016E270[bankId].unk_C != 0) {
        D_8016E270[bankId].unk_C--;
        if (D_8016E270[bankId].unk_C != 0) {
            D_8016E270[bankId].unk_0 -= D_8016E270[bankId].unk_8;
        } else {
            D_8016E270[bankId].unk_0 = D_8016E270[bankId].unk_4;
        }
    }
}

void func_800F8F88(void) {
    u8 bankId;

    if (IS_SEQUENCE_CHANNEL_VALID(gAudioContext.seqPlayers[2].channels[0])) {
        sCurSfxPlayerChannel = 0;
        for (bankId = 0; bankId < ARRAY_COUNT(gSoundBanks); bankId++) {
            func_800F7CEC(bankId);
            func_800F8480(bankId);
            func_800F8F34(bankId);
        }
    }
}

u8 Audio_IsSfxPlaying(u32 sfxId) {
    SoundBankEntry* entry;
    u8 entryIndex = gSoundBanks[SFX_BANK(sfxId)][0].next;

    while (entryIndex != 0xFF) {
        entry = &gSoundBanks[SFX_BANK(sfxId)][entryIndex];
        if (entry->sfxId == sfxId) {
            return true;
        }
        entryIndex = entry->next;
    }
    return false;
}

void func_800F905C(void) {
    u8 bankId;
    u8 i;
    u8 entryIndex;

    sSoundRequestWriteIndex = 0;
    sSoundRequestReadIndex = 0;
    D_801333D0 = 0;
    for (bankId = 0; bankId < ARRAY_COUNT(gSoundBanks); bankId++) {
        sSoundBankListEnd[bankId] = 0;
        sSoundBankFreeListStart[bankId] = 1;
        sSoundBankUnused[bankId] = 0;
        gSoundBankMuted[bankId] = false;
        D_8016E270[bankId].unk_0 = 1.0f;
        D_8016E270[bankId].unk_C = 0;
    }
    for (bankId = 0; bankId < ARRAY_COUNT(gSoundBanks); bankId++) {
        for (i = 0; i < MAX_CHANNELS_PER_BANK; i++) {
            D_8016E1B8[bankId][i].unk_4 = 0xFF;
        }
    }
    for (bankId = 0; bankId < ARRAY_COUNT(gSoundBanks); bankId++) {
        gSoundBanks[bankId][0].prev = 0xFF;
        gSoundBanks[bankId][0].next = 0xFF;
        for (i = 1; i < sBankSizes[bankId] - 1; i++) {
            gSoundBanks[bankId][i].prev = i - 1;
            gSoundBanks[bankId][i].next = i + 1;
        }
        gSoundBanks[bankId][i].prev = i - 1;
        gSoundBanks[bankId][i].next = 0xFF;
    }
    if (D_801333F8 == 0) {
        for (bankId = 0; bankId < 10; bankId++) {
            gAudioSEFlagSwapSource[bankId] = 0;
            gAudioSEFlagSwapTarget[bankId] = 0;
            gAudioSEFlagSwapMode[bankId] = 0;
        }
        D_801333F8++;
    }
}
