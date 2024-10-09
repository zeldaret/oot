#ifndef SEQUENCE_H
#define SEQUENCE_H

#include "ultra64.h"
#include "versions.h"

#define DEFINE_SEQUENCE(_0, seqId, _2, _3, _4) seqId,
#define DEFINE_SEQUENCE_PTR(_0, seqId, _2, _3, _4) seqId,
typedef enum {
#include "tables/sequence_table.h"
    NA_BGM_MAX,

    NA_BGM_NO_MUSIC = 0x7F,
    NA_BGM_NATURE_SFX_RAIN = 0x80,
    NA_BGM_DISABLED = 0xFFFF
} NA_BGM;
#undef DEFINE_SEQUENCE
#undef DEFINE_SEQUENCE_PTR

typedef enum SequencePlayerId {
    /* 0 */ SEQ_PLAYER_BGM_MAIN,
    /* 1 */ SEQ_PLAYER_FANFARE,
    /* 2 */ SEQ_PLAYER_SFX,
    /* 3 */ SEQ_PLAYER_BGM_SUB
} SequencePlayerId;

typedef enum SequenceMode {
    /* 0 */ SEQ_MODE_DEFAULT,
    /* 1 */ SEQ_MODE_ENEMY,
    /* 2 */ SEQ_MODE_STILL, // Not moving or first-person view
    /* 3 */ SEQ_MODE_IGNORE
} SequenceMode;

typedef enum SequenceCutsceneEffects {
    /* 0x0 */ SEQ_CS_EFFECTS_SWORD_GLOW, // Master sword glow
    /* 0x1 */ SEQ_CS_EFFECTS_SHEIK_TRANSFORM, // Sheik's transformation to Zelda
    /* 0x2 */ SEQ_CS_EFFECTS_SAGE_SEAL, // Sages accumulating their power
    /* 0x3 */ SEQ_CS_EFFECTS_FARORE_MAGIC, // Farore's magic creating life
    /* 0x4 */ SEQ_CS_EFFECTS_NAYRU_MAGIC, // Nayru's magic establishing order
    /* 0x5 */ SEQ_CS_EFFECTS_DIN_MAGIC, // Din's building of the earth
    /* 0x6 */ SEQ_CS_EFFECTS_LAVA_ERUPT, // Lava erupting from Volvagia's pit
    /* 0x7 */ SEQ_CS_EFFECTS_BONGO_HURL_LINK, // Link screaming while attacked by invisible Bongo Bongo
    /* 0x8 */ SEQ_CS_EFFECTS_BONGO_HOVER, // Bongo Bongo hovering menacingly
    /* 0x9 */ SEQ_CS_EFFECTS_BONGO_EMERGES, // Bongo Bongo emerging from the well
    /* 0xA */ SEQ_CS_EFFECTS_TRIAL_WARP, // Warping from one of the trial barriers
    /* 0xB */ SEQ_CS_EFFECTS_TRIAL_DESTROY, // Destroying one of the trial barriers
    /* 0xC */ SEQ_CS_EFFECTS_DISPEL_BARRIER, // Dispelling the Tower barrier
    /* 0xD */ SEQ_CS_EFFECTS_TOWER_COLLAPSE, // Ganon's Tower's collapse
    /* 0xE */ SEQ_CS_EFFECTS_LINK_SCREAM, // Child Link screaming (unused)
    /* 0xF */ SEQ_CS_EFFECTS_RAINFALL // Rain with thunder effects
} SequenceCutsceneEffects;

typedef enum ChannelIOPort {
    /* 0x0 */ CHANNEL_IO_PORT_0,
    /* 0x1 */ CHANNEL_IO_PORT_1,
    /* 0x2 */ CHANNEL_IO_PORT_2,
    /* 0x3 */ CHANNEL_IO_PORT_3,
    /* 0x4 */ CHANNEL_IO_PORT_4,
    /* 0x5 */ CHANNEL_IO_PORT_5,
    /* 0x6 */ CHANNEL_IO_PORT_6,
    /* 0x7 */ CHANNEL_IO_PORT_7
} ChannelIOPort;

typedef enum VolumeScaleIndex {
    /* 0 */ VOL_SCALE_INDEX_BGM_MAIN,
    /* 1 */ VOL_SCALE_INDEX_FANFARE,
    /* 2 */ VOL_SCALE_INDEX_SFX,
    /* 3 */ VOL_SCALE_INDEX_BGM_SUB,
    /* 4 */ VOL_SCALE_INDEX_MAX
} VolumeScaleIndex; // May be worth using SequencePlayerId instead

typedef struct ActiveSequenceChannelData {
    /* 0x00 */ f32 volCur;
    /* 0x04 */ f32 volTarget;
    /* 0x08 */ f32 volStep;
    /* 0x0C */ u16 volTimer;
    /* 0x10 */ f32 freqScaleCur;
    /* 0x14 */ f32 freqScaleTarget;
    /* 0x18 */ f32 freqScaleStep;
    /* 0x1C */ u16 freqScaleTimer;
} ActiveSequenceChannelData; // size = 0x20

typedef struct ActiveSequence {
    /* 0x000 */ f32 volCur;
    /* 0x004 */ f32 volTarget;
    /* 0x008 */ f32 volStep;
    /* 0x00C */ u16 volTimer;
    /* 0x00E */ u8 volScales[VOL_SCALE_INDEX_MAX];
    /* 0x012 */ u8 volFadeTimer;
    /* 0x013 */ u8 fadeVolUpdate;
    /* 0x014 */ u32 tempoCmd;
    /* 0x018 */ u16 tempoOriginal; // stores the original tempo before modifying it (to reset back to)
    /* 0x01C */ f32 tempoCur;
    /* 0x020 */ f32 tempoTarget;
    /* 0x024 */ f32 tempoStep;
    /* 0x028 */ u16 tempoTimer;
    /* 0x02C */ u32 setupCmd[8]; // a queue of cmds to execute once the player is disabled
    /* 0x04C */ u8 setupCmdTimer; // only execute setup commands when the timer is at 0.
    /* 0x04D */ u8 setupCmdNum; // number of setup commands requested once the player is disabled
    /* 0x04E */ u8 setupFadeTimer;
    /* 0x050 */ ActiveSequenceChannelData channelData[16];
    /* 0x250 */ u16 freqScaleChannelFlags;
    /* 0x252 */ u16 volChannelFlags;
    /* 0x254 */ u16 seqId; // active seqId currently playing. Resets when sequence stops
    /* 0x256 */ u16 prevSeqId; // last seqId played on a player. Does not reset when sequence stops
    /* 0x258 */ u16 channelPortMask;
    /* 0x25C */ u32 startSeqCmd; // This name comes from MM
    /* 0x260 */ u8 isWaitingForFonts; // This name comes from MM
} ActiveSequence; // size = 0x264

typedef enum NatureChannelIndex {
    /* 0x0 */ NATURE_CHANNEL_STREAM_0,
    /* 0x1 */ NATURE_CHANNEL_CRITTER_0,
    /* 0x2 */ NATURE_CHANNEL_CRITTER_1,
    /* 0x3 */ NATURE_CHANNEL_CRITTER_2,
    /* 0x4 */ NATURE_CHANNEL_CRITTER_3,
    /* 0x5 */ NATURE_CHANNEL_CRITTER_4,
    /* 0x6 */ NATURE_CHANNEL_CRITTER_5,
    /* 0x7 */ NATURE_CHANNEL_CRITTER_6,
    /* 0x8 */ NATURE_CHANNEL_CRITTER_7,
    /* 0xC */ NATURE_CHANNEL_STREAM_1 = 12,
    /* 0xD */ NATURE_CHANNEL_UNK,
    /* 0xE */ NATURE_CHANNEL_RAIN,
    /* 0xF */ NATURE_CHANNEL_LIGHTNING
} NatureChannelIndex; // seqPlayerIndex = 0 (Overlaps with main bgm)

typedef enum NatureAmbienceId {
    /* 0x00 */ NATURE_ID_GENERAL_NIGHT,
    /* 0x01 */ NATURE_ID_MARKET_ENTRANCE,
    /* 0x02 */ NATURE_ID_KAKARIKO_REGION,
    /* 0x03 */ NATURE_ID_MARKET_RUINS,
    /* 0x04 */ NATURE_ID_KOKIRI_REGION,
    /* 0x05 */ NATURE_ID_MARKET_NIGHT,
    /* 0x06 */ NATURE_ID_06,
    /* 0x07 */ NATURE_ID_GANONS_LAIR,
    /* 0x08 */ NATURE_ID_08,
    /* 0x09 */ NATURE_ID_09,
    /* 0x0A */ NATURE_ID_WASTELAND,
    /* 0x0B */ NATURE_ID_COLOSSUS,
    /* 0x0C */ NATURE_ID_DEATH_MOUNTAIN_TRAIL,
    /* 0x0D */ NATURE_ID_0D,
    /* 0x0E */ NATURE_ID_0E,
    /* 0x0F */ NATURE_ID_0F,
    /* 0x10 */ NATURE_ID_10,
    /* 0x11 */ NATURE_ID_11,
    /* 0x12 */ NATURE_ID_12,
    /* 0x13 */ NATURE_ID_NONE,
    /* 0xFF */ NATURE_ID_DISABLED = 0xFF
} NatureAmbienceId;

typedef enum NatureStreamId {
    /* 0x00 */ NATURE_STREAM_RUSHING_WATER,
    /* 0x01 */ NATURE_STREAM_HOWLING_WIND,
    /* 0x02 */ NATURE_STREAM_SCREECHING_WIND,
    /* 0x03 */ NATURE_STREAM_SCREECHING_WIND_ALT1
} NatureStreamId;

typedef enum NatureAmimalId {
    /* 0x00 */ NATURE_CRITTER_BIRD_CHIRP_1,
    /* 0x01 */ NATURE_CRITTER_TAP,
    /* 0x02 */ NATURE_CRITTER_BIRD_CHIRP_2,
    /* 0x03 */ NATURE_CRITTER_BIRD_CHIRP_1_ALT1,
    /* 0x04 */ NATURE_CRITTER_CRICKETS,
    /* 0x05 */ NATURE_CRITTER_BIRD_CHIRP_1_ALT2,
    /* 0x06 */ NATURE_CRITTER_LOUD_CHIRPING,
    /* 0x07 */ NATURE_CRITTER_BIRD_CHIRP_1_ALT3,
    /* 0x08 */ NATURE_CRITTER_BIRD_CHIRP_1_ALT4,
    /* 0x09 */ NATURE_CRITTER_CROWS_CAWS,
    /* 0x0A */ NATURE_CRITTER_SMALL_BIRD_CHIRPS,
    /* 0x0B */ NATURE_CRITTER_BIRD_SCREECH,
    /* 0x0C */ NATURE_CRITTER_BIRD_SONG,
    /* 0x0D */ NATURE_CRITTER_OWL_HOOT,
    /* 0x0E */ NATURE_CRITTER_HAWK_SCREECH,
    /* 0x0F */ NATURE_CRITTER_BIRD_CALL,
    /* 0x10 */ NATURE_CRITTER_CAWING_BIRD,
    /* 0x11 */ NATURE_CRITTER_CUCCO_CROWS,
    /* 0x12 */ NATURE_CRITTER_BIRD_CHIRP_2_ALT1,
    /* 0x13 */ NATURE_CRITTER_BIRD_CHIRP_1_ALT5
} NatureAmimalId;

#define NATURE_IO_CRITTER_0_TYPE(type)        NATURE_CHANNEL_CRITTER_0, CHANNEL_IO_PORT_2, type
#define NATURE_IO_CRITTER_0_BEND_PITCH(bend)  NATURE_CHANNEL_CRITTER_0, CHANNEL_IO_PORT_3, bend
#define NATURE_IO_CRITTER_0_NUM_LAYERS(num)   NATURE_CHANNEL_CRITTER_0, CHANNEL_IO_PORT_4, num
#define NATURE_IO_CRITTER_0_PORT5(reverb)     NATURE_CHANNEL_CRITTER_0, CHANNEL_IO_PORT_5, reverb

#define NATURE_IO_CRITTER_1_TYPE(type)        NATURE_CHANNEL_CRITTER_1, CHANNEL_IO_PORT_2, type
#define NATURE_IO_CRITTER_1_BEND_PITCH(bend)  NATURE_CHANNEL_CRITTER_1, CHANNEL_IO_PORT_3, bend
#define NATURE_IO_CRITTER_1_NUM_LAYERS(num)   NATURE_CHANNEL_CRITTER_1, CHANNEL_IO_PORT_4, num
#define NATURE_IO_CRITTER_1_PORT5(reverb)     NATURE_CHANNEL_CRITTER_1, CHANNEL_IO_PORT_5, reverb

#define NATURE_IO_CRITTER_2_TYPE(type)        NATURE_CHANNEL_CRITTER_2, CHANNEL_IO_PORT_2, type
#define NATURE_IO_CRITTER_2_BEND_PITCH(bend)  NATURE_CHANNEL_CRITTER_2, CHANNEL_IO_PORT_3, bend
#define NATURE_IO_CRITTER_2_NUM_LAYERS(num)   NATURE_CHANNEL_CRITTER_2, CHANNEL_IO_PORT_4, num
#define NATURE_IO_CRITTER_2_PORT5(reverb)     NATURE_CHANNEL_CRITTER_2, CHANNEL_IO_PORT_5, reverb

#define NATURE_IO_CRITTER_3_TYPE(type)        NATURE_CHANNEL_CRITTER_3, CHANNEL_IO_PORT_2, type
#define NATURE_IO_CRITTER_3_BEND_PITCH(bend)  NATURE_CHANNEL_CRITTER_3, CHANNEL_IO_PORT_3, bend
#define NATURE_IO_CRITTER_3_NUM_LAYERS(num)   NATURE_CHANNEL_CRITTER_3, CHANNEL_IO_PORT_4, num
#define NATURE_IO_CRITTER_3_PORT5(reverb)     NATURE_CHANNEL_CRITTER_3, CHANNEL_IO_PORT_5, reverb

#define NATURE_IO_CRITTER_4_TYPE(type)        NATURE_CHANNEL_CRITTER_4, CHANNEL_IO_PORT_2, type
#define NATURE_IO_CRITTER_4_BEND_PITCH(bend)  NATURE_CHANNEL_CRITTER_4, CHANNEL_IO_PORT_3, bend
#define NATURE_IO_CRITTER_4_NUM_LAYERS(num)   NATURE_CHANNEL_CRITTER_4, CHANNEL_IO_PORT_4, num
#define NATURE_IO_CRITTER_4_PORT5(reverb)     NATURE_CHANNEL_CRITTER_4, CHANNEL_IO_PORT_5, reverb

#define NATURE_IO_CRITTER_5_TYPE(type)        NATURE_CHANNEL_CRITTER_5, CHANNEL_IO_PORT_2, type
#define NATURE_IO_CRITTER_5_BEND_PITCH(bend)  NATURE_CHANNEL_CRITTER_5, CHANNEL_IO_PORT_3, bend
#define NATURE_IO_CRITTER_5_NUM_LAYERS(num)   NATURE_CHANNEL_CRITTER_5, CHANNEL_IO_PORT_4, num
#define NATURE_IO_CRITTER_5_PORT5(reverb)     NATURE_CHANNEL_CRITTER_5, CHANNEL_IO_PORT_5, reverb

#define NATURE_IO_CRITTER_6_TYPE(type)        NATURE_CHANNEL_CRITTER_6, CHANNEL_IO_PORT_2, type
#define NATURE_IO_CRITTER_6_BEND_PITCH(bend)  NATURE_CHANNEL_CRITTER_6, CHANNEL_IO_PORT_3, bend
#define NATURE_IO_CRITTER_6_NUM_LAYERS(num)   NATURE_CHANNEL_CRITTER_6, CHANNEL_IO_PORT_4, num
#define NATURE_IO_CRITTER_6_PORT5(reverb)     NATURE_CHANNEL_CRITTER_6, CHANNEL_IO_PORT_5, reverb

#define NATURE_IO_STREAM_0_TYPE(type)         NATURE_CHANNEL_STREAM_0, CHANNEL_IO_PORT_2, type
#define NATURE_IO_STREAM_0_PORT3(data)        NATURE_CHANNEL_STREAM_0, CHANNEL_IO_PORT_3, data
#define NATURE_IO_STREAM_0_PORT4(data)        NATURE_CHANNEL_STREAM_0, CHANNEL_IO_PORT_4, data

#define NATURE_IO_STREAM_1_TYPE(type)         NATURE_CHANNEL_STREAM_1, CHANNEL_IO_PORT_2, type
#define NATURE_IO_STREAM_1_PORT3(data)        NATURE_CHANNEL_STREAM_1, CHANNEL_IO_PORT_3, data
#define NATURE_IO_STREAM_1_PORT4(data)        NATURE_CHANNEL_STREAM_1, CHANNEL_IO_PORT_4, data

#define NATURE_IO_ENTRIES_END 0xFF

// functions in sequence.c

void Audio_StartSequence(u8 seqPlayerIndex, u8 seqId, u8 seqArgs, u16 fadeInDuration);
void Audio_StopSequence(u8 seqPlayerIndex, u16 fadeOutDuration);
void Audio_QueueSeqCmd(u32 cmd);
void Audio_ProcessSeqCmds(void);
u16 Audio_GetActiveSeqId(u8 seqPlayerIndex);
s32 Audio_IsSeqCmdNotQueued(u32 cmdVal, u32 cmdMask);
void Audio_SetVolumeScale(u8 seqPlayerIndex, u8 scaleIndex, u8 targetVol, u8 volFadeTimer);
void Audio_UpdateActiveSequences(void);
u8 func_800FAD34(void);
void Audio_ResetActiveSequences(void);
void Audio_ResetActiveSequencesAndVolume(void);

#endif
