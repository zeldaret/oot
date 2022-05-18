#ifndef SEQCMD_H
#define SEQCMD_H

// ==== Primary commands ====

#define SEQ_CMD_MASK 0xF0000000

typedef enum {
    /* 0x0 */ SEQ_CMD_PLAY,
    /* 0x1 */ SEQ_CMD_STOP,
    /* 0x2 */ SEQ_CMD_QUEUE,
    /* 0x3 */ SEQ_CMD_UNQUEUE,
    /* 0x4 */ SEQ_CMD_SET_PLAYER_VOL,
    /* 0x5 */ SEQ_CMD_SET_PLAYER_FREQ,
    /* 0x6 */ SEQ_CMD_SET_CHANNEL_VOL,
    /* 0x7 */ SEQ_CMD_SET_PLAYER_IO,
    /* 0x8 */ SEQ_CMD_SET_CHANNEL_IO,
    /* 0x9 */ SEQ_CMD_DISABLE_CHANNEL_IO,
    /* 0xA */ SEQ_CMD_DISABLE_CHANNELS,
    /* 0xB */ SEQ_CMD_TEMPO_CMD,
    /* 0xC */ SEQ_CMD_SETUP_CMD,
    /* 0xD */ SEQ_CMD_SET_CHANNEL_FREQ,
    /* 0xE */ SEQ_CMD_GLOBAL_CMD,
    /* 0xF */ SEQ_CMD_RESET_HEAP
} SeqCmdType;

// ==== Secondary commands ====

// Subset of SEQ_CMD_TEMPO_CMD
typedef enum {
    /* 0x0 */ SEQ_SUB_CMD_TEMPO_SET,
    /* 0x1 */ SEQ_SUB_CMD_TEMPO_SPEED_UP,
    /* 0x2 */ SEQ_SUB_CMD_TEMPO_SLOW_DOWN,
    /* 0x3 */ SEQ_SUB_CMD_TEMPO_SCALE,
    /* 0x4 */ SEQ_SUB_CMD_TEMPO_RESET
} TempoCmdType;

// Subset of SEQ_CMD_SETUP_CMD
typedef enum {
    /* 0x0 */ SEQ_SUB_CMD_SETUP_RESTORE_VOLUME,
    /* 0x1 */ SEQ_SUB_CMD_SETUP_SEQ_UNQUEUE,
    /* 0x2 */ SEQ_SUB_CMD_SETUP_RESTART_SEQ,
    /* 0x3 */ SEQ_SUB_CMD_SETUP_TEMPO_SCALE,
    /* 0x4 */ SEQ_SUB_CMD_SETUP_TEMPO_RESET,
    /* 0x5 */ SEQ_SUB_CMD_SETUP_PLAY_SEQ,
    /* 0x6 */ SEQ_SUB_CMD_SETUP_SET_FADE_TIMER,
    /* 0x7 */ SEQ_SUB_CMD_SETUP_RESTORE_VOLUME_IF_QUEUED,
    /* 0x8 */ SEQ_SUB_CMD_SETUP_RESTORE_VOLUME_WITH_SCALE,
    /* 0x9 */ SEQ_SUB_CMD_SETUP_DISABLE_CHANNELS,
    /* 0xA */ SEQ_SUB_CMD_SETUP_SET_PLAYER_FREQ,
    /* 0xE */ SEQ_SUB_CMD_SETUP_POP_CACHE = 0xE,
    /* 0xF */ SEQ_SUB_CMD_SETUP_RESET_SETUP_CMDS
} SetupCmdType;

// Subset of SEQ_CMD_GLOBAL_CMD
typedef enum {
    /* 0x0 */ SEQ_SUB_CMD_GLOBAL_SET_SOUND_MODE,
    /* 0x1 */ SEQ_SUB_CMD_GLOBAL_DISABLE_NEW_SEQUENCES
} SubCmdType;

// ==== Audio Sequence Primary Commands ====

/**
 * ARGS
 *   playerIndex (p), fadeInTimer (t), seqArgs (a), seqId (s)
 *
 * FORMAT
 *   Capital U is unused
 *   0pttaass
 *
 * DESCRIPTION
 *   Request a sequence (seqId) to be played on the specified player (playerIndex).
 *   The sequence will gradually fade in over the course of (fadeInTimer).
 *   How (fadeInTimer) is interpreted depends on (seqArgs)
 *
 *   seqArgs = 8 and seqArgs = 9 (commonly used arguments) appear to have no functionality, 
 *   although unused commands may suggest  these were intended to be a an priority for an unimplemented priority system.
 *   
 *   ((seqArgs & 0x7F) != 0x7F) will interpret fadeInTimer as number of frames at 30 fps
 *   ((seqArgs & 0x7F) == 0x7F) will interpret fadeInTimer as skip ticks
 *   (seqArgs & 0x80) i.e. (seqArgs >= 0x80) has an incomplete implementation
 *   and is not functional in Ocarina of Time. No sequence will play as a result.
 *   The code and purpose for seqArgs >= 0x80 was completed and is functional in Majora's Mask.
 */
#define AudioSeqCmd_PlaySequence(playerIndex, fadeInTimer, seqArgs, seqId)                           \
    Audio_QueueSeqCmd((SEQ_CMD_PLAY << 28) | ((u8)(playerIndex) << 24) | ((u8)(fadeInTimer) << 16) | \
                      ((u8)(seqArgs) << 8) | (u16)(seqId))

/**
 * ARGS
 *   playerIndex (p), fadeOutTimer (t)
 *
 * FORMAT
 *   Capital U is unused
 *   1pttUUFF
 *
 * DESCRIPTION
 *   Request the active sequence to be stopped on the specified player (playerIndex).
 *   The sequence will gradually fade out over the course of (fadeOutTimer) frames at a rate of 30 fps.
 *   Note: The 0xFF in the command is not read from at all, but is common in all StopSequence Commands
 */
#define AudioSeqCmd_StopSequence(playerIndex, fadeOutTimer) \
    Audio_QueueSeqCmd((SEQ_CMD_STOP << 28) | 0xFF | ((u8)(playerIndex) << 24) | ((u8)(fadeOutTimer) << 16))

/**
 * ARGS
 *   playerIndex (p), fadeInTimer (t), priority/seqArgs (i), seqId (s)
 *
 * FORMAT
 *   Capital U is unused
 *   2pttiiss
 *
 * DESCRIPTION
 *   Request a sequence (seqId) be added to a queue for a specified player (playerIndex).
 *   The request will be queued based on (priority).
 *   Higher values have higher priority and will be queued to play sooner
 *   The sequence will gradually fade in over the course of (fadeInTimer).
 *   How (fadeInTimer) is interpreted depends on (seqArgs), see AudioSeqCmd_PlaySequence
 *
 *   The sequence that will be playing will be the 1st entry of the queue
 */
#define AudioSeqCmd_QueueSequence(playerIndex, fadeInTimer, priority, seqId)                        \
    Audio_QueueSeqCmd((SEQ_CMD_QUEUE << 28) | ((u8)(playerIndex) << 24) | ((u8)(fadeInTimer) << 16) | \
                      ((u8)(priority) << 8) | (u8)(seqId))

/**
 * ARGS
 *   playerIndex (p), fadeOutTimer (t), seqId (s)
 *
 * FORMAT
 *   Capital U is unused
 *   3pttUUss
 *
 * DESCRIPTION
 *   Request the active sequence to be stopped on the specified player (playerIndex).
 *   Start the next sequence in the queue and move all requests forward place in the queue.
 *   The sequence will gradually fade out over the course of (fadeOutTimer) frames at a rate of 30 fps.
 */
#define AudioSeqCmd_UnqueueSequence(playerIndex, fadeOutTimer, seqId) \
    Audio_QueueSeqCmd((SEQ_CMD_UNQUEUE << 28) | ((u8)(playerIndex) << 24) | ((u8)(fadeOutTimer) << 16) | (seqId))

/**
 * ARGS
 *   playerIndex (p), duration (d), volume (v)
 *
 * FORMAT
 *   Capital U is unused
 *   4pddUUvv
 *
 * DESCRIPTION
 *   Set the (volume) of an entire sequence on (playerIndex) over a (duration).
 */
#define AudioSeqCmd_SetPlayerVol(playerIndex, duration, volume) \
    Audio_QueueSeqCmd((SEQ_CMD_SET_PLAYER_VOL << 28) | ((u8)(playerIndex) << 24) | ((duration) << 16) | (volume))

/**
 * ARGS
 *   playerIndex (p), duration (d), freq (f)
 *
 * FORMAT
 *   Capital U is unused
 *   5pddffff
 *
 * DESCRIPTION
 *   Scale the frequency of an entire sequence on (playerIndex).
 *   The scaling factor (freq) is relative to 1000.
 *   i.e. freq = 2000 with double the pitch and freq = 500 will half the pitch. 
 *   Apply the frequency shift over (duration)
 */
#define AudioSeqCmd_SetPlayerFreq(playerIndex, duration, freq) \
    Audio_QueueSeqCmd((SEQ_CMD_SET_PLAYER_FREQ << 28) | ((u8)(playerIndex) << 24) | ((duration) << 16) | (freq))

/**
 * ARGS
 *   playerIndex (p), duration (d), channelIndex (c), freq (f)
 *
 * FORMAT
 *   Capital U is unused
 *   Dpddcfff
 *
 * DESCRIPTION
 *   Scale the frequency of a specific channel (channelIndex) on (playerIndex).
 *   The scaling factor (freq) is relative to 1000.
 *   i.e. freq = 2000 with double the pitch and freq = 500 will half the pitch.
 *   Apply the frequency shift over (duration)
 */
#define AudioSeqCmd_SetChannelFreq(playerIndex, duration, channelIndex, freq)                             \
    Audio_QueueSeqCmd((SEQ_CMD_SET_CHANNEL_FREQ << 28) | ((u8)(playerIndex) << 24) | ((duration) << 16) | \
                      ((channelIndex) << 12) | (freq))

/**
 * ARGS
 *   playerIndex (p), duration (d), channelIndex (c), volume (v)
 *
 * FORMAT
 *   Capital U is unused
 *   6pddUcvv
 *
 * DESCRIPTION
 *   Set the (volume) of a specific channel (channelIndex) on (playerIndex) over a (duration).
 */
#define AudioSeqCmd_SetChannelVol(playerIndex, duration, channelIndex, volume)                               \
    Audio_QueueSeqCmd((SEQ_CMD_SET_CHANNEL_VOL << 28) | ((u8)(playerIndex) << 24) | ((u8)(duration) << 16) | \
                      ((u8)(channelIndex) << 8) | ((u8)volume))

/**
 * ARGS
 *   playerIndex (p), port (t), value (v)
 *
 * FORMAT
 *   Capital U is unused
 *   7pttUUvv
 *
 * DESCRIPTION
 *   Set a value (ioData) that will be read as io (port) directly by the sequence script on (playerIndex).
 *   This will be set to the global port, and how the sequence responds to the (ioData) will entirely depend on the
 *   customized sequence scripts for each sequence.
 *   Note: There are only a maximum of 8 ports indexed 0-7
 *   i.e. the sequence can only read 8 different io values at once)
 */
#define AudioSeqCmd_SetPlayerIO(playerIndex, port, ioData) \
    Audio_QueueSeqCmd((SEQ_CMD_SET_PLAYER_IO << 28) | ((u8)(playerIndex) << 24) | ((u8)(port) << 16) | (u8)(ioData))

/**
 * ARGS
 *   playerIndex (p), port (t), channelIndex (c), value (v)
 *
 * FORMAT
 *   Capital U is unused
 *   8pttUcvv
 *
 * DESCRIPTION
 *   Set a (value) that will be read as io (port) directly by the sequence script on (playerIndex).
 *   This will be set to a specific channel (channelIndex), and how the sequence responds to the (ioData)
 *   will entirely depend on the customized sequence scripts for each sequence.
 *   Note: There are only a maximum of 8 ports indexed 0-7
 *   i.e. the sequence can only read 8 different io values at once)
 */
#define AudioSeqCmd_SetChannelIO(playerIndex, port, channelIndex, ioData)                                  \
    Audio_QueueSeqCmd((SEQ_CMD_SET_CHANNEL_IO << 28) | ((u8)(playerIndex) << 24) | ((u8)(port) << 16) | \
                      ((u8)(channelIndex) << 8) | (u8)(ioData))

/**
 * ARGS
 *   playerIndex (p), channelMask (m)
 *
 * FORMAT
 *   Capital U is unused
 *   9pUUmmmm
 *
 * DESCRIPTION
 *   Disable (or reenable) specific channel from receiving io of (playerIndex).
 *   Only disables channel io set by (AudioSeqCmd_SetChannelIO). 
 *   i.e. calling Audio_QueueCmdS8 0x6 directy will still work.
 *   Each of the 16 bits in (channelMask) is mapped to one of the 16 channel by (1 << channelIndex).
 *   bit-on (1) disables a channel from receiving io, bit-off (0) reenables a channel receiving io.
 */
#define AudioSeqCmd_DisableChannelIO(playerIndex, channelMask) \
    Audio_QueueSeqCmd(_SHIFTL(SEQ_CMD_DISABLE_CHANNEL_IO, 28, 4) | ((u8)(playerIndex) << 24) | (u16)(channelMask))

/**
 * ARGS
 *   playerIndex (p), channelMask (m)
 *
 * FORMAT
 *   Capital U is unused
 *   ApUUmmmm
 *
 * DESCRIPTION
 *   Disable (or reenable) specific channels of (playerIndex).
 *   Each of the 16 bits in (channelMask) is mapped to one of the 16 channel by (1 << channelIndex).
 *   bit-on (1) disables a channel, bit-off (0) reenables a channel.
 */
#define AudioSeqCmd_DisableChannels(playerIndex, channelMask) \
    Audio_QueueSeqCmd((SEQ_CMD_DISABLE_CHANNELS << 28) | ((u8)(playerIndex) << 24) | (u16)(channelMask))

// ==== Audio Sequence Tempo Commands ====

/**
 * ARGS
 *   playerIndex (p), duration (d), tempoTarget (t)
 *
 * FORMAT
 *   Capital U is unused
 *   Bpdd0ttt
 *
 * DESCRIPTION
 *   Overwrite the current tempo on (playerIndex) to (tempoTarget) over a (duration)
 */
#define AudioSeqCmd_SetTempo(playerIndex, duration, tempoTarget)                                              \
    Audio_QueueSeqCmd((SEQ_CMD_TEMPO_CMD << 28) | (SEQ_SUB_CMD_TEMPO_SET << 12) | ((u8)(playerIndex) << 24) | \
                      ((u8)(duration) << 16) | (u16)(tempoTarget))

/**
 * ARGS
 *   playerIndex (p), duration (d), tempoIncrease (t)
 *
 * FORMAT
 *   Capital U is unused
 *   Bpdd1ttt
 *
 * DESCRIPTION
 *   Increase the tempo based on the current tempo on (playerIndex)
 *   by adding (tempoIncrease) from the tempo over a (duration).
 */
#define AudioSeqCmd_SpeedUpTempo(playerIndex, duration, tempoIncrease)                                             \
    Audio_QueueSeqCmd((SEQ_CMD_TEMPO_CMD << 28) | (SEQ_SUB_CMD_TEMPO_SPEED_UP << 12) | ((u8)(playerIndex) << 24) | \
                      ((u8)(duration) << 16) | (u16)(tempoIncrease))

/**
 * ARGS
 *   playerIndex (p), duration (d), tempoDecrease (t)
 *
 * FORMAT
 *   Capital U is unused
 *   Bpdd2ttt
 *
 * DESCRIPTION
 *   Decrease the tempo based on the current tempo on (playerIndex)
 *   by a subtracting (tempoDecrease) from the tempo over a (duration).
 */
#define AudioSeqCmd_SlowDownTempo(playerIndex, duration, tempoDecrease)                                             \
    Audio_QueueSeqCmd((SEQ_CMD_TEMPO_CMD << 28) | (SEQ_SUB_CMD_TEMPO_SLOW_DOWN << 12) | ((u8)(playerIndex) << 24) | \
                      ((u8)(duration) << 16) | (u16)(tempoDecrease))

/**
 * ARGS
 *   playerIndex (p), duration (d), tempoScale (t)
 *
 * FORMAT
 *   Capital U is unused
 *   Bpdd3ttt
 *
 * DESCRIPTION
 *   Scale the tempo based on the current tempo on (playerIndex) 
 *   by a multiplicating factor (tempoScale) over a (duration). 
 *   Note: The tempoScale is relative to 100. 
 *   i.e. a tempoScale = 200 will double the current tempo, while tempoScale = 50 will half the current tempo.
 */
#define AudioSeqCmd_ScaleTempo(playerIndex, duration, tempoScale)                                               \
    Audio_QueueSeqCmd((SEQ_CMD_TEMPO_CMD << 28) | (SEQ_SUB_CMD_TEMPO_SCALE << 12) | ((u8)(playerIndex) << 24) | \
                      ((u8)(duration) << 16) | (u16)(tempoScale))

/**
 * ARGS
 *   playerIndex (p), duration (d)
 *
 * FORMAT
 *   Capital U is unused
 *   Bpdd4UUU
 *
 * DESCRIPTION
 *   Reset the tempo to the original tempo on (playerIndex) over a (duration)
 */
#define AudioSeqCmd_ResetTempo(playerIndex, duration)                                                           \
    Audio_QueueSeqCmd((SEQ_CMD_TEMPO_CMD << 28) | (SEQ_SUB_CMD_TEMPO_RESET << 12) | ((u8)(playerIndex) << 24) | \
                      ((u8)(duration) << 16))

/**
 * ==== Audio Sequence Setup Commands ====
 *
 * The setup commands are designed to wait to be executed.
 * They will be queued onto a playerIndex (maximum 8 commands).
 * These commands will only execute once that playerIndex is finished playing and is no longer enabled.
 * They will often target a different player (playerIndexTarget) but not always.
 */

/**
 * ARGS
 *   playerIndex (p), playerIndexTarget (s), duration (d)
 *
 * FORMAT
 *   Capital U is unused
 *   Cp0sUUdd
 *
 * DESCRIPTION
 *   Queue a request to restore (playerIndexTarget) volume back to normal levels once (playerIndex) is no longer playing. 
 *   Restores volume over the (duration)
 */
#define AudioSeqCmd_SetupRestorePlayerVolume(playerIndex, playerIndexTarget, duration)      \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SEQ_SUB_CMD_SETUP_RESTORE_VOLUME << 20) | \
                      ((u8)(playerIndex) << 24) | ((u8)(playerIndexTarget) << 16) | (u8)(duration))
/**
 * ARGS
 *   playerIndex (p)
 *
 * FORMAT
 *   Capital U is unused
 *   Cp1UUUUU
 *
 * DESCRIPTION
 *    Queue a request to have (playerIndex) unqueued once (playerIndex) is no longer playing.
 *    This allows the next sequence in the sequence queue to start playing.
 *    Note: this command does not work as intended as unqueueing the seqeuence relies on gActiveSeqs[playerIndex].seqId
 *    However, gActiveSeqs[playerIndex].seqId is reset before the sequence is no longer playing, 
 *    i.e. before this command can run.
 *    A simple fix would have been to unqueue based on gActiveSeqs[playerIndex].prevSeqId instead
 */
#define AudioSeqCmd_SetupUnqueueSequence(playerIndex) \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SEQ_SUB_CMD_SETUP_SEQ_UNQUEUE << 20) | ((u8)(playerIndex) << 24))

/**
 * ARGS
 *   playerIndex (p), playerIndexTarget (s),
 *
 * FORMAT
 *   Capital U is unused
 *   Cp2sUUUU
 *
 * DESCRIPTION
 *    Queue a request to restart (playerIndexTarget) to play its active seqId once (playerIndex) is no longer playing.
 */
#define AudioSeqCmd_SetupRestartSequence(playerIndex, playerIndexTarget)                                              \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SEQ_SUB_CMD_SETUP_RESTART_SEQ << 20) | ((u8)(playerIndex) << 24) | \
                      ((u8)(playerIndexTarget) << 16))

/**
 * ARGS
 *   playerIndex (p), playerIndexTarget (s), duration (d), tempoScale (t)
 *
 * FORMAT
 *   Capital U is unused
 *   Cp3sddtt
 *
 * DESCRIPTION
 *   Queue a request to scale the tempo on (playerIndexTarget) once (playerIndex) is no longer playing.
 *   The tempo will scale by a factor of (tempoScale) smoothly over a (duration).
 *   Note: The tempoScale is relative to 100.
 *   i.e. a tempoScale = 200 will double the current tempo, while tempoScale = 50 will half the current tempo.
 */
#define AudioSeqCmd_SetupScaleTempo(playerIndex, playerIndexTarget, duration, tempoScale)                             \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SEQ_SUB_CMD_SETUP_TEMPO_SCALE << 20) | ((u8)(playerIndex) << 24) | \
                      ((u8)(playerIndexTarget) << 16) | ((u8)(duration) << 8) | (u8)(tempoScale))

/**
 * ARGS
 *   playerIndex (p), playerIndexTarget (s), duration (d)
 *
 * FORMAT
 *   Capital U is unused
 *   Cp4sUUdd
 *
 * DESCRIPTION
 *   Queue a request to reset the tempo on (playerIndexTarget) once (playerIndex) is no longer playing.
 *   The tempo will reset smoothly over a (duration)
 */
#define AudioSeqCmd_SetupResetTempo(playerIndex, playerIndexTarget, duration)                                         \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SEQ_SUB_CMD_SETUP_TEMPO_RESET << 20) | ((u8)(playerIndex) << 24) | \
                      ((u8)(playerIndexTarget) << 16) | (u8)(duration))

/**
 * ARGS
 *   playerIndex (p), playerIndexTarget (s), seqId (i)
 *
 * FORMAT
 *   Capital U is unused
 *   Cp5siiii
 *
 * DESCRIPTION
 *   Queue a request to play a (seqId) on (playerIndexTarget) once (playerIndex) is no longer playing.
 *   To set the fadeInTimer of this sequence, use the command (AudioSeqCmd_SetupSetFadeInTimer) below.
 */
#define AudioSeqCmd_SetupPlaySequence(playerIndex, playerIndexTarget, seqId)                                       \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SEQ_SUB_CMD_SETUP_PLAY_SEQ << 20) | ((u8)(playerIndex) << 24) | \
                      ((u8)(playerIndexTarget) << 16) | (u16)(seqId))

/**
 * ARGS
 *   playerIndex (p), fadeInTimer (t)
 *
 * FORMAT
 *   Capital U is unused
 *   Cp6UttUU
 *
 * DESCRIPTION
 *   This command is paired with (AudioSeqCmd_SetupPlaySequence) above.
 *   It will set the (fadeInTimer) used by (AudioSeqCmd_SetupPlaySequence) when called on (playerIndexTarget)
 */
#define AudioSeqCmd_SetupSetFadeInTimer(playerIndexTarget, fadeInTimer)                      \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SEQ_SUB_CMD_SETUP_SET_FADE_TIMER << 20) | \
                      ((u8)(playerIndexTarget) << 24) | ((u8)(fadeInTimer) << 8))

/**
 * ARGS
 *   playerIndex (p), playerIndexTarget (s), duration (d), numSeqRequests (n)
 *
 * FORMAT
 *   Capital U is unused
 *   Cp7sddnn
 *
 * DESCRIPTION
 *   Queue a request to restore (playerIndexTarget) volume back to normal levels once (playerIndex) is no longer playing.
 *   Specifically, it will only restore volume if the number of queued requests on (playerIndex) matches (numSeqRequests). 
 *   Restores volume over the (duration)
 */
#define AudioSeqCmd_SetupRestorePlayerVolumeIfQueued(playerIndex, playerIndexTarget, duration, numSeqRequests) \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SEQ_SUB_CMD_SETUP_RESTORE_VOLUME_IF_QUEUED << 20) |          \
                      ((u8)(playerIndex) << 24) | ((u8)(playerIndexTarget) << 16) | ((u8)(duration) << 8) |    \
                      (u8)(numSeqRequests))

/**
 * ARGS
 *   playerIndex (p), playerIndexTarget (s), scaleIndex (i), duration (d)
 *
 * FORMAT
 *   Capital U is unused
 *   Cp8siidd
 *
 * DESCRIPTION
 *   Queue a request to restore (playerIndexTarget) volume back to normal levels once (playerIndex) is no longer playing.
 *   Restores volume with a (scaleIndex) over the duration (duration)
 */
#define AudioSeqCmd_SetupRestorePlayerVolumeWithScale(playerIndex, playerIndexTarget, scaleIndex, duration)  \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SEQ_SUB_CMD_SETUP_RESTORE_VOLUME_WITH_SCALE << 20) |       \
                      ((u8)(playerIndex) << 24) | ((u8)(playerIndexTarget) << 16) | ((u8)(scaleIndex) << 8) | \
                      (u8)(duration))

/**
 * ARGS
 *   playerIndex (p), playerIndexTarget (s), channelMask (m),
 *
 * FORMAT
 *   Capital U is unused
 *   Cp9smmmm
 *
 * DESCRIPTION
 *   Queue a request to disable (or reenable) specific channels of (playerIndexTarget) once (playerIndex) is no longer playing.
 *   Each of the 16 bits in (channelMask) is mapped to one of the 16 channel by (1 << channelIndex). 
 *   bit-on (1) disables a channel, bit-off (0) reenables a channel.
 */
#define AudioSeqCmd_SetupDisableChannels(playerIndex, playerIndexTarget, channelMask)          \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SEQ_SUB_CMD_SETUP_DISABLE_CHANNELS << 20) | \
                      ((u8)(playerIndex) << 24) | ((u8)(playerIndexTarget) << 16) | (u16)(channelMask))

/**
 * ARGS
 *   playerIndex (p), playerIndexTarget (s), duration (d), freq (f)
 *
 * FORMAT
 *   Capital U is unused
 *   CpAsddff
 *
 * DESCRIPTION
 *   Queue a request to scale the player frequency (playerIndexTarget) once (playerIndex) is no longer playing.
 *   The scaling factor (freq) is relative to 100. I.e. freq = 200 with double the pitch and freq = 50 will half the
 *   pitch. Apply the frequency shift over (duration)
 *   Note: Carefully observe that the base level freq is 100, which is 10 times smaller than other freq commands,
 *   which are based on a freq relative to 1000
 */
#define AudioSeqCmd_SetupSetPlayerFreq(playerIndex, playerIndexTarget, duration, freq)                      \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SEQ_SUB_CMD_SETUP_SET_PLAYER_FREQ << 20) |               \
                      ((u8)(playerIndex) << 24) | ((u8)(playerIndexTarget) << 16) | ((u8)(duration) << 8) | \
                      (u8)(freq))

/**
 * ARGS
 *   playerIndex (p), playerIndexTarget (s), tableTypeFlag (f)
 *
 * FORMAT
 *   Capital U is unused
 *   CpEsUUff
 *
 * DESCRIPTION
 *   Queue a request to discard audio data by popping one more more audio caches from the audio heap
 *   once (playerIndex) is no longer playing.
 *   All tables with the flag (tableTypeFlag & (1 << tableType)) will be discarded, specifically:
 *   (tableTypeFlag & 1) will discard the SEQUENCE_TABLE
 *   (tableTypeFlag & 2) will discard the FONT_TABLE
 *   (tableTypeFlag & 4) will discard the SAMPLE_TABLE
 */
#define AudioSeqCmd_SetupPopCache(playerIndex, playerIndexTarget, tableTypeFlag)                                    \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SEQ_SUB_CMD_SETUP_POP_CACHE << 20) | ((u8)(playerIndex) << 24) | \
                      ((u8)(playerIndexTarget) << 16) | ((u8)tableTypeFlag))

/**
 * ARGS
 *   playerIndex (p)
 *
 * FORMAT
 *   Capital U is unused
 *   CpFUUUUU
 *
 * DESCRIPTION
 *   Discard all setup command requests on (playerIndex) by resetting the setup command queue.
 */
#define AudioSeqCmd_ResetSetupCmds(playerIndex)                                                \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SEQ_SUB_CMD_SETUP_RESET_SETUP_CMDS << 20) | \
                      ((u8)(playerIndex) << 24))

/**
 * ==== Audio Sequence Global Commands ====
 *
 * The global commands will apply to the entire audio system and all 4 sequence players
 */

/**
 * ARGS
 *   soundMode (s)
 *
 * FORMAT
 *   Capital U is unused
 *   EUUUU0ss
 *
 * DESCRIPTION
 *   Change the soundMode of the audio.
 *   soundMode = 0 is STEREO (Note: SURROUND maps to 0 as well)
 *   soundMode = 1 is HEADSET
 *   soundMode = 2 is UNKNOWN
 *   soundMode = 3 is MONO
 */
#define AudioSeqCmd_SetSoundMode(soundMode) \
    Audio_QueueSeqCmd((SEQ_CMD_GLOBAL_CMD << 28) | (SEQ_SUB_CMD_GLOBAL_SET_SOUND_MODE << 8) | (u8)(soundMode))

/**
 * ARGS
 *   isDisabled (d)
 *
 * FORMAT
 *   Capital U is unused
 *   EUUUU1dd
 *
 * DESCRIPTION
 *   Disable new sequences from starting when (isDisabled) is set to true.
 *   Set (isDisabled) to false to reenable new sequences being able to start.
 *   Note: this does not disabled the sfx player as there is a bypass for that playerIndex specifically.
 *   Note: isDisabled should be a (u8) to prevent interfering with the SUB_CMD, but is required to be (u16) for matching
 */
#define AudioSeqCmd_DisableNewSequences(isDisabled) \
    Audio_QueueSeqCmd((SEQ_CMD_GLOBAL_CMD << 28) | (SEQ_SUB_CMD_GLOBAL_DISABLE_NEW_SEQUENCES << 8) | (u16)(isDisabled))

/**
 * ARGS
 *   sfxChannelLayout (c), specId (s)
 *
 * FORMAT
 *   Capital U is unused
 *   FUUUccss
 *
 * DESCRIPTION
 *   This will reset the entire audio heap and rebuild it from scratch
 *   using the audio specification defined in gAudioSpecs indexed by (specId).
 * 
 *   It will also change how the 16 channels for sequence NA_BGM_GENERAL_SFX are allocated
 *   to the 7 sfx banks using (sfxChannelLayout). There are 4 possible layouts indexed by 0-3.
 *   However, only (sfxChannelLayout = 0) is properly implemented. (sfxChannelLayout = 1) and
 *   (sfxChannelLayout = 2) lead to bug-filled sfxs, and (sfxChannelLayout = 3) commonly leads
 *   to softlocking based on testing.
 */
#define AudioSeqCmd_ResetAudioHeap(sfxChannelLayout, specId) \
    Audio_QueueSeqCmd((SEQ_CMD_RESET_HEAP << 28) | ((u8)(sfxChannelLayout) << 8) | (u8)(specId))

#endif
