#ifndef SEQUENCE_H
#define SEQUENCE_H

typedef enum {
    /* 0x00 */ NA_BGM_GENERAL_SFX,      // General Sound Effects
    /* 0x01 */ NA_BGM_NATURE_AMBIENCE,  // Environmental nature background sounds
    /* 0x02 */ NA_BGM_FIELD_LOGIC,      // Hyrule Field
    /* 0x03 */ NA_BGM_FIELD_INIT,       // Hyrule Field	Initial Segment From Loading Area
    /* 0x04 */ NA_BGM_FIELD_DEFAULT_1,  // Hyrule Field	Moving Segment 1
    /* 0x05 */ NA_BGM_FIELD_DEFAULT_2,  // Hyrule Field	Moving Segment 2
    /* 0x06 */ NA_BGM_FIELD_DEFAULT_3,  // Hyrule Field	Moving Segment 3
    /* 0x07 */ NA_BGM_FIELD_DEFAULT_4,  // Hyrule Field	Moving Segment 4
    /* 0x08 */ NA_BGM_FIELD_DEFAULT_5,  // Hyrule Field	Moving Segment 5
    /* 0x09 */ NA_BGM_FIELD_DEFAULT_6,  // Hyrule Field	Moving Segment 6
    /* 0x0A */ NA_BGM_FIELD_DEFAULT_7,  // Hyrule Field	Moving Segment 7
    /* 0x0B */ NA_BGM_FIELD_DEFAULT_8,  // Hyrule Field	Moving Segment 8
    /* 0x0C */ NA_BGM_FIELD_DEFAULT_9,  // Hyrule Field	Moving Segment 9
    /* 0x0D */ NA_BGM_FIELD_DEFAULT_A,  // Hyrule Field	Moving Segment 10
    /* 0x0E */ NA_BGM_FIELD_DEFAULT_B,  // Hyrule Field	Moving Segment 11
    /* 0x0F */ NA_BGM_FIELD_ENEMY_INIT, // Hyrule Field	Enemy Approaches
    /* 0x10 */ NA_BGM_FIELD_ENEMY_1,    // Hyrule Field	Enemy Near Segment 1
    /* 0x11 */ NA_BGM_FIELD_ENEMY_2,    // Hyrule Field	Enemy Near Segment 2
    /* 0x12 */ NA_BGM_FIELD_ENEMY_3,    // Hyrule Field	Enemy Near Segment 3
    /* 0x13 */ NA_BGM_FIELD_ENEMY_4,    // Hyrule Field	Enemy Near Segment 4
    /* 0x14 */ NA_BGM_FIELD_STILL_1,    // Hyrule Field	Standing Still Segment 1
    /* 0x15 */ NA_BGM_FIELD_STILL_2,    // Hyrule Field	Standing Still Segment 2
    /* 0x16 */ NA_BGM_FIELD_STILL_3,    // Hyrule Field	Standing Still Segment 3
    /* 0x17 */ NA_BGM_FIELD_STILL_4,    // Hyrule Field	Standing Still Segment 4
    /* 0x18 */ NA_BGM_DUNGEON,          // Dodongo's Cavern
    /* 0x19 */ NA_BGM_KAKARIKO_ADULT,   // Kakariko Village (Adult)
    /* 0x1A */ NA_BGM_ENEMY,            // Battle
    /* 0x1B */ NA_BGM_BOSS,             // Boss Battle "NA_BGM_BOSS00"
    /* 0x1C */ NA_BGM_INSIDE_DEKU_TREE, // Inside the Deku Tree "NA_BGM_FAIRY_DUNGEON"
    /* 0x1D */ NA_BGM_MARKET,           // Market
    /* 0x1E */ NA_BGM_TITLE,            // Title Theme
    /* 0x1F */ NA_BGM_LINK_HOUSE,       // House
    /* 0x20 */ NA_BGM_GAME_OVER,        // Game Over
    /* 0x21 */ NA_BGM_BOSS_CLEAR,       // Boss Clear
    /* 0x22 */ NA_BGM_ITEM_GET,         // Obtain Item
    /* 0x23 */ NA_BGM_OPENING_GANON,    // Enter Ganondorf
    /* 0x24 */ NA_BGM_HEART_GET,        // Obtain Heart Container
    /* 0x25 */ NA_BGM_OCA_LIGHT,        // Prelude of Light
    /* 0x26 */ NA_BGM_JABU_JABU,        // Inside Jabu-Jabu's Belly "NA_BGM_BUYO_DUNGEON"
    /* 0x27 */ NA_BGM_KAKARIKO_KID,     // Kakariko Village (Child)
    /* 0x28 */ NA_BGM_GREAT_FAIRY,      // Great Fairy's Fountain "NA_BGM_GODESS"
    /* 0x29 */ NA_BGM_ZELDA_THEME,      // Zelda's Theme "NA_BGM_HIME"
    /* 0x2A */ NA_BGM_FIRE_TEMPLE,      // Fire Temple "NA_BGM_FIRE_DUNGEON"
    /* 0x2B */ NA_BGM_OPEN_TRE_BOX,     // Open Treasure Chest
    /* 0x2C */ NA_BGM_FOREST_TEMPLE,    // Forest Temple "NA_BGM_FORST_DUNGEON"
    /* 0x2D */ NA_BGM_COURTYARD,        // Hyrule Castle Courtyard "NA_BGM_HIRAL_GARDEN"
    /* 0x2E */ NA_BGM_GANON_TOWER,      // Ganondorf's Theme
    /* 0x2F */ NA_BGM_LONLON,           // Lon Lon Ranch "NA_BGM_RONRON"
    /* 0x30 */ NA_BGM_GORON_CITY,       // Goron City "NA_BGM_GORON"
    /* 0x31 */ NA_BGM_FIELD_MORNING,    // Hyrule Field Morning Theme
    /* 0x32 */ NA_BGM_SPIRITUAL_STONE,  // Spiritual Stone Get "NA_BGM_SPIRIT_STONE"
    /* 0x33 */ NA_BGM_OCA_BOLERO,       // Bolero of Fire "NA_BGM_OCA_FLAME"
    /* 0x34 */ NA_BGM_OCA_MINUET,       // Minuet of Forest "NA_BGM_OCA_WIND"
    /* 0x35 */ NA_BGM_OCA_SERENADE,     // Serenade of Water "NA_BGM_OCA_WATER"
    /* 0x36 */ NA_BGM_OCA_REQUIEM,      // Requiem of Spirit "NA_BGM_OCA_SOUL"
    /* 0x37 */ NA_BGM_OCA_NOCTURNE,     // Nocturne of Shadow "NA_BGM_OCA_DARKNESS"
    /* 0x38 */ NA_BGM_MINI_BOSS,        // Mini-Boss Battle "NA_BGM_MIDDLE_BOSS"
    /* 0x39 */ NA_BGM_SMALL_ITEM_GET,   // Obtain Small Item "NA_BGM_S_ITEM_GET"
    /* 0x3A */ NA_BGM_TEMPLE_OF_TIME,   // Temple of Time "NA_BGM_SHRINE_OF_TIME"
    /* 0x3B */ NA_BGM_EVENT_CLEAR,      // Escape from Lon Lon Ranch
    /* 0x3C */ NA_BGM_KOKIRI,           // Kokiri Forest
    /* 0x3D */ NA_BGM_OCA_FAIRY_GET,    // Obtain Fairy Ocarina "NA_BGM_OCA_YOUSEI"
    /* 0x3E */ NA_BGM_SARIA_THEME,      // Lost Woods "NA_BGM_MAYOIMORI"
    /* 0x3F */ NA_BGM_SPIRIT_TEMPLE,    // Spirit Temple "NA_BGM_SOUL_DUNGEON"
    /* 0x40 */ NA_BGM_HORSE,            // Horse Race
    /* 0x41 */ NA_BGM_HORSE_GOAL,       // Horse Race Goal
    /* 0x42 */ NA_BGM_INGO,             // Ingo's Theme
    /* 0x43 */ NA_BGM_MEDALLION_GET,    // Obtain Medallion "NA_BGM_MEDAL_GET"
    /* 0x44 */ NA_BGM_OCA_SARIA,        // Ocarina Saria's Song
    /* 0x45 */ NA_BGM_OCA_EPONA,        // Ocarina Epona's Song
    /* 0x46 */ NA_BGM_OCA_ZELDA,        // Ocarina Zelda's Lullaby
    /* 0x47 */ NA_BGM_OCA_SUNS,         // Ocarina Sun's Song "NA_BGM_OCA_SUNMOON"
    /* 0x48 */ NA_BGM_OCA_TIME,         // Ocarina Song of Time
    /* 0x49 */ NA_BGM_OCA_STORM,        // Ocarina Song of Storms
    /* 0x4A */ NA_BGM_NAVI_OPENING,     // Fairy Flying "NA_BGM_NAVI"
    /* 0x4B */ NA_BGM_DEKU_TREE_CS,     // Deku Tree "NA_BGM_DEKUNOKI"
    /* 0x4C */ NA_BGM_WINDMILL,         // Windmill Hut "NA_BGM_FUSHA"
    /* 0x4D */ NA_BGM_HYRULE_CS,        // Legend of Hyrule "NA_BGM_HIRAL_DEMO"
    /* 0x4E */ NA_BGM_MINI_GAME,        // Shooting Gallery
    /* 0x4F */ NA_BGM_SHEIK,            // Sheik's Theme "NA_BGM_SEAK"
    /* 0x50 */ NA_BGM_ZORA_DOMAIN,      // Zora's Domain "NA_BGM_ZORA"
    /* 0x51 */ NA_BGM_APPEAR,           // Enter Zelda
    /* 0x52 */ NA_BGM_ADULT_LINK,       // Goodbye to Zelda
    /* 0x53 */ NA_BGM_MASTER_SWORD,     // Master Sword
    /* 0x54 */ NA_BGM_INTRO_GANON,
    /* 0x55 */ NA_BGM_SHOP,             // Shop
    /* 0x56 */ NA_BGM_CHAMBER_OF_SAGES, // Chamber of the Sages "NA_BGM_KENJA"
    /* 0x57 */ NA_BGM_FILE_SELECT,      // File Select
    /* 0x58 */ NA_BGM_ICE_CAVERN,       // Ice Cavern "NA_BGM_ICE_DUNGEON"
    /* 0x59 */ NA_BGM_DOOR_OF_TIME,     // Open Door of Temple of Time "NA_BGM_GATE_OPEN"
    /* 0x5A */ NA_BGM_OWL,              // Kaepora Gaebora's Theme
    /* 0x5B */ NA_BGM_SHADOW_TEMPLE,    // Shadow Temple "NA_BGM_DARKNESS_DUNGEON"
    /* 0x5C */ NA_BGM_WATER_TEMPLE,     // Water Temple "NA_BGM_AQUA_DUNGEON"
    /* 0x5D */ NA_BGM_BRIDGE_TO_GANONS, // Ganon's Castle Bridge "NA_BGM_BRIDGE"
    /* 0x5E */ NA_BGM_OCARINA_OF_TIME,  // Ocarina of Time "NA_BGM_SARIA"
    /* 0x5F */ NA_BGM_GERUDO_VALLEY,    // Gerudo Valley "NA_BGM_GERUDO"
    /* 0x60 */ NA_BGM_POTION_SHOP,      // Potion Shop "NA_BGM_DRUGSTORE"
    /* 0x61 */ NA_BGM_KOTAKE_KOUME,     // Kotake & Koume's Theme
    /* 0x62 */ NA_BGM_ESCAPE,           // Escape from Ganon's Castle
    /* 0x63 */ NA_BGM_UNDERGROUND,      // Ganon's Castle Under Ground
    /* 0x64 */ NA_BGM_GANONDORF_BOSS,   // Ganondorf Battle
    /* 0x65 */ NA_BGM_GANON_BOSS,       // Ganon Battle
    /* 0x66 */ NA_BGM_END_DEMO,         // Seal of Six Sages
    /* 0x67 */ NA_BGM_STAFF_1,          // End Credits I
    /* 0x68 */ NA_BGM_STAFF_2,          // End Credits II
    /* 0x69 */ NA_BGM_STAFF_3,          // End Credits III
    /* 0x6A */ NA_BGM_STAFF_4,          // End Credits IV
    /* 0x6B */ NA_BGM_FIRE_BOSS,        // King Dodongo & Volvagia Boss Battle "NA_BGM_BOSS01"
    /* 0x6C */ NA_BGM_TIMED_MINI_GAME,  // Mini-Game
    /* 0x6D */ NA_BGM_CUTSCENE_EFFECTS, // A small collection of various cutscene sounds
    /* 0x7F */ NA_BGM_NO_MUSIC = 0x7F,  // No bgm music is played
    /* 0x80 */ NA_BGM_NATURE_SFX_RAIN = 0x80,  // Related to rain
    /* 0xFFFF */ NA_BGM_DISABLED = 0xFFFF
} SeqId;

typedef enum {
    /* 0 */ SEQ_PLAYER_BGM_MAIN,
    /* 1 */ SEQ_PLAYER_FANFARE,
    /* 2 */ SEQ_PLAYER_SFX,
    /* 3 */ SEQ_PLAYER_BGM_SUB
} SequencePlayerId;

typedef enum {
    /* 0 */ SEQ_MODE_DEFAULT,
    /* 1 */ SEQ_MODE_ENEMY,
    /* 2 */ SEQ_MODE_STILL, // Not moving or first-person view
    /* 3 */ SEQ_MODE_IGNORE
} SequenceMode;

typedef enum {
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

typedef enum {
    /* 0x0 */ CHANNEL_IO_PORT_0,
    /* 0x1 */ CHANNEL_IO_PORT_1,
    /* 0x2 */ CHANNEL_IO_PORT_2,
    /* 0x3 */ CHANNEL_IO_PORT_3,
    /* 0x4 */ CHANNEL_IO_PORT_4,
    /* 0x5 */ CHANNEL_IO_PORT_5,
    /* 0x6 */ CHANNEL_IO_PORT_6,
    /* 0x7 */ CHANNEL_IO_PORT_7
} ChannelIOPort;

typedef enum {
    /* 0 */ VOL_SCALE_INDEX_BGM_MAIN,
    /* 1 */ VOL_SCALE_INDEX_FANFARE,
    /* 2 */ VOL_SCALE_INDEX_SFX,
    /* 3 */ VOL_SCALE_INDEX_BGM_SUB,
    /* 4 */ VOL_SCALE_INDEX_MAX
} VolumeScaleIndex; // May be worth using SequencePlayerId instead

typedef struct {
    /* 0x00 */ f32 volCur;
    /* 0x04 */ f32 volTarget;
    /* 0x08 */ f32 volStep;
    /* 0x0C */ u16 volTimer;
    /* 0x10 */ f32 freqScaleCur;
    /* 0x14 */ f32 freqScaleTarget;
    /* 0x18 */ f32 freqScaleStep;
    /* 0x1C */ u16 freqScaleTimer;
} ActiveSequenceChannelData; // size = 0x20

typedef struct {
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

typedef enum {
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

typedef enum {
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

typedef enum {
    /* 0x00 */ NATURE_STREAM_RUSHING_WATER,
    /* 0x01 */ NATURE_STREAM_HOWLING_WIND,
    /* 0x02 */ NATURE_STREAM_SCREECHING_WIND,
    /* 0x03 */ NATURE_STREAM_SCREECHING_WIND_ALT1
} NatureStreamId;

typedef enum {
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

#endif
