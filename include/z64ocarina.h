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
    /* 0020 */ OCARINA_ACTION_CHECK_NOCTURNE,
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
} OcarinaSongActionIDs;

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
    /*  0 */ OCARINA_BTN_A,
    /*  1 */ OCARINA_BTN_C_DOWN,
    /*  2 */ OCARINA_BTN_C_RIGHT,
    /*  3 */ OCARINA_BTN_C_LEFT,
    /*  4 */ OCARINA_BTN_C_UP,
    /* -1 */ OCARINA_BTN_INVALID = 0xFF
} OcarinaButtonIdx;

typedef enum {
    /* 0x0 */ NOTE_C4,
    /* 0x1 */ NOTE_DFLAT4,
    /* 0x2 */ NOTE_D4,
    /* 0x3 */ NOTE_EFLAT4,
    /* 0x4 */ NOTE_E4,
    /* 0x5 */ NOTE_F4,
    /* 0x6 */ NOTE_GFLAT4,
    /* 0x7 */ NOTE_G4,
    /* 0x8 */ NOTE_AFLAT4,
    /* 0x9 */ NOTE_A4,
    /* 0xA */ NOTE_BFLAT4,
    /* 0xB */ NOTE_B4,
    /* 0xC */ NOTE_C5,
    /* 0xD */ NOTE_DFLAT5,
    /* 0xE */ NOTE_D5,
    /* 0xF */ NOTE_EFLAT5,
    /* -1  */ NOTE_NONE = 0xFF
} OcarinaNoteIdx;

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
} OcarinaFontId;

typedef enum {
    OCARINA_RECORD_OFF,
    OCARINA_RECORD_SCARECROW_LONG,
    OCARINA_RECORD_SCARECROW_SPAWN,
    OCARINA_RECORD_REJECTED = 0xFF
} OcarinaRecordingState;

typedef struct {
    /* 0x0 */ u8 noteIdx;
    /* 0x2 */ u16 length;
    /* 0x4 */ u8 volume;
    /* 0x5 */ u8 vibrato;
    /* 0x6 */ s8 bend;
    /* 0x7 */ u8 BFlat4Flag;
} OcarinaNote;  // size = 0x8

typedef struct {
    u8 numButtons;
    u8 buttonIdx[8];
} OcarinaSongButtons;

typedef struct {
    u8 buttonIdx;
    u8 state;   // original name: "status"
    u8 pos;     // original name: "locate"
} OcarinaStaff;

#endif
