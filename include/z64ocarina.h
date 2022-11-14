#ifndef Z64OCARINA_H
#define Z64OCARINA_H

#include "ultra64.h"

typedef enum {
    /*  0 */ OCARINA_SONG_MINUET,
    /*  1 */ OCARINA_SONG_BOLERO,
    /*  2 */ OCARINA_SONG_SERENADE,
    /*  3 */ OCARINA_SONG_REQUIEM,
    /*  4 */ OCARINA_SONG_NOCTURNE,
    /*  5 */ OCARINA_SONG_PRELUDE,
    /*  6 */ OCARINA_SONG_SARIAS,
    /*  7 */ OCARINA_SONG_EPONAS,
    /*  8 */ OCARINA_SONG_LULLABY,
    /*  9 */ OCARINA_SONG_SUNS,
    /* 10 */ OCARINA_SONG_TIME,
    /* 11 */ OCARINA_SONG_STORMS,
    /* 12 */ OCARINA_SONG_SCARECROW_SPAWN,
    /* 13 */ OCARINA_SONG_MEMORY_GAME,
    /* 14 */ OCARINA_SONG_MAX,
    /* 14 */ OCARINA_SONG_SCARECROW_LONG = OCARINA_SONG_MAX // anything larger than 13 is considered the long scarecrow's song
} OcarinaSongId;

typedef enum {
    /* 0x00 */ OCARINA_ACTION_UNK_0, // acts like free play but never set
    /* 0x01 */ OCARINA_ACTION_FREE_PLAY,
    /* 0x02 */ OCARINA_ACTION_TEACH_MINUET, // Song demonstrations by teachers
    /* 0x03 */ OCARINA_ACTION_TEACH_BOLERO,
    /* 0x04 */ OCARINA_ACTION_TEACH_SERENADE,
    /* 0x05 */ OCARINA_ACTION_TEACH_REQUIEM,
    /* 0x06 */ OCARINA_ACTION_TEACH_NOCTURNE,
    /* 0x07 */ OCARINA_ACTION_TEACH_PRELUDE,
    /* 0x08 */ OCARINA_ACTION_TEACH_SARIA,
    /* 0x09 */ OCARINA_ACTION_TEACH_EPONA,
    /* 0x0A */ OCARINA_ACTION_TEACH_LULLABY,
    /* 0x0B */ OCARINA_ACTION_TEACH_SUNS,
    /* 0x0C */ OCARINA_ACTION_TEACH_TIME,
    /* 0x0D */ OCARINA_ACTION_TEACH_STORMS,
    /* 0x0E */ OCARINA_ACTION_UNK_E,
    /* 0x0F */ OCARINA_ACTION_PLAYBACK_MINUET, // Playing back a particular song
    /* 0x10 */ OCARINA_ACTION_PLAYBACK_BOLERO,
    /* 0x11 */ OCARINA_ACTION_PLAYBACK_SERENADE,
    /* 0x12 */ OCARINA_ACTION_PLAYBACK_REQUIEM,
    /* 0x13 */ OCARINA_ACTION_PLAYBACK_NOCTURNE,
    /* 0x14 */ OCARINA_ACTION_PLAYBACK_PRELUDE,
    /* 0x15 */ OCARINA_ACTION_PLAYBACK_SARIA,
    /* 0x16 */ OCARINA_ACTION_PLAYBACK_EPONA,
    /* 0x17 */ OCARINA_ACTION_PLAYBACK_LULLABY,
    /* 0x18 */ OCARINA_ACTION_PLAYBACK_SUNS,
    /* 0x19 */ OCARINA_ACTION_PLAYBACK_TIME,
    /* 0x1A */ OCARINA_ACTION_PLAYBACK_STORMS,
    /* 0x1B */ OCARINA_ACTION_UNK_1B,
    /* 0x1C */ OCARINA_ACTION_CHECK_MINUET, // Playing songs for check spots
    /* 0x1D */ OCARINA_ACTION_CHECK_BOLERO,
    /* 0x1E */ OCARINA_ACTION_CHECK_SERENADE,
    /* 0x1F */ OCARINA_ACTION_CHECK_REQUIEM,
    /* 0x20 */ OCARINA_ACTION_CHECK_NOCTURNE,
    /* 0x21 */ OCARINA_ACTION_CHECK_PRELUDE,
    /* 0x22 */ OCARINA_ACTION_CHECK_SARIA,
    /* 0x23 */ OCARINA_ACTION_CHECK_EPONA,
    /* 0x24 */ OCARINA_ACTION_CHECK_LULLABY,
    /* 0x25 */ OCARINA_ACTION_CHECK_SUNS,
    /* 0x26 */ OCARINA_ACTION_CHECK_TIME,
    /* 0x27 */ OCARINA_ACTION_CHECK_STORMS,
    /* 0x28 */ OCARINA_ACTION_CHECK_SCARECROW_SPAWN, // Playing back the song as adult that was set as child
    /* 0x29 */ OCARINA_ACTION_FREE_PLAY_DONE,
    /* 0x2A */ OCARINA_ACTION_SCARECROW_LONG_RECORDING,
    /* 0x2B */ OCARINA_ACTION_SCARECROW_LONG_PLAYBACK,
    /* 0x2C */ OCARINA_ACTION_SCARECROW_SPAWN_RECORDING,
    /* 0x2D */ OCARINA_ACTION_SCARECROW_SPAWN_PLAYBACK,
    /* 0x2E */ OCARINA_ACTION_MEMORY_GAME,
    /* 0x2F */ OCARINA_ACTION_FROGS,
    /* 0x30 */ OCARINA_ACTION_CHECK_NOWARP, // Check for any of sarias - storms
    /* 0x31 */ OCARINA_ACTION_CHECK_NOWARP_DONE
} OcarinaSongActionId;

typedef enum {
    /* 0x00 */ OCARINA_MODE_00,
    /* 0x01 */ OCARINA_MODE_01,
    /* 0x02 */ OCARINA_MODE_02,
    /* 0x03 */ OCARINA_MODE_03,
    /* 0x04 */ OCARINA_MODE_04,
    /* 0x05 */ OCARINA_MODE_05,
    /* 0x06 */ OCARINA_MODE_06,
    /* 0x07 */ OCARINA_MODE_07,
    /* 0x08 */ OCARINA_MODE_08,
    /* 0x09 */ OCARINA_MODE_09,
    /* 0x0A */ OCARINA_MODE_0A,
    /* 0x0B */ OCARINA_MODE_0B,
    /* 0x0C */ OCARINA_MODE_0C,
    /* 0x0D */ OCARINA_MODE_0D,
    /* 0x0E */ OCARINA_MODE_0E,
    /* 0x0F */ OCARINA_MODE_0F
} OcarinaMode;

typedef enum {
    /* 0 */ OCARINA_BTN_A,
    /* 1 */ OCARINA_BTN_C_DOWN,
    /* 2 */ OCARINA_BTN_C_RIGHT,
    /* 3 */ OCARINA_BTN_C_LEFT,
    /* 4 */ OCARINA_BTN_C_UP,
    /* 5 */ OCARINA_BTN_C_RIGHT_OR_C_LEFT,  // Special case for bFlat4: Interface/Overlap between C_RIGHT and C_LEFT
    /* 0xFF */ OCARINA_BTN_INVALID = 0xFF
} OcarinaButtonIndex;

// Uses scientific pitch notation relative to middle C
// https://en.wikipedia.org/wiki/Scientific_pitch_notation
typedef enum {
    /* 0x0 */ OCARINA_PITCH_C4,
    /* 0x1 */ OCARINA_PITCH_DFLAT4,
    /* 0x2 */ OCARINA_PITCH_D4,
    /* 0x3 */ OCARINA_PITCH_EFLAT4,
    /* 0x4 */ OCARINA_PITCH_E4,
    /* 0x5 */ OCARINA_PITCH_F4,
    /* 0x6 */ OCARINA_PITCH_GFLAT4,
    /* 0x7 */ OCARINA_PITCH_G4,
    /* 0x8 */ OCARINA_PITCH_AFLAT4,
    /* 0x9 */ OCARINA_PITCH_A4,
    /* 0xA */ OCARINA_PITCH_BFLAT4,
    /* 0xB */ OCARINA_PITCH_B4,
    /* 0xC */ OCARINA_PITCH_C5,
    /* 0xD */ OCARINA_PITCH_DFLAT5,
    /* 0xE */ OCARINA_PITCH_D5,
    /* 0xF */ OCARINA_PITCH_EFLAT5,
    /* 0xFF */ OCARINA_PITCH_NONE = 0xFF
} OcarinaPitch;

typedef enum {
    /* 0 */ OCARINA_INSTRUMENT_OFF,
    /* 1 */ OCARINA_INSTRUMENT_DEFAULT,
    /* 2 */ OCARINA_INSTRUMENT_MALON,
    /* 3 */ OCARINA_INSTRUMENT_WHISTLE,
    /* 4 */ OCARINA_INSTRUMENT_HARP,
    /* 5 */ OCARINA_INSTRUMENT_GRIND_ORGAN,
    /* 6 */ OCARINA_INSTRUMENT_FLUTE,
    /* 7 */ OCARINA_INSTRUMENT_MAX,
    /* 7 */ OCARINA_INSTRUMENT_DEFAULT_COPY1 = OCARINA_INSTRUMENT_MAX, // Unused but present in Sequence 0 table
    /* 8 */ OCARINA_INSTRUMENT_DEFAULT_COPY2 = OCARINA_INSTRUMENT_MAX + 1 // Unused but present in Sequence 0 table
} OcarinaInstrumentId;

typedef enum {
    /*    0 */ OCARINA_RECORD_OFF,
    /*    1 */ OCARINA_RECORD_SCARECROW_LONG,
    /*    2 */ OCARINA_RECORD_SCARECROW_SPAWN,
    /* 0xFF */ OCARINA_RECORD_REJECTED = 0xFF
} OcarinaRecordingState;

/**
 * bFlat4Flag Note:
 * Flag for resolving whether (pitch = OCARINA_PITCH_BFLAT4)
 * gets mapped to either C_RIGHT and C_LEFT
 *
 * This is required as C_RIGHT and C_LEFT are the only notes
 * that map to two semitones apart (OCARINA_PITCH_A4 and OCARINA_PITCH_B4)
 *      0x40 - BTN_Z is pressed to lower note by a semitone
 *      0x80 - BTN_R is pressed to raise note by a semitone
 */

typedef struct {
    /* 0x0 */ u8 pitch; // number of semitones above middle C
    /* 0x2 */ u16 length; // number of frames the note is sustained
    /* 0x4 */ u8 volume;
    /* 0x5 */ u8 vibrato;
    /* 0x6 */ s8 bend; // frequency multiplicative offset from the pitch
    /* 0x7 */ u8 bFlat4Flag; // See note above
} OcarinaNote;  // size = 0x8

typedef struct {
    /* 0x0 */ u8 numButtons;
    /* 0x1 */ u8 buttonsIndex[8];
} OcarinaSongButtons; // size = 0x9

typedef struct {
    /* 0x0 */ u8 buttonIndex;
    /* 0x1 */ u8 state;   // multi-use. Playing: used as songIndex. Playback: used as repeat count of song. Recording: used as OcarinaRecordingState. "status"
    /* 0x2 */ u8 pos;     // "locate"
} OcarinaStaff; // size = 0x3

#endif
