#ifndef SFX_H
#define SFX_H

#include "ultra64.h"
#include "versions.h"
#include "z64math.h"
#include "libc/assert.h"

typedef enum SfxBankType {
    /* 0 */ BANK_PLAYER,
    /* 1 */ BANK_ITEM,
    /* 2 */ BANK_ENV,
    /* 3 */ BANK_ENEMY,
    /* 4 */ BANK_SYSTEM,
    /* 5 */ BANK_OCARINA,
    /* 6 */ BANK_VOICE
} SfxBankType;

typedef enum SfxState {
    /* 0 */ SFX_STATE_EMPTY,
    /* 1 */ SFX_STATE_QUEUED,
    /* 2 */ SFX_STATE_READY,
    /* 3 */ SFX_STATE_PLAYING_REFRESH,
    /* 4 */ SFX_STATE_PLAYING_1,
    /* 5 */ SFX_STATE_PLAYING_2
} SfxState;

typedef struct SfxBankEntry {
    /* 0x00 */ f32* posX;
    /* 0x04 */ f32* posY;
    /* 0x08 */ f32* posZ;
    /* 0x0C */ u8 token;
    /* 0x10 */ f32* freqScale;
    /* 0x14 */ f32* vol;
    /* 0x18 */ s8* reverbAdd;
    /* 0x1C */ f32 dist;
    /* 0x20 */ u32 priority; // lower is more prioritized
    /* 0x24 */ u8 sfxImportance;
    /* 0x26 */ u16 sfxParams;
    /* 0x28 */ u16 sfxId;
    /* 0x2A */ u8 state; // uses SfxState enum
    /* 0x2B */ u8 freshness;
    /* 0x2C */ u8 prev;
    /* 0x2D */ u8 next;
    /* 0x2E */ u8 channelIndex;
    /* 0x2F */ u8 unk_2F;
} SfxBankEntry; // size = 0x30

/*
 * SFX IDs
 *
 * index    0000000111111111    observed in audio code
 * & 200    0000001000000000    single bit
 * & 400    0000010000000000    single bit
 * & 800    0000100000000000    single bit, what we currently call SFX_FLAG
 * & 600    0000011000000000    2 bits
 * & A00    0000101000000000    2 bits
 * & C00    0000110000000000    2 bits, observed in audio code
 * & E00    0000111000000000    all 3 bits
 * bank     1111000000000000    observed in audio code
 */

#define DEFINE_SFX(_0, enum, _2, _3, _4, _5) enum,

typedef enum SfxId {
    NA_SE_NONE, // Requesting a sfx with this id will play no sound

    NA_SE_PL_BASE = 0x7FF,
    #include "tables/sfx/playerbank_table.h"
    NA_SE_PL_END,

    NA_SE_IT_BASE = 0x17FF,
    #include "tables/sfx/itembank_table.h"
    NA_SE_IT_END,

    NA_SE_EV_BASE = 0x27FF,
    #include "tables/sfx/environmentbank_table.h"
    NA_SE_EV_END,

    NA_SE_EN_BASE = 0x37FF,
    #include "tables/sfx/enemybank_table.h"
    NA_SE_EN_END,

    NA_SE_SY_BASE = 0x47FF,
    #include "tables/sfx/systembank_table.h"
    NA_SE_SY_END,

    NA_SE_OC_BASE = 0x57FF,
    #include "tables/sfx/ocarinabank_table.h"
    NA_SE_OC_END,

    NA_SE_VO_BASE = 0x67FF,
    #include "tables/sfx/voicebank_table.h"
    NA_SE_VO_END,

    NA_SE_MAX
} SfxId;

// These limits are due to the way Sequence 0 is programmed. There is also a global limit of 512 entries for every bank
// enforced in Audio_PlayActiveSfx in sfx.c
static_assert(NA_SE_PL_END - (NA_SE_PL_BASE + 1) <= 256, "Player Bank SFX Table is limited to 256 entries due to Sequence 0");
static_assert(NA_SE_IT_END - (NA_SE_IT_BASE + 1) <= 128, "Item Bank SFX Table is limited to 128 entries due to Sequence 0");
static_assert(NA_SE_EV_END - (NA_SE_EV_BASE + 1) <= 256, "Environment Bank SFX Table is limited to 256 entries due to Sequence 0");
static_assert(NA_SE_EN_END - (NA_SE_EN_BASE + 1) <= 512, "Enemy Bank SFX Table is limited to 512 entries due to Sequence 0");
static_assert(NA_SE_SY_END - (NA_SE_SY_BASE + 1) <= 128, "System Bank SFX Table is limited to 128 entries due to Sequence 0");
static_assert(NA_SE_OC_END - (NA_SE_OC_BASE + 1) <= 128, "Ocarina Bank SFX Table is limited to 128 entries due to Sequence 0");
static_assert(NA_SE_VO_END - (NA_SE_VO_BASE + 1) <= 256, "Voice Bank SFX Table is limited to 256 entries due to Sequence 0");

#undef DEFINE_SFX

#define SFX_BANK_SHIFT(sfxId)   (((sfxId) >> 12) & 0xFF)

#define SFX_BANK_MASK(sfxId)    ((sfxId) & 0xF000)

#define SFX_INDEX(sfxId)    ((sfxId) & 0x01FF)
#define SFX_BANK(sfxId)     SFX_BANK_SHIFT(SFX_BANK_MASK(sfxId))

#define SFX_FLAG 0x800

typedef struct ActiveSfx {
    u32 priority; // lower is more prioritized
    u8 entryIndex;
} ActiveSfx;

// SfxParams bit-packing

#define SFX_PARAM_01_SHIFT 0
#define SFX_PARAM_01_MASK (3 << SFX_PARAM_01_SHIFT)

#define SFX_FLAG_2 (1 << 2)
#define SFX_FLAG_3 (1 << 3)
#define SFX_FLAG_4 (1 << 4)
#define SFX_FLAG_5 (1 << 5)

#define SFX_PARAM_67_SHIFT 6
#define SFX_PARAM_67_MASK (3 << SFX_PARAM_67_SHIFT)

#define SFX_FLAG_9 (1 << 9)
#define SFX_FLAG_10_SHIFT 10
#define SFX_FLAG_10 (1 << SFX_FLAG_10_SHIFT)
#define SFX_FLAG_11 (1 << 11)
#define SFX_FLAG_12 (1 << 12)
#define SFX_FLAG_13 (1 << 13)
#define SFX_FLAG_14 (1 << 14)
#define SFX_FLAG_15 (1 << 15)

typedef struct SfxParams {
    u8 importance;
    u16 params;
} SfxParams;

#if DEBUG_FEATURES
#define SFX_DIST_SCALING 1.0f
#else
#define SFX_DIST_SCALING 10.0f
#endif

void Audio_SetSfxBanksMute(u16 muteMask);
void Audio_QueueSeqCmdMute(u8 channelIndex);
void Audio_ClearBGMMute(u8 channelIndex);
void Audio_PlaySfxGeneral(u16 sfxId, Vec3f* pos, u8 token, f32* freqScale, f32* vol, s8* reverbAdd);
void Audio_ProcessSfxRequest(void);
void Audio_ChooseActiveSfx(u8 bankId);
void Audio_PlayActiveSfx(u8 bankId);
void Audio_StopSfxByBank(u8 bankId);
void Audio_RemoveSfxFromBankByPos(u8 bankId, Vec3f* pos);
void Audio_StopSfxByPosAndBank(u8 bankId, Vec3f* pos);
void Audio_StopSfxByPos(Vec3f* pos);
void Audio_StopSfxByPosAndId(Vec3f* pos, u16 sfxId);
void Audio_StopSfxByTokenAndId(u8 token, u16 sfxId);
void Audio_StopSfxById(u32 sfxId);
void Audio_ProcessSfxRequests(void);
void func_800F8F88(void);
u8 Audio_IsSfxPlaying(u32 sfxId);
void Audio_ResetSfx(void);

extern Vec3f gSfxDefaultPos;
extern f32 gSfxDefaultFreqAndVolScale;
extern s8 gSfxDefaultReverb;

#endif
