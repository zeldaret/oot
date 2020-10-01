#ifndef BGM_H
#define BGM_H

#define NA_BGM_STOP 0x100000FF

typedef enum {
    /* 0x00 */ NA_BGM_NO_MUSIC_0,       // No music
    /* 0x01 */ NA_BGM_NO_MUSIC_1,       // No music
    /* 0x02 */ NA_BGM_FIELD,            // Hyrule Field
    /* 0x03 */ NA_BGM_FIELD_START,      // Hyrule Field Initial Segment From Loading Area
    /* 0x04 */ NA_BGM_FIELD_MOVE_1,     // Hyrule Field Moving Segment 1
    /* 0x05 */ NA_BGM_FIELD_MOVE_2,     // Hyrule Field Moving Segment 2
    /* 0x06 */ NA_BGM_FIELD_MOVE_3,     // Hyrule Field Moving Segment 3
    /* 0x07 */ NA_BGM_FIELD_MOVE_4,     // Hyrule Field Moving Segment 4
    /* 0x08 */ NA_BGM_FIELD_MOVE_5,     // Hyrule Field Moving Segment 5
    /* 0x09 */ NA_BGM_FIELD_MOVE_6,     // Hyrule Field Moving Segment 6
    /* 0x0A */ NA_BGM_FIELD_MOVE_7,     // Hyrule Field Moving Segment 7
    /* 0x0B */ NA_BGM_FIELD_MOVE_8,     // Hyrule Field Moving Segment 8
    /* 0x0C */ NA_BGM_FIELD_MOVE_9,     // Hyrule Field Moving Segment 9
    /* 0x0D */ NA_BGM_FIELD_MOVE_10,    // Hyrule Field Moving Segment 10
    /* 0x0E */ NA_BGM_FIELD_MOVE_11,    // Hyrule Field Moving Segment 11
    /* 0x0F */ NA_BGM_FIELD_ENEMY_NEAR, // Hyrule Field Enemy Approaches
    /* 0x10 */ NA_BGM_FIELD_ENEMY_1,    // Hyrule Field Enemy Near Segment 1
    /* 0x11 */ NA_BGM_FIELD_ENEMY_2,    // Hyrule Field Enemy Near Segment 2
    /* 0x12 */ NA_BGM_FIELD_ENEMY_3,    // Hyrule Field Enemy Near Segment 3
    /* 0x13 */ NA_BGM_FIELD_ENEMY_4,    // Hyrule Field Enemy Near Segment 4
    /* 0x14 */ NA_BGM_FIELD_STILL_1,    // Hyrule Field Standing Still Segment 1
    /* 0x15 */ NA_BGM_FIELD_STILL_2,    // Hyrule Field Standing Still Segment 2
    /* 0x16 */ NA_BGM_FIELD_STILL_3,    // Hyrule Field Standing Still Segment 3
    /* 0x17 */ NA_BGM_FIELD_STILL_4,    // Hyrule Field Standing Still Segment 4
    /* 0x18 */ NA_BGM_DUNGEON,          // Dodongo's Cavern
    /* 0x19 */ NA_BGM_KAKARIKO_ADULT,   // Kakariko Village (Adult)
    /* 0x1A */ NA_BGM_ENEMY,            // Battle
    /* 0x1B */ NA_BGM_BOSS00,           // Boss Battle
    /* 0x1C */ NA_BGM_FAIRY_DUNGEON,    // Inside the Deku Tree
    /* 0x1D */ NA_BGM_MARKET,           // Market
    /* 0x1E */ NA_BGM_TITLE,            // Title Theme
    /* 0x1F */ NA_BGM_LINK_HOUSE,       // House
    /* 0x20 */ NA_BGM_GAME_OVER,        // Game Over
    /* 0x21 */ NA_BGM_BOSS_CLEAR,       // Boss Clear
    /* 0x22 */ NA_BGM_ITEM_GET,         // Obtain Item
    /* 0x23 */ NA_BGM_OPENING_GANON,    // Ganondorf Appears
    /* 0x24 */ NA_BGM_HEART_GET,        // Obtain Heart Container
    /* 0x25 */ NA_BGM_OCA_LIGHT,        // Prelude of Light
    /* 0x26 */ NA_BGM_BUYO_DUNGEON,     // Inside Jabu-Jabu's Belly
    /* 0x27 */ NA_BGM_KAKARIKO_KID,     // Kakariko Village (Child)
    /* 0x28 */ NA_BGM_GODESS,           // Great Fairy's Fountain
    /* 0x29 */ NA_BGM_HIME,             // Castle Courtyard
    /* 0x2A */ NA_BGM_FIRE_DUNGEON,     // Fire Temple
    /* 0x2B */ NA_BGM_OPEN_TRE_BOX,     // Open Treasure Chest
    /* 0x2C */ NA_BGM_FORST_DUNGEON,    // Forest Temple
    /* 0x2D */ NA_BGM_HIRAL_GARDEN,     // Hyrule Castle Courtyard
    /* 0x2E */ NA_BGM_GANON_TOWER,      // Ganon's Tower
    /* 0x2F */ NA_BGM_RONRON,           // Lon Lon Ranch
    /* 0x30 */ NA_BGM_GORON,            // Goron City
    /* 0x31 */ NA_BGM_FIELD_DAWN,       // Hyrule Field Morning Theme
    /* 0x32 */ NA_BGM_SPIRIT_STONE,     // Obtain Spiritual Stone
    /* 0x33 */ NA_BGM_OCA_FLAME,        // Bolero of Fire
    /* 0x34 */ NA_BGM_OCA_WIND,         // Minuet of Forest
    /* 0x35 */ NA_BGM_OCA_WATER,        // Serenade of Water
    /* 0x36 */ NA_BGM_OCA_SOUL,         // Requiem of Spirit
    /* 0x37 */ NA_BGM_OCA_DARKNESS,     // Nocturne of Shadow
    /* 0x38 */ NA_BGM_MIDDLE_BOSS,      // Mini-Boss Battle
    /* 0x39 */ NA_BGM_S_ITEM_GET,       // Obtain Small Item
    /* 0x3A */ NA_BGM_SHRINE_OF_TIME,   // Temple of Time
    /* 0x3B */ NA_BGM_EVENT_CLEAR,      // Escape from Lon Lon Ranch
    /* 0x3C */ NA_BGM_KOKIRI,           // Kokiri Forest
    /* 0x3D */ NA_BGM_OCA_YOUSEI,       // Obtain Fairy Ocarina
    /* 0x3E */ NA_BGM_MAYOIMORI,        // Lost Woods
    /* 0x3F */ NA_BGM_SOUL_DUNGEON,     // Spirit Temple
    /* 0x40 */ NA_BGM_HORSE,            // Horse Race
    /* 0x41 */ NA_BGM_HORSE_GOAL,       // Horse Race Finish
    /* 0x42 */ NA_BGM_INGO,             // Ingo's Theme
    /* 0x43 */ NA_BGM_MEDAL_GET,        // Obtain Medallion
    /* 0x44 */ NA_BGM_OCA_SARIA,        // Saria's Song
    /* 0x45 */ NA_BGM_OCA_EPONA,        // Epona's Song
    /* 0x46 */ NA_BGM_OCA_ZELDA,        // Ocarina Zelda's Lullaby
    /* 0x47 */ NA_BGM_OCA_SUNMOON,      // Ocarina Sun's Song
    /* 0x48 */ NA_BGM_OCA_TIME,         // Ocarina Song of Time
    /* 0x49 */ NA_BGM_OCA_STORM,        // Ocarina Song of Storms
    /* 0x4A */ NA_BGM_NAVI,             // Fairy Flying
    /* 0x4B */ NA_BGM_DEKUNOKI,         // Deku Tree
    /* 0x4C */ NA_BGM_FUSHA,            // Windmill Hut
    /* 0x4D */ NA_BGM_HIRAL_DEMO,       // Legend of Hyrule
    /* 0x4E */ NA_BGM_MINI_GAME,        // Minigame
    /* 0x4F */ NA_BGM_SEAK,             // Sheik's Theme
    /* 0x50 */ NA_BGM_ZORA,             // Zora's Domain
    /* 0x51 */ NA_BGM_APPEAR,           // Major character appears
    /* 0x52 */ NA_BGM_ADULT_LINK,       // Zelda's Theme
    /* 0x53 */ NA_BGM_MASTER_SWORD,     // Master Sword
    /* 0x54 */ NA_BGM_INTRO_GANON,      // Ganondorf's theme
    /* 0x55 */ NA_BGM_SHOP,             // Shop
    /* 0x56 */ NA_BGM_KENJA,            // Chamber of the Sages
    /* 0x57 */ NA_BGM_FILE_SELECT,      // File Select
    /* 0x58 */ NA_BGM_ICE_DUNGEON,      // Ice Cavern
    /* 0x59 */ NA_BGM_GATE_OPEN,        // Door of Time Opens
    /* 0x5A */ NA_BGM_OWL,              // Kaepora Gaebora's Theme
    /* 0x5B */ NA_BGM_DARKNESS_DUNGEON, // Shadow Temple
    /* 0x5C */ NA_BGM_AQUA_DUNGEON,     // Water Temple
    /* 0x5D */ NA_BGM_BRIDGE,           // Bridge of Sages
    /* 0x5E */ NA_BGM_SARIA,            // Six Sages' Seal
    /* 0x5F */ NA_BGM_GERUDO,           // Gerudo Valley
    /* 0x60 */ NA_BGM_DRUGSTORE,        // Potion Shop
    /* 0x61 */ NA_BGM_KOTAKE_KOUME,     // Kotake & Koume's Theme
    /* 0x62 */ NA_BGM_ESCAPE,           // Escape from Ganon's Castle
    /* 0x63 */ NA_BGM_UNDERGROUND,      // Inside Ganon's Castle
    /* 0x64 */ NA_BGM_GANON_BATTLE_1,   // Ganondorf Battle
    /* 0x65 */ NA_BGM_GANON_BATTLE_2,   // Ganon Battle
    /* 0x66 */ NA_BGM_END_DEMO,         // Zelda's Goodbye
    /* 0x67 */ NA_BGM_STAFF_1,          // End Credits I
    /* 0x68 */ NA_BGM_STAFF_2,          // End Credits II
    /* 0x69 */ NA_BGM_STAFF_3,          // End Credits III
    /* 0x6A */ NA_BGM_STAFF_4,          // End Credits IV
    /* 0x6B */ NA_BGM_BOSS01,           // Fire Boss Battle
    /* 0x6C */ NA_BGM_MINI_GAME_2       // Minigame 2
} BgmId;

#endif
