#include "ultra64.h"
#include "global.h"

// TODO: can these macros be shared between files? code_800F9280 seems to use
// versions without any casts...
#define Audio_DisableSeq(seqIdx, fadeOut) Audio_QueueCmdS32(0x83000000 | ((u8)seqIdx << 16), fadeOut)
#define Audio_StartSeq(seqIdx, fadeTimer, seqId) \
    Audio_QueueSeqCmd(0x00000000 | ((u8)seqIdx << 24) | ((u8)(fadeTimer) << 0x10) | (u16)seqId)
#define Audio_SeqCmd7(seqIdx, a, b) Audio_QueueSeqCmd(0x70000000 | ((u8)seqIdx << 0x18) | ((u8)a << 0x10) | (u8)(b))
#define Audio_SeqCmdC(seqIdx, a, b, c) \
    Audio_QueueSeqCmd(0xC0000000 | ((u8)seqIdx << 24) | ((u8)a << 16) | ((u8)b << 8) | ((u8)(c)))
#define Audio_SeqCmdA(seqIdx, a) Audio_QueueSeqCmd(0xA0000000 | ((u8)seqIdx << 24) | ((u16)(a)))
#define Audio_SeqCmd1(seqIdx, a) Audio_QueueSeqCmd(0x100000FF | ((u8)seqIdx << 24) | ((u8)(a) << 16))
#define Audio_SeqCmdB(seqIdx, a, b, c) \
    Audio_QueueSeqCmd(0xB0000000 | ((u8)seqIdx << 24) | ((u8)a << 16) | ((u8)b << 8) | ((u8)c))
#define Audio_SeqCmdB40(seqIdx, a, b) Audio_QueueSeqCmd(0xB0004000 | ((u8)seqIdx << 24) | ((u8)a << 16) | ((u8)b))
#define Audio_SeqCmd6(seqIdx, a, b, c) \
    Audio_QueueSeqCmd(0x60000000 | ((u8)seqIdx << 24) | ((u8)(a) << 16) | ((u8)b << 8) | ((u8)c))
#define Audio_SeqCmdE0(seqIdx, a) Audio_QueueSeqCmd(0xE0000000 | ((u8)seqIdx << 24) | ((u8)a))
#define Audio_SeqCmdE01(seqIdx, a) Audio_QueueSeqCmd(0xE0000100 | ((u8)seqIdx << 24) | ((u16)a))
#define Audio_SeqCmd8(seqIdx, a, b, c) \
    Audio_QueueSeqCmd(0x80000000 | ((u8)seqIdx << 24) | ((u8)a << 16) | ((u8)b << 8) | ((u8)c))
#define Audio_SeqCmdF(seqIdx, a) Audio_QueueSeqCmd(0xF0000000 | ((u8)seqIdx << 24) | ((u8)a))

typedef struct {
    /* 0x0 */ f32 unk_00;
    /* 0x4 */ f32 freqScale;
    /* 0x8 */ s8 reverb;
    /* 0x9 */ s8 panSigned;
    /* 0xA */ s8 stereoBits;
    /* 0xB */ u8 unk_0B;
    /* 0xC */ u8 unk_0C;
} unk_s1;

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
    /* 0x8 */ PAGE_SE_FLAG_SWAP,
    /* 0x9 */ PAGE_BLOCK_CHANGE_BGM,
    /* 0xA */ PAGE_NATURAL_SOUND_CONTROL, // unused
    /* 0xB */ PAGE_OCARINA_TEST,
    /* 0xC */ PAGE_SE_PARAMETER_CHANGE,
    /* 0xD */ PAGE_SCROLL_PRINT,
    /* 0xE */ PAGE_FREE_AREA,
    /* 0xF */ PAGE_MAX
} AudioDebugPage;

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

#define SCROLL_PRINT_BUF_SIZE 25

extern f32 D_8012F6B4[]; // from audio_synthesis

u8 D_80130570[7] = { 0, 0, 0, 1, 0, 0, 0 };
u8 D_80130578[4][7] = {
    { 3, 2, 3, 3, 2, 1, 2 },
    { 3, 2, 2, 2, 2, 2, 2 },
    { 3, 2, 2, 2, 2, 2, 2 },
    { 4, 1, 0, 0, 2, 2, 2 },
};
u8 D_80130594[4][7] = {
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
f32 D_801305C4[2] = { -15.0f, -65.0f };
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
u16 D_80130628 = 0xFFFF;
u8 D_8013062C = 0;
u8 D_80130630 = 0;
u32 D_80130634 = 0;
u32 D_80130638 = 0;
u8 D_8013063C = 0;
u8 D_80130640 = 0;
u8 D_80130644 = 0;
u8 D_80130648 = 0;
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

u32 sOcarinaAllowedBtnMask = 0x800F;
s32 sOcarinaABtnMap = 0x8000;
s32 sOcarinaCUPBtnMap = 8;
s32 sOcarinaCDownBtnMap = 4;
u8 sOcarinaInpEnabled = 0;
s8 D_80130F10 = 0; // "OCA", ocarina active?
u8 sCurOcarinaBtnVal = 0xFF;
u8 sPrevOcarinaNoteVal = 0;
u8 sCurOcarinaBtnIdx = 0; // note index?
u8 sLearnSongLastBtn = 0;
f32 D_80130F24 = 1.0f;
f32 D_80130F28 = 0.68503934f;
s8 D_80130F2C = 0; // pitch?
s8 D_80130F30 = 0x57;
s8 D_80130F34 = 0;
u8 sPlaybackState = 0; // 80130F38
u32 D_80130F3C = 0;    // "SEQ"
u32 sNotePlaybackTimer = 0;
u16 sPlaybackNotePos = 0;
u16 sStaffPlaybackPos = 0;
u16 D_80130F4C = 0;
u8 sDisplayedNoteValue = 0xFF; // Note to display on screen?
u8 sNotePlaybackVolume = 0;
u8 sNotePlaybackVibrato = 0;
s8 sNotePlaybackTone = 0;
f32 sNormalizedNotePlaybackTone = 1.0f;
f32 sNormalizedNotePlaybackVolume = 1.0f;
s32 D_80130F68 = 0;
u8 sOcarinaNoteValues[5] = { 2, 5, 9, 11, 14 };
u8 sOcaMinigameApndPos = 0;
u8 sOcaMinigameEndPos = 0;
u8 sOcaMinigameNoteCnts[] = { 5, 6, 8 };

OcarinaNote sOcarinaSongs[14][20] = {
    // minuet
    {
        { 2, 0, 18, 86, 0, 0, 0 },
        { 14, 0, 18, 92, 0, 0, 0 },
        { 11, 0, 72, 86, 0, 0, 0 },
        { 9, 0, 18, 80, 0, 0, 0 },
        { 11, 0, 18, 88, 0, 0, 0 },
        { 9, 0, 144, 86, 0, 0, 0 },
        { 0xFF, 0, 0, 86, 0, 0, 0 },
    },

    // bolero
    {
        { 5, 0, 15, 80, 0, 0, 0 },
        { 2, 0, 15, 72, 0, 0, 0 },
        { 5, 0, 15, 84, 0, 0, 0 },
        { 2, 0, 15, 76, 0, 0, 0 },
        { 9, 0, 15, 84, 0, 0, 0 },
        { 5, 0, 15, 74, 0, 0, 0 },
        { 9, 0, 15, 78, 0, 0, 0 },
        { 5, 0, 135, 66, 0, 0, 0 },
        { 0xFF, 0, 0, 66, 0, 0, 0 },
    },

    // serenade
    {
        { 2, 0, 36, 60, 0, 0, 0 },
        { 5, 0, 36, 78, 0, 0, 0 },
        { 9, 0, 33, 82, 0, 0, 0 },
        { 0xFF, 0, 3, 82, 0, 0, 0 },
        { 9, 0, 36, 84, 0, 0, 0 },
        { 11, 0, 144, 90, 0, 0, 0 },
        { 0xFF, 0, 0, 90, 0, 0, 0 },
    },

    // requiem
    {
        { 2, 0, 45, 88, 0, 0, 0 },
        { 5, 0, 23, 86, 0, 0, 0 },
        { 2, 0, 22, 84, 0, 0, 0 },
        { 9, 0, 45, 86, 0, 0, 0 },
        { 5, 0, 45, 94, 0, 0, 0 },
        { 2, 0, 180, 94, 0, 0, 0 },
        { 0xFF, 0, 0, 94, 0, 0, 0 },
    },

    // nocturne
    {
        { 11, 0, 36, 88, 0, 0, 0 },
        { 9, 0, 33, 84, 0, 0, 0 },
        { 0xFF, 0, 3, 84, 0, 0, 0 },
        { 9, 0, 18, 82, 0, 0, 0 },
        { 2, 0, 18, 60, 0, 0, 0 },
        { 11, 0, 18, 90, 0, 0, 0 },
        { 9, 0, 18, 88, 0, 0, 0 },
        { 5, 0, 144, 96, 0, 0, 0 },
        { 0xFF, 0, 0, 96, 0, 0, 0 },
    },

    // prelude
    {
        { 14, 0, 15, 84, 0, 0, 0 },
        { 9, 0, 45, 88, 0, 0, 0 },
        { 14, 0, 15, 88, 0, 0, 0 },
        { 9, 0, 15, 82, 0, 0, 0 },
        { 11, 0, 15, 86, 0, 0, 0 },
        { 14, 0, 60, 90, 0, 0, 0 },
        { 0xFF, 0, 75, 90, 0, 0, 0 },
        { 0xFF, 0, 0, 90, 0, 0, 0 },
    },

    // sarias
    {
        { 5, 0, 17, 84, 0, 0, 0 },
        { 9, 0, 17, 88, 0, 0, 0 },
        { 11, 0, 34, 80, 0, 0, 0 },
        { 5, 0, 17, 84, 0, 0, 0 },
        { 9, 0, 17, 88, 0, 0, 0 },
        { 11, 0, 136, 80, 0, 0, 0 },
        { 0xFF, 0, 0, 90, 0, 0, 0 },
    },

    // epona
    {
        { 14, 0, 18, 84, 0, 0, 0 },
        { 11, 0, 18, 88, 0, 0, 0 },
        { 9, 0, 72, 80, 0, 0, 0 },
        { 14, 0, 18, 84, 0, 0, 0 },
        { 11, 0, 18, 88, 0, 0, 0 },
        { 9, 0, 144, 80, 0, 0, 0 },
        { 0xFF, 0, 0, 90, 0, 0, 0 },
    },

    // lullaby
    {
        { 11, 0, 51, 84, 0, 0, 0 },
        { 14, 0, 25, 88, 0, 0, 0 },
        { 9, 0, 78, 80, 0, 0, 0 },
        { 11, 0, 51, 84, 0, 0, 0 },
        { 14, 0, 25, 88, 0, 0, 0 },
        { 9, 0, 100, 80, 0, 0, 0 },
        { 0xFF, 0, 0, 90, 0, 0, 0 },
    },

    // suns
    {
        { 9, 0, 12, 84, 0, 0, 0 },
        { 5, 0, 13, 88, 0, 0, 0 },
        { 14, 0, 29, 80, 2, 0, 0 },
        { 0xFF, 0, 9, 84, 0, 0, 0 },
        { 9, 0, 12, 84, 0, 0, 0 },
        { 5, 0, 13, 88, 0, 0, 0 },
        { 14, 0, 120, 80, 3, 0, 0 },
        { 0xFF, 0, 0, 90, 0, 0, 0 },
    },

    // song of time
    {
        { 9, 0, 32, 84, 0, 0, 0 },
        { 2, 0, 65, 88, 0, 0, 0 },
        { 5, 0, 33, 80, 0, 0, 0 },
        { 9, 0, 32, 84, 0, 0, 0 },
        { 2, 0, 65, 88, 0, 0, 0 },
        { 5, 0, 99, 80, 0, 0, 0 },
        { 0xFF, 0, 0, 90, 0, 0, 0 },
    },

    // storms
    {
        { 2, 0, 11, 84, 0, 0, 0 },
        { 5, 0, 11, 88, 0, 0, 0 },
        { 14, 0, 45, 80, 0, 0, 0 },
        { 2, 0, 11, 84, 0, 0, 0 },
        { 5, 0, 11, 88, 0, 0, 0 },
        { 14, 0, 90, 80, 0, 0, 0 },
        { 0xFF, 0, 0, 90, 0, 0, 0 },
    },

    // scarecrow
    {
        { 2, 0, 3, 0, 0, 0, 0 },
        { 0xFF, 0, 0, 255, 0, 0, 0 },
    },

    // OCA_MEMORYGAME_IDX
    {
        { 2, 0, 3, 0, 0, 0, 0 },
        { 0xFF, 0, 0, 0, 0, 0, 0 },
    },
};

OcarinaNote* sPlaybackSong = sOcarinaSongs[0];
u8 D_80131844[14] = { 0, 3, 2, 1, 3, 2, 1, 0, 1, 0, 1, 2, 3, 0 };
u8* gFrogsSongPtr = D_80131844;
u8 D_80131858 = 0; // "REC"
u8 sRecordSongPos = 0;
u32 D_80131860 = 0;
u8 D_80131864 = 0;
u8 D_80131868 = 0;
u8 D_8013186C = 0;
s8 D_80131870 = 0;
u8 D_80131874 = 0;
u8 D_80131878 = 0;
u8 D_8013187C = 0;
u8 D_80131880 = 0;

OcarinaNote sPierresSong[108] = {
    { 0xFF, 0, 0, 0, 0, 0, 0 },
    { 0xFF, 0, 0, 0, 0, 0, 0 },
};
OcarinaNote* gScarecrowCustomSongPtr = sPierresSong;

u8* gScarecrowSpawnSongPtr = (u8*)&sOcarinaSongs[12];
OcarinaNote* D_80131BEC = sOcarinaSongs[13];
u8 sNoteValueIndexMap[16] = { 0, 0, 0, 0, 1, 1, 1, 2, 2, 2, 5, 3, 3, 4, 4, 4 };

// clang-format off
OcarinaSongInfo gOcarinaSongNotes[14] = {
    { 6, { 0, 4, 3, 2, 3, 2 }},
    { 8, { 1, 0, 1, 0, 2, 1, 2, 1 }},
    { 5, { 0, 1, 2, 2, 3 }},
    { 6, { 0, 1, 0, 2, 1, 0 }},
    { 7, { 3, 2, 2, 0, 3, 2, 1 }},
    { 6, { 4, 2, 4, 2, 3, 4 }},
    { 6, { 1, 2, 3, 1, 2, 3 }},
    { 6, { 4, 3, 2, 4, 3, 2 }},
    { 6, { 3, 4, 2, 3, 4, 2 }},
    { 6, { 2, 1, 4, 2, 1, 4 }},
    { 6, { 2, 0, 1, 2, 0, 1 }},
    { 6, { 0, 1, 4, 0, 1, 4 }},
    { 8, { 0, 0, 0, 0, 0, 0, 0, 0 }},
    { 0, { 0, 0, 0, 0, 0, 0, 0, 0 }},
};
// clang-format on

extern u8 D_801333F0;
extern u8 gAudioSEFlagSwapOff;
extern u8 D_80133408;
extern u8 D_80133418;

/**
 * BSS
 */
u32 sAudioUpdateStartTime; // 8016B7A0
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
unk_s1 D_8016B8B8[0x10];

char sBinToStrBuf[0x20];
u8 D_8016B9D8;
u8 sAudioSpecPeakNumNotes[0x12];
u8 D_8016B9F2;
u8 D_8016B9F3;
u8 D_8016B9F4;
u16 D_8016B9F6;

OcarinaStaff D_8016B9F8;      // playing along staff?
OcarinaStaff sDisplayedStaff; // displayed staff?
OcarinaStaff D_8016BA00;      // ?? note and status not updated, pos updated as you play
u32 D_8016BA04;
typedef struct {
    s8 x;
    s8 y;
} OcarinaStick;
OcarinaStick sCurOcaStick;
u32 sCurOcarinaBtnPress;
u32 D_8016BA10;
u32 sPrevOcarinaBtnPress;
s32 D_8016BA18;
s32 D_8016BA1C;
u8 sCurOcarinaSong[8];
u8 sOcarinaSongAppendPos;
u8 sOcarinaHasStartedSong;
u8 sOcarinaSongNoteStartIdx;
u8 sOcarinaSongCnt;
u16 sOcarinaAvailSongs;
u8 D_8016BA2E;
u16 sLearnSongPos[0x10];
u16 D_8016BA50[0x10];
u16 D_8016BA70[0x10];
u8 sLearnSongExpectedNote[0x10];
OcarinaNote D_8016BAA0;
u8 sAudioHasMalonBgm;
f32 sAudioMalonBgmDist;

// Start debug bss
u32 sDebugPadHold;
u32 sDebugPadBtnLast;
u32 sDebugPadPress;
s32 sAudioUpdateTaskStart;
s32 sAudioUpdateTaskEnd;

extern u16 gAudioSEFlagSwapSource[];
extern u16 gAudioSEFlagSwapTarget[];
extern u8 gAudioSEFlagSwapMode[];

void PadMgr_RequestPadData(PadMgr* padmgr, Input* inputs, s32 mode);

void Audio_StepFreqLerp(FreqLerp* lerp);
void func_800F56A8(void);
void func_800F6FB4(u8);
s32 Audio_SetGanonDistVol(u8 targetVol);

void func_800EC960(u8 custom) {
    if (!custom) {
        osSyncPrintf("AUDIO : Ocarina Control Assign Normal\n");
        sOcarinaAllowedBtnMask = (BTN_A | BTN_CUP | BTN_CDOWN | BTN_CLEFT | BTN_CRIGHT);
        sOcarinaABtnMap = BTN_A;
        sOcarinaCUPBtnMap = BTN_CUP;
        sOcarinaCDownBtnMap = BTN_CDOWN;
    } else {
        osSyncPrintf("AUDIO : Ocarina Control Assign Custom\n");
        sOcarinaAllowedBtnMask = (BTN_A | BTN_B | BTN_CDOWN | BTN_CLEFT | BTN_CRIGHT);
        sOcarinaABtnMap = BTN_B;
        sOcarinaCUPBtnMap = BTN_CDOWN;
        sOcarinaCDownBtnMap = BTN_A;
    }
}

void Audio_GetOcaInput(void) {
    Input inputs[4];
    Input* controller1 = &inputs[0];
    u32 sp18;

    sp18 = sCurOcarinaBtnPress;
    PadMgr_RequestPadData(&gPadMgr, inputs, 0);
    sCurOcarinaBtnPress = controller1->cur.button;
    sPrevOcarinaBtnPress = sp18;
    sCurOcaStick.x = controller1->rel.stick_x;
    sCurOcaStick.y = controller1->rel.stick_y;
}

f32 Audio_OcaAdjStick(s8 inp) {
    s8 inpAdj;
    f32 ret;

    if (inp > 0x40) {
        inpAdj = 127;
    } else if (inp < -0x40) {
        inpAdj = -128;
    } else if (inp >= 0) {
        inpAdj = (inp * 127) / 64;
    } else {
        inpAdj = (inp * 128) / 64;
    }
    ret = D_8012F6B4[inpAdj];
    return ret;
}

u8 func_800ECAF0(void) {
    u8 ret;

    if (D_80131878 != 0) {
        ret = D_80131878 - 1;
        D_80131878 = 0;
    } else if (D_80130F3C != 0) {
        ret = 0xFE;
    } else {
        ret = 0xFF;
    }

    return ret;
}

u8 Audio_OcaMapNoteValue(u8 arg0) {
    u8 temp_v1;

    temp_v1 = sNoteValueIndexMap[arg0 & 0x3F];
    if (temp_v1 == 5) {
        if (arg0 & 0x80) {
            return 2;
        }
        return 3;
    }
    return temp_v1;
}

void func_800ECB7C(u8 songIdx) {
    u8 savedSongIdx;
    u8 scarecrowSongIdx;
    u8 noteIdx;

    savedSongIdx = 0;
    scarecrowSongIdx = 0;
    while (savedSongIdx < 8 && scarecrowSongIdx < 0x10) {
        noteIdx = sOcarinaSongs[songIdx][scarecrowSongIdx++].noteIdx;
        if (noteIdx != 0xFF) {
            gOcarinaSongNotes[12].notesIdx[savedSongIdx++] = sNoteValueIndexMap[noteIdx];
        }
    }
}

// start ocarina.
void func_800ECC04(u16 flg) {
    u8 i;

    if ((sOcarinaSongs[12][1].volume != 0xFF) && ((flg & 0xFFF) == 0xFFF)) {
        flg |= 0x1000;
    }

    if ((flg == 0xCFFF) && (sOcarinaSongs[12][1].volume != 0xFF)) {
        flg = 0xDFFF;
    }

    if ((flg == 0xFFF) && (sOcarinaSongs[12][1].volume != 0xFF)) {
        flg = 0x1FFF;
    }

    if (flg != 0xFFFF) {
        D_80130F3C = 0x80000000 + (u32)flg;
        sOcarinaSongNoteStartIdx = 0;
        sOcarinaSongCnt = 0xE;
        if (flg != 0xA000) {
            sOcarinaSongCnt--;
        }
        sOcarinaAvailSongs = flg & 0x3FFF;
        D_8013187C = 8;
        sOcarinaHasStartedSong = 0;
        D_80131878 = 0;
        D_8016BA2E = 0;
        D_8016B9F8.state = func_800ECAF0();
        sOcarinaInpEnabled = 1;
        D_80130F4C = 0;
        for (i = 0; i < 0xE; i++) {
            sLearnSongPos[i] = 0;
            D_8016BA50[i] = 0;
            D_8016BA70[i] = 0;
            sLearnSongExpectedNote[i] = 0;
        }

        if (flg & 0x8000) {
            D_8013187C = 0;
        }

        if (flg & 0x4000) {
            sOcarinaSongAppendPos = 0;
        }

        if (flg & 0xD000) {
            func_800ECB7C(0xC);
            return;
        }
    } else {
        D_80130F3C = 0;
        sOcarinaInpEnabled = 0;
    }
}

void func_800ECDBC(void) {
    if (sCurOcarinaBtnVal != 0xFF && sOcarinaHasStartedSong == 0) {
        sOcarinaHasStartedSong = 1;
        sLearnSongLastBtn = 0xFF;
    }
}

void func_800ECDF8(void) {
    u16 sh;
    u16 pad;
    u8 inputChanged = 0;
    u16 pad2;
    s8 sp57 = 0;
    u8 i;
    OcarinaNote* prevNote;
    OcarinaNote* note;

    func_800ECDBC();

    if (sOcarinaHasStartedSong) {
        if ((D_80130F2C < 0 ? -D_80130F2C : D_80130F2C) >= 0x15) {
            D_80130F3C = 0;
            return;
        }

        // clang-format off
        if (sPrevOcarinaNoteVal == sCurOcarinaBtnVal || sCurOcarinaBtnVal == 0xFF) { inputChanged = 1; }
        // clang-format on

        for (i = sOcarinaSongNoteStartIdx; i < sOcarinaSongCnt; i++) {
            sh = 1 << i;
            if (sOcarinaAvailSongs & sh) {
                D_8016BA50[i] = D_8016BA70[i] + 0x12;
                if (inputChanged) {
                    // (pointless if check, this is always true)
                    if ((D_8016BA50[i] >= D_8016BA70[i] - 0x12) && (D_8016BA50[i] >= D_8016BA70[i] + 0x12) &&
                        (sOcarinaSongs[i][sLearnSongPos[i]].unk_02 == 0) &&
                        (sLearnSongLastBtn == sLearnSongExpectedNote[i])) {
                        D_80131878 = i + 1;
                        sOcarinaInpEnabled = 0;
                        D_80130F3C = 0;
                    }
                } else if (D_8016BA50[i] >= (D_8016BA70[i] - 0x12)) {
                    if (sLearnSongLastBtn != 0xFF) {
                        if (sLearnSongLastBtn == sLearnSongExpectedNote[i]) {
                            if (i == 12) {
                                D_8016BA50[i] = 0;
                            }
                        } else {
                            sOcarinaAvailSongs ^= sh;
                        }
                    }

                    prevNote = &sOcarinaSongs[i][sLearnSongPos[i]];
                    note = &sOcarinaSongs[i][++sLearnSongPos[i]];
                    D_8016BA70[i] = prevNote->unk_02;
                    sLearnSongExpectedNote[i] = prevNote->noteIdx;

                    if (sCurOcarinaBtnVal != sLearnSongExpectedNote[i]) {
                        sOcarinaAvailSongs ^= sh;
                    }
                    while (prevNote->noteIdx == note->noteIdx || (note->noteIdx == 0xFF && note->unk_02 != 0)) {
                        D_8016BA70[i] += note->unk_02;
                        prevNote = &sOcarinaSongs[i][sLearnSongPos[i]];
                        note = &sOcarinaSongs[i][sLearnSongPos[i] + 1];
                        sLearnSongPos[i]++;
                    }
                } else if (D_8016BA50[i] < 0xA) {
                    sp57 = -1;
                    D_8016BA50[i] = 0;
                    sLearnSongLastBtn = sCurOcarinaBtnVal;
                } else {
                    sOcarinaAvailSongs ^= sh;
                }
            }

            if (sOcarinaAvailSongs == 0 && D_8016BA2E >= D_8013187C) {
                sOcarinaInpEnabled = 0;
                if (CHECK_BTN_ANY(D_80130F3C, BTN_B) && sCurOcarinaBtnVal == sOcarinaSongs[i][0].noteIdx) {
                    D_80130F4C = D_80130F3C;
                }
                D_80130F3C = 0;
                return;
            }
        }

        if (!inputChanged) {
            sLearnSongLastBtn = sCurOcarinaBtnVal;
            D_8016BA2E += sp57 + 1;
        }
    }
}

void func_800ED200(void) {
    u32 temp_v0;
    u8 i;
    u8 j;
    u8 k;

    if (CHECK_BTN_ANY(sCurOcarinaBtnPress, BTN_L) && CHECK_BTN_ANY(sCurOcarinaBtnPress, sOcarinaAllowedBtnMask)) {
        func_800ECC04((u16)D_80130F3C);
        return;
    }

    func_800ECDBC();

    if (sOcarinaHasStartedSong) {
        if ((sPrevOcarinaNoteVal != sCurOcarinaBtnVal) && (sCurOcarinaBtnVal != 0xFF)) {
            D_8016BA2E++;
            if (D_8016BA2E >= 9) {
                D_8016BA2E = 1;
            }

            if (sOcarinaSongAppendPos == 8) {
                for (i = 0; i < 7; i++) {
                    sCurOcarinaSong[i] = sCurOcarinaSong[i + 1];
                }
            } else {
                sOcarinaSongAppendPos++;
            }

            if ((D_80130F2C < 0 ? -D_80130F2C : D_80130F2C) >= 0x15) {
                sCurOcarinaSong[sOcarinaSongAppendPos - 1] = 0xFF;
            } else {
                sCurOcarinaSong[sOcarinaSongAppendPos - 1] = sCurOcarinaBtnVal;
            }

            for (i = sOcarinaSongNoteStartIdx; i < sOcarinaSongCnt; i++) {
                if (sOcarinaAvailSongs & (u16)(1 << i)) {
                    for (j = 0, k = 0;
                         j < gOcarinaSongNotes[i].len && k == 0 && sOcarinaSongAppendPos >= gOcarinaSongNotes[i].len;) {
                        temp_v0 = sCurOcarinaSong[(sOcarinaSongAppendPos - gOcarinaSongNotes[i].len) + j];
                        if (temp_v0 == sOcarinaNoteValues[gOcarinaSongNotes[i].notesIdx[j]]) {
                            j++;
                        } else {
                            k++;
                        }
                    }

                    if (j == gOcarinaSongNotes[i].len) {
                        D_80131878 = i + 1;
                        sOcarinaInpEnabled = 0;
                        D_80130F3C = 0;
                    }
                }
            }
        }
    }
}

void func_800ED458(s32 arg0) {
    u32 phi_v1_2;

    if (D_80130F3C != 0 && D_80131880 != 0) {
        D_80131880--;
        return;
    }

    if ((D_8016BA10 == 0) ||
        ((D_8016BA10 & sOcarinaAllowedBtnMask) != (sCurOcarinaBtnPress & sOcarinaAllowedBtnMask))) {
        D_8016BA10 = 0;
        if (1) {}
        sCurOcarinaBtnVal = 0xFF;
        sCurOcarinaBtnIdx = 0xFF;
        phi_v1_2 = (sCurOcarinaBtnPress & sOcarinaAllowedBtnMask) & (sPrevOcarinaBtnPress & sOcarinaAllowedBtnMask);
        if (!(D_8016BA18 & phi_v1_2) && (sCurOcarinaBtnPress != 0)) {
            D_8016BA18 = sCurOcarinaBtnPress;
        } else {
            D_8016BA18 &= phi_v1_2;
        }

        if (D_8016BA18 & sOcarinaABtnMap) {
            osSyncPrintf("Presss NA_KEY_D4 %08x\n", sOcarinaABtnMap);
            sCurOcarinaBtnVal = 2;
            sCurOcarinaBtnIdx = 0;
        } else if (D_8016BA18 & sOcarinaCDownBtnMap) {
            osSyncPrintf("Presss NA_KEY_F4 %08x\n", sOcarinaCDownBtnMap);
            sCurOcarinaBtnVal = 5;
            sCurOcarinaBtnIdx = 1;
        } else if (D_8016BA18 & 1) {
            osSyncPrintf("Presss NA_KEY_A4 %08x\n", 1);
            sCurOcarinaBtnVal = 9;
            sCurOcarinaBtnIdx = 2;
        } else if (D_8016BA18 & 2) {
            osSyncPrintf("Presss NA_KEY_B4 %08x\n", 2);
            sCurOcarinaBtnVal = 0xB;
            sCurOcarinaBtnIdx = 3;
        } else if (D_8016BA18 & sOcarinaCUPBtnMap) {
            osSyncPrintf("Presss NA_KEY_D5 %08x\n", sOcarinaCUPBtnMap);
            sCurOcarinaBtnVal = 0xE;
            sCurOcarinaBtnIdx = 4;
        }

        if (sCurOcarinaBtnVal != 0xFF && sCurOcarinaBtnPress & 0x10 && D_80131858 != 2) {
            sCurOcarinaBtnIdx += 0x80;
            sCurOcarinaBtnVal++;
        }

        if ((sCurOcarinaBtnVal != 0xFF) && (sCurOcarinaBtnPress & 0x2000) && (D_80131858 != 2)) {
            sCurOcarinaBtnIdx += 0x40;
            sCurOcarinaBtnVal--;
        }

        if (D_80131858 != 2) {
            D_80130F2C = sCurOcaStick.y;
            D_80130F24 = Audio_OcaAdjStick(D_80130F2C);

            D_80130F34 = (sCurOcaStick.x < 0 ? -sCurOcaStick.x : sCurOcaStick.x) >> 2;
            Audio_QueueCmdS8(0x6020D06, D_80130F34);
        } else {
            D_80130F2C = 0;
            D_80130F24 = 1.0f;
        }

        if ((sCurOcarinaBtnVal != 0xFF) && (sPrevOcarinaNoteVal != sCurOcarinaBtnVal)) {
            Audio_QueueCmdS8(0x6020D07, D_80130F10 - 1);
            Audio_QueueCmdS8(0x6020D05, sCurOcarinaBtnVal);
            Audio_PlaySoundGeneral(NA_SE_OC_OCARINA, &D_801333D4, 4, &D_80130F24, &D_80130F28, &D_801333E8);
        } else if ((sPrevOcarinaNoteVal != 0xFF) && (sCurOcarinaBtnVal == 0xFF)) {
            Audio_StopSfx(NA_SE_OC_OCARINA);
        }
    }
}

void func_800ED848(u8 inputEnabled) {
    sOcarinaInpEnabled = inputEnabled;
}

void func_800ED858(u8 arg0) {
    if (D_80130F10 == arg0) {
        return;
    }

    Audio_SeqCmd8(2, 1, 0xD, arg0);
    D_80130F10 = arg0;
    if (arg0 == 0) {
        sCurOcarinaBtnPress = 0;
        sPrevOcarinaBtnPress = 0;
        D_8016BA18 = 0;
        D_8016BA10 = 0xFFFF;
        func_800ED458(0);
        Audio_StopSfx(NA_SE_OC_OCARINA);
        Audio_SetSoundBanksMute(0);
        sPlaybackState = 0;
        sStaffPlaybackPos = 0;
        sOcarinaInpEnabled = 0;
        D_80130F3C = 0;
        Audio_ClearBGMMute(0xD);
    } else {
        sCurOcarinaBtnPress = 0;
        Audio_GetOcaInput();
        D_8016BA10 = sCurOcarinaBtnPress;
        Audio_QueueSeqCmdMute(0xD);
    }
}

void func_800ED93C(s8 songIdx, s8 arg1) {
    if (songIdx == 0) {
        sPlaybackState = 0;
        Audio_StopSfx(NA_SE_OC_OCARINA);
        return;
    }

    if (songIdx < 0xF) {
        sPlaybackSong = sOcarinaSongs[songIdx - 1];
    } else {
        sPlaybackSong = sPierresSong;
    }

    sPlaybackState = arg1;
    sNotePlaybackTimer = 0;
    sDisplayedNoteValue = 0xFF;
    sPlaybackNotePos = 0;
    sStaffPlaybackPos = 0;
    while (sPlaybackSong[sPlaybackNotePos].noteIdx == 0xFF) {
        sPlaybackNotePos++;
    }
}

void Audio_OcaPlayback(void) {
    u32 noteTimerStep;
    u32 nextNoteTimerStep;

    if (sPlaybackState != 0) {
        if (sStaffPlaybackPos == 0) {
            noteTimerStep = 3;
        } else {
            noteTimerStep = D_8016BA04 - D_80130F68;
        }

        if (noteTimerStep < sNotePlaybackTimer) {
            sNotePlaybackTimer -= noteTimerStep;
        } else {
            nextNoteTimerStep = noteTimerStep - sNotePlaybackTimer;
            sNotePlaybackTimer = 0;
        }

        if (sNotePlaybackTimer == 0) {

            sNotePlaybackTimer = sPlaybackSong[sPlaybackNotePos].unk_02;

            if (sPlaybackNotePos == 1) {
                sNotePlaybackTimer++;
            }

            if (sNotePlaybackTimer == 0) {
                sPlaybackState--;
                if (sPlaybackState != 0) {
                    sPlaybackNotePos = 0;
                    sStaffPlaybackPos = 0;
                    sDisplayedNoteValue = 0xFF;
                } else {
                    Audio_StopSfx(NA_SE_OC_OCARINA);
                }
                return;
            } else {
                sNotePlaybackTimer -= nextNoteTimerStep;
            }

            if (sNotePlaybackVolume != sPlaybackSong[sPlaybackNotePos].volume) {
                sNotePlaybackVolume = sPlaybackSong[sPlaybackNotePos].volume;
                sNormalizedNotePlaybackVolume = sNotePlaybackVolume / 127.0f;
            }

            if (sNotePlaybackVibrato != sPlaybackSong[sPlaybackNotePos].vibrato) {
                sNotePlaybackVibrato = sPlaybackSong[sPlaybackNotePos].vibrato;
                Audio_QueueCmdS8(0x06020D06, sNotePlaybackVibrato);
            }

            if (sNotePlaybackTone != sPlaybackSong[sPlaybackNotePos].tone) {
                sNotePlaybackTone = sPlaybackSong[sPlaybackNotePos].tone;
                sNormalizedNotePlaybackTone = Audio_OcaAdjStick(sNotePlaybackTone);
            }

            if ((sPlaybackSong[sPlaybackNotePos].volume == sPlaybackSong[sPlaybackNotePos - 1].volume &&
                 (sPlaybackSong[sPlaybackNotePos].vibrato == sPlaybackSong[sPlaybackNotePos - 1].vibrato) &&
                 (sPlaybackSong[sPlaybackNotePos].tone == sPlaybackSong[sPlaybackNotePos - 1].tone))) {
                sDisplayedNoteValue = 0xFE;
            }

            if (sDisplayedNoteValue != sPlaybackSong[sPlaybackNotePos].noteIdx) {
                u8 tmp = sPlaybackSong[sPlaybackNotePos].noteIdx;
                if (tmp == 0xA) {
                    sDisplayedNoteValue = tmp + sPlaybackSong[sPlaybackNotePos].semitone;
                } else {
                    sDisplayedNoteValue = tmp;
                }

                if (sDisplayedNoteValue != 0xFF) {
                    sStaffPlaybackPos++;
                    Audio_QueueCmdS8(0x6020D07, D_80130F10 - 1);
                    Audio_QueueCmdS8(0x6020D05, sDisplayedNoteValue & 0x3F);
                    Audio_PlaySoundGeneral(NA_SE_OC_OCARINA, &D_801333D4, 4, &sNormalizedNotePlaybackTone,
                                           &sNormalizedNotePlaybackVolume, &D_801333E8);
                } else {
                    Audio_StopSfx(NA_SE_OC_OCARINA);
                }
            }
            sPlaybackNotePos++;
        }
    }
}

void func_800EDD68(u8 arg0) {
    u16 i;
    u16 i2;
    u16 mad2;
    u8 mad;
    OcarinaNote* note;
    u8 j;
    u8 k;
    s32 t;
    OcarinaNote* song;

    if (D_80131858 == 1) {
        song = gScarecrowCustomSongPtr;
    } else {
        song = D_80131BEC;
    }
    song[sRecordSongPos].noteIdx = D_80131864;
    song[sRecordSongPos].unk_02 = D_8016BA04 - D_80131860;
    song[sRecordSongPos].volume = D_80131868;
    song[sRecordSongPos].vibrato = D_8013186C;
    song[sRecordSongPos].tone = D_80131870;
    song[sRecordSongPos].semitone = D_80131874 & 0xC0;
    D_80131864 = sCurOcarinaBtnVal;
    D_80131868 = D_80130F30;
    D_8013186C = D_80130F34;
    D_80131870 = D_80130F2C;
    D_80131874 = sCurOcarinaBtnIdx;
    sRecordSongPos++;

    if ((sRecordSongPos != 107) && (arg0 == 0)) {
        return;
    }

    i = sRecordSongPos;
    mad = 0xFF;
    while (i != 0 && mad == 0xFF) {
        i--;
        mad = song[i].noteIdx;
    }

    if (1) {}

    if (sRecordSongPos != (i + 1)) {
        sRecordSongPos = i + 2;
        song[sRecordSongPos - 1].unk_02 = 0;
    }

    song[sRecordSongPos].unk_02 = 0;

    if (D_80131858 == 2) {
        if (D_8016BA2E >= 8) {
            for (i = 0; i < sRecordSongPos; i++) {
                song[i] = song[i + 1];
            }

            func_800ECB7C(0xD);

            for (i = 0; i < 12; i++) {
                for (j = 0; j < 9 - gOcarinaSongNotes[i].len; j++) {
                    for (k = 0; k < gOcarinaSongNotes[i].len && k + j < 8 &&
                                gOcarinaSongNotes[i].notesIdx[k] == gOcarinaSongNotes[12].notesIdx[k + j];
                         k++) {
                        ;
                    }

                    if (k == gOcarinaSongNotes[i].len) {
                        D_80131858 = 0xFF;
                        sOcarinaSongs[12][1].volume = 0xFF;
                        return;
                    }
                }
            }

            i = 1;
            while (i < 8) {
                if (gOcarinaSongNotes[12].notesIdx[0] != gOcarinaSongNotes[12].notesIdx[i]) {
                    i = 9;
                } else {
                    i++;
                }
            }

            if (i == 8) {
                D_80131858 = 0xFF;
                sOcarinaSongs[12][1].volume = 0xFF;
                return;
            }

            for (i = 0; i < sRecordSongPos; i++) {
                sOcarinaSongs[12][i] = sOcarinaSongs[13][i];
            }

            sOcarinaInpEnabled = 0;
        } else {
            sOcarinaSongs[12][1].volume = 0xFF;
        }
    }
    D_80131858 = 0;
}

// start custom song?
/**
 * arg0 = 1, start
 * arg0 = 0, finish
 * arg0 = 2, also start?
 */
void func_800EE170(u8 arg0) {
    if ((u32)arg0 == D_80131858) {
        return;
    }

    if (arg0 != 0) {
        D_80131860 = D_8016BA04;
        D_80131864 = 0xFF;
        D_80131868 = 0x57;
        D_8013186C = 0;
        D_80131870 = 0;
        D_80131874 = 0;
        sRecordSongPos = 0;
        sOcarinaInpEnabled = 1;
        D_8016BA2E = 0;
        D_8016BAA0 = sPierresSong[1];
    } else {
        if (sRecordSongPos == 0) {
            sPierresSong[1] = D_8016BAA0;
        } else {
            if (D_80131858 == 2) {
                D_8016BA2E = 1;
            }

            func_800EDD68(1);
        }

        sOcarinaInpEnabled = 0;
        D_8016BA2E = 0;
    }

    D_80131858 = arg0;
}

void func_800EE29C(void) {
    D_8016BA00.state = D_80131858;
    D_8016BA00.pos = D_8016BA2E;
    if (D_80131858 == 0xFF) {
        D_80131858 = 0;
    }
}

void func_800EE2D4(void) {
    D_8016B9F8.noteIdx = sCurOcarinaBtnIdx & 0x3F;
    D_8016B9F8.state = func_800ECAF0();
    D_8016B9F8.pos = D_8016BA2E;
}

void func_800EE318(void) {
    if ((sDisplayedNoteValue & 0x3F) < 0x10) {
        sDisplayedStaff.noteIdx = Audio_OcaMapNoteValue(sDisplayedNoteValue);
    }

    sDisplayedStaff.state = sPlaybackState;

    if (sPlaybackSong != sPierresSong) {
        sDisplayedStaff.pos = sStaffPlaybackPos;
    } else if (sStaffPlaybackPos == 0) {
        sDisplayedStaff.pos = 0;
    } else {
        sDisplayedStaff.pos = ((sStaffPlaybackPos - 1) % 8) + 1;
    }
}

OcarinaStaff* func_800EE3C8(void) {
    return &D_8016BA00;
}

OcarinaStaff* func_800EE3D4(void) {
    if (D_8016B9F8.state < 0xFE) {
        D_80130F3C = 0;
    }
    return &D_8016B9F8;
}

OcarinaStaff* Audio_OcaGetDisplayStaff(void) {
    return &sDisplayedStaff;
}

void func_800EE404(void) {
    s32 noteChanged;

    if ((D_80131858 != 0) && ((D_8016BA04 - D_80131860) >= 3)) {
        noteChanged = false;
        if (D_80131864 != sCurOcarinaBtnVal) {
            if (sCurOcarinaBtnVal != 0xFF) {
                D_8016BA00.noteIdx = sCurOcarinaBtnIdx & 0x3F;
                D_8016BA2E++;
            } else if ((D_80131858 == 2) && (D_8016BA2E == 8)) {
                func_800EDD68(1);
                return;
            }

            if (D_8016BA2E > 8) {
                if (D_80131858 == 2) {
                    // notes played are over 8 and in recording mode.
                    func_800EDD68(1);
                    return;
                }
                D_8016BA2E = true;
            }

            noteChanged = true;
        } else if (D_80131868 != D_80130F30) {
            noteChanged = true;
        } else if (D_8013186C != D_80130F34) {
            noteChanged = true;
        } else if (D_80131870 != D_80130F2C) {
            noteChanged = true;
        }

        if (noteChanged) {
            func_800EDD68(0);
            D_80131860 = D_8016BA04;
        }
    }
}

void func_800EE57C(u8 minigameIdx) {
    u8 i;

    if (minigameIdx > 2) {
        minigameIdx = 2;
    }

    sOcaMinigameApndPos = 0;
    sOcaMinigameEndPos = sOcaMinigameNoteCnts[minigameIdx];

    for (i = 0; i < 3; i++) {
        func_800EE5EC();
    }
}

#define OCA_MEMORYGAME_IDX 0xD
s32 func_800EE5EC(void) {
    u32 rnd;
    u8 rndNote;

    if (sOcaMinigameApndPos == sOcaMinigameEndPos) {
        return 1;
    }

    rnd = Audio_NextRandom();
    rndNote = sOcarinaNoteValues[rnd % 5];

    if (sOcarinaSongs[OCA_MEMORYGAME_IDX][sOcaMinigameApndPos - 1].noteIdx == rndNote) {
        rndNote = sOcarinaNoteValues[(rnd + 1) % 5];
    }

    sOcarinaSongs[OCA_MEMORYGAME_IDX][sOcaMinigameApndPos].noteIdx = rndNote;
    sOcarinaSongs[OCA_MEMORYGAME_IDX][sOcaMinigameApndPos].unk_02 = 0x2D;
    sOcarinaSongs[OCA_MEMORYGAME_IDX][sOcaMinigameApndPos].volume = 0x50;
    sOcarinaSongs[OCA_MEMORYGAME_IDX][sOcaMinigameApndPos].vibrato = 0;
    sOcarinaSongs[OCA_MEMORYGAME_IDX][sOcaMinigameApndPos].tone = 0;

    sOcaMinigameApndPos++;

    sOcarinaSongs[OCA_MEMORYGAME_IDX][sOcaMinigameApndPos].noteIdx = 0xFF;
    sOcarinaSongs[OCA_MEMORYGAME_IDX][sOcaMinigameApndPos].unk_02 = 0;
    sOcarinaSongs[OCA_MEMORYGAME_IDX][sOcaMinigameApndPos + 1].noteIdx = 0xFF;
    sOcarinaSongs[OCA_MEMORYGAME_IDX][sOcaMinigameApndPos + 1].unk_02 = 0;
    if (1) {}
    return 0;
}

// input update?
void func_800EE6F4(void) {
    D_8016BA04 = gAudioContext.totalTaskCnt;
    if (D_80130F10 != 0) {
        if (sOcarinaInpEnabled == 1) {
            Audio_GetOcaInput();
        }
        if ((sPlaybackState == 0) && (sOcarinaInpEnabled == 1)) {
            func_800ED458(0);
        }
        if (D_80130F3C != 0) {
            if (D_80130F3C & 0x4000) {
                func_800ED200();
            } else {
                func_800ECDF8();
            }
        }

        Audio_OcaPlayback();
        D_80130F68 = D_8016BA04;

        if (sPlaybackState == 0) {
            func_800EE404();
        }

        if ((D_80130F3C != 0) && (sPrevOcarinaNoteVal != sCurOcarinaBtnVal)) {
            D_80131880 = 1;
        }

        sPrevOcarinaNoteVal = sCurOcarinaBtnVal;
    }

    func_800EE2D4();
    func_800EE318();
    func_800EE29C();
}

void func_800EE824(void) {
    static u8 D_80131C80 = 0;
    static u8 D_80131C84 = 1;
    static u16 D_80131C88 = 1200;

    switch (D_80131C80) {
        case 0:
            if (D_80131C88-- == 0) {
                if (D_80131C84 < 7) {
                    D_80131C80++;
                } else {
                    D_80131C80 = 3;
                    func_800ED858(0);
                }
                D_80131C88 = 1200;
            }
            break;
        case 1:
            Audio_SetSoundBanksMute(0);
            func_800ED858(D_80131C84);
            func_800ED93C(0xF, 1);
            D_80131C84++;
            D_80131C80++;
            break;
        case 2:
            if (Audio_OcaGetDisplayStaff()->state == 0) {
                D_80131C80 = 0;
            }
            break;
    }
}

void func_800EE930(void) {
    D_8016B9F8.noteIdx = 0xFF;
    D_8016B9F8.state = 0xFF;
    D_8016B9F8.pos = 0;
    sDisplayedStaff.noteIdx = 0xFF;
    sDisplayedStaff.state = 0;
    sDisplayedStaff.pos = 0;
    D_8016BA00.noteIdx = 0xFF;
    D_8016BA00.state = 0xFF;
    D_8016BA00.pos = 0;
    D_80131880 = 0;
}

f32 D_80131C8C = 0.0f;

// === Audio Debugging ===

// These variables come between in-function statics in func_800EE824 and func_800F510C

f32 sAudioUpdateDuration = 0.0f;
f32 sAudioUpdateDurationMax = 0.0f;
u8 sAudioDebugEverOpened = 0;
u8 sAudioSEMuted = 0;
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
u8 sAudioSEFlagSwapIsEditing = 0;
u8 sAudioSEFlagSwapSel = 0;
u8 sAudioSEFlagSwapNibbleSel = 0;
char sAudioSEFlagSwapModeNames[2][5] = { "SWAP", "ADD" };
u8 sAudioSEParamChgSel = 0;
u8 sAudioSEParamChgBitSel = 0;
u16 sAudioSEParamChgWork[4] = { 0 };
u8 sAudioSubTrackInfoPlayerSel = 0;
u8 sAudioSubTrackInfoChannelSel = 0;
u8 sSeqPlayerPeakNumLayers[20] = { 0 };
char sAudioSceneNames[3][2] = { "A", "S", "X" };
u8 sAudioBlkChgBgmWork[2] = { 0 };
u8 sAudioBlkChgBgmSel = 0;
char sBoolStrs[3][5] = { "OFF", "ON", "STBY" };
u8 sAudioNatureFailed = 0;
u8 sPeakNumNotes = 0;

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

    for (i = 0; i < gAudioSpecs[gAudioSpecId].maxSimultaneousNotes; i++) {
        if (gAudioContext.notes[i].noteSubEu.bitField0.s.enabled == 1) {
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
            GfxPrint_Printf(printer, "SE MUTE:%s", sBoolStrs[sAudioSEMuted]);

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
                GfxPrint_Printf(printer, "%02x %04x %02x %08x", i, gSoundBanks[ind][i].sfxId,
                                gSoundBanks[ind][i].unk_2A, gSoundBanks[ind][i].priority);
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

                for (k2 = 0; k2 < D_80130578[D_801333CC][k]; k2++) {
#define entryIndex (D_8016E1B8[k][k2].unk_4)
#define entry (&gSoundBanks[k][entryIndex])
#define chan (gAudioContext.seqPlayers[2].channels[entry->unk_2E])
                    GfxPrint_SetPos(printer, 2 + sAudioIntInfoX, 5 + ind + sAudioIntInfoY);
                    if (sAudioIntInfoBankPage[k] == 1) {
                        if ((entryIndex != 0xFF) && ((entry->unk_2A == 4) || (entry->unk_2A == 5))) {
                            GfxPrint_Printf(printer, "%2X %5d %5d %5d %02X %04X %04X", entryIndex, (s32)*entry->posX,
                                            (s32)*entry->posY, (s32)*entry->posZ, entry->sfxImportance,
                                            entry->sfxParams, entry->sfxId);
                        } else {
                            GfxPrint_Printf(printer, "FF ----- ----- ----- -- ---- ----");
                        }
                    } else if (sAudioIntInfoBankPage[k] == 2) {
                        if ((entryIndex != 0xFF) && ((entry->unk_2A == 4) || (entry->unk_2A == 5))) {
                            GfxPrint_Printf(printer, "%2X %5d %5d %5d %3d %3d %04X", entryIndex, (s32)*entry->posX,
                                            (s32)*entry->posY, (s32)*entry->posZ, (s32)(chan->volume * 127.1f),
                                            chan->newPan, entry->sfxId);
                        } else {
                            GfxPrint_Printf(printer, "FF ----- ----- ----- --- --- ----");
                        }
                    } else if (sAudioIntInfoBankPage[k] == 3) {
                        if ((entryIndex != 0xFF) && ((entry->unk_2A == 4) || (entry->unk_2A == 5))) {
                            GfxPrint_Printf(printer, "%2X %5d %5d %5d %3d %3d %04X", entryIndex, (s32)*entry->posX,
                                            (s32)*entry->posY, (s32)*entry->posZ, (s32)(chan->freqScale * 100.0f),
                                            chan->reverb, entry->sfxId);
                        } else {
                            GfxPrint_Printf(printer, "FF ----- ----- ----- --- --- ----");
                        }
                    } else if (sAudioIntInfoBankPage[k] == 4) {
                        if ((entryIndex != 0xFF) && ((entry->unk_2A == 4) || (entry->unk_2A == 5))) {
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

        case PAGE_SE_FLAG_SWAP:
            GfxPrint_SetPos(printer, 3, 4);
            SETCOL(255, 255, 255);
            if (gAudioSEFlagSwapOff) {
                GfxPrint_Printf(printer, "SWAP OFF");
            }

            if (sAudioSEFlagSwapIsEditing == 0) {
                SETCOL(255, 255, 255);
            } else {
                SETCOL(127, 127, 127);
            }
            GfxPrint_SetPos(printer, 2, 6 + sAudioSEFlagSwapSel);
            GfxPrint_Printf(printer, "*");

            ctr = sAudioSEFlagSwapNibbleSel;
            if (sAudioSEFlagSwapNibbleSel >= 4) {
                ctr++;
            }
            if (sAudioSEFlagSwapIsEditing == 1) {
                SETCOL(255, 255, 255);
                GfxPrint_SetPos(printer, 3 + ctr, 5);
                GfxPrint_Printf(printer, "V");
            }

            for (i = 0; i < 10; i++) {
                if (i == sAudioSEFlagSwapSel) {
                    if (sAudioSEFlagSwapIsEditing == 0) {
                        SETCOL(192, 192, 192);
                    } else {
                        SETCOL(255, 255, 255);
                    }
                } else if (sAudioSEFlagSwapIsEditing == 0) {
                    SETCOL(144, 144, 144);
                } else {
                    SETCOL(96, 96, 96);
                }
                GfxPrint_SetPos(printer, 3, 6 + i);
                GfxPrint_Printf(printer, "%04x %04x %s", gAudioSEFlagSwapSource[i], gAudioSEFlagSwapTarget[i],
                                sAudioSEFlagSwapModeNames[gAudioSEFlagSwapMode[i]]);
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
                                    ->bankId);

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
            GfxPrint_Printf(printer, "TOTAL  %d", D_8014A6C4.heap);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "DRIVER %05X / %05X",
                            gAudioContext.notesAndBuffersPool.cur - gAudioContext.notesAndBuffersPool.start,
                            gAudioContext.notesAndBuffersPool.size);

            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(
                printer, "AT-SEQ %02X-%02X (%05X-%05X / %05X)", (u8)gAudioContext.seqLoadedPool.temporary.entries[0].id,
                (u8)gAudioContext.seqLoadedPool.temporary.entries[1].id,
                gAudioContext.seqLoadedPool.temporary.entries[0].size,
                gAudioContext.seqLoadedPool.temporary.entries[1].size, gAudioContext.seqLoadedPool.temporary.pool.size);

            GfxPrint_SetPos(printer, 3, 7);
            GfxPrint_Printf(printer, "AT-BNK %02X-%02X (%05X-%05X / %05X)",
                            (u8)gAudioContext.bankLoadedPool.temporary.entries[0].id,
                            (u8)gAudioContext.bankLoadedPool.temporary.entries[1].id,
                            gAudioContext.bankLoadedPool.temporary.entries[0].size,
                            gAudioContext.bankLoadedPool.temporary.entries[1].size,
                            gAudioContext.bankLoadedPool.temporary.pool.size);

            GfxPrint_SetPos(printer, 3, 8);
            GfxPrint_Printf(
                printer, "ST-SEQ %02Xseqs  (%05X / %06X)", gAudioContext.seqLoadedPool.persistent.numEntries,
                gAudioContext.seqLoadedPool.persistent.pool.cur - gAudioContext.seqLoadedPool.persistent.pool.start,
                gAudioContext.seqLoadedPool.persistent.pool.size);

            for (k = 0; (u32)k < gAudioContext.seqLoadedPool.persistent.numEntries; k++) {
                GfxPrint_SetPos(printer, 3 + 3 * k, 9);
                GfxPrint_Printf(printer, "%02x", gAudioContext.seqLoadedPool.persistent.entries[k].id);
            }

            GfxPrint_SetPos(printer, 3, 10);
            GfxPrint_Printf(
                printer, "ST-BNK %02Xbanks (%05X / %06X)", gAudioContext.bankLoadedPool.persistent.numEntries,
                gAudioContext.bankLoadedPool.persistent.pool.cur - gAudioContext.bankLoadedPool.persistent.pool.start,
                gAudioContext.bankLoadedPool.persistent.pool.size);

            for (k = 0; (u32)k < gAudioContext.bankLoadedPool.persistent.numEntries; k++) {
                GfxPrint_SetPos(printer, 3 + 3 * k, 11);
                GfxPrint_Printf(printer, "%02x", gAudioContext.bankLoadedPool.persistent.entries[k].id);
            }

            GfxPrint_SetPos(printer, 3, 12);
            GfxPrint_Printf(printer, "E-MEM  %05X / %05X", gAudioContext.unk_2D50.cur - gAudioContext.unk_2D50.start,
                            gAudioContext.unk_2D50.size);
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
            GfxPrint_Printf(printer, "NEXT SCENE %02X %s", (u8)gAudioContext.seqPlayers[0].unk_158[2],
                            sAudioSceneNames[(u8)gAudioContext.seqPlayers[0].unk_158[2]]);

            GfxPrint_SetPos(printer, 3, 8);
            GfxPrint_Printf(printer, "NOW SCENE  %02X %s", (u8)gAudioContext.seqPlayers[0].unk_158[4],
                            sAudioSceneNames[(u8)gAudioContext.seqPlayers[0].unk_158[4]]);

            GfxPrint_SetPos(printer, 3, 9);
            GfxPrint_Printf(printer, "NOW BLOCK  %02X", (gAudioContext.seqPlayers[0].unk_158[5] + 1) & 0xFF);

            GfxPrint_SetPos(printer, 3, 11);
            GfxPrint_Printf(printer, "PORT");

            GfxPrint_SetPos(printer, 3, 12);
            GfxPrint_Printf(printer, "%02X %02X %02X %02X", (u8)gAudioContext.seqPlayers[0].unk_158[0],
                            (u8)gAudioContext.seqPlayers[0].unk_158[1], (u8)gAudioContext.seqPlayers[0].unk_158[2],
                            (u8)gAudioContext.seqPlayers[0].unk_158[3]);

            GfxPrint_SetPos(printer, 3, 13);
            GfxPrint_Printf(printer, "%02X %02X %02X %02X", (u8)gAudioContext.seqPlayers[0].unk_158[4],
                            (u8)gAudioContext.seqPlayers[0].unk_158[5], (u8)gAudioContext.seqPlayers[0].unk_158[6],
                            (u8)gAudioContext.seqPlayers[0].unk_158[7]);
            break;

        case PAGE_OCARINA_TEST:
            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 4);
            GfxPrint_Printf(printer, "SEQ INFO  : %2d %02x %d", sDisplayedStaff.noteIdx, sDisplayedStaff.state,
                            sDisplayedStaff.pos);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "PLAY INFO : %2d %02x %d", D_8016B9F8.noteIdx, D_8016B9F8.state, D_8016B9F8.pos);

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
            GfxPrint_Printf(printer, "OCA:%02x SEQ:%04x PLAY:%02x REC:%02x", D_80130F10, D_80130F3C, sPlaybackState,
                            D_80131858);
            break;

        case PAGE_SE_PARAMETER_CHANGE:
            GfxPrint_SetPos(printer, 2, 4 + sAudioSEParamChgSel);
            SETCOL(127, 255, 127);
            GfxPrint_Printf(printer, "*");

            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 4);
            GfxPrint_Printf(printer, "SE HD  : %02x %s", sAudioSEParamChgWork[0],
                            sSoundBankNames[sAudioSEParamChgWork[0]]);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "SE No. : %02x", sAudioSEParamChgWork[1]);

            GfxPrint_SetPos(printer, 20, 6);
            GfxPrint_Printf(printer, "       : %04x",
                            gSoundParams[sAudioSEParamChgWork[0]][sAudioSEParamChgWork[1]].params);

            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(
                printer, "SE SW    %s",
                AudioDebug_ToStringBinary(gSoundParams[sAudioSEParamChgWork[0]][sAudioSEParamChgWork[1]].params, 16));

            SETCOL(127, 255, 127);
            digitStr[0] = (char)('0' + ((gSoundParams[sAudioSEParamChgWork[0]][sAudioSEParamChgWork[1]].params >>
                                         (15 - sAudioSEParamChgBitSel)) &
                                        1));
            GfxPrint_SetPos(printer, 12 + sAudioSEParamChgBitSel, 6);
            GfxPrint_Printf(printer, "%s", digitStr);

            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 7);
            GfxPrint_Printf(printer, "SE PR  : %02x",
                            gSoundParams[sAudioSEParamChgWork[0]][sAudioSEParamChgWork[1]].importance);
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
            func_800F6828(0x20);
        } else {
            func_800F6828(0);
        }
    }

    if (sAudioSndContSel == 9) {
        if (sAudioSndContWork[sAudioSndContSel] != 0) {
            func_800F67A0(0x20);
        } else {
            func_800F67A0(0);
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
                func_800F87A0(sAudioSndContWork[2]);
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

void AudioDebug_ProcessInput_SEFlagSwap(void) {
    s16 step;
    u16 val;
    u8 prev;

    if (!sAudioSEFlagSwapIsEditing) {
        if (CHECK_BTN_ANY(sDebugPadPress, BTN_DUP)) {
            if (sAudioSEFlagSwapSel > 0) {
                sAudioSEFlagSwapSel--;
            } else {
                sAudioSEFlagSwapSel = 9;
            }
        }

        if (CHECK_BTN_ANY(sDebugPadPress, BTN_DDOWN)) {
            if (sAudioSEFlagSwapSel < 9) {
                sAudioSEFlagSwapSel++;
            } else {
                sAudioSEFlagSwapSel = 0;
            }
        }

        if (CHECK_BTN_ANY(sDebugPadPress, BTN_A)) {
            sAudioSEFlagSwapIsEditing = true;
        }

        if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
            gAudioSEFlagSwapSource[sAudioSEFlagSwapSel] = 0;
            gAudioSEFlagSwapTarget[sAudioSEFlagSwapSel] = 0;
        }

        if (CHECK_BTN_ANY(sDebugPadPress, BTN_START)) {
            if (sAudioSEFlagSwapSel != 0) {
                prev = sAudioSEFlagSwapSel - 1;
            } else {
                prev = 9;
            }
            gAudioSEFlagSwapSource[sAudioSEFlagSwapSel] = gAudioSEFlagSwapSource[prev];
            gAudioSEFlagSwapTarget[sAudioSEFlagSwapSel] = gAudioSEFlagSwapTarget[prev];
        }
    } else {
        if (CHECK_BTN_ANY(sDebugPadPress, BTN_DLEFT)) {
            if (sAudioSEFlagSwapNibbleSel > 0) {
                sAudioSEFlagSwapNibbleSel--;
            } else {
                sAudioSEFlagSwapNibbleSel = 7;
            }
        }
        if (CHECK_BTN_ANY(sDebugPadPress, BTN_DRIGHT)) {
            if (sAudioSEFlagSwapNibbleSel < 7) {
                sAudioSEFlagSwapNibbleSel++;
            } else {
                sAudioSEFlagSwapNibbleSel = 0;
            }
        }

        if (CHECK_BTN_ANY(sDebugPadPress, BTN_DUP) || CHECK_BTN_ANY(sDebugPadPress, BTN_DDOWN)) {
            if (CHECK_BTN_ANY(sDebugPadPress, BTN_DUP)) {
                step = CHECK_BTN_ANY(sDebugPadHold, BTN_CUP) ? 8 : 1;
            }

            if (CHECK_BTN_ANY(sDebugPadPress, BTN_DDOWN)) {
                step = CHECK_BTN_ANY(sDebugPadHold, BTN_CUP) ? -8 : -1;
            }

            if (sAudioSEFlagSwapNibbleSel < 4) {
                val = gAudioSEFlagSwapSource[sAudioSEFlagSwapSel] >> ((3 - sAudioSEFlagSwapNibbleSel) * 4);
                val = (val + step) & 0xF;
                gAudioSEFlagSwapSource[sAudioSEFlagSwapSel] =
                    (gAudioSEFlagSwapSource[sAudioSEFlagSwapSel] &
                     ((0xF << ((3 - sAudioSEFlagSwapNibbleSel) * 4)) ^ 0xFFFF)) +
                    (val << ((3 - sAudioSEFlagSwapNibbleSel) * 4));
            } else {
                val = gAudioSEFlagSwapTarget[sAudioSEFlagSwapSel] >> ((7 - sAudioSEFlagSwapNibbleSel) * 4);
                val = (val + step) & 0xF;
                gAudioSEFlagSwapTarget[sAudioSEFlagSwapSel] =
                    (gAudioSEFlagSwapTarget[sAudioSEFlagSwapSel] &
                     ((0xF << ((7 - sAudioSEFlagSwapNibbleSel) * 4)) ^ 0xFFFF)) +
                    (val << ((7 - sAudioSEFlagSwapNibbleSel) * 4));
            }
        }

        if (CHECK_BTN_ANY(sDebugPadPress, BTN_A)) {
            sAudioSEFlagSwapIsEditing = false;
        }

        if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
            if (sAudioSEFlagSwapNibbleSel < 4) {
                gAudioSEFlagSwapSource[sAudioSEFlagSwapSel] = 0;
            } else {
                gAudioSEFlagSwapTarget[sAudioSEFlagSwapSel] = 0;
            }
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CLEFT)) {
        gAudioSEFlagSwapOff ^= 1;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CDOWN)) {
        gAudioSEFlagSwapMode[sAudioSEFlagSwapSel] ^= 1;
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

void AudioDebug_ProcessInput_SEParamChg(void) {
    s32 step;
    u16 sfx;

    if (CHECK_BTN_ANY(sDebugPadHold, BTN_CLEFT)) {
        step = 8;
    } else {
        step = 1;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DUP)) {
        if (sAudioSEParamChgSel > 0) {
            sAudioSEParamChgSel--;
        } else {
            sAudioSEParamChgSel = 3;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DDOWN)) {
        if (sAudioSEParamChgSel < 3) {
            sAudioSEParamChgSel++;
        } else {
            sAudioSEParamChgSel = 0;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DLEFT)) {
        if (sAudioSEParamChgSel < 2) {
            if (sAudioSEParamChgSel == 0) {
                if (sAudioSEParamChgWork[sAudioSEParamChgSel] > 0) {
                    sAudioSEParamChgWork[sAudioSEParamChgSel]--;
                } else {
                    sAudioSEParamChgWork[sAudioSEParamChgSel] = sAudioSndContWorkLims[2] - 1;
                }
            } else {
                sAudioSEParamChgWork[sAudioSEParamChgSel] -= step;
                sAudioSEParamChgWork[sAudioSEParamChgSel] &= 0x1FF;
            }
        } else if (sAudioSEParamChgSel == 3) {
            gSoundParams[sAudioSEParamChgWork[0]][sAudioSEParamChgWork[1]].importance -= step;
        } else {
            sAudioSEParamChgBitSel = (sAudioSEParamChgBitSel - 1) & 0xF;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DRIGHT)) {
        if (sAudioSEParamChgSel < 2) {
            if (sAudioSEParamChgSel == 0) {
                if (sAudioSEParamChgWork[sAudioSEParamChgSel] < (sAudioSndContWorkLims[2] - 1)) {
                    sAudioSEParamChgWork[sAudioSEParamChgSel]++;
                } else {
                    sAudioSEParamChgWork[sAudioSEParamChgSel] = 0;
                }
            } else {
                sAudioSEParamChgWork[sAudioSEParamChgSel] += step;
                sAudioSEParamChgWork[sAudioSEParamChgSel] &= 0x1FF;
            }
        } else if (sAudioSEParamChgSel == 3) {
            gSoundParams[sAudioSEParamChgWork[0]][sAudioSEParamChgWork[1]].importance += step;
        } else {
            sAudioSEParamChgBitSel = (sAudioSEParamChgBitSel + 1) & 0xF;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_A)) {
        sfx = (u16)(sAudioSEParamChgWork[0] << 12) + sAudioSEParamChgWork[1] + SFX_FLAG;
        Audio_PlaySoundGeneral(sfx, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
        func_800F87A0(sAudioSEParamChgWork[0]);
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CDOWN)) {
        if (sAudioSEParamChgSel == 2) {
            gSoundParams[sAudioSEParamChgWork[0]][sAudioSEParamChgWork[1]].params ^=
                (1 << (0xF - sAudioSEParamChgBitSel));
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CUP)) {
        if (sAudioSEParamChgSel < 2) {
            sAudioSEParamChgWork[sAudioSEParamChgSel] = 0;
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

    if (sAudioSEMuted) {
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
                if (func_800FA0B4(0) != 1) {
                    Audio_SeqCmd1(0, 0);
                }
                Audio_SeqCmd1(1, 0);
                Audio_SeqCmd1(3, 0);
            }

            if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
                sAudioSEMuted ^= 1;
                if (!sAudioSEMuted) {
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
        case PAGE_SE_FLAG_SWAP:
            AudioDebug_ProcessInput_SEFlagSwap();
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
        case PAGE_SE_PARAMETER_CHANGE:
            AudioDebug_ProcessInput_SEParamChg();
            break;
        case PAGE_FREE_AREA:
        default:
            break;
    }

    D_8013340C = sAudioScrPrtWork[10];
}

void func_800F4A70(void);
void func_800F5CF8(void);

void func_800F3054(void) {
    if (func_800FAD34() == 0) {
        sAudioUpdateTaskStart = gAudioContext.totalTaskCnt;
        sAudioUpdateStartTime = osGetTime();
        func_800EE6F4();
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
        sAudioUpdateTaskEnd = gAudioContext.totalTaskCnt;
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

f32 func_800F3188(u8 bankIdx, u8 entryIdx) {
    SoundBankEntry* bankEntry = &gSoundBanks[bankIdx][entryIdx];
    f32 temp_f14;
    f32 phi_f0;
    f32 ret;

    if (bankEntry->sfxParams & 0x2000) {
        return 1.0f;
    }

    if (bankEntry->dist > 10000.0f) {
        ret = 0.0f;
    } else {
        switch (bankEntry->sfxParams & 3) {
            case 1:
                phi_f0 = 666.6667f;
                break;
            case 2:
                phi_f0 = 952.381f;
                break;
            case 3:
                phi_f0 = 3846.154f;
                break;
            default:
                phi_f0 = 500.0f;
                break;
        }

        temp_f14 = phi_f0 / 5.0f;

        if (bankEntry->dist < temp_f14) {
            ret = 1.0f;
        } else if (bankEntry->dist < phi_f0) {
            ret = ((((phi_f0 - temp_f14) - (bankEntry->dist - temp_f14)) / (phi_f0 - temp_f14)) * 0.19f) + 0.81f;
        } else {
            ret = (1.0f - ((bankEntry->dist - phi_f0) / (10000.0f - phi_f0))) * 0.81f;
        }
        ret = SQ(ret);
    }

    return ret;
}

s8 Audio_ComputeSoundReverb(u8 bankIdx, u8 entryIdx, u8 channelIdx) {
    s8 distAdd = 0;
    s32 scriptAdd = 0;
    SoundBankEntry* entry = &gSoundBanks[bankIdx][entryIdx];
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
    if ((bankIdx != BANK_OCARINA) || !((entry->sfxId & 0x1FF) < 2)) {
        reverb += sAudioEnvReverb + sAudioCodeReverb + sSpecReverb;
    }

    if (reverb > 0x7F) {
        reverb = 0x7F;
    }

    return reverb;
}

s8 Audio_ComputeSoundPanSigned(f32 x, f32 z, u8 arg2) {
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
        pan = (x / (5.0769234f * absZ)) + 0.5f;
    }

    if (absZ < 50.0f) {
        if (absX < 50.0f) {
            pan = ((pan - 0.5f) * SQ(absX / 50.0f)) + 0.5f;
        }
    }
    return (s8)((pan * 127.0f) + 0.5f);
}

f32 Audio_ComputeSoundFreqScale(u8 bankIdx, u8 entryIdx) {
    s32 phi_v0 = 0;
    SoundBankEntry* entry = &gSoundBanks[bankIdx][entryIdx];
    f32 unk1C;
    f32 freq = 1.0f;

    if (entry->sfxParams & 0x4000) {
        freq = 1.0f - ((gAudioContext.audioRandom & 0xF) / 192.0f);
    }

    switch (bankIdx) {
        case BANK_PLAYER:
        case BANK_ITEM:
        case BANK_VOICE:
            if (D_80130644 != 0) {
                phi_v0 = 1;
            }
            break;
        case BANK_ENV:
        case BANK_ENEMY:
            if (D_80130648 != 0) {
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

u8 func_800F37B8(f32 arg0, SoundBankEntry* arg1, s8 arg2) {
    s8 phi_v0;
    u8 phi_v1;
    f32 phi_f0;
    f32 phi_f12;

    if (*arg1->posZ < arg0) {
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

    phi_f12 = CLAMP_MAX(arg1->dist, 1923.077f);

    return (phi_v1 * 0x10) + (u8)((phi_f0 * phi_f12) / 1923.077f);
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

void Audio_SetSoundProperties(u8 bankIdx, u8 entryIdx, u8 channelIdx) {
    f32 sp44 = 1.0f;
    s8 phi_a1;
    s8 reverb = 0;
    f32 freqScale = 1.0f;
    s8 panSigned = 0x40;
    u8 stereoBits = 0;
    u8 sp39 = 0;
    s8 sp38 = 0;
    f32 sp34;
    u8 sp33 = 0;
    SoundBankEntry* entry = &gSoundBanks[bankIdx][entryIdx];

    switch (bankIdx) {
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
            sp44 = func_800F3188(bankIdx, entryIdx) * *entry->unk_14;
            reverb = Audio_ComputeSoundReverb(bankIdx, entryIdx, channelIdx);
            panSigned = Audio_ComputeSoundPanSigned(*entry->posX, *entry->posZ, entry->unk_C);
            freqScale = Audio_ComputeSoundFreqScale(bankIdx, entryIdx) * *entry->freqScale;
            if (D_80130604 == 2) {
                sp34 = D_801305C4[(entry->sfxParams & 0x400) >> 10];
                if (!(entry->sfxParams & 0x800)) {
                    if (*entry->posZ < sp34) {
                        stereoBits = 0x10;
                    }

                    if ((D_8016B8B8[channelIdx].stereoBits ^ stereoBits) & 0x10) {
                        if (panSigned < 0x40) {
                            stereoBits = D_8016B8B8[channelIdx].stereoBits ^ 0x14;
                        } else {
                            stereoBits = D_8016B8B8[channelIdx].stereoBits ^ 0x18;
                        }
                    } else {
                        stereoBits = D_8016B8B8[channelIdx].stereoBits;
                    }
                }
            }
            if (D_8013063C != 0) {
                if ((bankIdx == BANK_ITEM) || (bankIdx == BANK_PLAYER) || (bankIdx == BANK_VOICE)) {
                    sp33 = D_8013063C;
                }
            }

            if ((sp33 | D_80130640) != 0) {
                sp39 = (sp33 | D_80130640);
            } else if (D_80130604 == 2 && (entry->sfxParams & 0x2000) == 0) {
                sp39 = func_800F37B8(sp34, entry, panSigned);
            }
            break;
        case BANK_SYSTEM:
            break;
    }

    if (D_8016B8B8[channelIdx].unk_00 != sp44) {
        phi_a1 = (u8)(sp44 * 127.0f);
        D_8016B8B8[channelIdx].unk_00 = sp44;
    } else {
        phi_a1 = -1;
    }

    // CHAN_UPD_SCRIPT_IO (slot 2)
    Audio_QueueCmdS8(0x6020000 | (channelIdx << 8) | 2, phi_a1);
    if (reverb != D_8016B8B8[channelIdx].reverb) {
        Audio_QueueCmdS8(0x5020000 | (channelIdx << 8), reverb);
        D_8016B8B8[channelIdx].reverb = reverb;
    }
    if (freqScale != D_8016B8B8[channelIdx].freqScale) {
        Audio_QueueCmdF32(0x4020000 | (channelIdx << 8), freqScale);
        D_8016B8B8[channelIdx].freqScale = freqScale;
    }
    if (stereoBits != D_8016B8B8[channelIdx].stereoBits) {
        Audio_QueueCmdS8(0xE020000 | (channelIdx << 8), stereoBits | 0x10);
        D_8016B8B8[channelIdx].stereoBits = stereoBits;
    }
    if (sp39 != D_8016B8B8[channelIdx].unk_0B) {
        // CHAN_UPD_SCRIPT_IO (slot 3)
        Audio_QueueCmdS8(0x6020000 | (channelIdx << 8) | 3, sp39);
        D_8016B8B8[channelIdx].unk_0B = sp39;
    }
    if (sp38 != D_8016B8B8[channelIdx].unk_0C) {
        // CHAN_UPD_UNK_0F
        Audio_QueueCmdS8(0xC020000 | (channelIdx << 8), 0x10);
        // CHAN_UPD_UNK_20
        Audio_QueueCmdU16(0xD020000 | (channelIdx << 8), ((u16)(sp38) << 8) + 0xFF);
        D_8016B8B8[channelIdx].unk_0C = sp38;
    }
    if (panSigned != D_8016B8B8[channelIdx].panSigned) {
        Audio_QueueCmdS8(0x3020000 | (channelIdx << 8), panSigned);
        D_8016B8B8[channelIdx].panSigned = panSigned;
    }
}

void func_800F3ED4(void) {
    u8 i;
    unk_s1* t;

    for (i = 0; i < 16; i++) {
        t = &D_8016B8B8[i];
        t->unk_00 = 1.0f;
        t->freqScale = 1.0f;
        t->reverb = 0;
        t->panSigned = 0x40;
        t->stereoBits = 0;
        t->unk_0B = 0xFF;
        t->unk_0C = 0xFF;
    }

    D_8016B8B8[13].unk_0C = 0;
    D_8013061C = 0;
    sAudioCodeReverb = 0;
}

void func_800F3F3C(u8 arg0) {
    if (gSoundBankMuted[0] != 1) {
        Audio_StartSeq(3, 0, 0x6D);
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
    u8 bank;

    bank = SFX_BANK_SHIFT(sfxId);
    for (i = 0; i < bank; i++) {
        phi_s1 += D_80130578[D_801333CC][i];
    }

    for (i = 0; i < D_80130578[D_801333CC][bank]; i++) {
        if ((D_8016E1B8[bank][i].unk_4 != 0xFF) && (sfxId == gSoundBanks[bank][D_8016E1B8[bank][i].unk_4].sfxId)) {
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

    if ((func_800FA0B4(1) == 0xFFFF) && (func_800FA0B4(3) != 0x2F)) {
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

    if (seqId != 40) {
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

    if (func_800FA0B4(0) != 0x4C) {
        if (func_800FA0B4(3) == 0x2F) {
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
    if ((temp_v0 != 0xFFFF) && ((D_80130658[bvar] & 0x10) != 0)) {
        if (D_8013062C != 0xC0) {
            D_8013062C = gAudioContext.seqPlayers->unk_158[3];
        } else {
            D_8013062C = 0;
        }
    }
}

void func_800F5718(void) {
    if (func_800FA0B4(0) != 0x4C) {
        Audio_StartSeq(0, 0, 0x4C);
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
    if (func_800FA0B4(0) == 0x6C && func_800FA11C(0, 0xF0000000)) {
        Audio_SeqCmdB(0, 5, 0, 0xD2);
    }
}

void func_800F595C(u16 arg0) {
    u8 arg0b = arg0 & 0xFF;

    if (D_80130658[arg0b] & 2) {
        func_800F5C64(arg0);
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

void func_800F5ACC(u16 arg0) {
    u16 temp_v0;

    temp_v0 = func_800FA0B4(0);
    if ((temp_v0 & 0xFF) != 0x2E && (temp_v0 & 0xFF) != 0x62 && temp_v0 != arg0) {
        func_800F5E90(3);
        if (temp_v0 != 0xFFFF) {
            D_80130628 = temp_v0;
        } else {
            osSyncPrintf("Middle Boss BGM Start not stack \n");
        }
        Audio_StartSeq(0, 0, arg0);
    }
}

void func_800F5B58(void) {
    if ((func_800FA0B4(0) != 0xFFFF) && (D_80130628 != 0xFFFF) && (D_80130658[func_800FA0B4(0) & 0xFF] & 8)) {
        if (D_80130628 == 0xFFFF) {
            Audio_SeqCmd1(0, 0);
        } else {
            Audio_StartSeq(0, 0, D_80130628);
        }
        D_80130628 = 0xFFFF;
    }
}

void func_800F5BF0(u8 arg0) {
    u16 temp_v0;

    temp_v0 = func_800FA0B4(0);
    if (temp_v0 != 1) {
        D_80130628 = temp_v0;
    }
    func_800F6FB4(arg0);
}

void func_800F5C2C(void) {
    if (D_80130628 != 0xFFFF) {
        Audio_StartSeq(0, 0, D_80130628);
    }
    D_80130628 = 0xFFFF;
}

void func_800F5C64(u16 arg0) {
    u16 sp26;
    u32 sp20;
    u8* sp1C;
    u8* sp18;

    sp26 = func_800FA0B4(1);
    sp1C = func_800E5E84(sp26 & 0xFF, &sp20);
    sp18 = func_800E5E84(arg0 & 0xFF, &sp20);
    if ((sp26 == 0xFFFF) || (*sp1C == *sp18)) {
        D_8016B9F4 = 1;
    } else {
        D_8016B9F4 = 5;
        Audio_SeqCmd1(1, 0);
    }
    D_8016B9F6 = arg0;
}

void func_800F5CF8(void) {
    u16 sp26;
    u16 pad;
    u16 sp22;

    if (D_8016B9F4 != 0) {
        D_8016B9F4--;
        if (D_8016B9F4 == 0) {
            Audio_QueueCmdS32(0xE3000000, 0);
            Audio_QueueCmdS32(0xE3000000, 1);
            func_800FA0B4(0);
            sp26 = func_800FA0B4(1);
            sp22 = func_800FA0B4(3);
            if (sp26 == 0xFFFF) {
                Audio_SetVolScale(0, 1, 0, 5);
                Audio_SetVolScale(3, 1, 0, 5);
                Audio_SeqCmdC(1, 0x80, 1, 0xA);
                Audio_SeqCmdC(1, 0x83, 1, 0xA);
                Audio_SeqCmdC(1, 0x90, 0, 0);
                if (sp22 != 0x2F) {
                    Audio_SeqCmdC(1, 0x93, 0, 0);
                }
            }
            Audio_StartSeq(1, 1, D_8016B9F6);
            Audio_SeqCmdA(0, 0xFFFF);
            if (sp22 != 0x2F) {
                Audio_SeqCmdA(3, 0xFFFF);
            }
        }
    }
}

void func_800F5E18(u8 seqIdx, u16 seqId, u8 fadeTimer, s8 arg3, s8 arg4) {
    Audio_SeqCmd7(seqIdx, arg3, arg4);
    Audio_StartSeq(seqIdx, fadeTimer, seqId);
}

void func_800F5E90(u8 arg0) {
    s32 phi_t0;
    u16 phi_t1;
    u8 phi_a3;

    D_80130654 = arg0;
    if (D_80130628 == 0xFFFF) {
        if (sAudioCutsceneFlag) {
            arg0 = 3;
        }
        phi_t1 = D_8016E750[0].unk_254;
        if (phi_t1 == 2 && func_800FA0B4(3) == 0x81A) {
            arg0 = 3;
        }

        phi_a3 = phi_t1 & 0xFF;
        if ((phi_t1 == 0xFFFF) || ((D_80130658[phi_a3] & 1) != 0) || ((D_8013061C & 0x7F) == 1)) {
            if (arg0 != (D_8013061C & 0x7F)) {
                if (arg0 == 1) {
                    if (D_8016E750[3].volScales[1] - sAudioEnemyVol < 0) {
                        phi_t0 = -(D_8016E750[3].volScales[1] - sAudioEnemyVol);
                    } else {
                        phi_t0 = D_8016E750[3].volScales[1] - sAudioEnemyVol;
                    }
                    Audio_SetVolScale(3, 3, sAudioEnemyVol, phi_t0);
                    Audio_StartSeq(3, 10, 0x81A);
                    if (phi_t1 != 1) {
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
            if (D_8016E750[0].unk_254 != 1) {
                Audio_SetVolScale(0, 3, (0x7F - sAudioEnemyVol), 0xA);
            }
        }
        if (D_8016E750[0].unk_254 != 1) {
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
            if ((arg1 & 0xFF) == 0x2F) {

                if (dist > 2000.0f) {
                    phi_v1 = 127;
                } else if (dist < 200.0f) {
                    phi_v1 = 0;
                } else {
                    phi_v1 = (s8)(((dist - 200.0f) * 127.0f) / 1800.0f);
                }
                Audio_SeqCmd6(0, 3, 0, 127 - phi_v1);
                Audio_SeqCmd6(0, 3, 1, 127 - phi_v1);
                Audio_SeqCmd6(0, 3, 13, phi_v1);
                if (D_8016B9D8 == 0) {
                    D_8016B9D8++;
                }
            }
        } else if ((temp_a0 == 1) && ((arg1 & 0xFF) == 0x2F)) {
            temp_a0 = (s8)(func_800FA0B4(3) & 0xFF);
            if ((temp_a0 != (arg1 & 0xFF)) && (D_8016B9D8 < 10)) {
                func_800F5E18(3, 0x2F, 0, 0, 0);
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
    u8 seqIdx;
    u16 sp34;

    D_8016B9F2 = arg0;
    if ((func_800FA0B4(0) & 0xFF) == 0x2F) {
        seqIdx = 0;
        sp34 = 0;
    } else if ((func_800FA0B4(3) & 0xFF) == 0x2F) {
        seqIdx = 3;
        sp34 = 0xFFFC;
    } else {
        return;
    }

    if (arg0 != 0) {
        Audio_SeqCmd6(seqIdx, 1, 0, 0);
        Audio_SeqCmd6(seqIdx, 1, 1, 0);
        if (seqIdx == 3) {
            Audio_SeqCmdA(seqIdx, sp34 | 3);
        }
    } else {
        if (seqIdx == 3) {
            func_800F5E18(3, 0x2F, 0, 0, 0);
        }
        Audio_SeqCmd6(seqIdx, 1, 0, 0x7F);
        Audio_SeqCmd6(seqIdx, 1, 1, 0x7F);
        if (seqIdx == 3) {
            Audio_SeqCmdA(seqIdx, sp34);
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

void func_800F67A0(u8 arg0) {
    if (D_8013063C != arg0) {
        if (arg0 == 0) {
            Audio_StopSfx(NA_SE_PL_IN_BUBBLE);
        } else if (D_8013063C == 0) {
            Audio_PlaySoundGeneral(NA_SE_PL_IN_BUBBLE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    }
    D_8013063C = arg0;
    D_80130644 = arg0;
}

void func_800F6828(u8 arg0) {
    u32 t;
    u8 i;

    D_80130648 = arg0;
    D_80130640 = arg0;
    if (D_8016E750[0].unk_254 == 1) {
        for (i = 0; i < 16; i++) {
            t = i;
            Audio_QueueCmdS8(((t & 0xFF) << 8) | 0x6000000 | 6, arg0);
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
    u8 i;

    Audio_SeqCmd1(0, (arg0 * 3) / 2);
    Audio_SeqCmd1(1, (arg0 * 3) / 2);
    for (i = 0; i < 0x10; i++) {
        skip = false;
        switch (i) {
            case 11:
            case 12:
                if (gAudioSpecId == 10) {
                    skip = true;
                }
                break;
            case 13:
                skip = true;
                break;
        }

        if (!skip) {
            Audio_SeqCmd6(2, arg0 >> 1, i, 0);
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
    D_8013063C = 0;
    D_80130640 = 0;
    D_80130644 = 0;
    D_80130648 = 0;
    func_800ED858(0);
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
    D_80130628 = 0xFFFF;
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

    if ((D_8016E750[0].unk_254 != 1) && func_800FA11C(1, 0xF00000FF)) {
        sAudioNatureFailed = 1;
        return;
    }

    if (((arg0 << 8) + arg1) == 0x101) {
        if (func_800FA0B4(3) != 0x2F) {
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

    if (func_800FA0B4(0) == 0x4C) {
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

    Audio_StartSeq(0, 0, 1);

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

    if ((D_8016E750[0].unk_254 == 0xFFFF) || ((D_80130658[((u8)D_8016E750[0].unk_254) & 0xFF] & 0x80) == 0)) {
        func_800F6E7C(D_801306DC[arg0].unk_00, D_801306DC[arg0].unk_02);
        while ((D_801306DC[arg0].unk_04[i] != 0xFF) && (i < 100)) {
            // Probably a fake match, using Audio_SeqCmd8 doesn't work.
            b0 = D_801306DC[arg0].unk_04[i++];
            b1 = D_801306DC[arg0].unk_04[i++];
            b2 = D_801306DC[arg0].unk_04[i++];
            Audio_QueueSeqCmd(0x80000000 | (b1 << 0x10) | (b0 << 8) | b2);
        }

        Audio_SeqCmd8(0, 0x07, 0xD, D_80130604);
    }
}

void func_800F70F8(void) {
    Audio_ContextInit(0, 0);
}

void func_800F711C(void) {
    func_800F6C34();
    func_800EE930();
    func_800F3ED4();
    func_800FAEB4();
    func_800F905C();
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
    func_800EE930();
    func_800F3ED4();
    func_800FADF8();
    func_800F905C();
}

void func_800F7208(void) {
    func_800FADF8();
    Audio_QueueCmdS32(0xF2000000, 1);
    func_800F6C34();
    func_800F3ED4();
    func_800F9280(2, 0, 0x70, 1);
}
