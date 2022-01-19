#include "ultra64.h"
#include "global.h"
#include "ultra64/abi.h"

// ==== Primary commands ====

typedef enum {
    /* 0x0 */ SEQ_CMD_START,
    /* 0x1 */ SEQ_CMD_STOP,
    /* 0x2 */ SEQ_CMD_QUEUE,
    /* 0x3 */ SEQ_CMD_UNQUEUE,
    /* 0x4 */ SEQ_CMD_SET_PLAYER_VOL,
    /* 0x5 */ SEQ_CMD_SET_PLAYER_FREQ,
    /* 0x6 */ SEQ_CMD_SET_CHANNEL_VOL,
    /* 0x7 */ SEQ_CMD_SET_PLAYER_IO,
    /* 0x8 */ SEQ_CMD_SET_CHANNEL_IO,
    /* 0x9 */ SEQ_CMD_SET_CHANNEL_IO_MASK,
    /* 0xA */ SEQ_CMD_SET_ACTIVE_CHANNELS,
    /* 0xB */ SEQ_CMD_TEMPO_CMD,
    /* 0xC */ SEQ_CMD_SETUP_CMD,
    /* 0xD */ SEQ_CMD_SET_CHANNEL_FREQ,
    /* 0xE */ SEQ_CMD_SUB_CMD,
    /* 0xF */ SEQ_CMD_SET_SPEC
} SeqCmdType;

// ==== Secondary commands ====

typedef enum {
    /* 0x1 */ TEMPO_CMD_SPEED_UP = 1,
    /* 0x2 */ TEMPO_CMD_SLOW_DOWN,
    /* 0x3 */ TEMPO_CMD_SCALE,
    /* 0x4 */ TEMPO_CMD_RESET
} TempoCmdType;

typedef enum {
    /* 0x0 */ SETUP_CMD_SET_VOLUME,
    /* 0x1 */ SETUP_CMD_SEQ_UNQUEUE,
    /* 0x2 */ SETUP_CMD_SEQ_START,
    /* 0x3 */ SETUP_CMD_TEMPO_SCALE,
    /* 0x4 */ SETUP_CMD_TEMPO_RESET,
    /* 0x5 */ SETUP_CMD_SEQ_START_WITH_FADE,
    /* 0x6 */ SETUP_CMD_SET_FADE_TIMER,
    /* 0x7 */ SETUP_CMD_SET_VOLUME_IF_QUEUED,
    /* 0x8 */ SETUP_CMD_SET_VOLUME_WITH_FADE,
    /* 0x9 */ SETUP_CMD_SEQ_ACTIVE_CHANNELS,
    /* 0xA */ SETUP_CMD_SET_PLAYER_FREQ,
    /* 0xE */ SETUP_CMD_POP_CACHE = 0xE
} SetupCmdType;

typedef enum {
    /* 0x0 */ SUB_CMD_SET_SOUND_MODE,
    /* 0x1 */ SUB_CMD_DISABLE_NEW_SEQUENCES
} SubCmdType;

// ==== Commands Wrappers ====

// TODO: clean up these macros. They are similar to ones in code_800EC960.c but without casts.
// TODO: Carefully double check all bit-shifts are correct
// external audio commands
#define AudioSeqCmd_StartSequence(playerIdx, fadeTimer, seqId)                          Audio_QueueSeqCmd((SEQ_CMD_START << 28)                 | ((playerIdx) << 24)   | ((fadeTimer) << 16) | (seqId))
#define AudioSeqCmd_StopSequence(playerIdx, fadeTimer)                                  Audio_QueueSeqCmd((SEQ_CMD_STOP << 28)                  | ((u8)playerIdx << 24) | ((u8)(fadeTimer) << 16) | 0xFF)
#define AudioSeqCmd_QueueSequence(playerIdx, fadeTimer, importance, seqId)              Audio_QueueSeqCmd((SEQ_CMD_QUEUE << 28)                 | ((playerIdx) << 24)   | ((fadeTimer) << 16) | ((importance) << 8) | (seqId))
#define AudioSeqCmd_UnqueueSequence(playerIdx, fadeTimer)                               Audio_QueueSeqCmd((SEQ_CMD_UNQUEUE << 28)               | ((playerIdx) << 24)   | (fadeTimer))
#define AudioSeqCmd_SetPlayerVol(playerIdx, duration, volume)                           Audio_QueueSeqCmd((SEQ_CMD_SET_PLAYER_VOL << 28)        | ((playerIdx) << 24)   | ((duration) << 16) | (volume))
#define AudioSeqCmd_SetPlayerFreq(playerIdx, duration, freq)                            Audio_QueueSeqCmd((SEQ_CMD_SET_PLAYER_FREQ << 28)       | ((playerIdx) << 24)   | ((duration) << 16) | (freq))
#define AudioSeqCmd_SetChannelFreq(playerIdx, duration, channelIdx, freq)               Audio_QueueSeqCmd((SEQ_CMD_SET_CHANNEL_FREQ << 28)      | ((playerIdx) << 24)   | ((duration) << 16) | ((channelIdx) << 12) | (freq))
#define AudioSeqCmd_SetChannelVol(playerIdx, duration, channelIdx, volume)              Audio_QueueSeqCmd((SEQ_CMD_SET_CHANNEL_VOL << 28)       | ((playerIdx) << 24)   | ((duration) << 16) | ((channelIdx) << 8) | (volume))
#define AudioSeqCmd_SetPlayerIO(playerIdx, port, val)                                   Audio_QueueSeqCmd((SEQ_CMD_SET_PLAYER_IO << 28)         | ((playerIdx) << 24)   | ((port) << 16) | (val))
#define AudioSeqCmd_SetChannelIO(playerIdx, port, channelIdx, val)                      Audio_QueueSeqCmd((SEQ_CMD_SET_CHANNEL_IO << 28)        | ((playerIdx) << 24)   | ((port) << 16) | ((channelIdx) << 8) | (val))
#define AudioSeqCmd_SetChannelIOMask(playerIdx, mask)                                   Audio_QueueSeqCmd((SEQ_CMD_SET_CHANNEL_IO_MASK << 28)   | ((playerIdx) << 24)   | (mask))
#define AudioSeqCmd_SetActiveChannels(playerIdx, channelMask)                           Audio_QueueSeqCmd((SEQ_CMD_SET_ACTIVE_CHANNELS << 28)   | ((playerIdx) << 24)   | (channelMask))
#define AudioSeqCmd_SetSpec(playerIdx, sfxChannelLayout, spec)                          Audio_QueueSeqCmd((SEQ_CMD_SET_SPEC << 28)              | ((playerIdx) << 24)   | ((sfxChannelLayout) << 8) | (spec))

// Tempo commands (secondary commands to SEQ_CMD_TEMPO_CMD)
#define AudioSeqCmd_SpeedUpTempo(playerIdx, duration, tempoIncrease)                    Audio_QueueSeqCmd((SEQ_CMD_TEMPO_CMD << 28) | (TEMPO_CMD_SPEED_UP << 12)    | ((playerIdx) << 24) | ((duration) << 16) | (tempoIncrease))
#define AudioSeqCmd_SlowDownTempo(playerIdx, duration, tempoDecrease)                   Audio_QueueSeqCmd((SEQ_CMD_TEMPO_CMD << 28) | (TEMPO_CMD_SLOW_DOWN << 12)   | ((playerIdx) << 24) | ((duration) << 16) | (tempoDecrease))
#define AudioSeqCmd_ScaleTempo(playerIdx, duration, tempoScale)                         Audio_QueueSeqCmd((SEQ_CMD_TEMPO_CMD << 28) | (TEMPO_CMD_SCALE << 12)       | ((playerIdx) << 24) | ((duration) << 16) | (tempoScale))
#define AudioSeqCmd_ResetTempo(playerIdx, duration)                                     Audio_QueueSeqCmd((SEQ_CMD_TEMPO_CMD << 28) | (TEMPO_CMD_RESET << 12)       | ((playerIdx) << 24) | ((duration) << 16))

// Setup commands (secondary commands to SEQ_CMD_SETUP_CMD)
#define AudioSeqCmd_SetupSetPlayerVol(playerIdx, PlayerIdxToSet, volume)                Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_SET_VOLUME << 20)              | ((playerIdx) << 24) | ((PlayerIdxToSet) << 16) | (volume))
#define AudioSeqCmd_SetupUnqueueSequence(playerIdx)                                     Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_SEQ_UNQUEUE << 20)             | ((playerIdx) << 24))
#define AudioSeqCmd_SetupStartSequence(playerIdx, PlayerIdxToStart)                     Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_SEQ_START << 20)               | ((playerIdx) << 24) | ((PlayerIdxToStart) << 16))
#define AudioSeqCmd_SetupScaleTempo(playerIdx, PlayerIdxToSet, duration, tempoScale)    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_TEMPO_SCALE << 20)             | ((playerIdx) << 24) | ((PlayerIdxToSet) << 16) | ((duration) << 8) | (tempoScale))
#define AudioSeqCmd_SetupResetTempo(playerIdx, PlayerIdxToSet, duration)                Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_TEMPO_RESET << 20)             | ((playerIdx) << 24) | ((PlayerIdxToSet) << 16) | (duration))
#define AudioSeqCmd_SetupStartSequenceWithFade(playerIdx, PlayerIdxToSet, seqId)        Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_SEQ_START_WITH_FADE << 20)     | ((playerIdx) << 24) | ((PlayerIdxToSet) << 16) | (seqId))
#define AudioSeqCmd_SetupSetFadeTimer(playerIdx, PlayerIdxToSet, fadeTimer)             Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_SET_FADE_TIMER << 20)          | ((playerIdx) << 24) | ((PlayerIdxToSet) << 16) | ((fadeTimer) << 8))
#define AudioSeqCmd_SetupSetPlayerVolumeIfQueued(playerIdx, PlayerIdxToSet, fadeTimer, numSeqRequests)  Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_SET_VOLUME_IF_QUEUED << 20)    | ((playerIdx) << 24) | ((PlayerIdxToSet) << 16) | ((fadeTimer) << 8) | (numSeqRequests))
#define AudioSeqCmd_SetupSetPlayerVolumeWithFade(playerIdx, PlayerIdxToSet, scaleIdx, fadeTimer)        Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_SET_VOLUME_WITH_FADE << 20)    | ((playerIdx) << 24) | ((PlayerIdxToSet) << 16) | ((scaleIdx) << 8) | (fadeTimer))
#define AudioSeqCmd_SetupSetActiveChannels(playerIdx, PlayerIdxToSet, channelMask)      Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_SEQ_ACTIVE_CHANNELS << 20)     | ((playerIdx) << 24) | ((PlayerIdxToSet) << 16) | (channelMask))
#define AudioSeqCmd_SetupSetPlayerFreq(playerIdx, PlayerIdxToSet, duration, freq)       Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_SET_PLAYER_FREQ << 20)         | ((playerIdx) << 24) | ((PlayerIdxToSet) << 16) | ((duration) << 8) | (freq))
#define AudioSeqCmd_SetupPopCache(playerIdx, PlayerIdxToSet, tableTypeFlag)             Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_POP_CACHE << 20)               | ((playerIdx) << 24) | ((PlayerIdxToSet) << 16) | (tableTypeFlag))

// Sub commands
#define AudioSeqCmd_SetSoundMode(playerIdx, soundMode)                                  Audio_QueueSeqCmd((SEQ_CMD_SUB_CMD << 28) | (SUB_CMD_SET_SOUND_MODE << 8)        | ((playerIdx) << 24) | (soundMode))
#define AudioSeqCmd_DisableNewSequences(playerIdx, isDisabled)                          Audio_QueueSeqCmd((SEQ_CMD_SUB_CMD << 28) | (SUB_CMD_DISABLE_NEW_SEQUENCES << 8) | ((playerIdx) << 24) | (isDisabled))

// direct audio commands (skips the queueing system)
#define Audio_SetVolScaleNow(playerIdx, volFadeTimer, volScale) \
    Audio_ProcessSeqCmd(0x40000000 | ((u8)playerIdx << 24) | ((u8)volFadeTimer << 16) | ((u8)(volScale * 127.0f)));


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
u8 D_8013340C = 1;
u8 sSoundModes[] = { 0, 1, 2, 3 };
u8 gAudioSpecId = 0;
u8 D_80133418 = 0;

void Audio_StartSequence(u8 playerIdx, u8 seqId, u8 seqArgs, u16 fadeTimer) {
    u8 channelIdx;
    u16 duration;
    s32 pad;

    if (sIsSeqStartDisabled == 0 || playerIdx == 2) {
        seqArgs &= 0x7F;
        if (seqArgs == 0x7F) {
            duration = (fadeTimer >> 3) * 60 * gAudioContext.audioBufferParameters.updatesPerFrame;
            Audio_QueueCmdS32(0x85000000 | _SHIFTL(playerIdx, 16, 8) | _SHIFTL(seqId, 8, 8), duration);
        } else {
            Audio_QueueCmdS32(0x82000000 | _SHIFTL(playerIdx, 16, 8) | _SHIFTL(seqId, 8, 8),
                              (fadeTimer * (u16)gAudioContext.audioBufferParameters.updatesPerFrame) / 4);
        }

        gActiveSeqs[playerIdx].seqId = seqId | (seqArgs << 8);
        gActiveSeqs[playerIdx].prevSeqId = seqId | (seqArgs << 8);

        if (gActiveSeqs[playerIdx].volCur != 1.0f) {
            Audio_QueueCmdF32(0x41000000 | _SHIFTL(playerIdx, 16, 8), gActiveSeqs[playerIdx].volCur);
        }

        gActiveSeqs[playerIdx].tempoDuration = 0;
        gActiveSeqs[playerIdx].tempoPrev = 0;
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

void Audio_StopSequence(u8 playerIdx, u16 fadeTimer) {
    Audio_QueueCmdS32(0x83000000 | ((u8)playerIdx << 16),
                      (fadeTimer * (u16)gAudioContext.audioBufferParameters.updatesPerFrame) / 4);
    gActiveSeqs[playerIdx].seqId = NA_BGM_DISABLED;
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
    u8 playerIdx;
    u8 seqId;
    u8 seqArgs;
    u8 found;
    u8 port;
    u8 duration;
    u8 channelIdx;
    u8 i;
    f32 freqScaleTarget;
    s32 pad;

    if (D_8013340C && (cmd & 0xF0000000) != 0x70000000) {
        AudioDebug_ScrPrt((const s8*)D_80133390, (cmd >> 16) & 0xFFFF); // "SEQ H"
        AudioDebug_ScrPrt((const s8*)D_80133398, cmd & 0xFFFF);         // "    L"
    }

    op = cmd >> 28;
    playerIdx = (cmd & 0xF000000) >> 24;

    switch (op) {
        case SEQ_CMD_START:
            // play sequence immediately
            seqId = cmd & 0xFF;
            seqArgs = (cmd & 0xFF00) >> 8;
            fadeTimer = (cmd & 0xFF0000) >> 13;
            if (!gActiveSeqs[playerIdx].isWaitingForFonts && (seqArgs < 0x80)) {
                Audio_StartSequence(playerIdx, seqId, seqArgs, fadeTimer);
            }
            break;

        case SEQ_CMD_STOP:
            // disable seq player
            fadeTimer = (cmd & 0xFF0000) >> 13;
            Audio_StopSequence(playerIdx, fadeTimer);
            break;

        case SEQ_CMD_QUEUE:
            // queue sequence
            seqId = cmd & 0xFF;
            seqArgs = (cmd & 0xFF00) >> 8;
            fadeTimer = (cmd & 0xFF0000) >> 13;
            importance = seqArgs;

            // Checks if the requested sequence is first in the list of requested
            // If it is already queued and first in the list, then play the sequence immediately
            for (i = 0; i < sNumSeqRequests[playerIdx]; i++) {
                if (sSeqRequests[playerIdx][i].seqId == seqId) {
                    if (i == 0) {
                        Audio_StartSequence(playerIdx, seqId, seqArgs, fadeTimer);
                    }
                    return;
                }
            }

            // Searches the sequence requests for the first request that does not have a higher priority
            // than the current incoming request
            found = sNumSeqRequests[playerIdx];
            for (i = 0; i < sNumSeqRequests[playerIdx]; i++) {
                if (sSeqRequests[playerIdx][i].importance <= importance) {
                    found = i;
                    i = sNumSeqRequests[playerIdx]; // "break;"
                }
            }

            // Check if the queue is full
            if (sNumSeqRequests[playerIdx] < 5) {
                sNumSeqRequests[playerIdx]++;
            }

            for (i = sNumSeqRequests[playerIdx] - 1; i != found; i--) {
                // Move all requests of lower importance backwards 1 place in the queue
                sSeqRequests[playerIdx][i].importance = sSeqRequests[playerIdx][i - 1].importance;
                sSeqRequests[playerIdx][i].seqId = sSeqRequests[playerIdx][i - 1].seqId;
            }

            // Fill the newly freed space in the queue with the new request
            sSeqRequests[playerIdx][found].importance = seqArgs;
            sSeqRequests[playerIdx][found].seqId = seqId;

            if (found == 0) {
                Audio_StartSequence(playerIdx, seqId, seqArgs, fadeTimer);
            }
            break;

        case SEQ_CMD_UNQUEUE:
            // unqueue sequence. If sequence is active, stop sequence and play next sequence in queue
            fadeTimer = (cmd & 0xFF0000) >> 13;

            found = sNumSeqRequests[playerIdx];
            for (i = 0; i < sNumSeqRequests[playerIdx]; i++) {
                seqId = cmd & 0xFF;
                if (sSeqRequests[playerIdx][i].seqId == seqId) {
                    found = i;
                    i = sNumSeqRequests[playerIdx]; // "break;"
                }
            }

            if (found != sNumSeqRequests[playerIdx]) {
                // Move all requests of lower importance forward 1 place in the queue
                for (i = found; i < sNumSeqRequests[playerIdx] - 1; i++) {
                    sSeqRequests[playerIdx][i].importance = sSeqRequests[playerIdx][i + 1].importance;
                    sSeqRequests[playerIdx][i].seqId = sSeqRequests[playerIdx][i + 1].seqId;
                }
                sNumSeqRequests[playerIdx]--;
            }

            if (found == 0) {
                Audio_StopSequence(playerIdx, fadeTimer);
                if (sNumSeqRequests[playerIdx] != 0) {
                    Audio_StartSequence(playerIdx, sSeqRequests[playerIdx][0].seqId, sSeqRequests[playerIdx][0].importance, fadeTimer);
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
            gActiveSeqs[playerIdx].volTarget = (f32)val / 127.0f;
            if (gActiveSeqs[playerIdx].volCur != gActiveSeqs[playerIdx].volTarget) {
                gActiveSeqs[playerIdx].volVelocity =
                    (gActiveSeqs[playerIdx].volCur - gActiveSeqs[playerIdx].volTarget) / (f32)duration;
                gActiveSeqs[playerIdx].volDuration = duration;
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
                gActiveSeqs[playerIdx].channelData[i].freqScaleTarget = freqScaleTarget;
                gActiveSeqs[playerIdx].channelData[i].freqScaleDuration = duration;
                gActiveSeqs[playerIdx].channelData[i].freqScaleVelocity =
                    (gActiveSeqs[playerIdx].channelData[i].freqScaleCur - freqScaleTarget) / (f32)duration;
            }
            gActiveSeqs[playerIdx].freqScaleChannelFlags = 0xFFFF;
            break;

        case SEQ_CMD_SET_CHANNEL_FREQ:
            // transition freq scale
            duration = (cmd & 0xFF0000) >> 15;
            channelIdx = (cmd & 0xF000) >> 12;
            val = cmd & 0xFFF;
            if (duration == 0) {
                duration++;
            }
            freqScaleTarget = (f32)val / 1000.0f;
            gActiveSeqs[playerIdx].channelData[channelIdx].freqScaleTarget = freqScaleTarget;
            gActiveSeqs[playerIdx].channelData[channelIdx].freqScaleVelocity =
                (gActiveSeqs[playerIdx].channelData[channelIdx].freqScaleCur - freqScaleTarget) / (f32)duration;
            gActiveSeqs[playerIdx].channelData[channelIdx].freqScaleDuration = duration;
            gActiveSeqs[playerIdx].freqScaleChannelFlags |= 1 << channelIdx;
            break;

        case SEQ_CMD_SET_CHANNEL_VOL:
            // transition volume for a specific channel
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

        case SEQ_CMD_SET_PLAYER_IO:
            // set global io port
            port = (cmd & 0xFF0000) >> 16;
            val = cmd & 0xFF;
            Audio_QueueCmdS8(0x46000000 | _SHIFTL(playerIdx, 16, 8) | _SHIFTL(port, 0, 8), val);
            break;

        case SEQ_CMD_SET_CHANNEL_IO:
            // set io port if channel masked
            channelIdx = (cmd & 0xF00) >> 8;
            port = (cmd & 0xFF0000) >> 16;
            val = cmd & 0xFF;
            if ((gActiveSeqs[playerIdx].channelPortMask & (1 << channelIdx)) == 0) {
                Audio_QueueCmdS8(0x06000000 | _SHIFTL(playerIdx, 16, 8) | _SHIFTL(channelIdx, 8, 8) | _SHIFTL(port, 0, 8),
                                 val);
            }
            break;

        case SEQ_CMD_SET_CHANNEL_IO_MASK:
            // set channel mask for command 0x8
            gActiveSeqs[playerIdx].channelPortMask = cmd & 0xFFFF;
            break;

        case SEQ_CMD_SET_ACTIVE_CHANNELS:
            // set channel stop mask
            channelMask = cmd & 0xFFFF;
            if (channelMask != 0) {
                // with channel mask channelMask...
                Audio_QueueCmdU16(0x90000000 | _SHIFTL(playerIdx, 16, 8), channelMask);
                // stop channels
                Audio_QueueCmdS8(0x08000000 | _SHIFTL(playerIdx, 16, 8) | 0xFF00, 1);
            }
            channelMaskN = (channelMask ^ 0xFFFF);
            if (channelMaskN != 0) {
                // with channel mask ~channelMask...
                Audio_QueueCmdU16(0x90000000 | _SHIFTL(playerIdx, 16, 8), channelMaskN);
                // unstop channels
                Audio_QueueCmdS8(0x08000000 | _SHIFTL(playerIdx, 16, 8) | 0xFF00, 0);
            }
            break;

        case SEQ_CMD_TEMPO_CMD:
            // update tempo using a command
            gActiveSeqs[playerIdx].tempoCmd = cmd;
            break;

        case SEQ_CMD_SETUP_CMD:
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

u16 Audio_GetActiveSequence(u8 playerIdx) {
    if (!gAudioContext.seqPlayers[playerIdx].enabled) {
        return NA_BGM_DISABLED;
    }
    return gActiveSeqs[playerIdx].seqId;
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

/**
 * Apply various high-level commands to the active sequences
 */
void Audio_UpdateActiveSequences(void) {
    u32 tempoCmd;
    u8 tempoOp;
    u16 tempoPrev;
    u16 tempoTarget;
    u8 setupOp;
    u8 setupPlayerIdx;
    u8 setupVal2;
    u8 setupVal1;
    u16 seqId;
    s32 pad[2];
    u16 channelMask; 
    u32 dummy;
    f32 volume;
    u8 tempoDuration;
    u8 playerIdx;
    u8 j;
    u8 channelIdx;

    for (playerIdx = 0; playerIdx < 4; playerIdx++) {

        // The setup for this block of code (within this single if-statement) was not implemented until Majora's Mask
        // Check if the requested sequences is waiting for fonts to load
        if (gActiveSeqs[playerIdx].isWaitingForFonts) {
            switch (func_800E5E20(&dummy)) {
                case 1:
                case 2:
                case 3:
                case 4:
                    // The fonts have been loaded successfully.
                    gActiveSeqs[playerIdx].isWaitingForFonts = false;
                    // Queue the same command that was stored previously
                    Audio_ProcessSeqCmd(gActiveSeqs[playerIdx].startSeqCmd);
                    break;
            }
        }

        if (gActiveSeqs[playerIdx].fadeVolUpdate) {
            volume = 1.0f;
            for (j = 0; j < 4; j++) {
                volume *= (gActiveSeqs[playerIdx].volScales[j] / 127.0f);
            }
            AudioSeqCmd_SetPlayerVol(playerIdx, gActiveSeqs[playerIdx].volFadeTimer, (u8)(volume * 127.0f));
            gActiveSeqs[playerIdx].fadeVolUpdate = 0;
        }

        if (gActiveSeqs[playerIdx].volDuration != 0) {
            gActiveSeqs[playerIdx].volDuration--;

            if (gActiveSeqs[playerIdx].volDuration != 0) {
                gActiveSeqs[playerIdx].volCur -= gActiveSeqs[playerIdx].volVelocity;
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
                tempoPrev = gAudioContext.seqPlayers[playerIdx].tempo / 0x30;
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
                        if (gActiveSeqs[playerIdx].tempoPrev) {
                            tempoTarget = gActiveSeqs[playerIdx].tempoPrev;
                        } else {
                            tempoTarget = tempoPrev;
                        }
                        break;
                }

                if (tempoTarget > 300) {
                    tempoTarget = 300;
                }

                if (gActiveSeqs[playerIdx].tempoPrev == 0) {
                    gActiveSeqs[playerIdx].tempoPrev = tempoPrev;
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
                gActiveSeqs[playerIdx].tempoCur -= gActiveSeqs[playerIdx].tempoVelocity;
            } else {
                gActiveSeqs[playerIdx].tempoCur = gActiveSeqs[playerIdx].tempoTarget;
            }
            // set tempo
            Audio_QueueCmdS32(0x47000000 | _SHIFTL(playerIdx, 16, 8), gActiveSeqs[playerIdx].tempoCur);
        }

        if (gActiveSeqs[playerIdx].volChannelFlags != 0) {
            for (channelIdx = 0; channelIdx < 16; channelIdx++) {
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
            for (channelIdx = 0; channelIdx < 16; channelIdx++) {
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

        // Process setup commands
        if (gActiveSeqs[playerIdx].setupCmdNum != 0) {
            // If there is any "Audio_SeqCmdF" queued, drop all setup commands
            if (!Audio_IsSeqCmdNotQueued(0xF0000000, 0xF0000000)) {
                gActiveSeqs[playerIdx].setupCmdNum = 0;
                return;
            }

            // Only process setup commands once the timer reaches zero
            if (gActiveSeqs[playerIdx].setupCmdTimer != 0) {
                gActiveSeqs[playerIdx].setupCmdTimer--;
                continue;
            }

            // Do not process setup commands if the seqPlayer is already enabled
            if (gAudioContext.seqPlayers[playerIdx].enabled) {
                continue;
            }

            for (j = 0; j < gActiveSeqs[playerIdx].setupCmdNum; j++) {
                setupOp = (gActiveSeqs[playerIdx].setupCmd[j] & 0x00F00000) >> 20;
                setupPlayerIdx = (gActiveSeqs[playerIdx].setupCmd[j] & 0x000F0000) >> 16;
                setupVal2 = (gActiveSeqs[playerIdx].setupCmd[j] & 0xFF00) >> 8;
                setupVal1 = gActiveSeqs[playerIdx].setupCmd[j] & 0xFF;

                switch (setupOp) {
                    case SETUP_CMD_SET_VOLUME:
                        Audio_SetVolumeScale(setupPlayerIdx, 1, 0x7F, setupVal1);
                        break;
                    case SETUP_CMD_SET_VOLUME_IF_QUEUED:
                        if (sNumSeqRequests[playerIdx] == setupVal1) {
                            Audio_SetVolumeScale(setupPlayerIdx, 1, 0x7F, setupVal2);
                        }
                        break;
                    case SETUP_CMD_SEQ_UNQUEUE:
                        AudioSeqCmd_UnqueueSequence(playerIdx, gActiveSeqs[playerIdx].seqId);
                        break;
                    case SETUP_CMD_SEQ_START:
                        AudioSeqCmd_StartSequence(setupPlayerIdx, 1, gActiveSeqs[setupPlayerIdx].seqId);
                        gActiveSeqs[setupPlayerIdx].fadeVolUpdate = 1;
                        gActiveSeqs[setupPlayerIdx].volScales[1] = 0x7F;
                        break;
                    case SETUP_CMD_TEMPO_SCALE:
                        AudioSeqCmd_ScaleTempo(setupPlayerIdx, setupVal2, setupVal1);
                        break;
                    case SETUP_CMD_TEMPO_RESET:
                        AudioSeqCmd_ResetTempo(setupPlayerIdx, setupVal1);
                        break;
                    case SETUP_CMD_SEQ_START_WITH_FADE:
                        seqId = gActiveSeqs[playerIdx].setupCmd[j] & 0xFFFF;
                        AudioSeqCmd_StartSequence(setupPlayerIdx, gActiveSeqs[setupPlayerIdx].setupFadeTimer, seqId);
                        Audio_SetVolumeScale(setupPlayerIdx, 1, 0x7F, 0);
                        gActiveSeqs[setupPlayerIdx].setupFadeTimer = 0;
                        break;
                    case SETUP_CMD_SET_FADE_TIMER:
                        gActiveSeqs[playerIdx].setupFadeTimer = setupVal2;
                        break;
                    case SETUP_CMD_SET_VOLUME_WITH_FADE:
                        Audio_SetVolumeScale(setupPlayerIdx, setupVal2, 0x7F, setupVal1);
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
                        channelMask = gActiveSeqs[playerIdx].setupCmd[j] & 0xFFFF;
                        AudioSeqCmd_SetActiveChannels(setupPlayerIdx, channelMask);
                        break;
                    case SETUP_CMD_SET_PLAYER_FREQ:
                        AudioSeqCmd_SetPlayerFreq(setupPlayerIdx, setupVal2, (setupVal1 * 10) & 0xFFFF);
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
        gActiveSeqs[playerIdx].tempoPrev = 0;
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
