/**
 * @file audio_seqcmd.c
 *
 * This file implements a set of high-level audio sequence commands that allow sequences to be modified in real-time.
 * These commands are intended to interface external to the audio library.
 *
 * These commands are generated using (Audio_QueueSeqCmd), and a user-friendly interface for this function
 * can be found in (seqcmd.h)
 *
 * These commands change sequences by generating internal audio commands (Audio_QueueCmd) which allows these
 * sequence requests to be passed onto the audio thread. It is worth noting all functions in this file are
 * called from the graph thread.
 *
 * These commands are not to be confused with the sequence commands used by the sequences themselves
 * which are a midi-based scripting language.
 *
 * Nor are these commands to be confused with the internal audio commands used to transfer requests from
 * the graph thread to the audio thread.
 */
#include "ultra64.h"
#include "global.h"
#include "ultra64/abi.h"

// Direct audio command (skips the queueing system)
#define Audio_SetVolumeScaleNow(playerIndex, volFadeTimer, volScale)                                          \
    Audio_ProcessSeqCmd((SEQ_CMD_SET_PLAYER_VOL << 28) | ((u8)playerIndex << 24) | ((u8)volFadeTimer << 16) | \
                        ((u8)(volScale * 127.0f)));

typedef struct {
    u8 seqId;
    u8 priority; // higher values have higher priority
} SeqRequest;

SeqRequest sSeqRequests[4][5];
u8 sNumSeqRequests[4];
u32 sAudioSeqCmds[0x100];
ActiveSeq gActiveSeqs[4];

u8 sSeqCmdWritePos = 0;
u8 sSeqCmdReadPos = 0;
u8 gNewSeqDisabled = false;
u8 gAudioDebugPrintSeqCmd = true;
u8 sSoundModes[] = { 0, 1, 2, 3 };
u8 gAudioSpecId = 0;
u8 D_80133418 = 0;

void Audio_StartSequence(u8 playerIndex, u8 seqId, u8 seqArgs, u16 fadeTimer) {
    u8 channelIndex;
    u16 duration;
    s32 pad;

    if (!gNewSeqDisabled || (playerIndex == SEQ_PLAYER_SFX)) {
        seqArgs &= 0x7F;
        if (seqArgs == 0x7F) {
            // fadeTimer is interpreted as skip ticks
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
        gActiveSeqs[playerIndex].tempoOriginal = 0;
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
    s32 priority;
    s32 channelMaskEnable;
    u16 channelMaskDisable;
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

    if (gAudioDebugPrintSeqCmd && ((cmd & SEQ_CMD_MASK) != (SEQ_CMD_SET_PLAYER_IO << 28))) {
        // print cmd high-bits, "SEQ H"
        AudioDebug_ScrPrt((const s8*)gAudioDebugTextSeqCmdHighBits, (cmd >> 16) & 0xFFFF);
        // pring cmd low-bits, "    L"
        AudioDebug_ScrPrt((const s8*)gAudioDebugTextSeqCmdLowBits, cmd & 0xFFFF);
    }

    op = cmd >> 28;
    playerIndex = (cmd & 0xF000000) >> 24;

    switch (op) {
        case SEQ_CMD_PLAY:
            // Play a new sequence
            seqId = cmd & 0xFF;
            seqArgs = (cmd & 0xFF00) >> 8;
            // fadeTimer is only shifted 13 bytes instead of 16 bytes.
            // fadeTimer continues to be scaled in Audio_StartSequence
            fadeTimer = (cmd & 0xFF0000) >> 13;
            if (!gActiveSeqs[playerIndex].isWaitingForFonts && (seqArgs < 0x80)) {
                Audio_StartSequence(playerIndex, seqId, seqArgs, fadeTimer);
            }
            break;

        case SEQ_CMD_STOP:
            // Stop a sequence and disable the sequence player
            fadeTimer = (cmd & 0xFF0000) >> 13;
            Audio_StopSequenceNow(playerIndex, fadeTimer);
            break;

        case SEQ_CMD_QUEUE:
            // Queue a sequence into sSeqRequests
            seqId = cmd & 0xFF;
            seqArgs = (cmd & 0xFF00) >> 8;
            fadeTimer = (cmd & 0xFF0000) >> 13;
            priority = seqArgs;

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
                if (priority >= sSeqRequests[playerIndex][i].priority) {
                    found = i;
                    i = sNumSeqRequests[playerIndex]; // "break;"
                }
            }

            // Check if the queue is full
            if (sNumSeqRequests[playerIndex] < 5) {
                sNumSeqRequests[playerIndex]++;
            }

            for (i = sNumSeqRequests[playerIndex] - 1; i != found; i--) {
                // Move all requests of lower priority backwards 1 place in the queue
                sSeqRequests[playerIndex][i].priority = sSeqRequests[playerIndex][i - 1].priority;
                sSeqRequests[playerIndex][i].seqId = sSeqRequests[playerIndex][i - 1].seqId;
            }

            // Fill the newly freed space in the queue with the new request
            sSeqRequests[playerIndex][found].priority = seqArgs;
            sSeqRequests[playerIndex][found].seqId = seqId;

            // The sequence is first in queue, so start playing.
            if (found == 0) {
                Audio_StartSequence(playerIndex, seqId, seqArgs, fadeTimer);
            }
            break;

        case SEQ_CMD_UNQUEUE:
            // Unqueue sequence
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
                // Move all requests of lower priority forward 1 place in the queue
                for (i = found; i < sNumSeqRequests[playerIndex] - 1; i++) {
                    sSeqRequests[playerIndex][i].priority = sSeqRequests[playerIndex][i + 1].priority;
                    sSeqRequests[playerIndex][i].seqId = sSeqRequests[playerIndex][i + 1].seqId;
                }
                sNumSeqRequests[playerIndex]--;
            }

            // If the sequence was first in queue (it is currently playing),
            // Then stop the sequence and play the next sequence in the queue.
            if (found == 0) {
                Audio_StopSequenceNow(playerIndex, fadeTimer);
                if (sNumSeqRequests[playerIndex] != 0) {
                    Audio_StartSequence(playerIndex, sSeqRequests[playerIndex][0].seqId,
                                        sSeqRequests[playerIndex][0].priority, fadeTimer);
                }
            }
            break;

        case SEQ_CMD_SET_PLAYER_VOL:
            // Transition volume to a target volume for an entire player
            duration = (cmd & 0xFF0000) >> 15;
            val = cmd & 0xFF;
            if (duration == 0) {
                duration++;
            }
            // Volume is scaled relative to 127
            gActiveSeqs[playerIndex].volTarget = (f32)val / 127.0f;
            if (gActiveSeqs[playerIndex].volCur != gActiveSeqs[playerIndex].volTarget) {
                gActiveSeqs[playerIndex].volVelocity =
                    (gActiveSeqs[playerIndex].volCur - gActiveSeqs[playerIndex].volTarget) / (f32)duration;
                gActiveSeqs[playerIndex].volDuration = duration;
            }
            break;

        case SEQ_CMD_SET_PLAYER_FREQ:
            // Transition freq scale to a target freq for all channels
            duration = (cmd & 0xFF0000) >> 15;
            val = cmd & 0xFFFF;
            if (duration == 0) {
                duration++;
            }
            // Frequency is scaled relative to 1000
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
            // Transition freq scale to a target for a specific channel
            duration = (cmd & 0xFF0000) >> 15;
            channelIndex = (cmd & 0xF000) >> 12;
            val = cmd & 0xFFF;
            if (duration == 0) {
                duration++;
            }
            // Frequency is scaled relative to 100
            freqScaleTarget = (f32)val / 1000.0f;
            gActiveSeqs[playerIndex].channelData[channelIndex].freqScaleTarget = freqScaleTarget;
            gActiveSeqs[playerIndex].channelData[channelIndex].freqScaleVelocity =
                (gActiveSeqs[playerIndex].channelData[channelIndex].freqScaleCur - freqScaleTarget) / (f32)duration;
            gActiveSeqs[playerIndex].channelData[channelIndex].freqScaleDuration = duration;
            gActiveSeqs[playerIndex].freqScaleChannelFlags |= 1 << channelIndex;
            break;

        case SEQ_CMD_SET_CHANNEL_VOL:
            // Transition volume to a target volume for a specific channel
            duration = (cmd & 0xFF0000) >> 15;
            channelIndex = (cmd & 0xF00) >> 8;
            val = cmd & 0xFF;
            if (duration == 0) {
                duration++;
            }
            // Volume is scaled relative to 127
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
            // Set global io port
            port = (cmd & 0xFF0000) >> 16;
            val = cmd & 0xFF;
            Audio_QueueCmdS8(0x46000000 | _SHIFTL(playerIndex, 16, 8) | _SHIFTL(port, 0, 8), val);
            break;

        case SEQ_CMD_SET_CHANNEL_IO:
            // Set io port if channel masked
            channelIndex = (cmd & 0xF00) >> 8;
            port = (cmd & 0xFF0000) >> 16;
            val = cmd & 0xFF;
            if (!(gActiveSeqs[playerIndex].channelPortMask & (1 << channelIndex))) {
                Audio_QueueCmdS8(
                    0x06000000 | _SHIFTL(playerIndex, 16, 8) | _SHIFTL(channelIndex, 8, 8) | _SHIFTL(port, 0, 8), val);
            }
            break;

        case SEQ_CMD_DISABLE_CHANNEL_IO:
            // Disable channel io specifically for SEQ_CMD_SET_CHANNEL_IO
            // This can be bypassed by setting channel io through Audio_QueueCmdS8 0x6 directly.
            // This is accomplished by setting a channel mask.
            gActiveSeqs[playerIndex].channelPortMask = cmd & 0xFFFF;
            break;

        case SEQ_CMD_DISABLE_CHANNELS:
            // Disable or Reenable channels
            channelMaskDisable = cmd & 0xFFFF;
            if (channelMaskDisable != 0) {
                // Apply channel mask channelMaskDisable
                Audio_QueueCmdU16(0x90000000 | _SHIFTL(playerIndex, 16, 8), channelMaskDisable);
                // Disable channels
                Audio_QueueCmdS8(0x08000000 | _SHIFTL(playerIndex, 16, 8) | 0xFF00, 1);
            }

            // Reenable channels
            channelMaskEnable = (channelMaskDisable ^ 0xFFFF);
            if (channelMaskEnable != 0) {
                // Apply channel mask channelMaskEnable
                Audio_QueueCmdU16(0x90000000 | _SHIFTL(playerIndex, 16, 8), channelMaskEnable);
                // Enable channels
                Audio_QueueCmdS8(0x08000000 | _SHIFTL(playerIndex, 16, 8) | 0xFF00, 0);
            }
            break;

        case SEQ_CMD_TEMPO_CMD:
            // Update a tempo using a sub-command system.
            // Stores the cmd for processing elsewhere.
            gActiveSeqs[playerIndex].tempoCmd = cmd;
            break;

        case SEQ_CMD_SETUP_CMD:
            // Queue a sub-command to execute once the sequence is finished playing
            subOp = (cmd & 0xF00000) >> 20;
            if (subOp != SEQ_SUB_CMD_SETUP_RESET_SETUP_CMDS) {
                // Ensure the maximum number of setup commands is not exceeded
                if (gActiveSeqs[playerIndex].setupCmdNum < 7) {
                    found = gActiveSeqs[playerIndex].setupCmdNum++;
                    if (found < 8) {
                        gActiveSeqs[playerIndex].setupCmd[found] = cmd;
                        // Adds a delay of 2 frames before executing any setup commands.
                        // This allows setup commands to be requested along with a new sequence on a playerIndex.
                        // This 2 frame delay ensures the player is enabled before attempting to execute commands.
                        // Otherwise, the setup commands will execute before the sequence starts instead of when
                        // the sequence ends.
                        gActiveSeqs[playerIndex].setupCmdTimer = 2;
                    }
                }
            } else {
                // SEQ_SUB_CMD_SETUP_RESET_SETUP_CMDS
                // Discard all setup command requests on playerIndex
                gActiveSeqs[playerIndex].setupCmdNum = 0;
            }
            break;

        case SEQ_CMD_GLOBAL_CMD:
            // Apply a command that applies to all sequence players
            subOp = (cmd & 0xF00) >> 8;
            val = cmd & 0xFF;
            switch (subOp) {
                case SEQ_SUB_CMD_GLOBAL_SET_SOUND_MODE:
                    // Set sound mode
                    Audio_QueueCmdS32(0xF0000000, sSoundModes[val]);
                    break;

                case SEQ_SUB_CMD_GLOBAL_DISABLE_NEW_SEQUENCES:
                    // Disable the starting of new sequences (except for the sfx player)
                    gNewSeqDisabled = val & 1;
                    break;
            }
            break;

        case SEQ_CMD_RESET_HEAP:
            // Resets the audio heap based on the audio specifications and sfx channel layout
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

/**
 * Add the sequence cmd to the sAudioSeqCmds queue
 */
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

/**
 * Check if the setup command is queued. If it is, then remove the command from the queue.
 * Unused
 */
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
        for (i = 0, volScale = 1.0f; i < VOL_SCALE_INDEX_MAX; i++) {
            volScale *= gActiveSeqs[playerIndex].volScales[i] / 127.0f;
        }

        Audio_SetVolumeScaleNow(playerIndex, volFadeTimer, volScale);
    }
}

/**
 * Update different commands and requests for active sequences
 */
void Audio_UpdateActiveSequences(void) {
    u32 tempoCmd;
    u8 tempoOp;
    u16 tempoPrev;
    u16 tempoTarget;
    u8 setupOp;
    u8 playerIndexTarget;
    u8 setupVal2;
    u8 setupVal1;
    u16 seqId;
    s32 pad[2];
    u16 channelMask;
    u32 retMsg;
    f32 volume;
    u8 tempoDuration;
    u8 playerIndex;
    u8 j;
    u8 channelIndex;

    for (playerIndex = 0; playerIndex < 4; playerIndex++) {

        // The setup for this block of code was not fully implemented until Majora's Mask.
        // The intent was to load soundfonts asyncronously before playing a
        // sequence in Audio_StartSequence using (seqArgs & 0x80).
        // Checks if the requested sequence is finished loading fonts
        if (gActiveSeqs[playerIndex].isWaitingForFonts) {
            switch (func_800E5E20(&retMsg)) {
                case SEQ_PLAYER_BGM_MAIN + 1:
                case SEQ_PLAYER_FANFARE + 1:
                case SEQ_PLAYER_SFX + 1:
                case SEQ_PLAYER_BGM_SUB + 1:
                    // The fonts have been loaded successfully.
                    gActiveSeqs[playerIndex].isWaitingForFonts = false;
                    // Queue the same command that was stored previously
                    // The code to store this command is missing in OoT, so no command is executed
                    Audio_ProcessSeqCmd(gActiveSeqs[playerIndex].startSeqCmd);
                    break;
            }
        }

        // Update global volume
        if (gActiveSeqs[playerIndex].fadeVolUpdate) {
            volume = 1.0f;
            for (j = 0; j < VOL_SCALE_INDEX_MAX; j++) {
                volume *= (gActiveSeqs[playerIndex].volScales[j] / 127.0f);
            }
            SEQCMD_SET_PLAYER_VOLUME(playerIndex, gActiveSeqs[playerIndex].volFadeTimer, (u8)(volume * 127.0f));
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

        // Process tempo commands
        if (gActiveSeqs[playerIndex].tempoCmd != 0) {
            tempoCmd = gActiveSeqs[playerIndex].tempoCmd;
            tempoDuration = (tempoCmd & 0xFF0000) >> 15;
            tempoTarget = tempoCmd & 0xFFF;
            if (tempoDuration == 0) {
                tempoDuration++;
            }

            // Process tempo commands
            if (gAudioContext.seqPlayers[playerIndex].enabled) {
                tempoPrev = gAudioContext.seqPlayers[playerIndex].tempo / TATUMS_PER_BEAT;
                tempoOp = (tempoCmd & 0xF000) >> 12;
                switch (tempoOp) {
                    case SEQ_SUB_CMD_TEMPO_SPEED_UP:
                        // Speed up tempo by "tempoTarget" amount
                        tempoTarget += tempoPrev;
                        break;

                    case SEQ_SUB_CMD_TEMPO_SLOW_DOWN:
                        // Slow down tempo by "tempoTarget" amount
                        if (tempoTarget < tempoPrev) {
                            tempoTarget = tempoPrev - tempoTarget;
                        }
                        break;

                    case SEQ_SUB_CMD_TEMPO_SCALE:
                        // Scale tempo by a multiplicative factor
                        tempoTarget = tempoPrev * (tempoTarget / 100.0f);
                        break;

                    case SEQ_SUB_CMD_TEMPO_RESET:
                        // Reset tempo to original tempo
                        tempoTarget = (gActiveSeqs[playerIndex].tempoOriginal != 0)
                                          ? gActiveSeqs[playerIndex].tempoOriginal
                                          : tempoPrev;
                        break;

                    default: // SEQ_SUB_CMD_TEMPO_SET
                        // tempoTarget is the new tempo
                        break;
                }

                if (tempoTarget > 300) {
                    tempoTarget = 300;
                }

                if (gActiveSeqs[playerIndex].tempoOriginal == 0) {
                    gActiveSeqs[playerIndex].tempoOriginal = tempoPrev;
                }

                gActiveSeqs[playerIndex].tempoTarget = tempoTarget;
                gActiveSeqs[playerIndex].tempoCur = gAudioContext.seqPlayers[playerIndex].tempo / TATUMS_PER_BEAT;
                gActiveSeqs[playerIndex].tempoVelocity =
                    (gActiveSeqs[playerIndex].tempoCur - gActiveSeqs[playerIndex].tempoTarget) / tempoDuration;
                gActiveSeqs[playerIndex].tempoDuration = tempoDuration;
                gActiveSeqs[playerIndex].tempoCmd = 0;
            }
        }

        // Step tempo to target
        if (gActiveSeqs[playerIndex].tempoDuration != 0) {
            gActiveSeqs[playerIndex].tempoDuration--;
            if (gActiveSeqs[playerIndex].tempoDuration != 0) {
                gActiveSeqs[playerIndex].tempoCur -= gActiveSeqs[playerIndex].tempoVelocity;
            } else {
                gActiveSeqs[playerIndex].tempoCur = gActiveSeqs[playerIndex].tempoTarget;
            }
            // Set tempo
            Audio_QueueCmdS32(0x47000000 | _SHIFTL(playerIndex, 16, 8), gActiveSeqs[playerIndex].tempoCur);
        }

        // Update channel volumes
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
                    // CHAN_UPD_VOL_SCALE
                    Audio_QueueCmdF32(0x01000000 | _SHIFTL(playerIndex, 16, 8) | _SHIFTL(channelIndex, 8, 8),
                                      gActiveSeqs[playerIndex].channelData[channelIndex].volCur);
                }
            }
        }

        // Update frequencies
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
            // If there is a SeqCmd to reset the audio heap queued, then drop all setup commands
            if (!Audio_IsSeqCmdNotQueued(SEQ_CMD_RESET_HEAP << 28, SEQ_CMD_MASK)) {
                gActiveSeqs[playerIndex].setupCmdNum = 0;
                return;
            }

            // Only process setup commands once the timer reaches zero
            if (gActiveSeqs[playerIndex].setupCmdTimer != 0) {
                gActiveSeqs[playerIndex].setupCmdTimer--;
                continue;
            }

            // Only process setup commands if the playerIndex if no longer playing
            // i.e. the seqPlayer is no longer enabled
            if (gAudioContext.seqPlayers[playerIndex].enabled) {
                continue;
            }

            for (j = 0; j < gActiveSeqs[playerIndex].setupCmdNum; j++) {
                setupOp = (gActiveSeqs[playerIndex].setupCmd[j] & 0x00F00000) >> 20;
                playerIndexTarget = (gActiveSeqs[playerIndex].setupCmd[j] & 0x000F0000) >> 16;
                setupVal2 = (gActiveSeqs[playerIndex].setupCmd[j] & 0xFF00) >> 8;
                setupVal1 = gActiveSeqs[playerIndex].setupCmd[j] & 0xFF;

                switch (setupOp) {
                    case SEQ_SUB_CMD_SETUP_RESTORE_VOLUME:
                        // Restore playerIndexTarget volume back to normal levels
                        Audio_SetVolumeScale(playerIndexTarget, VOL_SCALE_INDEX_FANFARE, 0x7F, setupVal1);
                        break;

                    case SEQ_SUB_CMD_SETUP_RESTORE_VOLUME_IF_QUEUED:
                        // Restore playerIndexTarget volume back to normal levels,
                        // but only if the number of sequence queue requests from sSeqRequests
                        // exactly matches the argument to the command
                        if (setupVal1 == sNumSeqRequests[playerIndex]) {
                            Audio_SetVolumeScale(playerIndexTarget, VOL_SCALE_INDEX_FANFARE, 0x7F, setupVal2);
                        }
                        break;

                    case SEQ_SUB_CMD_SETUP_SEQ_UNQUEUE:
                        // Unqueue playerIndex from sSeqRequests
                        // Note: this command does not work as intended as unqueueing
                        // the seqeuence relies on gActiveSeqs[playerIndex].seqId
                        // However, gActiveSeqs[playerIndex].seqId is reset before the sequence on (playerIndex)
                        // is no longer playing, i.e. before this command can run.
                        // A simple fix would have been to unqueue based on gActiveSeqs[playerIndex].prevSeqId instead
                        SEQCMD_UNQUEUE_SEQUENCE(playerIndex, 0, gActiveSeqs[playerIndex].seqId);
                        break;

                    case SEQ_SUB_CMD_SETUP_RESTART_SEQ:
                        // Restart the currently active sequence on playerIndexTarget with full volume.
                        // Sequence on playerIndexTarget must still be active to play (can be muted)
                        SEQCMD_PLAY_SEQUENCE(playerIndexTarget, 1, 0, gActiveSeqs[playerIndexTarget].seqId);
                        gActiveSeqs[playerIndexTarget].fadeVolUpdate = 1;
                        gActiveSeqs[playerIndexTarget].volScales[VOL_SCALE_INDEX_FANFARE] = 0x7F;
                        break;

                    case SEQ_SUB_CMD_SETUP_TEMPO_SCALE:
                        // Scale tempo by a multiplicative factor
                        SEQCMD_SCALE_TEMPO(playerIndexTarget, setupVal2, setupVal1);
                        break;

                    case SEQ_SUB_CMD_SETUP_TEMPO_RESET:
                        // Reset tempo to previous tempo
                        SEQCMD_RESET_TEMPO(playerIndexTarget, setupVal1);
                        break;

                    case SEQ_SUB_CMD_SETUP_PLAY_SEQ:
                        // Play the requested sequence
                        // Uses the fade timer set by SEQ_SUB_CMD_SETUP_SET_FADE_TIMER
                        seqId = gActiveSeqs[playerIndex].setupCmd[j] & 0xFFFF;
                        SEQCMD_PLAY_SEQUENCE(playerIndexTarget, gActiveSeqs[playerIndexTarget].setupFadeTimer, 0,
                                             seqId);
                        Audio_SetVolumeScale(playerIndexTarget, VOL_SCALE_INDEX_FANFARE, 0x7F, 0);
                        gActiveSeqs[playerIndexTarget].setupFadeTimer = 0;
                        break;

                    case SEQ_SUB_CMD_SETUP_SET_FADE_TIMER:
                        // A command specifically to support SEQ_SUB_CMD_SETUP_PLAY_SEQ
                        // Sets the fade timer for the sequence requested in SEQ_SUB_CMD_SETUP_PLAY_SEQ
                        gActiveSeqs[playerIndex].setupFadeTimer = setupVal2;
                        break;

                    case SEQ_SUB_CMD_SETUP_RESTORE_VOLUME_WITH_SCALE:
                        // Restore the volume back to default levels
                        // Allows a scaleIndex to be specified.
                        Audio_SetVolumeScale(playerIndexTarget, setupVal2, 0x7F, setupVal1);
                        break;

                    case SEQ_SUB_CMD_SETUP_POP_CACHE:
                        // Discard audio data by popping one more more audio caches from the audio heap
                        if (setupVal1 & (1 << SEQUENCE_TABLE)) {
                            Audio_QueueCmdS32(0xE3000000, SEQUENCE_TABLE);
                        }
                        if (setupVal1 & (1 << FONT_TABLE)) {
                            Audio_QueueCmdS32(0xE3000000, FONT_TABLE);
                        }
                        if (setupVal1 & (1 << SAMPLE_TABLE)) {
                            Audio_QueueCmdS32(0xE3000000, SAMPLE_TABLE);
                        }
                        break;

                    case SEQ_SUB_CMD_SETUP_DISABLE_CHANNELS:
                        // Disable (or reenable) specific channels of playerIndexTarget
                        channelMask = gActiveSeqs[playerIndex].setupCmd[j] & 0xFFFF;
                        SEQCMD_DISABLE_CHANNELS(playerIndexTarget, channelMask);
                        break;

                    case SEQ_SUB_CMD_SETUP_SET_PLAYER_FREQ:
                        // Scale all channels of playerIndexTarget
                        SEQCMD_SET_PLAYER_FREQ(playerIndexTarget, setupVal2, (setupVal1 * 10) & 0xFFFF);
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
    u8 scaleIndex;

    for (playerIndex = 0; playerIndex < 4; playerIndex++) {
        sNumSeqRequests[playerIndex] = 0;

        gActiveSeqs[playerIndex].seqId = NA_BGM_DISABLED;
        gActiveSeqs[playerIndex].prevSeqId = NA_BGM_DISABLED;
        gActiveSeqs[playerIndex].tempoDuration = 0;
        gActiveSeqs[playerIndex].tempoOriginal = 0;
        gActiveSeqs[playerIndex].tempoCmd = 0;
        gActiveSeqs[playerIndex].channelPortMask = 0;
        gActiveSeqs[playerIndex].setupCmdNum = 0;
        gActiveSeqs[playerIndex].setupFadeTimer = 0;
        gActiveSeqs[playerIndex].freqScaleChannelFlags = 0;
        gActiveSeqs[playerIndex].volChannelFlags = 0;
        for (scaleIndex = 0; scaleIndex < VOL_SCALE_INDEX_MAX; scaleIndex++) {
            gActiveSeqs[playerIndex].volScales[scaleIndex] = 0x7F;
        }

        gActiveSeqs[playerIndex].volFadeTimer = 1;
        gActiveSeqs[playerIndex].fadeVolUpdate = 1;
    }
}

void Audio_ResetSequencesAndVolume(void) {
    u8 playerIndex;
    u8 scaleIndex;

    for (playerIndex = 0; playerIndex < 4; playerIndex++) {
        gActiveSeqs[playerIndex].volCur = 1.0f;
        gActiveSeqs[playerIndex].volDuration = 0;
        gActiveSeqs[playerIndex].fadeVolUpdate = 0;
        for (scaleIndex = 0; scaleIndex < VOL_SCALE_INDEX_MAX; scaleIndex++) {
            gActiveSeqs[playerIndex].volScales[scaleIndex] = 0x7F;
        }
    }
    Audio_ResetSequences();
}
