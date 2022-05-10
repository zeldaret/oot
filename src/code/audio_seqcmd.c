#include "ultra64.h"
#include "global.h"
#include "ultra64/abi.h"

// direct audio commands (skips the queueing system)
#define Audio_SetVolScaleNow(playerIndex, volFadeTimer, volScale) \
    Audio_ProcessSeqCmd(0x40000000 | ((u8)playerIndex << 24) | ((u8)volFadeTimer << 16) | ((u8)(volScale * 127.0f)));

typedef struct {
    u8 seqId;
    u8 importance;
} BgmRequest;

BgmRequest sSeqRequests[4][5];
u8 sNumSeqRequests[4];
u32 sAudioSeqCmds[0x100];
ActiveSeq gActiveSeqs[4];

u8 sSeqCmdWritePos = 0;
u8 sSeqCmdReadPos = 0;
u8 sIsSeqStartDisabled = 0;
u8 gAudioDebugPrintSeqCmd = true;
u8 sSoundModes[] = { 0, 1, 2, 3 };
u8 gAudioSpecId = 0;
u8 D_80133418 = 0;

void Audio_StartSequence(u8 playerIndex, u8 seqId, u8 seqArgs, u16 fadeTimer) {
    u8 channelIndex;
    u16 duration;
    s32 pad;

    if ((sIsSeqStartDisabled == 0) || (playerIndex == SEQ_PLAYER_SFX)) {
        seqArgs &= 0x7F;
        if (seqArgs == 0x7F) {
            // fadeTimer is interpreted as seconds (60 fps * updatesPerFrame)
            duration = (fadeTimer >> 3) * 60 * gAudioContext.audioBufferParameters.updatesPerFrame;
            Audio_QueueCmdS32(0x85000000 | _SHIFTL(playerIndex, 16, 8) | _SHIFTL(seqId, 8, 8), duration);
        } else {
            // fadeTimer is interpreated as number of frames at 30 fps
            Audio_QueueCmdS32(0x82000000 | _SHIFTL(playerIndex, 16, 8) | _SHIFTL(seqId, 8, 8),
                              (fadeTimer * (u16)gAudioContext.audioBufferParameters.updatesPerFrame) / 4);
        }

        gActiveSeqs[playerIndex].seqId = seqId | (seqArgs << 8);
        gActiveSeqs[playerIndex].prevSeqId = seqId | (seqArgs << 8);

        if (gActiveSeqs[playerIndex].volCur != 1.0f) {
            Audio_QueueCmdF32(0x41000000 | _SHIFTL(playerIndex, 16, 8), gActiveSeqs[playerIndex].volCur);
        }

        gActiveSeqs[playerIndex].tempoDuration = 0;
        gActiveSeqs[playerIndex].tempoPrev = 0;
        gActiveSeqs[playerIndex].tempoCmd = 0;

        for (channelIndex = 0; channelIndex < 16; channelIndex++) {
            gActiveSeqs[playerIndex].channelData[channelIndex].volCur = 1.0f;
            gActiveSeqs[playerIndex].channelData[channelIndex].volDuration = 0;
            gActiveSeqs[playerIndex].channelData[channelIndex].freqScaleCur = 1.0f;
            gActiveSeqs[playerIndex].channelData[channelIndex].freqScaleDuration = 0;
        }

        gActiveSeqs[playerIndex].freqScaleChannelFlags = 0;
        gActiveSeqs[playerIndex].volChannelFlags = 0;
    }
}

void Audio_StopSequenceNow(u8 playerIndex, u16 fadeTimer) {
    Audio_QueueCmdS32(0x83000000 | ((u8)playerIndex << 16),
                      (fadeTimer * (u16)gAudioContext.audioBufferParameters.updatesPerFrame) / 4);
    gActiveSeqs[playerIndex].seqId = NA_BGM_DISABLED;
}

void Audio_ProcessSeqCmd(u32 cmd) {
    s32 importance;
    s32 channelMaskN;
    u16 channelMask;
    u16 fadeTimer;
    u16 val;
    u8 oldSpec;
    u8 spec;
    u8 op;
    u8 subOp;
    u8 playerIndex;
    u8 seqId;
    u8 seqArgs;
    u8 found;
    u8 port;
    u8 duration;
    u8 channelIndex;
    u8 i;
    f32 freqScaleTarget;
    s32 pad;

    if (gAudioDebugPrintSeqCmd && ((cmd & 0xF0000000) != (SEQ_CMD_SET_PLAYER_IO << 28))) {
        // print cmd high-bits, "SEQ H"
        AudioDebug_ScrPrt((const s8*)gAudioDebugTextSeqCmdHighBits, (cmd >> 16) & 0xFFFF);
        // pring cmd low-bits, "    L"
        AudioDebug_ScrPrt((const s8*)gAudioDebugTextSeqCmdLowBits, cmd & 0xFFFF);
    }

    op = cmd >> 28;
    playerIndex = (cmd & 0xF000000) >> 24;

    switch (op) {
        case SEQ_CMD_START:
            // play sequence immediately
            seqId = cmd & 0xFF;
            seqArgs = (cmd & 0xFF00) >> 8;
            // fadeTimer is only shifted 13 bytes instead of 16 bytes.
            // The remaining bytes are shifted in Audio_StartSequence
            fadeTimer = (cmd & 0xFF0000) >> 13;
            if (!gActiveSeqs[playerIndex].isWaitingForFonts && (seqArgs < 0x80)) {
                Audio_StartSequence(playerIndex, seqId, seqArgs, fadeTimer);
            }
            break;

        case SEQ_CMD_STOP:
            // disable seq player
            fadeTimer = (cmd & 0xFF0000) >> 13;
            Audio_StopSequenceNow(playerIndex, fadeTimer);
            break;

        case SEQ_CMD_QUEUE:
            // queue sequence
            seqId = cmd & 0xFF;
            seqArgs = (cmd & 0xFF00) >> 8;
            fadeTimer = (cmd & 0xFF0000) >> 13;
            importance = seqArgs;

            // Checks if the requested sequence is first in the list of requests
            // If it is already queued and first in the list, then play the sequence immediately
            for (i = 0; i < sNumSeqRequests[playerIndex]; i++) {
                if (sSeqRequests[playerIndex][i].seqId == seqId) {
                    if (i == 0) {
                        Audio_StartSequence(playerIndex, seqId, seqArgs, fadeTimer);
                    }
                    return;
                }
            }

            // Searches the sequence requests for the first request that does not have a higher priority
            // than the current incoming request
            found = sNumSeqRequests[playerIndex];
            for (i = 0; i < sNumSeqRequests[playerIndex]; i++) {
                if (importance >= sSeqRequests[playerIndex][i].importance) {
                    found = i;
                    i = sNumSeqRequests[playerIndex]; // "break;"
                }
            }

            // Check if the queue is full
            if (sNumSeqRequests[playerIndex] < 5) {
                sNumSeqRequests[playerIndex]++;
            }

            for (i = sNumSeqRequests[playerIndex] - 1; i != found; i--) {
                // Move all requests of lower importance backwards 1 place in the queue
                sSeqRequests[playerIndex][i].importance = sSeqRequests[playerIndex][i - 1].importance;
                sSeqRequests[playerIndex][i].seqId = sSeqRequests[playerIndex][i - 1].seqId;
            }

            // Fill the newly freed space in the queue with the new request
            sSeqRequests[playerIndex][found].importance = seqArgs;
            sSeqRequests[playerIndex][found].seqId = seqId;

            if (found == 0) {
                Audio_StartSequence(playerIndex, seqId, seqArgs, fadeTimer);
            }
            break;

        case SEQ_CMD_UNQUEUE:
            // unqueue sequence. If sequence is active, stop sequence and play next sequence in queue
            fadeTimer = (cmd & 0xFF0000) >> 13;

            found = sNumSeqRequests[playerIndex];
            for (i = 0; i < sNumSeqRequests[playerIndex]; i++) {
                seqId = cmd & 0xFF;
                if (sSeqRequests[playerIndex][i].seqId == seqId) {
                    found = i;
                    i = sNumSeqRequests[playerIndex]; // "break;"
                }
            }

            if (found != sNumSeqRequests[playerIndex]) {
                // Move all requests of lower importance forward 1 place in the queue
                for (i = found; i < sNumSeqRequests[playerIndex] - 1; i++) {
                    sSeqRequests[playerIndex][i].importance = sSeqRequests[playerIndex][i + 1].importance;
                    sSeqRequests[playerIndex][i].seqId = sSeqRequests[playerIndex][i + 1].seqId;
                }
                sNumSeqRequests[playerIndex]--;
            }

            if (found == 0) {
                Audio_StopSequenceNow(playerIndex, fadeTimer);
                if (sNumSeqRequests[playerIndex] != 0) {
                    Audio_StartSequence(playerIndex, sSeqRequests[playerIndex][0].seqId,
                                        sSeqRequests[playerIndex][0].importance, fadeTimer);
                }
            }
            break;

        case SEQ_CMD_SET_PLAYER_VOL:
            // transition volume for an entire player
            duration = (cmd & 0xFF0000) >> 15;
            val = cmd & 0xFF;
            if (duration == 0) {
                duration++;
            }
            gActiveSeqs[playerIndex].volTarget = (f32)val / 127.0f;
            if (gActiveSeqs[playerIndex].volCur != gActiveSeqs[playerIndex].volTarget) {
                gActiveSeqs[playerIndex].volVelocity =
                    (gActiveSeqs[playerIndex].volCur - gActiveSeqs[playerIndex].volTarget) / (f32)duration;
                gActiveSeqs[playerIndex].volDuration = duration;
            }
            break;

        case SEQ_CMD_SET_PLAYER_FREQ:
            // transition freq scale for all channels
            duration = (cmd & 0xFF0000) >> 15;
            val = cmd & 0xFFFF;
            if (duration == 0) {
                duration++;
            }
            freqScaleTarget = (f32)val / 1000.0f;
            for (i = 0; i < 16; i++) {
                gActiveSeqs[playerIndex].channelData[i].freqScaleTarget = freqScaleTarget;
                gActiveSeqs[playerIndex].channelData[i].freqScaleDuration = duration;
                gActiveSeqs[playerIndex].channelData[i].freqScaleVelocity =
                    (gActiveSeqs[playerIndex].channelData[i].freqScaleCur - freqScaleTarget) / (f32)duration;
            }
            gActiveSeqs[playerIndex].freqScaleChannelFlags = 0xFFFF;
            break;

        case SEQ_CMD_SET_CHANNEL_FREQ:
            // transition freq scale
            duration = (cmd & 0xFF0000) >> 15;
            channelIndex = (cmd & 0xF000) >> 12;
            val = cmd & 0xFFF;
            if (duration == 0) {
                duration++;
            }
            freqScaleTarget = (f32)val / 1000.0f;
            gActiveSeqs[playerIndex].channelData[channelIndex].freqScaleTarget = freqScaleTarget;
            gActiveSeqs[playerIndex].channelData[channelIndex].freqScaleVelocity =
                (gActiveSeqs[playerIndex].channelData[channelIndex].freqScaleCur - freqScaleTarget) / (f32)duration;
            gActiveSeqs[playerIndex].channelData[channelIndex].freqScaleDuration = duration;
            gActiveSeqs[playerIndex].freqScaleChannelFlags |= 1 << channelIndex;
            break;

        case SEQ_CMD_SET_CHANNEL_VOL:
            // transition volume for a specific channel
            duration = (cmd & 0xFF0000) >> 15;
            channelIndex = (cmd & 0xF00) >> 8;
            val = cmd & 0xFF;
            if (duration == 0) {
                duration++;
            }
            gActiveSeqs[playerIndex].channelData[channelIndex].volTarget = (f32)val / 127.0f;
            if (gActiveSeqs[playerIndex].channelData[channelIndex].volCur !=
                gActiveSeqs[playerIndex].channelData[channelIndex].volTarget) {
                gActiveSeqs[playerIndex].channelData[channelIndex].volVelocity =
                    (gActiveSeqs[playerIndex].channelData[channelIndex].volCur -
                     gActiveSeqs[playerIndex].channelData[channelIndex].volTarget) /
                    (f32)duration;
                gActiveSeqs[playerIndex].channelData[channelIndex].volDuration = duration;
                gActiveSeqs[playerIndex].volChannelFlags |= 1 << channelIndex;
            }
            break;

        case SEQ_CMD_SET_PLAYER_IO:
            // set global io port
            port = (cmd & 0xFF0000) >> 16;
            val = cmd & 0xFF;
            Audio_QueueCmdS8(0x46000000 | _SHIFTL(playerIndex, 16, 8) | _SHIFTL(port, 0, 8), val);
            break;

        case SEQ_CMD_SET_CHANNEL_IO:
            // set io port if channel masked
            channelIndex = (cmd & 0xF00) >> 8;
            port = (cmd & 0xFF0000) >> 16;
            val = cmd & 0xFF;
            if ((gActiveSeqs[playerIndex].channelPortMask & (1 << channelIndex)) == 0) {
                Audio_QueueCmdS8(
                    0x06000000 | _SHIFTL(playerIndex, 16, 8) | _SHIFTL(channelIndex, 8, 8) | _SHIFTL(port, 0, 8), val);
            }
            break;

        case SEQ_CMD_SET_CHANNEL_IO_MASK:
            // set channel mask for command 0x8
            gActiveSeqs[playerIndex].channelPortMask = cmd & 0xFFFF;
            break;

        case SEQ_CMD_SET_ACTIVE_CHANNELS:
            // set channel stop mask
            channelMask = cmd & 0xFFFF;
            if (channelMask != 0) {
                // with channel mask channelMask...
                Audio_QueueCmdU16(0x90000000 | _SHIFTL(playerIndex, 16, 8), channelMask);
                // stop channels
                Audio_QueueCmdS8(0x08000000 | _SHIFTL(playerIndex, 16, 8) | 0xFF00, 1);
            }
            channelMaskN = (channelMask ^ 0xFFFF);
            if (channelMaskN != 0) {
                // with channel mask ~channelMask...
                Audio_QueueCmdU16(0x90000000 | _SHIFTL(playerIndex, 16, 8), channelMaskN);
                // unstop channels
                Audio_QueueCmdS8(0x08000000 | _SHIFTL(playerIndex, 16, 8) | 0xFF00, 0);
            }
            break;

        case SEQ_CMD_TEMPO_CMD:
            // update tempo using a command
            gActiveSeqs[playerIndex].tempoCmd = cmd;
            break;

        case SEQ_CMD_SETUP_CMD:
            // start sequence with setup commands
            subOp = (cmd & 0xF00000) >> 20;
            if (subOp != SETUP_CMD_RESET_SETUP_CMDS) {
                if (gActiveSeqs[playerIndex].setupCmdNum < 7) {
                    found = gActiveSeqs[playerIndex].setupCmdNum++;
                    if (found < 8) {
                        gActiveSeqs[playerIndex].setupCmd[found] = cmd;
                        gActiveSeqs[playerIndex].setupCmdTimer = 2;
                    }
                }
            } else {
                gActiveSeqs[playerIndex].setupCmdNum = 0;
            }
            break;

        case SEQ_CMD_SUB_CMD:
            subOp = (cmd & 0xF00) >> 8;
            val = cmd & 0xFF;
            switch (subOp) {
                case SUB_CMD_SET_SOUND_MODE:
                    // set sound mode
                    Audio_QueueCmdS32(0xF0000000, sSoundModes[val]);
                    break;

                case SUB_CMD_DISABLE_NEW_SEQUENCES:
                    // disable the starting of new sequences
                    sIsSeqStartDisabled = val & 1;
                    break;
            }
            break;

        case SEQ_CMD_SET_SPEC:
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

u16 Audio_GetActiveSeqId(u8 playerIndex) {
    if (!gAudioContext.seqPlayers[playerIndex].enabled) {
        return NA_BGM_DISABLED;
    }
    return gActiveSeqs[playerIndex].seqId;
}

s32 Audio_IsSeqCmdNotQueued(u32 cmdVal, u32 cmdMask) {
    u8 i;

    for (i = sSeqCmdReadPos; i != sSeqCmdWritePos; i++) {
        if ((sAudioSeqCmds[i] & cmdMask) == cmdVal) {
            return false;
        }
    }

    return true;
}

// Unused
void Audio_ResetSequenceRequests(u8 playerIndex) {
    sNumSeqRequests[playerIndex] = 0;
}

// Unused
void Audio_DisableSeqCmdSetupOp(u8 playerIndex, u8 setupOpDisabled) {
    u8 i;

    for (i = 0; i < gActiveSeqs[playerIndex].setupCmdNum; i++) {
        u8 setupOp = (gActiveSeqs[playerIndex].setupCmd[i] & 0xF00000) >> 20;

        if (setupOp == setupOpDisabled) {
            gActiveSeqs[playerIndex].setupCmd[i] = 0xFF000000;
        }
    }
}

void Audio_SetVolumeScale(u8 playerIndex, u8 scaleIndex, u8 targetVol, u8 volFadeTimer) {
    f32 volScale;
    u8 i;

    gActiveSeqs[playerIndex].volScales[scaleIndex] = targetVol & 0x7F;

    if (volFadeTimer != 0) {
        gActiveSeqs[playerIndex].fadeVolUpdate = 1;
        gActiveSeqs[playerIndex].volFadeTimer = volFadeTimer;
    } else {
        for (i = 0, volScale = 1.0f; i < 4; i++) {
            volScale *= gActiveSeqs[playerIndex].volScales[i] / 127.0f;
        }

        Audio_SetVolScaleNow(playerIndex, volFadeTimer, volScale);
    }
}

/**
 * Apply various high-level commands to the active sequences
 */
void Audio_UpdateActiveSequences(void) {
    u32 tempoCmd;
    u8 tempoOp;
    u16 tempoPrev;
    u16 tempoTarget;
    u8 setupOp;
    u8 setupPlayerIndex;
    u8 setupVal2;
    u8 setupVal1;
    u16 seqId;
    s32 pad[2];
    u16 channelMask;
    u32 dummy;
    f32 volume;
    u8 tempoDuration;
    u8 playerIndex;
    u8 j;
    u8 channelIndex;

    for (playerIndex = 0; playerIndex < 4; playerIndex++) {

        // The setup for this block of code (within this single if-statement) was not implemented until Majora's Mask
        // Check if the requested sequences is waiting for fonts to load
        if (gActiveSeqs[playerIndex].isWaitingForFonts) {
            switch (func_800E5E20(&dummy)) {
                case 1:
                case 2:
                case 3:
                case 4:
                    // The fonts have been loaded successfully.
                    gActiveSeqs[playerIndex].isWaitingForFonts = false;
                    // Queue the same command that was stored previously
                    Audio_ProcessSeqCmd(gActiveSeqs[playerIndex].startSeqCmd);
                    break;
            }
        }

        if (gActiveSeqs[playerIndex].fadeVolUpdate) {
            volume = 1.0f;
            for (j = 0; j < 4; j++) {
                volume *= (gActiveSeqs[playerIndex].volScales[j] / 127.0f);
            }
            AudioSeqCmd_SetPlayerVol(playerIndex, gActiveSeqs[playerIndex].volFadeTimer, (u8)(volume * 127.0f));
            gActiveSeqs[playerIndex].fadeVolUpdate = 0;
        }

        if (gActiveSeqs[playerIndex].volDuration != 0) {
            gActiveSeqs[playerIndex].volDuration--;

            if (gActiveSeqs[playerIndex].volDuration != 0) {
                gActiveSeqs[playerIndex].volCur -= gActiveSeqs[playerIndex].volVelocity;
            } else {
                gActiveSeqs[playerIndex].volCur = gActiveSeqs[playerIndex].volTarget;
            }

            Audio_QueueCmdF32(0x41000000 | _SHIFTL(playerIndex, 16, 8), gActiveSeqs[playerIndex].volCur);
        }

        if (gActiveSeqs[playerIndex].tempoCmd != 0) {
            tempoCmd = gActiveSeqs[playerIndex].tempoCmd;
            tempoDuration = (tempoCmd & 0xFF0000) >> 15;
            tempoTarget = tempoCmd & 0xFFF;
            if (tempoDuration == 0) {
                tempoDuration++;
            }

            if (gAudioContext.seqPlayers[playerIndex].enabled) {
                tempoPrev = gAudioContext.seqPlayers[playerIndex].tempo / 0x30;
                tempoOp = (tempoCmd & 0xF000) >> 12;
                switch (tempoOp) {
                    case TEMPO_CMD_SPEED_UP:
                        // speed up tempo by "tempoTarget" amount
                        tempoTarget += tempoPrev;
                        break;

                    case TEMPO_CMD_SLOW_DOWN:
                        // slow down tempo by "tempoTarget" amount
                        if (tempoTarget < tempoPrev) {
                            tempoTarget = tempoPrev - tempoTarget;
                        }
                        break;

                    case TEMPO_CMD_SCALE:
                        // scale tempo
                        tempoTarget = tempoPrev * (tempoTarget / 100.0f);
                        break;

                    case TEMPO_CMD_RESET:
                        // reset tempo to previous tempo
                        if (gActiveSeqs[playerIndex].tempoPrev) {
                            tempoTarget = gActiveSeqs[playerIndex].tempoPrev;
                        } else {
                            tempoTarget = tempoPrev;
                        }
                        break;

                    default:
                        // TEMPO_CMD_SET
                        // tempoTarget is the new tempo
                        break;
                }

                if (tempoTarget > 300) {
                    tempoTarget = 300;
                }

                if (gActiveSeqs[playerIndex].tempoPrev == 0) {
                    gActiveSeqs[playerIndex].tempoPrev = tempoPrev;
                }

                gActiveSeqs[playerIndex].tempoTarget = tempoTarget;
                gActiveSeqs[playerIndex].tempoCur = gAudioContext.seqPlayers[playerIndex].tempo / 0x30;
                gActiveSeqs[playerIndex].tempoVelocity =
                    (gActiveSeqs[playerIndex].tempoCur - gActiveSeqs[playerIndex].tempoTarget) / tempoDuration;
                gActiveSeqs[playerIndex].tempoDuration = tempoDuration;
                gActiveSeqs[playerIndex].tempoCmd = 0;
            }
        }

        if (gActiveSeqs[playerIndex].tempoDuration != 0) {
            gActiveSeqs[playerIndex].tempoDuration--;
            if (gActiveSeqs[playerIndex].tempoDuration != 0) {
                gActiveSeqs[playerIndex].tempoCur -= gActiveSeqs[playerIndex].tempoVelocity;
            } else {
                gActiveSeqs[playerIndex].tempoCur = gActiveSeqs[playerIndex].tempoTarget;
            }
            // set tempo
            Audio_QueueCmdS32(0x47000000 | _SHIFTL(playerIndex, 16, 8), gActiveSeqs[playerIndex].tempoCur);
        }

        if (gActiveSeqs[playerIndex].volChannelFlags != 0) {
            for (channelIndex = 0; channelIndex < 16; channelIndex++) {
                if (gActiveSeqs[playerIndex].channelData[channelIndex].volDuration != 0) {
                    gActiveSeqs[playerIndex].channelData[channelIndex].volDuration--;
                    if (gActiveSeqs[playerIndex].channelData[channelIndex].volDuration != 0) {
                        gActiveSeqs[playerIndex].channelData[channelIndex].volCur -=
                            gActiveSeqs[playerIndex].channelData[channelIndex].volVelocity;
                    } else {
                        gActiveSeqs[playerIndex].channelData[channelIndex].volCur =
                            gActiveSeqs[playerIndex].channelData[channelIndex].volTarget;
                        gActiveSeqs[playerIndex].volChannelFlags ^= (1 << channelIndex);
                    }
                    // CHAN_UPD_VOL_SCALE (playerIndex = seq, channelIndex = chan)
                    Audio_QueueCmdF32(0x01000000 | _SHIFTL(playerIndex, 16, 8) | _SHIFTL(channelIndex, 8, 8),
                                      gActiveSeqs[playerIndex].channelData[channelIndex].volCur);
                }
            }
        }

        if (gActiveSeqs[playerIndex].freqScaleChannelFlags != 0) {
            for (channelIndex = 0; channelIndex < 16; channelIndex++) {
                if (gActiveSeqs[playerIndex].channelData[channelIndex].freqScaleDuration != 0) {
                    gActiveSeqs[playerIndex].channelData[channelIndex].freqScaleDuration--;
                    if (gActiveSeqs[playerIndex].channelData[channelIndex].freqScaleDuration != 0) {
                        gActiveSeqs[playerIndex].channelData[channelIndex].freqScaleCur -=
                            gActiveSeqs[playerIndex].channelData[channelIndex].freqScaleVelocity;
                    } else {
                        gActiveSeqs[playerIndex].channelData[channelIndex].freqScaleCur =
                            gActiveSeqs[playerIndex].channelData[channelIndex].freqScaleTarget;
                        gActiveSeqs[playerIndex].freqScaleChannelFlags ^= (1 << channelIndex);
                    }
                    // CHAN_UPD_FREQ_SCALE
                    Audio_QueueCmdF32(0x04000000 | _SHIFTL(playerIndex, 16, 8) | _SHIFTL(channelIndex, 8, 8),
                                      gActiveSeqs[playerIndex].channelData[channelIndex].freqScaleCur);
                }
            }
        }

        // Process setup commands
        if (gActiveSeqs[playerIndex].setupCmdNum != 0) {
            // If there is a SeqCmd to change the audio spec queued, then drop all setup commands
            if (!Audio_IsSeqCmdNotQueued(0xF0000000, 0xF0000000)) {
                gActiveSeqs[playerIndex].setupCmdNum = 0;
                return;
            }

            // Only process setup commands once the timer reaches zero
            if (gActiveSeqs[playerIndex].setupCmdTimer != 0) {
                gActiveSeqs[playerIndex].setupCmdTimer--;
                continue;
            }

            // Do not process setup commands if the seqPlayer is already enabled
            if (gAudioContext.seqPlayers[playerIndex].enabled) {
                continue;
            }

            for (j = 0; j < gActiveSeqs[playerIndex].setupCmdNum; j++) {
                setupOp = (gActiveSeqs[playerIndex].setupCmd[j] & 0x00F00000) >> 20;
                setupPlayerIndex = (gActiveSeqs[playerIndex].setupCmd[j] & 0x000F0000) >> 16;
                setupVal2 = (gActiveSeqs[playerIndex].setupCmd[j] & 0xFF00) >> 8;
                setupVal1 = gActiveSeqs[playerIndex].setupCmd[j] & 0xFF;

                switch (setupOp) {
                    case SETUP_CMD_SET_VOLUME:
                        Audio_SetVolumeScale(setupPlayerIndex, 1, 0x7F, setupVal1);
                        break;

                    case SETUP_CMD_SET_VOLUME_IF_QUEUED:
                        if (sNumSeqRequests[playerIndex] == setupVal1) {
                            Audio_SetVolumeScale(setupPlayerIndex, 1, 0x7F, setupVal2);
                        }
                        break;

                    case SETUP_CMD_SEQ_UNQUEUE:
                        AudioSeqCmd_UnqueueSequence(playerIndex, 0, gActiveSeqs[playerIndex].seqId);
                        break;

                    case SETUP_CMD_SEQ_START:
                        AudioSeqCmd_PlaySequence(setupPlayerIndex, 1, 0, gActiveSeqs[setupPlayerIndex].seqId);
                        gActiveSeqs[setupPlayerIndex].fadeVolUpdate = 1;
                        gActiveSeqs[setupPlayerIndex].volScales[1] = 0x7F;
                        break;

                    case SETUP_CMD_TEMPO_SCALE:
                        AudioSeqCmd_ScaleTempo(setupPlayerIndex, setupVal2, setupVal1);
                        break;

                    case SETUP_CMD_TEMPO_RESET:
                        AudioSeqCmd_ResetTempo(setupPlayerIndex, setupVal1);
                        break;

                    case SETUP_CMD_SEQ_START_WITH_FADE:
                        seqId = gActiveSeqs[playerIndex].setupCmd[j] & 0xFFFF;
                        AudioSeqCmd_PlaySequence(setupPlayerIndex, gActiveSeqs[setupPlayerIndex].setupFadeTimer, 0,
                                                 seqId);
                        Audio_SetVolumeScale(setupPlayerIndex, 1, 0x7F, 0);
                        gActiveSeqs[setupPlayerIndex].setupFadeTimer = 0;
                        break;

                    case SETUP_CMD_SET_FADE_TIMER:
                        gActiveSeqs[playerIndex].setupFadeTimer = setupVal2;
                        break;

                    case SETUP_CMD_SET_VOLUME_WITH_FADE:
                        Audio_SetVolumeScale(setupPlayerIndex, setupVal2, 0x7F, setupVal1);
                        break;

                    case SETUP_CMD_POP_CACHE:
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

                    case SETUP_CMD_SEQ_ACTIVE_CHANNELS:
                        channelMask = gActiveSeqs[playerIndex].setupCmd[j] & 0xFFFF;
                        AudioSeqCmd_SetActiveChannels(setupPlayerIndex, channelMask);
                        break;

                    case SETUP_CMD_SET_PLAYER_FREQ:
                        AudioSeqCmd_SetPlayerFreq(setupPlayerIndex, setupVal2, (setupVal1 * 10) & 0xFFFF);
                        break;
                }
            }

            gActiveSeqs[playerIndex].setupCmdNum = 0;
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
    u8 playerIndex;
    u8 j;

    for (playerIndex = 0; playerIndex < 4; playerIndex++) {
        sNumSeqRequests[playerIndex] = 0;

        gActiveSeqs[playerIndex].seqId = NA_BGM_DISABLED;
        gActiveSeqs[playerIndex].prevSeqId = NA_BGM_DISABLED;
        gActiveSeqs[playerIndex].tempoDuration = 0;
        gActiveSeqs[playerIndex].tempoPrev = 0;
        gActiveSeqs[playerIndex].tempoCmd = 0;
        gActiveSeqs[playerIndex].channelPortMask = 0;
        gActiveSeqs[playerIndex].setupCmdNum = 0;
        gActiveSeqs[playerIndex].setupFadeTimer = 0;
        gActiveSeqs[playerIndex].freqScaleChannelFlags = 0;
        gActiveSeqs[playerIndex].volChannelFlags = 0;
        for (j = 0; j < 4; j++) {
            gActiveSeqs[playerIndex].volScales[j] = 0x7F;
        }

        gActiveSeqs[playerIndex].volFadeTimer = 1;
        gActiveSeqs[playerIndex].fadeVolUpdate = 1;
    }
}

void Audio_ResetSequencesAndVolume(void) {
    u8 playerIndex;
    u8 j;

    for (playerIndex = 0; playerIndex < 4; playerIndex++) {
        gActiveSeqs[playerIndex].volCur = 1.0f;
        gActiveSeqs[playerIndex].volDuration = 0;
        gActiveSeqs[playerIndex].fadeVolUpdate = 0;
        for (j = 0; j < 4; j++) {
            gActiveSeqs[playerIndex].volScales[j] = 0x7F;
        }
    }
    Audio_ResetSequences();
}
