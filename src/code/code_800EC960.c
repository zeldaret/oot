#include "ultra64.h"
#include "global.h"

// TODO: can these macros be shared between files? code_800F9280 seems to use
// versions without any casts...
#define Audio_DisableSeq(playerIdx, fadeOut) Audio_QueueCmdS32(0x83000000 | ((u8)playerIdx << 16), fadeOut)
#define Audio_StartSeq(playerIdx, fadeTimer, seqId) \
    Audio_QueueSeqCmd(0x00000000 | ((u8)playerIdx << 24) | ((u8)(fadeTimer) << 0x10) | (u16)seqId)
#define Audio_SeqCmd7(playerIdx, a, b) \
    Audio_QueueSeqCmd(0x70000000 | ((u8)playerIdx << 0x18) | ((u8)a << 0x10) | (u8)(b))
#define Audio_SeqCmdC(playerIdx, a, b, c) \
    Audio_QueueSeqCmd(0xC0000000 | ((u8)playerIdx << 24) | ((u8)a << 16) | ((u8)b << 8) | ((u8)(c)))
#define Audio_SeqCmdA(playerIdx, a) Audio_QueueSeqCmd(0xA0000000 | ((u8)playerIdx << 24) | ((u16)(a)))
#define Audio_SeqCmd1(playerIdx, a) Audio_QueueSeqCmd(0x100000FF | ((u8)playerIdx << 24) | ((u8)(a) << 16))
#define Audio_SeqCmdB(playerIdx, a, b, c) \
    Audio_QueueSeqCmd(0xB0000000 | ((u8)playerIdx << 24) | ((u8)a << 16) | ((u8)b << 8) | ((u8)c))
#define Audio_SeqCmdB40(playerIdx, a, b) Audio_QueueSeqCmd(0xB0004000 | ((u8)playerIdx << 24) | ((u8)a << 16) | ((u8)b))
#define Audio_SeqCmd6(playerIdx, a, b, c) \
    Audio_QueueSeqCmd(0x60000000 | ((u8)playerIdx << 24) | ((u8)(a) << 16) | ((u8)b << 8) | ((u8)c))
#define Audio_SeqCmdE0(playerIdx, a) Audio_QueueSeqCmd(0xE0000000 | ((u8)playerIdx << 24) | ((u8)a))
#define Audio_SeqCmdE01(playerIdx, a) Audio_QueueSeqCmd(0xE0000100 | ((u8)playerIdx << 24) | ((u16)a))
#define Audio_SeqCmd8(playerIdx, a, b, c) \
    Audio_QueueSeqCmd(0x80000000 | ((u8)playerIdx << 24) | ((u8)a << 16) | ((u8)b << 8) | ((u8)c))
#define Audio_SeqCmdF(playerIdx, a) Audio_QueueSeqCmd(0xF0000000 | ((u8)playerIdx << 24) | ((u8)a))

typedef struct {
    /* 0x0 */ f32 vol;
    /* 0x4 */ f32 freqScale;
    /* 0x8 */ s8 reverb;
    /* 0x9 */ s8 panSigned;
    /* 0xA */ s8 stereoBits;
    /* 0xB */ u8 filter;
    /* 0xC */ u8 unk_0C;
} SfxPlayerState;

typedef enum {
    /* 0x0 */ SFX_CHANNEL_PLAYER0, // SfxPlayerBank
    /* 0x1 */ SFX_CHANNEL_PLAYER1,
    /* 0x2 */ SFX_CHANNEL_PLAYER2,
    /* 0x3 */ SFX_CHANNEL_ITEM0, // SfxItemBank
    /* 0x4 */ SFX_CHANNEL_ITEM1,
    /* 0x5 */ SFX_CHANNEL_ENV0, // SfxEnvironmentBank
    /* 0x6 */ SFX_CHANNEL_ENV1,
    /* 0x7 */ SFX_CHANNEL_ENV2,
    /* 0x8 */ SFX_CHANNEL_ENEMY0, // SfxEnemyBank
    /* 0x9 */ SFX_CHANNEL_ENEMY1,
    /* 0xA */ SFX_CHANNEL_ENEMY2,
    /* 0xB */ SFX_CHANNEL_SYSTEM0, // SfxSystemBank
    /* 0xC */ SFX_CHANNEL_SYSTEM1,
    /* 0xD */ SFX_CHANNEL_OCARINA, // SfxOcarinaBank
    /* 0xE */ SFX_CHANNEL_VOICE0,  // SfxVoiceBank
    /* 0xF */ SFX_CHANNEL_VOICE1
} SfxChannels; // playerIdx = 2

typedef struct {
    /* 0x0 */ f32 value;
    /* 0x4 */ f32 target;
    /* 0x8 */ f32 step;
    /* 0xC */ s32 remainingFrames;
} FreqLerp;

typedef struct {
    /* 0x0 */ u16 unk_00;
    /* 0x2 */ u16 unk_02;
    /* 0x4 */ u8 unk_04[100];
} D_801306DC_s; // size = 0x68

typedef enum {
    /* 0x0 */ PAGE_NON,
    /* 0x1 */ PAGE_SOUND_CONTROL,
    /* 0x2 */ PAGE_SPEC_INFO, // unused
    /* 0x3 */ PAGE_HEAP_INFO,
    /* 0x4 */ PAGE_GROUP_TRACK_INFO, // unused
    /* 0x5 */ PAGE_SUB_TRACK_INFO,
    /* 0x6 */ PAGE_CHANNEL_INFO, // unused
    /* 0x7 */ PAGE_INTERFACE_INFO,
    /* 0x8 */ PAGE_SFX_SWAP,
    /* 0x9 */ PAGE_BLOCK_CHANGE_BGM,
    /* 0xA */ PAGE_NATURAL_SOUND_CONTROL, // unused
    /* 0xB */ PAGE_OCARINA_TEST,
    /* 0xC */ PAGE_SFX_PARAMETER_CHANGE,
    /* 0xD */ PAGE_SCROLL_PRINT,
    /* 0xE */ PAGE_FREE_AREA,
    /* 0xF */ PAGE_MAX
} AudioDebugPage;

#define SCROLL_PRINT_BUF_SIZE 25

typedef struct {
    s8 x;
    s8 y;
} OcarinaStick;

/**
 * Audio Interface Data
 */

u8 gIsLargeSoundBank[7] = { 0, 0, 0, 1, 0, 0, 0 };

// Only the first row of these is supported by sequence 0. (gSfxChannelLayout is always 0.)
u8 gChannelsPerBank[4][7] = {
    { 3, 2, 3, 3, 2, 1, 2 },
    { 3, 2, 2, 2, 2, 2, 2 },
    { 3, 2, 2, 2, 2, 2, 2 },
    { 4, 1, 0, 0, 2, 2, 2 },
};
u8 gUsedChannelsPerBank[4][7] = {
    { 3, 2, 3, 2, 2, 1, 1 },
    { 3, 1, 1, 1, 2, 1, 1 },
    { 3, 1, 1, 1, 2, 1, 1 },
    { 2, 1, 0, 0, 1, 1, 1 },
};

f32 D_801305B0 = 0.7950898f;
s8 D_801305B4 = 35;
s8 D_801305B8 = 20;
s8 D_801305BC = 30;
s8 D_801305C0 = 20;
f32 sBehindScreenZ[2] = { -15.0f, -65.0f };
u8 sAudioIncreasingTranspose = 0;
u8 gMorphaTransposeTable[16] = { 0, 0, 0, 1, 1, 2, 4, 6, 8, 8, 8, 8, 8, 8, 8, 8 };
u8 sPrevChargeLevel = 0;
f32 D_801305E4[4] = { 1.0f, 1.12246f, 1.33484f, 1.33484f }; // 2**({0, 2, 5, 5}/12)
f32 D_801305F4 = 1.0f;
u8 D_801305F8[8] = { 127, 80, 75, 73, 70, 68, 65, 60 };
u8 D_80130600 = 0;
s8 D_80130604 = 2;
s8 D_80130608 = 0;
s8 sAudioCutsceneFlag = 0;
s8 sSpecReverb = 0;
s8 sAudioEnvReverb = 0;
s8 sAudioCodeReverb = 0;
u8 D_8013061C = 0;
f32 sAudioEnemyDist = 0.0f;
s8 sAudioEnemyVol = 127;
u16 D_80130628 = NA_BGM_DISABLED;
u8 D_8013062C = 0;
u8 D_80130630 = NA_BGM_GENERAL_SFX;
u32 D_80130634 = 0;
u32 D_80130638 = 0;
u8 sAudioBaseFilter = 0;
u8 sAudioExtraFilter = 0;
u8 sAudioBaseFilter2 = 0;
u8 sAudioExtraFilter2 = 0;
Vec3f* sSariaBgmPtr = NULL;
f32 D_80130650 = 2000.0f;
u8 D_80130654 = 0;
u8 D_80130658[0x70] = {
    2,   1,  0,  0,  0,  0, 0, 0, 0, 0, 0, 0,  0, 0, 0,   0, 0,   0,   0,   0, 0,   0, 0,  0, 33, 16, 0, 136,
    1,   0,  0,  32, 0,  0, 2, 4, 2, 2, 1, 16, 0, 0, 1,   2, 1,   0,   128, 0, 128, 0, 2,  2, 2,  2,  2, 2,
    136, 2,  0,  2,  17, 2, 1, 1, 0, 0, 0, 2,  2, 2, 2,   2, 2,   2,   0,   0, 0,   0, 32, 0, 16, 2,  0, 0,
    4,   32, 64, 64, 1,  2, 2, 1, 1, 2, 0, 17, 0, 0, 128, 0, 128, 128, 0,   0, 0,   0, 0,  0, 8,  0,  0, 0,
};
s8 sSpecReverbs[20] = { 0, 0, 0, 0, 0, 0, 0, 40, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };

D_801306DC_s D_801306DC[20] = {
    { 0xC0FF, 0XC0FE, { 0, 2,   0,   0, 3, 0, 1,  2,  9,  1,  3, 64, 1,   4,   0,   1, 5, 32, 2,  2,  4,  2,   3,
                        0, 2,   4,   1, 2, 5, 16, 3,  2,  10, 3, 3,  112, 3,   4,   1, 3, 5,  48, 4,  2,  14,  4,
                        3, 127, 4,   4, 0, 4, 5,  16, 5,  2,  0, 5,  3,   127, 5,   4, 1, 5,  5,  16, 6,  2,   1,
                        6, 3,   127, 6, 4, 3, 6,  5,  16, 7,  2, 17, 7,   3,   127, 7, 4, 1,  7,  5,  16, 0xFF } },
    { 0xC0FB, 0xC0FA, { 0, 2, 0,  0, 3, 0,   1, 2, 4,   1, 3, 0,  1, 4, 1,  1, 5, 16,  3, 2, 11,  3, 3, 112, 3,   4, 1,
                        3, 5, 48, 4, 2, 14,  4, 3, 127, 4, 4, 0,  4, 5, 16, 5, 2, 0,   5, 3, 127, 5, 4, 1,   5,   5, 16,
                        6, 2, 1,  6, 3, 127, 6, 4, 3,   6, 5, 16, 7, 2, 17, 7, 3, 127, 7, 4, 1,   7, 5, 16,  0xFF } },
    { 0xC001, 0x4000, { 0, 2, 0, 0, 3, 0, 2, 2, 11, 2, 3, 48, 2, 4, 1, 2, 5, 32, 0xFF } },
    { 0xC005, 0x4000, { 0, 2, 1, 0, 3, 32, 2, 2, 11, 2, 3, 48, 2, 4, 1, 2, 5, 32, 0xFF } },
    { 0xC01F,
      0xC000,
      { 0, 2,  0, 0, 3,  47, 1, 2, 13, 1, 3, 0, 1, 4,  1, 1, 5,  16, 2, 2,  16, 2, 3, 0, 2, 4,  1,   2,
        5, 32, 3, 2, 14, 3,  3, 0, 3,  4, 0, 3, 5, 44, 4, 2, 11, 4,  3, 63, 4,  4, 1, 4, 5, 44, 0xFF } },
    { 0xC003, 0xC000, { 0, 2, 0, 0, 3, 0, 1, 2, 4, 1, 3, 0, 1, 4, 1, 1, 5, 16, 0xFF } },
    { 0xC0FB, 0xC0FA, { 0, 2, 0,  0, 3, 0,   1, 2, 4,   1, 3, 0,  1, 4, 1,  1, 5, 16,  3, 2, 11,  3, 3, 112, 3,   4, 1,
                        3, 5, 48, 4, 2, 14,  4, 3, 127, 4, 4, 0,  4, 5, 16, 5, 2, 0,   5, 3, 127, 5, 4, 1,   5,   5, 16,
                        6, 2, 1,  6, 3, 127, 6, 4, 3,   6, 5, 16, 7, 2, 17, 7, 3, 127, 7, 4, 1,   7, 5, 16,  0xFF } },
    { 0x8001, 0x0, { 0, 2, 1, 0, 3, 32, 0xFF } },
    { 0xC003, 0xC000, { 0, 2, 0, 0, 3, 0, 1, 2, 4, 1, 3, 0, 1, 4, 1, 1, 5, 16, 0xFF } },
    { 0xC003, 0xC000, { 0, 2, 0, 0, 3, 0, 1, 2, 4, 1, 3, 0, 1, 4, 1, 1, 5, 16, 0xFF } },
    { 0xC001, 0xC000, { 0, 2, 2, 0, 3, 0, 0, 4, 0, 0xFF } },
    { 0xC02F, 0xC02E, { 0,  2, 2, 0,  3,  0, 0,   4, 0, 1, 2,   10, 1,  3, 64, 1,  4,  0,   1,   5,
                        32, 2, 2, 15, 2,  3, 112, 2, 4, 1, 2,   5,  48, 3, 2,  14, 3,  3,   127, 3,
                        4,  0, 3, 5,  16, 5, 2,   4, 5, 3, 127, 5,  4,  0, 5,  5,  16, 0xFF } },
    { 0xC07F, 0xC07E, { 0, 2, 0,  0, 3, 0,   0, 4, 0, 1, 2, 10, 1, 3, 64, 1, 4, 0,   1,   5, 32,
                        2, 2, 11, 2, 3, 112, 2, 4, 1, 2, 5, 48, 3, 2, 12, 3, 3, 127, 3,   4, 0,
                        3, 5, 16, 4, 2, 6,   4, 3, 0, 4, 4, 0,  4, 5, 16, 5, 2, 0,   5,   3, 0,
                        5, 4, 0,  5, 5, 16,  6, 2, 1, 6, 3, 0,  6, 4, 0,  6, 5, 16,  0xFF } },
    { 0xC003, 0xC000, { 0, 2, 0, 0, 3, 0, 1, 2, 4, 1, 3, 0, 1, 4, 1, 1, 5, 16, 0xFF } },
    { 0xC003, 0xC000, { 0, 2, 0, 0, 3, 0, 1, 2, 4, 1, 3, 0, 1, 4, 1, 1, 5, 16, 0xFF } },
    { 0xC01F, 0xC000, { 0, 2,  0, 0, 3, 0, 1, 2, 0, 1, 3, 80, 1, 4, 1, 1, 5,  8, 2, 2,  10, 2, 3, 80, 2, 4,  1,   2,
                        5, 48, 3, 2, 6, 3, 3, 0, 3, 4, 0, 3,  5, 0, 4, 2, 11, 4, 3, 96, 4,  4, 0, 4,  5, 32, 0xFF } },
    { 0xC003, 0xC000, { 0, 2, 0, 0, 3, 0, 1, 2, 4, 1, 3, 0, 1, 4, 1, 1, 5, 16, 0xFF } },
    { 0xC003, 0xC000, { 0, 2, 0, 0, 3, 0, 1, 2, 4, 1, 3, 0, 1, 4, 1, 1, 5, 16, 0xFF } },
    { 0xC003, 0xC000, { 0, 2, 0, 0, 3, 0, 1, 2, 4, 1, 3, 0, 1, 4, 1, 1, 5, 16, 0xFF } },
    { 0xC003, 0xC000, { 0, 2, 0, 0, 3, 0, 1, 2, 4, 1, 3, 0, 1, 4, 1, 1, 5, 16, 0xFF } },
};

/**
 * Audio Ocarina Data
 */

u32 sOcarinaAllowedButtonMask = (BTN_A | BTN_CRIGHT | BTN_CLEFT | BTN_CDOWN | BTN_CUP);
s32 sOcarinaAButtonMap = BTN_A;
s32 sOcarinaCUpButtonMap = BTN_CUP;
s32 sOcarinaCDownButtonMap = BTN_CDOWN;
u8 sIsOcarinaInputEnabled = false;
s8 sOcarinaInstrumentId = OCARINA_INSTRUMENT_OFF;
u8 sCurOcarinaNoteIdx = NOTE_NONE;
u8 sPrevOcarinaNoteIdx = NOTE_C4;
u8 sCurOcarinaButtonIdx = OCARINA_BTN_A;
u8 sMusicStaffPrevNoteIdx = NOTE_C4;
f32 sCurOcarinaBendFreq = 1.0f;
f32 sRelativeOcarinaVolume = 87.0f / 127.0f;
s8 sCurOcarinaBendIdx = 0;
s8 sCurOcarinaVolume = 87;
s8 sCurOcarinaVibrato = 0;
u8 sDisplayedState = 0;
/** bit field of songs that can be played
 * 0x0800 storms
 * 0x0400 song of time
 * 0x0200 suns
 * 0x0100 lullaby
 * 0x0080 epona
 * 0x0040 sarias
 * 0x0020 prelude
 * 0x0010 nocturne
 * 0x0008 requiem
 * 0x0004 serenade
 * 0x0002 bolero
 * 0x0001 minuet
 */
u32 sOcarinaFlags = 0;
u32 sDisplayedNoteTimer = 0;
u16 sDisplayedNotePos = 0;
u16 sDisplayedStaffPos = 0;
u16 sPrevOcarinaSongFlags = 0;
u8 sDisplayedNoteValue = NOTE_NONE; // NoteIdx + NoteFlags
u8 sNoteDisplayedVolume = 0;
u8 sNoteDisplayedVibrato = 0;
s8 sNoteDisplayedBend = 0;
f32 sRelativeNoteDisplayedBend = 1.0f;
f32 sRelativeNoteDisplayedVolume = 1.0f;
s32 sOcarinaDisplayedTaskStart = 0;

u8 sButtonToNoteMap[5] = {
    NOTE_D4, // OCARINA_BTN_A
    NOTE_F4, // OCARINA_BTN_C_DOWN
    NOTE_A4, // OCARINA_BTN_C_RIGHT
    NOTE_B4, // OCARINA_BTN_C_LEFT
    NOTE_D5, // OCARINA_BTN_C_UP
};

u8 sOcaMemoryGameAppendPos = 0;
u8 sOcaMemoryGameEndPos = 0;
u8 sOcaMemoryGameNumNotes[] = { 5, 6, 8 };

OcarinaNote sOcarinaSongNotes[OCARINA_SONG_MAX][20] = {
    // 0: Minuet
    {
        { NOTE_D4, 18, 86, 0, 0, 0 },
        { NOTE_D5, 18, 92, 0, 0, 0 },
        { NOTE_B4, 72, 86, 0, 0, 0 },
        { NOTE_A4, 18, 80, 0, 0, 0 },
        { NOTE_B4, 18, 88, 0, 0, 0 },
        { NOTE_A4, 144, 86, 0, 0, 0 },
        { NOTE_NONE, 0, 86, 0, 0, 0 },
    },

    // 1: Bolero
    {
        { NOTE_F4, 15, 80, 0, 0, 0 },
        { NOTE_D4, 15, 72, 0, 0, 0 },
        { NOTE_F4, 15, 84, 0, 0, 0 },
        { NOTE_D4, 15, 76, 0, 0, 0 },
        { NOTE_A4, 15, 84, 0, 0, 0 },
        { NOTE_F4, 15, 74, 0, 0, 0 },
        { NOTE_A4, 15, 78, 0, 0, 0 },
        { NOTE_F4, 135, 66, 0, 0, 0 },
        { NOTE_NONE, 0, 66, 0, 0, 0 },
    },

    // 2: Serenade
    {
        { NOTE_D4, 36, 60, 0, 0, 0 },
        { NOTE_F4, 36, 78, 0, 0, 0 },
        { NOTE_A4, 33, 82, 0, 0, 0 },
        { NOTE_NONE, 3, 82, 0, 0, 0 },
        { NOTE_A4, 36, 84, 0, 0, 0 },
        { NOTE_B4, 144, 90, 0, 0, 0 },
        { NOTE_NONE, 0, 90, 0, 0, 0 },
    },

    // 3: Requiem
    {
        { NOTE_D4, 45, 88, 0, 0, 0 },
        { NOTE_F4, 23, 86, 0, 0, 0 },
        { NOTE_D4, 22, 84, 0, 0, 0 },
        { NOTE_A4, 45, 86, 0, 0, 0 },
        { NOTE_F4, 45, 94, 0, 0, 0 },
        { NOTE_D4, 180, 94, 0, 0, 0 },
        { NOTE_NONE, 0, 94, 0, 0, 0 },
    },

    // 4: Nocturne
    {
        { NOTE_B4, 36, 88, 0, 0, 0 },
        { NOTE_A4, 33, 84, 0, 0, 0 },
        { NOTE_NONE, 3, 84, 0, 0, 0 },
        { NOTE_A4, 18, 82, 0, 0, 0 },
        { NOTE_D4, 18, 60, 0, 0, 0 },
        { NOTE_B4, 18, 90, 0, 0, 0 },
        { NOTE_A4, 18, 88, 0, 0, 0 },
        { NOTE_F4, 144, 96, 0, 0, 0 },
        { NOTE_NONE, 0, 96, 0, 0, 0 },
    },

    // 5: Prelude
    {
        { NOTE_D5, 15, 84, 0, 0, 0 },
        { NOTE_A4, 45, 88, 0, 0, 0 },
        { NOTE_D5, 15, 88, 0, 0, 0 },
        { NOTE_A4, 15, 82, 0, 0, 0 },
        { NOTE_B4, 15, 86, 0, 0, 0 },
        { NOTE_D5, 60, 90, 0, 0, 0 },
        { NOTE_NONE, 75, 90, 0, 0, 0 },
        { NOTE_NONE, 0, 90, 0, 0, 0 },
    },

    // 6: Sarias
    {
        { NOTE_F4, 17, 84, 0, 0, 0 },
        { NOTE_A4, 17, 88, 0, 0, 0 },
        { NOTE_B4, 34, 80, 0, 0, 0 },
        { NOTE_F4, 17, 84, 0, 0, 0 },
        { NOTE_A4, 17, 88, 0, 0, 0 },
        { NOTE_B4, 136, 80, 0, 0, 0 },
        { NOTE_NONE, 0, 90, 0, 0, 0 },
    },

    // 7: Epona
    {
        { NOTE_D5, 18, 84, 0, 0, 0 },
        { NOTE_B4, 18, 88, 0, 0, 0 },
        { NOTE_A4, 72, 80, 0, 0, 0 },
        { NOTE_D5, 18, 84, 0, 0, 0 },
        { NOTE_B4, 18, 88, 0, 0, 0 },
        { NOTE_A4, 144, 80, 0, 0, 0 },
        { NOTE_NONE, 0, 90, 0, 0, 0 },
    },

    // 8: Lullaby
    {
        { NOTE_B4, 51, 84, 0, 0, 0 },
        { NOTE_D5, 25, 88, 0, 0, 0 },
        { NOTE_A4, 78, 80, 0, 0, 0 },
        { NOTE_B4, 51, 84, 0, 0, 0 },
        { NOTE_D5, 25, 88, 0, 0, 0 },
        { NOTE_A4, 100, 80, 0, 0, 0 },
        { NOTE_NONE, 0, 90, 0, 0, 0 },
    },

    // 9: Suns
    {
        { NOTE_A4, 12, 84, 0, 0, 0 },
        { NOTE_F4, 13, 88, 0, 0, 0 },
        { NOTE_D5, 29, 80, 2, 0, 0 },
        { NOTE_NONE, 9, 84, 0, 0, 0 },
        { NOTE_A4, 12, 84, 0, 0, 0 },
        { NOTE_F4, 13, 88, 0, 0, 0 },
        { NOTE_D5, 120, 80, 3, 0, 0 },
        { NOTE_NONE, 0, 90, 0, 0, 0 },
    },

    // 10: Song of Time
    {
        { NOTE_A4, 32, 84, 0, 0, 0 },
        { NOTE_D4, 65, 88, 0, 0, 0 },
        { NOTE_F4, 33, 80, 0, 0, 0 },
        { NOTE_A4, 32, 84, 0, 0, 0 },
        { NOTE_D4, 65, 88, 0, 0, 0 },
        { NOTE_F4, 99, 80, 0, 0, 0 },
        { NOTE_NONE, 0, 90, 0, 0, 0 },
    },

    // 11: Storms
    {
        { NOTE_D4, 11, 84, 0, 0, 0 },
        { NOTE_F4, 11, 88, 0, 0, 0 },
        { NOTE_D5, 45, 80, 0, 0, 0 },
        { NOTE_D4, 11, 84, 0, 0, 0 },
        { NOTE_F4, 11, 88, 0, 0, 0 },
        { NOTE_D5, 90, 80, 0, 0, 0 },
        { NOTE_NONE, 0, 90, 0, 0, 0 },
    },

    // 12: Scarecrow Spawn
    {
        { NOTE_D4, 3, 0, 0, 0, 0 },
        { NOTE_NONE, 0, 255, 0, 0, 0 },
    },

    // 13: Lost Woods Memory Game
    {
        { NOTE_D4, 3, 0, 0, 0, 0 },
        { NOTE_NONE, 0, 0, 0, 0, 0 },
    },
};

OcarinaNote* sDisplayedSong = sOcarinaSongNotes[0];
u8 sFrogsSongNotes[14] = {
    OCARINA_BTN_A,       OCARINA_BTN_C_LEFT,  OCARINA_BTN_C_RIGHT, OCARINA_BTN_C_DOWN, OCARINA_BTN_C_LEFT,
    OCARINA_BTN_C_RIGHT, OCARINA_BTN_C_DOWN,  OCARINA_BTN_A,       OCARINA_BTN_C_DOWN, OCARINA_BTN_A,
    OCARINA_BTN_C_DOWN,  OCARINA_BTN_C_RIGHT, OCARINA_BTN_C_LEFT,  OCARINA_BTN_A,
};
u8* gFrogsSongPtr = sFrogsSongNotes;
u8 sRecordingState = OCARINA_RECORD_OFF;
u8 sRecordSongPos = 0;
u32 sOcarinaRecordTaskStart = 0;
u8 sRecordOcarinaNoteIdx = 0;
u8 sRecordOcarinaVolume = 0;
u8 sRecordOcarinaVibrato = 0;
s8 sRecordOcarinaBendIdx = 0;
u8 sRecordOcarinaButtonIdx = 0;
u8 sPlayedOcarinaSongIdxPlusOne = 0;
u8 sMusicStaffNumNotesPerTest = 0;
u8 sIsOcarinaNoteChanged = false;

OcarinaNote sScarecrowsLongSongNotes[108] = {
    { NOTE_NONE, 0, 0, 0, 0, 0 },
    { NOTE_NONE, 0, 0, 0, 0, 0 },
};
OcarinaNote* gScarecrowLongSongPtr = sScarecrowsLongSongNotes;

u8* gScarecrowSpawnSongPtr = (u8*)&sOcarinaSongNotes[OCARINA_SONG_SCARECROW_SPAWN];
OcarinaNote* sMemoryGameSongPtr = sOcarinaSongNotes[OCARINA_SONG_MEMORY_GAME];

u8 sNoteToButtonMap[16] = {
    OCARINA_BTN_A,                            // NOTE_C4
    OCARINA_BTN_A,                            // NOTE_DFLAT4
    OCARINA_BTN_A,                            // NOTE_D4
    OCARINA_BTN_A,                            // NOTE_EFLAT4
    OCARINA_BTN_C_DOWN,                       // NOTE_E4
    OCARINA_BTN_C_DOWN,                       // NOTE_F4
    OCARINA_BTN_C_DOWN,                       // NOTE_GFLAT4
    OCARINA_BTN_C_RIGHT,                      // NOTE_G4
    OCARINA_BTN_C_RIGHT,                      // NOTE_AFLAT4
    OCARINA_BTN_C_RIGHT,                      // NOTE_A4
    OCARINA_BTN_C_RIGHT + OCARINA_BTN_C_LEFT, // NOTE_BFLAT4: Interface/Overlap between C_RIGHT and C_LEFT
    OCARINA_BTN_C_LEFT,                       // NOTE_B4
    OCARINA_BTN_C_LEFT,                       // NOTE_C5
    OCARINA_BTN_C_UP,                         // NOTE_DFLAT5
    OCARINA_BTN_C_UP,                         // NOTE_D5
    OCARINA_BTN_C_UP,                         // NOTE_EFLAT5
};

OcarinaSongButtons gOcarinaSongButtons[OCARINA_SONG_MAX] = {
    // 0: Minuet
    { 6,
      {
          OCARINA_BTN_A,
          OCARINA_BTN_C_UP,
          OCARINA_BTN_C_LEFT,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_C_LEFT,
          OCARINA_BTN_C_RIGHT,
      } },
    // 1: Bolero
    { 8,
      {
          OCARINA_BTN_C_DOWN,
          OCARINA_BTN_A,
          OCARINA_BTN_C_DOWN,
          OCARINA_BTN_A,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_C_DOWN,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_C_DOWN,
      } },
    // 2: Serenade
    { 5,
      {
          OCARINA_BTN_A,
          OCARINA_BTN_C_DOWN,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_C_LEFT,
      } },
    // 3: Requiem
    { 6,
      {
          OCARINA_BTN_A,
          OCARINA_BTN_C_DOWN,
          OCARINA_BTN_A,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_C_DOWN,
          OCARINA_BTN_A,
      } },
    // 4: Nocturne
    { 7,
      {
          OCARINA_BTN_C_LEFT,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_A,
          OCARINA_BTN_C_LEFT,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_C_DOWN,
      } },
    // 5: Prelude
    { 6,
      {
          OCARINA_BTN_C_UP,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_C_UP,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_C_LEFT,
          OCARINA_BTN_C_UP,
      } },
    // 6: Sarias
    { 6,
      {
          OCARINA_BTN_C_DOWN,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_C_LEFT,
          OCARINA_BTN_C_DOWN,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_C_LEFT,
      } },
    // 7: Epona
    { 6,
      {
          OCARINA_BTN_C_UP,
          OCARINA_BTN_C_LEFT,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_C_UP,
          OCARINA_BTN_C_LEFT,
          OCARINA_BTN_C_RIGHT,
      } },
    // 8: Lullaby
    { 6,
      {
          OCARINA_BTN_C_LEFT,
          OCARINA_BTN_C_UP,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_C_LEFT,
          OCARINA_BTN_C_UP,
          OCARINA_BTN_C_RIGHT,
      } },
    // 9: Suns
    { 6,
      {
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_C_DOWN,
          OCARINA_BTN_C_UP,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_C_DOWN,
          OCARINA_BTN_C_UP,
      } },
    // 10: Song of Time
    { 6,
      {
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_A,
          OCARINA_BTN_C_DOWN,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_A,
          OCARINA_BTN_C_DOWN,
      } },
    // 11: Storms
    { 6,
      {
          OCARINA_BTN_A,
          OCARINA_BTN_C_DOWN,
          OCARINA_BTN_C_UP,
          OCARINA_BTN_A,
          OCARINA_BTN_C_DOWN,
          OCARINA_BTN_C_UP,
      } },
    // 12: Scarecrow
    { 8, { OCARINA_BTN_A } },
    // 13: Lost Woods Memory Game
    { 0, { OCARINA_BTN_A } },
};
// clang-format on

/**
 * Audio Interface Bss
 */

u32 sAudioUpdateStartTime;
u32 sAudioUpdateEndTime;
f32 D_8016B7A8;
f32 D_8016B7AC;
f32 D_8016B7B0;
f32 D_8016B7B4;
FreqLerp sRiverFreqScaleLerp;
FreqLerp sWaterfallFreqScaleLerp;
f32 D_8016B7D8;
s8 D_8016B7DC;
f32 D_8016B7E0;
u16 D_8016B7E4;
struct {
    s8 str[5];
    u16 num;
} sAudioScrPrtBuf[SCROLL_PRINT_BUF_SIZE];
u8 D_8016B8B0;
u8 D_8016B8B1;
u8 D_8016B8B2;
u8 D_8016B8B3;
u8 sAudioGanonDistVol;
SfxPlayerState sSfxChannelState[0x10];
char sBinToStrBuf[0x20];
u8 D_8016B9D8;
u8 sAudioSpecPeakNumNotes[0x12];
u8 D_8016B9F2;
u8 D_8016B9F3;
u8 D_8016B9F4;
u16 D_8016B9F6;

/**
 * Audio Ocarina Bss
 */

OcarinaStaff sPlayingStaff;
OcarinaStaff sDisplayedStaff;
OcarinaStaff sRecordingStaff;
u32 sOcarinaUpdateTaskStart;
OcarinaStick sOcarinaInputStickRel;
u32 sOcarinaInputButtonCur;
u32 sOcarinaInputButtonStart;
u32 sOcarinaInputButtonPrev;
s32 sOcarinaInputButtonPress;
s32 sOcarinaUnused;
u8 sCurOcarinaSong[8];
u8 sOcarinaFreePlayPos;
u8 sOcarinaHasStartedSong;
u8 sFirstOcarinaSongIdx;
u8 sLastOcarinaSongIdx;
u16 sAvailOcarinaSongFlags;
u8 sStaffOcarinaPlayingPos;
u16 sMusicStaffPos[OCARINA_SONG_MAX];
u16 sMusicStaffCurHeldLength[OCARINA_SONG_MAX];
u16 sMusicStaffExpectedLength[OCARINA_SONG_MAX];
u8 sMusicStaffExpectedNoteIdx[OCARINA_SONG_MAX];
OcarinaNote sScarecrowsLongSongSecondNote;
u8 sAudioHasMalonBgm;
f32 sAudioMalonBgmDist;

void PadMgr_RequestPadData(PadMgr* padmgr, Input* inputs, s32 mode);
void Audio_StepFreqLerp(FreqLerp* lerp);
void func_800F56A8(void);
void func_800F6FB4(u8);
s32 Audio_SetGanonDistVol(u8 targetVol);

// =========== Audio Ocarina ===========

/**
 * Audio Ocarina Functions
 */

void AudioOcarina_SetCustomButtonMapping(u8 useCustom) {
    if (!useCustom) {
        osSyncPrintf("AUDIO : Ocarina Control Assign Normal\n");
        sOcarinaAllowedButtonMask = (BTN_A | BTN_CUP | BTN_CDOWN | BTN_CLEFT | BTN_CRIGHT);
        sOcarinaAButtonMap = BTN_A;
        sOcarinaCUpButtonMap = BTN_CUP;
        sOcarinaCDownButtonMap = BTN_CDOWN;
    } else {
        osSyncPrintf("AUDIO : Ocarina Control Assign Custom\n");
        sOcarinaAllowedButtonMask = (BTN_A | BTN_B | BTN_CDOWN | BTN_CLEFT | BTN_CRIGHT);
        sOcarinaAButtonMap = BTN_B;
        sOcarinaCUpButtonMap = BTN_CDOWN;
        sOcarinaCDownButtonMap = BTN_A;
    }
}

void AudioOcarina_ReadControllerInput(void) {
    Input inputs[4];
    Input* input = &inputs[0];
    u32 ocarinaInputButtonPrev = sOcarinaInputButtonCur;

    PadMgr_RequestPadData(&gPadMgr, inputs, 0);
    sOcarinaInputButtonCur = input->cur.button;
    sOcarinaInputButtonPrev = ocarinaInputButtonPrev;
    sOcarinaInputStickRel.x = input->rel.stick_x;
    sOcarinaInputStickRel.y = input->rel.stick_y;
}

/**
 * Looks up the pitch frequency to bend the note by.
 * The note will bend up to a maximum of 2 semitones
 * in each direction giving a total range of 4 semitones
 */
f32 AudioOcarina_BendPitchTwoSemitones(s8 bendIdx) {
    s8 adjBendIdx;
    f32 bendFreq;

    if (bendIdx > 64) {
        adjBendIdx = 127;
    } else if (bendIdx < -64) {
        adjBendIdx = -128;
    } else if (bendIdx >= 0) {
        adjBendIdx = (bendIdx * 127) / 64;
    } else {
        adjBendIdx = (bendIdx * 128) / 64;
    }

    /**
     * index 128 is in the middle of the table and
     * contains the value 1.0f i.e. no bend
     * absolute indices above 128 will bend the pitch 2 semitones upwards
     * absolute indices below 128 will bend the pitch 2 semitones downwards
     */
    bendFreq = gBendPitchTwoSemitonesFrequencies[adjBendIdx + 128];
    return bendFreq;
}

/**
 * If an available song has been played, then return that song index
 * If the ocarina is on, but no song has been played then return 0xFE
 * If the ocarina is off, return 0xFF
 */
u8 AudioOcarina_GetPlayingState(void) {
    u8 playedOcarinaSongIdx;

    if (sPlayedOcarinaSongIdxPlusOne != 0) {
        playedOcarinaSongIdx = sPlayedOcarinaSongIdxPlusOne - 1;
        sPlayedOcarinaSongIdxPlusOne = 0;
    } else if (sOcarinaFlags != 0) {
        playedOcarinaSongIdx = 0xFE;
    } else {
        playedOcarinaSongIdx = 0xFF;
    }

    return playedOcarinaSongIdx;
}

u8 AudioOcarina_MapNoteToButton(u8 noteIdx) {
    u8 buttonIdx = sNoteToButtonMap[noteIdx & 0x3F];

    /**
     * Special case for BFlat4:
     * CRIGHT and CLEFT are the only two notes that are 2 semitones apart
     * which are notes A4 and B4 respectively
     * BFlat4 is in the middle of those two and is the only note that can not
     * be resolved between the two buttons without external information.
     * That information is stored as flags in noteIdx with the mask:
     * (noteIdx & 0xC0)
     */
    if (buttonIdx == (OCARINA_BTN_C_RIGHT + OCARINA_BTN_C_LEFT)) {
        if (noteIdx & 0x80) {
            return OCARINA_BTN_C_RIGHT;
        }
        return OCARINA_BTN_C_LEFT;
    }

    return buttonIdx;
}

void AudioOcarina_MapNotesToScarecrowButtons(u8 noteSongIdx) {
    u8 buttonSongPos = 0;
    u8 noteSongPos = 0;
    u8 noteIdx;

    while (buttonSongPos < 8 && noteSongPos < 16) {
        noteIdx = sOcarinaSongNotes[noteSongIdx][noteSongPos++].noteIdx;

        if (noteIdx != NOTE_NONE) {
            gOcarinaSongButtons[OCARINA_SONG_SCARECROW_SPAWN].buttonIdx[buttonSongPos++] = sNoteToButtonMap[noteIdx];
        }
    }
}

/**
 * Ocarina flags:
 * bitmask 0x3FFF:
 *      - Ocarina song id
 * bitmask 0xC000:
 *      - 0x0000: Limits the notes to 8 notes at a time. Not playing a correct song after 8 notes will cause an ocarina
 * error
 *      - 0x4000: (Identical to 0xC000)
 *      - 0x8000: Limits the notes to 1 note at a time. A single incorrect note will cause an ocarina error
 *      - 0xC000: Free-play, no limitations to the number of notes to play
 * bitmask 0x7FFF0000:
 *      - ocarina action (only used to make flags != 0)
 * bitmask 0x80000000:
 *      - unused (only used to make flags != 0)
 */
void AudioOcarina_Start(u16 ocarinaFlags) {
    u8 i;

    if ((sOcarinaSongNotes[OCARINA_SONG_SCARECROW_SPAWN][1].volume != 0xFF) && ((ocarinaFlags & 0xFFF) == 0xFFF)) {
        ocarinaFlags |= 0x1000;
    }

    if ((ocarinaFlags == 0xCFFF) && (sOcarinaSongNotes[OCARINA_SONG_SCARECROW_SPAWN][1].volume != 0xFF)) {
        ocarinaFlags = 0xDFFF;
    }

    if ((ocarinaFlags == 0xFFF) && (sOcarinaSongNotes[OCARINA_SONG_SCARECROW_SPAWN][1].volume != 0xFF)) {
        ocarinaFlags = 0x1FFF;
    }

    if (ocarinaFlags != 0xFFFF) {
        sOcarinaFlags = 0x80000000 + (u32)ocarinaFlags;
        sFirstOcarinaSongIdx = 0;
        sLastOcarinaSongIdx = OCARINA_SONG_MAX;
        if (ocarinaFlags != 0xA000) {
            sLastOcarinaSongIdx--;
        }
        sAvailOcarinaSongFlags = ocarinaFlags & 0x3FFF;
        sMusicStaffNumNotesPerTest = 8; // Ocarina Check
        sOcarinaHasStartedSong = false;
        sPlayedOcarinaSongIdxPlusOne = 0;
        sStaffOcarinaPlayingPos = 0;
        sPlayingStaff.state = AudioOcarina_GetPlayingState();
        sIsOcarinaInputEnabled = true;
        sPrevOcarinaSongFlags = 0;

        // Reset music staff song check
        for (i = 0; i < OCARINA_SONG_MAX; i++) {
            sMusicStaffPos[i] = 0;
            sMusicStaffCurHeldLength[i] = 0;
            sMusicStaffExpectedLength[i] = 0;
            sMusicStaffExpectedNoteIdx[i] = 0;
        }

        if (ocarinaFlags & 0x8000) {
            sMusicStaffNumNotesPerTest = 0; // Ocarina Playback
        }

        if (ocarinaFlags & 0x4000) {
            sOcarinaFreePlayPos = 0;
        }

        if (ocarinaFlags & 0xD000) {
            AudioOcarina_MapNotesToScarecrowButtons(OCARINA_SONG_SCARECROW_SPAWN);
        }
    } else {
        sOcarinaFlags = 0;
        sIsOcarinaInputEnabled = false;
    }
}

void AudioOcarina_CheckIfStartedSong(void) {
    if (sCurOcarinaNoteIdx != NOTE_NONE && !sOcarinaHasStartedSong) {
        sOcarinaHasStartedSong = true;
        sMusicStaffPrevNoteIdx = NOTE_NONE;
    }
}

/**
 * Checks for ocarina songs from user input with a music staff prompt
 * Type 1) Playback: tests note-by-note (ocarinaFlag & 0xC000 == 0x8000) eg:
 *      - learning a new song
 *      - playing the ocarina memory game
 * Type 2) Check: tests in 8-note chunks (ocarinaFlag & 0xC000 == 0x0000) eg:
 *      - validating scarecrow spawn song as adult
 *      - ocarina prompt for zelda's lullaby, saria's song, Storms, Song of Time, etc...
 */
void AudioOcarina_CheckSongsWithMusicStaff(void) {
    u16 curOcarinaSongFlag;
    u16 pad;
    u8 noNewValidInput = false;
    u16 pad2;
    s8 staffOcarinaPlayingPosOffset = 0;
    u8 songIdx;
    OcarinaNote* prevNote;
    OcarinaNote* note;

    AudioOcarina_CheckIfStartedSong();

    if (!sOcarinaHasStartedSong) {
        return;
    }

    if (ABS_ALT(sCurOcarinaBendIdx) > 20) {
        sOcarinaFlags = 0;
        return;
    }

    // clang-format off
    if (sPrevOcarinaNoteIdx == sCurOcarinaNoteIdx || sCurOcarinaNoteIdx == NOTE_NONE) { noNewValidInput = true; }
    // clang-format on

    for (songIdx = sFirstOcarinaSongIdx; songIdx < sLastOcarinaSongIdx; songIdx++) {
        curOcarinaSongFlag = 1 << songIdx;

        if (sAvailOcarinaSongFlags & curOcarinaSongFlag) {
            sMusicStaffCurHeldLength[songIdx] = sMusicStaffExpectedLength[songIdx] + 18;

            if (noNewValidInput) {
                if ((sMusicStaffCurHeldLength[songIdx] >= sMusicStaffExpectedLength[songIdx] - 18) &&
                    (sMusicStaffCurHeldLength[songIdx] >= sMusicStaffExpectedLength[songIdx] + 18) &&
                    (sOcarinaSongNotes[songIdx][sMusicStaffPos[songIdx]].length == 0) &&
                    (sMusicStaffPrevNoteIdx == sMusicStaffExpectedNoteIdx[songIdx])) {
                    // This case is taken if the song is finished and successfully played
                    // (i.e. .length == 0 indicates that the song is at the end)
                    sPlayedOcarinaSongIdxPlusOne = songIdx + 1;
                    sIsOcarinaInputEnabled = false;
                    sOcarinaFlags = 0;
                }
            } else if (sMusicStaffCurHeldLength[songIdx] >= (sMusicStaffExpectedLength[songIdx] - 18)) {
                // This else-if statement always holds true, taken if a new note is played
                if (sMusicStaffPrevNoteIdx != NOTE_NONE) {
                    // New note is played
                    if (sMusicStaffPrevNoteIdx == sMusicStaffExpectedNoteIdx[songIdx]) {
                        // Note is part of expected song
                        if (songIdx == OCARINA_SONG_SCARECROW_SPAWN) {
                            sMusicStaffCurHeldLength[songIdx] = 0;
                        }
                    } else {
                        // Note is not part of expected song, so this song is no longer available as an option in this
                        // playback
                        sAvailOcarinaSongFlags ^= curOcarinaSongFlag;
                    }
                }

                // Update previous notes based on new note
                prevNote = &sOcarinaSongNotes[songIdx][sMusicStaffPos[songIdx]];
                note = &sOcarinaSongNotes[songIdx][++sMusicStaffPos[songIdx]];
                sMusicStaffExpectedLength[songIdx] = prevNote->length;
                sMusicStaffExpectedNoteIdx[songIdx] = prevNote->noteIdx;

                // The current note is not the expected note.
                if (sCurOcarinaNoteIdx != sMusicStaffExpectedNoteIdx[songIdx]) {
                    sAvailOcarinaSongFlags ^= curOcarinaSongFlag;
                }

                while (prevNote->noteIdx == note->noteIdx ||
                       (note->noteIdx == OCARINA_BTN_INVALID && note->length != 0)) {
                    sMusicStaffExpectedLength[songIdx] += note->length;
                    prevNote = &sOcarinaSongNotes[songIdx][sMusicStaffPos[songIdx]];
                    note = &sOcarinaSongNotes[songIdx][sMusicStaffPos[songIdx] + 1];
                    sMusicStaffPos[songIdx]++;
                }
            } else if (sMusicStaffCurHeldLength[songIdx] < 10) {
                // case never taken
                staffOcarinaPlayingPosOffset = -1;
                sMusicStaffCurHeldLength[songIdx] = 0;
                sMusicStaffPrevNoteIdx = sCurOcarinaNoteIdx;
            } else {
                // case never taken
                sAvailOcarinaSongFlags ^= curOcarinaSongFlag;
            }
        }

        // if a note is played that doesn't match a song, the song bit in sAvailOcarinaSongFlags is turned off
        // if there are no more songs remaining that it could be and the maximum position has been exceded, then
        if (sAvailOcarinaSongFlags == 0 && sStaffOcarinaPlayingPos >= sMusicStaffNumNotesPerTest) {
            sIsOcarinaInputEnabled = false;
            if ((sOcarinaFlags & 0x4000) && sCurOcarinaNoteIdx == sOcarinaSongNotes[songIdx][0].noteIdx) {
                sPrevOcarinaSongFlags = sOcarinaFlags;
            }
            sOcarinaFlags = 0;
            return;
        }
    }

    if (!noNewValidInput) {
        sMusicStaffPrevNoteIdx = sCurOcarinaNoteIdx;
        sStaffOcarinaPlayingPos += staffOcarinaPlayingPosOffset + 1;
    }
}

/**
 * Checks for ocarina songs from user input with no music staff prompt.
 * Includes ocarina actions such as free play, no warp
 */
void AudioOcarina_CheckSongsWithoutMusicStaff(void) {
    u32 temp_v0;
    u8 i;
    u8 j;
    u8 k;

    if (CHECK_BTN_ANY(sOcarinaInputButtonCur, BTN_L) &&
        CHECK_BTN_ANY(sOcarinaInputButtonCur, sOcarinaAllowedButtonMask)) {
        AudioOcarina_Start((u16)sOcarinaFlags);
        return;
    }

    AudioOcarina_CheckIfStartedSong();

    if (!sOcarinaHasStartedSong) {
        return;
    }

    if ((sPrevOcarinaNoteIdx != sCurOcarinaNoteIdx) && (sCurOcarinaNoteIdx != NOTE_NONE)) {
        sStaffOcarinaPlayingPos++;
        if (sStaffOcarinaPlayingPos > ARRAY_COUNT(sCurOcarinaSong)) {
            sStaffOcarinaPlayingPos = 1;
        }

        if (sOcarinaFreePlayPos == 8) {
            for (i = 0; i < 7; i++) {
                sCurOcarinaSong[i] = sCurOcarinaSong[i + 1];
            }
        } else {
            sOcarinaFreePlayPos++;
        }

        if (ABS_ALT(sCurOcarinaBendIdx) > 20) {
            sCurOcarinaSong[sOcarinaFreePlayPos - 1] = NOTE_NONE;
        } else {
            sCurOcarinaSong[sOcarinaFreePlayPos - 1] = sCurOcarinaNoteIdx;
        }

        // Loop through each of the songs
        for (i = sFirstOcarinaSongIdx; i < sLastOcarinaSongIdx; i++) {
            // Checks to see if the song is available to be played
            if (sAvailOcarinaSongFlags & (u16)(1 << i)) {
                for (j = 0, k = 0; j < gOcarinaSongButtons[i].numButtons && k == 0 &&
                                   sOcarinaFreePlayPos >= gOcarinaSongButtons[i].numButtons;) {
                    temp_v0 = sCurOcarinaSong[(sOcarinaFreePlayPos - gOcarinaSongButtons[i].numButtons) + j];
                    if (temp_v0 == sButtonToNoteMap[gOcarinaSongButtons[i].buttonIdx[j]]) {
                        j++;
                    } else {
                        k++;
                    }
                }

                // This conditional is true if songIdx = i is detected
                if (j == gOcarinaSongButtons[i].numButtons) {
                    sPlayedOcarinaSongIdxPlusOne = i + 1;
                    sIsOcarinaInputEnabled = false;
                    sOcarinaFlags = 0;
                }
            }
        }
    }
}

void AudioOcarina_PlayControllerInput(u8 unused) {
    u32 ocarinaBtnsHeld;

    // Prevents two different ocarina notes from being played on two consecutive frames
    if (sOcarinaFlags != 0 && sIsOcarinaNoteChanged) {
        sIsOcarinaNoteChanged--;
        return;
    }

    // Ensures the button pressed to start the ocarina does not also play an ocarina note
    if ((sOcarinaInputButtonStart == 0) || ((sOcarinaInputButtonStart & sOcarinaAllowedButtonMask) !=
                                            (sOcarinaInputButtonCur & sOcarinaAllowedButtonMask))) {
        sOcarinaInputButtonStart = 0;
        if (1) {}
        sCurOcarinaNoteIdx = NOTE_NONE;
        sCurOcarinaButtonIdx = OCARINA_BTN_INVALID;
        ocarinaBtnsHeld = (sOcarinaInputButtonCur & sOcarinaAllowedButtonMask) &
                          (sOcarinaInputButtonPrev & sOcarinaAllowedButtonMask);
        if (!(sOcarinaInputButtonPress & ocarinaBtnsHeld) && (sOcarinaInputButtonCur != 0)) {
            sOcarinaInputButtonPress = sOcarinaInputButtonCur;
        } else {
            sOcarinaInputButtonPress &= ocarinaBtnsHeld;
        }

        // Interprets and transforms controller input into ocarina buttons and notes
        if (CHECK_BTN_ANY(sOcarinaInputButtonPress, sOcarinaAButtonMap)) {
            osSyncPrintf("Presss NA_KEY_D4 %08x\n", sOcarinaAButtonMap);
            sCurOcarinaNoteIdx = NOTE_D4;
            sCurOcarinaButtonIdx = OCARINA_BTN_A;
        } else if (CHECK_BTN_ANY(sOcarinaInputButtonPress, sOcarinaCDownButtonMap)) {
            osSyncPrintf("Presss NA_KEY_F4 %08x\n", sOcarinaCDownButtonMap);
            sCurOcarinaNoteIdx = NOTE_F4;
            sCurOcarinaButtonIdx = OCARINA_BTN_C_DOWN;
        } else if (CHECK_BTN_ANY(sOcarinaInputButtonPress, BTN_CRIGHT)) {
            osSyncPrintf("Presss NA_KEY_A4 %08x\n", BTN_CRIGHT);
            sCurOcarinaNoteIdx = NOTE_A4;
            sCurOcarinaButtonIdx = OCARINA_BTN_C_RIGHT;
        } else if (CHECK_BTN_ANY(sOcarinaInputButtonPress, BTN_CLEFT)) {
            osSyncPrintf("Presss NA_KEY_B4 %08x\n", BTN_CLEFT);
            sCurOcarinaNoteIdx = NOTE_B4;
            sCurOcarinaButtonIdx = OCARINA_BTN_C_LEFT;
        } else if (CHECK_BTN_ANY(sOcarinaInputButtonPress, sOcarinaCUpButtonMap)) {
            osSyncPrintf("Presss NA_KEY_D5 %08x\n", sOcarinaCUpButtonMap);
            sCurOcarinaNoteIdx = NOTE_D5;
            sCurOcarinaButtonIdx = OCARINA_BTN_C_UP;
        }

        // Pressing the R Button will raise the pitch by 1 semitone
        if ((sCurOcarinaNoteIdx != NOTE_NONE) && CHECK_BTN_ANY(sOcarinaInputButtonCur, BTN_R) &&
            (sRecordingState != OCARINA_RECORD_SCARECROW_SPAWN)) {
            sCurOcarinaButtonIdx += 0x80; // Flag to resolve B Flat 4
            sCurOcarinaNoteIdx++;         // Raise the pitch by 1 semitone
        }

        // Pressing the Z Button will lower the pitch by 1 semitone
        if ((sCurOcarinaNoteIdx != NOTE_NONE) && CHECK_BTN_ANY(sOcarinaInputButtonCur, BTN_Z) &&
            (sRecordingState != OCARINA_RECORD_SCARECROW_SPAWN)) {
            sCurOcarinaButtonIdx += 0x40; // Flag to resolve B Flat 4
            sCurOcarinaNoteIdx--;         // Lower the pitch by 1 semitone
        }

        if (sRecordingState != OCARINA_RECORD_SCARECROW_SPAWN) {
            // Bend the pitch of the note based on y control stick
            sCurOcarinaBendIdx = sOcarinaInputStickRel.y;
            sCurOcarinaBendFreq = AudioOcarina_BendPitchTwoSemitones(sCurOcarinaBendIdx);

            // Add vibrato of the ocarina note based on the x control stick
            sCurOcarinaVibrato = ABS_ALT(sOcarinaInputStickRel.x) >> 2;
            Audio_QueueCmdS8(0x6020D06, sCurOcarinaVibrato);
        } else {
            // no bending or vibrato for recording state 2
            sCurOcarinaBendIdx = 0;
            sCurOcarinaBendFreq = 1.0f; // No bend
        }

        if ((sCurOcarinaNoteIdx != NOTE_NONE) && (sPrevOcarinaNoteIdx != sCurOcarinaNoteIdx)) {
            // Processes new and valid notes
            Audio_QueueCmdS8(0x6020D07, sOcarinaInstrumentId - 1); // Sets fontId to io port 7
            Audio_QueueCmdS8(0x6020D05, sCurOcarinaNoteIdx);       // Sets noteIdx to io port 5
            Audio_PlaySoundGeneral(NA_SE_OC_OCARINA, &D_801333D4, 4, &sCurOcarinaBendFreq, &sRelativeOcarinaVolume,
                                   &D_801333E8);
        } else if ((sPrevOcarinaNoteIdx != NOTE_NONE) && (sCurOcarinaNoteIdx == NOTE_NONE)) {
            // cancels ocarina for a non-valid input
            Audio_StopSfxById(NA_SE_OC_OCARINA);
        }
    }
}

/**
 * Directly enable the ocarina to receive input without
 * properly resetting it based on an ocarina instrument id
 * Unused.
 */
void AudioOcarina_EnableInput(u8 inputEnabled) {
    sIsOcarinaInputEnabled = inputEnabled;
}

/**
 * Resets ocarina properties based on the ocarina instrument id
 */
void AudioOcarina_Reset(u8 ocarinaInstrumentId) {
    if (sOcarinaInstrumentId == ocarinaInstrumentId) {
        return;
    }

    Audio_SeqCmd8(2, 1, SFX_CHANNEL_OCARINA, ocarinaInstrumentId);
    sOcarinaInstrumentId = ocarinaInstrumentId;
    if (ocarinaInstrumentId == OCARINA_INSTRUMENT_OFF) {
        sOcarinaInputButtonCur = 0;
        sOcarinaInputButtonPrev = 0;
        sOcarinaInputButtonPress = 0;

        sOcarinaInputButtonStart = 0xFFFF;

        AudioOcarina_PlayControllerInput(false);
        Audio_StopSfxById(NA_SE_OC_OCARINA);
        Audio_SetSoundBanksMute(0);
        sDisplayedState = 0;
        sDisplayedStaffPos = 0;
        sIsOcarinaInputEnabled = false;
        sOcarinaFlags = 0;
        Audio_ClearBGMMute(SFX_CHANNEL_OCARINA);
    } else {
        sOcarinaInputButtonCur = 0;
        AudioOcarina_ReadControllerInput();
        sOcarinaInputButtonStart = sOcarinaInputButtonCur; // Button used to turn on ocarina
        Audio_QueueSeqCmdMute(SFX_CHANNEL_OCARINA);
    }
}

void AudioOcarina_SetDisplayedSong(s8 songIdxPlusOne, s8 displayedState) {
    if (songIdxPlusOne == 0) {
        sDisplayedState = 0;
        Audio_StopSfxById(NA_SE_OC_OCARINA);
        return;
    }

    if (songIdxPlusOne < (OCARINA_SONG_SCARECROW_LONG + 1)) {
        sDisplayedSong = sOcarinaSongNotes[songIdxPlusOne - 1];
    } else {
        sDisplayedSong = sScarecrowsLongSongNotes;
    }

    sDisplayedState = displayedState;
    sDisplayedNoteTimer = 0;
    sDisplayedNoteValue = NOTE_NONE;
    sDisplayedNotePos = 0;
    sDisplayedStaffPos = 0;
    while (sDisplayedSong[sDisplayedNotePos].noteIdx == OCARINA_BTN_INVALID) {
        sDisplayedNotePos++;
    }
}

void AudioOcarina_PlayDisplayedSong(void) {
    u32 noteTimerStep;
    u32 nextNoteTimerStep;

    if (sDisplayedState == 0) {
        return;
    }

    if (sDisplayedStaffPos == 0) {
        noteTimerStep = 3;
    } else {
        noteTimerStep = sOcarinaUpdateTaskStart - sOcarinaDisplayedTaskStart;
    }

    if (noteTimerStep < sDisplayedNoteTimer) {
        sDisplayedNoteTimer -= noteTimerStep;
    } else {
        nextNoteTimerStep = noteTimerStep - sDisplayedNoteTimer;
        sDisplayedNoteTimer = 0;
    }

    if (sDisplayedNoteTimer == 0) {

        sDisplayedNoteTimer = sDisplayedSong[sDisplayedNotePos].length;

        if (sDisplayedNotePos == 1) {
            sDisplayedNoteTimer++;
        }

        if (sDisplayedNoteTimer == 0) {
            sDisplayedState--;
            if (sDisplayedState != 0) {
                sDisplayedNotePos = 0;
                sDisplayedStaffPos = 0;
                sDisplayedNoteValue = NOTE_NONE;
            } else {
                Audio_StopSfxById(NA_SE_OC_OCARINA);
            }
            return;
        } else {
            sDisplayedNoteTimer -= nextNoteTimerStep;
        }

        // Update volume
        if (sNoteDisplayedVolume != sDisplayedSong[sDisplayedNotePos].volume) {
            sNoteDisplayedVolume = sDisplayedSong[sDisplayedNotePos].volume;
            sRelativeNoteDisplayedVolume = sNoteDisplayedVolume / 127.0f;
        }

        // Update vibrato
        if (sNoteDisplayedVibrato != sDisplayedSong[sDisplayedNotePos].vibrato) {
            sNoteDisplayedVibrato = sDisplayedSong[sDisplayedNotePos].vibrato;
            Audio_QueueCmdS8(0x06020D06, sNoteDisplayedVibrato);
        }

        // Update bend
        if (sNoteDisplayedBend != sDisplayedSong[sDisplayedNotePos].bend) {
            sNoteDisplayedBend = sDisplayedSong[sDisplayedNotePos].bend;
            sRelativeNoteDisplayedBend = AudioOcarina_BendPitchTwoSemitones(sNoteDisplayedBend);
        }

        // No changes in volume, vibrato, or bend between notes
        if ((sDisplayedSong[sDisplayedNotePos].volume == sDisplayedSong[sDisplayedNotePos - 1].volume &&
             (sDisplayedSong[sDisplayedNotePos].vibrato == sDisplayedSong[sDisplayedNotePos - 1].vibrato) &&
             (sDisplayedSong[sDisplayedNotePos].bend == sDisplayedSong[sDisplayedNotePos - 1].bend))) {
            sDisplayedNoteValue = 0xFE;
        }

        if (sDisplayedNoteValue != sDisplayedSong[sDisplayedNotePos].noteIdx) {
            u8 noteIdx = sDisplayedSong[sDisplayedNotePos].noteIdx;

            // As BFlat4 is exactly in the middle of notes B & A, a flag is
            // added to the noteIdx to resolve which button to map Bflat4 to
            if (noteIdx == NOTE_BFLAT4) {
                sDisplayedNoteValue = noteIdx + sDisplayedSong[sDisplayedNotePos].BFlat4Flag;
            } else {
                sDisplayedNoteValue = noteIdx;
            }

            if (sDisplayedNoteValue != NOTE_NONE) {
                sDisplayedStaffPos++;
                // Sets ocarina instrument Id to channel io port 7, which is used as an index in seq 0 to get the
                // true instrument Id
                Audio_QueueCmdS8(0x6020D07, sOcarinaInstrumentId - 1);
                // Sets sDisplayedNoteValue to channel io port 5
                Audio_QueueCmdS8(0x6020D05, sDisplayedNoteValue & 0x3F);
                Audio_PlaySoundGeneral(NA_SE_OC_OCARINA, &D_801333D4, 4, &sRelativeNoteDisplayedBend,
                                       &sRelativeNoteDisplayedVolume, &D_801333E8);
            } else {
                Audio_StopSfxById(NA_SE_OC_OCARINA);
            }
        }
        sDisplayedNotePos++;
    }
}

void AudioOcarina_SetRecordingSong(u8 isRecordingComplete) {
    u16 i;
    u16 i2;
    u16 pad;
    u8 nodeIdx;
    OcarinaNote* note;
    u8 j;
    u8 k;
    s32 t;
    OcarinaNote* recordedSong;

    if (sRecordingState == OCARINA_RECORD_SCARECROW_LONG) {
        recordedSong = gScarecrowLongSongPtr;
    } else {
        /**
         * OCARINA_RECORD_SCARECROW_SPAWN
         *
         * The notes for scarecrows spawn song are first recorded into the ocarina memory
         * game address to act as a buffer. That way, if a new scarecrow spawn song is
         * rejected, the previous scarecrow spawn song is not overwritten. If the scarecrow
         * spawn song is accepted, then the notes are then copied over to the scarecrow spawn
         * song address
         */
        recordedSong = sMemoryGameSongPtr;
    }

    recordedSong[sRecordSongPos].noteIdx = sRecordOcarinaNoteIdx;
    recordedSong[sRecordSongPos].length = sOcarinaUpdateTaskStart - sOcarinaRecordTaskStart;
    recordedSong[sRecordSongPos].volume = sRecordOcarinaVolume;
    recordedSong[sRecordSongPos].vibrato = sRecordOcarinaVibrato;
    recordedSong[sRecordSongPos].bend = sRecordOcarinaBendIdx;
    recordedSong[sRecordSongPos].BFlat4Flag = sRecordOcarinaButtonIdx & 0xC0;

    sRecordOcarinaNoteIdx = sCurOcarinaNoteIdx;
    sRecordOcarinaVolume = sCurOcarinaVolume;
    sRecordOcarinaVibrato = sCurOcarinaVibrato;
    sRecordOcarinaBendIdx = sCurOcarinaBendIdx;
    sRecordOcarinaButtonIdx = sCurOcarinaButtonIdx;

    sRecordSongPos++;

    if ((sRecordSongPos != (ARRAY_COUNT(sScarecrowsLongSongNotes) - 1)) && !isRecordingComplete) {
        // Continue recording
        return;
    }

    // Recording is complete

    i = sRecordSongPos;
    nodeIdx = NOTE_NONE;
    while (i != 0 && nodeIdx == NOTE_NONE) {
        i--;
        nodeIdx = recordedSong[i].noteIdx;
    }

    if (1) {}

    if (sRecordSongPos != (i + 1)) {
        sRecordSongPos = i + 2;
        recordedSong[sRecordSongPos - 1].length = 0;
    }

    recordedSong[sRecordSongPos].length = 0;

    if (sRecordingState == OCARINA_RECORD_SCARECROW_SPAWN) {
        if (sStaffOcarinaPlayingPos >= 8) {
            for (i = 0; i < sRecordSongPos; i++) {
                recordedSong[i] = recordedSong[i + 1];
            }

            // Copies Notes from buffer into scarecrows spawn buttons to be tested for acceptance or rejection
            AudioOcarina_MapNotesToScarecrowButtons(OCARINA_SONG_MEMORY_GAME);

            // Loop through each of the songs
            for (i = 0; i < OCARINA_SONG_SCARECROW_SPAWN; i++) {
                // Loops through all possible starting indices
                for (j = 0; j < 9 - gOcarinaSongButtons[i].numButtons; j++) {
                    // Loops through the notes of song i
                    for (k = 0; k < gOcarinaSongButtons[i].numButtons && k + j < 8 &&
                                gOcarinaSongButtons[i].buttonIdx[k] ==
                                    gOcarinaSongButtons[OCARINA_SONG_SCARECROW_SPAWN].buttonIdx[k + j];
                         k++) {
                        ;
                    }

                    // This conditional is true if the recorded song contains a reserved song
                    if (k == gOcarinaSongButtons[i].numButtons) {
                        sRecordingState = OCARINA_RECORD_REJECTED;
                        sOcarinaSongNotes[OCARINA_SONG_SCARECROW_SPAWN][1].volume = 0xFF;
                        return;
                    }
                }
            }

            // Counts how many times a note is repeated
            i = 1;
            while (i < 8) {
                if (gOcarinaSongButtons[OCARINA_SONG_SCARECROW_SPAWN].buttonIdx[0] !=
                    gOcarinaSongButtons[OCARINA_SONG_SCARECROW_SPAWN].buttonIdx[i]) {
                    i = 9; // break
                } else {
                    i++;
                }
            }

            // This condition is true if all 8 notes are the same pitch
            if (i == 8) {
                sRecordingState = OCARINA_RECORD_REJECTED;
                sOcarinaSongNotes[OCARINA_SONG_SCARECROW_SPAWN][1].volume = 0xFF;
                return;
            }

            // The scarecrow spawn song is accepted and copied from the buffer to the scarecrow spawn notes
            for (i = 0; i < sRecordSongPos; i++) {
                sOcarinaSongNotes[OCARINA_SONG_SCARECROW_SPAWN][i] = sOcarinaSongNotes[OCARINA_SONG_MEMORY_GAME][i];
            }

            sIsOcarinaInputEnabled = false;
        } else {
            sOcarinaSongNotes[OCARINA_SONG_SCARECROW_SPAWN][1].volume = 0xFF;
        }
    }

    sRecordingState = OCARINA_RECORD_OFF;
}

/**
 * recordingState = 0, end
 * recordingState = 1, start long scarecrows song
 * recordingState = 2, start spawn scarecrows song
 */
void AudioOcarina_SetRecordingState(u8 recordingState) {
    if ((u32)recordingState == sRecordingState) {
        return;
    }

    if (recordingState != OCARINA_RECORD_OFF) {
        sOcarinaRecordTaskStart = sOcarinaUpdateTaskStart;
        sRecordOcarinaNoteIdx = NOTE_NONE;
        sRecordOcarinaVolume = 0x57;
        sRecordOcarinaVibrato = 0;
        sRecordOcarinaBendIdx = 0;
        sRecordOcarinaButtonIdx = 0;
        sRecordSongPos = 0;
        sIsOcarinaInputEnabled = true;
        sStaffOcarinaPlayingPos = 0;
        sScarecrowsLongSongSecondNote = sScarecrowsLongSongNotes[1];
    } else {
        if (sRecordSongPos == 0) {
            sScarecrowsLongSongNotes[1] = sScarecrowsLongSongSecondNote;
        } else {
            if (sRecordingState == OCARINA_RECORD_SCARECROW_SPAWN) {
                sStaffOcarinaPlayingPos = 1;
            }

            AudioOcarina_SetRecordingSong(true);
        }

        sIsOcarinaInputEnabled = false;
        sStaffOcarinaPlayingPos = 0;
    }

    sRecordingState = recordingState;
}

void AudioOcarina_UpdateRecordingStaff(void) {
    sRecordingStaff.state = sRecordingState;
    sRecordingStaff.pos = sStaffOcarinaPlayingPos;
    if (sRecordingState == OCARINA_RECORD_REJECTED) {
        sRecordingState = OCARINA_RECORD_OFF;
    }
}

void AudioOcarina_UpdatePlayingStaff(void) {
    sPlayingStaff.buttonIdx = sCurOcarinaButtonIdx & 0x3F;
    sPlayingStaff.state = AudioOcarina_GetPlayingState();
    sPlayingStaff.pos = sStaffOcarinaPlayingPos;
}

void AudioOcarina_UpdateDisplayedStaff(void) {
    if ((sDisplayedNoteValue & 0x3F) <= NOTE_EFLAT5) {
        sDisplayedStaff.buttonIdx = AudioOcarina_MapNoteToButton(sDisplayedNoteValue);
    }

    sDisplayedStaff.state = sDisplayedState;

    if (sDisplayedSong != sScarecrowsLongSongNotes) {
        sDisplayedStaff.pos = sDisplayedStaffPos;
    } else if (sDisplayedStaffPos == 0) {
        sDisplayedStaff.pos = 0;
    } else {
        sDisplayedStaff.pos = ((sDisplayedStaffPos - 1) % 8) + 1;
    }
}

OcarinaStaff* AudioOcarina_GetRecordingStaff(void) {
    return &sRecordingStaff;
}

OcarinaStaff* AudioOcarina_GetPlayingStaff(void) {
    if (sPlayingStaff.state < 0xFE) {
        sOcarinaFlags = 0;
    }

    return &sPlayingStaff;
}

OcarinaStaff* AudioOcarina_GetDisplayedStaff(void) {
    return &sDisplayedStaff;
}

void AudioOcarina_RecordSong(void) {
    s32 noteChanged;

    if ((sRecordingState != OCARINA_RECORD_OFF) && ((sOcarinaUpdateTaskStart - sOcarinaRecordTaskStart) >= 3)) {
        noteChanged = false;
        if (sRecordOcarinaNoteIdx != sCurOcarinaNoteIdx) {
            if (sCurOcarinaNoteIdx != NOTE_NONE) {
                sRecordingStaff.buttonIdx = sCurOcarinaButtonIdx & 0x3F;
                sStaffOcarinaPlayingPos++;
            } else if ((sRecordingState == OCARINA_RECORD_SCARECROW_SPAWN) && (sStaffOcarinaPlayingPos == 8)) {
                AudioOcarina_SetRecordingSong(true);
                return;
            }

            if (sStaffOcarinaPlayingPos > 8) {
                if (sRecordingState == OCARINA_RECORD_SCARECROW_SPAWN) {
                    // notes played are over 8 and in recording mode.
                    AudioOcarina_SetRecordingSong(true);
                    return;
                }
                sStaffOcarinaPlayingPos = true;
            }

            noteChanged = true;
        } else if (sRecordOcarinaVolume != sCurOcarinaVolume) {
            noteChanged = true;
        } else if (sRecordOcarinaVibrato != sCurOcarinaVibrato) {
            noteChanged = true;
        } else if (sRecordOcarinaBendIdx != sCurOcarinaBendIdx) {
            noteChanged = true;
        }

        if (noteChanged) {
            AudioOcarina_SetRecordingSong(false);
            sOcarinaRecordTaskStart = sOcarinaUpdateTaskStart;
        }
    }
}

void AudioOcarina_MemoryGameSetNumNotes(u8 minigameRound) {
    u8 i;

    if (minigameRound > 2) {
        minigameRound = 2;
    }

    sOcaMemoryGameAppendPos = 0;
    sOcaMemoryGameEndPos = sOcaMemoryGameNumNotes[minigameRound];

    for (i = 0; i < 3; i++) {
        AudioOcarina_MemoryGameGenerateNotes();
    }
}

s32 AudioOcarina_MemoryGameGenerateNotes(void) {
    u32 rndButtonIdx;
    u8 rndNoteIdx;

    if (sOcaMemoryGameAppendPos == sOcaMemoryGameEndPos) {
        return true;
    }

    rndButtonIdx = Audio_NextRandom();
    rndNoteIdx = sButtonToNoteMap[rndButtonIdx % 5];

    if (sOcarinaSongNotes[OCARINA_SONG_MEMORY_GAME][sOcaMemoryGameAppendPos - 1].noteIdx == rndNoteIdx) {
        rndNoteIdx = sButtonToNoteMap[(rndButtonIdx + 1) % 5];
    }

    sOcarinaSongNotes[OCARINA_SONG_MEMORY_GAME][sOcaMemoryGameAppendPos].noteIdx = rndNoteIdx;
    sOcarinaSongNotes[OCARINA_SONG_MEMORY_GAME][sOcaMemoryGameAppendPos].length = 45;
    sOcarinaSongNotes[OCARINA_SONG_MEMORY_GAME][sOcaMemoryGameAppendPos].volume = 0x50;
    sOcarinaSongNotes[OCARINA_SONG_MEMORY_GAME][sOcaMemoryGameAppendPos].vibrato = 0;
    sOcarinaSongNotes[OCARINA_SONG_MEMORY_GAME][sOcaMemoryGameAppendPos].bend = 0;

    sOcaMemoryGameAppendPos++;

    sOcarinaSongNotes[OCARINA_SONG_MEMORY_GAME][sOcaMemoryGameAppendPos].noteIdx = NOTE_NONE;
    sOcarinaSongNotes[OCARINA_SONG_MEMORY_GAME][sOcaMemoryGameAppendPos].length = 0;
    sOcarinaSongNotes[OCARINA_SONG_MEMORY_GAME][sOcaMemoryGameAppendPos + 1].noteIdx = NOTE_NONE;
    sOcarinaSongNotes[OCARINA_SONG_MEMORY_GAME][sOcaMemoryGameAppendPos + 1].length = 0;
    if (1) {}
    return false;
}

void AudioOcarina_Update(void) {
    sOcarinaUpdateTaskStart = gAudioContext.totalTaskCount;
    if (sOcarinaInstrumentId != OCARINA_INSTRUMENT_OFF) {
        if (sIsOcarinaInputEnabled == true) {
            AudioOcarina_ReadControllerInput();
        }

        if ((sDisplayedState == 0) && (sIsOcarinaInputEnabled == true)) {
            AudioOcarina_PlayControllerInput(false);
        }

        if (sOcarinaFlags != 0) {
            if (sOcarinaFlags & 0x4000) {
                AudioOcarina_CheckSongsWithoutMusicStaff();
            } else {
                AudioOcarina_CheckSongsWithMusicStaff();
            }
        }

        AudioOcarina_PlayDisplayedSong();
        sOcarinaDisplayedTaskStart = sOcarinaUpdateTaskStart;

        if (sDisplayedState == 0) {
            AudioOcarina_RecordSong();
        }

        if ((sOcarinaFlags != 0) && (sPrevOcarinaNoteIdx != sCurOcarinaNoteIdx)) {
            sIsOcarinaNoteChanged = true; // Adds a 1 frame delay to ocarina input
        }

        sPrevOcarinaNoteIdx = sCurOcarinaNoteIdx;
    }

    AudioOcarina_UpdatePlayingStaff();
    AudioOcarina_UpdateDisplayedStaff();
    AudioOcarina_UpdateRecordingStaff();
}

void AudioOcarina_PlayLongScarecrowAfterCredits(void) {
    static u8 sScarecrowAfterCreditsState = 0;
    static u8 sScarecrowAfterCreditsFont = OCARINA_INSTRUMENT_DEFAULT;
    static u16 sScarecrowAfterCreditsTimer = 1200;

    switch (sScarecrowAfterCreditsState) {
        case 0:
            if (sScarecrowAfterCreditsTimer-- == 0) {
                if (sScarecrowAfterCreditsFont < OCARINA_INSTRUMENT_MAX) {
                    // set next ocarina instrument and restart
                    sScarecrowAfterCreditsState++;
                } else {
                    // finished
                    sScarecrowAfterCreditsState = 3;
                    AudioOcarina_Reset(OCARINA_INSTRUMENT_OFF);
                }
                sScarecrowAfterCreditsTimer = 1200;
            }
            break;
        case 1:
            Audio_SetSoundBanksMute(0);
            AudioOcarina_Reset(sScarecrowAfterCreditsFont);
            AudioOcarina_SetDisplayedSong(OCARINA_SONG_SCARECROW_LONG + 1, 1);
            sScarecrowAfterCreditsFont++;
            sScarecrowAfterCreditsState++;
            break;
        case 2:
            if (AudioOcarina_GetDisplayedStaff()->state == 0) {
                sScarecrowAfterCreditsState = 0;
            }
            break;
    }
}

void AudioOcarina_ResetStaff(void) {
    sPlayingStaff.buttonIdx = OCARINA_BTN_INVALID;
    sPlayingStaff.state = 0xFF;
    sPlayingStaff.pos = 0;
    sDisplayedStaff.buttonIdx = OCARINA_BTN_INVALID;
    sDisplayedStaff.state = 0;
    sDisplayedStaff.pos = 0;
    sRecordingStaff.buttonIdx = OCARINA_BTN_INVALID;
    sRecordingStaff.state = OCARINA_RECORD_REJECTED;
    sRecordingStaff.pos = 0;
    sIsOcarinaNoteChanged = false;
}

f32 D_80131C8C = 0.0f;

// =========== Audio Debugging ===========

extern u16 gAudioSfxSwapSource[];
extern u16 gAudioSfxSwapTarget[];
extern u8 gAudioSfxSwapMode[];
extern u8 gAudioSfxSwapOff;
extern u8 D_801333F0;

/**
 * Audio Debug Bss
 */

u32 sDebugPadHold;
u32 sDebugPadBtnLast;
u32 sDebugPadPress;
s32 sAudioUpdateTaskStart;
s32 sAudioUpdateTaskEnd;

/**
 * Audio Debug Data
 */

f32 sAudioUpdateDuration = 0.0f;
f32 sAudioUpdateDurationMax = 0.0f;
u8 sAudioDebugEverOpened = 0;
u8 sAudioSfxMuted = 0;
u8 sAudioDebugPage = 0;
u8 sAudioSndContSel = 0;
u8 sAudioDebugTextColor = 7;
char sAudioDebugPageNames[15][23] = {
    "Non",
    "Sound Control",
    "Spec Info",
    "Heap Info",
    "Grp Track Info",
    "Sub Track Info",
    "Channel Info",
    "Interface Info",
    "SE Flag Swap",
    "Block Change BGM",
    "Natural Sound Control",
    "Ocarina Test",
    "SE Parameter Change",
    "Scroll Print",
    "Free Area",
};
u16 sAudioSndContWork[11] = { 0 };
u16 sAudioSndContWorkLims[11] = { 128, 128, 7, 512, 4, 2, 16, 32, 2, 2, 2 };
char sSoundBankNames[7][11] = { "PLAYER", "ITEM", "ENVIROMENT", "ENEMY", "SYSTEM", "OCARINA", "VOICE" };
char sSoundModeNames[5][10] = { "W-STEREO", "HEADPHONE", "3D SOUND", "MONO", "" };
s8 sAudioIntInfoX = 0;
s8 sAudioIntInfoY = 0;
s8 sAudioIntInfoSel = 0;
s8 sAudioIntInfoBankPage[7] = { 0, 0, 2, 2, 0, 0, 0 };
u8 sAudioScrPrtSel = 0;
u8 sAudioScrPrtInd = 0;
u8 sAudioScrPrtOverflow = 0;
s8 sAudioScrPrtX = 26;
s8 sAudioScrPrtY = 1;
u8 sAudioScrPrtWork[11] = { 1, 19, 6, 0, 0, 0, 0, 0, 0, 0, 1 };
u8 sAudioScrPrtWorkLims[11] = { 2, SCROLL_PRINT_BUF_SIZE, 8, 2, 2, 2, 2, 2, 2, 2, 2 };
u8 sAudioSubTrackInfoSpec = 0;
u8 sAudioSfxSwapIsEditing = 0;
u8 sAudioSfxSwapSel = 0;
u8 sAudioSfxSwapNibbleSel = 0;
char sAudioSfxSwapModeNames[2][5] = { "SWAP", "ADD" };
u8 sAudioSfxParamChgSel = 0;
u8 sAudioSfxParamChgBitSel = 0;
u16 sAudioSfxParamChgWork[4] = { 0 };
u8 sAudioSubTrackInfoPlayerSel = 0;
u8 sAudioSubTrackInfoChannelSel = 0;
u8 sSeqPlayerPeakNumLayers[20] = { 0 };
char sAudioSceneNames[3][2] = { "A", "S", "X" };
u8 sAudioBlkChgBgmWork[2] = { 0 };
u8 sAudioBlkChgBgmSel = 0;
char sBoolStrs[3][5] = { "OFF", "ON", "STBY" };
u8 sAudioNatureFailed = 0;
u8 sPeakNumNotes = 0;

/**
 * Audio Debug Functions
 */

void AudioDebug_SetInput(void) {
    Input inputs[4];
    u32 btn;

    PadMgr_RequestPadData(&gPadMgr, inputs, 0);
    btn = inputs[3].cur.button;
    sDebugPadHold = btn & 0xFFFF;
    sDebugPadPress = (btn ^ sDebugPadBtnLast) & btn;
    sDebugPadBtnLast = btn;
}

char* AudioDebug_ToStringBinary(u32 num, u8 bits) {
    u8 i;
    u32 flg = 1;

    for (i = 0; i < bits; flg *= 2, i++) {
        if (num & flg) {
            sBinToStrBuf[bits - i - 1] = '1';
        } else {
            sBinToStrBuf[bits - i - 1] = '0';
        }
    }

    sBinToStrBuf[bits] = '\0';
    return sBinToStrBuf;
}

void AudioDebug_Draw(GfxPrint* printer) {
    s32 pad[3];
    u8 i;
    u8 j;
    u8 ctr;
    u8 ctr2;
    s8 k;
    s8 k2;
    s8 ind;
    u8 numEnabledNotes = 0;
    char digitStr[2] = "1";

#define SETCOL_COMMON(v, r, g, b) \
    GfxPrint_SetColor(printer, ((v & 4) >> 2) * (r), ((v & 2) >> 1) * (g), (v & 1) * (b), 255)
#define SETCOL(r, g, b) SETCOL_COMMON(sAudioDebugTextColor, r, g, b)
#define SETCOL_SCROLLPRINT(r, g, b) SETCOL_COMMON(sAudioScrPrtWork[2], r, g, b)

    sAudioDebugEverOpened = true;
    GfxPrint_SetPos(printer, 3, 2);
    SETCOL(255, 255, 255);
    GfxPrint_Printf(printer, "Audio Debug Mode");

    GfxPrint_SetPos(printer, 3, 3);
    GfxPrint_Printf(printer, "- %s -", sAudioDebugPageNames[sAudioDebugPage]);

    for (i = 0; i < gAudioSpecs[gAudioSpecId].numNotes; i++) {
        if (gAudioContext.notes[i].noteSubEu.bitField0.enabled == 1) {
            numEnabledNotes++;
        }
    }

    if (sPeakNumNotes < numEnabledNotes) {
        sPeakNumNotes = numEnabledNotes;
    }
    if (sAudioSpecPeakNumNotes[gAudioSpecId] < numEnabledNotes) {
        sAudioSpecPeakNumNotes[gAudioSpecId] = numEnabledNotes;
    }

    if (sAudioScrPrtWork[0] != 0) {
        GfxPrint_SetPos(printer, sAudioScrPrtX, sAudioScrPrtY);
        SETCOL_SCROLLPRINT(200, 200, 200);
        GfxPrint_Printf(printer, "Audio ScrPrt");

        ind = sAudioScrPrtInd;
        for (k = 0; k < sAudioScrPrtWork[1] + 1; k++) {
            if (ind == 0) {
                if (sAudioScrPrtOverflow == 1) {
                    ind = SCROLL_PRINT_BUF_SIZE - 1;
                } else {
                    k = sAudioScrPrtWork[1] + 1; // "break;"
                }
            } else {
                ind--;
            }
            if (k != sAudioScrPrtWork[1] + 1) {
                if ((ind % 5) != 0) {
                    SETCOL_SCROLLPRINT(180, 180, 180);
                } else {
                    SETCOL_SCROLLPRINT(120, 120, 120);
                }
                GfxPrint_SetPos(printer, 2 + sAudioScrPrtX, sAudioScrPrtY + sAudioScrPrtWork[1] + 1 - k);
                GfxPrint_Printf(printer, "%s", sAudioScrPrtBuf[ind].str);

                GfxPrint_SetPos(printer, 7 + sAudioScrPrtX, sAudioScrPrtY + sAudioScrPrtWork[1] + 1 - k);
                GfxPrint_Printf(printer, "%04X", sAudioScrPrtBuf[ind].num);
            }
        }
    }

    switch (sAudioDebugPage) {
        case PAGE_NON:
            GfxPrint_SetPos(printer, 3, 4);
            SETCOL(255, 64, 64);
            GfxPrint_Printf(printer, "BGM CANCEL:%s", sBoolStrs[sAudioSndContWork[5]]);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "SE MUTE:%s", sBoolStrs[sAudioSfxMuted]);

            GfxPrint_SetPos(printer, 18, 4);
            SETCOL(255, 255, 255);
            GfxPrint_Printf(printer, "PUSH CONT-4 A-BTN");

            ind = (s8)sAudioSndContWork[2];
            i = gSoundBanks[ind][0].next;
            j = 0;
            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(printer, "SE HANDLE:%s", sSoundBankNames[ind]);

            while (i != 0xFF) {
                GfxPrint_SetPos(printer, 3, 7 + j++);
                GfxPrint_Printf(printer, "%02x %04x %02x %08x", i, gSoundBanks[ind][i].sfxId, gSoundBanks[ind][i].state,
                                gSoundBanks[ind][i].priority);
                i = gSoundBanks[ind][i].next;
            }
            break;

        case PAGE_SOUND_CONTROL:
            GfxPrint_SetPos(printer, 2, 4 + sAudioSndContSel);
            SETCOL(127, 255, 127);
            GfxPrint_Printf(printer, "*");

            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 4);
            GfxPrint_Printf(printer, "Seq 0  : %2x", sAudioSndContWork[0]);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "Seq 1  : %2x", sAudioSndContWork[1]);

            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(printer, "SE HD  : %2x %s", sAudioSndContWork[2], sSoundBankNames[sAudioSndContWork[2]]);

            GfxPrint_SetPos(printer, 3, 7);
            GfxPrint_Printf(printer, "SE No. :%3x", sAudioSndContWork[3]);

            GfxPrint_SetPos(printer, 3, 8);
            GfxPrint_Printf(printer, "S-Out  : %2x %s", sAudioSndContWork[4], sSoundModeNames[sAudioSndContWork[4]]);

            GfxPrint_SetPos(printer, 3, 9);
            GfxPrint_Printf(printer, "BGM Ent: %2x", sAudioSndContWork[5]);

            GfxPrint_SetPos(printer, 3, 10);
            GfxPrint_Printf(printer, "Spec   : %2x", sAudioSndContWork[6]);

            GfxPrint_SetPos(printer, 3, 11);
            GfxPrint_Printf(printer, "Na Snd : %2x", sAudioSndContWork[7]);

            GfxPrint_SetPos(printer, 3, 12);
            GfxPrint_Printf(printer, "Cam Wt : %s", sBoolStrs[sAudioSndContWork[8]]);

            GfxPrint_SetPos(printer, 3, 13);
            GfxPrint_Printf(printer, "Lnk Wt : %s", sBoolStrs[sAudioSndContWork[9]]);

            GfxPrint_SetPos(printer, 3, 14);
            GfxPrint_Printf(printer, "SE Ent : %2x", sAudioSndContWork[10]);
            break;

        case PAGE_INTERFACE_INFO:
            ind = 0;
            for (k = 0; k < 7; k++) {
                if (k == sAudioIntInfoSel) {
                    SETCOL(255, 127, 127);
                } else {
                    SETCOL(255, 255, 255);
                }
                GfxPrint_SetPos(printer, 2 + sAudioIntInfoX, 4 + ind + sAudioIntInfoY);
                GfxPrint_Printf(printer, "%s <%d>", sSoundBankNames[k], sAudioIntInfoBankPage[k]);

                for (k2 = 0; k2 < gChannelsPerBank[gSfxChannelLayout][k]; k2++) {
#define entryIndex (gActiveSounds[k][k2].entryIndex)
#define entry (&gSoundBanks[k][entryIndex])
#define chan (gAudioContext.seqPlayers[2].channels[entry->channelIdx])
                    GfxPrint_SetPos(printer, 2 + sAudioIntInfoX, 5 + ind + sAudioIntInfoY);
                    if (sAudioIntInfoBankPage[k] == 1) {
                        if ((entryIndex != 0xFF) &&
                            ((entry->state == SFX_STATE_PLAYING_1) || (entry->state == SFX_STATE_PLAYING_2))) {
                            GfxPrint_Printf(printer, "%2X %5d %5d %5d %02X %04X %04X", entryIndex, (s32)*entry->posX,
                                            (s32)*entry->posY, (s32)*entry->posZ, entry->sfxImportance,
                                            entry->sfxParams, entry->sfxId);
                        } else {
                            GfxPrint_Printf(printer, "FF ----- ----- ----- -- ---- ----");
                        }
                    } else if (sAudioIntInfoBankPage[k] == 2) {
                        if ((entryIndex != 0xFF) &&
                            ((entry->state == SFX_STATE_PLAYING_1) || (entry->state == SFX_STATE_PLAYING_2))) {
                            GfxPrint_Printf(printer, "%2X %5d %5d %5d %3d %3d %04X", entryIndex, (s32)*entry->posX,
                                            (s32)*entry->posY, (s32)*entry->posZ, (s32)(chan->volume * 127.1f),
                                            chan->newPan, entry->sfxId);
                        } else {
                            GfxPrint_Printf(printer, "FF ----- ----- ----- --- --- ----");
                        }
                    } else if (sAudioIntInfoBankPage[k] == 3) {
                        if ((entryIndex != 0xFF) &&
                            ((entry->state == SFX_STATE_PLAYING_1) || (entry->state == SFX_STATE_PLAYING_2))) {
                            GfxPrint_Printf(printer, "%2X %5d %5d %5d %3d %3d %04X", entryIndex, (s32)*entry->posX,
                                            (s32)*entry->posY, (s32)*entry->posZ, (s32)(chan->freqScale * 100.0f),
                                            chan->reverb, entry->sfxId);
                        } else {
                            GfxPrint_Printf(printer, "FF ----- ----- ----- --- --- ----");
                        }
                    } else if (sAudioIntInfoBankPage[k] == 4) {
                        if ((entryIndex != 0xFF) &&
                            ((entry->state == SFX_STATE_PLAYING_1) || (entry->state == SFX_STATE_PLAYING_2))) {
                            GfxPrint_Printf(printer, "%2X %04X", entryIndex, entry->sfxId);
                        } else {
                            GfxPrint_Printf(printer, "FF ----");
                        }
                    }
#undef entryIndex
#undef entry
#undef chan

                    if (sAudioIntInfoBankPage[k] != 0) {
                        ind++;
                    }
                }
                ind++;
            }
            break;

        case PAGE_SCROLL_PRINT:
            GfxPrint_SetPos(printer, 2, 4 + sAudioScrPrtSel);
            SETCOL(255, 255, 255);
            GfxPrint_Printf(printer, "*");

            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 4);
            GfxPrint_Printf(printer, "Swicth  : %d", sAudioScrPrtWork[0]);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "Lines   : %d", sAudioScrPrtWork[1] + 1);

            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(printer, "Color   : %d", sAudioScrPrtWork[2]);

            GfxPrint_SetPos(printer, 3, 7);
            GfxPrint_Printf(printer, "%s  : %d", sSoundBankNames[0], sAudioScrPrtWork[3]);

            GfxPrint_SetPos(printer, 3, 8);
            GfxPrint_Printf(printer, "%s    : %d", sSoundBankNames[1], sAudioScrPrtWork[4]);

            GfxPrint_SetPos(printer, 3, 9);
            GfxPrint_Printf(printer, "ENVRONM : %d", sAudioScrPrtWork[5]);

            GfxPrint_SetPos(printer, 3, 10);
            GfxPrint_Printf(printer, "%s   : %d", sSoundBankNames[3], sAudioScrPrtWork[6]);

            GfxPrint_SetPos(printer, 3, 11);
            GfxPrint_Printf(printer, "%s  : %d", sSoundBankNames[4], sAudioScrPrtWork[7]);

            GfxPrint_SetPos(printer, 3, 12);
            GfxPrint_Printf(printer, "%s : %d", sSoundBankNames[5], sAudioScrPrtWork[8]);

            GfxPrint_SetPos(printer, 3, 13);
            GfxPrint_Printf(printer, "%s    : %d", sSoundBankNames[6], sAudioScrPrtWork[9]);

            GfxPrint_SetPos(printer, 3, 14);
            GfxPrint_Printf(printer, "SEQ ENT : %d", sAudioScrPrtWork[10]);
            break;

        case PAGE_SFX_SWAP:
            GfxPrint_SetPos(printer, 3, 4);
            SETCOL(255, 255, 255);
            if (gAudioSfxSwapOff) {
                GfxPrint_Printf(printer, "SWAP OFF");
            }

            if (sAudioSfxSwapIsEditing == 0) {
                SETCOL(255, 255, 255);
            } else {
                SETCOL(127, 127, 127);
            }
            GfxPrint_SetPos(printer, 2, 6 + sAudioSfxSwapSel);
            GfxPrint_Printf(printer, "*");

            ctr = sAudioSfxSwapNibbleSel;
            if (sAudioSfxSwapNibbleSel >= 4) {
                ctr++;
            }
            if (sAudioSfxSwapIsEditing == 1) {
                SETCOL(255, 255, 255);
                GfxPrint_SetPos(printer, 3 + ctr, 5);
                GfxPrint_Printf(printer, "V");
            }

            for (i = 0; i < 10; i++) {
                if (i == sAudioSfxSwapSel) {
                    if (sAudioSfxSwapIsEditing == 0) {
                        SETCOL(192, 192, 192);
                    } else {
                        SETCOL(255, 255, 255);
                    }
                } else if (sAudioSfxSwapIsEditing == 0) {
                    SETCOL(144, 144, 144);
                } else {
                    SETCOL(96, 96, 96);
                }
                GfxPrint_SetPos(printer, 3, 6 + i);
                GfxPrint_Printf(printer, "%04x %04x %s", gAudioSfxSwapSource[i], gAudioSfxSwapTarget[i],
                                sAudioSfxSwapModeNames[gAudioSfxSwapMode[i]]);
            }
            break;

        case PAGE_SUB_TRACK_INFO:
            GfxPrint_SetPos(printer, 3, 4);
            SETCOL(255, 255, 255);
            GfxPrint_Printf(printer, "Group Track:%d", sAudioSubTrackInfoPlayerSel);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "Sub Track  :%d", sAudioSubTrackInfoChannelSel);

            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(printer, "TRK NO. ");

            GfxPrint_SetPos(printer, 3, 7);
            GfxPrint_Printf(printer, "ENTRY   ");

            GfxPrint_SetPos(printer, 3, 8);
            GfxPrint_Printf(printer, "MUTE    ");

            GfxPrint_SetPos(printer, 3, 9);
            GfxPrint_Printf(printer, "OPENNOTE");

            ctr2 = 0;
            for (i = 0; i < 16; i++) {
                if (i == sAudioSubTrackInfoChannelSel) {
                    SETCOL(255, 255, 255);
                } else {
                    SETCOL(200, 200, 200);
                }
                GfxPrint_SetPos(printer, 15 + i, 6);
                GfxPrint_Printf(printer, "%1X", i);

                GfxPrint_SetPos(printer, 15 + i, 7);
                if (gAudioContext.seqPlayers[sAudioSubTrackInfoPlayerSel].channels[i]->enabled) {
                    GfxPrint_Printf(printer, "O");
                } else {
                    GfxPrint_Printf(printer, "X");
                }

                GfxPrint_SetPos(printer, 15 + i, 8);
                if (gAudioContext.seqPlayers[sAudioSubTrackInfoPlayerSel].channels[i]->stopSomething2) {
                    GfxPrint_Printf(printer, "O");
                } else {
                    GfxPrint_Printf(printer, "X");
                }

                GfxPrint_SetPos(printer, 15 + i, 9);
                ctr = 0;
                for (j = 0; j < 4; j++) {
                    if (gAudioContext.seqPlayers[sAudioSubTrackInfoPlayerSel].channels[i]->layers[j] != NULL) {
                        ctr++;
                    }
                }

                GfxPrint_Printf(printer, "%1X", ctr);
                ctr2 += ctr;
            }

            SETCOL(255, 255, 255);
            if (sSeqPlayerPeakNumLayers[sAudioSubTrackInfoPlayerSel] < ctr2) {
                sSeqPlayerPeakNumLayers[sAudioSubTrackInfoPlayerSel] = ctr2;
            }
            GfxPrint_SetPos(printer, 16 + i, 9);
            GfxPrint_Printf(printer, "%2d,%2d", ctr2, sSeqPlayerPeakNumLayers[sAudioSubTrackInfoPlayerSel]);

            GfxPrint_SetPos(printer, 3, 11);
            GfxPrint_Printf(printer, "VOL     ");

            GfxPrint_SetPos(printer, 3, 12);
            GfxPrint_Printf(printer, "E VOL   ");

            GfxPrint_SetPos(printer, 3, 13);
            GfxPrint_Printf(printer, "BANK ID ");

            GfxPrint_SetPos(printer, 3, 14);
            GfxPrint_Printf(printer, "PROG    ");

            GfxPrint_SetPos(printer, 3, 15);
            GfxPrint_Printf(printer, "PAN    ");

            GfxPrint_SetPos(printer, 3, 16);
            GfxPrint_Printf(printer, "PANPOW  ");

            GfxPrint_SetPos(printer, 3, 17);
            GfxPrint_Printf(printer, "FXMIX   ");

            GfxPrint_SetPos(printer, 3, 18);
            GfxPrint_Printf(printer, "PRIO    ");

            GfxPrint_SetPos(printer, 3, 19);
            GfxPrint_Printf(printer, "VIB PIT ");

            GfxPrint_SetPos(printer, 3, 20);
            GfxPrint_Printf(printer, "VIB DEP ");

            GfxPrint_SetPos(printer, 3, 21);
            GfxPrint_Printf(printer, "TUNE    ");

            GfxPrint_SetPos(printer, 3, 22);
            GfxPrint_Printf(printer, "TUNE    ");

            for (i = 0; i < 8; i++) {
                GfxPrint_SetPos(printer, 15 + 3 * i, 22);
                GfxPrint_Printf(printer, "%02X ",
                                (u8)gAudioContext.seqPlayers[sAudioSubTrackInfoPlayerSel]
                                    .channels[sAudioSubTrackInfoChannelSel]
                                    ->soundScriptIO[i]);
            }

            if (gAudioContext.seqPlayers[sAudioSubTrackInfoPlayerSel].channels[sAudioSubTrackInfoChannelSel]->enabled) {
                GfxPrint_SetPos(printer, 15, 11);
                GfxPrint_Printf(printer, "%d",
                                (u8)(gAudioContext.seqPlayers[sAudioSubTrackInfoPlayerSel]
                                         .channels[sAudioSubTrackInfoChannelSel]
                                         ->volume *
                                     127.1));

                GfxPrint_SetPos(printer, 15, 12);
                GfxPrint_Printf(printer, "%d",
                                (u8)(gAudioContext.seqPlayers[sAudioSubTrackInfoPlayerSel]
                                         .channels[sAudioSubTrackInfoChannelSel]
                                         ->volumeScale *
                                     127.1));

                GfxPrint_SetPos(printer, 15, 13);
                GfxPrint_Printf(printer, "%X",
                                gAudioContext.seqPlayers[sAudioSubTrackInfoPlayerSel]
                                    .channels[sAudioSubTrackInfoChannelSel]
                                    ->fontId);

                ctr = (u8)(gAudioContext.seqPlayers[sAudioSubTrackInfoPlayerSel]
                               .channels[sAudioSubTrackInfoChannelSel]
                               ->instOrWave);

                if (ctr == 0) {
                    ctr2 = 0x7F;
                } else if (ctr < 0x80) {
                    ctr2 = ctr - 1;
                } else {
                    ctr2 = ctr;
                }

                GfxPrint_SetPos(printer, 15, 14);
                GfxPrint_Printf(printer, "%d", ctr2);

                GfxPrint_SetPos(printer, 15, 15);
                GfxPrint_Printf(printer, "%d",
                                gAudioContext.seqPlayers[sAudioSubTrackInfoPlayerSel]
                                    .channels[sAudioSubTrackInfoChannelSel]
                                    ->newPan);

                GfxPrint_SetPos(printer, 15, 16);
                GfxPrint_Printf(printer, "%d",
                                gAudioContext.seqPlayers[sAudioSubTrackInfoPlayerSel]
                                    .channels[sAudioSubTrackInfoChannelSel]
                                    ->panChannelWeight);

                GfxPrint_SetPos(printer, 15, 17);
                GfxPrint_Printf(printer, "%d",
                                gAudioContext.seqPlayers[sAudioSubTrackInfoPlayerSel]
                                    .channels[sAudioSubTrackInfoChannelSel]
                                    ->reverb);

                GfxPrint_SetPos(printer, 15, 18);
                GfxPrint_Printf(printer, "%d",
                                gAudioContext.seqPlayers[sAudioSubTrackInfoPlayerSel]
                                    .channels[sAudioSubTrackInfoChannelSel]
                                    ->notePriority);

                GfxPrint_SetPos(printer, 15, 19);
                GfxPrint_Printf(printer, "%d",
                                (u8)(gAudioContext.seqPlayers[sAudioSubTrackInfoPlayerSel]
                                         .channels[sAudioSubTrackInfoChannelSel]
                                         ->vibratoRateTarget /
                                     32));

                GfxPrint_SetPos(printer, 15, 20);
                GfxPrint_Printf(printer, "%d",
                                (u8)(gAudioContext.seqPlayers[sAudioSubTrackInfoPlayerSel]
                                         .channels[sAudioSubTrackInfoChannelSel]
                                         ->vibratoExtentTarget /
                                     8));

                GfxPrint_SetPos(printer, 15, 21);
                GfxPrint_Printf(printer, "%d",
                                (u16)(gAudioContext.seqPlayers[sAudioSubTrackInfoPlayerSel]
                                          .channels[sAudioSubTrackInfoChannelSel]
                                          ->freqScale *
                                      100));
            }
            break;

        case PAGE_HEAP_INFO:
            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 4);
            GfxPrint_Printf(printer, "TOTAL  %d", D_8014A6C4.heapSize);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "DRIVER %05X / %05X",
                            gAudioContext.notesAndBuffersPool.cur - gAudioContext.notesAndBuffersPool.start,
                            gAudioContext.notesAndBuffersPool.size);

            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(
                printer, "AT-SEQ %02X-%02X (%05X-%05X / %05X)", (u8)gAudioContext.seqCache.temporary.entries[0].id,
                (u8)gAudioContext.seqCache.temporary.entries[1].id, gAudioContext.seqCache.temporary.entries[0].size,
                gAudioContext.seqCache.temporary.entries[1].size, gAudioContext.seqCache.temporary.pool.size);

            GfxPrint_SetPos(printer, 3, 7);
            GfxPrint_Printf(
                printer, "AT-BNK %02X-%02X (%05X-%05X / %05X)", (u8)gAudioContext.fontCache.temporary.entries[0].id,
                (u8)gAudioContext.fontCache.temporary.entries[1].id, gAudioContext.fontCache.temporary.entries[0].size,
                gAudioContext.fontCache.temporary.entries[1].size, gAudioContext.fontCache.temporary.pool.size);

            GfxPrint_SetPos(printer, 3, 8);
            GfxPrint_Printf(printer, "ST-SEQ %02Xseqs  (%05X / %06X)", gAudioContext.seqCache.persistent.numEntries,
                            gAudioContext.seqCache.persistent.pool.cur - gAudioContext.seqCache.persistent.pool.start,
                            gAudioContext.seqCache.persistent.pool.size);

            for (k = 0; (u32)k < gAudioContext.seqCache.persistent.numEntries; k++) {
                GfxPrint_SetPos(printer, 3 + 3 * k, 9);
                GfxPrint_Printf(printer, "%02x", gAudioContext.seqCache.persistent.entries[k].id);
            }

            GfxPrint_SetPos(printer, 3, 10);
            GfxPrint_Printf(printer, "ST-BNK %02Xbanks (%05X / %06X)", gAudioContext.fontCache.persistent.numEntries,
                            gAudioContext.fontCache.persistent.pool.cur - gAudioContext.fontCache.persistent.pool.start,
                            gAudioContext.fontCache.persistent.pool.size);

            for (k = 0; (u32)k < gAudioContext.fontCache.persistent.numEntries; k++) {
                GfxPrint_SetPos(printer, 3 + 3 * k, 11);
                GfxPrint_Printf(printer, "%02x", gAudioContext.fontCache.persistent.entries[k].id);
            }

            GfxPrint_SetPos(printer, 3, 12);
            GfxPrint_Printf(printer, "E-MEM  %05X / %05X",
                            gAudioContext.permanentPool.cur - gAudioContext.permanentPool.start,
                            gAudioContext.permanentPool.size);
            break;

        case PAGE_BLOCK_CHANGE_BGM:
            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 4);
            GfxPrint_Printf(printer, "BGM No.    %02X", sAudioBlkChgBgmWork[0]);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "SCENE SET  %02X %s", sAudioBlkChgBgmWork[1],
                            sAudioSceneNames[sAudioBlkChgBgmWork[1]]);

            SETCOL(0x64, 255, 0x64);
            GfxPrint_SetPos(printer, 2, 4 + sAudioBlkChgBgmSel);
            GfxPrint_Printf(printer, "*");

            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 7);
            GfxPrint_Printf(printer, "NEXT SCENE %02X %s", (u8)gAudioContext.seqPlayers[0].soundScriptIO[2],
                            sAudioSceneNames[(u8)gAudioContext.seqPlayers[0].soundScriptIO[2]]);

            GfxPrint_SetPos(printer, 3, 8);
            GfxPrint_Printf(printer, "NOW SCENE  %02X %s", (u8)gAudioContext.seqPlayers[0].soundScriptIO[4],
                            sAudioSceneNames[(u8)gAudioContext.seqPlayers[0].soundScriptIO[4]]);

            GfxPrint_SetPos(printer, 3, 9);
            GfxPrint_Printf(printer, "NOW BLOCK  %02X", (gAudioContext.seqPlayers[0].soundScriptIO[5] + 1) & 0xFF);

            GfxPrint_SetPos(printer, 3, 11);
            GfxPrint_Printf(printer, "PORT");

            GfxPrint_SetPos(printer, 3, 12);
            GfxPrint_Printf(printer, "%02X %02X %02X %02X", (u8)gAudioContext.seqPlayers[0].soundScriptIO[0],
                            (u8)gAudioContext.seqPlayers[0].soundScriptIO[1],
                            (u8)gAudioContext.seqPlayers[0].soundScriptIO[2],
                            (u8)gAudioContext.seqPlayers[0].soundScriptIO[3]);

            GfxPrint_SetPos(printer, 3, 13);
            GfxPrint_Printf(printer, "%02X %02X %02X %02X", (u8)gAudioContext.seqPlayers[0].soundScriptIO[4],
                            (u8)gAudioContext.seqPlayers[0].soundScriptIO[5],
                            (u8)gAudioContext.seqPlayers[0].soundScriptIO[6],
                            (u8)gAudioContext.seqPlayers[0].soundScriptIO[7]);
            break;

        case PAGE_OCARINA_TEST:
            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 4);
            GfxPrint_Printf(printer, "SEQ INFO  : %2d %02x %d", sDisplayedStaff.buttonIdx, sDisplayedStaff.state,
                            sDisplayedStaff.pos);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "PLAY INFO : %2d %02x %d", sPlayingStaff.buttonIdx, sPlayingStaff.state,
                            sPlayingStaff.pos);

            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(printer, "8note REC POINTER : %08x", gScarecrowSpawnSongPtr);

            ctr = 0;
            for (j = 0; j < 4; j++) {
                for (i = 0; i < 8; i++) {
                    GfxPrint_SetPos(printer, 3 + 3 * i, 7 + j);
                    GfxPrint_Printf(printer, "%02x", gScarecrowSpawnSongPtr[ctr++]);
                }
            }

            GfxPrint_SetPos(printer, 3, 24);
            GfxPrint_Printf(printer, "OCA:%02x SEQ:%04x PLAY:%02x REC:%02x", sOcarinaInstrumentId, sOcarinaFlags,
                            sDisplayedState, sRecordingState);
            break;

        case PAGE_SFX_PARAMETER_CHANGE:
            GfxPrint_SetPos(printer, 2, 4 + sAudioSfxParamChgSel);
            SETCOL(127, 255, 127);
            GfxPrint_Printf(printer, "*");

            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 4);
            GfxPrint_Printf(printer, "SE HD  : %02x %s", sAudioSfxParamChgWork[0],
                            sSoundBankNames[sAudioSfxParamChgWork[0]]);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "SE No. : %02x", sAudioSfxParamChgWork[1]);

            GfxPrint_SetPos(printer, 20, 6);
            GfxPrint_Printf(printer, "       : %04x",
                            gSoundParams[sAudioSfxParamChgWork[0]][sAudioSfxParamChgWork[1]].params);

            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(
                printer, "SE SW    %s",
                AudioDebug_ToStringBinary(gSoundParams[sAudioSfxParamChgWork[0]][sAudioSfxParamChgWork[1]].params, 16));

            SETCOL(127, 255, 127);
            digitStr[0] = (char)('0' + ((gSoundParams[sAudioSfxParamChgWork[0]][sAudioSfxParamChgWork[1]].params >>
                                         (15 - sAudioSfxParamChgBitSel)) &
                                        1));
            GfxPrint_SetPos(printer, 12 + sAudioSfxParamChgBitSel, 6);
            GfxPrint_Printf(printer, "%s", digitStr);

            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 7);
            GfxPrint_Printf(printer, "SE PR  : %02x",
                            gSoundParams[sAudioSfxParamChgWork[0]][sAudioSfxParamChgWork[1]].importance);
            break;

        case PAGE_FREE_AREA:
            GfxPrint_SetPos(printer, 3, 4);
            SETCOL(255, 255, 255);
            GfxPrint_Printf(printer, "env_fx %d code_fx %d SPEC %d", sAudioEnvReverb, sAudioCodeReverb, gAudioSpecId);

            if (sAudioUpdateTaskStart == sAudioUpdateTaskEnd) {
                sAudioUpdateDuration = OS_CYCLES_TO_NSEC(sAudioUpdateEndTime - sAudioUpdateStartTime) / (1e9f / 20);
                if (sAudioUpdateDurationMax < sAudioUpdateDuration) {
                    sAudioUpdateDurationMax = sAudioUpdateDuration;
                }
            }

            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(printer, "SOUND GAME FRAME NOW %f", sAudioUpdateDuration);

            GfxPrint_SetPos(printer, 3, 7);
            GfxPrint_Printf(printer, "SOUND GAME FRAME MAX %f", sAudioUpdateDurationMax);

            GfxPrint_SetPos(printer, 3, 9);
            GfxPrint_Printf(printer, "SWITCH BGM MODE %d %d %d (FLAG %d)", D_8013061C, D_80130634, D_80130638,
                            D_80130654);

            GfxPrint_SetPos(printer, 3, 10);
            GfxPrint_Printf(printer, "ENEMY DIST %f VOL %3d", sAudioEnemyDist, sAudioEnemyVol);

            GfxPrint_SetPos(printer, 3, 11);
            GfxPrint_Printf(printer, "GANON DIST VOL %3d", sAudioGanonDistVol);

            GfxPrint_SetPos(printer, 3, 12);
            GfxPrint_Printf(printer, "DEMO FLAG %d", sAudioCutsceneFlag);

            GfxPrint_SetPos(printer, 3, 12);
            if (sAudioHasMalonBgm == true) {
                GfxPrint_Printf(printer, "MARON BGM DIST %f", sAudioMalonBgmDist);
                sAudioHasMalonBgm = false;
            }

            GfxPrint_SetPos(printer, 3, 23);
            if (sAudioNatureFailed != 0) {
                GfxPrint_Printf(printer, "NATURE FAILED %01x", sAudioNatureFailed);
            }

            GfxPrint_SetPos(printer, 3, 24);
            if (sSariaBgmPtr != 0) {
                GfxPrint_Printf(printer, "SARIA BGM PTR %08x", sSariaBgmPtr);
            }

            GfxPrint_SetPos(printer, 3, 25);
            GfxPrint_Printf(printer, "POLI %d(%d)", sPeakNumNotes, numEnabledNotes);

            for (i = 0; i < 11; i++) {
                GfxPrint_SetPos(printer, 3 + 3 * i, 26);
                GfxPrint_Printf(printer, "%d", sAudioSpecPeakNumNotes[i]);
            }
            break;
    }
#undef SETCOL_COMMON
#undef SETCOL
#undef SETCOL_SCROLLPRINT
}

void AudioDebug_ProcessInput_SndCont(void) {
    u16 step = 1;

    if (CHECK_BTN_ANY(sDebugPadHold, BTN_CDOWN)) {
        if (sAudioSndContWorkLims[sAudioSndContSel] >= 16) {
            step = 16;
        }
    } else if (CHECK_BTN_ANY(sDebugPadHold, BTN_CLEFT)) {
        if (sAudioSndContWorkLims[sAudioSndContSel] >= 16) {
            step = 8;
        }
    } else if (CHECK_BTN_ANY(sDebugPadHold, BTN_CUP)) {
        sAudioSndContWork[sAudioSndContSel] = 0;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DUP)) {
        if (sAudioSndContSel > 0) {
            sAudioSndContSel--;
        } else {
            sAudioSndContSel = 10;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DDOWN)) {
        if (sAudioSndContSel < 10) {
            sAudioSndContSel++;
        } else {
            sAudioSndContSel = 0;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DLEFT)) {
        if (sAudioSndContWork[sAudioSndContSel] >= step) {
            if (1) {
                sAudioSndContWork[sAudioSndContSel] -= step;
            }
        } else {
            sAudioSndContWork[sAudioSndContSel] += sAudioSndContWorkLims[sAudioSndContSel] - step;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DRIGHT)) {
        if (sAudioSndContWork[sAudioSndContSel] + step < sAudioSndContWorkLims[sAudioSndContSel]) {
            sAudioSndContWork[sAudioSndContSel] += step;
        } else {
            sAudioSndContWork[sAudioSndContSel] += step - sAudioSndContWorkLims[sAudioSndContSel];
        }
    }

    if (sAudioSndContSel == 8) {
        if (sAudioSndContWork[sAudioSndContSel] != 0) {
            Audio_SetExtraFilter(0x20);
        } else {
            Audio_SetExtraFilter(0);
        }
    }

    if (sAudioSndContSel == 9) {
        if (sAudioSndContWork[sAudioSndContSel] != 0) {
            Audio_SetBaseFilter(0x20);
        } else {
            Audio_SetBaseFilter(0);
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_A)) {
        switch (sAudioSndContSel) {
            case 0:
            case 1:
                Audio_StartSeq(sAudioSndContSel, 0, sAudioSndContWork[sAudioSndContSel]);
                break;
            case 2:
            case 3:
                Audio_PlaySoundGeneral(((sAudioSndContWork[2] << 12) & 0xFFFF) + sAudioSndContWork[3] + SFX_FLAG,
                                       &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                break;
            case 4:
                func_800F6700(sAudioSndContWork[sAudioSndContSel]);
                break;
            case 5:
                Audio_SeqCmdE01(0, sAudioSndContWork[sAudioSndContSel]);
                break;
            case 6:
                Audio_SeqCmdF(0, sAudioSndContWork[sAudioSndContSel]);
                sAudioSubTrackInfoSpec = sAudioSndContWork[6];
                if (sAudioSubTrackInfoPlayerSel > gAudioSpecs[sAudioSubTrackInfoSpec].numSequencePlayers - 1) {
                    sAudioSubTrackInfoPlayerSel = gAudioSpecs[sAudioSubTrackInfoSpec].numSequencePlayers - 1;
                }
                break;
            case 7:
                func_800F6FB4(sAudioSndContWork[sAudioSndContSel]);
                break;
            case 8:
            case 9:
                break;
            case 10:
                Audio_SetSoundBanksMute(sAudioSndContWork[sAudioSndContSel] * 0x7F);
                break;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
        switch (sAudioSndContSel) {
            case 0:
            case 1:
                Audio_SeqCmd1(sAudioSndContSel, 0);
                break;
            case 7:
                Audio_SeqCmd1(0, 0);
                break;
            case 2:
            case 3:
                Audio_StopSfxByBank(sAudioSndContWork[2]);
                break;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CDOWN)) {
        if (sAudioSndContSel == 0) {
            if (1) {}
            func_800F595C(sAudioSndContWork[sAudioSndContSel]);
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CRIGHT)) {
        if (sAudioSndContSel == 0) {
            if (1) {}
            func_800F5ACC(sAudioSndContWork[sAudioSndContSel]);
        }
    }
}

void AudioDebug_ProcessInput_IntInfo(void) {
    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CUP)) {
        sAudioIntInfoY--;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CDOWN)) {
        sAudioIntInfoY++;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CLEFT)) {
        sAudioIntInfoX--;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CRIGHT)) {
        sAudioIntInfoX++;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
        sAudioIntInfoX = 0;
        sAudioIntInfoY = 0;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DUP) && sAudioIntInfoSel > 0) {
        sAudioIntInfoSel--;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DDOWN) && sAudioIntInfoSel < 6) {
        sAudioIntInfoSel++;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DLEFT) && sAudioIntInfoBankPage[sAudioIntInfoSel] > 0) {
        sAudioIntInfoBankPage[sAudioIntInfoSel]--;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DRIGHT) && sAudioIntInfoBankPage[sAudioIntInfoSel] < 4) {
        sAudioIntInfoBankPage[sAudioIntInfoSel]++;
    }
}

void AudioDebug_ProcessInput_ScrPrt(void) {
    if (sAudioScrPrtWork[0] != 0) {
        if (CHECK_BTN_ANY(sDebugPadPress, BTN_CUP)) {
            sAudioScrPrtY--;
        }
        if (CHECK_BTN_ANY(sDebugPadPress, BTN_CDOWN)) {
            sAudioScrPrtY++;
        }
        if (CHECK_BTN_ANY(sDebugPadPress, BTN_CLEFT)) {
            sAudioScrPrtX--;
        }
        if (CHECK_BTN_ANY(sDebugPadPress, BTN_CRIGHT)) {
            sAudioScrPrtX++;
        }
        if (CHECK_BTN_ANY(sDebugPadPress, BTN_A)) {
            sAudioScrPrtX = 26;
            sAudioScrPrtY = 1;
            sAudioScrPrtWork[2] = 6;
        }

        if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
            sAudioScrPrtInd = 0;
            sAudioScrPrtOverflow = 0;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DUP)) {
        if (sAudioScrPrtSel > 0) {
            sAudioScrPrtSel--;
        } else {
            sAudioScrPrtSel = 10;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DDOWN)) {
        if (sAudioScrPrtSel < 10) {
            sAudioScrPrtSel++;
        } else {
            sAudioScrPrtSel = 0;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DLEFT)) {
        if (sAudioScrPrtWork[sAudioScrPrtSel] > 0) {
            sAudioScrPrtWork[sAudioScrPrtSel]--;
        } else {
            sAudioScrPrtWork[sAudioScrPrtSel] = sAudioScrPrtWorkLims[sAudioScrPrtSel] - 1;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DRIGHT)) {
        if (sAudioScrPrtWork[sAudioScrPrtSel] < sAudioScrPrtWorkLims[sAudioScrPrtSel] - 1) {
            sAudioScrPrtWork[sAudioScrPrtSel]++;
        } else {
            sAudioScrPrtWork[sAudioScrPrtSel] = 0;
        }
    }

    D_801333F0 = sAudioScrPrtWork[3] + (sAudioScrPrtWork[4] * 2) + (sAudioScrPrtWork[5] * 4) +
                 (sAudioScrPrtWork[6] * 8) + (sAudioScrPrtWork[7] * 0x10) + (sAudioScrPrtWork[8] * 0x20);
}

void AudioDebug_ProcessInput_SfxSwap(void) {
    s16 step;
    u16 val;
    u8 prev;

    if (!sAudioSfxSwapIsEditing) {
        if (CHECK_BTN_ANY(sDebugPadPress, BTN_DUP)) {
            if (sAudioSfxSwapSel > 0) {
                sAudioSfxSwapSel--;
            } else {
                sAudioSfxSwapSel = 9;
            }
        }

        if (CHECK_BTN_ANY(sDebugPadPress, BTN_DDOWN)) {
            if (sAudioSfxSwapSel < 9) {
                sAudioSfxSwapSel++;
            } else {
                sAudioSfxSwapSel = 0;
            }
        }

        if (CHECK_BTN_ANY(sDebugPadPress, BTN_A)) {
            sAudioSfxSwapIsEditing = true;
        }

        if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
            gAudioSfxSwapSource[sAudioSfxSwapSel] = 0;
            gAudioSfxSwapTarget[sAudioSfxSwapSel] = 0;
        }

        if (CHECK_BTN_ANY(sDebugPadPress, BTN_START)) {
            if (sAudioSfxSwapSel != 0) {
                prev = sAudioSfxSwapSel - 1;
            } else {
                prev = 9;
            }
            gAudioSfxSwapSource[sAudioSfxSwapSel] = gAudioSfxSwapSource[prev];
            gAudioSfxSwapTarget[sAudioSfxSwapSel] = gAudioSfxSwapTarget[prev];
        }
    } else {
        if (CHECK_BTN_ANY(sDebugPadPress, BTN_DLEFT)) {
            if (sAudioSfxSwapNibbleSel > 0) {
                sAudioSfxSwapNibbleSel--;
            } else {
                sAudioSfxSwapNibbleSel = 7;
            }
        }
        if (CHECK_BTN_ANY(sDebugPadPress, BTN_DRIGHT)) {
            if (sAudioSfxSwapNibbleSel < 7) {
                sAudioSfxSwapNibbleSel++;
            } else {
                sAudioSfxSwapNibbleSel = 0;
            }
        }

        if (CHECK_BTN_ANY(sDebugPadPress, BTN_DUP) || CHECK_BTN_ANY(sDebugPadPress, BTN_DDOWN)) {
            if (CHECK_BTN_ANY(sDebugPadPress, BTN_DUP)) {
                step = CHECK_BTN_ANY(sDebugPadHold, BTN_CUP) ? 8 : 1;
            }

            if (CHECK_BTN_ANY(sDebugPadPress, BTN_DDOWN)) {
                step = CHECK_BTN_ANY(sDebugPadHold, BTN_CUP) ? -8 : -1;
            }

            if (sAudioSfxSwapNibbleSel < 4) {
                val = gAudioSfxSwapSource[sAudioSfxSwapSel] >> ((3 - sAudioSfxSwapNibbleSel) * 4);
                val = (val + step) & 0xF;
                gAudioSfxSwapSource[sAudioSfxSwapSel] =
                    (gAudioSfxSwapSource[sAudioSfxSwapSel] & ((0xF << ((3 - sAudioSfxSwapNibbleSel) * 4)) ^ 0xFFFF)) +
                    (val << ((3 - sAudioSfxSwapNibbleSel) * 4));
            } else {
                val = gAudioSfxSwapTarget[sAudioSfxSwapSel] >> ((7 - sAudioSfxSwapNibbleSel) * 4);
                val = (val + step) & 0xF;
                gAudioSfxSwapTarget[sAudioSfxSwapSel] =
                    (gAudioSfxSwapTarget[sAudioSfxSwapSel] & ((0xF << ((7 - sAudioSfxSwapNibbleSel) * 4)) ^ 0xFFFF)) +
                    (val << ((7 - sAudioSfxSwapNibbleSel) * 4));
            }
        }

        if (CHECK_BTN_ANY(sDebugPadPress, BTN_A)) {
            sAudioSfxSwapIsEditing = false;
        }

        if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
            if (sAudioSfxSwapNibbleSel < 4) {
                gAudioSfxSwapSource[sAudioSfxSwapSel] = 0;
            } else {
                gAudioSfxSwapTarget[sAudioSfxSwapSel] = 0;
            }
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CLEFT)) {
        gAudioSfxSwapOff ^= 1;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CDOWN)) {
        gAudioSfxSwapMode[sAudioSfxSwapSel] ^= 1;
    }
}

void AudioDebug_ProcessInput_SubTrackInfo(void) {
    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DDOWN)) {
        if (sAudioSubTrackInfoPlayerSel != 0) {
            sAudioSubTrackInfoPlayerSel--;
        } else {
            sAudioSubTrackInfoPlayerSel = gAudioSpecs[sAudioSubTrackInfoSpec].numSequencePlayers - 1;
        }
    }
    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DUP)) {
        if (sAudioSubTrackInfoPlayerSel < gAudioSpecs[sAudioSubTrackInfoSpec].numSequencePlayers - 1) {
            sAudioSubTrackInfoPlayerSel++;
        } else {
            sAudioSubTrackInfoPlayerSel = 0;
        }
    }
    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DLEFT)) {
        sAudioSubTrackInfoChannelSel = (sAudioSubTrackInfoChannelSel - 1) & 0xF;
    }
    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DRIGHT)) {
        sAudioSubTrackInfoChannelSel = (sAudioSubTrackInfoChannelSel + 1) & 0xF;
    }
    if (CHECK_BTN_ANY(sDebugPadPress, BTN_START)) {
        sSeqPlayerPeakNumLayers[sAudioSubTrackInfoPlayerSel] = 0;
    }
}

void AudioDebug_ProcessInput_HeapInfo(void) {
}

void AudioDebug_ProcessInput_BlkChgBgm(void) {
    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DUP)) {
        if (sAudioBlkChgBgmSel > 0) {
            sAudioBlkChgBgmSel--;
        } else {
            sAudioBlkChgBgmSel = 1;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DDOWN)) {
        if (sAudioBlkChgBgmSel <= 0) {
            sAudioBlkChgBgmSel++;
        } else {
            sAudioBlkChgBgmSel = 0;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DLEFT)) {
        sAudioBlkChgBgmWork[sAudioBlkChgBgmSel]--;
        if (sAudioBlkChgBgmSel == 1) {
            func_800F5E90(sAudioBlkChgBgmWork[1]);
            ; // might be a fake match?
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DRIGHT)) {
        sAudioBlkChgBgmWork[sAudioBlkChgBgmSel]++;
        if (sAudioBlkChgBgmSel == 1) {
            func_800F5E90(sAudioBlkChgBgmWork[1]);
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_A)) {
        Audio_QueueCmdS8(MK_CMD(0x46, 0x00, 0x00, 0x00), sAudioBlkChgBgmWork[1]);
        Audio_QueueSeqCmd(sAudioBlkChgBgmWork[0] | 0x10000);
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
        Audio_QueueSeqCmd(0x100100FF);
    }
}

void AudioDebug_ProcessInput_OcaTest(void) {
}

void AudioDebug_ProcessInput_SfxParamChg(void) {
    s32 step;
    u16 sfx;

    if (CHECK_BTN_ANY(sDebugPadHold, BTN_CLEFT)) {
        step = 8;
    } else {
        step = 1;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DUP)) {
        if (sAudioSfxParamChgSel > 0) {
            sAudioSfxParamChgSel--;
        } else {
            sAudioSfxParamChgSel = 3;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DDOWN)) {
        if (sAudioSfxParamChgSel < 3) {
            sAudioSfxParamChgSel++;
        } else {
            sAudioSfxParamChgSel = 0;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DLEFT)) {
        if (sAudioSfxParamChgSel < 2) {
            if (sAudioSfxParamChgSel == 0) {
                if (sAudioSfxParamChgWork[sAudioSfxParamChgSel] > 0) {
                    sAudioSfxParamChgWork[sAudioSfxParamChgSel]--;
                } else {
                    sAudioSfxParamChgWork[sAudioSfxParamChgSel] = sAudioSndContWorkLims[2] - 1;
                }
            } else {
                sAudioSfxParamChgWork[sAudioSfxParamChgSel] -= step;
                sAudioSfxParamChgWork[sAudioSfxParamChgSel] &= 0x1FF;
            }
        } else if (sAudioSfxParamChgSel == 3) {
            gSoundParams[sAudioSfxParamChgWork[0]][sAudioSfxParamChgWork[1]].importance -= step;
        } else {
            sAudioSfxParamChgBitSel = (sAudioSfxParamChgBitSel - 1) & 0xF;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DRIGHT)) {
        if (sAudioSfxParamChgSel < 2) {
            if (sAudioSfxParamChgSel == 0) {
                if (sAudioSfxParamChgWork[sAudioSfxParamChgSel] < (sAudioSndContWorkLims[2] - 1)) {
                    sAudioSfxParamChgWork[sAudioSfxParamChgSel]++;
                } else {
                    sAudioSfxParamChgWork[sAudioSfxParamChgSel] = 0;
                }
            } else {
                sAudioSfxParamChgWork[sAudioSfxParamChgSel] += step;
                sAudioSfxParamChgWork[sAudioSfxParamChgSel] &= 0x1FF;
            }
        } else if (sAudioSfxParamChgSel == 3) {
            gSoundParams[sAudioSfxParamChgWork[0]][sAudioSfxParamChgWork[1]].importance += step;
        } else {
            sAudioSfxParamChgBitSel = (sAudioSfxParamChgBitSel + 1) & 0xF;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_A)) {
        sfx = (u16)(sAudioSfxParamChgWork[0] << 12) + sAudioSfxParamChgWork[1] + SFX_FLAG;
        Audio_PlaySoundGeneral(sfx, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
        Audio_StopSfxByBank(sAudioSfxParamChgWork[0]);
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CDOWN)) {
        if (sAudioSfxParamChgSel == 2) {
            gSoundParams[sAudioSfxParamChgWork[0]][sAudioSfxParamChgWork[1]].params ^=
                (1 << (0xF - sAudioSfxParamChgBitSel));
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CUP)) {
        if (sAudioSfxParamChgSel < 2) {
            sAudioSfxParamChgWork[sAudioSfxParamChgSel] = 0;
        }
    }
}

void AudioDebug_ScrPrt(const s8* str, u16 num) {
    u8 i = 0;

    sAudioScrPrtBuf[sAudioScrPrtInd].num = num;

    while (str[i] != 0) {
        sAudioScrPrtBuf[sAudioScrPrtInd].str[i] = str[i];
        i++;
    }

    while (i < 5) {
        sAudioScrPrtBuf[sAudioScrPrtInd].str[i] = 0;
        i++;
    }

    if (sAudioScrPrtInd < 25 - 1) {
        sAudioScrPrtInd++;
    } else {
        sAudioScrPrtInd = 0;
        sAudioScrPrtOverflow = 1;
    }
}

void AudioDebug_ProcessInput(void) {
    if (!sAudioDebugEverOpened) {
        return;
    }

    if (sAudioSfxMuted) {
        Audio_SetSoundBanksMute(0x6F);
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_L)) {
        if (sAudioDebugPage < PAGE_MAX - 1) {
            sAudioDebugPage++;
        } else {
            sAudioDebugPage = 0;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_R)) {
        if (sAudioDebugPage > 0) {
            sAudioDebugPage--;
        } else {
            sAudioDebugPage = PAGE_MAX - 1;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_Z)) {
        sAudioDebugTextColor++;
        sAudioDebugTextColor &= 7;
    }

    switch (sAudioDebugPage) {
        case PAGE_NON:
            if (CHECK_BTN_ANY(sDebugPadPress, BTN_A)) {
                sAudioSndContWork[5] ^= 1;
                Audio_SeqCmdE01(0, sAudioSndContWork[5]);
                if (func_800FA0B4(0) != NA_BGM_NATURE_BACKGROUND) {
                    Audio_SeqCmd1(0, 0);
                }
                Audio_SeqCmd1(1, 0);
                Audio_SeqCmd1(3, 0);
            }

            if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
                sAudioSfxMuted ^= 1;
                if (!sAudioSfxMuted) {
                    Audio_SetSoundBanksMute(0);
                }
            }
            break;
        case PAGE_SOUND_CONTROL:
            AudioDebug_ProcessInput_SndCont();
            break;
        case PAGE_INTERFACE_INFO:
            AudioDebug_ProcessInput_IntInfo();
            break;
        case PAGE_SCROLL_PRINT:
            AudioDebug_ProcessInput_ScrPrt();
            break;
        case PAGE_SFX_SWAP:
            AudioDebug_ProcessInput_SfxSwap();
            break;
        case PAGE_SUB_TRACK_INFO:
            AudioDebug_ProcessInput_SubTrackInfo();
            break;
        case PAGE_HEAP_INFO:
            AudioDebug_ProcessInput_HeapInfo();
            break;
        case PAGE_BLOCK_CHANGE_BGM:
            AudioDebug_ProcessInput_BlkChgBgm();
            break;
        case PAGE_OCARINA_TEST:
            AudioDebug_ProcessInput_OcaTest();
            break;
        case PAGE_SFX_PARAMETER_CHANGE:
            AudioDebug_ProcessInput_SfxParamChg();
            break;
        case PAGE_FREE_AREA:
        default:
            break;
    }

    D_8013340C = sAudioScrPrtWork[10];
}

// =========== Audio Interface ===========

void func_800F4A70(void);
void func_800F5CF8(void);

void Audio_Update(void) {
    if (func_800FAD34() == 0) {
        sAudioUpdateTaskStart = gAudioContext.totalTaskCount;
        sAudioUpdateStartTime = osGetTime();
        AudioOcarina_Update();
        Audio_StepFreqLerp(&sRiverFreqScaleLerp);
        Audio_StepFreqLerp(&sWaterfallFreqScaleLerp);
        func_800F4A70();
        func_800F56A8();
        func_800F5CF8();
        if (gAudioSpecId == 7) {
            Audio_ClearSariaBgm();
        }
        Audio_ProcessSoundRequests();
        Audio_ProcessSeqCmds();
        func_800F8F88();
        func_800FA3DC();
        AudioDebug_SetInput();
        AudioDebug_ProcessInput();
        Audio_ScheduleProcessCmds();
        sAudioUpdateTaskEnd = gAudioContext.totalTaskCount;
        sAudioUpdateEndTime = osGetTime();
    }
}

void func_800F3138(UNK_TYPE arg0) {
}

void func_800F3140(UNK_TYPE arg0, UNK_TYPE arg1) {
}

void func_800F314C(s8 arg0) {
    Audio_QueueCmdS32(0x82000000 | (((u8)arg0 & 0xFF) << 8), 1);
}

f32 Audio_ComputeSoundVolume(u8 bankId, u8 entryIdx) {
    SoundBankEntry* bankEntry = &gSoundBanks[bankId][entryIdx];
    f32 minDist;
    f32 baseDist;
    f32 ret;

    if (bankEntry->sfxParams & 0x2000) {
        return 1.0f;
    }

    if (bankEntry->dist > 10000.0f) {
        ret = 0.0f;
    } else {
        switch (bankEntry->sfxParams & 3) {
            case 1:
                baseDist = 10000.0f / 15.0f;
                break;
            case 2:
                baseDist = 10000.0f / 10.5f;
                break;
            case 3:
                baseDist = 10000.0f / 2.6f;
                break;
            default:
                baseDist = 10000.0f / 20.0f;
                break;
        }

        minDist = baseDist / 5.0f;

        // Volume grows as inverse square of distance. Linearly approximate
        // the inverse part, then square.
        if (bankEntry->dist < minDist) {
            ret = 1.0f;
        } else if (bankEntry->dist < baseDist) {
            ret = ((((baseDist - minDist) - (bankEntry->dist - minDist)) / (baseDist - minDist)) * 0.19f) + 0.81f;
        } else {
            ret = (1.0f - ((bankEntry->dist - baseDist) / (10000.0f - baseDist))) * 0.81f;
        }
        ret = SQ(ret);
    }

    return ret;
}

s8 Audio_ComputeSoundReverb(u8 bankId, u8 entryIdx, u8 channelIdx) {
    s8 distAdd = 0;
    s32 scriptAdd = 0;
    SoundBankEntry* entry = &gSoundBanks[bankId][entryIdx];
    s32 reverb;

    if (!(entry->sfxParams & 0x1000)) {
        if (entry->dist < 2500.0f) {
            distAdd = *entry->posZ > 0.0f ? (entry->dist / 2500.0f) * 70.0f : (entry->dist / 2500.0f) * 91.0f;
        } else {
            distAdd = 70;
        }
    }

    if (IS_SEQUENCE_CHANNEL_VALID(gAudioContext.seqPlayers[2].channels[channelIdx])) {
        scriptAdd = gAudioContext.seqPlayers[2].channels[channelIdx]->soundScriptIO[1];
        if (gAudioContext.seqPlayers[2].channels[channelIdx]->soundScriptIO[1] < 0) {
            scriptAdd = 0;
        }
    }

    reverb = *entry->reverbAdd + distAdd + scriptAdd;
    if ((bankId != BANK_OCARINA) || !((entry->sfxId & 0x1FF) < 2)) {
        reverb += sAudioEnvReverb + sAudioCodeReverb + sSpecReverb;
    }

    if (reverb > 0x7F) {
        reverb = 0x7F;
    }

    return reverb;
}

s8 Audio_ComputeSoundPanSigned(f32 x, f32 z, u8 token) {
    f32 absX;
    f32 absZ;
    f32 pan;

    if (x < 0) {
        absX = -x;
    } else {
        absX = x;
    }
    if (z < 0) {
        absZ = -z;
    } else {
        absZ = z;
    }

    if (absX > 8000.0f) {
        absX = 8000.0f;
    }

    if (absZ > 8000.0f) {
        absZ = 8000.0f;
    }

    if ((x == 0.0f) && (z == 0.0f)) {
        pan = 0.5f;
    } else if (absZ <= absX) {
        pan = (16000.0f - absX) / (3.3f * (16000.0f - absZ));
        if (x >= 0.0f) {
            pan = 1.0f - pan;
        }
    } else {
        pan = (x / (5.0769234f * absZ)) + 0.5f; // about 66 / 13
    }

    if (absZ < 50.0f) {
        if (absX < 50.0f) {
            pan = ((pan - 0.5f) * SQ(absX / 50.0f)) + 0.5f;
        }
    }
    return (s8)((pan * 127.0f) + 0.5f);
}

f32 Audio_ComputeSoundFreqScale(u8 bankId, u8 entryIdx) {
    s32 phi_v0 = 0;
    SoundBankEntry* entry = &gSoundBanks[bankId][entryIdx];
    f32 unk1C;
    f32 freq = 1.0f;

    if (entry->sfxParams & 0x4000) {
        freq = 1.0f - ((gAudioContext.audioRandom & 0xF) / 192.0f);
    }

    switch (bankId) {
        case BANK_PLAYER:
        case BANK_ITEM:
        case BANK_VOICE:
            if (sAudioBaseFilter2 != 0) {
                phi_v0 = 1;
            }
            break;
        case BANK_ENV:
        case BANK_ENEMY:
            if (sAudioExtraFilter2 != 0) {
                phi_v0 = 1;
            }
            break;
        case BANK_SYSTEM:
        case BANK_OCARINA:
            break;
    }

    if (phi_v0 == 1) {
        if (!(entry->sfxParams & 0x800)) {
            freq *= (1.0293 - ((gAudioContext.audioRandom & 0xF) / 144.0f));
        }
    }

    unk1C = entry->dist;
    if (!(entry->sfxParams & 0x2000)) {
        if (!(entry->sfxParams & 0x8000)) {
            if (unk1C >= 10000.0f) {
                freq += 0.2f;
            } else {
                freq += (0.2f * (unk1C / 10000.0f));
            }
        }
    }

    if (entry->sfxParams & 0xC0) {
        freq += (entry->unk_2F / 192.0f);
    }

    return freq;
}

u8 func_800F37B8(f32 behindScreenZ, SoundBankEntry* arg1, s8 arg2) {
    s8 phi_v0;
    u8 phi_v1;
    f32 phi_f0;
    f32 phi_f12;

    if (*arg1->posZ < behindScreenZ) {
        phi_v0 = arg2 < 65 ? arg2 : 0x7F - arg2;

        if (phi_v0 < 30) {
            phi_v1 = 0;
        } else {
            phi_v1 = (((phi_v0 & 0xFFFF) * 10) - 300) / 34;
            if (phi_v1 != 0) {
                phi_v1 = 0x10 - phi_v1;
            }
        }
    } else {
        phi_v1 = 0;
    }

    if (phi_v1 == 0) {
        if (arg1->sfxParams & 0x200) {
            phi_v1 = 0xF;
        }
    }

    switch (arg1->sfxParams & 3) {
        case 1:
            phi_f0 = 12.0f;
            break;
        case 2:
            phi_f0 = 9.0f;
            break;
        case 3:
            phi_f0 = 6.0f;
            break;
        default:
            phi_f0 = 15.0f;
            break;
    }

    phi_f12 = CLAMP_MAX(arg1->dist, 10000.0f / 5.2f);

    return (phi_v1 * 0x10) + (u8)((phi_f0 * phi_f12) / (10000.0f / 5.2f));
}

s8 func_800F3990(f32 arg0, u16 sfxParams) {
    s8 ret = 0;

    if (arg0 >= 0.0f) {
        if (arg0 > 625.0f) {
            ret = 127;
        } else {
            ret = (arg0 / 625.0f) * 126.0f;
        }
    }
    return ret | 1;
}

void Audio_SetSoundProperties(u8 bankId, u8 entryIdx, u8 channelIdx) {
    f32 vol = 1.0f;
    s8 volS8;
    s8 reverb = 0;
    f32 freqScale = 1.0f;
    s8 panSigned = 0x40;
    u8 stereoBits = 0;
    u8 filter = 0;
    s8 sp38 = 0;
    f32 behindScreenZ;
    u8 baseFilter = 0;
    SoundBankEntry* entry = &gSoundBanks[bankId][entryIdx];

    switch (bankId) {
        case BANK_PLAYER:
        case BANK_ITEM:
        case BANK_ENV:
        case BANK_ENEMY:
        case BANK_VOICE:
            if (D_80130604 == 2) {
                sp38 = func_800F3990(*entry->posY, entry->sfxParams);
            }
            // fallthrough
        case BANK_OCARINA:
            entry->dist = sqrtf(entry->dist);
            vol = Audio_ComputeSoundVolume(bankId, entryIdx) * *entry->vol;
            reverb = Audio_ComputeSoundReverb(bankId, entryIdx, channelIdx);
            panSigned = Audio_ComputeSoundPanSigned(*entry->posX, *entry->posZ, entry->token);
            freqScale = Audio_ComputeSoundFreqScale(bankId, entryIdx) * *entry->freqScale;
            if (D_80130604 == 2) {
                behindScreenZ = sBehindScreenZ[(entry->sfxParams & 0x400) >> 10];
                if (!(entry->sfxParams & 0x800)) {
                    if (*entry->posZ < behindScreenZ) {
                        stereoBits = 0x10;
                    }

                    if ((sSfxChannelState[channelIdx].stereoBits ^ stereoBits) & 0x10) {
                        if (panSigned < 0x40) {
                            stereoBits = sSfxChannelState[channelIdx].stereoBits ^ 0x14;
                        } else {
                            stereoBits = sSfxChannelState[channelIdx].stereoBits ^ 0x18;
                        }
                    } else {
                        stereoBits = sSfxChannelState[channelIdx].stereoBits;
                    }
                }
            }
            if (sAudioBaseFilter != 0) {
                if ((bankId == BANK_ITEM) || (bankId == BANK_PLAYER) || (bankId == BANK_VOICE)) {
                    baseFilter = sAudioBaseFilter;
                }
            }

            if ((baseFilter | sAudioExtraFilter) != 0) {
                filter = (baseFilter | sAudioExtraFilter);
            } else if (D_80130604 == 2 && (entry->sfxParams & 0x2000) == 0) {
                filter = func_800F37B8(behindScreenZ, entry, panSigned);
            }
            break;
        case BANK_SYSTEM:
            break;
    }

    if (sSfxChannelState[channelIdx].vol != vol) {
        volS8 = (u8)(vol * 127.0f);
        sSfxChannelState[channelIdx].vol = vol;
    } else {
        volS8 = -1;
    }

    // CHAN_UPD_SCRIPT_IO (slot 2, sets volume)
    Audio_QueueCmdS8(0x6020000 | (channelIdx << 8) | 2, volS8);
    if (reverb != sSfxChannelState[channelIdx].reverb) {
        Audio_QueueCmdS8(0x5020000 | (channelIdx << 8), reverb);
        sSfxChannelState[channelIdx].reverb = reverb;
    }
    if (freqScale != sSfxChannelState[channelIdx].freqScale) {
        Audio_QueueCmdF32(0x4020000 | (channelIdx << 8), freqScale);
        sSfxChannelState[channelIdx].freqScale = freqScale;
    }
    if (stereoBits != sSfxChannelState[channelIdx].stereoBits) {
        Audio_QueueCmdS8(0xE020000 | (channelIdx << 8), stereoBits | 0x10);
        sSfxChannelState[channelIdx].stereoBits = stereoBits;
    }
    if (filter != sSfxChannelState[channelIdx].filter) {
        // CHAN_UPD_SCRIPT_IO (slot 3, sets filter)
        Audio_QueueCmdS8(0x6020000 | (channelIdx << 8) | 3, filter);
        sSfxChannelState[channelIdx].filter = filter;
    }
    if (sp38 != sSfxChannelState[channelIdx].unk_0C) {
        // CHAN_UPD_UNK_0F
        Audio_QueueCmdS8(0xC020000 | (channelIdx << 8), 0x10);
        // CHAN_UPD_UNK_20
        Audio_QueueCmdU16(0xD020000 | (channelIdx << 8), ((u16)(sp38) << 8) + 0xFF);
        sSfxChannelState[channelIdx].unk_0C = sp38;
    }
    if (panSigned != sSfxChannelState[channelIdx].panSigned) {
        Audio_QueueCmdS8(0x3020000 | (channelIdx << 8), panSigned);
        sSfxChannelState[channelIdx].panSigned = panSigned;
    }
}

void Audio_ResetSfxChannelState(void) {
    u8 i;
    SfxPlayerState* state;

    for (i = 0; i < 16; i++) {
        state = &sSfxChannelState[i];
        state->vol = 1.0f;
        state->freqScale = 1.0f;
        state->reverb = 0;
        state->panSigned = 0x40;
        state->stereoBits = 0;
        state->filter = 0xFF;
        state->unk_0C = 0xFF;
    }

    sSfxChannelState[SFX_CHANNEL_OCARINA].unk_0C = 0;
    D_8013061C = 0;
    sAudioCodeReverb = 0;
}

void func_800F3F3C(u8 arg0) {
    if (gSoundBankMuted[0] != 1) {
        Audio_StartSeq(3, 0, NA_BGM_VARIOUS_SFX);
        Audio_SeqCmd8(3, 0, 0, arg0);
    }
}

f32 func_800F3F84(f32 arg0) {
    f32 ret = 1.0f;

    if (arg0 > 6.0f) {
        D_8016B7A8 = 1.0f;
        D_8016B7B0 = 1.1f;
    } else {
        ret = arg0 / 6.0f;
        D_8016B7A8 = (ret * 0.22500002f) + 0.775f;
        D_8016B7B0 = (ret * 0.2f) + 0.9f;
    }
    return ret;
}

void func_800F4010(Vec3f* pos, u16 sfxId, f32 arg2) {
    f32 sp24;
    f32 phi_f0;
    u8 phi_v0;
    u16 sfxId2;

    D_80131C8C = arg2;
    sp24 = func_800F3F84(arg2);
    Audio_PlaySoundGeneral(sfxId, pos, 4, &D_8016B7B0, &D_8016B7A8, &D_801333E8);

    if ((sfxId & 0xF0) == 0xB0) {
        phi_f0 = 0.3f;
        phi_v0 = 1;
        sp24 = 1.0f;
    } else {
        phi_f0 = 1.1f;
        phi_v0 = gAudioContext.audioRandom % 2;
    }

    if ((phi_f0 < arg2) && (phi_v0 != 0)) {
        if ((sfxId & 0x80) != 0) {
            sfxId2 = NA_SE_PL_METALEFFECT_ADULT;
        } else {
            sfxId2 = NA_SE_PL_METALEFFECT_KID;
        }
        D_8016B7AC = (sp24 * 0.7) + 0.3;
        Audio_PlaySoundGeneral(sfxId2, pos, 4, &D_8016B7B0, &D_8016B7AC, &D_801333E8);
    }
}

void func_800F4138(Vec3f* pos, u16 sfxId, f32 arg2) {
    func_800F3F84(arg2);
    Audio_PlaySoundGeneral(sfxId, pos, 4, &D_8016B7B0, &D_8016B7A8, &D_801333E8);
}

void func_800F4190(Vec3f* pos, u16 sfxId) {
    Audio_PlaySoundGeneral(sfxId, pos, 4, &D_801305B0, &D_801333E0, &D_801305B4);
}
void Audio_PlaySoundRandom(Vec3f* pos, u16 baseSfxId, u8 randLim) {
    u8 offset = Audio_NextRandom() % randLim;

    Audio_PlaySoundGeneral(baseSfxId + offset, pos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}

void func_800F4254(Vec3f* pos, u8 level) {
    level &= 3;
    if (level != sPrevChargeLevel) {
        D_801305F4 = D_801305E4[level];
        switch (level) {
            case 1:
                Audio_PlaySoundGeneral(NA_SE_PL_SWORD_CHARGE, pos, 4, &D_801305F4, &D_801333E0, &D_801333E8);
                break;
            case 2:
                Audio_PlaySoundGeneral(NA_SE_PL_SWORD_CHARGE, pos, 4, &D_801305F4, &D_801333E0, &D_801333E8);
                break;
        }

        sPrevChargeLevel = level;
    }

    if (level != 0) {
        Audio_PlaySoundGeneral(NA_SE_IT_SWORD_CHARGE - SFX_FLAG, pos, 4, &D_801305F4, &D_801333E0, &D_801333E8);
    }
}

void func_800F436C(Vec3f* pos, u16 sfxId, f32 arg2) {
    if (arg2 < 0.75f) {
        D_8016B7D8 = ((arg2 / 0.75f) * 0.25f) + 0.5f;
    } else {
        D_8016B7D8 = arg2;
    }

    if (D_8016B7D8 > 0.5f) {
        Audio_PlaySoundGeneral(sfxId, pos, 4, &D_8016B7D8, &D_801333E0, &D_801333E8);
    }
}

void func_800F4414(Vec3f* pos, u16 sfxId, f32 arg2) {
    D_801305B8--;
    if (D_801305B8 == 0) {
        Audio_PlaySoundGeneral(sfxId, pos, 4, &D_8016B7D8, &D_801333E0, &D_801333E8);

        if (arg2 > 2.0f) {
            arg2 = 2.0f;
        }
        D_801305B8 = (s8)((D_801305C0 - D_801305BC) * (1.0f - arg2)) + D_801305C0;
    }
}

void func_800F44EC(s8 arg0, s8 arg1) {
    D_801305B8 = 1;
    D_801305BC = arg1;
    D_801305C0 = arg0;
}

void func_800F4524(Vec3f* pos, u16 sfxId, s8 arg2) {
    D_8016B7DC = arg2;
    Audio_PlaySoundGeneral(sfxId, pos, 4, &D_801333E0, &D_801333E0, &D_8016B7DC);
}

void func_800F4578(Vec3f* pos, u16 sfxId, f32 arg2) {
    D_8016B7E0 = arg2;
    Audio_PlaySoundGeneral(sfxId, pos, 4, &D_801333E0, &D_8016B7E0, &D_801333E8);
}

void func_800F45D0(f32 arg0) {
    func_800F4414(&D_801333D4, NA_SE_IT_FISHING_REEL_SLOW - SFX_FLAG, arg0);
    func_800F436C(&D_801333D4, 0, (0.15f * arg0) + 1.4f);
}

void Audio_PlaySoundRiver(Vec3f* pos, f32 freqScale) {
    if (!Audio_IsSfxPlaying(NA_SE_EV_RIVER_STREAM - SFX_FLAG)) {
        sRiverFreqScaleLerp.value = freqScale;
    } else if (freqScale != sRiverFreqScaleLerp.value) {
        sRiverFreqScaleLerp.target = freqScale;
        sRiverFreqScaleLerp.remainingFrames = 40;
        sRiverFreqScaleLerp.step = (sRiverFreqScaleLerp.target - sRiverFreqScaleLerp.value) / 40;
    }
    Audio_PlaySoundGeneral(NA_SE_EV_RIVER_STREAM - SFX_FLAG, pos, 4, &sRiverFreqScaleLerp.value, &D_801333E0,
                           &D_801333E8);
}

void Audio_PlaySoundWaterfall(Vec3f* pos, f32 freqScale) {
    if (!Audio_IsSfxPlaying(NA_SE_EV_WATER_WALL_BIG - SFX_FLAG)) {
        sWaterfallFreqScaleLerp.value = freqScale;
    } else if (freqScale != sWaterfallFreqScaleLerp.value) {
        sWaterfallFreqScaleLerp.target = freqScale;
        sWaterfallFreqScaleLerp.remainingFrames = 40;
        sWaterfallFreqScaleLerp.step = (sWaterfallFreqScaleLerp.target - sWaterfallFreqScaleLerp.value) / 40;
    }
    Audio_PlaySoundGeneral(NA_SE_EV_WATER_WALL_BIG - SFX_FLAG, pos, 4, &sWaterfallFreqScaleLerp.value,
                           &sWaterfallFreqScaleLerp.value, &D_801333E8);
}

void Audio_StepFreqLerp(FreqLerp* lerp) {
    if (lerp->remainingFrames != 0) {
        lerp->remainingFrames--;
        if (lerp->remainingFrames != 0) {
            lerp->value += lerp->step;
        } else {
            lerp->value = lerp->target;
        }
    }
}

void func_800F47BC(void) {
    Audio_SetVolScale(0, 1, 0, 10);
    Audio_SetVolScale(3, 1, 0, 10);
}

void func_800F47FC(void) {
    Audio_SetVolScale(0, 1, 0x7F, 3);
    Audio_SetVolScale(3, 1, 0x7F, 3);
}

void func_800F483C(u8 targetVol, u8 volFadeTimer) {
    Audio_SetVolScale(0, 0, targetVol, volFadeTimer);
}

void func_800F4870(u8 arg0) {
    s8 pan;
    u8 i;

    pan = 0;
    if (arg0 == 0) {
        pan = 0x7F;
    }

    for (i = 0; i < 16; i++) {
        // CHAN_UPD_PAN_UNSIGNED
        Audio_QueueCmdS8(_SHIFTL(0x07, 24, 8) | _SHIFTL(0x00, 16, 8) | _SHIFTL(i, 8, 8) | _SHIFTL(0, 0, 8), pan);
    }

    if (arg0 == 7) {
        D_80130600 = 2;
    } else {
        Audio_SetGanonDistVol(D_801305F8[arg0 & 7]);
    }
}

// (name derived from debug strings, should probably update. used in ganon/ganon_boss scenes)
s32 Audio_SetGanonDistVol(u8 targetVol) {
    u8 phi_v0;
    u16 phi_v0_2;
    u8 i;

    if (sAudioGanonDistVol != targetVol) {
        Audio_SetVolScale(0, 0, targetVol, 2);
        if (targetVol < 0x40) {
            phi_v0 = 0x10;
        } else {
            phi_v0 = (((targetVol - 0x40) >> 2) + 1) << 4;
        }

        Audio_SeqCmd8(0, 4, 15, phi_v0);
        for (i = 0; i < 0x10; i++) {
            if (gAudioContext.seqPlayers[0].channels[i] != &gAudioContext.sequenceChannelNone) {
                if ((u8)gAudioContext.seqPlayers[0].channels[i]->soundScriptIO[5] != 0xFF) {
                    // this looks like some kind of macro?
                    phi_v0_2 = ((u16)gAudioContext.seqPlayers[0].channels[i]->soundScriptIO[5] - targetVol) + 0x7F;
                    if (phi_v0_2 >= 0x80) {
                        phi_v0_2 = 0x7F;
                    }
                    // CHAN_UPD_REVERB
                    Audio_QueueCmdS8(_SHIFTL(5, 24, 8) | _SHIFTL(0, 16, 8) | _SHIFTL(i, 8, 8) | _SHIFTL(0, 0, 8),
                                     (u8)phi_v0_2);
                }
            }
        }
        sAudioGanonDistVol = targetVol;
    }
    return -1;
}

void func_800F4A54(u8 arg0) {
    D_8016B8B0 = arg0;
    D_8016B8B2 = 1;
}

void func_800F4A70(void) {
    if (D_8016B8B2 == 1) {
        if (D_8016B8B1 != D_8016B8B0) {
            Audio_SetVolScale(0, 0, D_8016B8B0, 0xA);
            D_8016B8B1 = D_8016B8B0;
            D_8016B8B3 = 1;
        }
        D_8016B8B2 = 0;
    } else if (D_8016B8B3 == 1 && D_80130608 == 0) {
        Audio_SetVolScale(0, 0, 0x7F, 0xA);
        D_8016B8B1 = 0x7F;
        D_8016B8B3 = 0;
    }

    if (D_80130600 != 0) {
        D_80130600--;
        if (D_80130600 == 0) {
            Audio_SetGanonDistVol(D_801305F8[7]);
        }
    }
}

void Audio_PlaySoundIncreasinglyTransposed(Vec3f* pos, s16 sfxId, u8* semitones) {
    Audio_PlaySoundGeneral(sfxId, pos, 4, &gNoteFrequencies[semitones[sAudioIncreasingTranspose] + 39], &D_801333E0,
                           &D_801333E8);

    if (sAudioIncreasingTranspose < 15) {
        sAudioIncreasingTranspose++;
    }
}

void Audio_ResetIncreasingTranspose(void) {
    sAudioIncreasingTranspose = 0;
}

void Audio_PlaySoundTransposed(Vec3f* pos, u16 sfxId, s8 semitone) {
    Audio_PlaySoundGeneral(sfxId, pos, 4, &gNoteFrequencies[semitone + 39], &D_801333E0, &D_801333E8);
}

void func_800F4C58(Vec3f* pos, u16 sfxId, u8 arg2) {
    u8 phi_s1 = 0;
    u8 i;
    u8 bankId;

    bankId = SFX_BANK_SHIFT(sfxId);
    for (i = 0; i < bankId; i++) {
        phi_s1 += gChannelsPerBank[gSfxChannelLayout][i];
    }

    for (i = 0; i < gChannelsPerBank[gSfxChannelLayout][bankId]; i++) {
        if ((gActiveSounds[bankId][i].entryIndex != 0xFF) &&
            (sfxId == gSoundBanks[bankId][gActiveSounds[bankId][i].entryIndex].sfxId)) {
            Audio_QueueCmdS8(_SHIFTL(6, 24, 8) | _SHIFTL(2, 16, 8) | _SHIFTL(phi_s1, 8, 8) | _SHIFTL(6, 0, 8), arg2);
        }
        phi_s1++;
    }
    Audio_PlaySoundGeneral(sfxId, pos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}

void func_800F4E30(Vec3f* pos, f32 arg1) {
    f32 phi_f22;
    s8 phi_s4;
    u8 i;

    if (sSariaBgmPtr == NULL) {
        sSariaBgmPtr = pos;
        D_80130650 = arg1;
    } else if (pos != sSariaBgmPtr) {
        if (arg1 < D_80130650) {
            sSariaBgmPtr = pos;
            D_80130650 = arg1;
        }
    } else {
        D_80130650 = arg1;
    }

    if (sSariaBgmPtr->x > 100.0f) {
        phi_s4 = 0x7F;
    } else if (sSariaBgmPtr->x < -100.0f) {
        phi_s4 = 0;
    } else {
        phi_s4 = ((sSariaBgmPtr->x / 100.0f) * 64.0f) + 64.0f;
    }

    if (D_80130650 > 400.0f) {
        phi_f22 = 0.1f;
    } else if (D_80130650 < 120.0f) {
        phi_f22 = 1.0f;
    } else {
        phi_f22 = ((1.0f - ((D_80130650 - 120.0f) / 280.0f)) * 0.9f) + 0.1f;
    }

    for (i = 0; i < 0x10; i++) {
        if (i != 9) {
            Audio_SeqCmd6(0, 2, i, (127.0f * phi_f22));
            Audio_QueueCmdS8(0x03000000 | ((u8)((u32)i) << 8), phi_s4);
        }
    }
}

void Audio_ClearSariaBgm(void) {
    if (sSariaBgmPtr != NULL) {
        sSariaBgmPtr = NULL;
    }
}

void Audio_ClearSariaBgmAtPos(Vec3f* pos) {
    if (sSariaBgmPtr == pos) {
        sSariaBgmPtr = NULL;
    }
}

void func_800F510C(s8 volSplit) {
    u8 vol;
    u8 prio;
    u16 channelBits;
    u8 players[2] = { 0, 3 };
    u8 i;
    u8 j;

    if ((func_800FA0B4(1) == NA_BGM_DISABLED) && (func_800FA0B4(3) != NA_BGM_LONLON)) {
        for (i = 0; i < 2; i++) {
            if (i == 0) {
                vol = volSplit;
            } else {
                vol = 0x7F - volSplit;
            }

            if (vol > 100) {
                prio = 11;
            } else if (vol < 20) {
                prio = 2;
            } else {
                prio = ((vol - 20) / 10) + 2;
            }

            channelBits = 0;
            for (j = 0; j < 0x10; j++) {
                if (gAudioContext.seqPlayers[players[i]].channels[j]->notePriority < prio) {
                    channelBits += (1 << j);
                }
            }

            Audio_SeqCmdA(players[i], channelBits);
        }
    }
}

void Audio_PlaySariaBgm(Vec3f* pos, u16 seqId, u16 distMax) {
    f32 absY;
    f32 dist;
    u8 vol;
    f32 prevDist;

    if (D_8016B9F3 != 0) {
        D_8016B9F3--;
        return;
    }

    dist = sqrtf(SQ(pos->z) + SQ(pos->x));
    if (sSariaBgmPtr == NULL) {
        sSariaBgmPtr = pos;
        func_800F5E18(3, seqId, 0, 7, 2);
    } else {
        prevDist = sqrtf(SQ(sSariaBgmPtr->z) + SQ(sSariaBgmPtr->x));
        if (dist < prevDist) {
            sSariaBgmPtr = pos;
        } else {
            dist = prevDist;
        }
    }

    if (pos->y < 0.0f) {
        absY = -pos->y;
    } else {
        absY = pos->y;
    }

    if ((distMax / 15.0f) < absY) {
        vol = 0;
    } else if (dist < distMax) {
        vol = (1.0f - (dist / distMax)) * 127.0f;
    } else {
        vol = 0;
    }

    if (seqId != NA_BGM_GREAT_FAIRY) {
        func_800F510C(vol);
    }

    Audio_SetVolScale(3, 3, vol, 0);
    Audio_SetVolScale(0, 3, 0x7F - vol, 0);
}

void Audio_ClearSariaBgm2(void) {
    sSariaBgmPtr = NULL;
}

void func_800F5510(u16 seqId) {
    func_800F5550(seqId);
    func_800F5E18(0, seqId, 0, 0, 1);
}

void func_800F5550(u16 seqId) {
    u8 sp27 = 0;
    u16 nv;

    if (func_800FA0B4(0) != NA_BGM_WINDMILL) {
        if (func_800FA0B4(3) == NA_BGM_LONLON) {
            func_800F9474(3, 0);
            Audio_QueueCmdS32(0xF8000000, 0);
        }

        if ((D_80130658[D_80130630] & 0x20) && D_80130658[(seqId & 0xFF) & 0xFF] & 0x10) {

            if ((D_8013062C & 0x3F) != 0) {
                sp27 = 0x1E;
            }

            func_800F5E18(0, seqId, sp27, 7, D_8013062C);

            D_8013062C = 0;
        } else {
            nv = (D_80130658[(seqId & 0xFF) & 0xFF] & 0x40) ? 1 : 0xFF;
            func_800F5E18(0, seqId, 0, 7, nv);
            if (!(D_80130658[seqId] & 0x20)) {
                D_8013062C = 0xC0;
            }
        }
        D_80130630 = seqId & 0xFF;
    }
}

void func_800F56A8(void) {
    u16 temp_v0;
    u8 bvar;

    temp_v0 = func_800FA0B4(0);
    bvar = temp_v0 & 0xFF;
    if ((temp_v0 != NA_BGM_DISABLED) && ((D_80130658[bvar] & 0x10) != 0)) {
        if (D_8013062C != 0xC0) {
            D_8013062C = gAudioContext.seqPlayers->soundScriptIO[3];
        } else {
            D_8013062C = 0;
        }
    }
}

void func_800F5718(void) {
    if (func_800FA0B4(0) != NA_BGM_WINDMILL) {
        Audio_StartSeq(0, 0, NA_BGM_WINDMILL);
    }
}

void func_800F574C(f32 arg0, u8 arg2) {
    if (arg0 == 1.0f) {
        Audio_SeqCmdB40(0, arg2, 0);
    } else {
        Audio_SeqCmdC(1, 0x30, arg2, arg0 * 100.0f);
    }
    Audio_SeqCmdC(1, 0xA0, arg2, arg0 * 100.0f);
}

void func_800F5918(void) {
    if (func_800FA0B4(0) == NA_BGM_MINI_GAME_2 && func_800FA11C(0, 0xF0000000)) {
        Audio_SeqCmdB(0, 5, 0, 0xD2);
    }
}

void func_800F595C(u16 arg0) {
    u8 arg0b = arg0 & 0xFF;

    if (D_80130658[arg0b] & 2) {
        Audio_PlayFanfare(arg0);
    } else if (D_80130658[arg0b] & 4) {
        Audio_StartSeq(1, 0, arg0);

    } else {
        func_800F5E18(0, arg0, 0, 7, -1);
        Audio_SeqCmd1(1, 0);
    }
}

void func_800F59E8(u16 arg0) {
    u8 arg0b = arg0 & 0xFF;

    if (D_80130658[arg0b] & 2) {
        Audio_SeqCmd1(1, 0);
    } else if (D_80130658[arg0b] & 4) {
        Audio_SeqCmd1(1, 0);
    } else {
        Audio_SeqCmd1(0, 0);
    }
}

s32 func_800F5A58(u8 arg0) {
    u8 phi_a1 = 0;

    if (D_80130658[arg0 & 0xFF] & 2) {
        phi_a1 = 1;
    } else if (D_80130658[arg0 & 0xFF] & 4) {
        phi_a1 = 1;
    }

    if (arg0 == (u8)func_800FA0B4(phi_a1)) {
        return 1;
    } else {
        return 0;
    }
}

void func_800F5ACC(u16 seqId) {
    u16 temp_v0;

    temp_v0 = func_800FA0B4(0);
    if ((temp_v0 & 0xFF) != NA_BGM_GANON_TOWER && (temp_v0 & 0xFF) != NA_BGM_ESCAPE && temp_v0 != seqId) {
        func_800F5E90(3);
        if (temp_v0 != NA_BGM_DISABLED) {
            D_80130628 = temp_v0;
        } else {
            osSyncPrintf("Middle Boss BGM Start not stack \n");
        }
        Audio_StartSeq(0, 0, seqId);
    }
}

void func_800F5B58(void) {
    if ((func_800FA0B4(0) != NA_BGM_DISABLED) && (D_80130628 != NA_BGM_DISABLED) &&
        (D_80130658[func_800FA0B4(0) & 0xFF] & 8)) {
        if (D_80130628 == NA_BGM_DISABLED) {
            Audio_SeqCmd1(0, 0);
        } else {
            Audio_StartSeq(0, 0, D_80130628);
        }
        D_80130628 = NA_BGM_DISABLED;
    }
}

void func_800F5BF0(u8 arg0) {
    u16 temp_v0;

    temp_v0 = func_800FA0B4(0);
    if (temp_v0 != NA_BGM_NATURE_BACKGROUND) {
        D_80130628 = temp_v0;
    }
    func_800F6FB4(arg0);
}

void func_800F5C2C(void) {
    if (D_80130628 != NA_BGM_DISABLED) {
        Audio_StartSeq(0, 0, D_80130628);
    }
    D_80130628 = NA_BGM_DISABLED;
}

void Audio_PlayFanfare(u16 seqId) {
    u16 sp26;
    u32 sp20;
    u8* sp1C;
    u8* sp18;

    sp26 = func_800FA0B4(1);
    sp1C = func_800E5E84(sp26 & 0xFF, &sp20);
    sp18 = func_800E5E84(seqId & 0xFF, &sp20);
    if ((sp26 == NA_BGM_DISABLED) || (*sp1C == *sp18)) {
        D_8016B9F4 = 1;
    } else {
        D_8016B9F4 = 5;
        Audio_SeqCmd1(1, 0);
    }
    D_8016B9F6 = seqId;
}

void func_800F5CF8(void) {
    u16 sp26;
    u16 pad;
    u16 sp22;

    if (D_8016B9F4 != 0) {
        D_8016B9F4--;
        if (D_8016B9F4 == 0) {
            Audio_QueueCmdS32(0xE3000000, SEQUENCE_TABLE);
            Audio_QueueCmdS32(0xE3000000, FONT_TABLE);
            func_800FA0B4(0);
            sp26 = func_800FA0B4(1);
            sp22 = func_800FA0B4(3);
            if (sp26 == NA_BGM_DISABLED) {
                Audio_SetVolScale(0, 1, 0, 5);
                Audio_SetVolScale(3, 1, 0, 5);
                Audio_SeqCmdC(1, 0x80, 1, 0xA);
                Audio_SeqCmdC(1, 0x83, 1, 0xA);
                Audio_SeqCmdC(1, 0x90, 0, 0);
                if (sp22 != NA_BGM_LONLON) {
                    Audio_SeqCmdC(1, 0x93, 0, 0);
                }
            }
            Audio_StartSeq(1, 1, D_8016B9F6);
            Audio_SeqCmdA(0, 0xFFFF);
            if (sp22 != NA_BGM_LONLON) {
                Audio_SeqCmdA(3, 0xFFFF);
            }
        }
    }
}

void func_800F5E18(u8 playerIdx, u16 seqId, u8 fadeTimer, s8 arg3, s8 arg4) {
    Audio_SeqCmd7(playerIdx, arg3, arg4);
    Audio_StartSeq(playerIdx, fadeTimer, seqId);
}

void func_800F5E90(u8 arg0) {
    s32 phi_t0;
    u16 phi_t1;
    u8 phi_a3;

    D_80130654 = arg0;
    if (D_80130628 == NA_BGM_DISABLED) {
        if (sAudioCutsceneFlag) {
            arg0 = 3;
        }
        phi_t1 = D_8016E750[0].unk_254;
        if (phi_t1 == NA_BGM_FIELD_LOGIC && func_800FA0B4(3) == (NA_BGM_ENEMY | 0x800)) {
            arg0 = 3;
        }

        phi_a3 = phi_t1 & 0xFF;
        if ((phi_t1 == NA_BGM_DISABLED) || ((D_80130658[phi_a3] & 1) != 0) || ((D_8013061C & 0x7F) == 1)) {
            if (arg0 != (D_8013061C & 0x7F)) {
                if (arg0 == 1) {
                    if (D_8016E750[3].volScales[1] - sAudioEnemyVol < 0) {
                        phi_t0 = -(D_8016E750[3].volScales[1] - sAudioEnemyVol);
                    } else {
                        phi_t0 = D_8016E750[3].volScales[1] - sAudioEnemyVol;
                    }
                    Audio_SetVolScale(3, 3, sAudioEnemyVol, phi_t0);
                    Audio_StartSeq(3, 10, NA_BGM_ENEMY | 0x800);
                    if (phi_t1 != NA_BGM_NATURE_BACKGROUND) {
                        Audio_SetVolScale(0, 3, (0x7F - sAudioEnemyVol) & 0xFF, 0xA);
                        func_800F510C(sAudioEnemyVol);
                    }
                } else {
                    if ((D_8013061C & 0x7F) == 1) {
                        Audio_SeqCmd1(3, 10);
                        if (arg0 == 3) {
                            phi_a3 = 0;
                        } else {
                            phi_a3 = 10;
                        }

                        Audio_SetVolScale(0, 3, 0x7F, phi_a3);
                        func_800F510C(0);
                    }
                }

                D_8013061C = arg0 + 0x80;
            }
        } else {
            if (arg0 == 0) {
                if (D_8013061C == 2) {
                    D_80130638 = 0;
                }
                D_80130634 = 0;
                D_80130638++;
            } else {
                D_80130634++;
            }

            if (arg0 == 2 && D_80130634 < 0x1E && D_80130638 >= 0x15) {
                arg0 = 0;
            }

            D_8013061C = arg0;
            Audio_SeqCmd7(0, 2, arg0);
        }
    }
}

void func_800F6114(f32 dist) {
    f32 adjDist;

    if (D_8013061C == 0x81) {
        if (dist != sAudioEnemyDist) {
            if (dist < 150.0f) {
                adjDist = 0.0f;
            } else if (dist > 500.0f) {
                adjDist = 350.0f;
            } else {
                adjDist = dist - 150.0f;
            }

            sAudioEnemyVol = ((350.0f - adjDist) * 127.0f) / 350.0f;
            Audio_SetVolScale(3, 3, sAudioEnemyVol, 0xA);
            if (D_8016E750[0].unk_254 != NA_BGM_NATURE_BACKGROUND) {
                Audio_SetVolScale(0, 3, (0x7F - sAudioEnemyVol), 0xA);
            }
        }
        if (D_8016E750[0].unk_254 != NA_BGM_NATURE_BACKGROUND) {
            func_800F510C(sAudioEnemyVol);
        }
    }
    sAudioEnemyDist = dist;
}

void func_800F6268(f32 dist, u16 arg1) {
    s8 pad;
    s8 phi_v1;
    s16 temp_a0;

    sAudioHasMalonBgm = true;
    sAudioMalonBgmDist = dist;
    if (D_8016B9F2 == 0) {
        temp_a0 = (s8)(func_800FA0B4(0) & 0xFF);
        if (temp_a0 == (arg1 & 0xFF)) {
            if ((arg1 & 0xFF) == NA_BGM_LONLON) {

                if (dist > 2000.0f) {
                    phi_v1 = 127;
                } else if (dist < 200.0f) {
                    phi_v1 = 0;
                } else {
                    phi_v1 = (s8)(((dist - 200.0f) * 127.0f) / 1800.0f);
                }
                // Transition volume of channels 0, 1 and 13 on seq player 0 over 3 frames
                Audio_SeqCmd6(0, 3, 0, 127 - phi_v1);
                Audio_SeqCmd6(0, 3, 1, 127 - phi_v1);
                Audio_SeqCmd6(0, 3, 13, phi_v1);
                if (D_8016B9D8 == 0) {
                    D_8016B9D8++;
                }
            }
        } else if ((temp_a0 == NA_BGM_NATURE_BACKGROUND) && ((arg1 & 0xFF) == NA_BGM_LONLON)) {
            temp_a0 = (s8)(func_800FA0B4(3) & 0xFF);
            if ((temp_a0 != (arg1 & 0xFF)) && (D_8016B9D8 < 10)) {
                func_800F5E18(3, NA_BGM_LONLON, 0, 0, 0);
                Audio_SeqCmdA(3, 0xFFFC);
                D_8016B9D8 = 10;
            }

            if (dist > 2000.0f) {
                phi_v1 = 127;
            } else if (dist < 200.0f) {
                phi_v1 = 0;
            } else {
                phi_v1 = (s8)(((dist - 200.0f) * 127.0f) / 1800.0f);
            }
            // Transition volume of channels 0 and 1 on seq player 0 over 3 frames
            Audio_SeqCmd6(3, 3, 0, 127 - phi_v1);
            Audio_SeqCmd6(3, 3, 1, 127 - phi_v1);
        }

        if (D_8016B9D8 < 10) {
            D_8016B9D8++;
        }
    }
}

void func_800F64E0(u8 arg0) {
    D_80130608 = arg0;
    if (arg0 != 0) {
        Audio_PlaySoundGeneral(NA_SE_SY_WIN_OPEN, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        Audio_QueueCmdS32(0xF1000000, 0);
    } else {
        Audio_PlaySoundGeneral(NA_SE_SY_WIN_CLOSE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        Audio_QueueCmdS32(0xF2000000, 0);
    }
}

void func_800F6584(u8 arg0) {
    u8 playerIdx;
    u16 sp34;

    D_8016B9F2 = arg0;
    if ((func_800FA0B4(0) & 0xFF) == NA_BGM_LONLON) {
        playerIdx = 0;
        sp34 = 0;
    } else if ((func_800FA0B4(3) & 0xFF) == NA_BGM_LONLON) {
        playerIdx = 3;
        sp34 = 0xFFFC;
    } else {
        return;
    }

    if (arg0 != 0) {
        Audio_SeqCmd6(playerIdx, 1, 0, 0);
        Audio_SeqCmd6(playerIdx, 1, 1, 0);
        if (playerIdx == 3) {
            Audio_SeqCmdA(playerIdx, sp34 | 3);
        }
    } else {
        if (playerIdx == 3) {
            func_800F5E18(3, NA_BGM_LONLON, 0, 0, 0);
        }
        Audio_SeqCmd6(playerIdx, 1, 0, 0x7F);
        Audio_SeqCmd6(playerIdx, 1, 1, 0x7F);
        if (playerIdx == 3) {
            Audio_SeqCmdA(playerIdx, sp34);
        }
    }
}

void Audio_SetEnvReverb(s8 reverb) {
    sAudioEnvReverb = reverb & 0x7F;
}

void Audio_SetCodeReverb(s8 reverb) {
    if (reverb != 0) {
        sAudioCodeReverb = reverb & 0x7F;
    }
}

void func_800F6700(s8 arg0) {
    s8 sp1F;

    switch (arg0) {
        case 0:
            sp1F = 0;
            D_80130604 = 0;
            break;
        case 1:
            sp1F = 3;
            D_80130604 = 3;
            break;
        case 2:
            sp1F = 1;
            D_80130604 = 1;
            break;
        case 3:
            sp1F = 0;
            D_80130604 = 2;
            break;
    }

    Audio_SeqCmdE0(0, sp1F);
}

void Audio_SetBaseFilter(u8 filter) {
    if (sAudioBaseFilter != filter) {
        if (filter == 0) {
            Audio_StopSfxById(NA_SE_PL_IN_BUBBLE);
        } else if (sAudioBaseFilter == 0) {
            Audio_PlaySoundGeneral(NA_SE_PL_IN_BUBBLE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    }
    sAudioBaseFilter = filter;
    sAudioBaseFilter2 = filter;
}

void Audio_SetExtraFilter(u8 filter) {
    u32 t;
    u8 i;

    sAudioExtraFilter2 = filter;
    sAudioExtraFilter = filter;
    if (D_8016E750[0].unk_254 == NA_BGM_NATURE_BACKGROUND) {
        for (i = 0; i < 16; i++) {
            t = i;
            // CHAN_UPD_SCRIPT_IO (seq player 0, all channels, slot 6)
            Audio_QueueCmdS8(0x6000000 | ((t & 0xFF) << 8) | 6, filter);
        }
    }
}

void Audio_SetCutsceneFlag(s8 flag) {
    sAudioCutsceneFlag = flag;
}

void Audio_PlaySoundGeneralIfNotInCutscene(u16 sfxId, Vec3f* pos, u8 arg2, f32* freqScale, f32* arg4, s8* reverbAdd) {
    if (!sAudioCutsceneFlag) {
        Audio_PlaySoundGeneral(sfxId, pos, arg2, freqScale, arg4, reverbAdd);
    }
}

void Audio_PlaySoundIfNotInCutscene(u16 sfxId) {
    Audio_PlaySoundGeneralIfNotInCutscene(sfxId, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}

void func_800F6964(u16 arg0) {
    s32 skip;
    u8 channel;

    Audio_SeqCmd1(0, (arg0 * 3) / 2);
    Audio_SeqCmd1(1, (arg0 * 3) / 2);
    for (channel = 0; channel < 16; channel++) {
        skip = false;
        switch (channel) {
            case SFX_CHANNEL_SYSTEM0:
            case SFX_CHANNEL_SYSTEM1:
                if (gAudioSpecId == 10) {
                    skip = true;
                }
                break;
            case SFX_CHANNEL_OCARINA:
                skip = true;
                break;
        }

        if (!skip) {
            Audio_SeqCmd6(2, arg0 >> 1, channel, 0);
        }
    }

    Audio_SeqCmd1(3, (arg0 * 3) / 2);
}

void func_800F6AB0(u16 arg0) {
    Audio_SeqCmd1(0, arg0);
    Audio_SeqCmd1(1, arg0);
    Audio_SeqCmd1(3, arg0);
    Audio_SetVolScale(0, 3, 0x7F, 0);
    Audio_SetVolScale(0, 1, 0x7F, 0);
}

void func_800F6B3C(void) {
    func_800F9280(2, 0, 0xFF, 5);
}

void Audio_DisableAllSeq(void) {
    Audio_DisableSeq(0, 0);
    Audio_DisableSeq(1, 0);
    Audio_DisableSeq(2, 0);
    Audio_DisableSeq(3, 0);
    Audio_ScheduleProcessCmds();
}

s8 func_800F6BB8(void) {
    return func_800E6680();
}

void func_800F6BDC(void) {
    Audio_DisableAllSeq();
    Audio_ScheduleProcessCmds();
    while (true) {
        if (!func_800F6BB8()) {
            return;
        }
    }
}

void Audio_PreNMI(void) {
    Audio_PreNMIInternal();
}

void func_800F6C34(void) {
    D_8013061C = 0;
    D_8016B7A8 = 1.0f;
    D_8016B7B0 = 1.0f;
    sAudioBaseFilter = 0;
    sAudioExtraFilter = 0;
    sAudioBaseFilter2 = 0;
    sAudioExtraFilter2 = 0;
    AudioOcarina_Reset(OCARINA_INSTRUMENT_OFF);
    sRiverFreqScaleLerp.remainingFrames = 0;
    sWaterfallFreqScaleLerp.remainingFrames = 0;
    sRiverFreqScaleLerp.value = 1.0f;
    sWaterfallFreqScaleLerp.value = 1.0f;
    D_8016B7D8 = 1.0f;
    D_8016B8B0 = 0x7F;
    D_8016B8B1 = 0x7F;
    D_8016B8B2 = 0;
    D_8016B8B3 = 0;
    sAudioGanonDistVol = 0xFF;
    D_8016B9D8 = 0;
    sSpecReverb = sSpecReverbs[gAudioSpecId];
    D_80130608 = 0;
    D_80130628 = NA_BGM_DISABLED;
    Audio_QueueCmdS8(0x46000000, -1);
    sSariaBgmPtr = NULL;
    D_8016B9F4 = 0;
    D_8016B9F3 = 1;
    D_8016B9F2 = 0;
}

void func_800F6D58(u8 arg0, u8 arg1, u8 arg2) {
    u8 t;
    u8 temp_a0;
    u8 i;

    if ((D_8016E750[0].unk_254 != NA_BGM_NATURE_BACKGROUND) && func_800FA11C(1, 0xF00000FF)) {
        sAudioNatureFailed = 1;
        return;
    }

    if (((arg0 << 8) + arg1) == 0x101) {
        if (func_800FA0B4(3) != NA_BGM_LONLON) {
            D_8016B9D8 = 0;
        }
    }

    t = arg0 >> 4;
    temp_a0 = arg0 & 0xF;
    if (t == 0) {
        t = arg0 & 0xF;
    }

    for (i = t; i <= temp_a0; i++) {
        Audio_SeqCmd8(0, arg1, i, arg2);
    }
}

void func_800F6E7C(u16 arg0, u16 arg1) {
    u8 i;
    u32 t;

    if (func_800FA0B4(0) == NA_BGM_WINDMILL) {
        func_800F3F3C(0xF);
        return;
    }
    Audio_SeqCmd7(0, 0, 1);
    Audio_SeqCmd7(0, 4, arg0 >> 8);
    Audio_SeqCmd7(0, 5, arg0 & 0xFF);
    Audio_SetVolScale(0, 0, 0x7F, 1);

    i = 0;
    if (D_80133408 != 0) {
        i = 1;
        Audio_SeqCmdE01(0, 0);
    }

    Audio_StartSeq(0, 0, NA_BGM_NATURE_BACKGROUND);

    if (i != 0) {
        Audio_SeqCmdE01(0, 1);
    }

    for (i = 0; i < 0x10; i++) {
        if (!(arg1 & (1 << i)) && (arg0 & (1 << i))) {
            Audio_SeqCmd8(0, 1, i, 1);
        }
    }
}

void func_800F6FB4(u8 arg0) {
    u8 i = 0;
    u8 b0;
    u8 b1;
    u8 b2;

    if ((D_8016E750[0].unk_254 == NA_BGM_DISABLED) || ((D_80130658[((u8)D_8016E750[0].unk_254) & 0xFF] & 0x80) == 0)) {
        func_800F6E7C(D_801306DC[arg0].unk_00, D_801306DC[arg0].unk_02);
        while ((D_801306DC[arg0].unk_04[i] != 0xFF) && (i < 100)) {
            // Probably a fake match, using Audio_SeqCmd8 doesn't work.
            b0 = D_801306DC[arg0].unk_04[i++];
            b1 = D_801306DC[arg0].unk_04[i++];
            b2 = D_801306DC[arg0].unk_04[i++];
            Audio_QueueSeqCmd(0x80000000 | (b1 << 0x10) | (b0 << 8) | b2);
        }

        Audio_SeqCmd8(0, 0x07, 13, D_80130604);
    }
}

void Audio_Init(void) {
    AudioLoad_Init(NULL, 0);
}

void Audio_InitSound(void) {
    func_800F6C34();
    AudioOcarina_ResetStaff();
    Audio_ResetSfxChannelState();
    func_800FAEB4();
    Audio_ResetSounds();
    func_800F9280(2, 0, 0x70, 10);
}

void func_800F7170(void) {
    func_800F9280(2, 0, 0x70, 1);
    Audio_QueueCmdS32(0xF2000000, 1);
    Audio_ScheduleProcessCmds();
    Audio_QueueCmdS32(0xF8000000, 0);
}

void func_800F71BC(s32 arg0) {
    D_80133418 = 1;
    func_800F6C34();
    AudioOcarina_ResetStaff();
    Audio_ResetSfxChannelState();
    func_800FADF8();
    Audio_ResetSounds();
}

void func_800F7208(void) {
    func_800FADF8();
    Audio_QueueCmdS32(0xF2000000, 1);
    func_800F6C34();
    Audio_ResetSfxChannelState();
    func_800F9280(2, 0, 0x70, 1);
}
