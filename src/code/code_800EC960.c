#include "ultra64.h"
#include "global.h"

#define Audio_DisableSeq(seqPlayerIndex, fadeOut) Audio_QueueCmdS32(0x83000000 | ((u8)seqPlayerIndex << 16), fadeOut)

#define ABS_ALT(x) ((x) < 0 ? -(x) : (x))

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
} SfxChannelIndex; // playerIdx = 2

typedef struct {
    /* 0x0 */ f32 value;
    /* 0x4 */ f32 target;
    /* 0x8 */ f32 step;
    /* 0xC */ s32 remainingFrames;
} FreqLerp;

typedef struct {
    /* 0x0 */ u16 playerIO;
    /* 0x2 */ u16 channelMask;
    /* 0x4 */ u8 channelIO[3 * 33 + 1];
} NatureAmbienceDataIO; // size = 0x68

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

u8 gIsLargeSfxBank[7] = { 0, 0, 0, 1, 0, 0, 0 };

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
u8 sGanonsTowerLevelsVol[8] = { 127, 80, 75, 73, 70, 68, 65, 60 };
u8 sEnterGanonsTowerTimer = 0;
s8 sSoundMode = SOUNDMODE_SURROUND;
s8 D_80130608 = 0;
s8 sAudioCutsceneFlag = 0;
s8 sSpecReverb = 0;
s8 sAudioEnvReverb = 0;
s8 sAudioCodeReverb = 0;
u8 sPrevSeqMode = 0;
f32 sAudioEnemyDist = 0.0f;
s8 sAudioEnemyVol = 127;
u16 sPrevMainBgmSeqId = NA_BGM_DISABLED;

#define SEQ_RESUME_POINT_NONE 0xC0
u8 sSeqResumePoint = 0;
u8 sPrevSceneSeqId = NA_BGM_GENERAL_SFX;

u32 sNumFramesStill = 0;
u32 sNumFramesMoving = 0;
u8 sAudioBaseFilter = 0;
u8 sAudioExtraFilter = 0;
u8 sAudioBaseFilter2 = 0;
u8 sAudioExtraFilter2 = 0;
Vec3f* sSariaBgmPtr = NULL;
f32 D_80130650 = 2000.0f;
u8 sSeqModeInput = 0;

#define SEQ_FLAG_ENEMY (1 << 0) // Allows enemy bgm
#define SEQ_FLAG_FANFARE (1 << 1)
#define SEQ_FLAG_FANFARE_GANON (1 << 2)
#define SEQ_FLAG_RESTORE (1 << 3) // required for func_800F5B58 to restore a sequence after func_800F5ACC

/**
 * These two sequence flags work together to implement a “resume playing from where you left off” system for scene
 * sequences when leaving and returning to a scene. For a scene to resume playing from the point where it left off, it
 * must have `SEQ_FLAG_RESUME` attached to it. Then, if the scene changes and the new scene sequence contain
 * `SEQ_FLAG_RESUME_PREV`, the point from the previous scene sequence will be stored. Then, when returning to the
 * scene with the sequence `SEQ_FLAG_RESUME`, then the sequence will resume playing from where it left off.
 *
 * There are only 5 sequences with `SEQ_FLAG_RESUME`, and all 5 of those sequences have special sequence
 * instructions in their .seq files to read io port 7 and branch to different starting points along the sequence
 * i.e. this system will only work for: kokiri forest, kakariko child, kakariko adult, zoras domain, gerudo valley
 */
#define SEQ_FLAG_RESUME (1 << 4)
#define SEQ_FLAG_RESUME_PREV (1 << 5)

/**
 * Will write a value of 1 to ioPort 7 when called through the scene. How it's used depends on the sequence:
 * NA_BGM_CHAMBER_OF_SAGES - ioPort 7 is never read from
 * NA_BGM_FILE_SELECT - ioPort 7 skips the harp intro when a value of 1 is written to it.
 * Note: NA_BGM_FILE_SELECT is not called through the scene. So this flag serves no purpose
 */
#define SEQ_FLAG_SKIP_HARP_INTRO (1 << 6)
#define SEQ_FLAG_NO_AMBIENCE (1 << 7)

u8 sSeqFlags[] = {
    SEQ_FLAG_FANFARE,                        // NA_BGM_GENERAL_SFX
    SEQ_FLAG_ENEMY,                          // NA_BGM_NATURE_BACKGROUND
    0,                                       // NA_BGM_FIELD_LOGIC
    0,                                       // NA_BGM_FIELD_INIT
    0,                                       // NA_BGM_FIELD_DEFAULT_1
    0,                                       // NA_BGM_FIELD_DEFAULT_2
    0,                                       // NA_BGM_FIELD_DEFAULT_3
    0,                                       // NA_BGM_FIELD_DEFAULT_4
    0,                                       // NA_BGM_FIELD_DEFAULT_5
    0,                                       // NA_BGM_FIELD_DEFAULT_6
    0,                                       // NA_BGM_FIELD_DEFAULT_7
    0,                                       // NA_BGM_FIELD_DEFAULT_8
    0,                                       // NA_BGM_FIELD_DEFAULT_9
    0,                                       // NA_BGM_FIELD_DEFAULT_A
    0,                                       // NA_BGM_FIELD_DEFAULT_B
    0,                                       // NA_BGM_FIELD_ENEMY_INIT
    0,                                       // NA_BGM_FIELD_ENEMY_1
    0,                                       // NA_BGM_FIELD_ENEMY_2
    0,                                       // NA_BGM_FIELD_ENEMY_3
    0,                                       // NA_BGM_FIELD_ENEMY_4
    0,                                       // NA_BGM_FIELD_STILL_1
    0,                                       // NA_BGM_FIELD_STILL_2
    0,                                       // NA_BGM_FIELD_STILL_3
    0,                                       // NA_BGM_FIELD_STILL_4
    SEQ_FLAG_RESUME_PREV | SEQ_FLAG_ENEMY,   // NA_BGM_DUNGEON
    SEQ_FLAG_RESUME,                         // NA_BGM_KAKARIKO_ADULT
    0,                                       // NA_BGM_ENEMY
    SEQ_FLAG_NO_AMBIENCE | SEQ_FLAG_RESTORE, // NA_BGM_BOSS
    SEQ_FLAG_ENEMY,                          // NA_BGM_INSIDE_DEKU_TREE
    0,                                       // NA_BGM_MARKET
    0,                                       // NA_BGM_TITLE
    SEQ_FLAG_RESUME_PREV,                    // NA_BGM_LINK_HOUSE
    0,                                       // NA_BGM_GAME_OVER
    0,                                       // NA_BGM_BOSS_CLEAR
    SEQ_FLAG_FANFARE,                        // NA_BGM_ITEM_GET
    SEQ_FLAG_FANFARE_GANON,                  // NA_BGM_OPENING_GANON
    SEQ_FLAG_FANFARE,                        // NA_BGM_HEART_GET
    SEQ_FLAG_FANFARE,                        // NA_BGM_OCA_LIGHT
    SEQ_FLAG_ENEMY,                          // NA_BGM_JABU_JABU
    SEQ_FLAG_RESUME,                         // NA_BGM_KAKARIKO_KID
    0,                                       // NA_BGM_GREAT_FAIRY
    0,                                       // NA_BGM_ZELDA_THEME
    SEQ_FLAG_ENEMY,                          // NA_BGM_FIRE_TEMPLE
    SEQ_FLAG_FANFARE,                        // NA_BGM_OPEN_TRE_BOX
    SEQ_FLAG_ENEMY,                          // NA_BGM_FOREST_TEMPLE
    0,                                       // NA_BGM_COURTYARD
    SEQ_FLAG_NO_AMBIENCE,                    // NA_BGM_GANON_TOWER
    0,                                       // NA_BGM_LONLON
    SEQ_FLAG_NO_AMBIENCE,                    // NA_BGM_GORON_CITY
    0,                                       // NA_BGM_FIELD_MORNING
    SEQ_FLAG_FANFARE,                        // NA_BGM_SPIRITUAL_STONE
    SEQ_FLAG_FANFARE,                        // NA_BGM_OCA_BOLERO
    SEQ_FLAG_FANFARE,                        // NA_BGM_OCA_MINUET
    SEQ_FLAG_FANFARE,                        // NA_BGM_OCA_SERENADE
    SEQ_FLAG_FANFARE,                        // NA_BGM_OCA_REQUIEM
    SEQ_FLAG_FANFARE,                        // NA_BGM_OCA_NOCTURNE
    SEQ_FLAG_NO_AMBIENCE | SEQ_FLAG_RESTORE, // NA_BGM_MINI_BOSS
    SEQ_FLAG_FANFARE,                        // NA_BGM_SMALL_ITEM_GET
    0,                                       // NA_BGM_TEMPLE_OF_TIME
    SEQ_FLAG_FANFARE,                        // NA_BGM_EVENT_CLEAR
    SEQ_FLAG_RESUME | SEQ_FLAG_ENEMY,        // NA_BGM_KOKIRI
    SEQ_FLAG_FANFARE,                        // NA_BGM_OCA_FAIRY_GET
    SEQ_FLAG_ENEMY,                          // NA_BGM_SARIA_THEME
    SEQ_FLAG_ENEMY,                          // NA_BGM_SPIRIT_TEMPLE
    0,                                       // NA_BGM_HORSE
    0,                                       // NA_BGM_HORSE_GOAL
    0,                                       // NA_BGM_INGO
    SEQ_FLAG_FANFARE,                        // NA_BGM_MEDALLION_GET
    SEQ_FLAG_FANFARE,                        // NA_BGM_OCA_SARIA
    SEQ_FLAG_FANFARE,                        // NA_BGM_OCA_EPONA
    SEQ_FLAG_FANFARE,                        // NA_BGM_OCA_ZELDA
    SEQ_FLAG_FANFARE,                        // NA_BGM_OCA_SUNS
    SEQ_FLAG_FANFARE,                        // NA_BGM_OCA_TIME
    SEQ_FLAG_FANFARE,                        // NA_BGM_OCA_STORM
    0,                                       // NA_BGM_NAVI_OPENING
    0,                                       // NA_BGM_DEKU_TREE_CS
    0,                                       // NA_BGM_WINDMILL
    0,                                       // NA_BGM_HYRULE_CS
    SEQ_FLAG_RESUME_PREV,                    // NA_BGM_MINI_GAME
    0,                                       // NA_BGM_SHEIK
    SEQ_FLAG_RESUME,                         // NA_BGM_ZORA_DOMAIN
    SEQ_FLAG_FANFARE,                        // NA_BGM_APPEAR
    0,                                       // NA_BGM_ADULT_LINK
    0,                                       // NA_BGM_MASTER_SWORD
    SEQ_FLAG_FANFARE_GANON,                  // NA_BGM_INTRO_GANON
    SEQ_FLAG_RESUME_PREV,                    // NA_BGM_SHOP
    SEQ_FLAG_SKIP_HARP_INTRO,                // NA_BGM_CHAMBER_OF_SAGES
    SEQ_FLAG_SKIP_HARP_INTRO,                // NA_BGM_FILE_SELECT
    SEQ_FLAG_ENEMY,                          // NA_BGM_ICE_CAVERN
    SEQ_FLAG_FANFARE,                        // NA_BGM_DOOR_OF_TIME
    SEQ_FLAG_FANFARE,                        // NA_BGM_OWL
    SEQ_FLAG_ENEMY,                          // NA_BGM_SHADOW_TEMPLE
    SEQ_FLAG_ENEMY,                          // NA_BGM_WATER_TEMPLE
    SEQ_FLAG_FANFARE,                        // NA_BGM_BRIDGE_TO_GANONS
    0,                                       // NA_BGM_OCARINA_OF_TIME
    SEQ_FLAG_RESUME | SEQ_FLAG_ENEMY,        // NA_BGM_GERUDO_VALLEY
    0,                                       // NA_BGM_POTION_SHOP
    0,                                       // NA_BGM_KOTAKE_KOUME
    SEQ_FLAG_NO_AMBIENCE,                    // NA_BGM_ESCAPE
    0,                                       // NA_BGM_UNDERGROUND
    SEQ_FLAG_NO_AMBIENCE,                    // NA_BGM_GANON_BATTLE_1
    SEQ_FLAG_NO_AMBIENCE,                    // NA_BGM_GANON_BATTLE_2
    0,                                       // NA_BGM_END_DEMO
    0,                                       // NA_BGM_STAFF_1
    0,                                       // NA_BGM_STAFF_2
    0,                                       // NA_BGM_STAFF_3
    0,                                       // NA_BGM_STAFF_4
    0,                                       // NA_BGM_FIRE_BOSS
    SEQ_FLAG_RESTORE,                        // NA_BGM_TIMED_MINI_GAME
    0,                                       // NA_BGM_CUTSCENE_EFFECTS
};

s8 sSpecReverbs[20] = { 0, 0, 0, 0, 0, 0, 0, 40, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };

NatureAmbienceDataIO sNatureAmbienceDataIO[20] = {
    // NATURE_ID_GENERAL_NIGHT
    {
        0xC0FF, // PlayerIO Data
        0xC0FE, // Channel Mask
        {
            // Channel 0
            NATURE_IO_STREAM_0_TYPE(NATURE_STREAM_RUSHING_WATER),
            NATURE_IO_STREAM_0_PORT3(0),

            // Channel 1
            NATURE_IO_CRITTER_0_TYPE(NATURE_CRITTER_CROWS_CAWS),
            NATURE_IO_CRITTER_0_BEND_PITCH(64),
            NATURE_IO_CRITTER_0_NUM_LAYERS(0),
            NATURE_IO_CRITTER_0_PORT5(32),

            // Channel 2
            NATURE_IO_CRITTER_1_TYPE(NATURE_CRITTER_CRICKETS),
            NATURE_IO_CRITTER_1_BEND_PITCH(0),
            NATURE_IO_CRITTER_1_NUM_LAYERS(1),
            NATURE_IO_CRITTER_1_PORT5(16),

            // Channel 3
            NATURE_IO_CRITTER_2_TYPE(NATURE_CRITTER_SMALL_BIRD_CHIRPS),
            NATURE_IO_CRITTER_2_BEND_PITCH(112),
            NATURE_IO_CRITTER_2_NUM_LAYERS(1),
            NATURE_IO_CRITTER_2_PORT5(48),

            // Channel 4
            NATURE_IO_CRITTER_3_TYPE(NATURE_CRITTER_HAWK_SCREECH),
            NATURE_IO_CRITTER_3_BEND_PITCH(127),
            NATURE_IO_CRITTER_3_NUM_LAYERS(0),
            NATURE_IO_CRITTER_3_PORT5(16),

            // Channel 5
            NATURE_IO_CRITTER_4_TYPE(NATURE_CRITTER_BIRD_CHIRP_1),
            NATURE_IO_CRITTER_4_BEND_PITCH(127),
            NATURE_IO_CRITTER_4_NUM_LAYERS(1),
            NATURE_IO_CRITTER_4_PORT5(16),

            // Channel 6
            NATURE_IO_CRITTER_5_TYPE(NATURE_CRITTER_TAP),
            NATURE_IO_CRITTER_5_BEND_PITCH(127),
            NATURE_IO_CRITTER_5_NUM_LAYERS(3),
            NATURE_IO_CRITTER_5_PORT5(16),

            // Channel 7
            NATURE_IO_CRITTER_6_TYPE(NATURE_CRITTER_CUCCO_CROWS),
            NATURE_IO_CRITTER_6_BEND_PITCH(127),
            NATURE_IO_CRITTER_6_NUM_LAYERS(1),
            NATURE_IO_CRITTER_6_PORT5(16),

            // End
            NATURE_IO_ENTRIES_END,
        },
    },

    // NATURE_ID_MARKET_ENTRANCE
    {
        0xC0FB, // PlayerIO Data
        0xC0FA, // Channel Mask
        {
            // Channel 0
            NATURE_IO_STREAM_0_TYPE(NATURE_STREAM_RUSHING_WATER),
            NATURE_IO_STREAM_0_PORT3(0),

            // Channel 1
            NATURE_IO_CRITTER_0_TYPE(NATURE_CRITTER_CRICKETS),
            NATURE_IO_CRITTER_0_BEND_PITCH(0),
            NATURE_IO_CRITTER_0_NUM_LAYERS(1),
            NATURE_IO_CRITTER_0_PORT5(16),

            // Channel 3
            NATURE_IO_CRITTER_2_TYPE(NATURE_CRITTER_BIRD_SCREECH),
            NATURE_IO_CRITTER_2_BEND_PITCH(112),
            NATURE_IO_CRITTER_2_NUM_LAYERS(1),
            NATURE_IO_CRITTER_2_PORT5(48),

            // Channel 4
            NATURE_IO_CRITTER_3_TYPE(NATURE_CRITTER_HAWK_SCREECH),
            NATURE_IO_CRITTER_3_BEND_PITCH(127),
            NATURE_IO_CRITTER_3_NUM_LAYERS(0),
            NATURE_IO_CRITTER_3_PORT5(16),

            // Channel 5
            NATURE_IO_CRITTER_4_TYPE(NATURE_CRITTER_BIRD_CHIRP_1),
            NATURE_IO_CRITTER_4_BEND_PITCH(127),
            NATURE_IO_CRITTER_4_NUM_LAYERS(1),
            NATURE_IO_CRITTER_4_PORT5(16),

            // Channel 6
            NATURE_IO_CRITTER_5_TYPE(NATURE_CRITTER_TAP),
            NATURE_IO_CRITTER_5_BEND_PITCH(127),
            NATURE_IO_CRITTER_5_NUM_LAYERS(3),
            NATURE_IO_CRITTER_5_PORT5(16),

            // Channel 7
            NATURE_IO_CRITTER_6_TYPE(NATURE_CRITTER_CUCCO_CROWS),
            NATURE_IO_CRITTER_6_BEND_PITCH(127),
            NATURE_IO_CRITTER_6_NUM_LAYERS(1),
            NATURE_IO_CRITTER_6_PORT5(16),

            // End
            NATURE_IO_ENTRIES_END,
        },
    },

    // NATURE_ID_KAKARIKO_REGION
    {
        0xC001, // PlayerIO Data
        0x4000, // Channel Mask
        {
            // Channel 0
            NATURE_IO_STREAM_0_TYPE(NATURE_STREAM_RUSHING_WATER),
            NATURE_IO_STREAM_0_PORT3(0),

            // Channel 2
            NATURE_IO_CRITTER_1_TYPE(NATURE_CRITTER_BIRD_SCREECH),
            NATURE_IO_CRITTER_1_BEND_PITCH(48),
            NATURE_IO_CRITTER_1_NUM_LAYERS(1),
            NATURE_IO_CRITTER_1_PORT5(32),

            // End
            NATURE_IO_ENTRIES_END,
        },
    },

    // NATURE_ID_MARKET_RUINS
    {
        0xC005, // PlayerIO Data
        0x4000, // Channel Mask
        {
            // Channel 0
            NATURE_IO_STREAM_0_TYPE(NATURE_STREAM_HOWLING_WIND),
            NATURE_IO_STREAM_0_PORT3(32),

            // Channel 2
            NATURE_IO_CRITTER_1_TYPE(NATURE_CRITTER_BIRD_SCREECH),
            NATURE_IO_CRITTER_1_BEND_PITCH(48),
            NATURE_IO_CRITTER_1_NUM_LAYERS(1),
            NATURE_IO_CRITTER_1_PORT5(32),

            // End
            NATURE_IO_ENTRIES_END,
        },
    },

    // NATURE_ID_KOKIRI_REGION
    {
        0xC01F, // PlayerIO Data
        0xC000, // Channel Mask
        {
            // Channel 0
            NATURE_IO_STREAM_0_TYPE(NATURE_STREAM_RUSHING_WATER),
            NATURE_IO_STREAM_0_PORT3(47),

            // Channel 1
            NATURE_IO_CRITTER_0_TYPE(NATURE_CRITTER_OWL_HOOT),
            NATURE_IO_CRITTER_0_BEND_PITCH(0),
            NATURE_IO_CRITTER_0_NUM_LAYERS(1),
            NATURE_IO_CRITTER_0_PORT5(16),

            // Channel 2
            NATURE_IO_CRITTER_1_TYPE(NATURE_CRITTER_CAWING_BIRD),
            NATURE_IO_CRITTER_1_BEND_PITCH(0),
            NATURE_IO_CRITTER_1_NUM_LAYERS(1),
            NATURE_IO_CRITTER_1_PORT5(32),

            // Channel 3
            NATURE_IO_CRITTER_2_TYPE(NATURE_CRITTER_HAWK_SCREECH),
            NATURE_IO_CRITTER_2_BEND_PITCH(0),
            NATURE_IO_CRITTER_2_NUM_LAYERS(0),
            NATURE_IO_CRITTER_2_PORT5(44),

            // Channel 4
            NATURE_IO_CRITTER_3_TYPE(NATURE_CRITTER_BIRD_SCREECH),
            NATURE_IO_CRITTER_3_BEND_PITCH(63),
            NATURE_IO_CRITTER_3_NUM_LAYERS(1),
            NATURE_IO_CRITTER_3_PORT5(44),

            // End
            NATURE_IO_ENTRIES_END,
        },
    },

    // NATURE_ID_MARKET_NIGHT
    {
        0xC003, // PlayerIO Data
        0xC000, // Channel Mask
        {
            // Channel 0
            NATURE_IO_STREAM_0_TYPE(NATURE_STREAM_RUSHING_WATER),
            NATURE_IO_STREAM_0_PORT3(0),

            // Channel 1
            NATURE_IO_CRITTER_0_TYPE(NATURE_CRITTER_CRICKETS),
            NATURE_IO_CRITTER_0_BEND_PITCH(0),
            NATURE_IO_CRITTER_0_NUM_LAYERS(1),
            NATURE_IO_CRITTER_0_PORT5(16),

            // End
            NATURE_IO_ENTRIES_END,
        },
    },

    // NATURE_ID_06
    {
        0xC0FB, // PlayerIO Data
        0xC0FA, // Channel Mask
        {
            // Channel 0
            NATURE_IO_STREAM_0_TYPE(NATURE_STREAM_RUSHING_WATER),
            NATURE_IO_STREAM_0_PORT3(0),

            // Channel 1
            NATURE_IO_CRITTER_0_TYPE(NATURE_CRITTER_CRICKETS),
            NATURE_IO_CRITTER_0_BEND_PITCH(0),
            NATURE_IO_CRITTER_0_NUM_LAYERS(1),
            NATURE_IO_CRITTER_0_PORT5(16),

            // Channel 3
            NATURE_IO_CRITTER_2_TYPE(NATURE_CRITTER_BIRD_SCREECH),
            NATURE_IO_CRITTER_2_BEND_PITCH(112),
            NATURE_IO_CRITTER_2_NUM_LAYERS(1),
            NATURE_IO_CRITTER_2_PORT5(48),

            // Channel 4
            NATURE_IO_CRITTER_3_TYPE(NATURE_CRITTER_HAWK_SCREECH),
            NATURE_IO_CRITTER_3_BEND_PITCH(127),
            NATURE_IO_CRITTER_3_NUM_LAYERS(0),
            NATURE_IO_CRITTER_3_PORT5(16),

            // Channel 5
            NATURE_IO_CRITTER_4_TYPE(NATURE_CRITTER_BIRD_CHIRP_1),
            NATURE_IO_CRITTER_4_BEND_PITCH(127),
            NATURE_IO_CRITTER_4_NUM_LAYERS(1),
            NATURE_IO_CRITTER_4_PORT5(16),

            // Channel 6
            NATURE_IO_CRITTER_5_TYPE(NATURE_CRITTER_TAP),
            NATURE_IO_CRITTER_5_BEND_PITCH(127),
            NATURE_IO_CRITTER_5_NUM_LAYERS(3),
            NATURE_IO_CRITTER_5_PORT5(16),

            // Channel 7
            NATURE_IO_CRITTER_6_TYPE(NATURE_CRITTER_CUCCO_CROWS),
            NATURE_IO_CRITTER_6_BEND_PITCH(127),
            NATURE_IO_CRITTER_6_NUM_LAYERS(1),
            NATURE_IO_CRITTER_6_PORT5(16),

            // End
            NATURE_IO_ENTRIES_END,
        },
    },

    // NATURE_ID_GANONS_LAIR
    {
        0x8001, // PlayerIO Data
        0x0,    // Channel Mask
        {
            // Channel 0
            NATURE_IO_STREAM_0_TYPE(NATURE_STREAM_HOWLING_WIND),
            NATURE_IO_STREAM_0_PORT3(32),

            // End
            NATURE_IO_ENTRIES_END,
        },
    },

    // NATURE_ID_08
    {
        0xC003, // PlayerIO Data
        0xC000, // Channel Mask
        {
            // Channel 0
            NATURE_IO_STREAM_0_TYPE(NATURE_STREAM_RUSHING_WATER),
            NATURE_IO_STREAM_0_PORT3(0),

            // Channel 1
            NATURE_IO_CRITTER_0_TYPE(NATURE_CRITTER_CRICKETS),
            NATURE_IO_CRITTER_0_BEND_PITCH(0),
            NATURE_IO_CRITTER_0_NUM_LAYERS(1),
            NATURE_IO_CRITTER_0_PORT5(16),

            // End
            NATURE_IO_ENTRIES_END,
        },
    },

    // NATURE_ID_09
    {
        0xC003, // PlayerIO Data
        0xC000, // Channel Mask
        {
            // Channel 0
            NATURE_IO_STREAM_0_TYPE(NATURE_STREAM_RUSHING_WATER),
            NATURE_IO_STREAM_0_PORT3(0),

            // Channel 1
            NATURE_IO_CRITTER_0_TYPE(NATURE_CRITTER_CRICKETS),
            NATURE_IO_CRITTER_0_BEND_PITCH(0),
            NATURE_IO_CRITTER_0_NUM_LAYERS(1),
            NATURE_IO_CRITTER_0_PORT5(16),

            // End
            NATURE_IO_ENTRIES_END,
        },
    },

    // NATURE_ID_WASTELAND
    {
        0xC001, // PlayerIO Data
        0xC000, // Channel Mask
        {
            // Channel 0
            NATURE_IO_STREAM_0_TYPE(NATURE_STREAM_SCREECHING_WIND),
            NATURE_IO_STREAM_0_PORT3(0),
            NATURE_IO_STREAM_0_PORT4(0),

            // End
            NATURE_IO_ENTRIES_END,
        },
    },

    // NATURE_ID_COLOSSUS
    {
        0xC02F, // PlayerIO Data
        0xC02E, // Channel Mask
        {
            // Channel 0
            NATURE_IO_STREAM_0_TYPE(NATURE_STREAM_SCREECHING_WIND),
            NATURE_IO_STREAM_0_PORT3(0),
            NATURE_IO_STREAM_0_PORT4(0),

            // Channel 1
            NATURE_IO_CRITTER_0_TYPE(NATURE_CRITTER_SMALL_BIRD_CHIRPS),
            NATURE_IO_CRITTER_0_BEND_PITCH(64),
            NATURE_IO_CRITTER_0_NUM_LAYERS(0),
            NATURE_IO_CRITTER_0_PORT5(32),

            // Channel 2
            NATURE_IO_CRITTER_1_TYPE(NATURE_CRITTER_BIRD_CALL),
            NATURE_IO_CRITTER_1_BEND_PITCH(112),
            NATURE_IO_CRITTER_1_NUM_LAYERS(1),
            NATURE_IO_CRITTER_1_PORT5(48),

            // Channel 3
            NATURE_IO_CRITTER_2_TYPE(NATURE_CRITTER_HAWK_SCREECH),
            NATURE_IO_CRITTER_2_BEND_PITCH(127),
            NATURE_IO_CRITTER_2_NUM_LAYERS(0),
            NATURE_IO_CRITTER_2_PORT5(16),

            // Channel 5
            NATURE_IO_CRITTER_4_TYPE(NATURE_CRITTER_CRICKETS),
            NATURE_IO_CRITTER_4_BEND_PITCH(127),
            NATURE_IO_CRITTER_4_NUM_LAYERS(0),
            NATURE_IO_CRITTER_4_PORT5(16),

            // End
            NATURE_IO_ENTRIES_END,
        },
    },

    // NATURE_ID_DEATH_MOUNTAIN_TRAIL
    {
        0xC07F, // PlayerIO Data
        0xC07E, // Channel Mask
        {
            // Channel 0
            NATURE_IO_STREAM_0_TYPE(NATURE_STREAM_RUSHING_WATER),
            NATURE_IO_STREAM_0_PORT3(0),
            NATURE_IO_STREAM_0_PORT4(0),

            // Channel 1
            NATURE_IO_CRITTER_0_TYPE(NATURE_CRITTER_SMALL_BIRD_CHIRPS),
            NATURE_IO_CRITTER_0_BEND_PITCH(64),
            NATURE_IO_CRITTER_0_NUM_LAYERS(0),
            NATURE_IO_CRITTER_0_PORT5(32),

            // Channel 2
            NATURE_IO_CRITTER_1_TYPE(NATURE_CRITTER_BIRD_SCREECH),
            NATURE_IO_CRITTER_1_BEND_PITCH(112),
            NATURE_IO_CRITTER_1_NUM_LAYERS(1),
            NATURE_IO_CRITTER_1_PORT5(48),

            // Channel 3
            NATURE_IO_CRITTER_2_TYPE(NATURE_CRITTER_BIRD_SONG),
            NATURE_IO_CRITTER_2_BEND_PITCH(127),
            NATURE_IO_CRITTER_2_NUM_LAYERS(0),
            NATURE_IO_CRITTER_2_PORT5(16),

            // Channel 4
            NATURE_IO_CRITTER_3_TYPE(NATURE_CRITTER_LOUD_CHIRPING),
            NATURE_IO_CRITTER_3_BEND_PITCH(0),
            NATURE_IO_CRITTER_3_NUM_LAYERS(0),
            NATURE_IO_CRITTER_3_PORT5(16),

            // Channel 5
            NATURE_IO_CRITTER_4_TYPE(NATURE_CRITTER_BIRD_CHIRP_1),
            NATURE_IO_CRITTER_4_BEND_PITCH(0),
            NATURE_IO_CRITTER_4_NUM_LAYERS(0),
            NATURE_IO_CRITTER_4_PORT5(16),

            // Channel 6
            NATURE_IO_CRITTER_5_TYPE(NATURE_CRITTER_TAP),
            NATURE_IO_CRITTER_5_BEND_PITCH(0),
            NATURE_IO_CRITTER_5_NUM_LAYERS(0),
            NATURE_IO_CRITTER_5_PORT5(16),

            // End
            NATURE_IO_ENTRIES_END,
        },
    },

    // NATURE_ID_0D
    {
        0xC003, // PlayerIO Data
        0xC000, // Channel Mask
        {
            // Channel 0
            NATURE_IO_STREAM_0_TYPE(NATURE_STREAM_RUSHING_WATER),
            NATURE_IO_STREAM_0_PORT3(0),

            // Channel 1
            NATURE_IO_CRITTER_0_TYPE(NATURE_CRITTER_CRICKETS),
            NATURE_IO_CRITTER_0_BEND_PITCH(0),
            NATURE_IO_CRITTER_0_NUM_LAYERS(1),
            NATURE_IO_CRITTER_0_PORT5(16),

            // End
            NATURE_IO_ENTRIES_END,
        },
    },

    // NATURE_ID_0E
    {
        0xC003, // PlayerIO Data
        0xC000, // Channel Mask
        {
            // Channel 0
            NATURE_IO_STREAM_0_TYPE(NATURE_STREAM_RUSHING_WATER),
            NATURE_IO_STREAM_0_PORT3(0),

            // Channel 1
            NATURE_IO_CRITTER_0_TYPE(NATURE_CRITTER_CRICKETS),
            NATURE_IO_CRITTER_0_BEND_PITCH(0),
            NATURE_IO_CRITTER_0_NUM_LAYERS(1),
            NATURE_IO_CRITTER_0_PORT5(16),

            // End
            NATURE_IO_ENTRIES_END,
        },
    },

    // NATURE_ID_0F
    {
        0xC01F, // PlayerIO Data
        0xC000, // Channel Mask
        {
            // Channel 0
            NATURE_IO_STREAM_0_TYPE(NATURE_STREAM_RUSHING_WATER),
            NATURE_IO_STREAM_0_PORT3(0),

            // Channel 1
            NATURE_IO_CRITTER_0_TYPE(NATURE_CRITTER_BIRD_CHIRP_1),
            NATURE_IO_CRITTER_0_BEND_PITCH(80),
            NATURE_IO_CRITTER_0_NUM_LAYERS(1),
            NATURE_IO_CRITTER_0_PORT5(8),

            // Channel 2
            NATURE_IO_CRITTER_1_TYPE(NATURE_CRITTER_SMALL_BIRD_CHIRPS),
            NATURE_IO_CRITTER_1_BEND_PITCH(80),
            NATURE_IO_CRITTER_1_NUM_LAYERS(1),
            NATURE_IO_CRITTER_1_PORT5(48),

            // Channel 3
            NATURE_IO_CRITTER_2_TYPE(NATURE_CRITTER_LOUD_CHIRPING),
            NATURE_IO_CRITTER_2_BEND_PITCH(0),
            NATURE_IO_CRITTER_2_NUM_LAYERS(0),
            NATURE_IO_CRITTER_2_PORT5(0),

            // Channel 4
            NATURE_IO_CRITTER_3_TYPE(NATURE_CRITTER_BIRD_SCREECH),
            NATURE_IO_CRITTER_3_BEND_PITCH(96),
            NATURE_IO_CRITTER_3_NUM_LAYERS(0),
            NATURE_IO_CRITTER_3_PORT5(32),

            // End
            NATURE_IO_ENTRIES_END,
        },
    },

    // NATURE_ID_10
    {
        0xC003, // PlayerIO Data
        0xC000, // Channel Mask
        {
            // Channel 0
            NATURE_IO_STREAM_0_TYPE(NATURE_STREAM_RUSHING_WATER),
            NATURE_IO_STREAM_0_PORT3(0),

            // Channel 1
            NATURE_IO_CRITTER_0_TYPE(NATURE_CRITTER_CRICKETS),
            NATURE_IO_CRITTER_0_BEND_PITCH(0),
            NATURE_IO_CRITTER_0_NUM_LAYERS(1),
            NATURE_IO_CRITTER_0_PORT5(16),

            // End
            NATURE_IO_ENTRIES_END,
        },
    },

    // NATURE_ID_11
    {
        0xC003, // PlayerIO Data
        0xC000, // Channel Mask
        {
            // Channel 0
            NATURE_IO_STREAM_0_TYPE(NATURE_STREAM_RUSHING_WATER),
            NATURE_IO_STREAM_0_PORT3(0),

            // Channel 1
            NATURE_IO_CRITTER_0_TYPE(NATURE_CRITTER_CRICKETS),
            NATURE_IO_CRITTER_0_BEND_PITCH(0),
            NATURE_IO_CRITTER_0_NUM_LAYERS(1),
            NATURE_IO_CRITTER_0_PORT5(16),

            // End
            NATURE_IO_ENTRIES_END,
        },
    },

    // NATURE_ID_12
    {
        0xC003, // PlayerIO Data
        0xC000, // Channel Mask
        {
            // Channel 0
            NATURE_IO_STREAM_0_TYPE(NATURE_STREAM_RUSHING_WATER),
            NATURE_IO_STREAM_0_PORT3(0),

            // Channel 1
            NATURE_IO_CRITTER_0_TYPE(NATURE_CRITTER_CRICKETS),
            NATURE_IO_CRITTER_0_BEND_PITCH(0),
            NATURE_IO_CRITTER_0_NUM_LAYERS(1),
            NATURE_IO_CRITTER_0_PORT5(16),

            // End
            NATURE_IO_ENTRIES_END,
        },
    },

    // NATURE_ID_NONE
    // While there is data for this natureAmbienceId, it is identical to previous entries
    // and the game treats it as no nature ambience
    {
        0xC003, // PlayerIO Data
        0xC000, // Channel Mask
        {
            // Channel 0
            NATURE_IO_STREAM_0_TYPE(NATURE_STREAM_RUSHING_WATER),
            NATURE_IO_STREAM_0_PORT3(0),

            // Channel 1
            NATURE_IO_CRITTER_0_TYPE(NATURE_CRITTER_CRICKETS),
            NATURE_IO_CRITTER_0_BEND_PITCH(0),
            NATURE_IO_CRITTER_0_NUM_LAYERS(1),
            NATURE_IO_CRITTER_0_PORT5(16),

            // End
            NATURE_IO_ENTRIES_END,
        },
    },
};

u32 sOcarinaAllowedButtonMask = (BTN_A | BTN_CRIGHT | BTN_CLEFT | BTN_CDOWN | BTN_CUP);
s32 sOcarinaAButtonMap = BTN_A;
s32 sOcarinaCUpButtonMap = BTN_CUP;
s32 sOcarinaCDownButtonMap = BTN_CDOWN;
u8 sIsOcarinaInputEnabled = false;
s8 sOcarinaInstrumentId = OCARINA_INSTRUMENT_OFF;
u8 sCurOcarinaPitch = OCARINA_PITCH_NONE;
u8 sPrevOcarinaPitch = OCARINA_PITCH_C4;
u8 sCurOcarinaButtonIndex = OCARINA_BTN_A;
u8 sMusicStaffPrevPitch = OCARINA_PITCH_C4;
f32 sCurOcarinaBendFreq = 1.0f;
f32 sRelativeOcarinaVolume = 87.0f / 127.0f;
s8 sCurOcarinaBendIndex = 0;
s8 sCurOcarinaVolume = 87;
s8 sCurOcarinaVibrato = 0;
u8 sPlaybackState = 0;
u32 sOcarinaFlags = 0;
u32 sPlaybackNoteTimer = 0;
u16 sPlaybackNotePos = 0;
u16 sPlaybackStaffPos = 0;
u16 sPrevOcarinaWithMusicStaffFlags = 0;
u8 sPlaybackPitch = OCARINA_PITCH_NONE; // Pitch + PitchFlags
u8 sNotePlaybackVolume = 0;
u8 sNotePlaybackVibrato = 0;
s8 sNotePlaybackBend = 0;
f32 sRelativeNotePlaybackBend = 1.0f;
f32 sRelativeNotePlaybackVolume = 1.0f;
s32 sOcarinaPlaybackTaskStart = 0;

u8 sButtonToPitchMap[5] = {
    OCARINA_PITCH_D4, // OCARINA_BTN_A
    OCARINA_PITCH_F4, // OCARINA_BTN_C_DOWN
    OCARINA_PITCH_A4, // OCARINA_BTN_C_RIGHT
    OCARINA_PITCH_B4, // OCARINA_BTN_C_LEFT
    OCARINA_PITCH_D5, // OCARINA_BTN_C_UP
};

u8 sOcaMemoryGameAppendPos = 0;
u8 sOcaMemoryGameEndPos = 0;
u8 sOcaMemoryGameNumNotes[] = { 5, 6, 8 };

OcarinaNote sOcarinaSongNotes[OCARINA_SONG_MAX][20] = {
    // OCARINA_SONG_MINUET
    {
        { OCARINA_PITCH_D4, 18, 86, 0, 0, 0 },
        { OCARINA_PITCH_D5, 18, 92, 0, 0, 0 },
        { OCARINA_PITCH_B4, 72, 86, 0, 0, 0 },
        { OCARINA_PITCH_A4, 18, 80, 0, 0, 0 },
        { OCARINA_PITCH_B4, 18, 88, 0, 0, 0 },
        { OCARINA_PITCH_A4, 144, 86, 0, 0, 0 },
        { OCARINA_PITCH_NONE, 0, 86, 0, 0, 0 },
    },

    // OCARINA_SONG_BOLERO
    {
        { OCARINA_PITCH_F4, 15, 80, 0, 0, 0 },
        { OCARINA_PITCH_D4, 15, 72, 0, 0, 0 },
        { OCARINA_PITCH_F4, 15, 84, 0, 0, 0 },
        { OCARINA_PITCH_D4, 15, 76, 0, 0, 0 },
        { OCARINA_PITCH_A4, 15, 84, 0, 0, 0 },
        { OCARINA_PITCH_F4, 15, 74, 0, 0, 0 },
        { OCARINA_PITCH_A4, 15, 78, 0, 0, 0 },
        { OCARINA_PITCH_F4, 135, 66, 0, 0, 0 },
        { OCARINA_PITCH_NONE, 0, 66, 0, 0, 0 },
    },

    // OCARINA_SONG_SERENADE
    {
        { OCARINA_PITCH_D4, 36, 60, 0, 0, 0 },
        { OCARINA_PITCH_F4, 36, 78, 0, 0, 0 },
        { OCARINA_PITCH_A4, 33, 82, 0, 0, 0 },
        { OCARINA_PITCH_NONE, 3, 82, 0, 0, 0 },
        { OCARINA_PITCH_A4, 36, 84, 0, 0, 0 },
        { OCARINA_PITCH_B4, 144, 90, 0, 0, 0 },
        { OCARINA_PITCH_NONE, 0, 90, 0, 0, 0 },
    },

    // OCARINA_SONG_REQUIEM
    {
        { OCARINA_PITCH_D4, 45, 88, 0, 0, 0 },
        { OCARINA_PITCH_F4, 23, 86, 0, 0, 0 },
        { OCARINA_PITCH_D4, 22, 84, 0, 0, 0 },
        { OCARINA_PITCH_A4, 45, 86, 0, 0, 0 },
        { OCARINA_PITCH_F4, 45, 94, 0, 0, 0 },
        { OCARINA_PITCH_D4, 180, 94, 0, 0, 0 },
        { OCARINA_PITCH_NONE, 0, 94, 0, 0, 0 },
    },

    // OCARINA_SONG_NOCTURNE
    {
        { OCARINA_PITCH_B4, 36, 88, 0, 0, 0 },
        { OCARINA_PITCH_A4, 33, 84, 0, 0, 0 },
        { OCARINA_PITCH_NONE, 3, 84, 0, 0, 0 },
        { OCARINA_PITCH_A4, 18, 82, 0, 0, 0 },
        { OCARINA_PITCH_D4, 18, 60, 0, 0, 0 },
        { OCARINA_PITCH_B4, 18, 90, 0, 0, 0 },
        { OCARINA_PITCH_A4, 18, 88, 0, 0, 0 },
        { OCARINA_PITCH_F4, 144, 96, 0, 0, 0 },
        { OCARINA_PITCH_NONE, 0, 96, 0, 0, 0 },
    },

    // OCARINA_SONG_PRELUDE
    {
        { OCARINA_PITCH_D5, 15, 84, 0, 0, 0 },
        { OCARINA_PITCH_A4, 45, 88, 0, 0, 0 },
        { OCARINA_PITCH_D5, 15, 88, 0, 0, 0 },
        { OCARINA_PITCH_A4, 15, 82, 0, 0, 0 },
        { OCARINA_PITCH_B4, 15, 86, 0, 0, 0 },
        { OCARINA_PITCH_D5, 60, 90, 0, 0, 0 },
        { OCARINA_PITCH_NONE, 75, 90, 0, 0, 0 },
        { OCARINA_PITCH_NONE, 0, 90, 0, 0, 0 },
    },

    // OCARINA_SONG_SARIAS
    {
        { OCARINA_PITCH_F4, 17, 84, 0, 0, 0 },
        { OCARINA_PITCH_A4, 17, 88, 0, 0, 0 },
        { OCARINA_PITCH_B4, 34, 80, 0, 0, 0 },
        { OCARINA_PITCH_F4, 17, 84, 0, 0, 0 },
        { OCARINA_PITCH_A4, 17, 88, 0, 0, 0 },
        { OCARINA_PITCH_B4, 136, 80, 0, 0, 0 },
        { OCARINA_PITCH_NONE, 0, 90, 0, 0, 0 },
    },

    // OCARINA_SONG_EPONAS
    {
        { OCARINA_PITCH_D5, 18, 84, 0, 0, 0 },
        { OCARINA_PITCH_B4, 18, 88, 0, 0, 0 },
        { OCARINA_PITCH_A4, 72, 80, 0, 0, 0 },
        { OCARINA_PITCH_D5, 18, 84, 0, 0, 0 },
        { OCARINA_PITCH_B4, 18, 88, 0, 0, 0 },
        { OCARINA_PITCH_A4, 144, 80, 0, 0, 0 },
        { OCARINA_PITCH_NONE, 0, 90, 0, 0, 0 },
    },

    // OCARINA_SONG_LULLABY
    {
        { OCARINA_PITCH_B4, 51, 84, 0, 0, 0 },
        { OCARINA_PITCH_D5, 25, 88, 0, 0, 0 },
        { OCARINA_PITCH_A4, 78, 80, 0, 0, 0 },
        { OCARINA_PITCH_B4, 51, 84, 0, 0, 0 },
        { OCARINA_PITCH_D5, 25, 88, 0, 0, 0 },
        { OCARINA_PITCH_A4, 100, 80, 0, 0, 0 },
        { OCARINA_PITCH_NONE, 0, 90, 0, 0, 0 },
    },

    // OCARINA_SONG_SUNS
    {
        { OCARINA_PITCH_A4, 12, 84, 0, 0, 0 },
        { OCARINA_PITCH_F4, 13, 88, 0, 0, 0 },
        { OCARINA_PITCH_D5, 29, 80, 2, 0, 0 },
        { OCARINA_PITCH_NONE, 9, 84, 0, 0, 0 },
        { OCARINA_PITCH_A4, 12, 84, 0, 0, 0 },
        { OCARINA_PITCH_F4, 13, 88, 0, 0, 0 },
        { OCARINA_PITCH_D5, 120, 80, 3, 0, 0 },
        { OCARINA_PITCH_NONE, 0, 90, 0, 0, 0 },
    },

    // OCARINA_SONG_TIME
    {
        { OCARINA_PITCH_A4, 32, 84, 0, 0, 0 },
        { OCARINA_PITCH_D4, 65, 88, 0, 0, 0 },
        { OCARINA_PITCH_F4, 33, 80, 0, 0, 0 },
        { OCARINA_PITCH_A4, 32, 84, 0, 0, 0 },
        { OCARINA_PITCH_D4, 65, 88, 0, 0, 0 },
        { OCARINA_PITCH_F4, 99, 80, 0, 0, 0 },
        { OCARINA_PITCH_NONE, 0, 90, 0, 0, 0 },
    },

    // OCARINA_SONG_STORMS
    {
        { OCARINA_PITCH_D4, 11, 84, 0, 0, 0 },
        { OCARINA_PITCH_F4, 11, 88, 0, 0, 0 },
        { OCARINA_PITCH_D5, 45, 80, 0, 0, 0 },
        { OCARINA_PITCH_D4, 11, 84, 0, 0, 0 },
        { OCARINA_PITCH_F4, 11, 88, 0, 0, 0 },
        { OCARINA_PITCH_D5, 90, 80, 0, 0, 0 },
        { OCARINA_PITCH_NONE, 0, 90, 0, 0, 0 },
    },

    // OCARINA_SONG_SCARECROW_SPAWN
    {
        { OCARINA_PITCH_D4, 3, 0, 0, 0, 0 },
        { OCARINA_PITCH_NONE, 0, 255, 0, 0, 0 },
    },

    // OCARINA_SONG_MEMORY_GAME
    {
        { OCARINA_PITCH_D4, 3, 0, 0, 0, 0 },
        { OCARINA_PITCH_NONE, 0, 0, 0, 0, 0 },
    },
};

OcarinaNote* sPlaybackSong = sOcarinaSongNotes[0];
u8 sFrogsSongNotes[14] = {
    OCARINA_BTN_A,       OCARINA_BTN_C_LEFT,  OCARINA_BTN_C_RIGHT, OCARINA_BTN_C_DOWN, OCARINA_BTN_C_LEFT,
    OCARINA_BTN_C_RIGHT, OCARINA_BTN_C_DOWN,  OCARINA_BTN_A,       OCARINA_BTN_C_DOWN, OCARINA_BTN_A,
    OCARINA_BTN_C_DOWN,  OCARINA_BTN_C_RIGHT, OCARINA_BTN_C_LEFT,  OCARINA_BTN_A,
};
u8* gFrogsSongPtr = sFrogsSongNotes;
u8 sRecordingState = OCARINA_RECORD_OFF;
u8 sRecordSongPos = 0;
u32 sOcarinaRecordTaskStart = 0;
u8 sRecordOcarinaPitch = 0;
u8 sRecordOcarinaVolume = 0;
u8 sRecordOcarinaVibrato = 0;
s8 sRecordOcarinaBendIndex = 0;
u8 sRecordOcarinaButtonIndex = 0;
u8 sPlayedOcarinaSongIndexPlusOne = 0;
u8 sMusicStaffNumNotesPerTest = 0;
u8 sOcarinaDropInputTimer = 0;

OcarinaNote sScarecrowsLongSongNotes[108] = {
    { OCARINA_PITCH_NONE, 0, 0, 0, 0, 0 },
    { OCARINA_PITCH_NONE, 0, 0, 0, 0, 0 },
};
OcarinaNote* gScarecrowLongSongPtr = sScarecrowsLongSongNotes;

u8* gScarecrowSpawnSongPtr = (u8*)&sOcarinaSongNotes[OCARINA_SONG_SCARECROW_SPAWN];
OcarinaNote* sMemoryGameSongPtr = sOcarinaSongNotes[OCARINA_SONG_MEMORY_GAME];

u8 sPitchToButtonMap[16] = {
    OCARINA_BTN_A,                 // OCARINA_PITCH_C4
    OCARINA_BTN_A,                 // OCARINA_PITCH_DFLAT4
    OCARINA_BTN_A,                 // OCARINA_PITCH_D4
    OCARINA_BTN_A,                 // OCARINA_PITCH_EFLAT4
    OCARINA_BTN_C_DOWN,            // OCARINA_PITCH_E4
    OCARINA_BTN_C_DOWN,            // OCARINA_PITCH_F4
    OCARINA_BTN_C_DOWN,            // OCARINA_PITCH_GFLAT4
    OCARINA_BTN_C_RIGHT,           // OCARINA_PITCH_G4
    OCARINA_BTN_C_RIGHT,           // OCARINA_PITCH_AFLAT4
    OCARINA_BTN_C_RIGHT,           // OCARINA_PITCH_A4
    OCARINA_BTN_C_RIGHT_OR_C_LEFT, // OCARINA_PITCH_BFLAT4: Interface/Overlap between C_RIGHT and C_LEFT
    OCARINA_BTN_C_LEFT,            // OCARINA_PITCH_B4
    OCARINA_BTN_C_LEFT,            // OCARINA_PITCH_C5
    OCARINA_BTN_C_UP,              // OCARINA_PITCH_DFLAT5
    OCARINA_BTN_C_UP,              // OCARINA_PITCH_D5
    OCARINA_BTN_C_UP,              // OCARINA_PITCH_EFLAT5
};

OcarinaSongButtons gOcarinaSongButtons[OCARINA_SONG_MAX] = {
    // OCARINA_SONG_MINUET
    { 6,
      {
          OCARINA_BTN_A,
          OCARINA_BTN_C_UP,
          OCARINA_BTN_C_LEFT,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_C_LEFT,
          OCARINA_BTN_C_RIGHT,
      } },
    // OCARINA_SONG_BOLERO
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
    // OCARINA_SONG_SERENADE
    { 5,
      {
          OCARINA_BTN_A,
          OCARINA_BTN_C_DOWN,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_C_LEFT,
      } },
    // OCARINA_SONG_REQUIEM
    { 6,
      {
          OCARINA_BTN_A,
          OCARINA_BTN_C_DOWN,
          OCARINA_BTN_A,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_C_DOWN,
          OCARINA_BTN_A,
      } },
    // OCARINA_SONG_NOCTURNE
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
    // OCARINA_SONG_PRELUDE
    { 6,
      {
          OCARINA_BTN_C_UP,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_C_UP,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_C_LEFT,
          OCARINA_BTN_C_UP,
      } },
    // OCARINA_SONG_SARIAS
    { 6,
      {
          OCARINA_BTN_C_DOWN,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_C_LEFT,
          OCARINA_BTN_C_DOWN,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_C_LEFT,
      } },
    // OCARINA_SONG_EPONAS
    { 6,
      {
          OCARINA_BTN_C_UP,
          OCARINA_BTN_C_LEFT,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_C_UP,
          OCARINA_BTN_C_LEFT,
          OCARINA_BTN_C_RIGHT,
      } },
    // OCARINA_SONG_LULLABY
    { 6,
      {
          OCARINA_BTN_C_LEFT,
          OCARINA_BTN_C_UP,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_C_LEFT,
          OCARINA_BTN_C_UP,
          OCARINA_BTN_C_RIGHT,
      } },
    // OCARINA_SONG_SUNS
    { 6,
      {
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_C_DOWN,
          OCARINA_BTN_C_UP,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_C_DOWN,
          OCARINA_BTN_C_UP,
      } },
    // OCARINA_SONG_TIME
    { 6,
      {
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_A,
          OCARINA_BTN_C_DOWN,
          OCARINA_BTN_C_RIGHT,
          OCARINA_BTN_A,
          OCARINA_BTN_C_DOWN,
      } },
    // OCARINA_SONG_STORMS
    { 6,
      {
          OCARINA_BTN_A,
          OCARINA_BTN_C_DOWN,
          OCARINA_BTN_C_UP,
          OCARINA_BTN_A,
          OCARINA_BTN_C_DOWN,
          OCARINA_BTN_C_UP,
      } },
    // OCARINA_SONG_SCARECROW_SPAWN
    { 8, { 0 } },
    // OCARINA_SONG_MEMORY_GAME
    { 0, { 0 } },
};

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
    char str[5];
    u16 num;
} sAudioScrPrtBuf[SCROLL_PRINT_BUF_SIZE];
u8 sRiverSoundMainBgmVol;
u8 sRiverSoundMainBgmCurrentVol;
u8 sRiverSoundMainBgmLower;
u8 sRiverSoundMainBgmRestore;
u8 sGanonsTowerVol;
SfxPlayerState sSfxChannelState[0x10];
char sBinToStrBuf[0x20];
u8 sMalonSingingTimer;
u8 sAudioSpecPeakNumNotes[0x12];
u8 sMalonSingingDisabled;
u8 D_8016B9F3;
u8 sFanfareStartTimer;
u16 sFanfareSeqId;

OcarinaStaff sPlayingStaff;
OcarinaStaff sPlaybackStaff;
OcarinaStaff sRecordingStaff;
u32 sOcarinaUpdateTaskStart;
OcarinaStick sOcarinaInputStickAdj;
u32 sOcarinaInputButtonCur;
u32 sOcarinaInputButtonStart;
u32 sOcarinaInputButtonPrev;
s32 sOcarinaInputButtonPress;
s32 sOcarinaUnused;
u8 sCurOcarinaSongWithoutMusicStaff[8];
u8 sOcarinaWithoutMusicStaffPos;
u8 sOcarinaHasStartedSong;
u8 sFirstOcarinaSongIndex;
u8 sLastOcarinaSongIndex;
u16 sAvailOcarinaSongFlags;
u8 sStaffOcarinaPlayingPos;
u16 sMusicStaffPos[OCARINA_SONG_MAX];
u16 sMusicStaffCurHeldLength[OCARINA_SONG_MAX];
u16 sMusicStaffExpectedLength[OCARINA_SONG_MAX];
u8 sMusicStaffExpectedPitch[OCARINA_SONG_MAX];
OcarinaNote sScarecrowsLongSongSecondNote;
u8 sIsMalonSinging;
f32 sMalonSingingDist;

void PadMgr_RequestPadData(PadMgr* padMgr, Input* inputs, s32 gameRequest);

void Audio_StepFreqLerp(FreqLerp* lerp);
void Audio_UpdateSceneSequenceResumePoint(void);
void Audio_PlayNatureAmbienceSequence(u8 natureAmbienceId);
s32 Audio_SetGanonsTowerBgmVolume(u8 targetVol);

// =========== Audio Ocarina ===========

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
    Input inputs[MAXCONTROLLERS];
    Input* input = &inputs[0];
    u32 ocarinaInputButtonPrev = sOcarinaInputButtonCur;

    PadMgr_RequestPadData(&gPadMgr, inputs, false);
    sOcarinaInputButtonCur = input->cur.button;
    sOcarinaInputButtonPrev = ocarinaInputButtonPrev;
    sOcarinaInputStickAdj.x = input->rel.stick_x;
    sOcarinaInputStickAdj.y = input->rel.stick_y;
}

/**
 * Looks up the frequency to bend the pitch by.
 * The pitch will bend up to a maximum of 2 semitones
 * in each direction giving a total range of 4 semitones
 */
f32 AudioOcarina_BendPitchTwoSemitones(s8 bendIndex) {
    s8 adjBendIndex;
    f32 bendFreq;

    if (bendIndex > 64) {
        adjBendIndex = 127;
    } else if (bendIndex < -64) {
        adjBendIndex = -128;
    } else if (bendIndex >= 0) {
        adjBendIndex = (bendIndex * 127) / 64;
    } else {
        adjBendIndex = (bendIndex * 128) / 64;
    }

    /**
     * index 128 is in the middle of the table and
     * contains the value 1.0f i.e. no bend
     * absolute indices above 128 will bend the pitch 2 semitones upwards
     * absolute indices below 128 will bend the pitch 2 semitones downwards
     */
    bendFreq = gBendPitchTwoSemitonesFrequencies[adjBendIndex + 128];
    return bendFreq;
}

/**
 * If an available song has been played, then return that song index
 * If the ocarina is on, but no song has been played then return 0xFE
 * If the ocarina is off, return 0xFF
 */
u8 AudioOcarina_GetPlayingState(void) {
    u8 playedOcarinaSongIndex;

    if (sPlayedOcarinaSongIndexPlusOne != 0) {
        playedOcarinaSongIndex = sPlayedOcarinaSongIndexPlusOne - 1;
        sPlayedOcarinaSongIndexPlusOne = 0;
    } else if (sOcarinaFlags != 0) {
        playedOcarinaSongIndex = 0xFE;
    } else {
        playedOcarinaSongIndex = 0xFF;
    }

    return playedOcarinaSongIndex;
}

u8 AudioOcarina_MapNoteToButton(u8 pitchAndBFlatFlag) {
    u8 buttonIndex = sPitchToButtonMap[pitchAndBFlatFlag & 0x3F];

    /**
     * Special case for bFlat4:
     * CRIGHT and CLEFT are the only two pitches that are 2 semitones apart
     * which are pitches A4 and B4 respectively
     * bFlat4 is in the middle of those two and is the only pitches that can not
     * be resolved between the two buttons without external information.
     * That information is stored as flags in pitch with the mask:
     * (pitchAndBFlatFlag & 0xC0)
     */
    if (buttonIndex == OCARINA_BTN_C_RIGHT_OR_C_LEFT) {
        if (pitchAndBFlatFlag & 0x80) {
            return OCARINA_BTN_C_RIGHT;
        }
        return OCARINA_BTN_C_LEFT;
    }

    return buttonIndex;
}

void AudioOcarina_MapNotesToScarecrowButtons(u8 noteSongIndex) {
    u8 buttonSongPos = 0;
    u8 noteSongPos = 0;
    u8 pitch;

    while (buttonSongPos < 8 && noteSongPos < 16) {
        pitch = sOcarinaSongNotes[noteSongIndex][noteSongPos++].pitch;

        if (pitch != OCARINA_PITCH_NONE) {
            gOcarinaSongButtons[OCARINA_SONG_SCARECROW_SPAWN].buttonsIndex[buttonSongPos++] = sPitchToButtonMap[pitch];
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
        sFirstOcarinaSongIndex = 0;
        sLastOcarinaSongIndex = OCARINA_SONG_MAX;
        if (ocarinaFlags != 0xA000) {
            sLastOcarinaSongIndex--;
        }
        sAvailOcarinaSongFlags = ocarinaFlags & 0x3FFF;
        sMusicStaffNumNotesPerTest = 8; // Ocarina Check
        sOcarinaHasStartedSong = false;
        sPlayedOcarinaSongIndexPlusOne = 0;
        sStaffOcarinaPlayingPos = 0;
        sPlayingStaff.state = AudioOcarina_GetPlayingState();
        sIsOcarinaInputEnabled = true;
        sPrevOcarinaWithMusicStaffFlags = 0;

        // Reset music staff song check
        for (i = 0; i < OCARINA_SONG_MAX; i++) {
            sMusicStaffPos[i] = 0;
            sMusicStaffCurHeldLength[i] = 0;
            sMusicStaffExpectedLength[i] = 0;
            sMusicStaffExpectedPitch[i] = 0;
        }

        if (ocarinaFlags & 0x8000) {
            sMusicStaffNumNotesPerTest = 0; // Ocarina Playback
        }

        if (ocarinaFlags & 0x4000) {
            sOcarinaWithoutMusicStaffPos = 0;
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
    if (sCurOcarinaPitch != OCARINA_PITCH_NONE && !sOcarinaHasStartedSong) {
        sOcarinaHasStartedSong = true;
        sMusicStaffPrevPitch = OCARINA_PITCH_NONE;
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
    u8 songIndex;
    OcarinaNote* curNote;
    OcarinaNote* nextNote;

    AudioOcarina_CheckIfStartedSong();

    if (!sOcarinaHasStartedSong) {
        return;
    }

    if (ABS_ALT(sCurOcarinaBendIndex) > 20) {
        sOcarinaFlags = 0;
        return;
    }

    // clang-format off
    if (sPrevOcarinaPitch == sCurOcarinaPitch || sCurOcarinaPitch == OCARINA_PITCH_NONE) { noNewValidInput = true; }
    // clang-format on

    for (songIndex = sFirstOcarinaSongIndex; songIndex < sLastOcarinaSongIndex; songIndex++) {
        curOcarinaSongFlag = 1 << songIndex;

        if (sAvailOcarinaSongFlags & curOcarinaSongFlag) {
            sMusicStaffCurHeldLength[songIndex] = sMusicStaffExpectedLength[songIndex] + 18;

            if (noNewValidInput) {
                if ((sMusicStaffCurHeldLength[songIndex] >= sMusicStaffExpectedLength[songIndex] - 18) &&
                    (sMusicStaffCurHeldLength[songIndex] >= sMusicStaffExpectedLength[songIndex] + 18) &&
                    (sOcarinaSongNotes[songIndex][sMusicStaffPos[songIndex]].length == 0) &&
                    (sMusicStaffPrevPitch == sMusicStaffExpectedPitch[songIndex])) {
                    // This case is taken if the song is finished and successfully played
                    // (i.e. .length == 0 indicates that the song is at the end)
                    sPlayedOcarinaSongIndexPlusOne = songIndex + 1;
                    sIsOcarinaInputEnabled = false;
                    sOcarinaFlags = 0;
                }
            } else if (sMusicStaffCurHeldLength[songIndex] >= (sMusicStaffExpectedLength[songIndex] - 18)) {
                // This else-if statement always holds true, taken if a new note is played
                if (sMusicStaffPrevPitch != OCARINA_PITCH_NONE) {
                    // New note is played
                    if (sMusicStaffPrevPitch == sMusicStaffExpectedPitch[songIndex]) {
                        // Note is part of expected song
                        if (songIndex == OCARINA_SONG_SCARECROW_SPAWN) {
                            sMusicStaffCurHeldLength[songIndex] = 0;
                        }
                    } else {
                        // Note is not part of expected song, so this song is no longer available as an option in this
                        // playback
                        sAvailOcarinaSongFlags ^= curOcarinaSongFlag;
                    }
                }

                curNote = &sOcarinaSongNotes[songIndex][sMusicStaffPos[songIndex]];
                nextNote = &sOcarinaSongNotes[songIndex][++sMusicStaffPos[songIndex]];
                sMusicStaffExpectedLength[songIndex] = curNote->length;
                sMusicStaffExpectedPitch[songIndex] = curNote->pitch;

                // The current note is not the expected note.
                if (sCurOcarinaPitch != sMusicStaffExpectedPitch[songIndex]) {
                    sAvailOcarinaSongFlags ^= curOcarinaSongFlag;
                }

                while (curNote->pitch == nextNote->pitch ||
                       (nextNote->pitch == OCARINA_BTN_INVALID && nextNote->length != 0)) {
                    sMusicStaffExpectedLength[songIndex] += nextNote->length;
                    curNote = &sOcarinaSongNotes[songIndex][sMusicStaffPos[songIndex]];
                    nextNote = &sOcarinaSongNotes[songIndex][sMusicStaffPos[songIndex] + 1];
                    sMusicStaffPos[songIndex]++;
                }
            } else if (sMusicStaffCurHeldLength[songIndex] < 10) {
                // case never taken
                staffOcarinaPlayingPosOffset = -1;
                sMusicStaffCurHeldLength[songIndex] = 0;
                sMusicStaffPrevPitch = sCurOcarinaPitch;
            } else {
                // case never taken
                sAvailOcarinaSongFlags ^= curOcarinaSongFlag;
            }
        }

        // if a note is played that doesn't match a song, the song bit in sAvailOcarinaSongFlags is turned off
        // if there are no more songs remaining that it could be and the maximum position has been exceeded, then
        if (sAvailOcarinaSongFlags == 0 && sStaffOcarinaPlayingPos >= sMusicStaffNumNotesPerTest) {
            sIsOcarinaInputEnabled = false;
            if ((sOcarinaFlags & 0x4000) && sCurOcarinaPitch == sOcarinaSongNotes[songIndex][0].pitch) {
                // case never taken, this function is not called if (sOcarinaFlags & 0x4000) is set
                sPrevOcarinaWithMusicStaffFlags = sOcarinaFlags;
            }
            sOcarinaFlags = 0;
            return;
        }
    }

    if (!noNewValidInput) {
        sMusicStaffPrevPitch = sCurOcarinaPitch;
        sStaffOcarinaPlayingPos += staffOcarinaPlayingPosOffset + 1;
    }
}

/**
 * Checks for ocarina songs from user input with no music staff prompt.
 * Includes ocarina actions such as free play, no warp
 */
void AudioOcarina_CheckSongsWithoutMusicStaff(void) {
    u32 pitch;
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

    if ((sPrevOcarinaPitch != sCurOcarinaPitch) && (sCurOcarinaPitch != OCARINA_PITCH_NONE)) {
        sStaffOcarinaPlayingPos++;
        if (sStaffOcarinaPlayingPos > ARRAY_COUNT(sCurOcarinaSongWithoutMusicStaff)) {
            sStaffOcarinaPlayingPos = 1;
        }

        if (sOcarinaWithoutMusicStaffPos == 8) {
            for (i = 0; i < 7; i++) {
                sCurOcarinaSongWithoutMusicStaff[i] = sCurOcarinaSongWithoutMusicStaff[i + 1];
            }
        } else {
            sOcarinaWithoutMusicStaffPos++;
        }

        if (ABS_ALT(sCurOcarinaBendIndex) > 20) {
            sCurOcarinaSongWithoutMusicStaff[sOcarinaWithoutMusicStaffPos - 1] = OCARINA_PITCH_NONE;
        } else {
            sCurOcarinaSongWithoutMusicStaff[sOcarinaWithoutMusicStaffPos - 1] = sCurOcarinaPitch;
        }

        // This nested for-loop tests to see if the notes from the ocarina are identical
        // to any of the songIndex from sFirstOcarinaSongIndex to sLastOcarinaSongIndex

        // Loop through each of the songs
        for (i = sFirstOcarinaSongIndex; i < sLastOcarinaSongIndex; i++) {
            // Checks to see if the song is available to be played
            if (sAvailOcarinaSongFlags & (u16)(1 << i)) {
                for (j = 0, k = 0; j < gOcarinaSongButtons[i].numButtons && k == 0 &&
                                   sOcarinaWithoutMusicStaffPos >= gOcarinaSongButtons[i].numButtons;) {
                    pitch = sCurOcarinaSongWithoutMusicStaff[sOcarinaWithoutMusicStaffPos -
                                                             gOcarinaSongButtons[i].numButtons + j];
                    if (pitch == sButtonToPitchMap[gOcarinaSongButtons[i].buttonsIndex[j]]) {
                        j++;
                    } else {
                        k++;
                    }
                }

                // This conditional is true if songIndex = i is detected
                if (j == gOcarinaSongButtons[i].numButtons) {
                    sPlayedOcarinaSongIndexPlusOne = i + 1;
                    sIsOcarinaInputEnabled = false;
                    sOcarinaFlags = 0;
                }
            }
        }
    }
}

// This unused argument is used in Majora's Mask as a u8
void AudioOcarina_PlayControllerInput(u8 unused) {
    u32 ocarinaBtnsHeld;

    // Prevents two different ocarina notes from being played on two consecutive frames
    if ((sOcarinaFlags != 0) && (sOcarinaDropInputTimer != 0)) {
        sOcarinaDropInputTimer--;
        return;
    }

    // Ensures the button pressed to start the ocarina does not also play an ocarina note
    if ((sOcarinaInputButtonStart == 0) || ((sOcarinaInputButtonStart & sOcarinaAllowedButtonMask) !=
                                            (sOcarinaInputButtonCur & sOcarinaAllowedButtonMask))) {
        sOcarinaInputButtonStart = 0;
        if (1) {}
        sCurOcarinaPitch = OCARINA_PITCH_NONE;
        sCurOcarinaButtonIndex = OCARINA_BTN_INVALID;
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
            sCurOcarinaPitch = OCARINA_PITCH_D4;
            sCurOcarinaButtonIndex = OCARINA_BTN_A;

        } else if (CHECK_BTN_ANY(sOcarinaInputButtonPress, sOcarinaCDownButtonMap)) {
            osSyncPrintf("Presss NA_KEY_F4 %08x\n", sOcarinaCDownButtonMap);
            sCurOcarinaPitch = OCARINA_PITCH_F4;
            sCurOcarinaButtonIndex = OCARINA_BTN_C_DOWN;

        } else if (CHECK_BTN_ANY(sOcarinaInputButtonPress, BTN_CRIGHT)) {
            osSyncPrintf("Presss NA_KEY_A4 %08x\n", BTN_CRIGHT);
            sCurOcarinaPitch = OCARINA_PITCH_A4;
            sCurOcarinaButtonIndex = OCARINA_BTN_C_RIGHT;

        } else if (CHECK_BTN_ANY(sOcarinaInputButtonPress, BTN_CLEFT)) {
            osSyncPrintf("Presss NA_KEY_B4 %08x\n", BTN_CLEFT);
            sCurOcarinaPitch = OCARINA_PITCH_B4;
            sCurOcarinaButtonIndex = OCARINA_BTN_C_LEFT;

        } else if (CHECK_BTN_ANY(sOcarinaInputButtonPress, sOcarinaCUpButtonMap)) {
            osSyncPrintf("Presss NA_KEY_D5 %08x\n", sOcarinaCUpButtonMap);
            sCurOcarinaPitch = OCARINA_PITCH_D5;
            sCurOcarinaButtonIndex = OCARINA_BTN_C_UP;
        }

        // Pressing the R Button will raise the pitch by 1 semitone
        if ((sCurOcarinaPitch != OCARINA_PITCH_NONE) && CHECK_BTN_ANY(sOcarinaInputButtonCur, BTN_R) &&
            (sRecordingState != OCARINA_RECORD_SCARECROW_SPAWN)) {
            sCurOcarinaButtonIndex += 0x80; // Flag to resolve B Flat 4
            sCurOcarinaPitch++;             // Raise the pitch by 1 semitone
        }

        // Pressing the Z Button will lower the pitch by 1 semitone
        if ((sCurOcarinaPitch != OCARINA_PITCH_NONE) && CHECK_BTN_ANY(sOcarinaInputButtonCur, BTN_Z) &&
            (sRecordingState != OCARINA_RECORD_SCARECROW_SPAWN)) {
            sCurOcarinaButtonIndex += 0x40; // Flag to resolve B Flat 4
            sCurOcarinaPitch--;             // Lower the pitch by 1 semitone
        }

        if (sRecordingState != OCARINA_RECORD_SCARECROW_SPAWN) {
            // Bend the pitch of the note based on y control stick
            sCurOcarinaBendIndex = sOcarinaInputStickAdj.y;
            sCurOcarinaBendFreq = AudioOcarina_BendPitchTwoSemitones(sCurOcarinaBendIndex);

            // Add vibrato of the ocarina note based on the x control stick
            sCurOcarinaVibrato = ABS_ALT(sOcarinaInputStickAdj.x) >> 2;
            // Sets vibrato to io port 6
            Audio_QueueCmdS8(0x6 << 24 | SEQ_PLAYER_SFX << 16 | SFX_CHANNEL_OCARINA << 8 | 6, sCurOcarinaVibrato);
        } else {
            // no bending or vibrato for recording state OCARINA_RECORD_SCARECROW_SPAWN
            sCurOcarinaBendIndex = 0;
            sCurOcarinaBendFreq = 1.0f; // No bend
        }

        // Processes new and valid notes
        if ((sCurOcarinaPitch != OCARINA_PITCH_NONE) && (sPrevOcarinaPitch != sCurOcarinaPitch)) {
            // Sets ocarina instrument Id to channelIdx io port 7, which is used
            // as an index in seq 0 to get the true instrument Id
            Audio_QueueCmdS8(0x6 << 24 | SEQ_PLAYER_SFX << 16 | SFX_CHANNEL_OCARINA << 8 | 7, sOcarinaInstrumentId - 1);
            // Sets pitch to io port 5
            Audio_QueueCmdS8(0x6 << 24 | SEQ_PLAYER_SFX << 16 | SFX_CHANNEL_OCARINA << 8 | 5, sCurOcarinaPitch);
            Audio_PlaySfxGeneral(NA_SE_OC_OCARINA, &gSfxDefaultPos, 4, &sCurOcarinaBendFreq, &sRelativeOcarinaVolume,
                                 &gSfxDefaultReverb);
        } else if ((sPrevOcarinaPitch != OCARINA_PITCH_NONE) && (sCurOcarinaPitch == OCARINA_PITCH_NONE)) {
            // Stops ocarina sound when transitioning from playing to not playing a note
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
 * If ocarina instrument id is "OCARINA_INSTRUMENT_OFF", turn off the ocarina
 * For all ocarina instrument ids, turn the ocarina on with the instrument id
 */
void AudioOcarina_SetInstrument(u8 ocarinaInstrumentId) {
    if (sOcarinaInstrumentId == ocarinaInstrumentId) {
        return;
    }

    SEQCMD_SET_CHANNEL_IO(SEQ_PLAYER_SFX, SFX_CHANNEL_OCARINA, 1, ocarinaInstrumentId);
    sOcarinaInstrumentId = ocarinaInstrumentId;
    if (ocarinaInstrumentId == OCARINA_INSTRUMENT_OFF) {
        sOcarinaInputButtonCur = 0;
        sOcarinaInputButtonPrev = 0;
        sOcarinaInputButtonPress = 0;

        sOcarinaInputButtonStart = 0xFFFF;

        AudioOcarina_PlayControllerInput(false);
        Audio_StopSfxById(NA_SE_OC_OCARINA);
        Audio_SetSfxBanksMute(0);
        sPlaybackState = 0;
        sPlaybackStaffPos = 0;
        sIsOcarinaInputEnabled = false;
        sOcarinaFlags = 0;
        // return to full volume for players 0 and 3 (background bgm) after ocarina is finished
        Audio_ClearBGMMute(SFX_CHANNEL_OCARINA);
    } else {
        sOcarinaInputButtonCur = 0;
        AudioOcarina_ReadControllerInput();
        // Store button used to turn on ocarina
        sOcarinaInputButtonStart = sOcarinaInputButtonCur;
        // lowers volumes of players 0 and 3 (background bgm) while playing ocarina
        Audio_QueueSeqCmdMute(SFX_CHANNEL_OCARINA);
    }
}

void AudioOcarina_SetPlaybackSong(s8 songIndexPlusOne, s8 playbackState) {
    if (songIndexPlusOne == 0) {
        sPlaybackState = 0;
        Audio_StopSfxById(NA_SE_OC_OCARINA);
        return;
    }

    if (songIndexPlusOne < (OCARINA_SONG_SCARECROW_LONG + 1)) {
        sPlaybackSong = sOcarinaSongNotes[songIndexPlusOne - 1];
    } else {
        sPlaybackSong = sScarecrowsLongSongNotes;
    }

    sPlaybackState = playbackState;
    sPlaybackNoteTimer = 0;
    sPlaybackPitch = OCARINA_PITCH_NONE;
    sPlaybackNotePos = 0;
    sPlaybackStaffPos = 0;

    while (sPlaybackSong[sPlaybackNotePos].pitch == OCARINA_PITCH_NONE) {
        sPlaybackNotePos++;
    }
}

/**
 * Play a song with the ocarina to the user that is
 * based on OcarinaNote data and not user input
 */
void AudioOcarina_PlaybackSong(void) {
    u32 noteTimerStep;
    u32 nextNoteTimerStep;

    if (sPlaybackState == 0) {
        return;
    }

    if (sPlaybackStaffPos == 0) {
        noteTimerStep = 3;
    } else {
        noteTimerStep = sOcarinaUpdateTaskStart - sOcarinaPlaybackTaskStart;
    }

    if (noteTimerStep < sPlaybackNoteTimer) {
        sPlaybackNoteTimer -= noteTimerStep;
    } else {
        nextNoteTimerStep = noteTimerStep - sPlaybackNoteTimer;
        sPlaybackNoteTimer = 0;
    }

    if (sPlaybackNoteTimer == 0) {

        sPlaybackNoteTimer = sPlaybackSong[sPlaybackNotePos].length;

        if (sPlaybackNotePos == 1) {
            sPlaybackNoteTimer++;
        }

        if (sPlaybackNoteTimer == 0) {
            sPlaybackState--;
            if (sPlaybackState != 0) {
                sPlaybackNotePos = 0;
                sPlaybackStaffPos = 0;
                sPlaybackPitch = OCARINA_PITCH_NONE;
            } else {
                Audio_StopSfxById(NA_SE_OC_OCARINA);
            }
            return;
        } else {
            sPlaybackNoteTimer -= nextNoteTimerStep;
        }

        // Update volume
        if (sNotePlaybackVolume != sPlaybackSong[sPlaybackNotePos].volume) {
            sNotePlaybackVolume = sPlaybackSong[sPlaybackNotePos].volume;
            sRelativeNotePlaybackVolume = sNotePlaybackVolume / 127.0f;
        }

        // Update vibrato
        if (sNotePlaybackVibrato != sPlaybackSong[sPlaybackNotePos].vibrato) {
            sNotePlaybackVibrato = sPlaybackSong[sPlaybackNotePos].vibrato;
            // Sets vibrato to io port 6
            Audio_QueueCmdS8(0x6 << 24 | SEQ_PLAYER_SFX << 16 | SFX_CHANNEL_OCARINA << 8 | 6, sNotePlaybackVibrato);
        }

        // Update bend
        if (sNotePlaybackBend != sPlaybackSong[sPlaybackNotePos].bend) {
            sNotePlaybackBend = sPlaybackSong[sPlaybackNotePos].bend;
            sRelativeNotePlaybackBend = AudioOcarina_BendPitchTwoSemitones(sNotePlaybackBend);
        }

        // No changes in volume, vibrato, or bend between notes
        if ((sPlaybackSong[sPlaybackNotePos].volume == sPlaybackSong[sPlaybackNotePos - 1].volume &&
             (sPlaybackSong[sPlaybackNotePos].vibrato == sPlaybackSong[sPlaybackNotePos - 1].vibrato) &&
             (sPlaybackSong[sPlaybackNotePos].bend == sPlaybackSong[sPlaybackNotePos - 1].bend))) {
            sPlaybackPitch = 0xFE;
        }

        if (sPlaybackPitch != sPlaybackSong[sPlaybackNotePos].pitch) {
            u8 pitch = sPlaybackSong[sPlaybackNotePos].pitch;

            // As bFlat4 is exactly in the middle of notes B & A, a flag is
            // added to the pitch to resolve which button to map Bflat4 to
            if (pitch == OCARINA_PITCH_BFLAT4) {
                sPlaybackPitch = pitch + sPlaybackSong[sPlaybackNotePos].bFlat4Flag;
            } else {
                sPlaybackPitch = pitch;
            }

            if (sPlaybackPitch != OCARINA_PITCH_NONE) {
                sPlaybackStaffPos++;
                // Sets ocarina instrument Id to channelIdx io port 7, which is used
                // as an index in seq 0 to get the true instrument Id
                Audio_QueueCmdS8(0x6 << 24 | SEQ_PLAYER_SFX << 16 | SFX_CHANNEL_OCARINA << 8 | 7,
                                 sOcarinaInstrumentId - 1);
                // Sets sPlaybackPitch to channelIdx io port 5
                Audio_QueueCmdS8(0x6 << 24 | SEQ_PLAYER_SFX << 16 | SFX_CHANNEL_OCARINA << 8 | 5,
                                 sPlaybackPitch & 0x3F);
                Audio_PlaySfxGeneral(NA_SE_OC_OCARINA, &gSfxDefaultPos, 4, &sRelativeNotePlaybackBend,
                                     &sRelativeNotePlaybackVolume, &gSfxDefaultReverb);
            } else {
                Audio_StopSfxById(NA_SE_OC_OCARINA);
            }
        }
        sPlaybackNotePos++;
    }
}

void AudioOcarina_SetRecordingSong(u8 isRecordingComplete) {
    u16 i;
    u16 i2;
    u16 pad;
    u8 pitch;
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
         * spawn song is accepted, then the notes are copied over to the scarecrow spawn
         * song address
         */
        recordedSong = sMemoryGameSongPtr;
    }

    recordedSong[sRecordSongPos].pitch = sRecordOcarinaPitch;
    recordedSong[sRecordSongPos].length = sOcarinaUpdateTaskStart - sOcarinaRecordTaskStart;
    recordedSong[sRecordSongPos].volume = sRecordOcarinaVolume;
    recordedSong[sRecordSongPos].vibrato = sRecordOcarinaVibrato;
    recordedSong[sRecordSongPos].bend = sRecordOcarinaBendIndex;
    recordedSong[sRecordSongPos].bFlat4Flag = sRecordOcarinaButtonIndex & 0xC0;

    sRecordOcarinaPitch = sCurOcarinaPitch;
    sRecordOcarinaVolume = sCurOcarinaVolume;
    sRecordOcarinaVibrato = sCurOcarinaVibrato;
    sRecordOcarinaBendIndex = sCurOcarinaBendIndex;
    sRecordOcarinaButtonIndex = sCurOcarinaButtonIndex;

    sRecordSongPos++;

    if ((sRecordSongPos != (ARRAY_COUNT(sScarecrowsLongSongNotes) - 1)) && !isRecordingComplete) {
        // Continue recording
        return;
    }

    // Recording is complete

    i = sRecordSongPos;
    pitch = OCARINA_PITCH_NONE;
    while (i != 0 && pitch == OCARINA_PITCH_NONE) {
        i--;
        pitch = recordedSong[i].pitch;
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
                                gOcarinaSongButtons[i].buttonsIndex[k] ==
                                    gOcarinaSongButtons[OCARINA_SONG_SCARECROW_SPAWN].buttonsIndex[k + j];
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
                if (gOcarinaSongButtons[OCARINA_SONG_SCARECROW_SPAWN].buttonsIndex[0] !=
                    gOcarinaSongButtons[OCARINA_SONG_SCARECROW_SPAWN].buttonsIndex[i]) {
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
 * recordingState = OCARINA_RECORD_OFF, end
 * recordingState = OCARINA_RECORD_SCARECROW_LONG, start long scarecrows song
 * recordingState = OCARINA_RECORD_SCARECROW_SPAWN, start spawn scarecrows song
 */
void AudioOcarina_SetRecordingState(u8 recordingState) {
    if ((u32)recordingState == sRecordingState) {
        return;
    }

    if (recordingState != OCARINA_RECORD_OFF) {
        sOcarinaRecordTaskStart = sOcarinaUpdateTaskStart;
        sRecordOcarinaPitch = OCARINA_PITCH_NONE;
        sRecordOcarinaVolume = 0x57;
        sRecordOcarinaVibrato = 0;
        sRecordOcarinaBendIndex = 0;
        sRecordOcarinaButtonIndex = 0;
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
    sPlayingStaff.buttonIndex = sCurOcarinaButtonIndex & 0x3F;
    sPlayingStaff.state = AudioOcarina_GetPlayingState();
    sPlayingStaff.pos = sStaffOcarinaPlayingPos;
}

void AudioOcarina_UpdatePlaybackStaff(void) {
    if ((sPlaybackPitch & 0x3F) <= OCARINA_PITCH_EFLAT5) {
        sPlaybackStaff.buttonIndex = AudioOcarina_MapNoteToButton(sPlaybackPitch);
    }

    sPlaybackStaff.state = sPlaybackState;

    if (sPlaybackSong != sScarecrowsLongSongNotes) {
        sPlaybackStaff.pos = sPlaybackStaffPos;
    } else if (sPlaybackStaffPos == 0) {
        sPlaybackStaff.pos = 0;
    } else {
        sPlaybackStaff.pos = ((sPlaybackStaffPos - 1) % 8) + 1;
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

OcarinaStaff* AudioOcarina_GetPlaybackStaff(void) {
    return &sPlaybackStaff;
}

void AudioOcarina_RecordSong(void) {
    s32 noteChanged;

    if ((sRecordingState != OCARINA_RECORD_OFF) && ((sOcarinaUpdateTaskStart - sOcarinaRecordTaskStart) >= 3)) {
        noteChanged = false;
        if (sRecordOcarinaPitch != sCurOcarinaPitch) {
            if (sCurOcarinaPitch != OCARINA_PITCH_NONE) {
                sRecordingStaff.buttonIndex = sCurOcarinaButtonIndex & 0x3F;
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
                sStaffOcarinaPlayingPos = 1;
            }

            noteChanged = true;
        } else if (sRecordOcarinaVolume != sCurOcarinaVolume) {
            noteChanged = true;
        } else if (sRecordOcarinaVibrato != sCurOcarinaVibrato) {
            noteChanged = true;
        } else if (sRecordOcarinaBendIndex != sCurOcarinaBendIndex) {
            noteChanged = true;
        }

        if (noteChanged) {
            AudioOcarina_SetRecordingSong(false);
            sOcarinaRecordTaskStart = sOcarinaUpdateTaskStart;
        }
    }
}

void AudioOcarina_MemoryGameInit(u8 minigameRound) {
    u8 i;

    if (minigameRound > 2) {
        minigameRound = 2;
    }

    sOcaMemoryGameAppendPos = 0;
    sOcaMemoryGameEndPos = sOcaMemoryGameNumNotes[minigameRound];

    for (i = 0; i < 3; i++) {
        AudioOcarina_MemoryGameNextNote();
    }
}

s32 AudioOcarina_MemoryGameNextNote(void) {
    u32 randomButtonIndex;
    u8 randomPitch;

    if (sOcaMemoryGameAppendPos == sOcaMemoryGameEndPos) {
        return 1;
    }

    randomButtonIndex = Audio_NextRandom();
    randomPitch = sButtonToPitchMap[randomButtonIndex % 5];

    if (sOcarinaSongNotes[OCARINA_SONG_MEMORY_GAME][sOcaMemoryGameAppendPos - 1].pitch == randomPitch) {
        randomPitch = sButtonToPitchMap[(randomButtonIndex + 1) % 5];
    }

    sOcarinaSongNotes[OCARINA_SONG_MEMORY_GAME][sOcaMemoryGameAppendPos].pitch = randomPitch;
    sOcarinaSongNotes[OCARINA_SONG_MEMORY_GAME][sOcaMemoryGameAppendPos].length = 45;
    sOcarinaSongNotes[OCARINA_SONG_MEMORY_GAME][sOcaMemoryGameAppendPos].volume = 0x50;
    sOcarinaSongNotes[OCARINA_SONG_MEMORY_GAME][sOcaMemoryGameAppendPos].vibrato = 0;
    sOcarinaSongNotes[OCARINA_SONG_MEMORY_GAME][sOcaMemoryGameAppendPos].bend = 0;

    sOcaMemoryGameAppendPos++;

    sOcarinaSongNotes[OCARINA_SONG_MEMORY_GAME][sOcaMemoryGameAppendPos].pitch = OCARINA_PITCH_NONE;
    sOcarinaSongNotes[OCARINA_SONG_MEMORY_GAME][sOcaMemoryGameAppendPos].length = 0;
    sOcarinaSongNotes[OCARINA_SONG_MEMORY_GAME][sOcaMemoryGameAppendPos + 1].pitch = OCARINA_PITCH_NONE;
    sOcarinaSongNotes[OCARINA_SONG_MEMORY_GAME][sOcaMemoryGameAppendPos + 1].length = 0;
    if (1) {}
    return 0;
}

void AudioOcarina_Update(void) {
    sOcarinaUpdateTaskStart = gAudioCtx.totalTaskCount;
    if (sOcarinaInstrumentId != OCARINA_INSTRUMENT_OFF) {
        if (sIsOcarinaInputEnabled == true) {
            AudioOcarina_ReadControllerInput();
        }

        if ((sPlaybackState == 0) && (sIsOcarinaInputEnabled == true)) {
            AudioOcarina_PlayControllerInput(false);
        }

        if (sOcarinaFlags != 0) {
            if (sOcarinaFlags & 0x4000) {
                AudioOcarina_CheckSongsWithoutMusicStaff();
            } else {
                AudioOcarina_CheckSongsWithMusicStaff();
            }
        }

        AudioOcarina_PlaybackSong();
        sOcarinaPlaybackTaskStart = sOcarinaUpdateTaskStart;

        if (sPlaybackState == 0) {
            AudioOcarina_RecordSong();
        }

        if ((sOcarinaFlags != 0) && (sPrevOcarinaPitch != sCurOcarinaPitch)) {
            sOcarinaDropInputTimer = 1; // Drops ocarina input for 1 frame
        }

        sPrevOcarinaPitch = sCurOcarinaPitch;
    }

    AudioOcarina_UpdatePlayingStaff();
    AudioOcarina_UpdatePlaybackStaff();
    AudioOcarina_UpdateRecordingStaff();
}

void AudioOcarina_PlayLongScarecrowAfterCredits(void) {
    static u8 sScarecrowAfterCreditsState = 0;
    static u8 sScarecrowAfterCreditsIntrumentId = OCARINA_INSTRUMENT_DEFAULT;
    static u16 sScarecrowAfterCreditsTimer = 1200;

    switch (sScarecrowAfterCreditsState) {
        case 0:
            if (sScarecrowAfterCreditsTimer-- == 0) {
                if (sScarecrowAfterCreditsIntrumentId < OCARINA_INSTRUMENT_MAX) {
                    // set next ocarina instrument and restart
                    sScarecrowAfterCreditsState++;
                } else {
                    // finished
                    sScarecrowAfterCreditsState = 3;
                    AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                }
                sScarecrowAfterCreditsTimer = 1200;
            }
            break;
        case 1:
            Audio_SetSfxBanksMute(0);
            AudioOcarina_SetInstrument(sScarecrowAfterCreditsIntrumentId);
            AudioOcarina_SetPlaybackSong(OCARINA_SONG_SCARECROW_LONG + 1, 1);
            sScarecrowAfterCreditsIntrumentId++;
            sScarecrowAfterCreditsState++;
            break;
        case 2:
            if (AudioOcarina_GetPlaybackStaff()->state == 0) {
                sScarecrowAfterCreditsState = 0;
            }
            break;
    }
}

void AudioOcarina_ResetStaffs(void) {
    sPlayingStaff.buttonIndex = OCARINA_BTN_INVALID;
    sPlayingStaff.state = 0xFF;
    sPlayingStaff.pos = 0;
    sPlaybackStaff.buttonIndex = OCARINA_BTN_INVALID;
    sPlaybackStaff.state = 0;
    sPlaybackStaff.pos = 0;
    sRecordingStaff.buttonIndex = OCARINA_BTN_INVALID;
    sRecordingStaff.state = OCARINA_RECORD_REJECTED;
    sRecordingStaff.pos = 0;
    sOcarinaDropInputTimer = 0;
}

f32 D_80131C8C = 0.0f;

// =========== Audio Debugging ===========

u32 sDebugPadHold;
u32 sDebugPadBtnLast;
u32 sDebugPadPress;
s32 sAudioUpdateTaskStart;
s32 sAudioUpdateTaskEnd;

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
char sSfxBankNames[7][11] = { "PLAYER", "ITEM", "ENVIROMENT", "ENEMY", "SYSTEM", "OCARINA", "VOICE" };
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
u8 sAudioSubTrackInfoPlayerSel = SEQ_PLAYER_BGM_MAIN;
u8 sAudioSubTrackInfoChannelSel = 0;
u8 sSeqPlayerPeakNumLayers[20] = { 0 };
char sAudioSceneNames[3][2] = { "A", "S", "X" };
u8 sAudioBlkChgBgmWork[2] = { 0 };
u8 sAudioBlkChgBgmSel = 0;
char sBoolStrs[3][5] = { "OFF", "ON", "STBY" };
u8 sAudioNatureFailed = false;
u8 sPeakNumNotes = 0;

void AudioDebug_SetInput(void) {
    Input inputs[MAXCONTROLLERS];
    u32 btn;

    PadMgr_RequestPadData(&gPadMgr, inputs, false);
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
        if (gAudioCtx.notes[i].noteSubEu.bitField0.enabled == 1) {
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
            i = gSfxBanks[ind][0].next;
            j = 0;
            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(printer, "SE HANDLE:%s", sSfxBankNames[ind]);

            while (i != 0xFF) {
                GfxPrint_SetPos(printer, 3, 7 + j++);
                GfxPrint_Printf(printer, "%02x %04x %02x %08x", i, gSfxBanks[ind][i].sfxId, gSfxBanks[ind][i].state,
                                gSfxBanks[ind][i].priority);
                i = gSfxBanks[ind][i].next;
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
            GfxPrint_Printf(printer, "SE HD  : %2x %s", sAudioSndContWork[2], sSfxBankNames[sAudioSndContWork[2]]);

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
                GfxPrint_Printf(printer, "%s <%d>", sSfxBankNames[k], sAudioIntInfoBankPage[k]);

                for (k2 = 0; k2 < gChannelsPerBank[gSfxChannelLayout][k]; k2++) {
#define entryIndex (gActiveSfx[k][k2].entryIndex)
#define entry (&gSfxBanks[k][entryIndex])
#define chan (gAudioCtx.seqPlayers[SEQ_PLAYER_SFX].channels[entry->channelIdx])
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
            GfxPrint_Printf(printer, "%s  : %d", sSfxBankNames[0], sAudioScrPrtWork[3]);

            GfxPrint_SetPos(printer, 3, 8);
            GfxPrint_Printf(printer, "%s    : %d", sSfxBankNames[1], sAudioScrPrtWork[4]);

            GfxPrint_SetPos(printer, 3, 9);
            GfxPrint_Printf(printer, "ENVRONM : %d", sAudioScrPrtWork[5]);

            GfxPrint_SetPos(printer, 3, 10);
            GfxPrint_Printf(printer, "%s   : %d", sSfxBankNames[3], sAudioScrPrtWork[6]);

            GfxPrint_SetPos(printer, 3, 11);
            GfxPrint_Printf(printer, "%s  : %d", sSfxBankNames[4], sAudioScrPrtWork[7]);

            GfxPrint_SetPos(printer, 3, 12);
            GfxPrint_Printf(printer, "%s : %d", sSfxBankNames[5], sAudioScrPrtWork[8]);

            GfxPrint_SetPos(printer, 3, 13);
            GfxPrint_Printf(printer, "%s    : %d", sSfxBankNames[6], sAudioScrPrtWork[9]);

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
                if (gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel].channels[i]->enabled) {
                    GfxPrint_Printf(printer, "O");
                } else {
                    GfxPrint_Printf(printer, "X");
                }

                GfxPrint_SetPos(printer, 15 + i, 8);
                if (gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel].channels[i]->stopSomething2) {
                    GfxPrint_Printf(printer, "O");
                } else {
                    GfxPrint_Printf(printer, "X");
                }

                GfxPrint_SetPos(printer, 15 + i, 9);
                ctr = 0;
                for (j = 0; j < 4; j++) {
                    if (gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel].channels[i]->layers[j] != NULL) {
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
                                (u8)gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel]
                                    .channels[sAudioSubTrackInfoChannelSel]
                                    ->soundScriptIO[i]);
            }

            if (gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel].channels[sAudioSubTrackInfoChannelSel]->enabled) {
                GfxPrint_SetPos(printer, 15, 11);
                GfxPrint_Printf(printer, "%d",
                                (u8)(gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel]
                                         .channels[sAudioSubTrackInfoChannelSel]
                                         ->volume *
                                     127.1));

                GfxPrint_SetPos(printer, 15, 12);
                GfxPrint_Printf(printer, "%d",
                                (u8)(gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel]
                                         .channels[sAudioSubTrackInfoChannelSel]
                                         ->volumeScale *
                                     127.1));

                GfxPrint_SetPos(printer, 15, 13);
                GfxPrint_Printf(
                    printer, "%X",
                    gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel].channels[sAudioSubTrackInfoChannelSel]->fontId);

                ctr = (u8)(gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel]
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
                GfxPrint_Printf(
                    printer, "%d",
                    gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel].channels[sAudioSubTrackInfoChannelSel]->newPan);

                GfxPrint_SetPos(printer, 15, 16);
                GfxPrint_Printf(printer, "%d",
                                gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel]
                                    .channels[sAudioSubTrackInfoChannelSel]
                                    ->panChannelWeight);

                GfxPrint_SetPos(printer, 15, 17);
                GfxPrint_Printf(
                    printer, "%d",
                    gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel].channels[sAudioSubTrackInfoChannelSel]->reverb);

                GfxPrint_SetPos(printer, 15, 18);
                GfxPrint_Printf(printer, "%d",
                                gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel]
                                    .channels[sAudioSubTrackInfoChannelSel]
                                    ->notePriority);

                GfxPrint_SetPos(printer, 15, 19);
                GfxPrint_Printf(printer, "%d",
                                (u8)(gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel]
                                         .channels[sAudioSubTrackInfoChannelSel]
                                         ->vibratoRateTarget /
                                     32));

                GfxPrint_SetPos(printer, 15, 20);
                GfxPrint_Printf(printer, "%d",
                                (u8)(gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel]
                                         .channels[sAudioSubTrackInfoChannelSel]
                                         ->vibratoExtentTarget /
                                     8));

                GfxPrint_SetPos(printer, 15, 21);
                GfxPrint_Printf(printer, "%d",
                                (u16)(gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel]
                                          .channels[sAudioSubTrackInfoChannelSel]
                                          ->freqScale *
                                      100));
            }
            break;

        case PAGE_HEAP_INFO:
            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 4);
            GfxPrint_Printf(printer, "TOTAL  %d", gAudioHeapInitSizes.heapSize);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "DRIVER %05X / %05X",
                            gAudioCtx.miscPool.curRamAddr - gAudioCtx.miscPool.startRamAddr, gAudioCtx.miscPool.size);

            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(
                printer, "AT-SEQ %02X-%02X (%05X-%05X / %05X)", (u8)gAudioCtx.seqCache.temporary.entries[0].id,
                (u8)gAudioCtx.seqCache.temporary.entries[1].id, gAudioCtx.seqCache.temporary.entries[0].size,
                gAudioCtx.seqCache.temporary.entries[1].size, gAudioCtx.seqCache.temporary.pool.size);

            GfxPrint_SetPos(printer, 3, 7);
            GfxPrint_Printf(
                printer, "AT-BNK %02X-%02X (%05X-%05X / %05X)", (u8)gAudioCtx.fontCache.temporary.entries[0].id,
                (u8)gAudioCtx.fontCache.temporary.entries[1].id, gAudioCtx.fontCache.temporary.entries[0].size,
                gAudioCtx.fontCache.temporary.entries[1].size, gAudioCtx.fontCache.temporary.pool.size);

            GfxPrint_SetPos(printer, 3, 8);
            GfxPrint_Printf(printer, "ST-SEQ %02Xseqs  (%05X / %06X)", gAudioCtx.seqCache.persistent.numEntries,
                            gAudioCtx.seqCache.persistent.pool.curRamAddr -
                                gAudioCtx.seqCache.persistent.pool.startRamAddr,
                            gAudioCtx.seqCache.persistent.pool.size);

            for (k = 0; (u32)k < gAudioCtx.seqCache.persistent.numEntries; k++) {
                GfxPrint_SetPos(printer, 3 + 3 * k, 9);
                GfxPrint_Printf(printer, "%02x", gAudioCtx.seqCache.persistent.entries[k].id);
            }

            GfxPrint_SetPos(printer, 3, 10);
            GfxPrint_Printf(printer, "ST-BNK %02Xbanks (%05X / %06X)", gAudioCtx.fontCache.persistent.numEntries,
                            gAudioCtx.fontCache.persistent.pool.curRamAddr -
                                gAudioCtx.fontCache.persistent.pool.startRamAddr,
                            gAudioCtx.fontCache.persistent.pool.size);

            for (k = 0; (u32)k < gAudioCtx.fontCache.persistent.numEntries; k++) {
                GfxPrint_SetPos(printer, 3 + 3 * k, 11);
                GfxPrint_Printf(printer, "%02x", gAudioCtx.fontCache.persistent.entries[k].id);
            }

            GfxPrint_SetPos(printer, 3, 12);
            GfxPrint_Printf(printer, "E-MEM  %05X / %05X",
                            gAudioCtx.permanentPool.curRamAddr - gAudioCtx.permanentPool.startRamAddr,
                            gAudioCtx.permanentPool.size);
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
            GfxPrint_Printf(printer, "NEXT SCENE %02X %s",
                            (u8)gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].soundScriptIO[2],
                            sAudioSceneNames[(u8)gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].soundScriptIO[2]]);

            GfxPrint_SetPos(printer, 3, 8);
            GfxPrint_Printf(printer, "NOW SCENE  %02X %s",
                            (u8)gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].soundScriptIO[4],
                            sAudioSceneNames[(u8)gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].soundScriptIO[4]]);

            GfxPrint_SetPos(printer, 3, 9);
            GfxPrint_Printf(printer, "NOW BLOCK  %02X",
                            (gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].soundScriptIO[5] + 1) & 0xFF);

            GfxPrint_SetPos(printer, 3, 11);
            GfxPrint_Printf(printer, "PORT");

            GfxPrint_SetPos(printer, 3, 12);
            GfxPrint_Printf(printer, "%02X %02X %02X %02X",
                            (u8)gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].soundScriptIO[0],
                            (u8)gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].soundScriptIO[1],
                            (u8)gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].soundScriptIO[2],
                            (u8)gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].soundScriptIO[3]);

            GfxPrint_SetPos(printer, 3, 13);
            GfxPrint_Printf(printer, "%02X %02X %02X %02X",
                            (u8)gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].soundScriptIO[4],
                            (u8)gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].soundScriptIO[5],
                            (u8)gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].soundScriptIO[6],
                            (u8)gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].soundScriptIO[7]);
            break;

        case PAGE_OCARINA_TEST:
            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 4);
            GfxPrint_Printf(printer, "SEQ INFO  : %2d %02x %d", sPlaybackStaff.buttonIndex, sPlaybackStaff.state,
                            sPlaybackStaff.pos);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "PLAY INFO : %2d %02x %d", sPlayingStaff.buttonIndex, sPlayingStaff.state,
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
                            sPlaybackState, sRecordingState);
            break;

        case PAGE_SFX_PARAMETER_CHANGE:
            GfxPrint_SetPos(printer, 2, 4 + sAudioSfxParamChgSel);
            SETCOL(127, 255, 127);
            GfxPrint_Printf(printer, "*");

            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 4);
            GfxPrint_Printf(printer, "SE HD  : %02x %s", sAudioSfxParamChgWork[0],
                            sSfxBankNames[sAudioSfxParamChgWork[0]]);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "SE No. : %02x", sAudioSfxParamChgWork[1]);

            GfxPrint_SetPos(printer, 20, 6);
            GfxPrint_Printf(printer, "       : %04x",
                            gSfxParams[sAudioSfxParamChgWork[0]][sAudioSfxParamChgWork[1]].params);

            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(
                printer, "SE SW    %s",
                AudioDebug_ToStringBinary(gSfxParams[sAudioSfxParamChgWork[0]][sAudioSfxParamChgWork[1]].params, 16));

            SETCOL(127, 255, 127);
            digitStr[0] = (char)('0' + ((gSfxParams[sAudioSfxParamChgWork[0]][sAudioSfxParamChgWork[1]].params >>
                                         (15 - sAudioSfxParamChgBitSel)) &
                                        1));
            GfxPrint_SetPos(printer, 12 + sAudioSfxParamChgBitSel, 6);
            GfxPrint_Printf(printer, "%s", digitStr);

            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 7);
            GfxPrint_Printf(printer, "SE PR  : %02x",
                            gSfxParams[sAudioSfxParamChgWork[0]][sAudioSfxParamChgWork[1]].importance);
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
            GfxPrint_Printf(printer, "SWITCH BGM MODE %d %d %d (FLAG %d)", sPrevSeqMode, sNumFramesStill,
                            sNumFramesMoving, sSeqModeInput);

            GfxPrint_SetPos(printer, 3, 10);
            GfxPrint_Printf(printer, "ENEMY DIST %f VOL %3d", sAudioEnemyDist, sAudioEnemyVol);

            GfxPrint_SetPos(printer, 3, 11);
            GfxPrint_Printf(printer, "GANON DIST VOL %3d", sGanonsTowerVol);

            GfxPrint_SetPos(printer, 3, 12);
            GfxPrint_Printf(printer, "DEMO FLAG %d", sAudioCutsceneFlag);

            GfxPrint_SetPos(printer, 3, 12);
            if (sIsMalonSinging == true) {
                GfxPrint_Printf(printer, "MARON BGM DIST %f", sMalonSingingDist);
                sIsMalonSinging = false;
            }

            GfxPrint_SetPos(printer, 3, 23);
            if (sAudioNatureFailed != false) {
                GfxPrint_Printf(printer, "NATURE FAILED %01x", sAudioNatureFailed);
            }

            GfxPrint_SetPos(printer, 3, 24);
            if (sSariaBgmPtr != NULL) {
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
                SEQCMD_PLAY_SEQUENCE(sAudioSndContSel, 0, 0, sAudioSndContWork[sAudioSndContSel]);
                break;
            case 2:
            case 3:
                Audio_PlaySfxGeneral(((sAudioSndContWork[2] << 12) & 0xFFFF) + sAudioSndContWork[3] + SFX_FLAG,
                                     &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultReverb);
                break;
            case 4:
                func_800F6700(sAudioSndContWork[sAudioSndContSel]);
                break;
            case 5:
                SEQCMD_DISABLE_PLAY_SEQUENCES(sAudioSndContWork[sAudioSndContSel]);
                break;
            case 6:
                SEQCMD_RESET_AUDIO_HEAP(0, sAudioSndContWork[sAudioSndContSel]);
                sAudioSubTrackInfoSpec = sAudioSndContWork[6];
                if (sAudioSubTrackInfoPlayerSel > gAudioSpecs[sAudioSubTrackInfoSpec].numSequencePlayers - 1) {
                    sAudioSubTrackInfoPlayerSel = gAudioSpecs[sAudioSubTrackInfoSpec].numSequencePlayers - 1;
                }
                break;
            case 7:
                Audio_PlayNatureAmbienceSequence(sAudioSndContWork[sAudioSndContSel]);
                break;
            case 8:
            case 9:
                break;
            case 10:
                Audio_SetSfxBanksMute(sAudioSndContWork[sAudioSndContSel] * 0x7F);
                break;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
        switch (sAudioSndContSel) {
            case 0:
            case 1:
                SEQCMD_STOP_SEQUENCE(sAudioSndContSel, 0);
                break;
            case 7:
                SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0);
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
            Audio_PlaySequenceInCutscene(sAudioSndContWork[sAudioSndContSel]);
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
            sAudioSubTrackInfoPlayerSel = SEQ_PLAYER_BGM_MAIN;
        }
    }
    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DLEFT)) {
        sAudioSubTrackInfoChannelSel = (sAudioSubTrackInfoChannelSel - 1) & 0xF;
    }
    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DRIGHT)) {
        sAudioSubTrackInfoChannelSel = (sAudioSubTrackInfoChannelSel + 1) & 0xF;
    }
    if (CHECK_BTN_ANY(sDebugPadPress, BTN_START)) {
        sSeqPlayerPeakNumLayers[sAudioSubTrackInfoPlayerSel] = SEQ_PLAYER_BGM_MAIN;
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
            Audio_SetSequenceMode(sAudioBlkChgBgmWork[1]);
            ; // might be a fake match?
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DRIGHT)) {
        sAudioBlkChgBgmWork[sAudioBlkChgBgmSel]++;
        if (sAudioBlkChgBgmSel == 1) {
            Audio_SetSequenceMode(sAudioBlkChgBgmWork[1]);
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_A)) {
        Audio_QueueCmdS8(MK_CMD(0x46, SEQ_PLAYER_BGM_MAIN, 0x00, 0x00), sAudioBlkChgBgmWork[1]);
        SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 1, 0, sAudioBlkChgBgmWork[0]);
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
        SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 1);
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
            gSfxParams[sAudioSfxParamChgWork[0]][sAudioSfxParamChgWork[1]].importance -= step;
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
            gSfxParams[sAudioSfxParamChgWork[0]][sAudioSfxParamChgWork[1]].importance += step;
        } else {
            sAudioSfxParamChgBitSel = (sAudioSfxParamChgBitSel + 1) & 0xF;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_A)) {
        sfx = (u16)(sAudioSfxParamChgWork[0] << 12) + sAudioSfxParamChgWork[1] + SFX_FLAG;
        Audio_PlaySfxGeneral(sfx, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultReverb);
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
        Audio_StopSfxByBank(sAudioSfxParamChgWork[0]);
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CDOWN)) {
        if (sAudioSfxParamChgSel == 2) {
            gSfxParams[sAudioSfxParamChgWork[0]][sAudioSfxParamChgWork[1]].params ^=
                (1 << (0xF - sAudioSfxParamChgBitSel));
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CUP)) {
        if (sAudioSfxParamChgSel < 2) {
            sAudioSfxParamChgWork[sAudioSfxParamChgSel] = 0;
        }
    }
}

void AudioDebug_ScrPrt(const char* str, u16 num) {
    u8 i = 0;

    sAudioScrPrtBuf[sAudioScrPrtInd].num = num;

    while (str[i] != '\0') {
        sAudioScrPrtBuf[sAudioScrPrtInd].str[i] = str[i];
        i++;
    }

    while (i < 5) {
        sAudioScrPrtBuf[sAudioScrPrtInd].str[i] = '\0';
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
        Audio_SetSfxBanksMute(0x6F);
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
                SEQCMD_DISABLE_PLAY_SEQUENCES(sAudioSndContWork[5]);
                if (Audio_GetActiveSeqId(SEQ_PLAYER_BGM_MAIN) != NA_BGM_NATURE_AMBIENCE) {
                    SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0);
                }
                SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_FANFARE, 0);
                SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_BGM_SUB, 0);
            }

            if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
                sAudioSfxMuted ^= 1;
                if (!sAudioSfxMuted) {
                    Audio_SetSfxBanksMute(0);
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

    gAudioDebugPrintSeqCmd = sAudioScrPrtWork[10];
}

void Audio_UpdateRiverSoundVolumes(void);
void Audio_UpdateFanfare(void);

/**
 * This is Audio_Update for the graph thread
 */
void func_800F3054(void) {
    if (func_800FAD34() == 0) {
        sAudioUpdateTaskStart = gAudioCtx.totalTaskCount;
        sAudioUpdateStartTime = osGetTime();
        AudioOcarina_Update();
        Audio_StepFreqLerp(&sRiverFreqScaleLerp);
        Audio_StepFreqLerp(&sWaterfallFreqScaleLerp);
        Audio_UpdateRiverSoundVolumes();
        Audio_UpdateSceneSequenceResumePoint();
        Audio_UpdateFanfare();
        if (gAudioSpecId == 7) {
            Audio_ClearSariaBgm();
        }
        Audio_ProcessSfxRequests();
        Audio_ProcessSeqCmds();
        func_800F8F88();
        Audio_UpdateActiveSequences();
        AudioDebug_SetInput();
        AudioDebug_ProcessInput();
        Audio_ScheduleProcessCmds();
        sAudioUpdateTaskEnd = gAudioCtx.totalTaskCount;
        sAudioUpdateEndTime = osGetTime();
    }
}

void func_800F3138(UNK_TYPE arg0) {
}

void func_800F3140(UNK_TYPE arg0, UNK_TYPE arg1) {
}

void func_800F314C(s8 arg0) {
    Audio_QueueCmdS32(0x82 << 24 | SEQ_PLAYER_BGM_MAIN << 16 | (((u8)arg0 & 0xFF) << 8), 1);
}

f32 Audio_ComputeSfxVolume(u8 bankId, u8 entryIdx) {
    SfxBankEntry* bankEntry = &gSfxBanks[bankId][entryIdx];
    f32 minDist;
    f32 baseDist;
    f32 ret;

    if (bankEntry->sfxParams & SFX_FLAG_13) {
        return 1.0f;
    }

    if (bankEntry->dist > 10000.0f) {
        ret = 0.0f;
    } else {
        switch ((bankEntry->sfxParams & SFX_PARAM_01_MASK) >> SFX_PARAM_01_SHIFT) {
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

s8 Audio_ComputeSfxReverb(u8 bankId, u8 entryIdx, u8 channelIdx) {
    s8 distAdd = 0;
    s32 scriptAdd = 0;
    SfxBankEntry* entry = &gSfxBanks[bankId][entryIdx];
    s32 reverb;

    if (!(entry->sfxParams & SFX_FLAG_12)) {
        if (entry->dist < 2500.0f) {
            distAdd = *entry->posZ > 0.0f ? (entry->dist / 2500.0f) * 70.0f : (entry->dist / 2500.0f) * 91.0f;
        } else {
            distAdd = 70;
        }
    }

    if (IS_SEQUENCE_CHANNEL_VALID(gAudioCtx.seqPlayers[SEQ_PLAYER_SFX].channels[channelIdx])) {
        scriptAdd = gAudioCtx.seqPlayers[SEQ_PLAYER_SFX].channels[channelIdx]->soundScriptIO[1];
        if (gAudioCtx.seqPlayers[SEQ_PLAYER_SFX].channels[channelIdx]->soundScriptIO[1] <= SEQ_IO_VAL_NONE) {
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

s8 Audio_ComputeSfxPanSigned(f32 x, f32 z, u8 token) {
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

f32 Audio_ComputeSfxFreqScale(u8 bankId, u8 entryIdx) {
    s32 phi_v0 = 0;
    SfxBankEntry* entry = &gSfxBanks[bankId][entryIdx];
    f32 unk1C;
    f32 freq = 1.0f;

    if (entry->sfxParams & SFX_FLAG_14) {
        freq = 1.0f - ((gAudioCtx.audioRandom & 0xF) / 192.0f);
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
        if (!(entry->sfxParams & SFX_FLAG_11)) {
            freq *= (1.0293 - ((gAudioCtx.audioRandom & 0xF) / 144.0f));
        }
    }

    unk1C = entry->dist;
    if (!(entry->sfxParams & SFX_FLAG_13)) {
        if (!(entry->sfxParams & SFX_FLAG_15)) {
            if (unk1C >= 10000.0f) {
                freq += 0.2f;
            } else {
                freq += (0.2f * (unk1C / 10000.0f));
            }
        }
    }

    if ((entry->sfxParams & SFX_PARAM_67_MASK) != (0 << SFX_PARAM_67_SHIFT)) {
        freq += (entry->unk_2F / 192.0f);
    }

    return freq;
}

u8 func_800F37B8(f32 behindScreenZ, SfxBankEntry* arg1, s8 arg2) {
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
        if (arg1->sfxParams & SFX_FLAG_9) {
            phi_v1 = 0xF;
        }
    }

    switch ((arg1->sfxParams & SFX_PARAM_01_MASK) >> SFX_PARAM_01_SHIFT) {
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

void Audio_SetSfxProperties(u8 bankId, u8 entryIdx, u8 channelIdx) {
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
    SfxBankEntry* entry = &gSfxBanks[bankId][entryIdx];

    switch (bankId) {
        case BANK_PLAYER:
        case BANK_ITEM:
        case BANK_ENV:
        case BANK_ENEMY:
        case BANK_VOICE:
            if (sSoundMode == SOUNDMODE_SURROUND) {
                sp38 = func_800F3990(*entry->posY, entry->sfxParams);
            }
            FALLTHROUGH;
        case BANK_OCARINA:
            entry->dist = sqrtf(entry->dist);
            vol = Audio_ComputeSfxVolume(bankId, entryIdx) * *entry->vol;
            reverb = Audio_ComputeSfxReverb(bankId, entryIdx, channelIdx);
            panSigned = Audio_ComputeSfxPanSigned(*entry->posX, *entry->posZ, entry->token);
            freqScale = Audio_ComputeSfxFreqScale(bankId, entryIdx) * *entry->freqScale;

            if (sSoundMode == SOUNDMODE_SURROUND) {
                behindScreenZ = sBehindScreenZ[(entry->sfxParams & SFX_FLAG_10) >> SFX_FLAG_10_SHIFT];
                if (!(entry->sfxParams & SFX_FLAG_11)) {
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
            } else if ((sSoundMode == SOUNDMODE_SURROUND) && !(entry->sfxParams & SFX_FLAG_13)) {
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
    Audio_QueueCmdS8(0x6 << 24 | SEQ_PLAYER_SFX << 16 | (channelIdx << 8) | 2, volS8);
    if (reverb != sSfxChannelState[channelIdx].reverb) {
        Audio_QueueCmdS8(0x5 << 24 | SEQ_PLAYER_SFX << 16 | (channelIdx << 8), reverb);
        sSfxChannelState[channelIdx].reverb = reverb;
    }
    if (freqScale != sSfxChannelState[channelIdx].freqScale) {
        Audio_QueueCmdF32(0x4 << 24 | SEQ_PLAYER_SFX << 16 | (channelIdx << 8), freqScale);
        sSfxChannelState[channelIdx].freqScale = freqScale;
    }
    if (stereoBits != sSfxChannelState[channelIdx].stereoBits) {
        Audio_QueueCmdS8(0xE << 24 | SEQ_PLAYER_SFX << 16 | (channelIdx << 8), stereoBits | 0x10);
        sSfxChannelState[channelIdx].stereoBits = stereoBits;
    }
    if (filter != sSfxChannelState[channelIdx].filter) {
        // CHAN_UPD_SCRIPT_IO (slot 3, sets filter)
        Audio_QueueCmdS8(0x6 << 24 | SEQ_PLAYER_SFX << 16 | (channelIdx << 8) | 3, filter);
        sSfxChannelState[channelIdx].filter = filter;
    }
    if (sp38 != sSfxChannelState[channelIdx].unk_0C) {
        // CHAN_UPD_UNK_0F
        Audio_QueueCmdS8(0xC << 24 | SEQ_PLAYER_SFX << 16 | (channelIdx << 8), 0x10);
        // CHAN_UPD_UNK_20
        Audio_QueueCmdU16(0xD << 24 | SEQ_PLAYER_SFX << 16 | (channelIdx << 8), ((u16)(sp38) << 8) + 0xFF);
        sSfxChannelState[channelIdx].unk_0C = sp38;
    }
    if (panSigned != sSfxChannelState[channelIdx].panSigned) {
        Audio_QueueCmdS8(0x3 << 24 | SEQ_PLAYER_SFX << 16 | (channelIdx << 8), panSigned);
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
    sPrevSeqMode = 0;
    sAudioCodeReverb = 0;
}

void Audio_PlayCutsceneEffectsSequence(u8 csEffectType) {
    if (gSfxBankMuted[0] != 1) {
        SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_SUB, 0, 0, NA_BGM_CUTSCENE_EFFECTS);
        SEQCMD_SET_CHANNEL_IO(SEQ_PLAYER_BGM_SUB, 0, 0, csEffectType);
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
    Audio_PlaySfxGeneral(sfxId, pos, 4, &D_8016B7B0, &D_8016B7A8, &gSfxDefaultReverb);

    if ((sfxId & 0xF0) == 0xB0) {
        phi_f0 = 0.3f;
        phi_v0 = 1;
        sp24 = 1.0f;
    } else {
        phi_f0 = 1.1f;
        phi_v0 = gAudioCtx.audioRandom % 2;
    }

    if ((phi_f0 < arg2) && (phi_v0 != 0)) {
        if ((sfxId & 0x80) != 0) {
            sfxId2 = NA_SE_PL_METALEFFECT_ADULT;
        } else {
            sfxId2 = NA_SE_PL_METALEFFECT_KID;
        }
        D_8016B7AC = (sp24 * 0.7) + 0.3;
        Audio_PlaySfxGeneral(sfxId2, pos, 4, &D_8016B7B0, &D_8016B7AC, &gSfxDefaultReverb);
    }
}

void func_800F4138(Vec3f* pos, u16 sfxId, f32 arg2) {
    func_800F3F84(arg2);
    Audio_PlaySfxGeneral(sfxId, pos, 4, &D_8016B7B0, &D_8016B7A8, &gSfxDefaultReverb);
}

void func_800F4190(Vec3f* pos, u16 sfxId) {
    Audio_PlaySfxGeneral(sfxId, pos, 4, &D_801305B0, &gSfxDefaultFreqAndVolScale, &D_801305B4);
}
void Audio_PlaySfxRandom(Vec3f* pos, u16 baseSfxId, u8 randLim) {
    u8 offset = Audio_NextRandom() % randLim;

    Audio_PlaySfxGeneral(baseSfxId + offset, pos, 4, &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                         &gSfxDefaultReverb);
}

void func_800F4254(Vec3f* pos, u8 level) {
    level &= 3;
    if (level != sPrevChargeLevel) {
        D_801305F4 = D_801305E4[level];
        switch (level) {
            case 1:
                Audio_PlaySfxGeneral(NA_SE_PL_SWORD_CHARGE, pos, 4, &D_801305F4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultReverb);
                break;
            case 2:
                Audio_PlaySfxGeneral(NA_SE_PL_SWORD_CHARGE, pos, 4, &D_801305F4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultReverb);
                break;
        }

        sPrevChargeLevel = level;
    }

    if (level != 0) {
        Audio_PlaySfxGeneral(NA_SE_IT_SWORD_CHARGE - SFX_FLAG, pos, 4, &D_801305F4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultReverb);
    }
}

void func_800F436C(Vec3f* pos, u16 sfxId, f32 arg2) {
    if (arg2 < 0.75f) {
        D_8016B7D8 = ((arg2 / 0.75f) * 0.25f) + 0.5f;
    } else {
        D_8016B7D8 = arg2;
    }

    if (D_8016B7D8 > 0.5f) {
        Audio_PlaySfxGeneral(sfxId, pos, 4, &D_8016B7D8, &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
    }
}

void func_800F4414(Vec3f* pos, u16 sfxId, f32 arg2) {
    D_801305B8--;
    if (D_801305B8 == 0) {
        Audio_PlaySfxGeneral(sfxId, pos, 4, &D_8016B7D8, &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);

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
    Audio_PlaySfxGeneral(sfxId, pos, 4, &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale, &D_8016B7DC);
}

void func_800F4578(Vec3f* pos, u16 sfxId, f32 arg2) {
    D_8016B7E0 = arg2;
    Audio_PlaySfxGeneral(sfxId, pos, 4, &gSfxDefaultFreqAndVolScale, &D_8016B7E0, &gSfxDefaultReverb);
}

void func_800F45D0(f32 arg0) {
    func_800F4414(&gSfxDefaultPos, NA_SE_IT_FISHING_REEL_SLOW - SFX_FLAG, arg0);
    func_800F436C(&gSfxDefaultPos, 0, (0.15f * arg0) + 1.4f);
}

void Audio_PlaySfxRiver(Vec3f* pos, f32 freqScale) {
    if (!Audio_IsSfxPlaying(NA_SE_EV_RIVER_STREAM - SFX_FLAG)) {
        sRiverFreqScaleLerp.value = freqScale;
    } else if (freqScale != sRiverFreqScaleLerp.value) {
        sRiverFreqScaleLerp.target = freqScale;
        sRiverFreqScaleLerp.remainingFrames = 40;
        sRiverFreqScaleLerp.step = (sRiverFreqScaleLerp.target - sRiverFreqScaleLerp.value) / 40;
    }
    Audio_PlaySfxGeneral(NA_SE_EV_RIVER_STREAM - SFX_FLAG, pos, 4, &sRiverFreqScaleLerp.value,
                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
}

void Audio_PlaySfxWaterfall(Vec3f* pos, f32 freqScale) {
    if (!Audio_IsSfxPlaying(NA_SE_EV_WATER_WALL_BIG - SFX_FLAG)) {
        sWaterfallFreqScaleLerp.value = freqScale;
    } else if (freqScale != sWaterfallFreqScaleLerp.value) {
        sWaterfallFreqScaleLerp.target = freqScale;
        sWaterfallFreqScaleLerp.remainingFrames = 40;
        sWaterfallFreqScaleLerp.step = (sWaterfallFreqScaleLerp.target - sWaterfallFreqScaleLerp.value) / 40;
    }
    Audio_PlaySfxGeneral(NA_SE_EV_WATER_WALL_BIG - SFX_FLAG, pos, 4, &sWaterfallFreqScaleLerp.value,
                         &sWaterfallFreqScaleLerp.value, &gSfxDefaultReverb);
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

void Audio_SetBgmVolumeOffDuringFanfare(void) {
    Audio_SetVolumeScale(SEQ_PLAYER_BGM_MAIN, VOL_SCALE_INDEX_FANFARE, 0, 10);
    Audio_SetVolumeScale(SEQ_PLAYER_BGM_SUB, VOL_SCALE_INDEX_FANFARE, 0, 10);
}

void Audio_SetBgmVolumeOnDuringFanfare(void) {
    Audio_SetVolumeScale(SEQ_PLAYER_BGM_MAIN, VOL_SCALE_INDEX_FANFARE, 0x7F, 3);
    Audio_SetVolumeScale(SEQ_PLAYER_BGM_SUB, VOL_SCALE_INDEX_FANFARE, 0x7F, 3);
}

void Audio_SetMainBgmVolume(u8 targetVol, u8 volFadeTimer) {
    Audio_SetVolumeScale(SEQ_PLAYER_BGM_MAIN, VOL_SCALE_INDEX_BGM_MAIN, targetVol, volFadeTimer);
}

/**
 * Incrementally increase volume of NA_BGM_GANON_TOWER for each new room during the climb of Ganon's Tower
 */
void Audio_SetGanonsTowerBgmVolumeLevel(u8 ganonsTowerLevel) {
    u8 channelIdx;
    s8 pan = 0;

    // Ganondorf's Lair
    if (ganonsTowerLevel == 0) {
        pan = 0x7F;
    }

    for (channelIdx = 0; channelIdx < 16; channelIdx++) {
        // CHAN_UPD_PAN_UNSIGNED
        Audio_QueueCmdS8(_SHIFTL(0x7, 24, 8) | _SHIFTL(SEQ_PLAYER_BGM_MAIN, 16, 8) | _SHIFTL(channelIdx, 8, 8) |
                             _SHIFTL(0, 0, 8),
                         pan);
    }

    // Lowest room in Ganon's Tower (Entrance Room)
    if (ganonsTowerLevel == 7) {
        // Adds a delay to setting the volume in the first room
        sEnterGanonsTowerTimer = 2;
    } else {
        Audio_SetGanonsTowerBgmVolume(sGanonsTowerLevelsVol[ganonsTowerLevel % ARRAY_COUNTU(sGanonsTowerLevelsVol)]);
    }
}

/**
 * If a new volume is requested for ganon's tower, update the volume and
 * calculate a new low-pass filter cutoff and reverb based on the new volume
 */
s32 Audio_SetGanonsTowerBgmVolume(u8 targetVol) {
    u8 lowPassFilterCutoff;
    u16 reverb;
    u8 channelIdx;

    if (sGanonsTowerVol != targetVol) {
        // Sets the volume
        Audio_SetVolumeScale(SEQ_PLAYER_BGM_MAIN, VOL_SCALE_INDEX_BGM_MAIN, targetVol, 2);

        // Sets the filter cutoff of the form (lowPassFilterCutoff << 4) | (highPassFilter & 0xF). highPassFilter is
        // always set to 0
        if (targetVol < 0x40) {
            // Only the first room
            lowPassFilterCutoff = 1 << 4;
        } else {
            // Higher volume leads to a higher cut-off frequency in the low-pass filtering
            lowPassFilterCutoff = (((targetVol - 0x40) >> 2) + 1) << 4;
        }
        // Set lowPassFilterCutoff to io port 4 from channel 15
        SEQCMD_SET_CHANNEL_IO(SEQ_PLAYER_BGM_MAIN, 15, 4, lowPassFilterCutoff);

        // Sets the reverb
        for (channelIdx = 0; channelIdx < 16; channelIdx++) {
            if (gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].channels[channelIdx] != &gAudioCtx.sequenceChannelNone) {
                // soundScriptIO[5] is set to 0x40 in channels 0, 1, and 4
                if ((u8)gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].channels[channelIdx]->soundScriptIO[5] !=
                    (u8)SEQ_IO_VAL_NONE) {
                    // Higher volume leads to lower reverb
                    reverb = ((u16)gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].channels[channelIdx]->soundScriptIO[5] -
                              targetVol) +
                             0x7F;
                    if (reverb > 0x7F) {
                        reverb = 0x7F;
                    }
                    // CHAN_UPD_REVERB
                    Audio_QueueCmdS8(_SHIFTL(0x5, 24, 8) | _SHIFTL(SEQ_PLAYER_BGM_MAIN, 16, 8) |
                                         _SHIFTL(channelIdx, 8, 8) | _SHIFTL(0, 0, 8),
                                     (u8)reverb);
                }
            }
        }
        sGanonsTowerVol = targetVol;
    }
    return -1;
}

/**
 * Responsible for lowering market bgm in Child Market Entrance and Child Market Back Alley
 * Only lowers volume for 1 frame, so must be called every frame to maintain lower volume
 */
void Audio_LowerMainBgmVolume(u8 volume) {
    sRiverSoundMainBgmVol = volume;
    sRiverSoundMainBgmLower = true;
}

void Audio_UpdateRiverSoundVolumes(void) {
    // Updates Main Bgm Volume (RiverSound of type RS_LOWER_MAIN_BGM_VOLUME)
    if (sRiverSoundMainBgmLower == true) {
        if (sRiverSoundMainBgmCurrentVol != sRiverSoundMainBgmVol) {
            // lowers the volume for 1 frame
            Audio_SetVolumeScale(SEQ_PLAYER_BGM_MAIN, VOL_SCALE_INDEX_BGM_MAIN, sRiverSoundMainBgmVol, 10);
            sRiverSoundMainBgmCurrentVol = sRiverSoundMainBgmVol;
            sRiverSoundMainBgmRestore = true;
        }
        sRiverSoundMainBgmLower = false;
    } else if (sRiverSoundMainBgmRestore == true && D_80130608 == 0) {
        // restores the volume every frame
        Audio_SetVolumeScale(SEQ_PLAYER_BGM_MAIN, VOL_SCALE_INDEX_BGM_MAIN, 0x7F, 10);
        sRiverSoundMainBgmCurrentVol = 0x7F;
        sRiverSoundMainBgmRestore = false;
    }

    // Update Ganon's Tower Volume (RiverSound of type RS_GANON_TOWER_7)
    if (sEnterGanonsTowerTimer != 0) {
        sEnterGanonsTowerTimer--;
        if (sEnterGanonsTowerTimer == 0) {
            Audio_SetGanonsTowerBgmVolume(sGanonsTowerLevelsVol[7]);
        }
    }
}

void Audio_PlaySfxIncreasinglyTransposed(Vec3f* pos, s16 sfxId, u8* semitones) {
    Audio_PlaySfxGeneral(sfxId, pos, 4, &gPitchFrequencies[semitones[sAudioIncreasingTranspose] + 39],
                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);

    if (sAudioIncreasingTranspose < 15) {
        sAudioIncreasingTranspose++;
    }
}

void Audio_ResetIncreasingTranspose(void) {
    sAudioIncreasingTranspose = 0;
}

void Audio_PlaySfxTransposed(Vec3f* pos, u16 sfxId, s8 semitone) {
    Audio_PlaySfxGeneral(sfxId, pos, 4, &gPitchFrequencies[semitone + 39], &gSfxDefaultFreqAndVolScale,
                         &gSfxDefaultReverb);
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
        if ((gActiveSfx[bankId][i].entryIndex != 0xFF) &&
            (sfxId == gSfxBanks[bankId][gActiveSfx[bankId][i].entryIndex].sfxId)) {
            Audio_QueueCmdS8(
                _SHIFTL(0x6, 24, 8) | _SHIFTL(SEQ_PLAYER_SFX, 16, 8) | _SHIFTL(phi_s1, 8, 8) | _SHIFTL(6, 0, 8), arg2);
        }
        phi_s1++;
    }
    Audio_PlaySfxGeneral(sfxId, pos, 4, &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
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
            SEQCMD_SET_CHANNEL_VOLUME(SEQ_PLAYER_BGM_MAIN, i, 2, (127.0f * phi_f22));
            Audio_QueueCmdS8(0x3 << 24 | SEQ_PLAYER_BGM_MAIN << 16 | ((u8)((u32)i) << 8), phi_s4);
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

/**
 * Turns on and off channels from both bgm players in a way that splits
 * equally between the two bgm channels. Split based on note priority
 */
void Audio_SplitBgmChannels(s8 volSplit) {
    u8 volume;
    u8 notePriority;
    u16 channelBits;
    u8 bgmPlayers[2] = { SEQ_PLAYER_BGM_MAIN, SEQ_PLAYER_BGM_SUB };
    u8 channelIdx;
    u8 i;

    if ((Audio_GetActiveSeqId(SEQ_PLAYER_FANFARE) == NA_BGM_DISABLED) &&
        (Audio_GetActiveSeqId(SEQ_PLAYER_BGM_SUB) != NA_BGM_LONLON)) {
        for (i = 0; i < ARRAY_COUNT(bgmPlayers); i++) {
            if (i == 0) {
                // Main Bgm SeqPlayer
                volume = volSplit;
            } else {
                // Sub Bgm SeqPlayer
                volume = 0x7F - volSplit;
            }

            if (volume > 100) {
                notePriority = 11;
            } else if (volume < 20) {
                notePriority = 2;
            } else {
                notePriority = ((volume - 20) / 10) + 2;
            }

            channelBits = 0;
            for (channelIdx = 0; channelIdx < 16; channelIdx++) {
                if (notePriority > gAudioCtx.seqPlayers[bgmPlayers[i]].channels[channelIdx]->notePriority) {
                    // If the note currently playing in the channel is a high enough priority,
                    // then keep the channel on by setting a channelBit
                    // If this condition fails, then the channel will be shut off
                    channelBits += (1 << channelIdx);
                }
            }

            SEQCMD_SET_CHANNEL_DISABLE_MASK(bgmPlayers[i], channelBits);
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
        Audio_PlaySequenceWithSeqPlayerIO(SEQ_PLAYER_BGM_SUB, seqId, 0, 7, 2);
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
        Audio_SplitBgmChannels(vol);
    }

    Audio_SetVolumeScale(SEQ_PLAYER_BGM_SUB, VOL_SCALE_INDEX_BGM_SUB, vol, 0);
    Audio_SetVolumeScale(SEQ_PLAYER_BGM_MAIN, VOL_SCALE_INDEX_BGM_SUB, 0x7F - vol, 0);
}

void Audio_ClearSariaBgm2(void) {
    sSariaBgmPtr = NULL;
}

void Audio_PlayMorningSceneSequence(u16 seqId) {
    Audio_PlaySceneSequence(seqId);
    // Writing a value of 1 to ioPort 0 will be used by
    // `NA_BGM_FIELD_LOGIC` to play `NA_BGM_FIELD_MORNING` first
    Audio_PlaySequenceWithSeqPlayerIO(SEQ_PLAYER_BGM_MAIN, seqId, 0, 0, 1);
}

void Audio_PlaySceneSequence(u16 seqId) {
    u8 fadeInDuration = 0;
    u8 skipHarpIntro;

    if (Audio_GetActiveSeqId(SEQ_PLAYER_BGM_MAIN) != NA_BGM_WINDMILL) {
        if (Audio_GetActiveSeqId(SEQ_PLAYER_BGM_SUB) == NA_BGM_LONLON) {
            Audio_StopSequence(SEQ_PLAYER_BGM_SUB, 0);
            // Terminate all internal audio cmds
            Audio_QueueCmdS32(0xF8000000, 0);
        }

        if ((sSeqFlags[sPrevSceneSeqId] & SEQ_FLAG_RESUME_PREV) && (sSeqFlags[seqId & 0xFF & 0xFF] & SEQ_FLAG_RESUME)) {
            // Resume the sequence from the point where it left off last time it was played in the scene
            if ((sSeqResumePoint & 0x3F) != 0) {
                fadeInDuration = 30;
            }

            // Write the sequence resumePoint to start from into ioPort 7
            Audio_PlaySequenceWithSeqPlayerIO(SEQ_PLAYER_BGM_MAIN, seqId, fadeInDuration, 7, sSeqResumePoint);

            sSeqResumePoint = 0;
        } else {
            // Start the sequence from the beginning

            // Writes to ioPort 7. See `SEQ_FLAG_SKIP_HARP_INTRO` for writing a value of 1 to ioPort 7.
            skipHarpIntro = (sSeqFlags[seqId & 0xFF & 0xFF] & SEQ_FLAG_SKIP_HARP_INTRO) ? 1 : (u8)SEQ_IO_VAL_NONE;
            Audio_PlaySequenceWithSeqPlayerIO(SEQ_PLAYER_BGM_MAIN, seqId, 0, 7, skipHarpIntro);

            if (!(sSeqFlags[seqId] & SEQ_FLAG_RESUME_PREV)) {
                // Reset the sequence resumePoint
                sSeqResumePoint = SEQ_RESUME_POINT_NONE;
            }
        }
        sPrevSceneSeqId = seqId & 0xFF;
    }
}

void Audio_UpdateSceneSequenceResumePoint(void) {
    u16 seqId = Audio_GetActiveSeqId(SEQ_PLAYER_BGM_MAIN);

    if ((seqId != NA_BGM_DISABLED) && (sSeqFlags[seqId & 0xFF & 0xFF] & SEQ_FLAG_RESUME)) {
        if (sSeqResumePoint != SEQ_RESUME_POINT_NONE) {
            // Get the current point to resume from
            sSeqResumePoint = gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].soundScriptIO[3];
        } else {
            // Initialize the point to resume from to the start of the sequence.
            sSeqResumePoint = 0;
        }
    }
}

void Audio_PlayWindmillBgm(void) {
    if (Audio_GetActiveSeqId(SEQ_PLAYER_BGM_MAIN) != NA_BGM_WINDMILL) {
        SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0, 0, NA_BGM_WINDMILL);
    }
}

void Audio_SetMainBgmTempoFreqAfterFanfare(f32 scaleTempoAndFreq, u8 duration) {
    if (scaleTempoAndFreq == 1.0f) {
        // Should instead use `SEQCMD_SETUP_RESET_TEMPO` to wait until the fanfare is finished
        SEQCMD_RESET_TEMPO(SEQ_PLAYER_BGM_MAIN, duration);
    } else {
        SEQCMD_SETUP_SCALE_TEMPO(SEQ_PLAYER_FANFARE, SEQ_PLAYER_BGM_MAIN, duration, scaleTempoAndFreq * 100.0f);
    }

    SEQCMD_SETUP_SET_PLAYER_FREQ(SEQ_PLAYER_FANFARE, SEQ_PLAYER_BGM_MAIN, duration, scaleTempoAndFreq * 100.0f);
}

/**
 * Set the tempo for the timed minigame sequence to 210 bpm,
 * which is faster than the default tempo
 */
void Audio_SetFastTempoForTimedMinigame(void) {
    if ((Audio_GetActiveSeqId(SEQ_PLAYER_BGM_MAIN) == NA_BGM_TIMED_MINI_GAME) &&
        Audio_IsSeqCmdNotQueued(SEQCMD_OP_PLAY_SEQUENCE << 28, SEQCMD_OP_MASK)) {
        SEQCMD_SET_TEMPO(SEQ_PLAYER_BGM_MAIN, 5, 210);
    }
}

void Audio_PlaySequenceInCutscene(u16 seqId) {
    if (sSeqFlags[seqId & 0xFF & 0xFF] & SEQ_FLAG_FANFARE) {
        Audio_PlayFanfare(seqId);
    } else if (sSeqFlags[seqId & 0xFF & 0xFF] & SEQ_FLAG_FANFARE_GANON) {
        SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_FANFARE, 0, 0, seqId);
    } else {
        Audio_PlaySequenceWithSeqPlayerIO(SEQ_PLAYER_BGM_MAIN, seqId, 0, 7, SEQ_IO_VAL_NONE);
        SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_FANFARE, 0);
    }
}

void Audio_StopSequenceInCutscene(u16 seqId) {
    if (sSeqFlags[seqId & 0xFF & 0xFF] & SEQ_FLAG_FANFARE) {
        SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_FANFARE, 0);
    } else if (sSeqFlags[seqId & 0xFF & 0xFF] & SEQ_FLAG_FANFARE_GANON) {
        SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_FANFARE, 0);
    } else {
        SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0);
    }
}

s32 Audio_IsSequencePlaying(u16 seqId) {
    u8 seqPlayerIndex = SEQ_PLAYER_BGM_MAIN;

    if (sSeqFlags[seqId & 0xFF & 0xFF] & SEQ_FLAG_FANFARE) {
        seqPlayerIndex = SEQ_PLAYER_FANFARE;
    } else if (sSeqFlags[seqId & 0xFF & 0xFF] & SEQ_FLAG_FANFARE_GANON) {
        seqPlayerIndex = SEQ_PLAYER_FANFARE;
    }

    if ((seqId & 0xFF) == (Audio_GetActiveSeqId(seqPlayerIndex) & 0xFF)) {
        return true;
    } else {
        return false;
    }
}

/**
 * Plays a sequence on the main bgm player, but stores the previous sequence to return to later
 * Designed for the mini-boss sequence, but also used by mini-game 2 sequence
 */
void func_800F5ACC(u16 seqId) {
    u16 curSeqId = Audio_GetActiveSeqId(SEQ_PLAYER_BGM_MAIN);

    if ((curSeqId & 0xFF) != NA_BGM_GANON_TOWER && (curSeqId & 0xFF) != NA_BGM_ESCAPE && curSeqId != seqId) {
        Audio_SetSequenceMode(SEQ_MODE_IGNORE);
        if (curSeqId != NA_BGM_DISABLED) {
            sPrevMainBgmSeqId = curSeqId;
        } else {
            osSyncPrintf("Middle Boss BGM Start not stack \n");
        }

        SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0, 0, seqId);
    }
}

/**
 * Restores the previous sequence to the main bgm player before func_800F5ACC was called
 */
void func_800F5B58(void) {
    if ((Audio_GetActiveSeqId(SEQ_PLAYER_BGM_MAIN) != NA_BGM_DISABLED) && (sPrevMainBgmSeqId != NA_BGM_DISABLED) &&
        (sSeqFlags[Audio_GetActiveSeqId(SEQ_PLAYER_BGM_MAIN) & 0xFF] & SEQ_FLAG_RESTORE)) {
        if (sPrevMainBgmSeqId == NA_BGM_DISABLED) {
            SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0);
        } else {
            SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0, 0, sPrevMainBgmSeqId);
        }

        sPrevMainBgmSeqId = NA_BGM_DISABLED;
    }
}

/**
 * Plays the nature ambience sequence on the main bgm player, but stores the previous sequence to return to later
 */
void func_800F5BF0(u8 natureAmbienceId) {
    u16 curSeqId = Audio_GetActiveSeqId(SEQ_PLAYER_BGM_MAIN);

    if (curSeqId != NA_BGM_NATURE_AMBIENCE) {
        sPrevMainBgmSeqId = curSeqId;
    }

    Audio_PlayNatureAmbienceSequence(natureAmbienceId);
}

/**
 * Restores the previous sequence to the main bgm player before func_800F5BF0 was called
 */
void func_800F5C2C(void) {
    if (sPrevMainBgmSeqId != NA_BGM_DISABLED) {
        SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0, 0, sPrevMainBgmSeqId);
    }
    sPrevMainBgmSeqId = NA_BGM_DISABLED;
}

void Audio_PlayFanfare(u16 seqId) {
    u16 curSeqId;
    u32 outNumFonts;
    u8* curFontId;
    u8* requestedFontId;

    curSeqId = Audio_GetActiveSeqId(SEQ_PLAYER_FANFARE);

    curFontId = func_800E5E84(curSeqId & 0xFF, &outNumFonts);
    requestedFontId = func_800E5E84(seqId & 0xFF, &outNumFonts);

    if ((curSeqId == NA_BGM_DISABLED) || (*curFontId == *requestedFontId)) {
        sFanfareStartTimer = 1;
    } else {
        // Give extra time to start the fanfare if both another fanfare needs to be stopped
        // and a new fontId needs to be loaded in
        sFanfareStartTimer = 5;
        SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_FANFARE, 0);
    }
    sFanfareSeqId = seqId;
}

void Audio_UpdateFanfare(void) {
    u16 seqIdFanfare;
    u16 seqIdBgmMain;
    u16 seqIdBgmSub;

    if (sFanfareStartTimer != 0) {
        sFanfareStartTimer--;
        if (sFanfareStartTimer == 0) {
            Audio_QueueCmdS32(0xE3000000, SEQUENCE_TABLE);
            Audio_QueueCmdS32(0xE3000000, FONT_TABLE);

            seqIdBgmMain = Audio_GetActiveSeqId(SEQ_PLAYER_BGM_MAIN);
            seqIdFanfare = Audio_GetActiveSeqId(SEQ_PLAYER_FANFARE);
            seqIdBgmSub = Audio_GetActiveSeqId(SEQ_PLAYER_BGM_SUB);

            (void)seqIdBgmMain; // suppresses set but unused warning
            if (seqIdFanfare == NA_BGM_DISABLED) {
                Audio_SetVolumeScale(SEQ_PLAYER_BGM_MAIN, VOL_SCALE_INDEX_FANFARE, 0, 5);
                Audio_SetVolumeScale(SEQ_PLAYER_BGM_SUB, VOL_SCALE_INDEX_FANFARE, 0, 5);
                SEQCMD_SETUP_RESTORE_PLAYER_VOLUME_WITH_SCALE_INDEX(SEQ_PLAYER_FANFARE, SEQ_PLAYER_BGM_MAIN,
                                                                    VOL_SCALE_INDEX_FANFARE, 10);
                SEQCMD_SETUP_RESTORE_PLAYER_VOLUME_WITH_SCALE_INDEX(SEQ_PLAYER_FANFARE, SEQ_PLAYER_BGM_SUB,
                                                                    VOL_SCALE_INDEX_FANFARE, 10);
                SEQCMD_SETUP_SET_CHANNEL_DISABLE_MASK(SEQ_PLAYER_FANFARE, SEQ_PLAYER_BGM_MAIN, 0);
                if (seqIdBgmSub != NA_BGM_LONLON) {
                    SEQCMD_SETUP_SET_CHANNEL_DISABLE_MASK(SEQ_PLAYER_FANFARE, SEQ_PLAYER_BGM_SUB, 0);
                }
            }
            SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_FANFARE, 1, 0, sFanfareSeqId);
            SEQCMD_SET_CHANNEL_DISABLE_MASK(SEQ_PLAYER_BGM_MAIN, 0xFFFF);
            if (seqIdBgmSub != NA_BGM_LONLON) {
                SEQCMD_SET_CHANNEL_DISABLE_MASK(SEQ_PLAYER_BGM_SUB, 0xFFFF);
            }
        }
    }
}

void Audio_PlaySequenceWithSeqPlayerIO(u8 seqPlayerIndex, u16 seqId, u8 fadeInDuration, s8 ioPort, s8 ioData) {
    SEQCMD_SET_PLAYER_IO(seqPlayerIndex, ioPort, ioData);
    SEQCMD_PLAY_SEQUENCE(seqPlayerIndex, fadeInDuration, 0, seqId);
}

void Audio_SetSequenceMode(u8 seqMode) {
    s32 volumeFadeInTimer;
    u16 seqId;
    u8 volumeFadeOutTimer;

    sSeqModeInput = seqMode;
    if (sPrevMainBgmSeqId == NA_BGM_DISABLED) {
        if (sAudioCutsceneFlag) {
            seqMode = SEQ_MODE_IGNORE;
        }

        seqId = gActiveSeqs[SEQ_PLAYER_BGM_MAIN].seqId;

        if (seqId == NA_BGM_FIELD_LOGIC && Audio_GetActiveSeqId(SEQ_PLAYER_BGM_SUB) == (NA_BGM_ENEMY | 0x800)) {
            seqMode = SEQ_MODE_IGNORE;
        }

        if ((seqId == NA_BGM_DISABLED) || (sSeqFlags[seqId & 0xFF & 0xFF] & SEQ_FLAG_ENEMY) ||
            ((sPrevSeqMode & 0x7F) == SEQ_MODE_ENEMY)) {
            if (seqMode != (sPrevSeqMode & 0x7F)) {
                if (seqMode == SEQ_MODE_ENEMY) {
                    // Start playing enemy bgm
                    if (gActiveSeqs[SEQ_PLAYER_BGM_SUB].volScales[VOL_SCALE_INDEX_FANFARE] - sAudioEnemyVol < 0) {
                        volumeFadeInTimer =
                            -(gActiveSeqs[SEQ_PLAYER_BGM_SUB].volScales[VOL_SCALE_INDEX_FANFARE] - sAudioEnemyVol);
                    } else {
                        volumeFadeInTimer =
                            gActiveSeqs[SEQ_PLAYER_BGM_SUB].volScales[VOL_SCALE_INDEX_FANFARE] - sAudioEnemyVol;
                    }

                    Audio_SetVolumeScale(SEQ_PLAYER_BGM_SUB, VOL_SCALE_INDEX_BGM_SUB, sAudioEnemyVol,
                                         volumeFadeInTimer);
                    SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_SUB, 10, 8, NA_BGM_ENEMY);

                    if (seqId != NA_BGM_NATURE_AMBIENCE) {
                        Audio_SetVolumeScale(SEQ_PLAYER_BGM_MAIN, VOL_SCALE_INDEX_BGM_SUB,
                                             (0x7F - sAudioEnemyVol) & 0xFF, 0xA);
                        Audio_SplitBgmChannels(sAudioEnemyVol);
                    }
                } else if ((sPrevSeqMode & 0x7F) == SEQ_MODE_ENEMY) {
                    // Stop playing enemy bgm
                    SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_BGM_SUB, 10);
                    if (seqMode == SEQ_MODE_IGNORE) {
                        volumeFadeOutTimer = 0;
                    } else {
                        volumeFadeOutTimer = 10;
                    }

                    Audio_SetVolumeScale(SEQ_PLAYER_BGM_MAIN, VOL_SCALE_INDEX_BGM_SUB, 0x7F, volumeFadeOutTimer);
                    Audio_SplitBgmChannels(0);
                }

                sPrevSeqMode = seqMode + 0x80;
            }
        } else {
            // Hyrule Field will play slightly different background music depending on whether player is standing
            // still or moving. This is the logic to determine the transition between those two states
            if (seqMode == SEQ_MODE_DEFAULT) {
                if (sPrevSeqMode == SEQ_MODE_STILL) {
                    sNumFramesMoving = 0;
                }
                sNumFramesStill = 0;
                sNumFramesMoving++;
            } else {
                sNumFramesStill++;
            }

            if (seqMode == SEQ_MODE_STILL && sNumFramesStill < 30 && sNumFramesMoving > 20) {
                seqMode = SEQ_MODE_DEFAULT;
            }

            sPrevSeqMode = seqMode;
            SEQCMD_SET_PLAYER_IO(SEQ_PLAYER_BGM_MAIN, 2, seqMode);
        }
    }
}

void Audio_SetBgmEnemyVolume(f32 dist) {
    f32 adjDist;

    if (sPrevSeqMode == (0x80 | SEQ_MODE_ENEMY)) {
        if (dist != sAudioEnemyDist) {
            if (dist < 150.0f) {
                adjDist = 0.0f;
            } else if (dist > 500.0f) {
                adjDist = 350.0f;
            } else {
                adjDist = dist - 150.0f;
            }

            sAudioEnemyVol = ((350.0f - adjDist) * 127.0f) / 350.0f;
            Audio_SetVolumeScale(SEQ_PLAYER_BGM_SUB, VOL_SCALE_INDEX_BGM_SUB, sAudioEnemyVol, 10);
            if (gActiveSeqs[SEQ_PLAYER_BGM_MAIN].seqId != NA_BGM_NATURE_AMBIENCE) {
                Audio_SetVolumeScale(SEQ_PLAYER_BGM_MAIN, VOL_SCALE_INDEX_BGM_SUB, (0x7F - sAudioEnemyVol), 10);
            }
        }
        if (gActiveSeqs[SEQ_PLAYER_BGM_MAIN].seqId != NA_BGM_NATURE_AMBIENCE) {
            Audio_SplitBgmChannels(sAudioEnemyVol);
        }
    }
    sAudioEnemyDist = dist;
}

void Audio_UpdateMalonSinging(f32 dist, u16 seqId) {
    s8 pad;
    s8 melodyVolume;
    s16 curSeqId;

    sIsMalonSinging = true;
    sMalonSingingDist = dist;

    if (sMalonSingingDisabled) {
        return;
    }

    curSeqId = (s8)(Audio_GetActiveSeqId(SEQ_PLAYER_BGM_MAIN) & 0xFF);

    if (curSeqId == (seqId & 0xFF)) {
        if ((seqId & 0xFF) == NA_BGM_LONLON) {
            // Malon is singing along with the Lon Lon Sequence

            if (dist > 2000.0f) {
                melodyVolume = 127;
            } else if (dist < 200.0f) {
                melodyVolume = 0;
            } else {
                melodyVolume = (s8)(((dist - 200.0f) * 127.0f) / 1800.0f);
            }

            // Update volume for channels 0 & 1, which contain Malon's singing
            SEQCMD_SET_CHANNEL_VOLUME(SEQ_PLAYER_BGM_MAIN, 0, 3, 127 - melodyVolume);
            SEQCMD_SET_CHANNEL_VOLUME(SEQ_PLAYER_BGM_MAIN, 1, 3, 127 - melodyVolume);

            // Update volume for channel 13, which contains the melody line for Lon Lon's Sequence
            SEQCMD_SET_CHANNEL_VOLUME(SEQ_PLAYER_BGM_MAIN, 13, 3, melodyVolume);
            if (sMalonSingingTimer == 0) {
                sMalonSingingTimer++;
            }
        }
    } else if ((curSeqId == NA_BGM_NATURE_AMBIENCE) && ((seqId & 0xFF) == NA_BGM_LONLON)) {
        // Malon is singing along with ambience
        curSeqId = (s8)(Audio_GetActiveSeqId(SEQ_PLAYER_BGM_SUB) & 0xFF);

        if ((curSeqId != (seqId & 0xFF)) && (sMalonSingingTimer < 10)) {
            Audio_PlaySequenceWithSeqPlayerIO(SEQ_PLAYER_BGM_SUB, NA_BGM_LONLON, 0, 0, 0);
            // Disable all channels between 2-15.
            // Only allow the two channels with Malon's singing to play, and suppress the full lon lon sequence.
            SEQCMD_SET_CHANNEL_DISABLE_MASK(SEQ_PLAYER_BGM_SUB, 0xFFFC);
            sMalonSingingTimer = 10;
        }

        if (dist > 2000.0f) {
            melodyVolume = 127;
        } else if (dist < 200.0f) {
            melodyVolume = 0;
        } else {
            melodyVolume = (s8)(((dist - 200.0f) * 127.0f) / 1800.0f);
        }

        // Update volume for channels 0 & 1, which contain Malon's singing
        SEQCMD_SET_CHANNEL_VOLUME(SEQ_PLAYER_BGM_SUB, 0, 3, 127 - melodyVolume);
        SEQCMD_SET_CHANNEL_VOLUME(SEQ_PLAYER_BGM_SUB, 1, 3, 127 - melodyVolume);
    }

    if (sMalonSingingTimer < 10) {
        sMalonSingingTimer++;
    }
}

void func_800F64E0(u8 arg0) {
    D_80130608 = arg0;
    if (arg0 != 0) {
        Audio_PlaySfxGeneral(NA_SE_SY_WIN_OPEN, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        Audio_QueueCmdS32(0xF1000000, 0);
    } else {
        Audio_PlaySfxGeneral(NA_SE_SY_WIN_CLOSE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        Audio_QueueCmdS32(0xF2000000, 0);
    }
}

/**
 * Enable or disable Malon's singing
 *
 * @param malonSingingDisabled true to disable, false to enable
 */
void Audio_ToggleMalonSinging(u8 malonSingingDisabled) {
    u8 seqPlayerIndex;
    u16 channelMaskDisable;

    sMalonSingingDisabled = malonSingingDisabled;

    if ((Audio_GetActiveSeqId(SEQ_PLAYER_BGM_MAIN) & 0xFF) == NA_BGM_LONLON) {
        // Malon is singing along with the Lon Lon Sequence
        seqPlayerIndex = SEQ_PLAYER_BGM_MAIN;
        // Do not disable any channel.
        // Allow the full lon lon sequence to play in addition to Malon's singing.
        channelMaskDisable = 0;
    } else if ((u8)Audio_GetActiveSeqId(SEQ_PLAYER_BGM_SUB) == NA_BGM_LONLON) {
        // Malon is singing along with ambience
        seqPlayerIndex = SEQ_PLAYER_BGM_SUB;
        // Disable all channels between 2-15.
        // Only allow the two channels with Malon's singing to play, and suppress the full lon lon sequence.
        channelMaskDisable = 0xFFFC;
    } else {
        return;
    }

    if (malonSingingDisabled) {
        // Turn volume off for channels 0 & 1, which contain Malon's singing
        SEQCMD_SET_CHANNEL_VOLUME(seqPlayerIndex, 0, 1, 0);
        SEQCMD_SET_CHANNEL_VOLUME(seqPlayerIndex, 1, 1, 0);

        if (seqPlayerIndex == SEQ_PLAYER_BGM_SUB) {
            // When singing along with ambience, disable all 16 channels
            SEQCMD_SET_CHANNEL_DISABLE_MASK(seqPlayerIndex, channelMaskDisable | 3);
        }
    } else {
        if (seqPlayerIndex == SEQ_PLAYER_BGM_SUB) {
            // When singing along with ambience, start the sequence
            Audio_PlaySequenceWithSeqPlayerIO(SEQ_PLAYER_BGM_SUB, NA_BGM_LONLON, 0, 0, 0);
        }

        // Turn volume on for only channels 0 & 1, which contain Malon's singing
        SEQCMD_SET_CHANNEL_VOLUME(seqPlayerIndex, 0, 1, 0x7F);
        SEQCMD_SET_CHANNEL_VOLUME(seqPlayerIndex, 1, 1, 0x7F);

        if (seqPlayerIndex == SEQ_PLAYER_BGM_SUB) {
            // When singing along with ambience, disable channels 2-15
            SEQCMD_SET_CHANNEL_DISABLE_MASK(seqPlayerIndex, channelMaskDisable);
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

void func_800F6700(s8 audioSetting) {
    s8 soundModeIndex;

    switch (audioSetting) {
        case 0:
            soundModeIndex = SOUNDMODE_STEREO;
            sSoundMode = SOUNDMODE_STEREO;
            break;

        case 1:
            soundModeIndex = SOUNDMODE_MONO;
            sSoundMode = SOUNDMODE_MONO;
            break;

        case 2:
            soundModeIndex = SOUNDMODE_HEADSET;
            sSoundMode = SOUNDMODE_HEADSET;
            break;

        case 3:
            soundModeIndex = SOUNDMODE_STEREO;
            sSoundMode = SOUNDMODE_SURROUND;
            break;
    }

    SEQCMD_SET_SOUND_MODE(soundModeIndex);
}

void Audio_SetBaseFilter(u8 filter) {
    if (sAudioBaseFilter != filter) {
        if (filter == 0) {
            Audio_StopSfxById(NA_SE_PL_IN_BUBBLE);
        } else if (sAudioBaseFilter == 0) {
            Audio_PlaySfxGeneral(NA_SE_PL_IN_BUBBLE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
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
    if (gActiveSeqs[SEQ_PLAYER_BGM_MAIN].seqId == NA_BGM_NATURE_AMBIENCE) {
        for (i = 0; i < 16; i++) {
            t = i;
            // CHAN_UPD_SCRIPT_IO (seq player 0, all channels, slot 6)
            Audio_QueueCmdS8(0x6 << 24 | SEQ_PLAYER_BGM_MAIN << 16 | ((t & 0xFF) << 8) | 6, filter);
        }
    }
}

void Audio_SetCutsceneFlag(s8 flag) {
    sAudioCutsceneFlag = flag;
}

void Audio_PlaySfxGeneralIfNotInCutscene(u16 sfxId, Vec3f* pos, u8 arg2, f32* freqScale, f32* arg4, s8* reverbAdd) {
    if (!sAudioCutsceneFlag) {
        Audio_PlaySfxGeneral(sfxId, pos, arg2, freqScale, arg4, reverbAdd);
    }
}

void Audio_PlaySfxIfNotInCutscene(u16 sfxId) {
    Audio_PlaySfxGeneralIfNotInCutscene(sfxId, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                        &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
}

void func_800F6964(u16 arg0) {
    s32 skip;
    u8 channelIdx;

    SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_BGM_MAIN, (arg0 * 3) / 2);
    SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_FANFARE, (arg0 * 3) / 2);
    for (channelIdx = 0; channelIdx < 16; channelIdx++) {
        skip = false;
        switch (channelIdx) {
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
            SEQCMD_SET_CHANNEL_VOLUME(SEQ_PLAYER_SFX, channelIdx, arg0 >> 1, 0);
        }
    }

    SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_BGM_SUB, (arg0 * 3) / 2);
}

void Audio_StopBgmAndFanfare(u16 fadeOutDuration) {
    SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_BGM_MAIN, fadeOutDuration);
    SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_FANFARE, fadeOutDuration);
    SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_BGM_SUB, fadeOutDuration);
    Audio_SetVolumeScale(SEQ_PLAYER_BGM_MAIN, VOL_SCALE_INDEX_BGM_SUB, 0x7F, 0);
    Audio_SetVolumeScale(SEQ_PLAYER_BGM_MAIN, VOL_SCALE_INDEX_FANFARE, 0x7F, 0);
}

void func_800F6B3C(void) {
    Audio_StartSequence(SEQ_PLAYER_SFX, 0, 0xFF, 5);
}

void Audio_DisableAllSeq(void) {
    Audio_DisableSeq(SEQ_PLAYER_BGM_MAIN, 0);
    Audio_DisableSeq(SEQ_PLAYER_FANFARE, 0);
    Audio_DisableSeq(SEQ_PLAYER_SFX, 0);
    Audio_DisableSeq(SEQ_PLAYER_BGM_SUB, 0);
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
    sPrevSeqMode = 0;
    D_8016B7A8 = 1.0f;
    D_8016B7B0 = 1.0f;
    sAudioBaseFilter = 0;
    sAudioExtraFilter = 0;
    sAudioBaseFilter2 = 0;
    sAudioExtraFilter2 = 0;
    AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
    sRiverFreqScaleLerp.remainingFrames = 0;
    sWaterfallFreqScaleLerp.remainingFrames = 0;
    sRiverFreqScaleLerp.value = 1.0f;
    sWaterfallFreqScaleLerp.value = 1.0f;
    D_8016B7D8 = 1.0f;
    sRiverSoundMainBgmVol = 0x7F;
    sRiverSoundMainBgmCurrentVol = 0x7F;
    sRiverSoundMainBgmLower = false;
    sRiverSoundMainBgmRestore = false;
    sGanonsTowerVol = 0xFF;
    sMalonSingingTimer = 0;
    sSpecReverb = sSpecReverbs[gAudioSpecId];
    D_80130608 = 0;
    sPrevMainBgmSeqId = NA_BGM_DISABLED;
    Audio_QueueCmdS8(0x46 << 24 | SEQ_PLAYER_BGM_MAIN << 16, -1);
    sSariaBgmPtr = NULL;
    sFanfareStartTimer = 0;
    D_8016B9F3 = 1;
    sMalonSingingDisabled = false;
}

void Audio_SetNatureAmbienceChannelIO(u8 channelIdxRange, u8 ioPort, u8 ioData) {
    u8 firstChannelIdx;
    u8 lastChannelIdx;
    u8 channelIdx;

    if ((gActiveSeqs[SEQ_PLAYER_BGM_MAIN].seqId != NA_BGM_NATURE_AMBIENCE) &&
        Audio_IsSeqCmdNotQueued(SEQCMD_OP_PLAY_SEQUENCE << 28 | NA_BGM_NATURE_AMBIENCE, SEQCMD_OP_MASK | 0xFF)) {
        sAudioNatureFailed = true;
        return;
    }

    // channelIdxRange = 01 on ioPort 1
    if (((channelIdxRange << 8) + ioPort) == ((NATURE_CHANNEL_CRITTER_0 << 8) + CHANNEL_IO_PORT_1)) {
        if (Audio_GetActiveSeqId(SEQ_PLAYER_BGM_SUB) != NA_BGM_LONLON) {
            sMalonSingingTimer = 0;
        }
    }

    firstChannelIdx = channelIdxRange >> 4;
    lastChannelIdx = channelIdxRange & 0xF;

    if (firstChannelIdx == 0) {
        firstChannelIdx = channelIdxRange & 0xF;
    }

    for (channelIdx = firstChannelIdx; channelIdx <= lastChannelIdx; channelIdx++) {
        SEQCMD_SET_CHANNEL_IO(SEQ_PLAYER_BGM_MAIN, channelIdx, ioPort, ioData);
    }
}

void Audio_StartNatureAmbienceSequence(u16 playerIO, u16 channelMask) {
    u8 channelIdx;

    if (Audio_GetActiveSeqId(SEQ_PLAYER_BGM_MAIN) == NA_BGM_WINDMILL) {
        Audio_PlayCutsceneEffectsSequence(SEQ_CS_EFFECTS_RAINFALL);
        return;
    }

    SEQCMD_SET_PLAYER_IO(SEQ_PLAYER_BGM_MAIN, 0, 1);
    SEQCMD_SET_PLAYER_IO(SEQ_PLAYER_BGM_MAIN, 4, playerIO >> 8);
    SEQCMD_SET_PLAYER_IO(SEQ_PLAYER_BGM_MAIN, 5, playerIO & 0xFF);
    Audio_SetVolumeScale(SEQ_PLAYER_BGM_MAIN, VOL_SCALE_INDEX_BGM_MAIN, 0x7F, 1);

    channelIdx = false;
    if (gStartSeqDisabled) {
        channelIdx = true;
        SEQCMD_DISABLE_PLAY_SEQUENCES(false);
    }

    SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0, 0, NA_BGM_NATURE_AMBIENCE);

    if (channelIdx) {
        SEQCMD_DISABLE_PLAY_SEQUENCES(true);
    }

    for (channelIdx = 0; channelIdx < 16; channelIdx++) {
        if (!(channelMask & (1 << channelIdx)) && (playerIO & (1 << channelIdx))) {
            SEQCMD_SET_CHANNEL_IO(SEQ_PLAYER_BGM_MAIN, channelIdx, CHANNEL_IO_PORT_1, 1);
        }
    }
}

void Audio_PlayNatureAmbienceSequence(u8 natureAmbienceId) {
    u8 i = 0;
    u8 channelIdx;
    u8 ioPort;
    u8 ioData;

    if ((gActiveSeqs[SEQ_PLAYER_BGM_MAIN].seqId == NA_BGM_DISABLED) ||
        !(sSeqFlags[gActiveSeqs[SEQ_PLAYER_BGM_MAIN].seqId & 0xFF & 0xFF] & SEQ_FLAG_NO_AMBIENCE)) {

        Audio_StartNatureAmbienceSequence(sNatureAmbienceDataIO[natureAmbienceId].playerIO,
                                          sNatureAmbienceDataIO[natureAmbienceId].channelMask);

        while ((sNatureAmbienceDataIO[natureAmbienceId].channelIO[i] != 0xFF) && (i < 100)) {
            channelIdx = sNatureAmbienceDataIO[natureAmbienceId].channelIO[i++];
            ioPort = sNatureAmbienceDataIO[natureAmbienceId].channelIO[i++];
            ioData = sNatureAmbienceDataIO[natureAmbienceId].channelIO[i++];
            SEQCMD_SET_CHANNEL_IO(SEQ_PLAYER_BGM_MAIN, channelIdx, ioPort, ioData);
        }

        SEQCMD_SET_CHANNEL_IO(SEQ_PLAYER_BGM_MAIN, NATURE_CHANNEL_UNK, CHANNEL_IO_PORT_7, sSoundMode);
    }
}

void Audio_Init(void) {
    AudioLoad_Init(NULL, 0);
}

void Audio_InitSound(void) {
    func_800F6C34();
    AudioOcarina_ResetStaffs();
    Audio_ResetSfxChannelState();
    Audio_ResetActiveSequencesAndVolume();
    Audio_ResetSfx();
    Audio_StartSequence(SEQ_PLAYER_SFX, 0, 0x70, 10);
}

void func_800F7170(void) {
    Audio_StartSequence(SEQ_PLAYER_SFX, 0, 0x70, 1);
    Audio_QueueCmdS32(0xF2000000, 1);
    Audio_ScheduleProcessCmds();
    Audio_QueueCmdS32(0xF8000000, 0);
}

void func_800F71BC(s32 arg0) {
    D_80133418 = 1;
    func_800F6C34();
    AudioOcarina_ResetStaffs();
    Audio_ResetSfxChannelState();
    Audio_ResetActiveSequences();
    Audio_ResetSfx();
}

void func_800F7208(void) {
    Audio_ResetActiveSequences();
    Audio_QueueCmdS32(0xF2000000, 1);
    func_800F6C34();
    Audio_ResetSfxChannelState();
    Audio_StartSequence(SEQ_PLAYER_SFX, 0, 0x70, 1);
}
