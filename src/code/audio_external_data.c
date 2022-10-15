#include "ultra64.h"
#include "global.h"

// sSfxRequests ring buffer endpoints. read index <= write index, wrapping around mod 256.
u8 gSfxRequestWriteIndex = 0;
u8 gSfxRequestReadIndex = 0;

/**
 * Array of pointers to arrays of SfxBankEntry of sizes: 9, 12, 22, 20, 8, 3, 5
 *
 * 0 : Player Bank          size 9
 * 1 : Item Bank            size 12
 * 2 : Environment Bank     size 22
 * 3 : Enemy Bank           size 20
 * 4 : System Bank          size 8
 * 5 : Ocarina Bank         size 3
 * 6 : Voice Bank           size 5
 */
SfxBankEntry* gSfxBanks[7] = {
    D_8016BAD0, D_8016BC80, D_8016BEC0, D_8016C2E0, D_8016C6A0, D_8016C820, D_8016C8B0,
};

u8 gSfxBankSizes[ARRAY_COUNT(gSfxBanks)] = {
    ARRAY_COUNT(D_8016BAD0), ARRAY_COUNT(D_8016BC80), ARRAY_COUNT(D_8016BEC0), ARRAY_COUNT(D_8016C2E0),
    ARRAY_COUNT(D_8016C6A0), ARRAY_COUNT(D_8016C820), ARRAY_COUNT(D_8016C8B0),
};

u8 gSfxChannelLayout = 0;

u16 D_801333D0 = 0;

// The center of the screen in projected coordinates.
// Gives the impression that the sfx has no specific location
Vec3f gSfxDefaultPos = { 0.0f, 0.0f, 0.0f };

// Reused as either frequency or volume multiplicative scaling factor
// Does not alter or change frequency or volume
f32 gSfxDefaultFreqAndVolScale = 1.0f;

s32 D_801333E4 = 0; // unused

// Adds no reverb to the existing reverb
s8 gSfxDefaultReverb = 0;

s32 D_801333EC = 0; // unused

u8 D_801333F0 = 0;

u8 gAudioSfxSwapOff = 0;

u8 D_801333F8 = 0;

s32 D_801333FC = 0; // unused

u8 gSeqCmdWritePos = 0;
u8 gSeqCmdReadPos = 0;
u8 gStartSeqDisabled = false;
u8 gAudioDebugPrintSeqCmd = true;

u8 gSoundModeList[] = {
    SOUNDMODE_STEREO,
    SOUNDMODE_HEADSET,
    SOUNDMODE_SURROUND,
    SOUNDMODE_MONO,
};

u8 gAudioSpecId = 0;

u8 D_80133418 = 0;
