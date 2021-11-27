#include "ultra64.h"
#include "global.h"
#include "ultra64/abi.h"

extern u8 sNumSeqRequests[4];
extern u32 sAudioSeqCmds[0x100];
extern u8 sSeqCmdReadPos;
extern u8 sSeqCmdWritePos;
extern u8 D_80133408;
extern u8 D_80133418;
extern u8 D_80133410[];

// TODO: clean up these macros. They are similar to ones in code_800EC960.c but without casts.
#define Audio_StartSeq(playerIdx, fadeTimer, seqId) \
    Audio_QueueSeqCmd(0x00000000 | ((playerIdx) << 24) | ((fadeTimer) << 16) | (seqId))
#define Audio_SeqCmdA(playerIdx, a) Audio_QueueSeqCmd(0xA0000000 | ((playerIdx) << 24) | (a))
#define Audio_SeqCmdB30(playerIdx, a, b) Audio_QueueSeqCmd(0xB0003000 | ((playerIdx) << 24) | ((a) << 16) | (b))
#define Audio_SeqCmdB40(playerIdx, a, b) Audio_QueueSeqCmd(0xB0004000 | ((playerIdx) << 24) | ((a) << 16) | (b))
#define Audio_SeqCmd3(playerIdx, a) Audio_QueueSeqCmd(0x30000000 | ((playerIdx) << 24) | (a))
#define Audio_SeqCmd5(playerIdx, a, b) Audio_QueueSeqCmd(0x50000000 | ((playerIdx) << 24) | ((a) << 16) | (b))
#define Audio_SeqCmd4(playerIdx, a, b) Audio_QueueSeqCmd(0x40000000 | ((playerIdx) << 24) | ((a) << 16) | (b))
#define Audio_SetVolScaleNow(playerIdx, volFadeTimer, volScale) \
    Audio_ProcessSeqCmd(0x40000000 | ((u8)playerIdx << 24) | ((u8)volFadeTimer << 16) | ((u8)(volScale * 127.0f)));

void func_800F9280(u8 playerIdx, u8 seqId, u8 arg2, u16 fadeTimer) {
    u8 channelIdx;
    u16 dur;
    s32 pad;

    if (D_80133408 == 0 || playerIdx == 2) {
        arg2 &= 0x7F;
        if (arg2 == 0x7F) {
            dur = (fadeTimer >> 3) * 60 * gAudioContext.audioBufferParameters.updatesPerFrame;
            Audio_QueueCmdS32(0x85000000 | _SHIFTL(playerIdx, 16, 8) | _SHIFTL(seqId, 8, 8), dur);
        } else {
            Audio_QueueCmdS32(0x82000000 | _SHIFTL(playerIdx, 16, 8) | _SHIFTL(seqId, 8, 8),
                              (fadeTimer * (u16)gAudioContext.audioBufferParameters.updatesPerFrame) / 4);
        }

        gActiveSeqs[playerIdx].seqId = seqId | (arg2 << 8);
        gActiveSeqs[playerIdx].prevSeqId = seqId | (arg2 << 8);

        if (gActiveSeqs[playerIdx].volCur != 1.0f) {
            Audio_QueueCmdF32(0x41000000 | _SHIFTL(playerIdx, 16, 8), gActiveSeqs[playerIdx].volCur);
        }

        gActiveSeqs[playerIdx].tempoDuration = 0;
        gActiveSeqs[playerIdx].tempoDefault = 0;
        gActiveSeqs[playerIdx].tempoCmd = 0;

        for (channelIdx = 0; channelIdx < 16; channelIdx++) {
            gActiveSeqs[playerIdx].channelData[channelIdx].volCur = 1.0f;
            gActiveSeqs[playerIdx].channelData[channelIdx].volDuration = 0;
            gActiveSeqs[playerIdx].channelData[channelIdx].freqScaleCur = 1.0f;
            gActiveSeqs[playerIdx].channelData[channelIdx].freqScaleDuration = 0;
        }

        gActiveSeqs[playerIdx].freqScaleChannelFlags = 0;
        gActiveSeqs[playerIdx].volChannelFlags = 0;
    }
}

void func_800F9474(u8 arg0, u16 arg1) {
    Audio_QueueCmdS32(0x83000000 | ((u8)arg0 << 16),
                      (arg1 * (u16)gAudioContext.audioBufferParameters.updatesPerFrame) / 4);
    gActiveSeqs[arg0].seqId = NA_BGM_DISABLED;
}

typedef enum {
    SEQ_START,
    CMD1,
    CMD2,
    CMD3,
    SEQ_VOL_UPD,
    CMD5,
    CMD6,
    CMD7,
    CMD8,
    CMD9,
    CMDA,
    CMDB,
    CMDC,
    CMDD,
    CMDE,
    CMDF
} SeqCmdType;

typedef struct {
    u8 unk_0;
    u8 unk_1; // importance?
} Struct_8016E320;
extern Struct_8016E320 D_8016E320[][5]; // sorted by unk_1, descending

void Audio_ProcessSeqCmd(u32 cmd) {
    s32 pad[2];
    u16 fadeTimer;
    u16 channelMask;
    u16 val;
    u8 oldSpec;
    u8 spec;
    u8 op;
    u8 subOp;
    u8 playerIdx;
    u8 seqId;
    u8 seqArgs;
    u8 found;
    u8 port;
    u8 duration;
    u8 channelIdx;
    u8 i;
    s32 new_var;
    f32 freqScale;

    if (D_8013340C && (cmd & 0xF0000000) != 0x70000000) {
        AudioDebug_ScrPrt((const s8*)D_80133390, (cmd >> 16) & 0xFFFF); // "SEQ H"
        AudioDebug_ScrPrt((const s8*)D_80133398, cmd & 0xFFFF);         // "    L"
    }

    op = cmd >> 28;
    playerIdx = (cmd & 0xF000000) >> 24;

    switch (op) {
        case 0x0:
            // play sequence immediately
            seqId = cmd & 0xFF;
            seqArgs = (cmd & 0xFF00) >> 8;
            fadeTimer = (cmd & 0xFF0000) >> 13;
            if (!gActiveSeqs[playerIdx].isWaitingForFonts && (seqArgs < 0x80)) {
                func_800F9280(playerIdx, seqId, seqArgs, fadeTimer);
            }
            break;

        case 0x1:
            // disable seq player
            fadeTimer = (cmd & 0xFF0000) >> 13;
            func_800F9474(playerIdx, fadeTimer);
            break;

        case 0x2:
            // queue sequence
            seqId = cmd & 0xFF;
            seqArgs = (cmd & 0xFF00) >> 8;
            fadeTimer = (cmd & 0xFF0000) >> 13;
            new_var = seqArgs;
            for (i = 0; i < sNumSeqRequests[playerIdx]; i++) {
                if (D_8016E320[playerIdx][i].unk_0 == seqId) {
                    if (i == 0) {
                        func_800F9280(playerIdx, seqId, seqArgs, fadeTimer);
                    }
                    return;
                }
            }

            found = sNumSeqRequests[playerIdx];
            for (i = 0; i < sNumSeqRequests[playerIdx]; i++) {
                if (D_8016E320[playerIdx][i].unk_1 <= new_var) {
                    found = i;
                    i = sNumSeqRequests[playerIdx]; // "break;"
                }
            }

            if (sNumSeqRequests[playerIdx] < 5) {
                sNumSeqRequests[playerIdx]++;
            }
            for (i = sNumSeqRequests[playerIdx] - 1; i != found; i--) {
                D_8016E320[playerIdx][i].unk_1 = D_8016E320[playerIdx][i - 1].unk_1;
                D_8016E320[playerIdx][i].unk_0 = D_8016E320[playerIdx][i - 1].unk_0;
            }
            D_8016E320[playerIdx][found].unk_1 = seqArgs;
            D_8016E320[playerIdx][found].unk_0 = seqId;

            if (found == 0) {
                func_800F9280(playerIdx, seqId, seqArgs, fadeTimer);
            }
            break;

        case 0x3:
            // unqueue/stop sequence
            seqId = cmd & 0xFF;
            fadeTimer = (cmd & 0xFF0000) >> 13;

            found = sNumSeqRequests[playerIdx];
            for (i = 0; i < sNumSeqRequests[playerIdx]; i++) {
                if (D_8016E320[playerIdx][i].unk_0 == seqId) {
                    found = i;
                    i = sNumSeqRequests[playerIdx]; // "break;"
                }
            }

            if (found != sNumSeqRequests[playerIdx]) {
                for (i = found; i < sNumSeqRequests[playerIdx] - 1; i++) {
                    D_8016E320[playerIdx][i].unk_1 = D_8016E320[playerIdx][i + 1].unk_1;
                    D_8016E320[playerIdx][i].unk_0 = D_8016E320[playerIdx][i + 1].unk_0;
                }
                sNumSeqRequests[playerIdx]--;
            }

            if (found == 0) {
                func_800F9474(playerIdx, fadeTimer);
                if (sNumSeqRequests[playerIdx] != 0) {
                    func_800F9280(playerIdx, D_8016E320[playerIdx][0].unk_0, D_8016E320[playerIdx][0].unk_1, fadeTimer);
                }
            }
            break;

        case 0x4:
            // transition seq volume
            duration = (cmd & 0xFF0000) >> 15;
            val = cmd & 0xFF;
            if (duration == 0) {
                duration++;
            }
            gActiveSeqs[playerIdx].volTarget = (f32)val / 127.0f;
            if (gActiveSeqs[playerIdx].volCur != gActiveSeqs[playerIdx].volTarget) {
                gActiveSeqs[playerIdx].volVelocity =
                    (gActiveSeqs[playerIdx].volCur - gActiveSeqs[playerIdx].volTarget) / (f32)duration;
                gActiveSeqs[playerIdx].volDuration = duration;
            }
            break;

        case 0x5:
            // transition freq scale for all channels
            duration = (cmd & 0xFF0000) >> 15;
            val = cmd & 0xFFFF;
            if (duration == 0) {
                duration++;
            }
            freqScale = (f32)val / 1000.0f;
            for (i = 0; i < 16; i++) {
                gActiveSeqs[playerIdx].channelData[i].freqScaleTarget = freqScale;
                gActiveSeqs[playerIdx].channelData[i].freqScaleDuration = duration;
                gActiveSeqs[playerIdx].channelData[i].freqScaleVelocity =
                    (gActiveSeqs[playerIdx].channelData[i].freqScaleCur - freqScale) / (f32)duration;
            }
            gActiveSeqs[playerIdx].freqScaleChannelFlags = 0xFFFF;
            break;

        case 0xD:
            // transition freq scale
            duration = (cmd & 0xFF0000) >> 15;
            channelIdx = (cmd & 0xF000) >> 12;
            val = cmd & 0xFFF;
            if (duration == 0) {
                duration++;
            }
            freqScale = (f32)val / 1000.0f;
            gActiveSeqs[playerIdx].channelData[channelIdx].freqScaleTarget = freqScale;
            gActiveSeqs[playerIdx].channelData[channelIdx].freqScaleVelocity =
                (gActiveSeqs[playerIdx].channelData[channelIdx].freqScaleCur - freqScale) / (f32)duration;
            gActiveSeqs[playerIdx].channelData[channelIdx].freqScaleDuration = duration;
            gActiveSeqs[playerIdx].freqScaleChannelFlags |= 1 << channelIdx;
            break;

        case 0x6:
            // transition vol scale
            duration = (cmd & 0xFF0000) >> 15;
            channelIdx = (cmd & 0xF00) >> 8;
            val = cmd & 0xFF;
            if (duration == 0) {
                duration++;
            }
            gActiveSeqs[playerIdx].channelData[channelIdx].volTarget = (f32)val / 127.0f;
            if (gActiveSeqs[playerIdx].channelData[channelIdx].volCur != gActiveSeqs[playerIdx].channelData[channelIdx].volTarget) {
                gActiveSeqs[playerIdx].channelData[channelIdx].volVelocity =
                    (gActiveSeqs[playerIdx].channelData[channelIdx].volCur - gActiveSeqs[playerIdx].channelData[channelIdx].volTarget) /
                    (f32)duration;
                gActiveSeqs[playerIdx].channelData[channelIdx].volDuration = duration;
                gActiveSeqs[playerIdx].volChannelFlags |= 1 << channelIdx;
            }
            break;

        case 0x7:
            // set global io port
            port = (cmd & 0xFF0000) >> 16;
            val = cmd & 0xFF;
            Audio_QueueCmdS8(0x46000000 | _SHIFTL(playerIdx, 16, 8) | _SHIFTL(port, 0, 8), val);
            break;

        case 0x8:
            // set io port if channel masked
            channelIdx = (cmd & 0xF00) >> 8;
            port = (cmd & 0xFF0000) >> 16;
            val = cmd & 0xFF;
            if ((gActiveSeqs[playerIdx].channelPortMask & (1 << channelIdx)) == 0) {
                Audio_QueueCmdS8(0x06000000 | _SHIFTL(playerIdx, 16, 8) | _SHIFTL(channelIdx, 8, 8) | _SHIFTL(port, 0, 8),
                                 val);
            }
            break;

        case 0x9:
            // set channel mask for command 0x8
            gActiveSeqs[playerIdx].channelPortMask = cmd & 0xFFFF;
            break;

        case 0xA:
            // set channel stop mask
            channelMask = cmd & 0xFFFF;
            if (channelMask != 0) {
                // with channel mask channelMask...
                Audio_QueueCmdU16(0x90000000 | _SHIFTL(playerIdx, 16, 8), channelMask);
                // stop channels
                Audio_QueueCmdS8(0x08000000 | _SHIFTL(playerIdx, 16, 8) | 0xFF00, 1);
            }
            if ((channelMask ^ 0xFFFF) != 0) {
                // with channel mask ~channelMask...
                Audio_QueueCmdU16(0x90000000 | _SHIFTL(playerIdx, 16, 8), (channelMask ^ 0xFFFF));
                // unstop channels
                Audio_QueueCmdS8(0x08000000 | _SHIFTL(playerIdx, 16, 8) | 0xFF00, 0);
            }
            break;

        case 0xB:
            // update tempo
            gActiveSeqs[playerIdx].tempoCmd = cmd;
            break;

        case 0xC:
            // start sequence with setup commands
            subOp = (cmd & 0xF00000) >> 20;
            if (subOp != 0xF) {
                if (gActiveSeqs[playerIdx].setupCmdNum < 7) {
                    found = gActiveSeqs[playerIdx].setupCmdNum++;
                    if (found < 8) {
                        gActiveSeqs[playerIdx].setupCmd[found] = cmd;
                        gActiveSeqs[playerIdx].setupCmdTimer = 2;
                    }
                }
            } else {
                gActiveSeqs[playerIdx].setupCmdNum = 0;
            }
            break;

        case 0xE:
            subOp = (cmd & 0xF00) >> 8;
            val = cmd & 0xFF;
            switch (subOp) {
                case 0:
                    // set sound mode
                    Audio_QueueCmdS32(0xF0000000, D_80133410[val]);
                    break;
                case 1:
                    // set sequence starting disabled?
                    D_80133408 = val & 1;
                    break;
            }
            break;

        case 0xF:
            // change spec
            spec = cmd & 0xFF;
            gSfxChannelLayout = (cmd & 0xFF00) >> 8;
            oldSpec = gAudioSpecId;
            gAudioSpecId = spec;
            func_800E5F88(spec);
            func_800F71BC(oldSpec);
            Audio_QueueCmdS32(0xF8000000, 0);
            break;
    }
}

void Audio_QueueSeqCmd(u32 cmd) {
    sAudioSeqCmds[sSeqCmdWritePos++] = cmd;
}

void Audio_ProcessSeqCmds(void) {
    while (sSeqCmdWritePos != sSeqCmdReadPos) {
        Audio_ProcessSeqCmd(sAudioSeqCmds[sSeqCmdReadPos++]);
    }
}

u16 Audio_GetActiveSequence(u8 playerIdx) {
    if (!gAudioContext.seqPlayers[playerIdx].enabled) {
        return NA_BGM_DISABLED;
    }
    return gActiveSeqs[playerIdx].seqId;
}

s32 Audio_IsSeqCmdNotQueued(u32 cmdVal, u32 cmdMask) {
    u8 i;

    for (i = sSeqCmdReadPos; i != sSeqCmdWritePos; i++) {
        if (cmdVal == (sAudioSeqCmds[i] & cmdMask)) {
            return false;
        }
    }

    return true;
}

// Unused
void Audio_ResetSequenceRequests(u8 playerIdx) {
    sNumSeqRequests[playerIdx] = 0;
}

// Unused
void Audio_DisableSeqCmdSetupOp(u8 playerIdx, u8 setupOpDisabled) {
    u8 i;

    for (i = 0; i < gActiveSeqs[playerIdx].setupCmdNum; i++) {
        u8 setupOp = (gActiveSeqs[playerIdx].setupCmd[i] & 0xF00000) >> 20;

        if (setupOp == setupOpDisabled) {
            gActiveSeqs[playerIdx].setupCmd[i] = 0xFF000000;
        }
    }
}

void Audio_SetVolumeScale(u8 playerIdx, u8 scaleIdx, u8 targetVol, u8 volFadeTimer) {
    f32 volScale;
    u8 i;

    gActiveSeqs[playerIdx].volScales[scaleIdx] = targetVol & 0x7F;

    if (volFadeTimer != 0) {
        gActiveSeqs[playerIdx].fadeVolUpdate = 1;
        gActiveSeqs[playerIdx].volFadeTimer = volFadeTimer;
    } else {
        for (i = 0, volScale = 1.0f; i < 4; i++) {
            volScale *= gActiveSeqs[playerIdx].volScales[i] / 127.0f;
        }

        Audio_SetVolScaleNow(playerIdx, volFadeTimer, volScale);
    }
}

void Audio_UpdateActiveSequences(void) {
    u32 tempoCmd;
    u16 tempoDefault;
    u16 seqId;
    u16 tempoTarget;
    u8 tempoOp;
    u8 setupOp;
    u8 setupPlayerIdx;
    u8 setupVal2;
    u8 setupVal1;
    s32 pad[2];
    u16 channelMask;
    u32 dummy;
    f32 volume;
    u8 tempoDuration;
    u8 playerIdx;
    u8 j;
    u8 channelIdx;

    for (playerIdx = 0; playerIdx < 4; playerIdx++) {
        if (gActiveSeqs[playerIdx].isWaitingForFonts) {
            switch (func_800E5E20(&dummy)) {
                case 1:
                case 2:
                case 3:
                case 4:
                    gActiveSeqs[playerIdx].isWaitingForFonts = false;
                    Audio_ProcessSeqCmd(gActiveSeqs[playerIdx].startSeqCmd);
                    break;
            }
        }

        if (gActiveSeqs[playerIdx].fadeVolUpdate) {
            volume = 1.0f;
            for (j = 0; j < 4; j++) {
                volume *= (gActiveSeqs[playerIdx].volScales[j] / 127.0f);
            }
            Audio_SeqCmd4(playerIdx, gActiveSeqs[playerIdx].volFadeTimer, (u8)(volume * 127.0f));
            gActiveSeqs[playerIdx].fadeVolUpdate = 0;
        }

        if (gActiveSeqs[playerIdx].volDuration != 0) {
            gActiveSeqs[playerIdx].volDuration--;

            if (gActiveSeqs[playerIdx].volDuration != 0) {
                gActiveSeqs[playerIdx].volCur = gActiveSeqs[playerIdx].volCur - gActiveSeqs[playerIdx].volVelocity;
            } else {
                gActiveSeqs[playerIdx].volCur = gActiveSeqs[playerIdx].volTarget;
            }

            Audio_QueueCmdF32(0x41000000 | _SHIFTL(playerIdx, 16, 8), gActiveSeqs[playerIdx].volCur);
        }

        if (gActiveSeqs[playerIdx].tempoCmd != 0) {
            tempoCmd = gActiveSeqs[playerIdx].tempoCmd;
            tempoDuration = (tempoCmd & 0xFF0000) >> 15;
            tempoTarget = tempoCmd & 0xFFF;
            if (tempoDuration == 0) {
                tempoDuration++;
            }

            if (gAudioContext.seqPlayers[playerIdx].enabled) {
                tempoDefault = gAudioContext.seqPlayers[playerIdx].tempo / 0x30;
                tempoOp = (tempoCmd & 0xF000) >> 12;
                switch (tempoOp) {
                    case 1:
                        tempoTarget += tempoDefault;
                        break;
                    case 2:
                        if (tempoTarget < tempoDefault) {
                            tempoTarget = tempoDefault - tempoTarget;
                        }
                        break;
                    case 3:
                        tempoTarget = tempoDefault * (tempoTarget / 100.0f);
                        break;
                    case 4:
                        if (gActiveSeqs[playerIdx].tempoDefault) {
                            tempoTarget = gActiveSeqs[playerIdx].tempoDefault;
                        } else {
                            tempoTarget = tempoDefault;
                        }
                        break;
                }

                if (tempoTarget > 300) {
                    tempoTarget = 300;
                }

                if (gActiveSeqs[playerIdx].tempoDefault == 0) {
                    gActiveSeqs[playerIdx].tempoDefault = tempoDefault;
                }

                gActiveSeqs[playerIdx].tempoTarget = tempoTarget;
                gActiveSeqs[playerIdx].tempoCur = gAudioContext.seqPlayers[playerIdx].tempo / 0x30;
                gActiveSeqs[playerIdx].tempoVelocity = (gActiveSeqs[playerIdx].tempoCur - gActiveSeqs[playerIdx].tempoTarget) / tempoDuration;
                gActiveSeqs[playerIdx].tempoDuration = tempoDuration;
                gActiveSeqs[playerIdx].tempoCmd = 0;
            }
        }

        if (gActiveSeqs[playerIdx].tempoDuration != 0) {
            gActiveSeqs[playerIdx].tempoDuration--;
            if (gActiveSeqs[playerIdx].tempoDuration != 0) {
                gActiveSeqs[playerIdx].tempoCur = gActiveSeqs[playerIdx].tempoCur - gActiveSeqs[playerIdx].tempoVelocity;
            } else {
                gActiveSeqs[playerIdx].tempoCur = gActiveSeqs[playerIdx].tempoTarget;
            }
            // set tempo
            Audio_QueueCmdS32(0x47000000 | _SHIFTL(playerIdx, 16, 8), gActiveSeqs[playerIdx].tempoCur);
        }

        if (gActiveSeqs[playerIdx].volChannelFlags != 0) {
            for (channelIdx = 0; channelIdx < 0x10; channelIdx++) {
                if (gActiveSeqs[playerIdx].channelData[channelIdx].volDuration != 0) {
                    gActiveSeqs[playerIdx].channelData[channelIdx].volDuration--;
                    if (gActiveSeqs[playerIdx].channelData[channelIdx].volDuration != 0) {
                        gActiveSeqs[playerIdx].channelData[channelIdx].volCur -= gActiveSeqs[playerIdx].channelData[channelIdx].volVelocity;
                    } else {
                        gActiveSeqs[playerIdx].channelData[channelIdx].volCur = gActiveSeqs[playerIdx].channelData[channelIdx].volTarget;
                        gActiveSeqs[playerIdx].volChannelFlags ^= (1 << channelIdx);
                    }
                    // CHAN_UPD_VOL_SCALE (playerIdx = seq, channelIdx = chan)
                    Audio_QueueCmdF32(0x01000000 | _SHIFTL(playerIdx, 16, 8) | _SHIFTL(channelIdx, 8, 8),
                                      gActiveSeqs[playerIdx].channelData[channelIdx].volCur);
                }
            }
        }

        if (gActiveSeqs[playerIdx].freqScaleChannelFlags != 0) {
            for (channelIdx = 0; channelIdx < 0x10; channelIdx++) {
                if (gActiveSeqs[playerIdx].channelData[channelIdx].freqScaleDuration != 0) {
                    gActiveSeqs[playerIdx].channelData[channelIdx].freqScaleDuration--;
                    if (gActiveSeqs[playerIdx].channelData[channelIdx].freqScaleDuration != 0) {
                        gActiveSeqs[playerIdx].channelData[channelIdx].freqScaleCur -= gActiveSeqs[playerIdx].channelData[channelIdx].freqScaleVelocity;
                    } else {
                        gActiveSeqs[playerIdx].channelData[channelIdx].freqScaleCur = gActiveSeqs[playerIdx].channelData[channelIdx].freqScaleTarget;
                        gActiveSeqs[playerIdx].freqScaleChannelFlags ^= (1 << channelIdx);
                    }
                    // CHAN_UPD_FREQ_SCALE
                    Audio_QueueCmdF32(0x04000000 | _SHIFTL(playerIdx, 16, 8) | _SHIFTL(channelIdx, 8, 8),
                                      gActiveSeqs[playerIdx].channelData[channelIdx].freqScaleCur);
                }
            }
        }

        if (gActiveSeqs[playerIdx].setupCmdNum != 0) {
            if (Audio_IsSeqCmdNotQueued(0xF0000000, 0xF0000000) == 0) {
                gActiveSeqs[playerIdx].setupCmdNum = 0;
                return;
            }

            if (gActiveSeqs[playerIdx].setupCmdTimer != 0) {
                gActiveSeqs[playerIdx].setupCmdTimer--;
                continue;
            }

            if (gAudioContext.seqPlayers[playerIdx].enabled) {
                continue;
            }

            for (j = 0; j < gActiveSeqs[playerIdx].setupCmdNum; j++) {
                setupOp = (gActiveSeqs[playerIdx].setupCmd[j] & 0x00F00000) >> 20;
                setupPlayerIdx = (gActiveSeqs[playerIdx].setupCmd[j] & 0x000F0000) >> 16;
                setupVal2 = (gActiveSeqs[playerIdx].setupCmd[j] & 0xFF00) >> 8;
                setupVal1 = gActiveSeqs[playerIdx].setupCmd[j] & 0xFF;

                switch (setupOp) {
                    case 0:
                        Audio_SetVolumeScale(setupPlayerIdx, 1, 0x7F, setupVal1);
                        break;
                    case 7:
                        if (sNumSeqRequests[playerIdx] == setupVal1) {
                            Audio_SetVolumeScale(setupPlayerIdx, 1, 0x7F, setupVal2);
                        }
                        break;
                    case 1:
                        Audio_SeqCmd3(playerIdx, gActiveSeqs[playerIdx].seqId);
                        break;
                    case 2:
                        Audio_StartSeq(setupPlayerIdx, 1, gActiveSeqs[setupPlayerIdx].seqId);
                        gActiveSeqs[setupPlayerIdx].fadeVolUpdate = 1;
                        gActiveSeqs[setupPlayerIdx].volScales[1] = 0x7F;
                        break;
                    case 3:
                        Audio_SeqCmdB30(setupPlayerIdx, setupVal2, setupVal1);
                        break;
                    case 4:
                        Audio_SeqCmdB40(setupPlayerIdx, setupVal1, 0);
                        break;
                    case 5:
                        seqId = gActiveSeqs[playerIdx].setupCmd[j] & 0xFFFF;
                        Audio_StartSeq(setupPlayerIdx, gActiveSeqs[setupPlayerIdx].setupFadeTimer, seqId);
                        Audio_SetVolumeScale(setupPlayerIdx, 1, 0x7F, 0);
                        gActiveSeqs[setupPlayerIdx].setupFadeTimer = 0;
                        break;
                    case 6:
                        gActiveSeqs[playerIdx].setupFadeTimer = setupVal2;
                        break;
                    case 8:
                        Audio_SetVolumeScale(setupPlayerIdx, setupVal2, 0x7F, setupVal1);
                        break;
                    case 14:
                        if (setupVal1 & 1) {
                            Audio_QueueCmdS32(0xE3000000, SEQUENCE_TABLE);
                        }
                        if (setupVal1 & 2) {
                            Audio_QueueCmdS32(0xE3000000, FONT_TABLE);
                        }
                        if (setupVal1 & 4) {
                            Audio_QueueCmdS32(0xE3000000, SAMPLE_TABLE);
                        }
                        break;
                    case 9:
                        channelMask = gActiveSeqs[playerIdx].setupCmd[j] & 0xFFFF;
                        Audio_SeqCmdA(setupPlayerIdx, channelMask);
                        break;
                    case 10:
                        Audio_SeqCmd5(setupPlayerIdx, setupVal2, (setupVal1 * 10) & 0xFFFF);
                        break;
                }
            }

            gActiveSeqs[playerIdx].setupCmdNum = 0;
        }
    }
}

u8 func_800FAD34(void) {
    if (D_80133418 != 0) {
        if (D_80133418 == 1) {
            if (func_800E5EDC() == 1) {
                D_80133418 = 0;
                Audio_QueueCmdS8(0x46020000, gSfxChannelLayout);
                func_800F7170();
            }
        } else if (D_80133418 == 2) {
            while (func_800E5EDC() != 1) {}
            D_80133418 = 0;
            Audio_QueueCmdS8(0x46020000, gSfxChannelLayout);
            func_800F7170();
        }
    }

    return D_80133418;
}

void Audio_ResetSequences(void) {
    u8 playerIdx;
    u8 j;

    for (playerIdx = 0; playerIdx < 4; playerIdx++) {
        sNumSeqRequests[playerIdx] = 0;
        gActiveSeqs[playerIdx].seqId = NA_BGM_DISABLED;
        gActiveSeqs[playerIdx].prevSeqId = NA_BGM_DISABLED;
        gActiveSeqs[playerIdx].tempoDuration = 0;
        gActiveSeqs[playerIdx].tempoDefault = 0;
        gActiveSeqs[playerIdx].tempoCmd = 0;
        gActiveSeqs[playerIdx].channelPortMask = 0;
        gActiveSeqs[playerIdx].setupCmdNum = 0;
        gActiveSeqs[playerIdx].setupFadeTimer = 0;
        gActiveSeqs[playerIdx].freqScaleChannelFlags = 0;
        gActiveSeqs[playerIdx].volChannelFlags = 0;
        for (j = 0; j < 4; j++) {
            gActiveSeqs[playerIdx].volScales[j] = 0x7F;
        }
        gActiveSeqs[playerIdx].volFadeTimer = 1;
        gActiveSeqs[playerIdx].fadeVolUpdate = 1;
    }
}

void Audio_ResetSequencesAndVolume(void) {
    u8 playerIdx;
    u8 j;

    for (playerIdx = 0; playerIdx < 4; playerIdx++) {
        gActiveSeqs[playerIdx].volCur = 1.0f;
        gActiveSeqs[playerIdx].volDuration = 0;
        gActiveSeqs[playerIdx].fadeVolUpdate = 0;
        for (j = 0; j < 4; j++) {
            gActiveSeqs[playerIdx].volScales[j] = 0x7F;
        }
    }
    Audio_ResetSequences();
}
