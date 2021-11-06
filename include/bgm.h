#ifndef BGM_H
#define BGM_H

#define NA_BGM_STOP 0x100000FF

#define NA_BGM_GENERAL_SFX 0x0       // General Sound Effects
#define NA_BGM_NATURE_BACKGROUND 0x1 // Environmental nature background sounds
#define NA_BGM_FIELD_LOGIC 0x2       // Hyrule Field
#define NA_BGM_FIELD_INIT 0x3        // Hyrule Field	Initial Segment From Loading Area
#define NA_BGM_FIELD_MOVE_1 0x4      // Hyrule Field	Moving Segment 1
#define NA_BGM_FIELD_MOVE_2 0x5      // Hyrule Field	Moving Segment 2
#define NA_BGM_FIELD_MOVE_3 0x6      // Hyrule Field	Moving Segment 3
#define NA_BGM_FIELD_MOVE_4 0x7      // Hyrule Field	Moving Segment 4
#define NA_BGM_FIELD_MOVE_5 0x8      // Hyrule Field	Moving Segment 5
#define NA_BGM_FIELD_MOVE_6 0x9      // Hyrule Field	Moving Segment 6
#define NA_BGM_FIELD_MOVE_7 0x0A     // Hyrule Field	Moving Segment 7
#define NA_BGM_FIELD_MOVE_8 0x0B     // Hyrule Field	Moving Segment 8
#define NA_BGM_FIELD_MOVE_9 0x0C     // Hyrule Field	Moving Segment 9
#define NA_BGM_FIELD_MOVE_A 0x0D     // Hyrule Field	Moving Segment 10
#define NA_BGM_FIELD_MOVE_B 0x0E     // Hyrule Field	Moving Segment 11
#define NA_BGM_FIELD_ENEMY_INIT 0x0F // Hyrule Field	Enemy Approaches
#define NA_BGM_FIELD_ENEMY_1 0x10    // Hyrule Field	Enemy Near Segment 1
#define NA_BGM_FIELD_ENEMY_2 0x11    // Hyrule Field	Enemy Near Segment 2
#define NA_BGM_FIELD_ENEMY_3 0x12    // Hyrule Field	Enemy Near Segment 3
#define NA_BGM_FIELD_ENEMY_4 0x13    // Hyrule Field	Enemy Near Segment 4
#define NA_BGM_FIELD_STILL_1 0x14    // Hyrule Field	Standing Still Segment 1
#define NA_BGM_FIELD_STILL_2 0x15    // Hyrule Field	Standing Still Segment 2
#define NA_BGM_FIELD_STILL_3 0x16    // Hyrule Field	Standing Still Segment 3
#define NA_BGM_FIELD_STILL_4 0x17    // Hyrule Field	Standing Still Segment 4
#define NA_BGM_DUNGEON 0x18          // Dodongo's Cavern
#define NA_BGM_KAKARIKO_ADULT 0x19   // Kakariko Village (Adult)
#define NA_BGM_ENEMY 0x1A            // Battle
#define NA_BGM_BOSS 0x1B             // Boss Battle "NA_BGM_BOSS00"
#define NA_BGM_INSIDE_DEKU_TREE 0x1C // Inside the Deku Tree "NA_BGM_FAIRY_DUNGEON"
#define NA_BGM_MARKET 0x1D           // Market
#define NA_BGM_TITLE 0x1E            // Title Theme
#define NA_BGM_LINK_HOUSE 0x1F       // House
#define NA_BGM_GAME_OVER 0x20        // Game Over
#define NA_BGM_BOSS_CLEAR 0x21       // Boss Clear
#define NA_BGM_ITEM_GET 0x22         // Obtain Item
#define NA_BGM_OPENING_GANON 0x23    // Enter Ganondorf
#define NA_BGM_HEART_GET 0x24        // Obtain Heart Container
#define NA_BGM_OCA_LIGHT 0x25        // Prelude of Light
#define NA_BGM_JABU_JABU 0x26        // Inside Jabu-Jabu's Belly "NA_BGM_BUYO_DUNGEON"
#define NA_BGM_KAKARIKO_KID 0x27     // Kakariko Village (Child)
#define NA_BGM_GREAT_FAIRY 0x28      // Great Fairy's Fountain "NA_BGM_GODESS"
#define NA_BGM_ZELDA_THEME 0x29      // Zelda's Theme "NA_BGM_HIME"
#define NA_BGM_FIRE_TEMPLE 0x2A      // Fire Temple "NA_BGM_FIRE_DUNGEON"
#define NA_BGM_OPEN_TRE_BOX 0x2B     // Open Treasure Chest
#define NA_BGM_FOREST_TEMPLE 0x2C    // Forest Temple "NA_BGM_FORST_DUNGEON"
#define NA_BGM_COURTYARD 0x2D        // Hyrule Castle Courtyard "NA_BGM_HIRAL_GARDEN"
#define NA_BGM_GANON_TOWER 0x2E      // Ganondorf's Theme
#define NA_BGM_LONLON 0x2F           // Lon Lon Ranch "NA_BGM_RONRON"
#define NA_BGM_GORON_CITY 0x30       // Goron City "NA_BGM_GORON"
#define NA_BGM_FIELD_MORNING 0x31    // Hyrule Field Morning Theme
#define NA_BGM_SPIRITUAL_STONE 0x32  // Spiritual Stone Get "NA_BGM_SPIRIT_STONE"
#define NA_BGM_OCA_BOLERO 0x33       // Bolero of Fire "NA_BGM_OCA_FLAME"
#define NA_BGM_OCA_MINUET 0x34       // Minuet of Forest "NA_BGM_OCA_WIND"
#define NA_BGM_OCA_SERENADE 0x35     // Serenade of Water "NA_BGM_OCA_WATER"
#define NA_BGM_OCA_REQUIEM 0x36      // Requiem of Spirit "NA_BGM_OCA_SOUL"
#define NA_BGM_OCA_NOCTURNE 0x37     // Nocturne of Shadow "NA_BGM_OCA_DARKNESS"
#define NA_BGM_MINI_BOSS 0x38        // Mini-Boss Battle "NA_BGM_MIDDLE_BOSS"
#define NA_BGM_SMALL_ITEM_GET 0x39   // Obtain Small Item "NA_BGM_S_ITEM_GET"
#define NA_BGM_TEMPLE_OF_TIME 0x3A   // Temple of Time "NA_BGM_SHRINE_OF_TIME"
#define NA_BGM_EVENT_CLEAR 0x3B      // Escape from Lon Lon Ranch
#define NA_BGM_KOKIRI 0x3C           // Kokiri Forest
#define NA_BGM_OCA_FAIRY_GET 0x3D    // Obtain Fairy Ocarina "NA_BGM_OCA_YOUSEI"
#define NA_BGM_SARIA_THEME 0x3E      // Lost Woods "NA_BGM_MAYOIMORI"
#define NA_BGM_SPIRIT_TEMPLE 0x3F    // Spirit Temple "NA_BGM_SOUL_DUNGEON"
#define NA_BGM_HORSE 0x40            // Horse Race
#define NA_BGM_HORSE_GOAL 0x41       // Horse Race Goal
#define NA_BGM_INGO 0x42             // Ingo's Theme
#define NA_BGM_MEDALLION_GET 0x43    // Obtain Medallion "NA_BGM_MEDAL_GET"
#define NA_BGM_OCA_SARIA 0x44        // Ocarina Saria's Song
#define NA_BGM_OCA_EPONA 0x45        // Ocarina Epona's Song
#define NA_BGM_OCA_ZELDA 0x46        // Ocarina Zelda's Lullaby
#define NA_BGM_OCA_SUNS 0x47         // Ocarina Sun's Song "NA_BGM_OCA_SUNMOON"
#define NA_BGM_OCA_TIME 0x48         // Ocarina Song of Time
#define NA_BGM_OCA_STORM 0x49        // Ocarina Song of Storms
#define NA_BGM_NAVI_OPENING 0x4A     // Fairy Flying "NA_BGM_NAVI"
#define NA_BGM_DEKU_TREE_CS 0x4B     // Deku Tree "NA_BGM_DEKUNOKI"
#define NA_BGM_WINDMILL 0x4C         // Windmill Hut "NA_BGM_FUSHA"
#define NA_BGM_HYRULE_CS 0x4D        // Legend of Hyrule "NA_BGM_HIRAL_DEMO"
#define NA_BGM_MINI_GAME 0x4E        // Shooting Gallery
#define NA_BGM_SHEIK 0x4F            // Sheik's Theme "NA_BGM_SEAK"
#define NA_BGM_ZORA_DOMAIN 0x50      // Zora's Domain "NA_BGM_ZORA"
#define NA_BGM_APPEAR 0x51           // Enter Zelda
#define NA_BGM_ADULT_LINK 0x52       // Goodbye to Zelda
#define NA_BGM_MASTER_SWORD 0x53     // Master Sword
#define NA_BGM_INTRO_GANON 0x54
#define NA_BGM_SHOP 0x55             // Shop
#define NA_BGM_CHAMBER_OF_SAGES 0x56 // Chamber of the Sages "NA_BGM_KENJA"
#define NA_BGM_FILE_SELECT 0x57      // File Select
#define NA_BGM_ICE_CAVERN 0x58       // Ice Cavern "NA_BGM_ICE_DUNGEON"
#define NA_BGM_DOOR_OF_TIME 0x59     // Open Door of Temple of Time "NA_BGM_GATE_OPEN"
#define NA_BGM_OWL 0x5A              // Kaepora Gaebora's Theme
#define NA_BGM_SHADOW_TEMPLE 0x5B    // Shadow Temple "NA_BGM_DARKNESS_DUNGEON"
#define NA_BGM_WATAER_TEMPLE 0x5C    // Water Temple "NA_BGM_AQUA_DUNGEON"
#define NA_BGM_BRIDGE_TO_GANONS 0x5D // Ganon's Castle Bridge "NA_BGM_BRIDGE"
#define NA_BGM_OCARINA_OF_TIME 0x5E  // Ocarina of Time "NA_BGM_SARIA"
#define NA_BGM_GERUDO_VALLEY 0x5F    // Gerudo Valley "NA_BGM_GERUDO"
#define NA_BGM_POTION_SHOP 0x60      // Potion Shop "NA_BGM_DRUGSTORE"
#define NA_BGM_KOTAKE_KOUME 0x61     // Kotake & Koume's Theme
#define NA_BGM_ESCAPE 0x62           // Escape from Ganon's Castle
#define NA_BGM_UNDERGROUND 0x63      // Ganon's Castle Under Ground
#define NA_BGM_GANON_BATTLE_1 0x64   // Ganondorf Battle
#define NA_BGM_GANON_BATTLE_2 0x65   // Ganon Battle
#define NA_BGM_END_DEMO 0x66         // Seal of Six Sages
#define NA_BGM_STAFF_1 0x67          // End Credits I
#define NA_BGM_STAFF_2 0x68          // End Credits II
#define NA_BGM_STAFF_3 0x69          // End Credits III
#define NA_BGM_STAFF_4 0x6A          // End Credits IV
#define NA_BGM_FIRE_BOSS 0x6B        // King Dodongo & Volvagia Boss Battle "NA_BGM_BOSS01"
#define NA_BGM_MINI_GAME_2 0x6C      // Mini-Game
#define NA_BGM_VARIOUS_SFX 0x6D      // A small collection of various sound effects
#define NA_BGM_NO_MUSIC 0x7F         // No bgm music is played
#define NA_BGM_NATURE_SFX_RAIN 0x80  // Related to rain
#define NA_BGM_DISABLED 0xFFFF

#endif
