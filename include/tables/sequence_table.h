/**
 * Sequence Table
 *
 * DEFINE_SEQUENCE should be used to define sequences
 *    - Argument 0: The name of the sequence, as defined by .startseq in the .seq file
 *    - Argument 1: The sequence id enum name
 *    - Argument 2: Storage medium for the sequence (SampleMedium)
 *    - Argument 3: Cache load policy for the sequence (AudioCacheLoadType)
 *    - Argument 4: Sequence flags
 *
 * DEFINE_SEQUENCE_PTR should be used to define pointers to sequences
 *    - Argument 0: The sequence id enum name of the sequence this entry points to
 *    - Argument 1: The sequence id enum name for this pointer
 *    - Argument 2: Storage medium for the sequence (SampleMedium)
 *    - Argument 3: Cache load policy for the sequence (AudioCacheLoadType)
 *    - Argument 4: Sequence flags
 */
#if OOT_VERSION < PAL_1_0 || !PLATFORM_N64
#define SEQ_0_FLAGS     SEQ_FLAG_FANFARE
#else
#define SEQ_0_FLAGS     SEQ_FLAG_FANFARE | SEQ_FLAG_ENEMY
#endif
DEFINE_SEQUENCE    (Sequence_0,         NA_BGM_GENERAL_SFX,      MEDIUM_CART, CACHE_LOAD_PERMANENT,  SEQ_0_FLAGS                            ) // general_sfx
DEFINE_SEQUENCE    (Sequence_1,         NA_BGM_NATURE_AMBIENCE,  MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_ENEMY                         ) // nature_ambience
DEFINE_SEQUENCE    (Sequence_2,         NA_BGM_FIELD_LOGIC,      MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // field_logic
DEFINE_SEQUENCE    (Sequence_3,         NA_BGM_FIELD_INIT,       MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // field_init
DEFINE_SEQUENCE    (Sequence_4,         NA_BGM_FIELD_DEFAULT_1,  MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // field_default_1
DEFINE_SEQUENCE    (Sequence_5,         NA_BGM_FIELD_DEFAULT_2,  MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // field_default_2
DEFINE_SEQUENCE    (Sequence_6,         NA_BGM_FIELD_DEFAULT_3,  MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // field_default_3
DEFINE_SEQUENCE    (Sequence_7,         NA_BGM_FIELD_DEFAULT_4,  MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // field_default_4
DEFINE_SEQUENCE    (Sequence_8,         NA_BGM_FIELD_DEFAULT_5,  MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // field_default_5
DEFINE_SEQUENCE    (Sequence_9,         NA_BGM_FIELD_DEFAULT_6,  MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // field_default_6
DEFINE_SEQUENCE    (Sequence_10,        NA_BGM_FIELD_DEFAULT_7,  MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // field_default_7
DEFINE_SEQUENCE    (Sequence_11,        NA_BGM_FIELD_DEFAULT_8,  MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // field_default_8
DEFINE_SEQUENCE    (Sequence_12,        NA_BGM_FIELD_DEFAULT_9,  MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // field_default_9
DEFINE_SEQUENCE    (Sequence_13,        NA_BGM_FIELD_DEFAULT_A,  MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // field_default_a
DEFINE_SEQUENCE    (Sequence_14,        NA_BGM_FIELD_DEFAULT_B,  MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // field_default_b
DEFINE_SEQUENCE    (Sequence_15,        NA_BGM_FIELD_ENEMY_INIT, MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // field_enemy_init
DEFINE_SEQUENCE    (Sequence_16,        NA_BGM_FIELD_ENEMY_1,    MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // field_enemy_1
DEFINE_SEQUENCE    (Sequence_17,        NA_BGM_FIELD_ENEMY_2,    MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // field_enemy_2
DEFINE_SEQUENCE    (Sequence_18,        NA_BGM_FIELD_ENEMY_3,    MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // field_enemy_3
DEFINE_SEQUENCE    (Sequence_19,        NA_BGM_FIELD_ENEMY_4,    MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // field_enemy_4
DEFINE_SEQUENCE    (Sequence_20,        NA_BGM_FIELD_STILL_1,    MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // field_still_1
DEFINE_SEQUENCE    (Sequence_21,        NA_BGM_FIELD_STILL_2,    MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // field_still_2
DEFINE_SEQUENCE    (Sequence_22,        NA_BGM_FIELD_STILL_3,    MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // field_still_3
DEFINE_SEQUENCE    (Sequence_23,        NA_BGM_FIELD_STILL_4,    MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // field_still_4
DEFINE_SEQUENCE    (Sequence_24,        NA_BGM_DUNGEON,          MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_RESUME_PREV | SEQ_FLAG_ENEMY  ) // dungeon
DEFINE_SEQUENCE    (Sequence_25,        NA_BGM_KAKARIKO_ADULT,   MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_RESUME                        ) // kakariko_adult
DEFINE_SEQUENCE    (Sequence_26,        NA_BGM_ENEMY,            MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // enemy
DEFINE_SEQUENCE    (Sequence_27,        NA_BGM_BOSS,             MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_NO_AMBIENCE | SEQ_FLAG_RESTORE) // boss
DEFINE_SEQUENCE    (Sequence_28,        NA_BGM_INSIDE_DEKU_TREE, MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_ENEMY                         ) // inside_deku_tree
DEFINE_SEQUENCE    (Sequence_29,        NA_BGM_MARKET,           MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // market
DEFINE_SEQUENCE    (Sequence_30,        NA_BGM_TITLE,            MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // title
DEFINE_SEQUENCE    (Sequence_31,        NA_BGM_LINK_HOUSE,       MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_RESUME_PREV                   ) // link_house
DEFINE_SEQUENCE    (Sequence_32,        NA_BGM_GAME_OVER,        MEDIUM_CART, CACHE_LOAD_PERSISTENT, 0                                      ) // game_over
DEFINE_SEQUENCE    (Sequence_33,        NA_BGM_BOSS_CLEAR,       MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // boss_clear
DEFINE_SEQUENCE    (Sequence_34,        NA_BGM_ITEM_GET,         MEDIUM_CART, CACHE_LOAD_PERSISTENT, SEQ_FLAG_FANFARE                       ) // item_get
DEFINE_SEQUENCE    (Sequence_35,        NA_BGM_OPENING_GANON,    MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_FANFARE_GANON                 ) // opening_ganon
DEFINE_SEQUENCE    (Sequence_36,        NA_BGM_HEART_GET,        MEDIUM_CART, CACHE_LOAD_PERSISTENT, SEQ_FLAG_FANFARE                       ) // heart_get
DEFINE_SEQUENCE    (Sequence_37,        NA_BGM_OCA_LIGHT,        MEDIUM_CART, CACHE_LOAD_PERSISTENT, SEQ_FLAG_FANFARE                       ) // oca_light
DEFINE_SEQUENCE    (Sequence_38,        NA_BGM_JABU_JABU,        MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_ENEMY                         ) // jabu_jabu
DEFINE_SEQUENCE    (Sequence_39,        NA_BGM_KAKARIKO_KID,     MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_RESUME                        ) // kakariko_kid
DEFINE_SEQUENCE    (Sequence_40,        NA_BGM_GREAT_FAIRY,      MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // great_fairy
DEFINE_SEQUENCE    (Sequence_41,        NA_BGM_ZELDA_THEME,      MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // zelda_theme
DEFINE_SEQUENCE    (Sequence_42,        NA_BGM_FIRE_TEMPLE,      MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_ENEMY                         ) // fire_temple
DEFINE_SEQUENCE    (Sequence_43,        NA_BGM_OPEN_TRE_BOX,     MEDIUM_CART, CACHE_LOAD_PERSISTENT, SEQ_FLAG_FANFARE                       ) // open_tre_box
DEFINE_SEQUENCE    (Sequence_44,        NA_BGM_FOREST_TEMPLE,    MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_ENEMY                         ) // forest_temple
DEFINE_SEQUENCE    (Sequence_45,        NA_BGM_COURTYARD,        MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // courtyard
DEFINE_SEQUENCE    (Sequence_46,        NA_BGM_GANON_TOWER,      MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_NO_AMBIENCE                   ) // ganon_tower
DEFINE_SEQUENCE    (Sequence_47,        NA_BGM_LONLON,           MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // lonlon
DEFINE_SEQUENCE    (Sequence_48,        NA_BGM_GORON_CITY,       MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_NO_AMBIENCE                   ) // goron_city
DEFINE_SEQUENCE    (Sequence_49,        NA_BGM_FIELD_MORNING,    MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // field_morning
DEFINE_SEQUENCE    (Sequence_50,        NA_BGM_SPIRITUAL_STONE,  MEDIUM_CART, CACHE_LOAD_PERSISTENT, SEQ_FLAG_FANFARE                       ) // spiritual_stone
DEFINE_SEQUENCE    (Sequence_51,        NA_BGM_OCA_BOLERO,       MEDIUM_CART, CACHE_LOAD_PERSISTENT, SEQ_FLAG_FANFARE                       ) // oca_bolero
DEFINE_SEQUENCE    (Sequence_52,        NA_BGM_OCA_MINUET,       MEDIUM_CART, CACHE_LOAD_PERSISTENT, SEQ_FLAG_FANFARE                       ) // oca_minuet
DEFINE_SEQUENCE    (Sequence_53,        NA_BGM_OCA_SERENADE,     MEDIUM_CART, CACHE_LOAD_PERSISTENT, SEQ_FLAG_FANFARE                       ) // oca_serenade
DEFINE_SEQUENCE    (Sequence_54,        NA_BGM_OCA_REQUIEM,      MEDIUM_CART, CACHE_LOAD_PERSISTENT, SEQ_FLAG_FANFARE                       ) // oca_requiem
DEFINE_SEQUENCE    (Sequence_55,        NA_BGM_OCA_NOCTURNE,     MEDIUM_CART, CACHE_LOAD_PERSISTENT, SEQ_FLAG_FANFARE                       ) // oca_nocturne
DEFINE_SEQUENCE    (Sequence_56,        NA_BGM_MINI_BOSS,        MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_NO_AMBIENCE | SEQ_FLAG_RESTORE) // mini_boss
DEFINE_SEQUENCE    (Sequence_57,        NA_BGM_SMALL_ITEM_GET,   MEDIUM_CART, CACHE_LOAD_PERSISTENT, SEQ_FLAG_FANFARE                       ) // small_item_get
DEFINE_SEQUENCE    (Sequence_58,        NA_BGM_TEMPLE_OF_TIME,   MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // temple_of_time
DEFINE_SEQUENCE    (Sequence_59,        NA_BGM_EVENT_CLEAR,      MEDIUM_CART, CACHE_LOAD_PERSISTENT, SEQ_FLAG_FANFARE                       ) // event_clear
DEFINE_SEQUENCE    (Sequence_60,        NA_BGM_KOKIRI,           MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_RESUME | SEQ_FLAG_ENEMY       ) // kokiri
DEFINE_SEQUENCE    (Sequence_61,        NA_BGM_OCA_FAIRY_GET,    MEDIUM_CART, CACHE_LOAD_PERSISTENT, SEQ_FLAG_FANFARE                       ) // oca_fairy_get
DEFINE_SEQUENCE    (Sequence_62,        NA_BGM_SARIA_THEME,      MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_ENEMY                         ) // saria_theme
DEFINE_SEQUENCE    (Sequence_63,        NA_BGM_SPIRIT_TEMPLE,    MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_ENEMY                         ) // spirit_temple
DEFINE_SEQUENCE    (Sequence_64,        NA_BGM_HORSE,            MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // horse
DEFINE_SEQUENCE    (Sequence_65,        NA_BGM_HORSE_GOAL,       MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // horse_goal
DEFINE_SEQUENCE    (Sequence_66,        NA_BGM_INGO,             MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // ingo
DEFINE_SEQUENCE    (Sequence_67,        NA_BGM_MEDALLION_GET,    MEDIUM_CART, CACHE_LOAD_PERSISTENT, SEQ_FLAG_FANFARE                       ) // medallion_get
DEFINE_SEQUENCE    (Sequence_68,        NA_BGM_OCA_SARIA,        MEDIUM_CART, CACHE_LOAD_PERSISTENT, SEQ_FLAG_FANFARE                       ) // oca_saria
DEFINE_SEQUENCE    (Sequence_69,        NA_BGM_OCA_EPONA,        MEDIUM_CART, CACHE_LOAD_PERSISTENT, SEQ_FLAG_FANFARE                       ) // oca_epona
DEFINE_SEQUENCE    (Sequence_70,        NA_BGM_OCA_ZELDA,        MEDIUM_CART, CACHE_LOAD_PERSISTENT, SEQ_FLAG_FANFARE                       ) // oca_zelda
DEFINE_SEQUENCE    (Sequence_71,        NA_BGM_OCA_SUNS,         MEDIUM_CART, CACHE_LOAD_PERSISTENT, SEQ_FLAG_FANFARE                       ) // oca_suns
DEFINE_SEQUENCE    (Sequence_72,        NA_BGM_OCA_TIME,         MEDIUM_CART, CACHE_LOAD_PERSISTENT, SEQ_FLAG_FANFARE                       ) // oca_time
DEFINE_SEQUENCE    (Sequence_73,        NA_BGM_OCA_STORM,        MEDIUM_CART, CACHE_LOAD_PERSISTENT, SEQ_FLAG_FANFARE                       ) // oca_storm
DEFINE_SEQUENCE    (Sequence_74,        NA_BGM_NAVI_OPENING,     MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // navi_opening
DEFINE_SEQUENCE    (Sequence_75,        NA_BGM_DEKU_TREE_CS,     MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // deku_tree_cs
DEFINE_SEQUENCE    (Sequence_76,        NA_BGM_WINDMILL,         MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // windmill
DEFINE_SEQUENCE    (Sequence_77,        NA_BGM_HYRULE_CS,        MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // hyrule_cs
DEFINE_SEQUENCE    (Sequence_78,        NA_BGM_MINI_GAME,        MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_RESUME_PREV                   ) // mini_game
DEFINE_SEQUENCE    (Sequence_79,        NA_BGM_SHEIK,            MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // sheik
DEFINE_SEQUENCE    (Sequence_80,        NA_BGM_ZORA_DOMAIN,      MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_RESUME                        ) // zora_domain
DEFINE_SEQUENCE    (Sequence_81,        NA_BGM_APPEAR,           MEDIUM_CART, CACHE_LOAD_PERSISTENT, SEQ_FLAG_FANFARE                       ) // appear
DEFINE_SEQUENCE    (Sequence_82,        NA_BGM_ADULT_LINK,       MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // adult_link
DEFINE_SEQUENCE    (Sequence_83,        NA_BGM_MASTER_SWORD,     MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // master_sword
DEFINE_SEQUENCE    (Sequence_84,        NA_BGM_INTRO_GANON,      MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_FANFARE_GANON                 ) // intro_ganon
DEFINE_SEQUENCE    (Sequence_85,        NA_BGM_SHOP,             MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_RESUME_PREV                   ) // shop
DEFINE_SEQUENCE    (Sequence_86,        NA_BGM_CHAMBER_OF_SAGES, MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_SKIP_HARP_INTRO               ) // chamber_of_sages
DEFINE_SEQUENCE_PTR(NA_BGM_GREAT_FAIRY, NA_BGM_FILE_SELECT,      MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_SKIP_HARP_INTRO               ) // file_select
DEFINE_SEQUENCE    (Sequence_88,        NA_BGM_ICE_CAVERN,       MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_ENEMY                         ) // ice_cavern
DEFINE_SEQUENCE    (Sequence_89,        NA_BGM_DOOR_OF_TIME,     MEDIUM_CART, CACHE_LOAD_PERSISTENT, SEQ_FLAG_FANFARE                       ) // door_of_time
DEFINE_SEQUENCE    (Sequence_90,        NA_BGM_OWL,              MEDIUM_CART, CACHE_LOAD_PERSISTENT, SEQ_FLAG_FANFARE                       ) // owl
DEFINE_SEQUENCE    (Sequence_91,        NA_BGM_SHADOW_TEMPLE,    MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_ENEMY                         ) // shadow_temple
DEFINE_SEQUENCE    (Sequence_92,        NA_BGM_WATER_TEMPLE,     MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_ENEMY                         ) // water_temple
DEFINE_SEQUENCE    (Sequence_93,        NA_BGM_BRIDGE_TO_GANONS, MEDIUM_CART, CACHE_LOAD_PERSISTENT, SEQ_FLAG_FANFARE                       ) // bridge_to_ganons
DEFINE_SEQUENCE    (Sequence_94,        NA_BGM_OCARINA_OF_TIME,  MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // ocarina_of_time
DEFINE_SEQUENCE    (Sequence_95,        NA_BGM_GERUDO_VALLEY,    MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_RESUME | SEQ_FLAG_ENEMY       ) // gerudo_valley
DEFINE_SEQUENCE    (Sequence_96,        NA_BGM_POTION_SHOP,      MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // potion_shop
DEFINE_SEQUENCE    (Sequence_97,        NA_BGM_KOTAKE_KOUME,     MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // kotake_koume
DEFINE_SEQUENCE    (Sequence_98,        NA_BGM_ESCAPE,           MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_NO_AMBIENCE                   ) // escape
DEFINE_SEQUENCE    (Sequence_99,        NA_BGM_UNDERGROUND,      MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // underground
DEFINE_SEQUENCE    (Sequence_100,       NA_BGM_GANONDORF_BOSS,   MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_NO_AMBIENCE                   ) // ganondorf_boss
DEFINE_SEQUENCE    (Sequence_101,       NA_BGM_GANON_BOSS,       MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_NO_AMBIENCE                   ) // ganon_boss
DEFINE_SEQUENCE    (Sequence_102,       NA_BGM_END_DEMO,         MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // end_demo
DEFINE_SEQUENCE    (Sequence_103,       NA_BGM_STAFF_1,          MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // staff_1
DEFINE_SEQUENCE    (Sequence_104,       NA_BGM_STAFF_2,          MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // staff_2
DEFINE_SEQUENCE    (Sequence_105,       NA_BGM_STAFF_3,          MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // staff_3
DEFINE_SEQUENCE    (Sequence_106,       NA_BGM_STAFF_4,          MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // staff_4
DEFINE_SEQUENCE    (Sequence_107,       NA_BGM_FIRE_BOSS,        MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // fire_boss
DEFINE_SEQUENCE    (Sequence_108,       NA_BGM_TIMED_MINI_GAME,  MEDIUM_CART, CACHE_LOAD_TEMPORARY,  SEQ_FLAG_RESTORE                       ) // timed_mini_game
DEFINE_SEQUENCE    (Sequence_109,       NA_BGM_CUTSCENE_EFFECTS, MEDIUM_CART, CACHE_LOAD_TEMPORARY,  0                                      ) // cutscene_effects
