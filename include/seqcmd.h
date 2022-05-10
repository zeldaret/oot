#ifndef SEQCMD_H
#define SEQCMD_H

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
    /* 0x0 */ TEMPO_CMD_SET,
    /* 0x1 */ TEMPO_CMD_SPEED_UP,
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
 *   Request a sequence to be played (seqId) on the specified player (playerIndex).
 *
 *   The sequence will gradually fade in over the course of (8 * fadeTimer) frames
 *   Note: the byte containing fadeTimer is compressed down by a factor of 8
 *
 *   seqArgs >= 0x80 has an incomplete implementation and is not functional in Ocarina of Time.
 *   No sequence will play as a result. The code and purpose for seqArgs >= 0x80 was completed
 *   and is functional in Majora's Mask.
 *
 *   seqArgs = 0x7F will scale the fadeTimer differently
 *
 *   seqArgs = 8 and seqArgs = 9 has unknown functionality
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
 *   Request a sequence to be stopped on the specified player (playerIndex).
 *
 *   The sequence will gradually fade out over the course of (8 * fadeTimer) frames
 *   Note: the byte containing fadeTimer is compressed down by a factor of 8
 */
#define AudioSeqCmd_StopSequence(playerIndex, fadeTimer) \
    Audio_QueueSeqCmd((SEQ_CMD_STOP << 28) | 0xFF | ((u8)(playerIndex) << 24) | ((u8)(fadeTimer) << 16))

/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_QueueSequence(playerIndex, fadeTimer, importance, seqId)                                      \
    Audio_QueueSeqCmd((SEQ_CMD_QUEUE << 28) | ((playerIndex) << 24) | ((fadeTimer) << 16) | ((importance) << 8) | \
                      (seqId))

/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_UnqueueSequence(playerIndex, fadeTimer) \
    Audio_QueueSeqCmd((SEQ_CMD_UNQUEUE << 28) | ((playerIndex) << 24) | (fadeTimer))

/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_SetPlayerVol(playerIndex, duration, volume) \
    Audio_QueueSeqCmd((SEQ_CMD_SET_PLAYER_VOL << 28) | ((playerIndex) << 24) | ((duration) << 16) | (volume))

/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_SetPlayerFreq(playerIndex, duration, freq) \
    Audio_QueueSeqCmd((SEQ_CMD_SET_PLAYER_FREQ << 28) | ((playerIndex) << 24) | ((duration) << 16) | (freq))

/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_SetChannelFreq(playerIndex, duration, channelIdx, freq)                           \
    Audio_QueueSeqCmd((SEQ_CMD_SET_CHANNEL_FREQ << 28) | ((playerIndex) << 24) | ((duration) << 16) | \
                      ((channelIdx) << 12) | (freq))

/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_SetChannelVol(playerIndex, duration, channelIdx, volume)                                 \
    Audio_QueueSeqCmd((SEQ_CMD_SET_CHANNEL_VOL << 28) | ((u8)(playerIndex) << 24) | ((u8)(duration) << 16) | \
                      ((u8)(channelIdx) << 8) | ((u8)volume))

/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_SetPlayerIO(playerIndex, port, val) \
    Audio_QueueSeqCmd((SEQ_CMD_SET_PLAYER_IO << 28) | ((u8)(playerIndex) << 24) | ((u8)(port) << 16) | (u8)(val))

/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_SetChannelIO(playerIndex, port, channelIdx, val)                                    \
    Audio_QueueSeqCmd((SEQ_CMD_SET_CHANNEL_IO << 28) | ((u8)(playerIndex) << 24) | ((u8)(port) << 16) | \
                      ((u8)(channelIdx) << 8) | (u8)(val))

/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_SetChannelIOMask(playerIndex, mask) \
    Audio_QueueSeqCmd((SEQ_CMD_SET_CHANNEL_IO_MASK << 28) | ((playerIndex) << 24) | (mask))

/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_SetActiveChannels(playerIndex, channelMask) \
    Audio_QueueSeqCmd((SEQ_CMD_SET_ACTIVE_CHANNELS << 28) | ((u8)(playerIndex) << 24) | (u16)(channelMask))

/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_SetSpec(sfxChannelLayout, spec) \
    Audio_QueueSeqCmd((SEQ_CMD_SET_SPEC << 28) | ((u8)(sfxChannelLayout) << 8) | (u8)(spec))



// ==== Audio Sequence Tempo Commands ====



/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_SetTempo(playerIndex, duration, tempoTarget)                                      \
    Audio_QueueSeqCmd((SEQ_CMD_TEMPO_CMD << 28) | (TEMPO_CMD_SET << 12) | ((u8)(playerIndex) << 24) | \
                      ((u8)(duration) << 16) | (u8)(tempoTarget))

/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_SpeedUpTempo(playerIndex, duration, tempoIncrease)                                     \
    Audio_QueueSeqCmd((SEQ_CMD_TEMPO_CMD << 28) | (TEMPO_CMD_SPEED_UP << 12) | ((u8)(playerIndex) << 24) | \
                      ((u8)(duration) << 16) | (u8)(tempoIncrease))

/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_SlowDownTempo(playerIndex, duration, tempoDecrease)                                     \
    Audio_QueueSeqCmd((SEQ_CMD_TEMPO_CMD << 28) | (TEMPO_CMD_SLOW_DOWN << 12) | ((u8)(playerIndex) << 24) | \
                      ((u8)(duration) << 16) | (u8)(tempoDecrease))

/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_ScaleTempo(playerIndex, duration, tempoScale)                                       \
    Audio_QueueSeqCmd((SEQ_CMD_TEMPO_CMD << 28) | (TEMPO_CMD_SCALE << 12) | ((u8)(playerIndex) << 24) | \
                      ((u8)(duration) << 16) | (u8)(tempoScale))

/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_ResetTempo(playerIndex, duration)                                                   \
    Audio_QueueSeqCmd((SEQ_CMD_TEMPO_CMD << 28) | (TEMPO_CMD_RESET << 12) | ((u8)(playerIndex) << 24) | \
                      ((u8)(duration) << 16))



// ==== Audio Sequence Setup Commands (secondary commands to SEQ_CMD_SETUP_CMD) ====



#define AudioSeqCmd_SetupSetPlayerVol(playerIndex, PlayerIndexToSet, volume)                                 \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_SET_VOLUME << 20) | ((u8)(playerIndex) << 24) | \
                      ((u8)(PlayerIndexToSet) << 16) | (u8)(volume))
/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_SetupUnqueueSequence(playerIndex) \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_SEQ_UNQUEUE << 20) | ((u8)(playerIndex) << 24))

/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_SetupStartSequence(playerIndex, PlayerIndexToStart)                                     \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_SEQ_START << 20) | ((u8)(playerIndex) << 24) | \
                      ((u8)(PlayerIndexToStart) << 16))

/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_SetupScaleTempo(playerIndex, PlayerIndexToSet, duration, tempoScale)                      \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_TEMPO_SCALE << 20) | ((u8)(playerIndex) << 24) | \
                      ((u8)(PlayerIndexToSet) << 16) | ((u8)(duration) << 8) | (u8)(tempoScale))

/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_SetupResetTempo(playerIndex, PlayerIndexToSet, duration)                                  \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_TEMPO_RESET << 20) | ((u8)(playerIndex) << 24) | \
                      ((u8)(PlayerIndexToSet) << 16) | (u8)(duration))

/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_SetupStartSequenceWithFade(playerIndex, PlayerIndexToSet, seqId)                                  \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_SEQ_START_WITH_FADE << 20) | ((u8)(playerIndex) << 24) | \
                      ((u8)(PlayerIndexToSet) << 16) | (u8)(seqId))

/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_SetupSetFadeTimer(playerIndex, PlayerIndexToSet, fadeTimer)                                  \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_SET_FADE_TIMER << 20) | ((u8)(playerIndex) << 24) | \
                      ((u8)(PlayerIndexToSet) << 16) | ((u8)(fadeTimer) << 8))

/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_SetupSetPlayerVolumeIfQueued(playerIndex, PlayerIndexToSet, fadeTimer, numSeqRequests)             \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_SET_VOLUME_IF_QUEUED << 20) | ((u8)(playerIndex) << 24) | \
                      ((u8)(PlayerIndexToSet) << 16) | ((u8)(fadeTimer) << 8) | (u8)(numSeqRequests))

/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_SetupSetPlayerVolumeWithFade(playerIndex, PlayerIndexToSet, scaleIdx, fadeTimer)                   \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_SET_VOLUME_WITH_FADE << 20) | ((u8)(playerIndex) << 24) | \
                      ((u8)(PlayerIndexToSet) << 16) | ((u8)(scaleIdx) << 8) | (u8)(fadeTimer))

/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_SetupSetActiveChannels(playerIndex, PlayerIndexToSet, channelMask)                                \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_SEQ_ACTIVE_CHANNELS << 20) | ((u8)(playerIndex) << 24) | \
                      ((u8)(PlayerIndexToSet) << 16) | (u8)(channelMask))

/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_SetupSetPlayerFreq(playerIndex, PlayerIndexToSet, duration, freq)                             \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_SET_PLAYER_FREQ << 20) | ((u8)(playerIndex) << 24) | \
                      ((u8)(PlayerIndexToSet) << 16) | ((u8)(duration) << 8) | (u8)(freq))

/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_SetupPopCache(playerIndex, PlayerIndexToSet, tableTypeFlag)                             \
    Audio_QueueSeqCmd((SEQ_CMD_SETUP_CMD << 28) | (SETUP_CMD_POP_CACHE << 20) | ((u8)(playerIndex) << 24) | \
                      ((u8)(PlayerIndexToSet) << 16) | ((u8)tableTypeFlag))



// ==== Audio Sequence Sub Commands ====



/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_SetSoundMode(playerIndex, soundMode)                                                    \
    Audio_QueueSeqCmd((SEQ_CMD_SUB_CMD << 28) | (SUB_CMD_SET_SOUND_MODE << 8) | ((u8)(playerIndex) << 24) | \
                      (u8)(soundMode))

/**
 * ARGS
 *   playerIndex (p),
 *
 * FORMAT
 *   Captial U is unused
 *
 *
 * DESCRIPTION
 */
#define AudioSeqCmd_DisableNewSequences(playerIndex, isDisabled)                                                   \
    Audio_QueueSeqCmd((SEQ_CMD_SUB_CMD << 28) | (SUB_CMD_DISABLE_NEW_SEQUENCES << 8) | ((u8)(playerIndex) << 24) | \
                      (u16)(isDisabled))

#endif
