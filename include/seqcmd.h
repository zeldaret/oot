#ifndef SEQCMD_H
#define SEQCMD_H

// ==== Primary commands ====

#define SEQ_CMD_MASK 0xF0000000

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

// Subset of SEQ_CMD_TEMPO_CMD
typedef enum {
    /* 0x0 */ TEMPO_CMD_SET,
    /* 0x1 */ TEMPO_CMD_SPEED_UP,
    /* 0x2 */ TEMPO_CMD_SLOW_DOWN,
    /* 0x3 */ TEMPO_CMD_SCALE,
    /* 0x4 */ TEMPO_CMD_RESET
} TempoCmdType;

// Subset of SEQ_CMD_SETUP_CMD
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
    /* 0xE */ SETUP_CMD_POP_CACHE = 0xE,
    /* 0xF */ SETUP_CMD_RESET_SETUP_CMDS
} SetupCmdType;

// Subset of SEQ_CMD_SUB_CMD
typedef enum {
    /* 0x0 */ SUB_CMD_SET_SOUND_MODE,
    /* 0x1 */ SUB_CMD_DISABLE_NEW_SEQUENCES
} SubCmdType;

// ==== Audio Sequence Primary Commands ====

/**
 * ARGS
 *   playerIndex (p), fadeTimer (t), seqArgs (a), seqId (s)
 *
 * FORMAT
 *   Captial U is unused
 *   0pttaass
 *
 * DESCRIPTION
 *   Request a sequence (seqId) to be played on the specified player (playerIndex).
 *   The sequence will gradually fade in over the course of (fadeTimer).
 *   How (fadeTimer) is interpreted depends on (seqArgs)
 * 
 *   seqArgs = 8 and seqArgs = 9 appear to have no functionality (the only non-zero seqArgs used)
 *   unused commands may suggest these were intended to be a an importance for an unimplemented priority system
 *   ((seqArgs & 0x7F) != 0x7F) will interpret fadeTimer as number of frames at 30 fps
 *   ((seqArgs & 0x7F) == 0x7F) will interpret fadeTimer as number of seconds and will skip ticks
 *   (seqArgs & 0x80) i.e. (seqArgs >= 0x80) has an incomplete implementation 
 *   and is not functional in Ocarina of Time. No sequence will play as a result. 
 *   The code and purpose for seqArgs >= 0x80 was completed and is functional in Majora's Mask.
 */
#define AudioSeqCmd_PlaySequence(playerIndex, fadeTimer, seqArgs, seqId)                            \
    Audio_QueueSeqCmd((SEQ_CMD_START << 28) | ((u8)(playerIndex) << 24) | ((u8)(fadeTimer) << 16) | \
                      ((u8)(seqArgs) << 8) | (u16)(seqId))

/**
 * ARGS
 *   playerIndex (p), fadeTimer (t)
 *
 * FORMAT
 *   Captial U is unused
 *   1pttUUFF
 *
 * DESCRIPTION
 *   Request the active sequence to be stopped on the specified player (playerIndex).
 *   The sequence will gradually fade out over the course of (fadeTimer) frames at a rate of 30 fps.
 *   Note: The 0xFF in the command is not read from at all, but is common in all StopSequence Commands
 */
#define AudioSeqCmd_StopSequence(playerIndex, fadeTimer) \
    Audio_QueueSeqCmd((SEQ_CMD_STOP << 28) | 0xFF | ((u8)(playerIndex) << 24) | ((u8)(fadeTimer) << 16))

/**
 * ARGS
 *   playerIndex (p), fadeTimer (t), importance/seqArgs (i), seqId (s)
 *
 * FORMAT
 *   Captial U is unused
 *   2pttiiss
 *
 * DESCRIPTION
 *   Request a sequence (seqId) be added to a queue for a specified player (playerIndex).
 *   The request will be queued based on (importance).
 *   Higher values have higher importance and will be queued to play sooner
 *   The sequence will gradually fade in over the course of (fadeTimer).
 *   How (fadeTimer) is interpreted depends on (seqArgs), see AudioSeqCmd_PlaySequence
 * 
 *   The sequence that will be playing will be the 1st entry of the queue
 */
#define AudioSeqCmd_QueueSequence(playerIndex, fadeTimer, importance, seqId)                        \
    Audio_QueueSeqCmd((SEQ_CMD_QUEUE << 28) | ((u8)(playerIndex) << 24) | ((u8)(fadeTimer) << 16) | \
                      ((u8)(importance) << 8) | (u8)(seqId))

/**
 * ARGS
 *   playerIndex (p), fadeTimer (t), seqId (s)
 *
 * FORMAT
 *   Captial U is unused
 *   3pttUUss
 *
 *
 * DESCRIPTION
 *   Request the active sequence to be stopped on the specified player (playerIndex).
 *   Start the next sequence in the queue and move all requests forward  place in the queue.
 *   The sequence will gradually fade out over the course of (fadeTimer) frames at a rate of 30 fps.
 */
#define AudioSeqCmd_UnqueueSequence(playerIndex, fadeTimer, seqId) \
    Audio_QueueSeqCmd((SEQ_CMD_UNQUEUE << 28) | ((u8)(playerIndex) << 24) | ((u8)(fadeTimer) << 16) | (seqId))

/**
 * ARGS
 *   playerIndex (p), duration (d), volume (v)
 *
 * FORMAT
 *   Captial U is unused
 *   4pddUUvv
 *
 * DESCRIPTION
 *
 */
#define AudioSeqCmd_SetPlayerVol(playerIndex, duration, volume) \
    Audio_QueueSeqCmd((SEQ_CMD_SET_PLAYER_VOL << 28) | ((u8)(playerIndex) << 24) | ((duration) << 16) | (volume))

/**
 * ARGS
 *   playerIndex (p), duration (d), freq (f)
 *
 * FORMAT
 *   Captial U is unused
 *   5pddffff
 *
 * DESCRIPTION
 *
 */
#define AudioSeqCmd_SetPlayerFreq(playerIndex, duration, freq) \
    Audio_QueueSeqCmd((SEQ_CMD_SET_PLAYER_FREQ << 28) | ((u8)(playerIndex) << 24) | ((duration) << 16) | (freq))

/**
 * ARGS
 *   playerIndex (p), duration (d), channelIndex (c), freq (f)
 *
 * FORMAT
 *   Captial U is unused
 *   Dpddcfff
 *
 * DESCRIPTION
 *
 */
#define AudioSeqCmd_SetChannelFreq(playerIndex, duration, channelIndex, freq)                             \
    Audio_QueueSeqCmd((SEQ_CMD_SET_CHANNEL_FREQ << 28) | ((u8)(playerIndex) << 24) | ((duration) << 16) | \
                      ((channelIndex) << 12) | (freq))

/**
 * ARGS
 *   playerIndex (p), duration (d), channelIndex (c), volume (v)
 *
 * FORMAT
 *   Captial U is unused
 *   6pddUcvv
 *
 * DESCRIPTION
 *
 */
#define AudioSeqCmd_SetChannelVol(playerIndex, duration, channelIndex, volume)                               \
    Audio_QueueSeqCmd((SEQ_CMD_SET_CHANNEL_VOL << 28) | ((u8)(playerIndex) << 24) | ((u8)(duration) << 16) | \
                      ((u8)(channelIndex) << 8) | ((u8)volume))

/**
 * ARGS
 *   playerIndex (p), port (t), val (v)
 *
 * FORMAT
 *   Captial U is unused
 *   7pttUUvv
 *
 * DESCRIPTION
 *
 */
#define AudioSeqCmd_SetPlayerIO(playerIndex, port, val) \
    Audio_QueueSeqCmd((SEQ_CMD_SET_PLAYER_IO << 28) | ((u8)(playerIndex) << 24) | ((u8)(port) << 16) | (u8)(val))

/**
 * ARGS
 *   playerIndex (p), port (t), channelIndex (c), val (v)
 *
 * FORMAT
 *   Captial U is unused
 *   8pttUcvv
 *
 * DESCRIPTION
 *
 */
#define AudioSeqCmd_SetChannelIO(playerIndex, port, channelIndex, val)                                  \
    Audio_QueueSeqCmd((SEQ_CMD_SET_CHANNEL_IO << 28) | ((u8)(playerIndex) << 24) | ((u8)(port) << 16) | \
                      ((u8)(channelIndex) << 8) | (u8)(val))

/**
 * ARGS
 *   playerIndex (p), mask (m)
 *
 * FORMAT
 *   Captial U is unused
 *   9pUUmmmm
 *
 * DESCRIPTION
 *
 */
#define AudioSeqCmd_SetChannelIOMask(playerIndex, mask) \
    Audio_QueueSeqCmd(_SHIFTL(SEQ_CMD_SET_CHANNEL_IO_MASK, 28, 4) | ((u8)(playerIndex) << 24) | (u16)(mask))

/**
 * ARGS
 *   playerIndex (p), channelMask (m)
 *
 * FORMAT
 *   Captial U is unused
 *   ApUUmmmm
 *
 * DESCRIPTION
 *
 */
#define AudioSeqCmd_DisableChannels(playerIndex, channelMask) \
    Audio_QueueSeqCmd((SEQ_CMD_SET_ACTIVE_CHANNELS << 28) | ((u8)(playerIndex) << 24) | (u16)(channelMask))

// ==== Audio Sequence Tempo Commands ====

/**
 * ARGS
 *   playerIndex (p), duration (d), tempoTarget (t)
 *
 * FORMAT
 *   Captial U is unused
 *   Bpdd0ttt
 *
 * DESCRIPTION
 *
 */
#define AudioSeqCmd_SetTempo(playerIndex, duration, tempoTarget)                                      \
    Audio_QueueSeqCmd((SEQ_CMD_TEMPO_CMD << 28) | (TEMPO_CMD_SET << 12) | ((u8)(playerIndex) << 24) | \
                      ((u8)(duration) << 16) | (u16)(tempoTarget))

/**
 * ARGS
 *   playerIndex (p), duration (d), tempoIncrease (t)
 *
 * FORMAT
 *   Captial U is unused
 *   Bpdd1ttt
 *
 * DESCRIPTION
 *
 */
#define AudioSeqCmd_SpeedUpTempo(playerIndex, duration, tempoIncrease)                                     \
    Audio_QueueSeqCmd((SEQ_CMD_TEMPO_CMD << 28) | (TEMPO_CMD_SPEED_UP << 12) | ((u8)(playerIndex) << 24) | \
                      ((u8)(duration) << 16) | (u16)(tempoIncrease))

/**
 * ARGS
 *   playerIndex (p), duration (d), tempoDecrease (t)
 *
 * FORMAT
 *   Captial U is unused
 *   Bpdd2ttt
 *
 * DESCRIPTION
 *
 */
#define AudioSeqCmd_SlowDownTempo(playerIndex, duration, tempoDecrease)                                     \
    Audio_QueueSeqCmd((SEQ_CMD_TEMPO_CMD << 28) | (TEMPO_CMD_SLOW_DOWN << 12) | ((u8)(playerIndex) << 24) | \
                      ((u8)(duration) << 16) | (u16)(tempoDecrease))

/**
 * ARGS
 *   playerIndex (p), duration (d), tempoScale (t)
 *
 * FORMAT
 *   Captial U is unused
 *   Bpdd3ttt
 *
 * DESCRIPTION
 *
 */
#define AudioSeqCmd_ScaleTempo(playerIndex, duration, tempoScale)                                       \
    Audio_QueueSeqCmd((SEQ_CMD_TEMPO_CMD << 28) | (TEMPO_CMD_SCALE << 12) | ((u8)(playerIndex) << 24) | \
                      ((u8)(duration) << 16) | (u16)(tempoScale))

/**
 * ARGS
 *   playerIndex (p), duration (d)
 *
 * FORMAT
 *   Captial U is unused
 *   Bpdd4UUU
 *
 * DESCRIPTION
 *
 */
#define AudioSeqCmd_ResetTempo(playerIndex, duration)                                                   \
    Audio_QueueSeqCmd((SEQ_CMD_TEMPO_CMD << 28) | (TEMPO_CMD_RESET << 12) | ((u8)(playerIndex) << 24) | \
                      ((u8)(duration) << 16))

// ==== Audio Sequence Setup Commands (secondary commands to SEQ_CMD_SETUP_CMD) ====

/**
 * ARGS
 *   playerIndex (p), playerIndexToSet (s), fadeTimer (t)
 *
 * FORMAT
 *   Captial U is unused
 *   Cp0sUUtt
 *
 * DESCRIPTION
 *
 */
#define AudioSeqCmd_SetupSetPlayerVolTimer(playerIndex, playerIndexToSet, fadeTimer)                         \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_SET_VOLUME << 20) | ((u8)(playerIndex) << 24) | \
                      ((u8)(playerIndexToSet) << 16) | (u8)(fadeTimer))
/**
 * ARGS
 *   playerIndex (p)
 *
 * FORMAT
 *   Captial U is unused
 *   Cp1UUUUU
 *
 * DESCRIPTION
 *
 */
#define AudioSeqCmd_SetupUnqueueSequence(playerIndex) \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_SEQ_UNQUEUE << 20) | ((u8)(playerIndex) << 24))

/**
 * ARGS
 *   playerIndex (p), playerIndexToStart (s),
 *
 * FORMAT
 *   Captial U is unused
 *   Cp2sUUUU
 *
 * DESCRIPTION
 *
 */
#define AudioSeqCmd_SetupStartSequence(playerIndex, playerIndexToStart)                                     \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_SEQ_START << 20) | ((u8)(playerIndex) << 24) | \
                      ((u8)(playerIndexToStart) << 16))

/**
 * ARGS
 *   playerIndex (p), playerIndexToSet (s), duration (d), tempoScale (t)
 *
 * FORMAT
 *   Captial U is unused
 *   Cp3sddtt
 *
 * DESCRIPTION
 *
 */
#define AudioSeqCmd_SetupScaleTempo(playerIndex, playerIndexToSet, duration, tempoScale)                      \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_TEMPO_SCALE << 20) | ((u8)(playerIndex) << 24) | \
                      ((u8)(playerIndexToSet) << 16) | ((u8)(duration) << 8) | (u8)(tempoScale))

/**
 * ARGS
 *   playerIndex (p), playerIndexToSet (s), duration (d)
 *
 * FORMAT
 *   Captial U is unused
 *   Cp4sUUdd
 *
 * DESCRIPTION
 *
 */
#define AudioSeqCmd_SetupResetTempo(playerIndex, playerIndexToSet, duration)                                  \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_TEMPO_RESET << 20) | ((u8)(playerIndex) << 24) | \
                      ((u8)(playerIndexToSet) << 16) | (u8)(duration))

/**
 * ARGS
 *   playerIndex (p), playerIndexToSet (s), seqId (i)
 *
 * FORMAT
 *   Captial U is unused
 *   Cp5siiii
 *
 * DESCRIPTION
 *
 */
#define AudioSeqCmd_SetupStartSequenceWithFade(playerIndex, playerIndexToSet, seqId)                                  \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_SEQ_START_WITH_FADE << 20) | ((u8)(playerIndex) << 24) | \
                      ((u8)(playerIndexToSet) << 16) | (u16)(seqId))

/**
 * ARGS
 *   playerIndex (p), playerIndexToSet (s), fadeTimer (t)
 *
 * FORMAT
 *   Captial U is unused
 *   Cp6sttUU
 *
 * DESCRIPTION
 *
 */
#define AudioSeqCmd_SetupSetFadeTimer(playerIndex, playerIndexToSet, fadeTimer)                                  \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_SET_FADE_TIMER << 20) | ((u8)(playerIndex) << 24) | \
                      ((u8)(playerIndexToSet) << 16) | ((u8)(fadeTimer) << 8))

/**
 * ARGS
 *   playerIndex (p), playerIndexToSet (s), fadeTimer (t), numSeqRequests (n)
 *
 * FORMAT
 *   Captial U is unused
 *   Cp7sttnn
 *
 * DESCRIPTION
 *
 */
#define AudioSeqCmd_SetupSetPlayerVolumeIfQueued(playerIndex, playerIndexToSet, fadeTimer, numSeqRequests)             \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_SET_VOLUME_IF_QUEUED << 20) | ((u8)(playerIndex) << 24) | \
                      ((u8)(playerIndexToSet) << 16) | ((u8)(fadeTimer) << 8) | (u8)(numSeqRequests))

/**
 * ARGS
 *   playerIndex (p), playerIndexToSet (s), scaleIndex (i), fadeTimer (t)
 *
 * FORMAT
 *   Captial U is unused
 *   Cp8siitt
 *
 * DESCRIPTION
 *
 */
#define AudioSeqCmd_SetupSetPlayerVolumeWithFade(playerIndex, playerIndexToSet, scaleIndex, fadeTimer)                 \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_SET_VOLUME_WITH_FADE << 20) | ((u8)(playerIndex) << 24) | \
                      ((u8)(playerIndexToSet) << 16) | ((u8)(scaleIndex) << 8) | (u8)(fadeTimer))

/**
 * ARGS
 *   playerIndex (p), playerIndexToSet (s), channelMask (m),
 *
 * FORMAT
 *   Captial U is unused
 *   Cp9smmmm
 *
 * DESCRIPTION
 *
 */
#define AudioSeqCmd_SetupDisableChannels(playerIndex, playerIndexToSet, channelMask)                                \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_SEQ_ACTIVE_CHANNELS << 20) | ((u8)(playerIndex) << 24) | \
                      ((u8)(playerIndexToSet) << 16) | (u16)(channelMask))

/**
 * ARGS
 *   playerIndex (p), playerIndexToSet (s), duration (d), freq (f)
 *
 * FORMAT
 *   Captial U is unused
 *   CpAsddff
 *
 * DESCRIPTION
 *
 */
#define AudioSeqCmd_SetupSetPlayerFreq(playerIndex, playerIndexToSet, duration, freq)                             \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_SET_PLAYER_FREQ << 20) | ((u8)(playerIndex) << 24) | \
                      ((u8)(playerIndexToSet) << 16) | ((u8)(duration) << 8) | (u8)(freq))

/**
 * ARGS
 *   playerIndex (p), playerIndexToSet (s), tableTypeFlag (f)
 *
 * FORMAT
 *   Captial U is unused
 *   CpEsUUff
 *
 * DESCRIPTION
 *
 */
#define AudioSeqCmd_SetupPopCache(playerIndex, playerIndexToSet, tableTypeFlag)                             \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_POP_CACHE << 20) | ((u8)(playerIndex) << 24) | \
                      ((u8)(playerIndexToSet) << 16) | ((u8)tableTypeFlag))

/**
 * ARGS
 *   playerIndex (p)
 *
 * FORMAT
 *   Captial U is unused
 *   CpFUUUUU
 *
 * DESCRIPTION
 *
 */
#define AudioSeqCmd_ResetSetupCmds(playerIndex) \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_RESET_SETUP_CMDS << 20) | ((u8)(playerIndex) << 24))

// ==== Audio Sequence Sub Commands ====

/**
 * ARGS
 *   soundMode (s)
 *
 * FORMAT
 *   Captial U is unused
 *   EUUUU0ss
 *
 * DESCRIPTION
 *
 */
#define AudioSeqCmd_SetSoundMode(soundMode)                                                    \
    Audio_QueueSeqCmd((SEQ_CMD_SUB_CMD << 28) | (SUB_CMD_SET_SOUND_MODE << 8) | \
                      (u8)(soundMode))

/**
 * ARGS
 *   isDisabled (d)
 *
 * FORMAT
 *   Captial U is unused
 *   EUUUU1dd
 *
 * DESCRIPTION
 *
 * isDisabled should be a (u8) but is required to be (u16) for matching
 */
#define AudioSeqCmd_DisableNewSequences(isDisabled)                                                   \
    Audio_QueueSeqCmd((SEQ_CMD_SUB_CMD << 28) | (SUB_CMD_DISABLE_NEW_SEQUENCES << 8) | \
                      (u16)(isDisabled))

/**
 * ARGS
 *   sfxChannelLayout (c), spec (s)
 *
 * FORMAT
 *   Captial U is unused
 *   FUUUccss
 *
 * DESCRIPTION
 *
 */
#define AudioSeqCmd_SetSpec(sfxChannelLayout, specId) \
    Audio_QueueSeqCmd((SEQ_CMD_SET_SPEC << 28) | ((u8)(sfxChannelLayout) << 8) | (u8)(specId))

#endif
